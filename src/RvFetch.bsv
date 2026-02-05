import RvBranchPred :: *;
import BRAMCore :: *;
import RvICache :: *;
import RvInstr :: *;
import Vector :: *;
import Assert :: *;
import Fifo :: *;

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
  Reg#(Epoch) nextEpoch[3] <- mkCReg(3, 0);
  Reg#(Bit#(32)) nextPc[3] <- mkCReg(3, 'h80000000);

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
} Bundle deriving(Bits);

interface DecodeIfc;
  method Action put(FetchOutput in);
  method ActionValue#(Bundle) get;
  (* always_ready *) method Bool canGet;
endinterface

(* synthesize *)
module mkDecode(DecodeIfc);
  Fifo#(2, FetchOutput) fifo <- mkFifo;

  method Action put(FetchOutput in);
    fifo.enq(in);
  endmethod

  method canGet = fifo.canDeq;

  method ActionValue#(Bundle) get;
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

    return Bundle{
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
