import MultiRegFile :: *;
import ForwardBRAM :: *;
import BranchPred :: *;
import BRAMCore :: *;
import RvInstr :: *;
import Vector :: *;
import Assert :: *;
import RvAlu :: *;
import UART :: *;
import Fifo :: *;
import Ehr :: *;

interface InstructionMemory;
  method Action request(Bit#(32) address);

  (* always_ready *) method Bool valid;
  (* always_ready *) method Bool exception;
  (* always_ready *) method Super#(Bit#(32)) data;
  (* always_ready *) method CauseException cause;
endinterface

module mkInstructionMemoryTCM#(Integer minAddr, Integer maxAddr, String name) (InstructionMemory);
  BRAM_PORT#(Bit#(32), Bit#(TMul#(SupSize, 32))) bram <-
    mkBRAMCore1Load(1 + (maxAddr - minAddr) / (supSize * 4), False, name, False);
  Reg#(Bool) validReg <- mkReg(False);
  Reg#(Bit#(32)) addr <- mkReg(?);

  method Action request(Bit#(32) address);
    bram.put(False, (address - fromInteger(minAddr)) >> (2 + fromInteger(supLogSize)), ?);
    validReg <= True;
    addr <= address;
  endmethod

  method Bool valid = validReg;

  method Bool exception =
    fromInteger(minAddr) > addr || addr > fromInteger(maxAddr) || addr[1:0] != 0;

  method Super#(Bit#(32)) data = unpack(bram.read);

  method CauseException cause =
    addr[1:0] != 0 ? InstructionAddressMisaligned : InstructionAccessFault;
endmodule

typedef struct {
  Super#(Bool) mask;
  Super#(Bit#(32)) data;
  Super#(Bit#(32)) bprediction;
  Super#(CauseException) cause;
  Super#(Bool) exception;
  Super#(Bit#(32)) pc;
  Epoch epoch;
  BranchPredState bstate;
} FetchOutput deriving(Bits);

interface FetchIfc;
  method ActionValue#(FetchOutput) get;
  method Action redirect(Bit#(32) pc, Epoch newEpoch);

  method Action trainMis(BranchPredTrain infos);
  method Action trainHit(BranchPredTrain infos);
endinterface

(* synthesize *)
module mkFetch(FetchIfc);
  Ehr#(3, Epoch) nextEpoch <- mkEhr(0);
  Ehr#(3, Bit#(32)) nextPc <- mkEhr('h80000000);

  Bool bpredEnabled = True;

  String fileName = case (supLogSize) matches
    0 : "Mem32.hex";
    1 : "Mem64.hex";
    2 : "Mem128.hex";
    3 : "Mem256.hex";
    default : "";
  endcase;

  let tcm <- mkInstructionMemoryTCM('h80000000, 'h80000000 + 'hFFFFF, fileName);

  Fifo#(1, Tuple2#(Bit#(32), Epoch)) queue <- mkPipelineFifo;

  Bit#(32) pcMask = (1 << (supLogSize+2)) - 1;

  let bpred <- mkBranchPredictor;

  rule request;
    queue.enq(tuple2(nextPc[2], nextEpoch[2]));
    tcm.request(nextPc[2] & ~pcMask);
    bpred.lookup(nextPc[2]);
  endrule

  method ActionValue#(FetchOutput) get if (queue.canDeq && tcm.valid);
    match {.pc, .epoch} = queue.first;
    queue.deq;

    Bit#(SupLogSize) laneBaseIndex = truncate(pc >> 2);
    Bit#(32) basePc = pc & ~pcMask;

    BranchPredState bstate = ?;
    Super#(Bool) mask = newVector;
    Super#(Bit#(32)) pcVec = newVector;
    Super#(Bit#(32)) bprediction = newVector;
    for (Integer i=0; i < supSize; i = i + 1) begin
      mask[i] = tcm.exception ? fromInteger(i) == laneBaseIndex : fromInteger(i) >= laneBaseIndex;
      pcVec[i] = basePc + 4 * fromInteger(i);
    end

    if (supLogSize == 0) mask[0] = True;

    if (epoch == nextEpoch[1]) begin
      match {.newPc, .offset, .bst} <- bpred.doPred();
      dynamicAssert(offset >= laneBaseIndex, "incoherent prediction");
      nextPc[1] <= bpredEnabled ? newPc : basePc + fromInteger(4*supSize);
      bstate = bst;

      for (Integer i=0; i < supSize; i = i + 1) begin
        bprediction[i] = supLogSize == 0 || offset == fromInteger(i) ? newPc : pcVec[i] + 4;
        if (bpredEnabled && offset < fromInteger(i) && supLogSize != 0) mask[i] = False;
        if (!bpredEnabled) bprediction[i] = pcVec[i] + 4;
      end
    end

    return FetchOutput {
      exception: replicate(tcm.exception),
      cause: replicate(tcm.cause),
      bprediction: bprediction,
      bstate: bstate,
      data: tcm.data,
      epoch: epoch,
      mask: mask,
      pc: pcVec
    };
  endmethod

  method Action redirect(Bit#(32) newPc, Epoch newEpoch);
    nextEpoch[0] <= newEpoch;
    nextPc[0] <= newPc;
  endmethod

  method trainMis = bpred.trainMis;
  method trainHit = bpred.trainHit;
endmodule

typedef struct {
  Super#(Bool) mask;
  Super#(RvInstr) instr;
  Super#(Bit#(32)) bprediction;
  Super#(CauseException) cause;
  BranchPredState bstate;
  Super#(Bool) exception;
  Super#(Bit#(32)) pc;
  Epoch epoch;
} DecodeOutput deriving(Bits);

interface DecodeIfc;
  method Action put(FetchOutput in);
  method ActionValue#(DecodeOutput) get;
  (* always_ready *) method Bool canGet;
endinterface

(* synthesize *)
module mkDecode(DecodeIfc);
  Fifo#(2, FetchOutput) fifo <- mkFifo;

  method Action put(FetchOutput in);
    fifo.enq(in);
  endmethod

  method canGet = fifo.canDeq;

  method ActionValue#(DecodeOutput) get;
    let in = fifo.first;
    fifo.deq;

    Super#(RvInstr) instr = Vector::map(decodeRvInstr, in.data);
    Super#(CauseException) cause = in.cause;
    Super#(Bool) exception = in.exception;

    for (Integer i=0; i < supSize; i = i + 1) begin
      if (instr[i].opcode == Err && !exception[i]) begin
        cause[i] = IllegalInstruction;
        exception[i] = True;
      end
    end

    return DecodeOutput{
      bprediction: in.bprediction,
      exception: exception,
      bstate: in.bstate,
      epoch: in.epoch,
      mask: in.mask,
      cause: cause,
      instr: instr,
      pc: in.pc
    };
  endmethod
endmodule

interface FetchBuffer;
  // Give the current values inside the buffer
  (* always_ready *) method DecodeOutput _read;

  // consume some values of the buffer, the values that we consumes mue be coherents:
  // if `0 <= a < b < supSize` are two indexes such that `self.mask[a] and self.mask[b]`, then we
  // can't consume `b` before consuming `a`, otherwise we may observe some data hazards...
  method Action consume(Super#(Bool) mask);

  // Read some values from the decode stage, only called if the fetch buffer is empty
  method Action put(DecodeOutput in);
endinterface

(* synthesize *)
module mkFetchBuffer(FetchBuffer);
  Ehr#(2, Super#(Bool)) mask <- mkEhr(replicate(False));
  Reg#(Super#(Bit#(32))) bpredictionBuf <- mkReg(?);
  Reg#(Super#(CauseException)) causeBuf <- mkReg(?);
  Reg#(Super#(Bool)) exceptionBuf <- mkReg(?);
  Reg#(BranchPredState) bstateBuf <- mkReg(?);
  Reg#(Super#(RvInstr)) instrBuf <- mkReg(?);
  Reg#(Super#(Bit#(32))) pcBuf <- mkReg(?);
  Reg#(Epoch) epochBuf <- mkReg(?);

  method _read = DecodeOutput{
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
      dynamicAssert(!found || !newMask[i] || !consumed[i], "FetchBuffer<comsume> incoherent state");
      if (newMask[i] && !consumed[i]) found = True;
      if (consumed[i]) newMask[i] = False;
    end

    mask[0] <= newMask;
  endmethod

  method Action put(DecodeOutput in) if (mask[1] == replicate(False));
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

  Ehr#(2, Bit#(32)) scoreboard <- mkEhr(0);

  MultiRF#(TMul#(2, SupSize), SupSize, ArchReg, Bit#(32)) regFile <- mkForwardMultiRF(0, 31);

  Ehr#(2, Epoch) epoch <- mkEhr(0);

  Fifo#(2, Tuple3#(Bit#(32), Epoch, BranchPredTrain)) redirectQ <- mkFifo;

  FetchIfc fetch <- mkFetch;

  DecodeIfc decode <- mkDecode;

  FetchBuffer inBuffer <- mkFetchBuffer;

  FetchBuffer outBuffer <- mkFetchBuffer;

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

  rule commit if (outBuffer.mask != replicate(False));
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

        // Apply ALU operation
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
    outBuffer.put(DecodeOutput{
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
