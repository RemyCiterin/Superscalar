import BuildVector :: *;
import MicroOp :: *;
import Vector :: *;
import Memory :: *;
import Decode :: *;
import Utils :: *;
import Fifo :: *;
import Ehr :: *;

import CSR :: *;
import ALU :: *;
import ControlFlow :: *;
import Vector :: *;

import Cache :: *;
import TLTypes :: *;
import BCache :: *;

import Pipeline :: *;

interface LoadStoreUnit;
  interface FifoI#(ExecInput) enter;
  interface FifoO#(ExecOutput) issue;
  interface FifoI#(Bool) commit;

  interface TLMaster#(32,32,8,8,8) master;
endinterface

typedef struct {
  Bit#(32) addr;
  Bit#(32) data;
  Bit#(4) mask;
} Store deriving(Bits, FShow, Eq);

typedef enum {
  // Aligned store
  Store,

  // Load
  Load,

  // Unaligned store
  StoreFault
} LsuTag deriving(Bits, FShow, Eq);

(* synthesize *)
module mkLoadStoreUnit(LoadStoreUnit);
  Fifo#(2, ExecInput) inQ <- mkFifo;
  Fifo#(16, Bool) kindQ <- mkFifo;
  Fifo#(2, ExecOutput) outStoreQ <- mkFifo;
  Fifo#(2, ExecOutput) outLoadQ <- mkFifo;
  Fifo#(1, Bool) commitQ <- mkBypassFifo;
  Fifo#(16, LsuTag) tagQ <- mkFifo;

  let cache <- mkDefaultDCache;

  rule setSource;
    cache.setSource(1);
  endrule

  // Store buffer (commited stores)
  Fifo#(6, void) storeBuffer <- mkFifo;

  // Store queue (speculative stores)
  Fifo#(6, Store) storeQueue <- mkFifo;

  Ehr#(3, Bit#(8)) stores <- mkEhr(0);

  // Load queue
  Fifo#(6, ExecInput) loadQueue <- mkFifo;

  Fifo#(8, Bool) opQ <- mkFifo;

  (* preempts = "commitStore, startLoad" *)
  rule startLoad if (stores[0] == 0 && isLoad(inQ.first.instr));
    let addr = inQ.first.val[0] + immediateBits(inQ.first.instr);
    cache.send(addr & ~32'b11, BCache::Load);
    loadQueue.enq(inQ.first);
    kindQ.enq(True);
    tagQ.enq(Load);
    opQ.enq(True);
    inQ.deq;
  endrule

  rule finishLoad if (opQ.first);
    let beat <- cache.receive;
    let req = loadQueue.first;
    loadQueue.deq;
    opQ.deq;

    let addr = req.val[0] + immediateBits(req.instr);
    ExecOutput resp = mapMicroOp(constFn(defaultValue), req);
    resp.val.nextPc = req.pc + 4;

    beat = beat >> {addr[1:0], 3'b000};

    match {.size, .data} = case (req.instr) matches
      tagged Itype {op: tagged Load LHU} : tuple2(2'b01, zeroExtend(beat[15:0]));
      tagged Itype {op: tagged Load LBU} : tuple2(2'b00, zeroExtend(beat[7:0]));
      tagged Itype {op: tagged Load LH} : tuple2(2'b01, signExtend(beat[15:0]));
      tagged Itype {op: tagged Load LB} : tuple2(2'b00, signExtend(beat[7:0]));
      tagged Itype {op: tagged Load LW} : tuple2(2'b11, beat);
    endcase;

    // Unaligned access
    if ((addr[1:0] & size) != 0) begin
      resp.cause = LOAD_ADDRESS_MISALIGNED;
      resp.exception = True;
      resp.tval = addr;
    end else begin
      resp.val.rdVal = data;
    end

    outLoadQ.enq(resp);
  endrule

  rule startStore if (isStore(inQ.first.instr));
    let req = inQ.first;
    let addr = req.val[0] + immediateBits(req.instr);
    ExecOutput resp = mapMicroOp(constFn(defaultValue), req);
    resp.val.nextPc = req.pc + 4;

    let size = case (req.instr) matches
      tagged Stype {op: SW} : 2'b11;
      tagged Stype {op: SH} : 2'b01;
      tagged Stype {op: SB} : 2'b00;
    endcase;

    let data = req.val[1] << {addr[1:0], 3'b000};
    let mask = case (req.instr) matches
      tagged Stype {op: SW} : 4'b1111;
      tagged Stype {op: SH} : 4'b0011;
      tagged Stype {op: SB} : 4'b0001;
    endcase << addr[1:0];

    if ((size & addr[1:0]) != 0) begin
      resp.cause = STORE_AMO_ADDRESS_MISALIGNED;
      resp.exception = True;
      tagQ.enq(StoreFault);
      resp.tval = addr;
    end else begin
      tagQ.enq(Store);
      stores[2] <= stores[2] + 1;
      storeQueue.enq(Store{
        addr: addr & ~32'b11,
        mask: mask,
        data: data
      });
    end

    kindQ.enq(False);
    outStoreQ.enq(resp);
    inQ.deq;
  endrule

  rule commitStore if (tagQ.first matches Store);
    if (commitQ.first && storeQueue.first.addr != 32'h10000000) begin
      storeQueue.deq;

      opQ.enq(False);
      storeBuffer.enq(?);

      cache.send(storeQueue.first.addr, tagged BCache::Store{
        data: storeQueue.first.data,
        mask: storeQueue.first.mask
      });
    end else begin
      if (commitQ.first && storeQueue.first.addr == 32'h10000000) begin
        if (storeQueue.first.mask[0] == 1) begin
          if (storeQueue.first.data[7:0] == 0) $finish;
          else $write("%c", storeQueue.first.data[7:0]);
        end
      end

      stores[1] <= stores[1] - 1;
      storeQueue.deq;
    end

    commitQ.deq;
    tagQ.deq;
  endrule

  rule commitOther if (tagQ.first != Store);
    commitQ.deq;
    tagQ.deq;
  endrule

  rule storeResponse if (!opQ.first);
    let _ <- cache.receive;
    stores[0] <= stores[0] - 1;
    storeBuffer.deq;
    opQ.deq;
  endrule

  interface commit = toFifoI(commitQ);

  interface FifoO issue;
    method first = kindQ.first ? outLoadQ.first : outStoreQ.first;
    method canDeq = kindQ.canDeq ? (kindQ.first ? outLoadQ.canDeq : outStoreQ.canDeq) : False;
    method Action deq;
      kindQ.deq;

      if (kindQ.first) outLoadQ.deq;
      else outStoreQ.deq;
    endmethod
  endinterface

  interface enter = toFifoI(inQ);

  interface master = cache.master;
endmodule
