import Vector :: *;
import BuildVector :: *;
import Memory :: *;

import Utils :: *;
import Decode :: *;
import MicroOp :: *;
import Fifo :: *;
import Ehr :: *;
import CSR :: *;

import TLTypes :: *;
import Cache :: *;

import BranchPred :: *;

export FetchDecode(..);
export mkFetchDecode;

function MicroOp#(void) decode(Epoch epoch, Bit#(32) pc, Bit#(32) predPc, Bit#(32) bits);
  case (decodeInstr(bits)) matches
    tagged Valid .instr : return MicroOp{
      tag: tagOfInstr(instr),
      rd: destination(instr),
      rs1: register1(instr),
      rs2: register2(instr),
      exception: False,
      predPc: predPc,
      epoch: epoch,
      instr: instr,
      pipeline: ?,
      bstate: ?,
      cause: ?,
      train: ?,
      tval: ?,
      age: ?,
      val: ?,
      pc: pc
    };
    Invalid : return MicroOp{
      cause: ILLEGAL_INSTRUCTION,
      exception: True,
      predPc: predPc,
      epoch: epoch,
      tag: DIRECT,
      pipeline: ?,
      bstate: ?,
      train: ?,
      instr: ?,
      tval: pc,
      pc: pc,
      age: ?,
      val: ?,
      rs1: ?,
      rs2: ?,
      rd: ?
    };
  endcase
endfunction

interface FetchDecode;
  interface FifoO#(Super#(Maybe#(MicroOp#(void)))) decoded;

  interface TLMaster#(32, TMul#(SupSize,32),8,8,8) master;

  method Action redirect(Bit#(32) nextPc, Epoch nextEpoch);

  method Action trainMis(BranchPredTrain infos);
  method Action trainHit(BranchPredTrain infos);
endinterface

typedef struct {
  Super#(Bit#(32)) predPc;
  Super#(Bit#(32)) pc;
  Super#(Bool) needTrainHit;
  Super#(BranchPredState) state;
  Super#(Bool) mask;
  Epoch epoch;
} FetchToDecode deriving(Bits, FShow, Eq);

(* synthesize *)
module mkFetchDecode(FetchDecode);
  /*** responseQ must be at least bigger than fetchQ ***/
  Fifo#(4, Bit#(TMul#(SupSize, 32))) responseQ <- mkBypassFifo;

  let cache <- mkDefaultICache;
  let bpred <- mkBranchPred;

  rule setSource;
    cache.setSource(0);
  endrule

  rule enqResponse;
    let result <- cache.receive;
    responseQ.enq(result);
  endrule

  Fifo#(4, Maybe#(FetchToDecode)) fetchQ <- mkFifo;
  Fifo#(2, Super#(Maybe#(MicroOp#(void)))) decodedQ <- mkFifo;

  Ehr#(2, Epoch) epoch <- mkEhr(0);
  Ehr#(2, Bit#(32)) pc <- mkEhr(32'h80000000);

  rule start;
    bpred.start(pc[1], epoch[1]);
    cache.send(pc[1] & ~fromInteger(supSize*4-1), BCache::Load);
  endrule

  rule bpredStep if (epoch[0] == bpred.predEpoch);
    let pred <- bpred.pred();
    bpred.deq;

    pc[0] <= pred.pc;
    fetchQ.enq(Valid(FetchToDecode{
      pc: pred.current,
      state: pred.state,
      predPc: pred.next,
      needTrainHit: pred.needTrainHit,
      mask: pred.mask,
      epoch: epoch[0]
    }));

    //$display(
    //  "pc: 0x%h ", pc[0],
    //  "next: 0x%h ", pred.next[0],
    //  "mask: 0b%b", pack(pred.mask)
    //);
  endrule

  rule ignoreBpred if (epoch[0] != bpred.predEpoch);
    fetchQ.enq(Invalid);
    bpred.deq;
  endrule

  rule decodeStep if (fetchQ.first matches tagged Valid .fetch);
    let resp = responseQ.first;
    responseQ.deq;
    fetchQ.deq;

    Super#(Maybe#(MicroOp#(void))) ret = replicate(Invalid);

    for (Integer i=0; i < supSize; i = i + 1) if (fetch.mask[i]) begin
      let instr = decode(fetch.epoch, fetch.pc[i], fetch.predPc[i], resp[32*i+31:32*i]);
      instr.train = fetch.needTrainHit[i];
      instr.bstate = fetch.state[i];
      ret[i] = Valid(instr);
    end

    decodedQ.enq(ret);
  endrule

  rule ignoreDecode if (fetchQ.first matches Invalid);
    responseQ.deq;
    fetchQ.deq;
  endrule

  method Action redirect(Bit#(32) nextPc, Epoch nextEpoch);
    epoch[0] <= nextEpoch;
    pc[0] <= nextPc;
  endmethod

  interface decoded = toFifoO(decodedQ);
  interface master = cache.master;

  method trainHit = bpred.trainHit;
  method trainMis = bpred.trainMis;
endmodule
