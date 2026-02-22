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

interface DCache#(numeric type sizeW, numeric type sourceW, numeric type sinkW);
  (* always_ready *) method Bool canLookup;

  method Action lookup(DCacheReq req);

  (* always_ready *) method Bool valid;
  (* always_ready *) method Bit#(32) response;
  method Action deq(Bool commit);

  interface TLMaster#(32, 32, sizeW, sourceW, sinkW) master;

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
  LookupProbeIdle,
  LookupProbe,
  MatchingProbe,
  EvictProbe,
  Evict,
  EvictWait,
  Refill,
  Redo
} State deriving(Bits, Eq);


module mkDCache#(Bit#(sourceW) source) (DCache#(sizeW, sourceW, sinkW));
  Fifo#(2, ChannelA#(32, 32, sizeW, sourceW, sinkW)) queueA <- mkFifo;
  Fifo#(2, ChannelB#(32, 32, sizeW, sourceW, sinkW)) queueB <- mkFifo;
  Fifo#(2, ChannelC#(32, 32, sizeW, sourceW, sinkW)) queueC <- mkFifo;
  Fifo#(2, ChannelD#(32, 32, sizeW, sourceW, sinkW)) queueD <- mkFifo;
  Fifo#(2, ChannelE#(32, 32, sizeW, sourceW, sinkW)) queueE <- mkFifo;

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
  // State of the cache
  ////////////////////////////////////////////////////////////////////////////
  Reg#(State) state[2] <- mkCReg(2, Init);

  ////////////////////////////////////////////////////////////////////////////
  // Status of the current refill/evict request
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Offset) refill_offset <- mkRegU;
  Reg#(Offset) evict_offset <- mkRegU;
  Reg#(Tag) evict_tag <- mkRegU;

  ////////////////////////////////////////////////////////////////////////////
  // State of the current cpu request
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Maybe#(Tag)) cpu_tag <- mkRegU;
  Reg#(DCacheReq) cpu_req <- mkRegU;
  Reg#(Physical) cpu_phys <- mkRegU;
  Reg#(Bool) cpu_hit <- mkRegU;
  Reg#(Way) cpu_way <- mkRegU;

  ////////////////////////////////////////////////////////////////////////////
  // State of the current probe request
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Physical) probe_phys <- mkRegU;
  Reg#(Offset) probe_offset <- mkRegU;
  Reg#(State) nextState <- mkRegU;
  Reg#(Bool) probe_hit <- mkRegU;
  Reg#(Way) probe_way <- mkRegU;

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

  ////////////////////////////////////////////////////////////////////////////
  // Probe seauence (we receive an invalidation request from the cache controller)
  ////////////////////////////////////////////////////////////////////////////
  rule probe_lookup if (state[1] == Idle || state[1] == Refill);
    Physical phys = unpack(queueB.first.address);

    Vector#(NumWays, Maybe#(Tag)) tags = newVector;
    Bool found = False;
    Way w = randomWay;

    for (Integer i=0; i < ways; i = i + 1) begin
      Maybe#(Tag) tag <- tagRams[i].readPorts[0].request(phys.index);
      tags[i] = tag;
    end

    state[1] <= MatchingProbe;
    nextState <= state[1];
    probe_phys <= phys;
    probe_hit <= found;
    probe_offset <= 0;
    probe_way <= w;

    queueB.deq;
  endrule

  rule probe_match if (state[0] == MatchingProbe);
    if (probe_hit) begin
      tagRams[probe_way].writePorts[0].request(probe_phys.index, Invalid);
      dirtyRams[probe_way].upd(probe_phys.index, False);
      dataRams[probe_way].read({probe_phys.index, 0});
      state[0] <= EvictProbe;
      probe_offset <= 0;
    end else begin
      queueC.enq(ChannelC{
        size: fromInteger(lineSize),
        address: pack(probe_phys),
        opcode: ProbeAck(NtoN),
        source: source,
        data: ?
      });

      state[0] <= nextState;
    end
  endrule

  rule probe_evict if (state[0] == EvictProbe);
    dataRams[probe_way].read({probe_phys.index, probe_offset+1});
    if (probe_offset+1 == 0) state[0] <= nextState;
    probe_offset <= probe_offset+1;

    queueC.enq(ChannelC{
      data: dataRams[probe_way].response,
      size: fromInteger(lineSize),
      opcode: ProbeAckData(TtoN),
      address: pack(probe_phys),
      source: source
    });
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Cache line refill/evict sequence
  ////////////////////////////////////////////////////////////////////////////
  rule mis if (state[0] == Lookup && !cpu_hit && queueA.canEnq);
    if (cpu_tag matches tagged Valid .t &&& dirtyRams[cpu_way].sub(cpu_phys.index)) begin
      //$display("evict");
      dataRams[cpu_way].read({ cpu_phys.index, 0 });
      evict_offset <= 0;
      state[0] <= Evict;
      evict_tag <= t;
    end else begin
      //$display("direct refill");
      refill_offset <= 0;
      state[0] <= Refill;
      queueA.enq(ChannelA{
        address: pack(Physical{ tag: cpu_phys.tag, index: cpu_phys.index, offset: 0, lsb: 0 }),
        size: fromInteger(lineSize),
        opcode: AcquireBlock(NtoT),
        source: source,
        mask: -1,
        data: ?
      });
    end

    dirtyRams[cpu_way].upd(cpu_phys.index, False);
  endrule

  rule send_beat if (state[0] == Evict);
    //$display("evict beat ", evict_offset);
    dataRams[cpu_way].read({ cpu_phys.index, evict_offset + 1 });
    evict_offset <= evict_offset + 1;

    queueC.enq(ChannelC{
      address: pack(Physical{ tag: evict_tag, index: cpu_phys.index, offset: 0, lsb: 0 }),
      data: dataRams[cpu_way].response,
      size: fromInteger(lineSize),
      opcode: ReleaseData(TtoN),
      source: source
    });

    if (evict_offset + 1 == 0) begin
      state[0] <= EvictWait;
    end
  endrule

  rule receive_evict_resp if (state[0] == EvictWait);
    queueD.deq;
    //$display("refill after evict");

    refill_offset <= 0;
    state[0] <= Refill;
    queueA.enq(ChannelA{
      address: pack(Physical{ tag: cpu_phys.tag, index: cpu_phys.index, offset: 0, lsb: 0 }),
      size: fromInteger(lineSize),
      opcode: AcquireBlock(NtoT),
      source: source,
      mask: -1,
      data: ?
    });
  endrule

  rule receive_beat if (state[0] == Refill);
    //$display("refill beat ", refill_offset);
    //$display("%h %h %h", cpu_phys.tag, cpu_phys.index, cpu_phys.offset);
    queueD.deq;

    dataRams[cpu_way].write(-1, { cpu_phys.index, refill_offset }, queueD.first.data);

    refill_offset <= refill_offset + 1;

    if (refill_offset + 1 == 0) begin
      tagRams[cpu_way].writePorts[0].request(cpu_phys.index, Valid(cpu_phys.tag));

      queueE.enq(ChannelE{
        sink: queueD.first.sink,
        opcode: GrantAck
      });

      cpu_hit <= True;
      for (Integer i=0; i < ways; i = i + 1) begin
        dataRams[i].read({ cpu_phys.index, cpu_phys.offset });
      end

      //$display("finish refill");
      state[0] <= Lookup;
    end
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Respond in case of a cache hit or after evict/refill
  ////////////////////////////////////////////////////////////////////////////
  method Bit#(32) response = dataRams[cpu_way].response;

  method Bool valid = state[0] == Lookup && cpu_hit;

  method Action deq(Bool commit) if (state[0] == Lookup && cpu_hit);
    //$display("commit");
    state[0] <= Idle;

    if (commit && cpu_req.opcode == St) begin
      dataRams[cpu_way].write(cpu_req.mask, { cpu_phys.index, cpu_phys.offset }, cpu_req.data);
      dirtyRams[cpu_way].upd(cpu_phys.index, True);
    end
  endmethod

  ////////////////////////////////////////////////////////////////////////////
  // Enter a new request to the cache
  ////////////////////////////////////////////////////////////////////////////
  method Bool canLookup = state[1] == Idle;
  method Action lookup(DCacheReq req) if (state[1] == Idle && !queueB.canDeq);
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

    cpu_way <= w;
    cpu_hit <= found;
    cpu_tag <= tags[w];
    state[1] <= Lookup;
    cpu_phys <= phys;
    cpu_req <= req;
  endmethod

  ////////////////////////////////////////////////////////////////////////////
  // Memory interface
  ////////////////////////////////////////////////////////////////////////////
  interface TLMaster master;
    interface channelA = toFifoO(queueA);
    interface channelB = toFifoI(queueB);
    interface channelC = toFifoO(queueC);
    interface channelD = toFifoI(queueD);
    interface channelE = toFifoO(queueE);
  endinterface

  method stats = DCacheStats{
    hit: numHit,
    mis: numMis
  };
endmodule

