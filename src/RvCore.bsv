import MultiRegFile :: *;
import RvBranchPred :: *;
import ForwardBRAM :: *;
import BRAMCore :: *;
import RegFile :: *;
import RvInstr :: *;
import RvFetch :: *;
import Vector :: *;
import Assert :: *;
import RvAlu :: *;
import UART :: *;
import Fifo :: *;

interface DispatchBuffer#(numeric type size);
  // Give the current values inside the buffer
  (* always_ready *) method Bundle _read;

  // consume some values of the buffer, the values that we consumes mue be coherents:
  // if `0 <= a < b < supSize` are two indexes such that `self.mask[a] and self.mask[b]`, then we
  // can't consume `b` before consuming `a`, otherwise we may observe some data hazards...
  method Action consume(Super#(Bool) mask);

  // Read some values from the decode stage, only called if the fetch buffer is empty
  method Action put(Bundle in);
endinterface

(* synthesize *)
module mkDispatchBuffer(DispatchBuffer#(0));
  Reg#(Super#(Bool)) mask[2] <- mkCReg(2, replicate(False));
  Reg#(Super#(Bit#(32))) bpredictionBuf <- mkReg(?);
  Reg#(Super#(CauseException)) causeBuf <- mkReg(?);
  Reg#(Super#(Bool)) exceptionBuf <- mkReg(?);
  Reg#(BranchPredState) bstateBuf <- mkReg(?);
  Reg#(Super#(RvInstr)) instrBuf <- mkReg(?);
  Reg#(Super#(Bit#(32))) pcBuf <- mkReg(?);
  Reg#(Epoch) epochBuf <- mkReg(?);

  method _read = Bundle{
    bprediction: bpredictionBuf,
    exception: exceptionBuf,
    bstate: bstateBuf,
    cause: causeBuf,
    instr: instrBuf,
    epoch: epochBuf,
    mask: mask[0],
    pc: pcBuf
  };

  method Action consume(Super#(Bool) consumed);
    Super#(Bool) newMask = mask[0];
    Bool found = False;

    for (Integer i=0; i < supSize; i = i + 1) begin
      dynamicAssert(!found || !newMask[i] || !consumed[i], "DispatchBuffer<comsume> incoherent state");
      if (newMask[i] && !consumed[i]) found = True;
      if (consumed[i]) newMask[i] = False;
    end

    mask[0] <= newMask;
  endmethod

  method Action put(Bundle in) if (mask[1] == replicate(False));
    bpredictionBuf <= in.bprediction;
    exceptionBuf <= in.exception;
    bstateBuf <= in.bstate;
    instrBuf <= in.instr;
    epochBuf <= in.epoch;
    causeBuf <= in.cause;
    mask[1] <= in.mask;
    pcBuf <= in.pc;
  endmethod
endmodule

module mkDispatchBuffer2(DispatchBuffer#(n));
  Reg#(Vector#(n, Super#(Bool))) masks[2] <- mkCReg(2, replicate(replicate(False)));
  RegFile#(Bit#(TLog#(n)), Super#(Bit#(32))) bpredictionBuf <- mkRegFileFull;
  RegFile#(Bit#(TLog#(n)), Super#(CauseException)) causeBuf <- mkRegFileFull;
  RegFile#(Bit#(TLog#(n)), Super#(Bool)) exceptionBuf <- mkRegFileFull;
  RegFile#(Bit#(TLog#(n)), BranchPredState) bstateBuf <- mkRegFileFull;
  RegFile#(Bit#(TLog#(n)), Super#(RvInstr)) instrBuf <- mkRegFileFull;
  RegFile#(Bit#(TLog#(n)), Super#(Bit#(32))) pcBuf <- mkRegFileFull;
  RegFile#(Bit#(TLog#(n)), Epoch) epochBuf <- mkRegFileFull;

  Reg#(Bit#(TLog#(n))) head <- mkReg(0);
  Reg#(Bit#(TLog#(n))) tail <- mkReg(0);

  method _read = Bundle{
    bprediction: bpredictionBuf.sub(head),
    exception: exceptionBuf.sub(head),
    bstate: bstateBuf.sub(head),
    cause: causeBuf.sub(head),
    instr: instrBuf.sub(head),
    epoch: epochBuf.sub(head),
    mask: masks[0][head],
    pc: pcBuf.sub(head)
  };

  method Action consume(Super#(Bool) consumed);
    Super#(Bool) newMask = masks[0][head];
    Bool found = False;

    for (Integer i=0; i < supSize; i = i + 1) begin
      dynamicAssert(!found || !newMask[i] || !consumed[i], "DispatchBuffer<comsume> incoherent state");
      if (newMask[i] && !consumed[i]) found = True;
      if (consumed[i]) newMask[i] = False;
    end

    if (newMask == replicate(False)) head <= head == fromInteger(valueof(n)-1) ? 0 : head+1;
    masks[0][head] <= newMask;
  endmethod

  method Action put(Bundle in) if (masks[1][tail] == replicate(False));
    tail <= tail == fromInteger(valueof(n)-1) ? 0 : tail+1;
    bpredictionBuf.upd(tail, in.bprediction);
    exceptionBuf.upd(tail, in.exception);
    bstateBuf.upd(tail, in.bstate);
    instrBuf.upd(tail, in.instr);
    epochBuf.upd(tail, in.epoch);
    causeBuf.upd(tail, in.cause);
    masks[1][tail] <= in.mask;
    pcBuf.upd(tail, in.pc);
  endmethod
endmodule

//(* synthesize *)
module mkDispatchBuffer3(DispatchBuffer#(1));
  let ifc <- mkDispatchBuffer2;
  return ifc;
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

  Reg#(Bit#(32)) scoreboard[2] <- mkCReg(2, 0);

  MultiRF#(TMul#(2, SupSize), SupSize, ArchReg, Bit#(32)) regFile <- mkForwardMultiRF(0, 31);

  Reg#(Epoch) epoch[2] <- mkCReg(2, 0);

  Fifo#(2, Tuple3#(Bit#(32), Epoch, BranchPredTrain)) redirectQ <- mkFifo;

  FetchIfc fetch <- mkFetch;

  DecodeIfc decode <- mkDecode;

  let inBuffer <- mkDispatchBuffer3;
  let outBuffer <- mkDispatchBuffer3;

  Vector#(SupSize, AluIfc) aluVec <- replicateM(mkAlu);

  Bit#(32) minDmemAddr = 'h80000000;
  Bit#(32) maxDmemAddr = 'h80000000 + 'hFFFFF;
  FORWARD_BRAM_BE#(Bit#(32), Bit#(32), 4) dmem <-
    mkForwardBRAMCoreBELoad('hFFFFF, "Mem32.hex", False);

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

  Super#(Reg#(Bit#(32))) opReg1 <- replicateM(mkReg(?));
  Super#(Reg#(Bit#(32))) opReg2 <- replicateM(mkReg(?));

  Reg#(Bit#(32)) commitPc <- mkReg('h80000000);

  rule commit if (outBuffer.mask != replicate(False) && !redirectQ.canDeq);
    Bool stop = False;
    Bool useMem = False;
    Bool trainHit = True;
    Bit#(32) currentPc = commitPc;
    Bit#(32) score = scoreboard[0];
    Bit#(32) instrCounter = instret;
    Super#(Bool) consumed = replicate(False);

    if (outBuffer.epoch != epoch[0]) begin
      for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
        if (aluVec[i].canDeq) begin
          score[outBuffer.instr[i].rd] = 0;
          consumed[i] = True;
          aluVec[i].deq;
        end else stop = True;
      end

      trainHit = False;
      stop = True;
    end

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
      RvInstr instr = outBuffer.instr[i];
      let pc = outBuffer.pc[i];
      ArchReg rd = instr.rd;

      dynamicAssert(pc == currentPc, "control flow error");

      let aluReq = AluRequest{
        rs1: opReg1[i],
        rs2: opReg2[i],
        instr: instr,
        pc: pc
      };

      let rdy = !(instr.opcode == Store && useMem);
      if (!aluVec[i].canDeq) rdy = False;
      if (!rdy) stop = True;

      let lsuReq = getLsuRequest(aluReq);
      let resp = aluVec[i].response;

      if (rdy) begin
        consumed[i] = True;
        instrCounter = instrCounter + 1;
        aluVec[i].deq;

        if (debug) $display(
          cycle, " commit 0x%h: ", pc, showRvInstr(instr),
            "\t\t\trs1: 0x%h rs2: 0x%h", opReg1[i], opReg2[i]);

        if (outBuffer.exception[i]) $display("cycle: %d instret: %d", cycle, instret);

        // Apply Store operation
        if (!outBuffer.exception[i] && instr.opcode == Store) begin
          let address = (lsuReq.address - 'h80000000) >> 2;
          let data = lsuRequestData(lsuReq);
          let mask = lsuRequestMask(lsuReq);
          useMem = True;

          if (lsuReq.address == 'h10000000 && mask[0] == 1) begin
            $write("%c", data[7:0]);
            //txUart.put(data[7:0]);
            $fflush(stdout);
          end

          if (minDmemAddr <= lsuReq.address && lsuReq.address <= maxDmemAddr) begin
            if (debug) $display(cycle, " [0x%h : %b] <= %h", lsuReq.address, mask, data);
            dmem.write(mask, address, data);
          end
          //else $display("0x%h", lsuReq.address);
        end

        if (!outBuffer.exception[i] && rd != 0) begin
          let data = instr.opcode == Load ? lsuRequestRd(lsuReq, dmem.response) : resp.rd;
          regFile.writePorts[i].request(rd, data);

          if (debug) $display("          ", showReg(rd), " <= 0x%h", data);
        end

        // Free the entry into the scoreboard
        score[rd] = 0;

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
    scoreboard[0] <= score;
    commitPc <= currentPc;
  endrule

  rule dispatch if (inBuffer.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Bit#(32) score = scoreboard[1];
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && inBuffer.mask[i]) begin
      RvInstr instr = inBuffer.instr[i];
      let pc = inBuffer.pc[i];

      ArchReg rs1 = instr.rs1;
      ArchReg rs2 = instr.rs2;
      ArchReg rd = instr.rd;

      // Check if we are ready to schedule the instruction
      Bool rdy =
        scoreboard[1][rs1] == 0 && scoreboard[1][rs2] == 0 && scoreboard[1][rd] == 0;

      for (Integer j=0; j < i; j = j + 1) if (inBuffer.mask[j]) begin
        if (rs1 != 0 && rs1 == inBuffer.instr[j].rd) rdy = False;
        if (rs2 != 0 && rs2 == inBuffer.instr[j].rd) rdy = False;
        if (rd != 0 && rd == inBuffer.instr[j].rd) rdy = False;
      end

      if (useMem && instr.isMemAccess) rdy = False;
      if (!aluVec[i].canEnter) rdy = False;
      if (!rdy) stop = True;

      let op1 <- regFile.readPorts[2*i].request(rs1);
      let op2 <- regFile.readPorts[2*i+1].request(rs2);
      if (rs1 == 0) op1 = 0;
      if (rs2 == 0) op2 = 0;

      //if (debug) $display(cycle, " dispatch (rdy: %b): 0x%h ", rdy, pc, showRvInstr(instr));

      if (rdy) begin
        consumed[i] = True;
        if (rd != 0) score[rd] = 1;

        opReg1[i] <= op1;
        opReg2[i] <= op2;

        let aluReq = AluRequest{
          instr: instr,
          rs1: op1,
          rs2: op2,
          pc: pc
        };

        aluVec[i].enter(aluReq);

        let lsuReq = getLsuRequest(aluReq);
        let address = (lsuReq.address - 'h80000000) >> 2;
        if (instr.isMemAccess) begin
          if (minDmemAddr <= lsuReq.address && lsuReq.address <= maxDmemAddr)
            dmem.read(address);
          useMem = True;
        end
      end
    end

    scoreboard[1] <= score;
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
