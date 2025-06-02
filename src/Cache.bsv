import BCache :: *;
import TLTypes :: *;
import Fifo :: *;

import Utils :: *;

`include "TL.defines"

interface Cache#(numeric type numWay, type tagT, type indexT, type offsetT, `TL_ARGS_DECL);
  method Action send(Bit#(addrW) addr, CacheOp#(dataW) op);
  method ActionValue#(Bit#(dataW)) receive;

  method Action setSource(Bit#(sourceW) source);

  interface TLMaster#(`TL_ARGS) master;
endinterface

module mkCache(Cache#(numWay, Bit#(tagW), Bit#(indexW), Bit#(offsetW), `TL_ARGS))
  provisos(
    Add#(tagW, _a, addrW),
    Add#(indexW, _b, _a),
    Add#(offsetW, _c, _b)
  );

  function Bit#(addrW) encode(Bit#(tagW) tag, Bit#(indexW) index, Bit#(offsetW) offset) =
    {tag, index, offset, 0};

  Integer startOffset = log2(valueof(dataW) / 8);
  Integer startIndex = startOffset + valueof(offsetW);
  Integer startTag = startIndex + valueof(indexW);

  function Tuple3#(Bit#(tagW),Bit#(indexW),Bit#(offsetW)) decode(Bit#(addrW) addr) =
    tuple3(addr[valueof(addrW)-1:startTag], addr[startTag-1:startIndex], addr[startIndex-1:startOffset]);

  Fifo#(2, ChannelA#(`TL_ARGS)) fifoA <- mkFifo;
  Fifo#(2, ChannelB#(`TL_ARGS)) fifoB <- mkFifo;
  Fifo#(2, ChannelC#(`TL_ARGS)) fifoC <- mkFifo;
  Fifo#(2, ChannelD#(`TL_ARGS)) fifoD <- mkFifo;
  Fifo#(2, ChannelE#(`TL_ARGS)) fifoE <- mkFifo;

  let slave = interface TLSlave;
    interface channelA = toFifoI(fifoA);
    interface channelB = toFifoO(fifoB);
    interface channelC = toFifoI(fifoC);
    interface channelD = toFifoO(fifoD);
    interface channelE = toFifoI(fifoE);
  endinterface;

  BCacheCore#(numWay, Bit#(tagW), Bit#(indexW), Bit#(offsetW), `TL_ARGS)
    cache <- mkBCacheCore(BCacheConf{encode: encode, decode: decode}, slave);

  Fifo#(1, Bit#(tagW)) tagQ <- mkPipelineFifo;
  Fifo#(1, CacheOp#(dataW)) opQ <- mkPipelineFifo;

  // Load response queue
  Fifo#(2, Bit#(dataW)) ldResponseQ <- mkFifo;

  // Store response queue
  Fifo#(2, Bit#(dataW)) stResponseQ <- mkFifo;

  // store conditional response queue
  Fifo#(2, Bit#(dataW)) scResponseQ <- mkFifo;

  // nop response queue
  Fifo#(2, Bit#(dataW)) noResponseQ <- mkFifo;

  // Kind of operation (load, store, store conditional)
  Fifo#(8, Bit#(2)) kindQ <- mkFifo;

  rule evict;
    cache.evict.deq;
    //$display("evict address: 0x%h", cache.evict.first);
  endrule

  rule matching;
    if (opQ.first matches tagged Store .*) stResponseQ.enq(0);
    if (opQ.first == Stop) noResponseQ.enq(0);
    cache.matching(tagQ.first, opQ.first);
    tagQ.deq;
    opQ.deq;
  endrule

  rule ldResponse;
    let r <- cache.response;
    ldResponseQ.enq(r);
  endrule

  rule scResponse;
    let r <- cache.success;
    scResponseQ.enq(r ? 1 : 0);
  endrule

  method Action send(Bit#(addrW) addr, CacheOp#(dataW) op);
    match {.tag, .index, .offset} = decode(addr);

    cache.lookup(index, offset);
    tagQ.enq(tag);
    opQ.enq(op);

    case (op) matches
      tagged StoreConditional .* : kindQ.enq(0);
      tagged Store .* : kindQ.enq(1);
      LoadReserve : kindQ.enq(2);
      Load : kindQ.enq(2);
      Stop : kindQ.enq(3);
    endcase
  endmethod

  method ActionValue#(Bit#(dataW)) receive;
    kindQ.deq;

    case (kindQ.first) matches
      0 : begin
        scResponseQ.deq;
        return scResponseQ.first;
      end
      1 : begin
        stResponseQ.deq;
        return stResponseQ.first;
      end
      2 : begin
        ldResponseQ.deq;
        return ldResponseQ.first;
      end
      3 : begin
        noResponseQ.deq;
        return noResponseQ.first;
      end
    endcase
  endmethod

  interface setSource = cache.setSource;

  interface TLMaster master;
    interface channelA = toFifoO(fifoA);
    interface channelB = toFifoI(fifoB);
    interface channelC = toFifoO(fifoC);
    interface channelD = toFifoI(fifoD);
    interface channelE = toFifoO(fifoE);
  endinterface
endmodule

(* synthesize *)
module mkDefaultDCache(Cache#(4, Bit#(20), Bit#(6), Bit#(4), 32, 32, 8, 8, 8));
  let cache <- mkCache;
  return cache;
endmodule

(* synthesize *)
module mkDefaultICache(Cache#(4, Bit#(20), Bit#(6), Bit#(TSub#(4,TLog#(SupSize))), 32, TMul#(SupSize,32), 8, 8, 8));
  let cache <- mkCache;
  return cache;
endmodule
