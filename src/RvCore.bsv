import MultiRegFile :: *;
import RvBranchPred :: *;
import ForwardBRAM :: *;
import BuildVector :: *;
import BRAMCore :: *;
import RegFile :: *;
import RvInstr :: *;
import RvFetch :: *;
import Vector :: *;
import Assert :: *;
import RvAlu :: *;
import UART :: *;
import Fifo :: *;

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

    method Action commit(Bool keep);
      if (keep) valid2[1] <= True;
      value2 <= alu.response.rd;
      rd2 <= instr.rd;
    endmethod
  endinterface

  interface forward = vec(interface ForwardIfc;
    method result = alu.response.rd;
    method destination = instr.rd;
    method valid = alu.canDeq;
    method epoch = epoch;
  endinterface);

  interface WriteBackIfc writeBack;
    method destination = rd2;
    method valid = valid2[0];
    method result = value2;

    method Action deq;
      valid2[0] <= False;
    endmethod
  endinterface
endmodule

// This register file/scoreboard is in charge of reading/forwarding to the entry of the execution
// pipeline, and checking for hazards (read-after-write and write-after-write)
interface RegisterFile#(
  numeric type numRd,
  numeric type numWr,
  numeric type numFwd,
  numeric type numDst
);
  // Free a register in the score board and commit it's destination to the register file
  interface Vector#(numWr, WritePort#(ArchReg, Maybe#(Bit#(32)))) commitPorts;

  // Read a value from the register file or forwarding ports and check for read-after-write hazards
  interface Vector#(numRd, ReadPort#(ArchReg, Maybe#(Bit#(32)))) readPorts;

  // Forward a value from an intermediate stage of the pipeline to the read ports
  interface Vector#(numFwd, WritePort#(ArchReg, Bit#(32))) forwardPorts;

  // Check for write-after-write hazards in the pipeline
  interface Vector#(numDst, ReadPort#(ArchReg, Bool)) destinationPorts;

  // Allocate a new register in the scoreboard, ensure that no other instruction can write into it
  // until the current one enter the commit stage
  interface Vector#(numDst, WritePort#(ArchReg, void)) allocPorts;
endinterface

