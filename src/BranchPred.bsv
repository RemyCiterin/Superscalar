import ForwardBRAM::*;
import BRAMCore::*;
import RvInstr::*;
import RegFile::*;
import Ehr::*;

// Each instruction that may update the control flow has an associated "instruction kind", this kind
// is used to known the predictor to use to find the next program counter
typedef enum {
  Call = 0,
  Ret = 1,
  RetCall = 2,
  Branch = 3,
  Jump = 4,
  Linear = 5
} InstrKind deriving(Bits, FShow, Eq);

function InstrKind instrKind(RvInstr instr);
  return case (instr.opcode) matches
    Beq  : Branch;
    Bne  : Branch;
    Blt  : Branch;
    Bltu : Branch;
    Bge  : Branch;
    Bgeu : Branch;
    Jal  : Jump;
    Jalr : case (tuple2(instr.rs1, instr.rs2)) matches
      Tuple2 {fst: 1, snd: 5}  : Call;
      Tuple2 {fst: 5, snd: 1}  : Call;
      Tuple2 {fst: 5, snd: .*} : Call;
      Tuple2 {fst: 1, snd: .*} : Call;
      Tuple2 {fst: .*, snd: 5} : Ret;
      Tuple2 {fst: .*, snd: 1} : Ret;
      default: Jump;
    endcase
    default: Linear;
  endcase;
endfunction

