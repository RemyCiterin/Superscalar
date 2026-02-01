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
  (* always_ready *) method Bit#(32) result;
  (* always_ready *) method ArchReg destination;
  (* always_ready *) method Bool valid;
  method Action deq;
endinterface

interface ForwardIfc;
  (* always_ready *) method ArchReg destination;
  (* always_ready *) method Bit#(32) result;
  (* always_ready *) method Epoch epoch;
  (* always_ready *) method Bool valid;
endinterface

interface ExecIfc#(numeric type numFwd);
  // Stage 1: put an alu request to the
  method Action enter(AluRequest alu, Epoch epoch);
  method Bool canEnter;

  // Stage 2: resolve control flow
  interface CommitIfc commit;

  // Stage 3: write back the result
  interface WriteBackIfc writeBack;

  interface Vector#(numFwd, ForwardIfc) forward;
endinterface

(* synthesize *)
module mkExecAlu(ExecIfc#(1));
  let alu <- mkAlu(True, True, True);
  Reg#(RvInstr) instr <- mkRegU;
  Reg#(Epoch) epoch <- mkRegU;

  Reg#(Bool) valid2[2] <- mkCReg(2, False);
  Reg#(Bit#(32)) value2 <- mkRegU;
  Reg#(ArchReg) rd2 <- mkRegU;

  method canEnter = alu.canEnter;
  method Action enter(AluRequest req, Epoch ep);
    instr <= req.instr;
    alu.enter(req);
    epoch <= ep;
  endmethod

  interface CommitIfc commit;
    method valid = alu.canDeq && !valid2[1];
    method exception = alu.response.exception;
    method cause = alu.response.cause;
    method nextPc = alu.response.pc;

    method Action commit(Bool keep) if (alu.canDeq && !valid2[1]);
      if (keep) valid2[1] <= True;
      value2 <= alu.response.rd;
      rd2 <= instr.rd;
      alu.deq;
    endmethod
  endinterface

  interface forward = vec(interface ForwardIfc;
    method valid = alu.canDeq && !instr.isMemAccess;
    method result = alu.response.rd;
    method destination = instr.rd;
    method epoch = epoch;
  endinterface);

  interface WriteBackIfc writeBack;
    method destination = rd2;
    method valid = valid2[0];
    method result = value2;

    method Action deq if (valid2[0]);
      valid2[0] <= False;
    endmethod
  endinterface
endmodule

interface LsuIfc;
  (* always_ready *) method Bool canPut;
  method Action put(LsuRequest req, ArchReg rd);

  method Action deq(Bool commit);
  (* always_ready *) method CauseException cause;
  (* always_ready *) method ArchReg destination;
  (* always_ready *) method Bool exception;
  (* always_ready *) method Bit#(32) read;
  (* always_ready *) method Bool canDeq;
endinterface

(* synthesize *)
module mkLsu(LsuIfc);
  Bit#(32) minDmemAddr = 'h80000000;
  Bit#(32) maxDmemAddr = 'h80000000 + 'hFFFFF;

  BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) dmem <-
    mkBRAMCore1BELoad('hFFFFF, False, "Mem32.hex", False);

  TLSlave#(32, 32, 8, 8, 0) slave <- mkTLBram('h80000000, 'hFFFFF, dmem);

  DCache#(8, 8) cache <- mkDCache(0);

  mkConnection(cache.master, slave);

  Reg#(LsuRequest) request <- mkRegU;
  Reg#(ArchReg) dest <- mkRegU;

  method Bool canPut = cache.canLookup;
  method Action put(LsuRequest req, ArchReg rd) if (cache.canLookup);
    //let address = (req.address - 'h80000000) >> 2;

    //if (minDmemAddr <= req.address && req.address <= maxDmemAddr) dmem.read(address);

    cache.lookup(DCacheReq{
      opcode: req.store ? St : Ld,
      mask: lsuRequestMask(req),
      data: lsuRequestData(req),
      address: req.address,
      amo: ?
    });

    request <= req;
    dest <= rd;
  endmethod

  method destination = dest;
  method exception = !lsuRequestAligned(request);
  method cause = request.store ? StoreAmoAddressMisaligned : LoadAddressMisaligned;
  method Bit#(32) read = lsuRequestRd(request, cache.response);
  method Bool canDeq = cache.valid;

  method Action deq(Bool commit);
    let address = (request.address - 'h80000000) >> 2;
    let mask = lsuRequestMask(request);
    let data = lsuRequestData(request);

    cache.deq(commit);
    if (commit && request.store) begin
      //if (minDmemAddr <= request.address && request.address <= maxDmemAddr) begin
      //  //$display("        mem[%h] <= %h if %b", request.address, data, mask);
      //  dmem.write(mask, address, data);
      //end

      if (request.address == 'h10000000 && mask[0] == 1) begin
        $write("%c", data[7:0]);
        //txUart.put(data[7:0]);
        $fflush(stdout);
      end
    end

  endmethod
endmodule


(* synthesize *)
module mkExecLsu(ExecIfc#(1));
  Reg#(Bit#(32)) pc1 <- mkRegU;
  Reg#(Epoch) epoch1 <- mkRegU;
  let lsu <- mkLsu;

  Reg#(Bool) valid2[2] <- mkCReg(2, False);
  Reg#(Bit#(32)) result2 <- mkRegU;
  Reg#(ArchReg) rd2 <- mkRegU;

  method canEnter = lsu.canPut;
  method Action enter(AluRequest req, Epoch epoch);
    lsu.put(getLsuRequest(req), req.instr.rd);
    epoch1 <= epoch;
    pc1 <= req.pc;
  endmethod

  interface CommitIfc commit;
    method nextPc = pc1 + 4;
    method valid = lsu.canDeq && !valid2[1];
    method exception = lsu.exception;
    method cause = lsu.cause;

    method Action commit(Bool keep) if (lsu.canDeq && !valid2[1]);
      if (keep) valid2[1] <= True;
      rd2 <= lsu.destination;
      result2 <= lsu.read;
      lsu.deq(keep);
    endmethod
  endinterface

  interface forward = vec(
    interface ForwardIfc;
      method valid = lsu.canDeq && !lsu.exception;
      method destination = lsu.destination;
      method result = lsu.read;
      method epoch = epoch1;
    endinterface
  );

  interface WriteBackIfc writeBack;
    method result = result2;
    method destination = rd2;
    method valid = valid2[0];

    method Action deq if (valid2[0]);
      valid2[0] <= False;
    endmethod
  endinterface
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

  TxUART txUart <- mkTxUART(25_000_000 / 115200);

  Reg#(Bit#(32)) cycle <- mkReg(0);

  Reg#(Bit#(32)) instret <- mkReg(0);

  rule incrCycle;
    cycle <= cycle + 1;
  endrule

  Reg#(Bit#(32)) scoreboard[3] <- mkCReg(3, 0);

  MultiRF#(TMul#(2, SupSize), TAdd#(1,SupSize), ArchReg, Bit#(32))
    regFile <- mkForwardMultiRF(0, 31);

  List#(RWire#(Tuple2#(ArchReg, Bit#(32))))
    forwarding <- List::replicateM(2*supSize+1, mkRWire);

  Reg#(Epoch) epoch[2] <- mkCReg(2, 0);

  Fifo#(2, Tuple3#(Bit#(32), Epoch, BranchPredTrain)) redirectQ <- mkFifo;

  FetchIfc fetch <- mkFetch;

  DecodeIfc decode <- mkDecode;

  DispatchBuffer inBuffer <- mkDispatchBuffer;
  DispatchBuffer outBuffer <- mkDispatchBuffer;

  Vector#(SupSize, ExecIfc#(1)) alu <- replicateM(mkExecAlu);

  ExecIfc#(1) lsu <- mkExecLsu;

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

  rule forward;
    ForwardIfc fwd = lsu.forward[0];

    //if (fwd.valid && fwd.epoch == epoch[0] && fwd.destination != 0)
    //  forwarding[0].wset(tuple2(fwd.destination, fwd.result));

    for (Integer i=0; i < supSize; i = i + 1) begin
      fwd = alu[i].forward[0];

      if (fwd.valid && fwd.epoch == epoch[0] && fwd.destination != 0)
        forwarding[i+1].wset(tuple2(fwd.destination, fwd.result));
    end
  endrule

  rule writeBackRl;
    Bit#(32) score = scoreboard[0];
    WriteBackIfc wb = lsu.writeBack;

    if (wb.valid) begin
      if (wb.destination != 0) regFile.writePorts[0].request(wb.destination, wb.result);
      score[wb.destination] = 0;
      wb.deq;

      if (debug && wb.destination != 0)
        $display("      ", showReg(wb.destination), " <= %h", wb.result);
    end

    for (Integer i=0; i < supSize; i = i + 1) begin
      wb = alu[i].writeBack;

      if (wb.valid) begin
        if (wb.destination != 0) regFile.writePorts[i+1].request(wb.destination, wb.result);
        score[wb.destination] = 0;
        wb.deq;

        if (debug && wb.destination != 0)
          $display("      ", showReg(wb.destination), " <= %h", wb.result);
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
        alu[i].commit.commit(!instr.isMemAccess && !exception);

        if (debug) $display(cycle, " commit 0x%h: ", pc, showRvInstr(instr));

        if (outBuffer.exception[i]) $display("cycle: %d instret: %d", cycle, instret);

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
      if (!rdy1 || !rdy2) rdy = False;

      for (Integer j=0; j < i; j = j + 1) if (inBuffer.mask[j]) begin
        if (rs1 != 0 && rs1 == inBuffer.instr[j].rd) rdy = False;
        if (rs2 != 0 && rs2 == inBuffer.instr[j].rd) rdy = False;
        if (rd != 0 && rd == inBuffer.instr[j].rd) rdy = False;
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

        alu[i].enter(aluReq, inBuffer.epoch);

        if (instr.isMemAccess) begin
          lsu.enter(aluReq, inBuffer.epoch);
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

  method transmit = txUart.transmit;
  method led = 0;
endmodule
