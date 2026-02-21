import MultiRegFile :: *;
import ForwardBRAM :: *;
import ConfigReg :: *;
import RegFile :: *;
import TLTypes :: *;
import TLUtils :: *;
import RvInstr :: *;
import Vector :: *;
import Fifo :: *;

export ICacheStats(..);
export ICache(..);
export mkICache;

`include "TL.defines"

typedef struct {
  Bit#(32) hit;
  Bit#(32) mis;
} ICacheStats deriving(Bits);

interface ICache#(numeric type sizeW, numeric type sourceW);
  (* always_ready *) method Bool canLookup;

  method Action lookup(Bit#(32) addr);

  (* always_ready *) method Bool valid;
  (* always_ready *) method Super#(Bit#(32)) response;
  method Action deq;

  interface TLMaster#(32, 32, sizeW, sourceW, 0) master;

  (* always_ready *) method ICacheStats stats;
endinterface

typedef 4 NumWays;
typedef Bit#(TLog#(NumWays)) Way;

typedef 20 TagW;
typedef Bit#(TagW) Tag;

typedef 7 IndexW;
typedef Bit#(IndexW) Index;

typedef TSub#(3, SupLogSize) OffsetW;
typedef Bit#(OffsetW) Offset;

typedef struct {
  Tag tag;
  Index index;
  Offset offset;
  Bit#(TAdd#(2, SupLogSize)) lsb;
} Physical deriving(Bits);


typedef enum {
  Init,
  Idle,
  Lookup,
  Refill,
  Redo
} State deriving(Bits, Eq);

module mkICache#(Bit#(sourceW) source) (ICache#(sizeW, sourceW));
  Fifo#(2, ChannelA#(32, 32, sizeW, sourceW, 0)) queueA <- mkFifo;
  Fifo#(2, ChannelD#(32, 32, sizeW, sourceW, 0)) queueD <- mkFifo;

  Reg#(Bit#(32)) numReq <- mkConfigReg(0);
  Reg#(Bit#(32)) numMis <- mkConfigReg(0);

  Vector#(NumWays, MultiRF#(1, 1, Index, Maybe#(Tag)))
    tagRams <- replicateM(mkForwardMultiRF(0, fromInteger(2 ** valueof(IndexW) - 1)));

  Vector#(NumWays, Reg#(Maybe#(Tag))) tags <- replicateM(mkRegU);

  Vector#(NumWays, Super#(FORWARD_BRAM_BE#(Bit#(TAdd#(IndexW,OffsetW)), Bit#(32), 4))) dataRams <-
    replicateM(replicateM(mkForwardBRAMCoreBE((2 ** valueof(IndexW)) * (2 ** valueof(OffsetW)))));

  // A cache line is 2**5 = 32 bytes (= 256 bits)
  Integer lineSize = valueof(OffsetW) + supLogSize + 2;
  Integer ways = valueOf(NumWays);

  ////////////////////////////////////////////////////////////////////////////
  // Random replacement policy
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Way) randomWay <- mkReg(0);

  ////////////////////////////////////////////////////////////////////////////
  // State of the current request
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Bit#(TAdd#(OffsetW,SupLogSize))) offset <- mkRegU;
  Reg#(State) state[2] <- mkCReg(2, Init);
  Reg#(Physical) physical <- mkRegU;
  Reg#(Tag) tag <- mkRegU;

  ////////////////////////////////////////////////////////////////////////////
  // Initialize cache
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Index) initIndex <- mkReg(0);

  rule init if (state[0] == Init);
    for (Integer i=0; i < ways; i = i + 1) tagRams[i].writePorts[0].request(initIndex, Invalid);
    if (initIndex + 1 == 0) state[0] <= Idle;
    initIndex <= initIndex + 1;
  endrule

  Bool hit = False;
  Way way = randomWay;

  for (Integer i=0; i < valueof(NumWays); i = i + 1) if (tags[i] == Valid(physical.tag)) begin
    way = fromInteger(i);
    hit = True;
  end

  ////////////////////////////////////////////////////////////////////////////
  // Cache line refill/evict sequence
  ////////////////////////////////////////////////////////////////////////////
  rule mis if (state[0] == Lookup && !hit && queueA.canEnq);
    offset <= 0;
    state[0] <= Refill;
    numMis <= numMis + 1;
    queueA.enq(ChannelA{
      address: pack(Physical{ tag: physical.tag, index: physical.index, offset: 0, lsb: 0 }),
      size: fromInteger(lineSize),
      opcode: GetFull,
      source: source,
      mask: -1,
      data: ?
    });
  endrule

  rule receive_beat if (state[0] == Refill);
    //$display("refill beat ", offset);
    //$display("%h %h %h", physical.tag, physical.index, physical.offset);
    queueD.deq;

    Bit#(SupLogSize) x = truncate(offset);
    Bit#(OffsetW) y = truncateLSB(offset);

    dataRams[way][x].write(-1, { physical.index, y }, queueD.first.data);

    offset <= offset + 1;

    if (offset + 1 == 0) begin
      tagRams[way].writePorts[0].request(physical.index, Valid(physical.tag));

      //$display("finish refill");
      state[0] <= Redo;
    end
  endrule

  rule redo if (state[0] == Redo);
    tags[way] <= Valid(physical.tag);

    for (Integer i=0; i < ways; i = i + 1) begin
      for (Integer j=0; j < supSize; j = j + 1) begin
        dataRams[i][j].read({ physical.index, physical.offset });
      end
    end

    state[0] <= Lookup;
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Respond in case of a cache hit or after evict/refill
  ////////////////////////////////////////////////////////////////////////////
  method Super#(Bit#(32)) response;
    Super#(Bit#(32)) data = newVector;
    for (Integer i=0; i < supSize; i = i + 1) begin
      data[i] = dataRams[way][i].response;
    end

    return data;
  endmethod

  method Bool valid = state[0] == Lookup && hit;

  method Action deq if (state[0] == Lookup && hit);
    state[0] <= Idle;
  endmethod

  ////////////////////////////////////////////////////////////////////////////
  // Enter a new request to the cache
  ////////////////////////////////////////////////////////////////////////////
  method Bool canLookup = state[1] == Idle;
  method Action lookup(Bit#(32) address) if (state[1] == Idle);
    Physical phys = unpack(address);
    randomWay <= randomWay + 1;
    numReq <= numReq + 1;

    for (Integer i=0; i < ways; i = i + 1) begin
      for (Integer j=0; j < supSize; j = j + 1) begin
        dataRams[i][j].read({ phys.index, phys.offset });
      end

      Maybe#(Tag) tag <- tagRams[i].readPorts[0].request(phys.index);
      tags[i] <= tag;
    end

    state[1] <= Lookup;
    physical <= phys;
  endmethod

  ////////////////////////////////////////////////////////////////////////////
  // Memory interface
  ////////////////////////////////////////////////////////////////////////////
  interface TLMaster master;
    interface channelA = toFifoO(queueA);
    interface channelB = nullFifoI;
    interface channelC = nullFifoO;
    interface channelD = toFifoI(queueD);
    interface channelE = nullFifoO;
  endinterface

  method stats = ICacheStats{
    hit: numReq - numMis,
    mis: numMis
  };
endmodule

