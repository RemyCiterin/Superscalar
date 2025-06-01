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
      cause: ?,
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
endinterface

typedef struct {
  Super#(Bit#(32)) predPc;
  Super#(Bit#(32)) pc;
  SupMask mask;
  Epoch epoch;
} FetchToDecode deriving(Bits, FShow, Eq);

(* synthesize *)
module mkFetchDecode(FetchDecode);
  /*** responseQ must be at least bigger than fetchQ ***/
  Fifo#(4, Bit#(TMul#(SupSize, 32))) responseQ <- mkBypassFifo;

  let cache <- mkDefaultICache;

  rule setSource;
    cache.setSource(0);
  endrule

  rule enqResponse;
    let result <- cache.receive;
    responseQ.enq(result);
  endrule

  Fifo#(4, FetchToDecode) fetchQ <- mkFifo;
  Fifo#(2, Super#(Maybe#(MicroOp#(void)))) decodedQ <- mkFifo;

  Reg#(Age) age <- mkReg(0);
  Reg#(Epoch) epoch <- mkReg(0);
  Reg#(Bit#(32)) pc <- mkReg(32'h80000000);

  Bit#(32) basePc = pc & ~fromInteger(supSize * 4 - 1);

  rule requestRl;
    SupMask mask;
    Super#(Bit#(32)) predPc;
    Super#(Bit#(32)) currentPc;
    for (Integer i=0; i < supSize; i = i + 1) begin
      mask[i] = fromInteger(i) * 4 >= pc - basePc;
      currentPc[i] = basePc + fromInteger(i) * 4;
      predPc[i] = basePc + fromInteger(i+1) * 4;
    end

    pc <= basePc + 4 * fromInteger(supSize);

    fetchQ.enq(FetchToDecode{
      predPc: predPc,
      pc: currentPc,
      epoch: epoch,
      mask: mask
    });

    //$display("PC: 0x%h", basePc);

    cache.send(basePc, BCache::Load);
  endrule

  //rule blocked;
  //  if (fetchQ.canDeq && !responseQ.canDeq) $display("blocked");
  //endrule

  rule responseRl;
    let resp = responseQ.first;
    let fetch = fetchQ.first;
    responseQ.deq;
    fetchQ.deq;

    Super#(Maybe#(MicroOp#(void))) ret = replicate(Invalid);

    for (Integer i=0; i < supSize; i = i + 1) if (fetch.mask[i]) begin
      ret[i] = Valid(decode(fetch.epoch, fetch.pc[i], fetch.predPc[i], resp[32*i+31:32*i]));
    end

    if (fetch.epoch == epoch) begin
      decodedQ.enq(ret);
    end
  endrule

  method Action redirect(Bit#(32) nextPc, Epoch nextEpoch);
    epoch <= nextEpoch;
    pc <= nextPc;
  endmethod

  interface decoded = toFifoO(decodedQ);
  interface master = cache.master;
endmodule