module mkRegisterFile(RegisterFile#(numRd, numWr, numFwd, numDst));
  MultiRF#(numRd, numWr, ArchReg, Bit#(32)) rf <- mkForwardMultiRF(0,31);

  Reg#(Bit#(32)) scoreboard[2] <- mkCReg(2, 0);

  // Forward values from the execution units to the register read stage
  Vector#(numFwd, RWire#(Tuple2#(ArchReg, Bit#(32)))) forwardVals <- replicateM(mkRWire);

  Vector#(numDst, RWire#(ArchReg)) allocRegs <- replicateM(mkRWire);
  Vector#(numWr, RWire#(ArchReg)) freeRegs <- replicateM(mkRWire);

  (* fire_when_enabled, no_implicit_conditions *)
  rule scoreboard_free_canon;
    Bit#(32) score = scoreboard[0];

    for (Integer i=0; i < valueof(numWr); i = i + 1) begin
      if (freeRegs[i].wget matches tagged Valid .r &&& r != 0) score[r] = 0;
    end

    scoreboard[0] <= score;
  endrule

  (* fire_when_enabled, no_implicit_conditions *)
  rule scoreboard_alloc_canon;
    Bit#(32) score = scoreboard[1];

    for (Integer i=0; i < valueof(numDst); i = i + 1) begin
      if (allocRegs[i].wget matches tagged Valid .r &&& r != 0) score[r] = 1;
    end

    scoreboard[1] <= score;
  endrule

  Vector#(numWr, WritePort#(ArchReg, Maybe#(Bit#(32)))) commits = newVector;
  Vector#(numRd, ReadPort#(ArchReg, Maybe#(Bit#(32)))) reads = newVector;
  Vector#(numFwd, WritePort#(ArchReg, Bit#(32))) forwards = newVector;
  Vector#(numDst, ReadPort#(ArchReg, Bool)) destinations = newVector;
  Vector#(numDst, WritePort#(ArchReg, void)) allocs = newVector;

  for (Integer i=0; i < valueof(numWr); i = i + 1) begin
    commits[i] = interface WritePort;
      method Action request(ArchReg r, Maybe#(Bit#(32)) data);
        if (data matches tagged Valid .d &&& r != 0) rf.writePorts[i].request(r, d);
        freeRegs[i].wset(r);
      endmethod
    endinterface;
  end

  for (Integer i=0; i < valueof(numRd); i = i + 1) begin
    reads[i] = interface ReadPort;
      method ActionValue#(Maybe#(Bit#(32))) request(ArchReg r);
        Bit#(32) data <- rf.readPorts[i].request(r);
        Bool rdy = scoreboard[1][r] == 0;
        if (r == 0) data = 0;

        for (Integer j=0; j < valueof(numFwd); j = j + 1) begin
          if (forwardVals[j].wget matches tagged Valid {.fwdReg, .fwdData} &&& fwdReg == r) begin
            data = fwdData;
            rdy = True;
          end
        end

        return rdy ? Valid(data) : Invalid;
      endmethod
    endinterface;
  end

  for (Integer i=0; i < valueof(numFwd); i = i + 1) begin
    forwards[i] = interface WritePort;
      method Action request(ArchReg r, Bit#(32) data);
        if (r != 0) forwardVals[i].wset(tuple2(r, data));
      endmethod
    endinterface;
  end

  for (Integer i=0; i < valueof(numDst); i = i + 1) begin
    destinations[i] = interface ReadPort;
      method ActionValue#(Bool) request(ArchReg r);
        return scoreboard[1][r] == 0;
      endmethod
    endinterface;

    allocs[i] = interface WritePort;
      method Action request(ArchReg r, void _);
        allocRegs[i].wset(r);
      endmethod
    endinterface;
  end

  interface destinationPorts = destinations;
  interface forwardPorts = forwards;
  interface commitPorts = commits;
  interface allocPorts = allocs;
  interface readPorts = reads;
endmodule

interface DispatchBuffer;
  // Give the current values inside the buffer
  (* always_ready *) method Bundle _read;

  // consume some values of the buffer, the values that we consumes mue be coherents:
  // if `0 <= a < b < supSize` are two indexes such that `self.mask[a] and self.mask[b]`, then we
  // can't consume `b` before consuming `a`, otherwise we may observe some data hazards...
  method Action consume(Super#(Bool) mask);

  // Read some values from the decode stage, only called if the fetch buffer is empty
  method Action put(Bundle in);
endinterface

module mkDispatchBuffer(DispatchBuffer);
  Reg#(Super#(Bool)) masks[2] <- mkCReg(2, replicate(False));
  Reg#(Super#(Bit#(32))) bpredictionBuf <- mkRegU;
  Reg#(Super#(CauseException)) causeBuf <- mkRegU;
  Reg#(Super#(Bool)) exceptionBuf <- mkRegU;
  Reg#(BranchPredState) bstateBuf <- mkRegU;
  Reg#(Super#(RvInstr)) instrBuf <- mkRegU;
  Reg#(Super#(Bit#(32))) pcBuf <- mkRegU;
  Reg#(Epoch) epochBuf <- mkRegU;

  method _read = Bundle{
    bprediction: bpredictionBuf,
    exception: exceptionBuf,
    bstate: bstateBuf,
    cause: causeBuf,
    instr: instrBuf,
    epoch: epochBuf,
    mask: masks[0],
    pc: pcBuf
  };

  method Action consume(Super#(Bool) consumed);
    Super#(Bool) newMask = masks[0];
    Bool found = False;

    for (Integer i=0; i < supSize; i = i + 1) begin
      dynamicAssert(!found || !newMask[i] || !consumed[i], "DispatchBuffer<comsume> incoherent state");
      if (newMask[i] && !consumed[i]) found = True;
      if (consumed[i]) newMask[i] = False;
    end

    masks[0] <= newMask;
  endmethod

  method Action put(Bundle in) if (masks[1] == replicate(False));
    bpredictionBuf <= in.bprediction;
    exceptionBuf <= in.exception;
    bstateBuf <= in.bstate;
    instrBuf <= in.instr;
    epochBuf <= in.epoch;
    causeBuf <= in.cause;
    masks[1] <= in.mask;
    pcBuf <= in.pc;
  endmethod
endmodule

interface LsuIfc;
  (* always_ready *) method Bool canPut;
  method Action put(LsuRequest req, ArchReg rd);

  method Action deq(Bool commit);
  (* always_ready *) method CauseException cause;
  (* always_ready *) method Bool exception;
  (* always_ready *) method Bit#(32) read;
  (* always_ready *) method Bool canDeq;
endinterface

(* synthesize *)
module mkLsu(LsuIfc);
  Bit#(32) minDmemAddr = 'h80000000;
  Bit#(32) maxDmemAddr = 'h80000000 + 'hFFFFF;
  FORWARD_BRAM_BE#(Bit#(32), Bit#(32), 4) dmem <-
    mkForwardBRAMCoreBELoad('hFFFFF, "Mem32.hex", False);

  Reg#(Bool) valid[2] <- mkCReg(2, False);
  Reg#(ArchReg) destination <- mkRegU;
  Reg#(LsuRequest) request <- mkRegU;

  method Bool canPut = !valid[1];
  method Action put(LsuRequest req, ArchReg rd) if (!valid[1]);
    let address = (req.address - 'h80000000) >> 2;

    if (minDmemAddr <= req.address && req.address <= maxDmemAddr) dmem.read(address);
    destination <= rd;
    valid[1] <= True;
    request <= req;
  endmethod

  method exception = !lsuRequestAligned(request);
  method cause = request.store ? StoreAmoAddressMisaligned : LoadAddressMisaligned;
  method Bit#(32) read = lsuRequestRd(request, dmem.response);
  method Bool canDeq = valid[0];

  method Action deq(Bool commit) if (valid[0]);
    let address = (request.address - 'h80000000) >> 2;
    let mask = lsuRequestMask(request);
    let data = lsuRequestData(request);

    if (commit && request.store) begin
      if (minDmemAddr <= request.address && request.address <= maxDmemAddr) begin
        //$display("        mem[%h] <= %h if %b", request.address, data, mask);
        dmem.write(mask, address, data);
      end

      if (request.address == 'h10000000 && mask[0] == 1) begin
        $write("%c", data[7:0]);
        //txUart.put(data[7:0]);
        $fflush(stdout);
      end
    end

    valid[0] <= False;
  endmethod
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

  RegisterFile#(TMul#(2, SupSize), SupSize, 0, SupSize) regFile <- mkRegisterFile;

  Reg#(Epoch) epoch[2] <- mkCReg(2, 0);

  Fifo#(2, Tuple3#(Bit#(32), Epoch, BranchPredTrain)) redirectQ <- mkFifo;

  FetchIfc fetch <- mkFetch;

  DecodeIfc decode <- mkDecode;

  DispatchBuffer inBuffer <- mkDispatchBuffer;
  DispatchBuffer outBuffer <- mkDispatchBuffer;

  Vector#(SupSize, AluIfc) aluVec <- replicateM(mkAlu(True, True, True));

  let lsu <- mkLsu;

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

  Reg#(Bit#(32)) commitPc <- mkReg('h80000000);

  rule flush if (outBuffer.mask != replicate(False) && outBuffer.epoch != epoch[0]);
    Bool stop = False;
    Bool useMem = False;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
      RvInstr instr = outBuffer.instr[i];

      Bool rdy = aluVec[i].canDeq;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isMemAccess && !lsu.canDeq) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        regFile.commitPorts[i].request(outBuffer.instr[i].rd, Invalid);
        if (instr.isMemAccess) lsu.deq(False);
        if (instr.isMemAccess) useMem = True;
        consumed[i] = True;
        aluVec[i].deq;
      end
    end

    outBuffer.consume(consumed);
  endrule

  rule commit
    if (outBuffer.mask != replicate(False) && !redirectQ.canDeq && outBuffer.epoch == epoch[0]);

    Bool stop = False;
    Bool useMem = False;
    Bool trainHit = True;
    Bit#(32) currentPc = commitPc;
    Bit#(32) instrCounter = instret;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
      RvInstr instr = outBuffer.instr[i];
      let pc = outBuffer.pc[i];
      ArchReg rd = instr.rd;

      dynamicAssert(pc == currentPc, "control flow error");

      let rdy = !(instr.isMemAccess && useMem);
      if (instr.isMemAccess && !lsu.canDeq) rdy = False;
      if (!aluVec[i].canDeq) rdy = False;
      if (!rdy) stop = True;

      let resp = aluVec[i].response;

      if (rdy) begin
        consumed[i] = True;
        instrCounter = instrCounter + 1;
        aluVec[i].deq;

        if (debug) $display(cycle, " commit 0x%h: ", pc, showRvInstr(instr));

        if (outBuffer.exception[i]) $display("cycle: %d instret: %d", cycle, instret);

        if (instr.isMemAccess) begin
          lsu.deq(!lsu.exception);
          useMem = True;
        end

        if (outBuffer.exception[i]) regFile.commitPorts[i].request(rd, Invalid);
        else regFile.commitPorts[i].request(rd, Valid(instr.isMemAccess ? lsu.read : resp.rd));
        if (debug && rd != 0)
          $display("          ", showReg(rd), " = %h", instr.isMemAccess ? lsu.read : resp.rd);

        currentPc = resp.pc;

        // Misprediction: redirect pipeline
        if (resp.pc != outBuffer.bprediction[i]) begin
          if (debug) $display("          redirect from 0x%h to 0x%h", pc, resp.pc);

          redirectQ.enq(tuple3(
            resp.pc, epoch[0]+1,
            BranchPredTrain{
              instrs: Valid(outBuffer.instr),
              state: outBuffer.bstate,
              nextPc: resp.pc,
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
    commitPc <= currentPc;
  endrule

  rule dispatch if (inBuffer.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && inBuffer.mask[i]) begin
      RvInstr instr = inBuffer.instr[i];
      let pc = inBuffer.pc[i];

      ArchReg rs1 = instr.rs1;
      ArchReg rs2 = instr.rs2;
      ArchReg rd = instr.rd;

      // Check if we are ready to schedule the instruction
      let maybeOp1 <- regFile.readPorts[i].request(rs1);
      let maybeOp2 <- regFile.readPorts[i].request(rs2);
      Bool rdy <- regFile.destinationPorts[i].request(rd);
      if (!isJust(maybeOp1) || !isJust(maybeOp2)) rdy = False;

      let op1 = unJust(maybeOp1);
      let op2 = unJust(maybeOp2);

      for (Integer j=0; j < i; j = j + 1) if (inBuffer.mask[j]) begin
        if (rs1 != 0 && rs1 == inBuffer.instr[j].rd) rdy = False;
        if (rs2 != 0 && rs2 == inBuffer.instr[j].rd) rdy = False;
        if (rd != 0 && rd == inBuffer.instr[j].rd) rdy = False;
      end

      if (!lsu.canPut && instr.isMemAccess) rdy = False;
      if (useMem && instr.isMemAccess) rdy = False;
      if (!aluVec[i].canEnter) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        consumed[i] = True;
        regFile.allocPorts[i].request(rd, ?);

        let aluReq = AluRequest{
          instr: instr,
          rs1: op1,
          rs2: op2,
          pc: pc
        };

        aluVec[i].enter(aluReq);

        if (instr.isMemAccess) begin
          lsu.put(getLsuRequest(aluReq), rd);
          useMem = True;
        end
      end
    end

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
endmodule
