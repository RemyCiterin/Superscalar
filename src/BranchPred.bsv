import RegFileUtils :: *;
import BuildVector :: *;
import BlockRam :: *;
import RegFile :: *;
import Decode :: *;
import Vector :: *;
import Utils :: *;
import Fifo :: *;
import Ehr :: *;

typedef enum {
  Call, Ret, RetCall, Branch, Jump, Linear
} InstrKind deriving(Bits, FShow, Eq);

function InstrKind instrKind(Instr instr);
  return case (instr) matches
    tagged Btype .* : Branch;
    tagged Itype {instr: .itype, op: JALR} :
      case (tuple2(destination(instr).name, register1(instr).name)) matches
        Tuple2 {fst: 1, snd: 5} : Call;
        Tuple2 {fst: 5, snd: 1} : Call;
        Tuple2 {fst: 5, snd: .*} : Call;
        Tuple2 {fst: 1, snd: .*} : Call;
        Tuple2 {fst: .*, snd: 5} : Ret;
        Tuple2 {fst: .*, snd: 1} : Ret;
        default: Jump;
      endcase
    tagged Jtype .* : Jump;
    default: Linear;
  endcase;
endfunction

function InstrKind instrKindOpt(Maybe#(Instr) opt);
  return case (opt) matches
    tagged Valid .instr : instrKind(instr);
    Invalid : Linear;
  endcase;
endfunction

typedef 32 StackSize;
typedef 128 HistorySize;
typedef 12 TagSize;

typedef 1 GhtSize;

typedef Bit#(TagSize) Tag;
typedef Bit#(HistorySize) History;
typedef Bit#(TLog#(StackSize)) StackIndex;

typedef 1 NumBtbWay;
typedef Bit#(TLog#(NumBtbWay)) BtbWay;

// An entry of the branch target buffer
typedef struct {
  Bit#(32) pc;
  Bit#(32) next_pc;
  InstrKind kind;
} BtbEntry deriving(Bits, Eq);

interface BranchTargetBuffer;
  /* Stage 1: read request */
  method Action start(Bit#(32) basePc);

  /* Stage 2: get the result of the read request */
    method Tuple3#(Bit#(32), Bit#(32), InstrKind) response();
  method BtbWay getWay;
  method Action deq();

  /* Stage 3: update the state */
  method Action write(Bit#(32) pc, Bit#(32) next_pc, InstrKind kind, BtbWay way);
endinterface

(*synthesize *)
module mkBranchTargetBuffer(BranchTargetBuffer);
  BramVec#(Tag, NumBtbWay, Maybe#(BtbEntry)) entries <-
    mkBramInitVec(replicate(Invalid));

  Fifo#(1, Bit#(32)) pcQ <- mkPipelineFifo;

  Reg#(BtbWay) randomWay <- mkReg(0);

  function Bit#(32) hash(Bit#(32) pc) = pc >> log2(4 * supSize);

  rule updateRandomWay;
    randomWay <= randomWay == fromInteger(valueOf(NumBtbWay)-1) ? 0 : randomWay+1;
  endrule

  BtbWay way = randomWay;
  for (Integer i=0; i < valueOf(NumBtbWay); i = i + 1) begin
    if (entries.response[i] matches tagged Valid .entry)
      way = entry.pc == pcQ.first ? fromInteger(i) : way;
  end

  method Action start(Bit#(32) pc);
    action
      entries.read(truncate(hash(pc)));
      pcQ.enq(pc);
    endaction
  endmethod

  method Tuple3#(Bit#(32), Bit#(32), InstrKind) response();
    let pc = pcQ.first();

    return case (entries.response[way]) matches
      tagged Valid .entry : hash(entry.pc) == hash(pc) && entry.pc >= pc ?
        tuple3(entry.pc, entry.next_pc, entry.kind) :
        tuple3(entry.pc, pc+4, Linear);
      Invalid :
        tuple3(pc, pc+4, Linear);
    endcase;
  endmethod

  method BtbWay getWay = way;

  method Action deq();
    action
      entries.deq();
      pcQ.deq();
    endaction
  endmethod

  method Action write(Bit#(32) pc, Bit#(32) next_pc, InstrKind kind, BtbWay w);
    action
      Vector#(NumBtbWay,Maybe#(BtbEntry)) ret = ?;
      ret[w] = Valid(BtbEntry{
        next_pc: next_pc,
        kind: kind,
        pc: pc
      });

      if (pc + 4 != next_pc)
        entries.write(truncate(hash(pc)), ret, 1 << w);
    endaction
  endmethod
endmodule

interface ReturnAddressStack;
  method StackIndex topOfStack();
  method ActionValue#(Maybe#(Bit#(32))) pred(Bit#(32) pc, InstrKind kind);
  method Action backtrack(StackIndex head, InstrKind kind);
endinterface

(* synthesize *)
module mkReturnAddressStack(ReturnAddressStack);
  RegFile#(StackIndex, Maybe#(Bit#(32))) stack <- mkRegFileFullInit(Invalid);
  Reg#(StackIndex) head <- mkReg(0);

  method topOfStack = head;

  method ActionValue#(Maybe#(Bit#(32))) pred(Bit#(32) pc, InstrKind kind);
    head <= case (kind) matches
      Call : head + 1;
      Ret : head - 1;
      default : head;
    endcase;

    if (kind == Call)
      stack.upd(head, Valid(pc+4));

    return kind == Ret ? stack.sub(head-1) : Invalid;
  endmethod

  method Action backtrack(StackIndex index, InstrKind kind);
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
  // Basic prediciton using only the program counter
  Int#(3) base;

  // Accurate prediction using the program counter and the history
  Int#(3) pred;

  // Say if the tag was found in one of the tagged predictor
  Bool found;

  // Level of the tagged predictor that found the tag
  Bit#(TLog#(GhtSize)) level;
} GhtState deriving(Bits, FShow, Eq);

instance DefaultValue#(GhtState);
  function defaultValue = GhtState{
    found: False,
    level: 0,
    base: 0,
    pred: 0
  };
endinstance

interface GlobalHistoryTable;
  /* Stage 1: read request */
  method Action start(Bit#(32) pc, History h);

  /* Stage 2: get the read result */
  method Bool prediction;
  method GhtState state;
  method Action deq();

  method Action train(Bit#(32) pc, History h, Bool taken, GhtState st);
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
  Integer size = valueOf(GhtSize);

  Fifo#(1, Tag) tagQ <- mkPipelineFifo;

  Bram#(Tag, Int#(3)) baseRam <- mkBramInit(0);
  Vector#(GhtSize, Bram#(Tag, TaggedEntry)) predRam <-
    replicateM(mkBramInit(defaultValue));

  function Vector#(GhtSize, Tag) hashTagged(Bit#(32) pc, History h);
    Vector#(GhtSize,Tag) ret = ?;
    Tag hash = truncate(pc >> log2(supSize*4));

    for (Integer i=0; i < size; i = i + 1) begin
      Bit#(12) new_hash = h[12*(i+1)-1:12*i];
      hash = hash ^ zeroExtend(new_hash);
      ret[i] = hash;
    end

    return ret;
  endfunction

  function Tag hashBasic(Bit#(32) pc);
    return truncate(pc >> log2(supSize*4));
  endfunction

  Vector#(GhtSize, TaggedEntry) resp = ?;
  for (Integer i=0; i < size; i = i + 1) resp[i] = predRam[i].response;

  Int#(3) pred = baseRam.response();
  for (Integer i=0; i < size; i = i + 1)
    pred = resp[i].tag == Valid(tagQ.first) ? resp[i].value : pred;

  Bool found = False;
  for (Integer i=0; i < size; i = i + 1)
    found = found || resp[i].tag == Valid(tagQ.first);

  Bit#(TLog#(GhtSize)) level = 0;
  for (Integer i=0; i < size; i = i + 1)
    level = resp[i].tag == Valid(tagQ.first) ? fromInteger(i) : level;

  method Action start(Bit#(32) pc, History h);
    action
      for (Integer i=0; i < size; i = i + 1)
        predRam[i].read(hashTagged(pc, h)[i]);
      baseRam.read(hashBasic(pc));
      tagQ.enq(hashBasic(pc));
    endaction
  endmethod

  method GhtState state;
    return GhtState{
      pred: pred,
      base: baseRam.response(),
      found: found,
      level: level
    };
  endmethod

  method Bool prediction();
    return pred >= 0;
  endmethod

  method Action deq();
    action
      for (Integer i=0; i < size; i = i + 1)
        predRam[i].deq();
      baseRam.deq();
      tagQ.deq();
    endaction
  endmethod

  method Action train(Bit#(32) pc, History h, Bool taken, GhtState st);
    action
      let base = satPlus(Sat_Bound, st.base, taken ? 1 : -1);
      let pred = satPlus(Sat_Bound, st.pred, taken ? 1 : -1);
      let tag = Valid(hashBasic(pc));

      baseRam.write(hashBasic(pc), base);

      let alloc = !st.found || st.level < fromInteger(size-1);
      let alloc_entry = TaggedEntry{tag: tag, value: taken ? 0 : -1};
      let alloc_level = st.found && size > 1 ? st.level + 1 : 0;

      if (alloc)
        predRam[alloc_level].write(hashTagged(pc,h)[alloc_level], alloc_entry);

      let train_entry = TaggedEntry{tag: tag, value: pred};

      if (st.found)
        predRam[st.level].write(hashTagged(pc,h)[st.level],train_entry);
    endaction
  endmethod
endmodule

// State used by the branch predictor to backtrack in case of misprediction
typedef struct {
  // Glock branch history register
  History ghr;

  // Predicted instruction kind
  InstrKind kind;

  // Top of the return address stack
  StackIndex top;

  // State saved from the GlobalHistoryTable
  GhtState state;

  // Way of the branch target buffer
  BtbWay way;
} BranchPredState deriving(Bits, FShow, Eq);

// Informations given to the branch predictor to update itself
typedef struct {
  // Backtracking state
  BranchPredState state;

  // Current program counter
  Bit#(32) pc;

  // Next program counter
  Bit#(32) next_pc;

  // Instruction if the backtracking is due to a branch misprediction
  Maybe#(Instr) instr;
} BranchPredTrain deriving(Bits, FShow, Eq);

typedef struct {
  // Program counter of the next instruction
  Bit#(32) pc;

  // Program counter of the next instruction
  Super#(Bit#(32)) next;

  // Program counter of the current instruction
  Super#(Bit#(32)) current;

  // Valid instructions
  Super#(Bool) mask;

  // Learning state of each instruction
  Super#(BranchPredState) state;

  // True if the instruction need to call trainHit at commit
  Super#(Bool) needTrainHit;
} BranchPredOutput deriving(Bits, FShow, Eq);

interface BranchPred;
  /* Stage 1: read request */
  method Action start(Bit#(32) pc, Epoch epoch);

  /* Stage 2: do the prediction */
  // deq and pred are in two different methods such that if the epoch is not
  // up-to-date we may ignore the prediction and just deq from the predictor
  method ActionValue#(BranchPredOutput) pred;
  // return the Epoch and Program counter we used to make the prediciton
  // (not the predicted Pc, the initial Pc)
  method Epoch predEpoch();
  method Bit#(32) predPc();
  method Action deq();

  method Action trainMis(BranchPredTrain infos);
  method Action trainHit(BranchPredTrain infos);
endinterface

(* synthesize *)
module mkBranchPred(BranchPred);
  let btb <- mkBranchTargetBuffer;
  let ght <- mkGlobalHistoryTable;
  let ras <- mkReturnAddressStack;
  Ehr#(2, History) history <- mkEhr(0);

  Fifo#(1, Epoch) epochQ <- mkPipelineFifo;
  Fifo#(1, Bit#(32)) pcQ <- mkPipelineFifo;

  method Action start(Bit#(32) pc, Epoch epoch);
    action
      ght.start(pc, history[1]);
      epochQ.enq(epoch);
      btb.start(pc);
      pcQ.enq(pc);
    endaction
  endmethod

  method ActionValue#(BranchPredOutput) pred();
    let pc = pcQ.first();

    match {.branch_pc, .branch_target, .kind} = btb.response();
    let taken = case (kind) matches
      Branch : ght.prediction;
      Linear : False;
      default : True;
    endcase;

    let ret_pc <- ras.pred(branch_pc, kind);
    if (ret_pc matches tagged Valid .new_pc) branch_target = new_pc;

    if (branch_target != branch_pc + 4 && kind == Branch)
      history[0] <= {truncate(history[0]), taken ? 1'b1 : 1'b0};

    Bit#(32) basePc = pc & ~fromInteger(supSize * 4 - 1);

    BranchPredOutput ret = BranchPredOutput{
      pc: taken ?
        branch_target :
        basePc + fromInteger(supSize*4),
      next: replicate(?),
      mask: replicate(?),
      current: replicate(?),
      needTrainHit: replicate(?),
      state: replicate(BranchPredState{
        top: ras.topOfStack,
        way: btb.getWay,
        ghr: history[0],
        state: ?,
        kind: ?
      })
    };

    for (Integer i=0; i < supSize; i = i + 1) begin
      let current = basePc + fromInteger(4 * i);
      ret.next[i] = current == branch_pc && taken ? branch_target : current + 4;
      ret.mask[i] = current >= pc && (!taken || branch_pc >= current);
      ret.needTrainHit[i] = current == branch_pc && kind != Linear;
      ret.current[i] = current;

      ret.state[i].state = current == branch_pc && kind != Linear ? ght.state : defaultValue;
      ret.state[i].kind = current == branch_pc && kind != Linear ? kind : Linear;
    end

    //$display("\nBlock 0x%h:", basePc);
    //$display("\tnext block: 0x%h", ret.pc);
    //for (Integer i=0; i < supSize; i = i + 1) if (ret.mask[i]) begin
    //  $display("\tIndex %d", i);
    //  $display("\t\tpc: 0x%h", ret.current[i]);
    //  $display("\t\tpred: 0x%h", ret.next[i]);
    //  $display("\t\ttrain at hit: ", ret.needTrainHit[i] ? "true" : "false");
    //  $display("\t\tght state: ", fshow(ret.state[i].state));
    //  $display("\t\tinstr kind: ", fshow(ret.state[i].kind));
    //end

    return ret;
  endmethod

  method predEpoch = epochQ.first;
  method predPc = pcQ.first;

  method Action deq();
    action
      epochQ.deq();
      btb.deq();
      ght.deq();
      pcQ.deq();
    endaction
  endmethod

  method Action trainHit(BranchPredTrain infos);
    action
      let ghr = infos.state.ghr;
      let kind = instrKindOpt(infos.instr);
      let taken = infos.next_pc != infos.pc + 4;

      if (kind == Branch)
        ght.train(infos.pc, ghr, taken, infos.state.state);
    endaction
  endmethod

  method Action trainMis(BranchPredTrain infos);
    action
      let kind = instrKindOpt(infos.instr);

      let ghr = infos.state.ghr;
      let taken = infos.next_pc != infos.pc + 4;

      if (kind == Branch)
        ght.train(infos.pc, ghr, taken, infos.state.state);

      History newGhr = {truncate(ghr), taken ? 1'b1 : 1'b0};

      if (infos.instr matches tagged Valid .instr) begin
        history[0] <= kind == Branch ? newGhr : ghr;
        btb.write(infos.pc, infos.next_pc, kind, infos.state.way);
        ras.backtrack(infos.state.top, kind);
      end else begin
        ras.backtrack(infos.state.top, infos.state.kind);
        history[0] <= ghr;
      end
    endaction
  endmethod
endmodule
