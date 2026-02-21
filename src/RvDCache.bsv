import MultiRegFile :: *;
import ForwardBRAM :: *;
import ConfigReg :: *;
import RegFile :: *;
import TLTypes :: *;
import TLUtils :: *;
import Vector :: *;
import Fifo :: *;

export DCacheOpcode(..);
export DCacheStats(..);
export DCacheAmo(..);
export DCacheReq(..);
export DCache(..);
export mkDCache;

`include "TL.defines"

typedef struct {
  Bit#(32) hit;
  Bit#(32) mis;
} DCacheStats deriving(Bits);

typedef enum {
  Ld,
  St
} DCacheOpcode deriving(Bits, Eq, FShow);

typedef enum {
  Min,
  Max,
  Minu,
  Maxu,
  Add,
  Swap,
  Xor,
  Or,
  And
} DCacheAmo deriving(Bits, Eq, FShow);

function Bit#(32) computeAmo(DCacheAmo amo, Bit#(32) lhs, Bit#(32) rhs);
  return case (amo) matches
    Min : Int#(32)'(unpack(lhs)) < Int#(32)'(unpack(rhs)) ? lhs : rhs;
    Max : Int#(32)'(unpack(lhs)) < Int#(32)'(unpack(rhs)) ? lhs : rhs;
    Minu : lhs < rhs ? lhs : rhs;
    Maxu : lhs < rhs ? lhs : rhs;
    Add : lhs + rhs;
    Xor : lhs ^ rhs;
    And : lhs & rhs;
    Or : lhs | rhs;
    Swap : rhs;
  endcase;
endfunction

typedef struct {
  // Data in case of a store/sc/amo
  Bit#(32) data;

  // Write-Enable
  Bit#(4) mask;

  // Amo parameter
  DCacheAmo amo;

  // Physical address of the opreation
  Bit#(32) address;

  // Opcode of the operation
  DCacheOpcode opcode;
} DCacheReq deriving(Bits, Eq);

interface DCache#(numeric type sizeW, numeric type sourceW);
  (* always_ready *) method Bool canLookup;

  method Action lookup(DCacheReq req);

  (* always_ready *) method Bool valid;
  (* always_ready *) method Bit#(32) response;
  method Action deq(Bool commit);

  interface TLMaster#(32, 32, sizeW, sourceW, 0) master;

  (* always_ready *) method DCacheStats stats;
endinterface

typedef 4 NumWays;
typedef Bit#(TLog#(NumWays)) Way;

typedef 20 TagW;
typedef Bit#(TagW) Tag;

typedef 7 IndexW;
typedef Bit#(IndexW) Index;

typedef 3 OffsetW;
typedef Bit#(OffsetW) Offset;

typedef struct {
  Tag tag;
  Index index;
  Offset offset;
  Bit#(2) lsb;
} Physical deriving(Bits);


typedef enum {
  Init,
  Idle,
  Lookup,
  Evict,
  EvictWait,
  Refill,
  Redo
} State deriving(Bits, Eq);

module mkDCache#(Bit#(sourceW) source) (DCache#(sizeW, sourceW));
  Fifo#(2, ChannelA#(32, 32, sizeW, sourceW, 0)) queueA <- mkFifo;
  Fifo#(2, ChannelD#(32, 32, sizeW, sourceW, 0)) queueD <- mkFifo;

  Reg#(Bit#(32)) numHit <- mkConfigReg(0);
  Reg#(Bit#(32)) numMis <- mkConfigReg(0);

  Vector#(NumWays, MultiRF#(1, 1, Index, Maybe#(Tag)))
    tagRams <- replicateM(mkForwardMultiRF(0, fromInteger(2 ** valueof(IndexW) - 1)));

  Vector#(NumWays, RegFile#(Index, Bool)) dirtyRams <- replicateM(mkRegFileFull);

  Vector#(NumWays, FORWARD_BRAM_BE#(Bit#(TAdd#(IndexW,OffsetW)), Bit#(32), 4)) dataRams <-
    replicateM(mkForwardBRAMCoreBE((2 ** valueof(IndexW)) * (2 ** valueof(OffsetW))));

  // A cache line is 2**5 = 32 bytes (= 256 bits)
  Integer lineSize = valueof(OffsetW) + 2;
  Integer ways = valueOf(NumWays);

  ////////////////////////////////////////////////////////////////////////////
  // Random replacement policy
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Way) randomWay <- mkReg(0);

  ////////////////////////////////////////////////////////////////////////////
  // State of the current request
  ////////////////////////////////////////////////////////////////////////////
  Reg#(State) state[2] <- mkCReg(2, Init);
  Reg#(DCacheReq) request <- mkRegU;
  Reg#(Physical) physical <- mkRegU;
  Reg#(Offset) offset <- mkRegU;
  Reg#(Tag) tag <- mkRegU;

  ////////////////////////////////////////////////////////////////////////////
  // Initialize cache
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Index) initIndex <- mkReg(0);

  rule init if (state[0] == Init);
    for (Integer i=0; i < ways; i = i + 1) tagRams[i].writePorts[0].request(initIndex, Invalid);
    for (Integer i=0; i < ways; i = i + 1) dirtyRams[i].upd(initIndex, False);
    if (initIndex + 1 == 0) state[0] <= Idle;
    initIndex <= initIndex + 1;
  endrule

  Reg#(Maybe#(Tag)) currentTag <- mkRegU;
  Reg#(Bool) hit <- mkRegU;
  Reg#(Way) way <- mkRegU;

  ////////////////////////////////////////////////////////////////////////////
  // Cache line refill/evict sequence
  ////////////////////////////////////////////////////////////////////////////
  rule mis if (state[0] == Lookup && !hit && queueA.canEnq);
    if (currentTag matches tagged Valid .t &&& dirtyRams[way].sub(physical.index)) begin
      //$display("evict");
      dataRams[way].read({ physical.index, 0 });
      state[0] <= Evict;
      offset <= 0;
      tag <= t;
    end else begin
      //$display("direct refill");
      offset <= 0;
      state[0] <= Refill;
      queueA.enq(ChannelA{
        address: pack(Physical{ tag: physical.tag, index: physical.index, offset: 0, lsb: 0 }),
        size: fromInteger(lineSize),
        opcode: GetFull,
        source: source,
        mask: -1,
        data: ?
      });
    end

    dirtyRams[way].upd(physical.index, False);
  endrule

  rule send_beat if (state[0] == Evict);
    //$display("evict beat ", offset);
    dataRams[way].read({ physical.index, offset + 1 });
    offset <= offset + 1;

    queueA.enq(ChannelA{
      address: pack(Physical{ tag: tag, index: physical.index, offset: 0, lsb: 0 }),
      data: dataRams[way].response,
      size: fromInteger(lineSize),
      opcode: PutData,
      source: source,
      mask: -1
    });

    if (offset + 1 == 0) begin
      state[0] <= EvictWait;
    end
  endrule

  rule receive_evict_resp if (state[0] == EvictWait);
    queueD.deq;
    //$display("refill after evict");

    offset <= 0;
    state[0] <= Refill;
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

    dataRams[way].write(-1, { physical.index, offset }, queueD.first.data);

    offset <= offset + 1;

    if (offset + 1 == 0) begin
      tagRams[way].writePorts[0].request(physical.index, Valid(physical.tag));

      hit <= True;
      for (Integer i=0; i < ways; i = i + 1) begin
        dataRams[i].read({ physical.index, physical.offset });
      end

      //$display("finish refill");
      state[0] <= Lookup;
    end
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Respond in case of a cache hit or after evict/refill
  ////////////////////////////////////////////////////////////////////////////
  method Bit#(32) response = dataRams[way].response;

  method Bool valid = state[0] == Lookup && hit;

  method Action deq(Bool commit) if (state[0] == Lookup && hit);
    //$display("commit");
    state[0] <= Idle;

    if (commit && request.opcode == St) begin
      dataRams[way].write(request.mask, { physical.index, physical.offset }, request.data);
      dirtyRams[way].upd(physical.index, True);
    end
  endmethod

  ////////////////////////////////////////////////////////////////////////////
  // Enter a new request to the cache
  ////////////////////////////////////////////////////////////////////////////
  method Bool canLookup = state[1] == Idle;
  method Action lookup(DCacheReq req) if (state[1] == Idle);
    Physical phys = unpack(req.address);
    randomWay <= randomWay + 1;

    Vector#(NumWays, Maybe#(Tag)) tags = newVector;
    Bool found = False;
    Way w = randomWay;

    for (Integer i=0; i < ways; i = i + 1) begin
      dataRams[i].read({ phys.index, phys.offset });

      Maybe#(Tag) tag <- tagRams[i].readPorts[0].request(phys.index);
      tags[i] = tag;

      if (tag == Valid(phys.tag)) begin
        w = fromInteger(i);
        found = True;
      end
    end

    if (found) numHit <= numHit + 1;
    else numMis <= numMis + 1;

    way <= w;
    hit <= found;
    currentTag <= tags[w];
    state[1] <= Lookup;
    physical <= phys;
    request <= req;
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

  method stats = DCacheStats{
    hit: numHit,
    mis: numMis
  };
endmodule