function InstrKind instrKindOpt(Maybe#(Super#(RvInstr)) opt);
  InstrKind ret = Linear;
  if (opt matches tagged Valid .list) begin
    for (Integer i=0; i < supSize; i = i + 1) begin
      let k = instrKind(list[i]);
      if (k != Linear) ret = k;
    end
  end

  return ret;
endfunction

typedef 10 TagWidth;
typedef TagWidth HistorySize;
typedef 3 StackLogSize;

typedef Bit#(TagWidth) Tag;
typedef Bit#(HistorySize) History;
typedef Bit#(StackLogSize) StackIndex;

// An entry of the branch target buffer
typedef struct {
  Bit#(32) lane;
  Bit#(32) nextPc;
  InstrKind kind;
  Bit#(SupLogSize) offset;
  Bool valid;
} BtbEntry deriving(Bits, Eq);

interface BranchTargetBuffer;
  /* Stage 1: read request */
  method Action lookup(Bit#(32) lane);

  /* Stage 2: get the result of the read request */
  (* always_ready *) method Bit#(32) predTarget;
  (* always_ready *) method InstrKind predKind;
  (* always_ready *) method Bit#(SupLogSize) predOffset;

  /* Stage 3: update the state */
  method Action update(Bit#(32) lane, Bit#(32) nextPc, InstrKind kind, Bit#(SupLogSize) offset);
endinterface

(* synthesize *)
module mkBranchTargetBuffer(BranchTargetBuffer);
  BRAM_DUAL_PORT#(Tag, BtbEntry) entries <- mkBRAMCore2(2 ** valueOf(TagWidth), False);
  Reg#(Bit#(32)) laneReg <- mkReg(?);

  Reg#(Tag) initIndex <- mkReg(0);
  Reg#(Bool) init <- mkReg(False);

  rule initRl if (!init);
    entries.b.put(True, initIndex, BtbEntry{valid: False, lane: ?, nextPc: ?, kind: ?, offset: ?});
    initIndex <= initIndex + 1;
    init <= initIndex + 1 == 0;
  endrule

  Bool valid = laneReg == entries.a.read.lane && entries.a.read.valid;

  method Action lookup(Bit#(32) lane) if (init);
    entries.a.put(False, truncate(lane >> (2+supLogSize)), ?);
    laneReg <= lane;
  endmethod

  method predTarget = valid ? entries.a.read.nextPc : laneReg + fromInteger(4 * supSize);
  method predOffset = valid ? entries.a.read.offset : maxBound;
  method predKind = valid ? entries.a.read.kind : Linear;

  method Action update
    (Bit#(32) lane, Bit#(32) nextPc, InstrKind kind, Bit#(SupLogSize) offset) if (init);
    if (nextPc != lane + fromInteger(4 * supSize))
      entries.b.put(
        True,
        truncate(lane >> (2+supLogSize)),
        BtbEntry{valid: True, lane: lane, nextPc: nextPc, kind: kind, offset: offset}
      );
  endmethod
endmodule

interface ReturnAddressStack;
  (* always_ready *) method StackIndex topOfStack;
  method ActionValue#(Maybe#(Bit#(32))) pred(Bit#(32) pc, InstrKind kind);
  method Action backtrack(StackIndex head, InstrKind kind);
endinterface

(* synthesize *)
module mkReturnAddressStack(ReturnAddressStack);
  RegFile#(StackIndex, Maybe#(Bit#(32))) stack <- mkRegFileFull;
  Reg#(StackIndex) head <- mkReg(0);
  Reg#(Bool) init <- mkReg(False);

  rule initRl if (!init);
    stack.upd(head, Invalid);
    init <= head + 1 == 0;
    head <= head + 1;
  endrule

  method topOfStack = head;

  method ActionValue#(Maybe#(Bit#(32))) pred(Bit#(32) pc, InstrKind kind) if (init);
    head <= case (kind) matches
      Call : head + 1;
      Ret : head - 1;
      default : head;
    endcase;

    if (kind == Call) stack.upd(head, Valid(pc+4));

    return kind == Ret ? stack.sub(head-1) : Invalid;
  endmethod

  method Action backtrack(StackIndex index, InstrKind kind) if (init);
    action
      head <= case (kind) matches
        Call : index + 1;
        Ret : index - 1;
        default : index;
      endcase;
    endaction
  endmethod
endmodule

typedef struct {
  Int#(3) base;
  Int#(3) pred;
  Bool found;
} GhtState deriving(Bits, FShow, Eq);

interface GlobalHistoryTable;
  method Action lookup(Bit#(32) lane, History h);

  (* always_ready *) method Bool prediction;
  (* always_ready *) method GhtState state;

  method Action update(Bit#(32) lane, History h, Bool taken, GhtState st);
endinterface

typedef struct {
  Maybe#(Tag) tag;
  Int#(3) value;
} TaggedEntry deriving(Bits, FShow, Eq);

instance DefaultValue#(TaggedEntry);
  function TaggedEntry defaultValue = TaggedEntry{
    tag: Invalid,
    value: 0
  };
endinstance

(* synthesize *)
module mkGlobalHistoryTable(GlobalHistoryTable);
  BRAM_DUAL_PORT#(Tag, Int#(3)) baseRam <- mkBRAMCore2(2 ** valueOf(TagWidth), False);
  BRAM_DUAL_PORT#(Tag, TaggedEntry) predRam <- mkBRAMCore2(2 ** valueOf(TagWidth), False);

  Reg#(Tag) initIndex <- mkReg(0);
  Reg#(Bool) init <- mkReg(False);

  rule initRl if (!init);
    baseRam.b.put(True, initIndex, 0);
    predRam.b.put(True, initIndex, defaultValue);
    initIndex <= initIndex + 1;
    init <= initIndex + 1 == 0;
  endrule

  Reg#(Bit#(32)) laneReg <- mkRegU;
  Reg#(History) histReg <- mkRegU;

  Bool valid = predRam.a.read.tag == Valid(truncate(laneReg >> (2+supLogSize)));

  method Action lookup(Bit#(32) lane, History h) if (init);
    baseRam.a.put(False, truncate(lane >> (2+supLogSize)), ?);
    predRam.a.put(False, truncate(lane >> (2+supLogSize)) ^ truncate(h), ?);
    laneReg <= lane;
    histReg <= h;
  endmethod

  method Bool prediction = (valid ? predRam.a.read.value : baseRam.a.read) >= 0;

  method state;
    return GhtState {
      pred: predRam.a.read.value,
      base: baseRam.a.read,
      found: valid
    };
  endmethod

  method Action update(Bit#(32) lane, History h, Bool taken, GhtState st) if (init);
    let base = satPlus(Sat_Bound, st.base, taken ? 1 : -1);
    let pred = satPlus(Sat_Bound, st.pred, taken ? 1 : -1);
    pred = st.found ? pred : (taken ? 0 : -1);

    Tag tag = truncate(lane >> (2+supLogSize));
    Tag hash = tag ^ truncate(h);

    predRam.b.put(True, hash, TaggedEntry{tag: Valid(tag), value: pred});
    baseRam.b.put(True, tag, base);
  endmethod
endmodule

typedef struct {
  History ghr;
  InstrKind kind;
  StackIndex top;
  GhtState state;
} BranchPredState deriving(Bits, FShow);

typedef struct {
  Bit#(32) pc;
  Bit#(32) nextPc;
  Maybe#(Super#(RvInstr)) instrs;
  BranchPredState state;
} BranchPredTrain deriving(Bits, FShow);

interface BranchPred;
  method Action lookup(Bit#(32) pc);

  method ActionValue#(Tuple3#(Bit#(32), Bit#(SupLogSize), BranchPredState)) doPred;

  method Action trainHit(BranchPredTrain infos);
  method Action trainMis(BranchPredTrain infos);
endinterface

(* synthesize *)
module mkBranchPredictor(BranchPred);
  let btb <- mkBranchTargetBuffer;
  let ght <- mkGlobalHistoryTable;
  let ras <- mkReturnAddressStack;

  Reg#(Bit#(32)) numHit <- mkReg(0);
  Reg#(Bit#(32)) numMis <- mkReg(0);

  Ehr#(2, History) history <- mkEhr(0);

  Reg#(Bit#(32)) pcReg <- mkRegU;

  // Give `pc` the offset of an instruction in a lane
  Bit#(32) laneMask = ~((1 << (supLogSize+2)) - 1);

  method Action lookup(Bit#(32) pc);
    ght.lookup(pc & laneMask, history[1]);
    btb.lookup(pc & laneMask);
    pcReg <= pc;
  endmethod

  method ActionValue#(Tuple3#(Bit#(32), Bit#(SupLogSize), BranchPredState)) doPred;
    let targetPc = btb.predTarget;
    let kind = btb.predKind;

    let lane = pcReg & laneMask;
    Bit#(SupLogSize) offset = truncate(pcReg >> 2);
    Bit#(SupLogSize) branchOffset = btb.predOffset;

    // Their is a branch in the lane, but it is before the current instruction
    if (supLogSize != 0 && branchOffset < offset) begin
      targetPc = lane + fromInteger(4 * supSize);
      branchOffset = maxBound;
      kind = Linear;
    end

    let taken = ght.prediction || kind != Branch;

    let returnPc <- ras.pred(lane + zeroExtend(btb.predOffset) * 4, kind);
    if (returnPc matches tagged Valid .newPc) targetPc = newPc;

    if (targetPc != lane + fromInteger(4 * supSize) && kind == Branch)
      history[0] <= {truncate(history[0]), taken ? 1'b1 : 1'b0};

    return tuple3(
      taken ? targetPc : lane + fromInteger(4 * supSize),
      taken ? branchOffset : maxBound,
      BranchPredState {
        top: ras.topOfStack,
        state: ght.state,
        ghr: history[0],
        kind: kind
      }
    );
  endmethod

  method Action trainHit(BranchPredTrain infos);
    let kind = instrKindOpt(infos.instrs);

    let ghr = infos.state.ghr;
    let lane = infos.pc & laneMask;
    let baseNextPc = infos.nextPc & laneMask;
    Bit#(SupLogSize) offset = truncate(infos.pc >> 2);
    Bit#(SupLogSize) nextOffset = truncate(infos.nextPc >> 2);

    let no_jump = baseNextPc != lane || offset >= nextOffset;

    let taken =
      infos.nextPc != lane + fromInteger(4*supSize) &&
      (no_jump);

    if (kind == Branch && no_jump) ght.update(lane, ghr, taken, infos.state.state);

    numHit <= numHit + 1;
  endmethod

  method Action trainMis(BranchPredTrain infos);
    let kind = instrKindOpt(infos.instrs);

    let ghr = infos.state.ghr;
    let lane = infos.pc & laneMask;
    let baseNextPc = infos.nextPc & laneMask;
    Bit#(SupLogSize) offset = truncate(infos.pc >> 2);
    Bit#(SupLogSize) nextOffset = truncate(infos.nextPc >> 2);

    let taken =
      infos.nextPc != lane + fromInteger(4*supSize) &&
      (baseNextPc != lane || offset >= nextOffset);

    if (kind == Branch) ght.update(lane, ghr, taken, infos.state.state);

    History newGhr = {truncate(ghr), taken ? 1'b1 : 1'b0};

    if (infos.instrs matches tagged Valid .*) begin
      btb.update(lane, infos.nextPc, kind, offset);
      history[0] <= kind == Branch ? newGhr : ghr;
      ras.backtrack(infos.state.top, kind);
    end else begin
      ras.backtrack(infos.state.top, infos.state.kind);
    end

    numMis <= numMis + 1;
  endmethod
endmodule
