import MultiRegFile :: *;
import RvBranchPred :: *;
import ForwardBRAM :: *;
import BuildVector :: *;
import BRAMCore :: *;
import RvDCache :: *;
import RegFile :: *;
import RvInstr :: *;
import RvFetch :: *;
import Vector :: *;
import Assert :: *;
import RvAlu :: *;
import UART :: *;
import Fifo :: *;

import Connectable :: *;
import TLTypes :: *;
import TLBram :: *;

interface CommitIfc;
  (* always_ready *) method CauseException cause;
  (* always_ready *) method Bit#(32) nextPc;
  (* always_ready *) method Bool exception;
  (* always_ready *) method Bool valid;
  method Action commit(Bool keep);
endinterface

interface WriteBackIfc;
  (* always_ready *) method RvInstr instr;
  (* always_ready *) method Bit#(32) result;
  (* always_ready *) method Bool valid;
  method Action deq;
endinterface

interface ForwardIfc;
  (* always_ready *) method ArchReg destination;
  (* always_ready *) method Bit#(32) result;
  (* always_ready *) method Epoch epoch;
  (* always_ready *) method Bool valid;
endinterface

interface WakeupIfc;
  (* always_ready *) method Action request(ArchReg r, Bit#(32) d);
endinterface

interface ExecIfc#(numeric type numFwd, numeric type numWakeup);
  // Stage 1: put an alu request to the
  method Action enter(AluRequest alu, Bool rdy1, Bool rdy2, Epoch epoch);
  method Bool canEnter;

  // Stage 2: resolve control flow
  interface CommitIfc commit;

  // Stage 3: write back the result
  interface WriteBackIfc writeBack;

  interface Vector#(numFwd, ForwardIfc) forward;

  interface Vector#(numWakeup, WakeupIfc) wakeup;
endinterface

(* synthesize *)
module mkExecAlu#(Bool lateAlu) (ExecIfc#(1, TMul#(2, SupSize)));
  let alu1 <- mkAlu(True, True, True);
  Reg#(AluRequest) request1 <- mkRegU;
  Reg#(Epoch) epoch1 <- mkRegU;
  Reg#(Bool) late1 <- mkRegU;

  Reg#(Bool) valid2[2] <- mkCReg(2, False);
  Reg#(AluRequest) request2 <- mkRegU;
  Reg#(Bit#(32)) value2 <- mkRegU;
  Reg#(ArchReg) rd2 <- mkRegU;
  Reg#(Bool) late2 <- mkRegU;

  Vector#(TMul#(2, SupSize), RWire#(Tuple2#(ArchReg, Bit#(32))))
    wakeupWires <- replicateM(mkRWire);

  Reg#(Maybe#(Bit#(32))) rs1_stage1[2] <- mkCReg(2, Invalid);
  Reg#(Maybe#(Bit#(32))) rs2_stage1[2] <- mkCReg(2, Invalid);
  Reg#(Maybe#(Bit#(32))) rs1_stage2[2] <- mkCReg(2, Invalid);
  Reg#(Maybe#(Bit#(32))) rs2_stage2[2] <- mkCReg(2, Invalid);

  AluRequest updated_request2 = request2;
  updated_request2.rs1 = unJust(rs1_stage2[0]);
  updated_request2.rs2 = unJust(rs2_stage2[0]);

  (* no_implicit_conditions, fire_when_enabled *)
  rule wakeup_canon;
    Maybe#(Bit#(32)) op1 = rs1_stage1[0];
    Maybe#(Bit#(32)) op2 = rs2_stage1[0];
    Maybe#(Bit#(32)) op3 = rs1_stage2[0];
    Maybe#(Bit#(32)) op4 = rs2_stage2[0];

    for (Integer i=0; i < 2*supSize; i = i + 1) begin
      if (wakeupWires[i].wget matches tagged Valid {.r, .d}) begin
        if (r == request1.instr.rs1) op1 = Valid(d);
        if (r == request1.instr.rs2) op2 = Valid(d);
        if (r == request2.instr.rs1) op3 = Valid(d);
        if (r == request2.instr.rs2) op4 = Valid(d);
      end
    end

    rs1_stage1[0] <= op1;
    rs2_stage1[0] <= op2;
    rs1_stage2[0] <= op3;
    rs2_stage2[0] <= op4;
  endrule

  Vector#(TMul#(2, SupSize), WakeupIfc) wakeupIfc = newVector;

  for (Integer i=0; i < 2*supSize; i = i + 1) begin
    wakeupIfc[i] = interface WakeupIfc;
      method Action request(ArchReg r, Bit#(32) d);
        if (r != 0) wakeupWires[i].wset(tuple2(r, d));
      endmethod
    endinterface;
  end

  interface wakeup = wakeupIfc;

  method canEnter = alu1.canEnter;
  method Action enter(AluRequest req, Bool rdy1, Bool rdy2, Epoch ep);
    dynamicAssert(rdy1 || supportLateIssue(req.instr.opcode), "");
    dynamicAssert(rdy2 || supportLateIssue(req.instr.opcode), "");
    rs1_stage1[1] <= rdy1 ? Valid(req.rs1) : Invalid;
    rs2_stage1[1] <= rdy2 ? Valid(req.rs2) : Invalid;
    late1 <= !rdy1 || !rdy2;
    alu1.enter(req);
    request1 <= req;
    epoch1 <= ep;
  endmethod

  interface CommitIfc commit;
    method valid = alu1.canDeq && !valid2[1];
    method exception = late1 && lateAlu ? False : alu1.response.exception;
    method nextPc = late1 && lateAlu ? request1.pc+4 : alu1.response.pc;
    method cause = late1 && lateAlu ? (?) : alu1.response.cause;

    method Action commit(Bool keep) if (alu1.canDeq && !valid2[1]);
      if (keep) valid2[1] <= True;
      value2 <= alu1.response.rd;
      rd2 <= request1.instr.rd;
      late2 <= late1;
      alu1.deq;

      rs1_stage2[1] <= rs1_stage1[1];
      rs2_stage2[1] <= rs2_stage1[1];
      request2 <= request1;
    endmethod
  endinterface

  interface forward = vec(interface ForwardIfc;
    method valid = alu1.canDeq && !request1.instr.isMemAccess && !(late1 && lateAlu);
    method destination = request1.instr.rd;
    method result = alu1.response.rd;
    method epoch = epoch1;
  endinterface);

  interface WriteBackIfc writeBack;
    method valid = valid2[0] && isJust(rs1_stage2[0]) && isJust(rs2_stage2[0]);
    method result = late2 && lateAlu ? execAlu(updated_request2, False).rd : value2;
    method instr = request2.instr;

    method Action deq if (valid2[0] && isJust(rs1_stage2[0]) && isJust(rs2_stage2[0]));
      valid2[0] <= False;
    endmethod
  endinterface
endmodule

interface LsuIfc;
  interface ExecIfc#(0, 0) exec;

  (* always_ready, always_enabled *)
  method Bit#(1) transmit;
endinterface

(* synthesize *)
module mkLsu(LsuIfc);
  Reg#(Bool) valid1[2] <- mkCReg(2, False);
  Reg#(AluRequest) request1 <- mkRegU;
  Reg#(Bit#(32)) pc1 <- mkRegU;
  Reg#(Epoch) epoch1 <- mkRegU;

  TxUART txUart <- mkTxUART(25_000_000 / 115200);
  Bit#(32) minDmemAddr = 'h80000000;
  Bit#(32) maxDmemAddr = 'h80000000 + 'hFFFFF;

  BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) dmem <-
    mkBRAMCore1BELoad('hFFFF, False, "Mem32.hex", False);

  TLSlave#(32, 32, 8, 8, 0) slave <- mkTLBram('h80000000, 'hFFFFF, dmem);

  DCache#(8, 8) cache <- mkDCache(0);

  mkConnection(cache.master, slave);

  Fifo#(1, Tuple2#(LsuRequest, RvInstr)) buffer <- mkBypassFifo;
  Reg#(LsuRequest) request2 <- mkRegU;
  Reg#(RvInstr) instr2 <- mkRegU;

  rule enq_stage2;
    match {.req, .instr} = buffer.first;

    cache.lookup(DCacheReq{
      opcode: req.store ? St : Ld,
      mask: lsuRequestMask(req),
      data: lsuRequestData(req),
      address: req.address,
      amo: ?
    });

    instr2 <= instr;
    request2 <= req;
    buffer.deq;
  endrule

  interface ExecIfc exec;
    interface wakeup = newVector;

    method canEnter = !valid1[1];
    method Action enter(AluRequest req, Bool rdy1, Bool rdy2, Epoch epoch) if (!valid1[1]);
      dynamicAssert(rdy1 && rdy2, "operands must be ready to entern into the LSU");
      valid1[1] <= True;
      request1 <= req;
      epoch1 <= epoch;
      pc1 <= req.pc;
    endmethod

    interface CommitIfc commit;
      method nextPc = pc1 + 4;
      method cause =
        request1.instr.opcode == Load ? LoadAddressMisaligned : StoreAmoAddressMisaligned;
      method exception = !lsuRequestAligned(getLsuRequest(request1));
      method valid = valid1[0] && buffer.canEnq;

      method Action commit(Bool keep) if (valid1[0] && buffer.canEnq);
        if (keep) begin
          buffer.enq(tuple2(getLsuRequest(request1), request1.instr));
        end
        valid1[0] <= False;
      endmethod
    endinterface

    interface forward = newVector;

    interface WriteBackIfc writeBack;
      method result = lsuRequestRd(request2, cache.response);
      method valid = cache.valid;
      method instr = instr2;

      method Action deq if (cache.valid);
        let address = (request2.address - 'h80000000) >> 2;
        let mask = lsuRequestMask(request2);
        let data = lsuRequestData(request2);

        cache.deq(True);
        if (request2.store && request2.address == 'h10000000 && mask[0] == 1) begin
          $write("%c", data[7:0]);
          //txUart.put(data[7:0]);
          $fflush(stdout);
        end
      endmethod
    endinterface
  endinterface

  method transmit = txUart.transmit;
endmodule

interface CpuIfc;
  (* always_ready, always_enabled *)
  method Bit#(8) led;

  (* always_ready, always_enabled *)
  method Bit#(1) transmit;
endinterface

(* synthesize *)
module mkCPU(CpuIfc);
  Bool debug = False;
  Bool lateAlu = False;
  Bool useForwarding = True;

  Reg#(Bit#(32)) cycle <- mkReg(0);

  Reg#(Bit#(32)) instret <- mkReg(0);

  rule incrCycle;
    cycle <= cycle + 1;
  endrule

  Reg#(Bit#(32)) scoreboard[3] <- mkCReg(3, 0);

  MultiRF#(TMul#(2, SupSize), SupSize, ArchReg, Bit#(32))
    regFile <- mkForwardMultiRF(0, 31);

  List#(RWire#(Tuple2#(ArchReg, Bit#(32))))
    forwarding <- List::replicateM(2*supSize, mkRWire);

  Reg#(Epoch) epoch[2] <- mkCReg(2, 0);

  Fifo#(2, Tuple3#(Bit#(32), Epoch, BranchPredTrain)) redirectQ <- mkFifo;

  FetchIfc fetch <- mkFetch;

  DecodeIfc decode <- mkDecode;

  DispatchBuffer inBuffer <- mkDispatchBuffer;
  DispatchBuffer outBuffer <- mkDispatchBuffer;

  Vector#(SupSize, ExecIfc#(1, TMul#(2, SupSize))) alu <- replicateM(mkExecAlu(lateAlu));

  function Action wakeup(Integer i, ArchReg r, Bit#(32) d);
    action
      if (lateAlu) begin
        for (Integer j=0; j < supSize; j = j + 1) alu[j].wakeup[i].request(r, d);
      end
    endaction
  endfunction

  let lsu_ifc <- mkLsu;
  let uart = lsu_ifc.transmit;
  let lsu = lsu_ifc.exec;

  rule redirect;
    match {.pc, .epoch, .train} = redirectQ.first;
    fetch.redirect(pc, epoch);
    fetch.trainMis(train);
    redirectQ.deq;
  endrule

  rule fetch2decode;
    let data <- fetch.get;
    decode.put(data);
  endrule

  rule decode2buffer;
    let data <- decode.get;
    inBuffer.put(data);
  endrule

  if (useForwarding) rule forward;
    for (Integer i=0; i < supSize; i = i + 1) begin
      ForwardIfc fwd = alu[i].forward[0];

      if (fwd.valid && fwd.epoch == epoch[0] && fwd.destination != 0) begin
        forwarding[i].wset(tuple2(fwd.destination, fwd.result));
        wakeup(supSize+i, fwd.destination, fwd.result);
      end
    end
  endrule

  rule writeBackRl;
    Bool useMem = False;
    Bit#(32) score = scoreboard[0];

    for (Integer i=0; i < supSize; i = i + 1) begin
      WriteBackIfc wb = alu[i].writeBack;

      Bool rdy = wb.valid;
      if (wb.instr.isMemAccess && useMem) rdy = False;
      if (wb.instr.isMemAccess && !lsu.writeBack.valid) rdy = False;

      if (rdy) begin
        ArchReg rd = wb.instr.isMemAccess ? lsu.writeBack.instr.rd : wb.instr.rd;
        Bit#(32) result = wb.instr.isMemAccess ? lsu.writeBack.result : wb.result;
        if (rd != 0) regFile.writePorts[i].request(rd, result);
        if (wb.instr.isMemAccess) lsu.writeBack.deq;
        if (wb.instr.isMemAccess) useMem = True;
        wakeup(i, rd, result);
        score[rd] = 0;
        wb.deq;

        if (debug && rd != 0) begin
          $display("        ", showReg(rd), " <= %h", result);
        end
      end
    end

    scoreboard[0] <= score;
  endrule

  Reg#(Bit#(32)) commitPc <- mkReg('h80000000);

  rule flush if (outBuffer.mask != replicate(False) && outBuffer.epoch != epoch[0]);
    Bool stop = False;
    Bool useMem = False;
    Bit#(32) score = scoreboard[1];
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
      RvInstr instr = outBuffer.instr[i];

      Bool rdy = alu[i].commit.valid;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isMemAccess && !lsu.commit.valid) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        score[instr.rd] = 0;
        if (instr.isMemAccess) lsu.commit.commit(False);
        if (instr.isMemAccess) useMem = True;
        alu[i].commit.commit(False);
        consumed[i] = True;
      end
    end

    outBuffer.consume(consumed);
    scoreboard[1] <= score;
  endrule

  rule commit
    if (outBuffer.mask != replicate(False) && !redirectQ.canDeq && outBuffer.epoch == epoch[0]);

    Bool stop = False;
    Bool useMem = False;
    Bool trainHit = True;
    Bit#(32) currentPc = commitPc;
    Bit#(32) score = scoreboard[1];
    Bit#(32) instrCounter = instret;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
      RvInstr instr = outBuffer.instr[i];
      let pc = outBuffer.pc[i];
      ArchReg rd = instr.rd;

      dynamicAssert(pc == currentPc, "control flow error");

      let rdy = !(instr.isMemAccess && useMem);
      if (instr.isMemAccess && !lsu.commit.valid) rdy = False;
      if (!alu[i].commit.valid) rdy = False;
      if (!rdy) stop = True;

      let exception = instr.isMemAccess ? lsu.commit.exception : alu[i].commit.exception;
      let nextPc = instr.isMemAccess ? lsu.commit.nextPc : alu[i].commit.nextPc;
      let cause = instr.isMemAccess ? lsu.commit.cause : alu[i].commit.cause;

      if (outBuffer.exception[i]) begin
        cause = outBuffer.cause[i];
        exception = True;
      end

      if (rdy) begin
        consumed[i] = True;
        instrCounter = instrCounter + 1;
        alu[i].commit.commit(!exception);

        if (debug) $display(cycle, " commit 0x%h: ", pc, showRvInstr(instr));

        if (outBuffer.exception[i]) $display("pc: %h cycle: %d instret: %d", pc, cycle, instret);

        if (instr.isMemAccess) begin
          lsu.commit.commit(!exception);
          useMem = True;
        end

        currentPc = nextPc;

        if (exception) score[instr.rd] = 0;

        // Misprediction: redirect pipeline
        if (nextPc != outBuffer.bprediction[i]) begin
          if (debug) $display("          redirect from 0x%h to 0x%h", pc, nextPc);

          redirectQ.enq(tuple3(
            nextPc, epoch[0]+1,
            BranchPredTrain{
              instrs: Valid(outBuffer.instr),
              state: outBuffer.bstate,
              nextPc: nextPc,
              pc: pc
            }
          ));

          epoch[0] <= epoch[0] + 1;
          trainHit = False;
          stop = True;
        end
      end
    end

    if (trainHit) begin
      fetch.trainHit(BranchPredTrain{
        instrs: Valid(outBuffer.instr),
        state: outBuffer.bstate,
        nextPc: currentPc,
        pc: commitPc
      });
    end

    outBuffer.consume(consumed);
    instret <= instrCounter;
    scoreboard[1] <= score;
    commitPc <= currentPc;
  endrule

  rule dispatch if (inBuffer.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Bit#(32) score = scoreboard[2];
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && inBuffer.mask[i]) begin
      RvInstr instr = inBuffer.instr[i];
      let pc = inBuffer.pc[i];

      ArchReg rs1 = instr.rs1;
      ArchReg rs2 = instr.rs2;
      ArchReg rd = instr.rd;

      // Check if we are ready to schedule the instruction
      Bit#(32) op1 <- regFile.readPorts[2*i].request(rs1);
      Bit#(32) op2 <- regFile.readPorts[2*i+1].request(rs2);
      if (rs1 == 0) op1 = 0;
      if (rs2 == 0) op2 = 0;

      Bool rdy1 = score[rs1] == 0;
      Bool rdy2 = score[rs2] == 0;

      for (Integer j=0; j < List::length(forwarding); j = j + 1) begin
        if (forwarding[j].wget matches tagged Valid {.r, .d} &&& r == rs1) begin
          rdy1 = True;
          op1 = d;
        end

        if (forwarding[j].wget matches tagged Valid {.r, .d} &&& r == rs2) begin
          rdy2 = True;
          op2 = d;
        end
      end

      Bool rdy = score[rd] == 0;

      for (Integer j=0; j < i; j = j + 1) if (inBuffer.mask[j]) begin
        if (rs1 != 0 && rs1 == inBuffer.instr[j].rd) rdy1 = False;
        if (rs2 != 0 && rs2 == inBuffer.instr[j].rd) rdy2 = False;
        if (rd != 0 && rd == inBuffer.instr[j].rd) rdy = False;
      end

      if (lateAlu) begin
        if ((!rdy1 || !rdy2) && !supportLateIssue(instr.opcode)) rdy = False;
      end else begin
        if (!rdy1 || !rdy2) rdy = False;
      end

      if (!lsu.canEnter && instr.isMemAccess) rdy = False;
      if (useMem && instr.isMemAccess) rdy = False;
      if (!alu[i].canEnter) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        consumed[i] = True;
        if (rd != 0) score[rd] = 1;

        //$display(cycle, " enter: ", showRvInstr(instr));
        let aluReq = AluRequest{
          instr: instr,
          rs1: op1,
          rs2: op2,
          pc: pc
        };

        alu[i].enter(aluReq, rdy1, rdy2, inBuffer.epoch);

        if (instr.isMemAccess) begin
          lsu.enter(aluReq, rdy1, rdy2, inBuffer.epoch);
          useMem = True;
        end
      end
    end

    scoreboard[2] <= score;
    inBuffer.consume(consumed);
    outBuffer.put(Bundle{
      bprediction: inBuffer.bprediction,
      exception: inBuffer.exception,
      bstate: inBuffer.bstate,
      instr: inBuffer.instr,
      epoch: inBuffer.epoch,
      cause: inBuffer.cause,
      pc: inBuffer.pc,
      mask: consumed
    });
  endrule

  method transmit = uart;
  method led = 0;
endmodule
