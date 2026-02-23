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
  Lr,
  Sc,
  Ld,
  St,
  Amo
} DCacheOpcode deriving(Bits, Eq, FShow);

function TLPerm opcodePermission(DCacheOpcode opcode);
  return case (opcode) matches
    Amo : T;
    Ld : B;
    St : T;
    Lr : B;
    Sc : T;
  endcase;
endfunction

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

  Vector#(NumWays, MultiRF#(1, 1, Index, Tag))
    tagRams <- replicateM(mkForwardMultiRF(0, fromInteger(2 ** valueof(IndexW) - 1)));

  Vector#(NumWays, MultiRF#(1, 1, Index, TLPerm))
    permRams <- replicateM(mkForwardMultiRF(0, fromInteger(2 ** valueof(IndexW) - 1)));

  Vector#(NumWays, FORWARD_BRAM_BE#(Bit#(TAdd#(IndexW,OffsetW)), Bit#(32), 4)) dataRams <-
    replicateM(mkForwardBRAMCoreBE((2 ** valueof(IndexW)) * (2 ** valueof(OffsetW))));

  ////////////////////////////////////////////////////////////////////////////
  // Load reserve/Store conditional sequence
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Bit#(8)) reservationCounter[3] <- mkCReg(3, 0);

  (* fire_when_enabled, no_implicit_conditions *)
  rule decr_reservation_counter;
    if (reservationCounter[2] != 0) reservationCounter[2] <= reservationCounter[2] - 1;
  endrule

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
  Reg#(OpcodeA) refill_opcode <- mkRegU;
  Reg#(OpcodeC) evict_opcode <- mkRegU;
  Reg#(Offset) refill_offset <- mkRegU;
  Reg#(Offset) evict_offset <- mkRegU;
  Reg#(Tag) evict_tag <- mkRegU;

  ////////////////////////////////////////////////////////////////////////////
  // State of the current cpu request
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Bool) cpu_sc_succeded <- mkRegU;
  Reg#(DCacheReq) cpu_req <- mkRegU;
  Reg#(Physical) cpu_phys <- mkRegU;
  Reg#(TLPerm) cpu_perm <- mkRegU;
  Reg#(Tag) cpu_tag <- mkRegU;
  Reg#(Way) cpu_way <- mkRegU;

  Bool cpu_hit =
    cpu_tag == cpu_phys.tag && cpu_perm != N &&
    (opcodePermission(cpu_req.opcode) == B || cpu_perm == T || cpu_perm == D);

  ////////////////////////////////////////////////////////////////////////////
  // State of the current probe request
  ////////////////////////////////////////////////////////////////////////////
  Reg#(OpcodeC) probe_opcode <- mkRegU;
  Reg#(Physical) probe_phys <- mkRegU;
  Reg#(Offset) probe_offset <- mkRegU;
  Reg#(TLPerm) probe_perm <- mkRegU;
  Reg#(State) nextState <- mkRegU;
  Reg#(Cap) probe_cap <- mkRegU;
  Reg#(Way) probe_way <- mkRegU;

  ////////////////////////////////////////////////////////////////////////////
  // Initialize cache
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Index) initIndex <- mkReg(0);

  rule init if (state[0] == Init);
    for (Integer i=0; i < ways; i = i + 1) permRams[i].writePorts[0].request(initIndex, N);
    if (initIndex + 1 == 0) state[0] <= Idle;
    initIndex <= initIndex + 1;
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Probe seauence (we receive an invalidation request from the cache controller)
  ////////////////////////////////////////////////////////////////////////////
  Bool canProbe =
    queueB.canDeq && reservationCounter[1] == 0 &&
    (state[1] == Idle || state[1] == Refill);

  rule probe_lookup if (canProbe);
    Physical phys = unpack(queueB.first.address);

    Way w = randomWay;
    TLPerm perm = N;

    for (Integer i=0; i < ways; i = i + 1) begin
      TLPerm p <- permRams[i].readPorts[0].request(phys.index);
      Tag t <- tagRams[i].readPorts[0].request(phys.index);

      if (t == phys.tag) begin
        w = fromInteger(i);
        perm = p;
      end
    end

    probe_cap <= case (queueB.first.opcode) matches
      tagged ProbeBlock .c : c;
      tagged ProbePerms .c : c;
    endcase;

    state[1] <= MatchingProbe;
    nextState <= state[1];
    probe_phys <= phys;
    probe_perm <= perm;
    probe_offset <= 0;
    probe_way <= w;

    queueB.deq;
  endrule

  rule probe_match if (state[0] == MatchingProbe);
    match {.new_perm, .opcode, .evict} = case (tuple2(probe_perm, probe_cap)) matches
      {T, B} : tuple3(TLPerm'(B), ProbeAckData(TtoB), True);
      {T, N} : tuple3(TLPerm'(N), ProbeAckData(TtoN), True);
      {D, B} : tuple3(TLPerm'(B), ProbeAckData(TtoB), True);
      {D, N} : tuple3(TLPerm'(N), ProbeAckData(TtoN), True);
      {B, N} : tuple3(TLPerm'(N), ProbeAckData(BtoN), True);
      {T, T} : tuple3(TLPerm'(T), ProbeAck(TtoT), False);
      {D, T} : tuple3(TLPerm'(D), ProbeAck(TtoT), False);
      {B, B} : tuple3(TLPerm'(B), ProbeAck(BtoB), False);
      {N, N} : tuple3(TLPerm'(N), ProbeAck(NtoN), False);
    endcase;

    permRams[probe_way].writePorts[0].request(probe_phys.index, new_perm);
    probe_opcode <= opcode;

    if (evict) begin
      dataRams[probe_way].read({probe_phys.index, 0});
      state[0] <= EvictProbe;
      probe_offset <= 0;
    end else begin
      state[0] <= nextState;
      queueC.enq(ChannelC{
        size: fromInteger(lineSize),
        address: pack(probe_phys),
        opcode: opcode,
        source: source,
        data: ?
      });
    end
  endrule

  rule probe_evict if (state[0] == EvictProbe);
    dataRams[probe_way].read({probe_phys.index, probe_offset+1});
    if (probe_offset+1 == 0) state[0] <= nextState;
    probe_offset <= probe_offset+1;

    queueC.enq(ChannelC{
      data: dataRams[probe_way].response,
      size: fromInteger(lineSize),
      address: pack(probe_phys),
      opcode: probe_opcode,
      source: source
    });
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Cache line refill/evict sequence
  ////////////////////////////////////////////////////////////////////////////
  rule mis if (state[0] == Lookup && !cpu_hit && queueA.canEnq);
    Grow grow =
      cpu_tag == cpu_phys.tag && cpu_perm != N ? BtoT :
      (opcodePermission(cpu_req.opcode) == B ? NtoB : NtoT);

    Reduce reduce =
      cpu_perm == B ? BtoN : TtoN;

    if (cpu_tag != cpu_phys.tag && cpu_perm != N) begin
      permRams[cpu_way].writePorts[0].request(cpu_phys.index, N);
      evict_opcode <= cpu_perm == D ? ReleaseData(reduce) : Release(reduce);
      dataRams[cpu_way].read({ cpu_phys.index, 0 });
      refill_opcode <= AcquireBlock(grow);
      evict_tag <= cpu_tag;
      evict_offset <= 0;
      state[0] <= Evict;
    end else begin
      //$display("direct refill");
      refill_offset <= 0;
      state[0] <= Refill;
      queueA.enq(ChannelA{
        address: pack(Physical{ tag: cpu_phys.tag, index: cpu_phys.index, offset: 0, lsb: 0 }),
        size: fromInteger(lineSize),
        opcode: AcquireBlock(grow),
        source: source,
        mask: -1,
        data: ?
      });
    end
  endrule

  rule send_beat if (state[0] == Evict);
    //$display("evict beat ", evict_offset);
    dataRams[cpu_way].read({ cpu_phys.index, evict_offset + 1 });
    evict_offset <= evict_offset + 1;

    queueC.enq(ChannelC{
      address: pack(Physical{ tag: evict_tag, index: cpu_phys.index, offset: 0, lsb: 0 }),
      data: dataRams[cpu_way].response,
      size: fromInteger(lineSize),
      opcode: evict_opcode,
      source: source
    });

    if (evict_offset + 1 == 0 || !hasDataC(evict_opcode)) begin
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
      opcode: refill_opcode,
      source: source,
      mask: -1,
      data: ?
    });
  endrule

  rule receive_beat if (state[0] == Refill);
    //$display("refill beat ", refill_offset);
    //$display("%h %h %h", cpu_phys.tag, cpu_phys.index, cpu_phys.offset);
    queueD.deq;

    if (hasDataD(queueD.first.opcode)) begin
      dataRams[cpu_way].write(-1, { cpu_phys.index, refill_offset }, queueD.first.data);
    end

    refill_offset <= refill_offset + 1;

    if (refill_offset + 1 == 0 || !hasDataD(queueD.first.opcode)) begin
      tagRams[cpu_way].writePorts[0].request(cpu_phys.index, cpu_phys.tag);

      let exclusive = case (queueD.first.opcode) matches
        tagged GrantData .cap : cap == T;
        tagged Grant .cap : cap == T;
      endcase;

      permRams[cpu_way].writePorts[0].request(cpu_phys.index, exclusive ? D : B);

      queueE.enq(ChannelE{
        sink: queueD.first.sink,
        opcode: GrantAck
      });

      cpu_tag <= cpu_phys.tag;
      cpu_perm <= exclusive ? D : B;
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
  method Bit#(32) response =
    cpu_req.opcode == Sc ? zeroExtend(pack(!cpu_sc_succeded)) : dataRams[cpu_way].response;

  method Bool valid = state[0] == Lookup && cpu_hit;

  method Action deq(Bool commit) if (state[0] == Lookup && cpu_hit);
    //$display("commit");
    state[0] <= Idle;

    if (commit && (cpu_req.opcode == St || (cpu_req.opcode == Sc && cpu_sc_succeded))) begin
      dataRams[cpu_way].write(cpu_req.mask, { cpu_phys.index, cpu_phys.offset }, cpu_req.data);
      permRams[cpu_way].writePorts[0].request(cpu_phys.index, D);
    end

    if (commit && cpu_req.opcode == Amo) begin
      Bit#(32) newData = computeAmo(cpu_req.amo, dataRams[cpu_way].response, cpu_req.data);
      dataRams[cpu_way].write(cpu_req.mask, { cpu_phys.index, cpu_phys.offset }, newData);
      permRams[cpu_way].writePorts[0].request(cpu_phys.index, D);
    end

    reservationCounter[0] <= cpu_req.opcode == Lr && commit ? 32 : 0;
  endmethod

  ////////////////////////////////////////////////////////////////////////////
  // Enter a new request to the cache
  ////////////////////////////////////////////////////////////////////////////
  method Bool canLookup = state[1] == Idle && !canProbe;
  method Action lookup(DCacheReq req) if (state[1] == Idle && !canProbe);

    Physical phys = unpack(req.address);
    randomWay <= randomWay + 1;

    Vector#(NumWays, TLPerm) perms = newVector;
    Vector#(NumWays, Tag) tags = newVector;
    Bool found = False;
    Way w = randomWay;

    for (Integer i=0; i < ways; i = i + 1) begin
      dataRams[i].read({ phys.index, phys.offset });

      TLPerm perm <- permRams[i].readPorts[0].request(phys.index);
      Tag tag <- tagRams[i].readPorts[0].request(phys.index);
      perms[i] = perm;
      tags[i] = tag;

      if (tag == phys.tag && perm != N) begin
        w = fromInteger(i);
      end
    end

    if (perms[w] != N) numHit <= numHit + 1;
    else numMis <= numMis + 1;

    cpu_sc_succeded <= reservationCounter[1] != 0;
    cpu_perm <= perms[w];
    cpu_tag <= tags[w];
    state[1] <= Lookup;
    cpu_phys <= phys;
    cpu_req <= req;
    cpu_way <= w;
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

