import MultiRegFile :: *;
import BRAMCore :: *;
import RegFile :: *;
import TLTypes :: *;
import TLUtils :: *;
import Assert :: *;
import Vector :: *;
import Fifo :: *;

import CachePipe :: *;

// Define the parameter of the inclusive last level cache
typedef 256 LineW;  // Width (in bits) of one cache line
typedef 256 Sets;   // Number of "set"
typedef 8 Ways;     // Number of element per "set"
typedef 8 TQ_SIZE;  // Maximum number of concurent requests
typedef 32 AddrW;   // Width (in bits) of the tilelink "address" field
typedef 8 SourceW;  // Width (in bits) of the tilelink "source" field
typedef 8 SinkW;    // Width (in bits) of the tilelink "sink" field
typedef 8 SizeW;    // Width (in bits) of the tilelink "size" field
typedef 2 NCache;   // Number of higher level caches to track

Bool debug = False;

typedef TDiv#(LineW,8) MaskW;
typedef TLog#(TDiv#(LineW,8)) OffsetW;
typedef Bit#(LineW) Line;

typedef Bit#(TLog#(TQ_SIZE)) Transaction;

typedef TLog#(Sets) SetW;
typedef TSub#(AddrW, TAdd#(SetW, OffsetW)) TagW;

typedef Bit#(TagW) Tag;
typedef Bit#(MaskW) Mask;
typedef Bit#(SetW) Set;
typedef Bit#(OffsetW) Offset;
typedef Bit#(TLog#(Ways)) Way;

typedef Bit#(NCache) CacheOH;
typedef Bit#(TLog#(NCache)) CacheID;

typedef struct {
  Tag tag;
  Set set;
  Offset offset;
} Physical deriving(Bits);

`define TL_LLC AddrW, LineW, SizeW, SourceW, SinkW

interface LLC;
  interface TLSlave#(`TL_LLC) slave;
  interface TLMaster#(`TL_LLC) master;
endinterface

typedef struct {
  // List of owners of the cache line
  CacheOH owners;

  // Is the cache line in the exclusive state in the owners cache
  Bool exclusive;

  // Is the cache line dirty
  Bool dirty;

  // Cache line content
  Line line;
} CachePayload deriving(Bits);

(* synthesize *)
module mkLLC#(Vector#(NCache, Bit#(SourceW)) sources) (LLC);
  ///////////////////////////////////////////////////////////////////////////////////////
  // Slave bus interface (from compute units)
  ///////////////////////////////////////////////////////////////////////////////////////
  Fifo#(2, ChannelA#(`TL_LLC)) sinkA <- mkFifo;
  Fifo#(2, ChannelB#(`TL_LLC)) sourceB <- mkFifo;
  Fifo#(2, ChannelC#(`TL_LLC)) sinkC <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sourceD <- mkFifo;
  Fifo#(2, ChannelE#(`TL_LLC)) sinkE <- mkFifo;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Master bus interface (to memory)
  ///////////////////////////////////////////////////////////////////////////////////////
  Fifo#(2, ChannelA#(`TL_LLC)) refillBuffer <- mkFifo;
  Fifo#(2, ChannelA#(`TL_LLC)) evictBuffer <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sinkD <- mkFifo;

  ///////////////////////////////////////////////////////////////////////////////////////
  // MSHR file: scheduler and associated requests
  ///////////////////////////////////////////////////////////////////////////////////////
  RegFile#(Transaction, Way) ways <- mkRegFileWCF(0, fromInteger(valueof(TQ_SIZE)-1));
  RegFile#(Transaction, ChannelA#(`TL_LLC)) requests <- mkRegFileFull;
  TransactionQueue transactions <- mkTransactionQueue;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Schedule probe requests
  ///////////////////////////////////////////////////////////////////////////////////////
  RegFile#(Transaction, Bit#(AddrW)) probeAddr <- mkRegFileFull;
  RegFile#(Transaction, OpcodeB) probeOpcode <- mkRegFileFull;
  ProbeScheduler probes <- mkProbeScheduler;

  rule schedule_probe;
    match {.tr, .id} <- probes.scheduler;
    sourceB.enq(ChannelB{
      size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
      opcode: probeOpcode.sub(tr),
      address: probeAddr.sub(tr),
      source: sources[id]
    });

    if (debug) begin
      $display("send: ", fshow((ChannelB#(`TL_LLC))'(ChannelB{
        size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
        opcode: probeOpcode.sub(tr),
        address: probeAddr.sub(tr),
        source: sources[id]
      })));
    end
  endrule

  rule probe_deq;
    let tr <- probes.deq;
    transactions.probeDone(tr);
    //$display("deq probe 0x%h", requests.sub(tr).address);
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Cache pipeline (contains the states of each line)
  ///////////////////////////////////////////////////////////////////////////////////////
  CachePipe#(TagW, Ways, SetW, CachePayload, LLCRequest) pipeline <- mkCachePipe;

  Bool canStartE =
    sinkE.canDeq;
  Bool canStartD =
    sinkD.canDeq && !canStartE;
  Bool canStartC =
    sinkC.canDeq && !canStartD && !canStartE;
  Bool canStartA =
    !canStartC && !canStartD && !canStartE;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Grant acknoledge
  ///////////////////////////////////////////////////////////////////////////////////////
  rule lookup_e if (canStartE);
    if (debug) $display("receive: ", fshow(sinkE.first));
    Transaction tr = truncate(sinkE.first.sink);
    Physical phys = unpack(requests.sub(tr).address);
    pipeline.enter(
      phys.tag,
      phys.set,
      Valid(ways.sub(tr)),
      LLCRequest{
        transaction: tr,
        address: pack(phys),
        request: ChannelE(sinkE.first)
      }
    );
    sinkE.deq;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Accept a response from memory
  ///////////////////////////////////////////////////////////////////////////////////////
  rule lookup_d if (canStartD);
    if (debug) $display("receive: ", fshow(sinkD.first));
    Transaction tr = truncate(sinkD.first.source >> 1);
    Physical phys = unpack(requests.sub(tr).address);
    pipeline.enter(
      phys.tag,
      phys.set,
      Valid(ways.sub(tr)),
      LLCRequest{
        transaction: tr,
        address: pack(phys),
        request: ChannelD(sinkD.first)
      }
    );
    sinkD.deq;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Accept a probe response/release request
  ///////////////////////////////////////////////////////////////////////////////////////
  rule lookup_c if (canStartC);
    if (debug) $display("receive: ", fshow(sinkC.first));
    Physical phys = unpack(sinkC.first.address);
    pipeline.enter(
      phys.tag,
      phys.set,
      Invalid,
      LLCRequest{
        transaction: ?,
        address: pack(phys),
        request: ChannelC(sinkC.first)
      }
    );
    sinkC.deq;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Retry an old request or allocate a new one, have a lower priority than the memory port
  ///////////////////////////////////////////////////////////////////////////////////////
  rule lookup_a if (canStartA);
    let tr_opt = transactions.scheduler;
    if (tr_opt matches tagged Valid .tr) begin
      // We can retry al older request
      let request = requests.sub(tr);
      transactions.retry(tr);

      if (debug) $display("retry: ", fshow(request));
      Physical phys = unpack(request.address);
      pipeline.enter(
        phys.tag, phys.set, Valid(ways.sub(tr)),
        LLCRequest{transaction: tr, request: ChannelA(request), address: pack(phys)}
      );
    end else begin
      // Try a new incomming request, block if their is a data hazard
      // (the "set" of the new requets is already used by an order request)
      Physical phys = unpack(sinkA.first.address);

      Bool blocked <- transactions.searchA(phys.set);
      if (!blocked) begin
        let tr <- transactions.enter(phys.set);
        if (debug) $display("receive: ", fshow(sinkA.first));
        pipeline.enter(
          phys.tag,
          phys.set,
          Invalid,
          LLCRequest{
            transaction: tr,
            address: pack(phys),
            request: ChannelA(sinkA.first)
          }
        );
        requests.upd(tr, sinkA.first);
        sinkA.deq;
      end
    end
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Dequeue a grant acknoledge message: free the associated transaction queue slot
  ///////////////////////////////////////////////////////////////////////////////////////
  rule deq_e if (pipeline.valid &&& pipeline.request matches tagged ChannelE .request);
    Physical phys = unpack(pipeline.address);

    dynamicAssert(pipeline.tag == Valid(phys.tag), "invalid state");

    transactions.deq(pipeline.transaction);
    pipeline.deq(False, False, ?, ?);
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Dequeue a memory response from the pipeline, and free the associated ressources
  // (clear the refill/evict bit of the associated MSHR)
  ///////////////////////////////////////////////////////////////////////////////////////
  rule deq_d if (pipeline.valid &&& pipeline.request matches tagged ChannelD .request);
    Physical phys = unpack(pipeline.address);

    if (request.opcode == AccessAckData) begin
      transactions.refillDone(pipeline.transaction);

      let payload = CachePayload {
        line: request.data,
        exclusive: False,
        dirty: False,
        owners: 0
      };

      pipeline.deq(True, True, Valid(phys.tag), payload);
    end else if (request.opcode == AccessAck) begin
      transactions.evictDone(pipeline.transaction);
      pipeline.deq(False, False, ?, ?);
    end else begin
      $display("LLC: invalid memory response");
      $finish;
    end
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Dequeue a probe acknoledge/release message
  ///////////////////////////////////////////////////////////////////////////////////////
  rule deq_c if (pipeline.valid &&& pipeline.request matches tagged ChannelC .request);
    Physical phys = unpack(pipeline.address);

    dynamicAssert(pipeline.tag == Valid(phys.tag), "channel C messages must hit: inclusive cache");

    CachePayload payload = pipeline.data;

    match {.reduce, .line, .isRelease, .dirty} = case (request.opcode) matches
      tagged ProbeAck     .r : tuple4(r, payload.line, False, False);
      tagged ProbeAckData .r : tuple4(r, request.data, False, True);
      tagged Release      .r : tuple4(r, payload.line, True, False);
      tagged ReleaseData  .r : tuple4(r, request.data, True, True);
    endcase;

    payload.line = line;
    payload.dirty = dirty;

    CacheID id = ?;

    if (reduce != TtoT) payload.exclusive = False;

    for (Integer i=0; i < valueof(NCache); i = i + 1) if (sources[i] == request.source) begin
      if (reduce == TtoN || reduce == BtoN || reduce == NtoN) payload.owners[i] = 0;
      id = fromInteger(i);
    end

    if (!isRelease) probes.receive(phys.set, id);

    if (isRelease) begin
      sourceD.enq(ChannelD{
        opcode: ReleaseAck,
        source: request.source,
        size: request.size,
        data: ?,
        sink: ?
      });
    end

    pipeline.deq(False, True, ?, payload);
  endrule

  (* preempts = "deq_a, probe_deq" *)
  ///////////////////////////////////////////////////////////////////////////////////////
  // Dequeue a cpu request from the pipeline, deq the request in case of a hit, or start
  // a probe/refill/evict sequence (forward progress: never allocate ressources here)
  ///////////////////////////////////////////////////////////////////////////////////////
  rule deq_a if (pipeline.valid &&& pipeline.request matches tagged ChannelA .request);
    ways.upd(pipeline.transaction, pipeline.way);
    Physical phys = unpack(request.address);

    Physical evictPhys = Physical{tag: validValue(pipeline.tag), set: phys.set, offset: 0};
    Physical refillPhys =  Physical{tag: phys.tag, set: phys.set, offset: 0};

    CacheOH other_owners = pipeline.data.owners;
    for (Integer i=0; i < valueof(NCache); i = i + 1) if (sources[i] == request.source) begin
      other_owners[i] = 0;
    end

    TLPerm needed = permChannelA(request.opcode);
    Bool permMis =
      (needed == T && other_owners != 0) ||
      (needed == B && other_owners != 0 && pipeline.data.exclusive);

    function Action startRefill();
      action
        refillBuffer.enq(ChannelA{
          address: pack(refillPhys),
          size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
          source: 2*zeroExtend(pipeline.transaction)+1,
          opcode: GetFull,
          mask: -1,
          data: ?
        });
      endaction
    endfunction

    function Action startEvict();
      action
        evictBuffer.enq(ChannelA{
          address: pack(evictPhys),
          size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
          source: 2*zeroExtend(pipeline.transaction),
          data: pipeline.data.line,
          opcode: PutData,
          mask: -1
        });
      endaction
    endfunction

    if (pipeline.tag matches Invalid) begin
      // Direct refill

      //$display("direct refill: 0x%h", pack(phys));
      transactions.evictDone(pipeline.transaction);
      transactions.probeDone(pipeline.transaction);
      pipeline.deq(False, False, ?, ?);
      startRefill();

    end else if (Valid(phys.tag) != pipeline.tag && pipeline.data.owners != 0) begin
      // Probe the owners of the old cache line before the eviction

      //$display("probe before eviction: 0x%h", pack(evictPhys));
      probeAddr.upd(pipeline.transaction, pack(evictPhys));
      probes.enter(phys.set, pipeline.transaction, pipeline.data.owners);
      probeOpcode.upd(pipeline.transaction, ProbeBlock(N));
      transactions.refillDone(pipeline.transaction);
      transactions.evictDone(pipeline.transaction);
      pipeline.deq(False, False, ?, ?);

    end else if (Valid(phys.tag) != pipeline.tag && pipeline.data.owners == 0) begin
      // Evict the old cache line and refill the new one

      //$display("evict and refill: 0x%h 0x%h", pack(evictPhys), pack(phys));
      transactions.probeDone(pipeline.transaction);
      pipeline.deq(True, False, Invalid, ?);
      startRefill();

      if (pipeline.data.dirty) begin
        startEvict();
      end else begin
        transactions.evictDone(pipeline.transaction);
      end

    end else if (Valid(phys.tag) == pipeline.tag && permMis) begin
      // Probe the others owners of the cache line

      //$display("probe: 0x%h", pack(phys));
      probeOpcode.upd(pipeline.transaction, ProbeBlock(needed == T ? N : B));
      probes.enter(phys.set, pipeline.transaction, other_owners);
      probeAddr.upd(pipeline.transaction, pack(refillPhys));
      transactions.refillDone(pipeline.transaction);
      transactions.evictDone(pipeline.transaction);
      pipeline.deq(False, False, ?, ?);

    end else begin
      // Cache hit

      CachePayload payload = pipeline.data;

      // Finish the transaction
      transactions.probeDone(pipeline.transaction);
      transactions.evictDone(pipeline.transaction);
      transactions.refillDone(pipeline.transaction);

      // Process request and send response, the "enq" is not blocking for forward progress
      // because the compute units are guaranties to accept those messages
      case (request.opcode) matches
        GetFull : begin
          //$display("respond: 0x%h\n", pipeline.line);
          transactions.deq(pipeline.transaction);
          pipeline.deq(False, False, ?, ?);
          sourceD.enq(ChannelD{
            opcode: AccessAckData,
            size: request.size,
            source: request.source,
            data: pipeline.data.line,
            sink: ?
          });
        end
        PutData : begin
          Vector#(TDiv#(LineW,8), Bit#(8)) line = unpack(payload.line);
          for (Integer i=0; i < valueof(LineW)/8; i = i + 1) begin
            if (request.mask[i] == 1) line[i] = request.data[8*i+7:8*i];
          end

          payload.dirty = True;
          payload.line = pack(line);

          transactions.deq(pipeline.transaction);
          pipeline.deq(False, True, ?, payload);
          sourceD.enq(ChannelD{
            opcode: AccessAck,
            size: request.size,
            source: request.source,
            data: ?,
            sink: ?
          });
        end
        tagged AcquireBlock .* : begin
          OpcodeD opcode = GrantData(other_owners == 0 ? T : B);
          payload.exclusive = other_owners == 0;

          for (Integer i=0; i < valueof(NCache); i = i + 1) begin
            if (sources[i] == request.source) payload.owners[i] = 1;
          end

          transactions.startGrant(pipeline.transaction);
          pipeline.deq(False, True, ?, payload);
          sourceD.enq(ChannelD{
            sink: zeroExtend(pipeline.transaction),
            data: pipeline.data.line,
            source: request.source,
            size: request.size,
            opcode: opcode
          });
        end
        tagged AcquirePerms .* : begin
          OpcodeD opcode = Grant(other_owners == 0 ? T : B);
          payload.exclusive = other_owners == 0;

          for (Integer i=0; i < valueof(NCache); i = i + 1) begin
            if (sources[i] == request.source) payload.owners[i] = 1;
          end

          transactions.startGrant(pipeline.transaction);
          pipeline.deq(False, True, ?, payload);
          sourceD.enq(ChannelD{
            sink: zeroExtend(pipeline.transaction),
            data: pipeline.data.line,
            source: request.source,
            size: request.size,
            opcode: opcode
          });
        end
        default: begin
          $display("LLC: unsupported request ", fshow(request.opcode));
          $finish;
        end
      endcase
    end
  endrule

  interface TLMaster master;
    interface FifoO channelA;
      method canDeq = refillBuffer.canDeq || evictBuffer.canDeq;
      method first = refillBuffer.canDeq ? refillBuffer.first : evictBuffer.first;
      method Action deq;
        if (refillBuffer.canDeq) refillBuffer.deq;
        else evictBuffer.deq;
      endmethod
    endinterface
    interface channelB = nullFifoI;
    interface channelC = nullFifoO;
    interface channelD = toFifoI(sinkD);
    interface channelE = nullFifoO;
  endinterface

  interface TLSlave slave;
    interface channelA = toFifoI(sinkA);
    interface channelB = toFifoO(sourceB);
    interface channelC = toFifoI(sinkC);
    interface channelD = toFifoO(sourceD);
    interface channelE = toFifoI(sinkE);
  endinterface
endmodule

typedef struct {
  LLCSink request;
  Bit#(AddrW) address;
  Transaction transaction;
} LLCRequest deriving(Bits);

typedef union tagged {
  ChannelA#(`TL_LLC) ChannelA;
  ChannelC#(`TL_LLC) ChannelC;
  ChannelD#(`TL_LLC) ChannelD;
  ChannelE#(`TL_LLC) ChannelE;
} LLCSink deriving(Bits);

// The transaction queue is in charge of scheduling the requests/checking for hazards
interface TransactionQueue;
  // Return if their is an inflight transaction using a given set, if true then the current
  // request must be delayed. I use an actionvalue here because otherwise bluespec try to
  // duplicate the ports
  (* always_ready *) method ActionValue#(Bool) searchA(Set set);

  // Search if we can accept a channel C response
  (* always_ready *) method ActionValue#(Maybe#(Transaction)) searchC(Set set);

  //////////////////////////////////////////////////////////////////////////////////////////////
  // Stage 1: either enter a new request if a slot is ready, or retry another if it's evict/
  // refill/probe sequence finished
  //////////////////////////////////////////////////////////////////////////////////////////////
  (* always_ready *) method Bool canEnter;
  method ActionValue#(Transaction) enter(Set set);

  // Search for a transaction to retry
  (* always_ready *) method Maybe#(Transaction) scheduler;

  // Retry a transaction
  (* always_ready *) method Action retry(Transaction tr);

  //////////////////////////////////////////////////////////////////////////////////////////////
  // Stage 2: Finish a refill/evict transaction
  //////////////////////////////////////////////////////////////////////////////////////////////
  // Inform the transaction queue that an evict transaction finished
  (* always_ready *) method Action evictDone(Transaction tr);

  // Inform the transaction queue that a refill transaction finished
  (* always_ready *) method Action refillDone(Transaction tr);

  // Inform the transaction queue that a probe transaction finished
  (* always_ready *) method Action probeDone(Transaction tr);

  // Inform the transaction queue that we wait for a grant-ack message
  (* always_ready *) method Action startGrant(Transaction tr);

  // Mark a transaction as finished (we received a grant response)
  (* always_ready *) method Action deq(Transaction tr);
endinterface

(* synthesize *)
module mkTransactionQueue(TransactionQueue);
  Vector#(TQ_SIZE, Reg#(Set)) sets <- replicateM(mkRegU);
  Reg#(Vector#(TQ_SIZE, Bool)) refill[2] <- mkCReg(2, replicate(False));
  Reg#(Vector#(TQ_SIZE, Bool)) evict[2] <- mkCReg(2, replicate(False));
  Reg#(Vector#(TQ_SIZE, Bool)) probe[2] <- mkCReg(2, replicate(False));
  Reg#(Vector#(TQ_SIZE, Bool)) grant[2] <- mkCReg(2, replicate(False));
  Reg#(Vector#(TQ_SIZE, Bool)) valid[2] <- mkCReg(2, replicate(False));
  Reg#(Transaction) head <- mkReg(0);
  Reg#(Transaction) tail <- mkReg(0);

  ///////////////////////////////////////////////////////////////////////////////////////
  // Search for hazards
  ///////////////////////////////////////////////////////////////////////////////////////
  method ActionValue#(Bool) searchA(Set set);
    Bool found = False;

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) if (valid[1][i]) begin
      found = found || sets[i] == set;
    end

    return found;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Search if a channel C request match a given transaction
  ///////////////////////////////////////////////////////////////////////////////////////
  method ActionValue#(Maybe#(Transaction)) searchC(Set set);
    Maybe#(Transaction) ret = Invalid;

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) if (valid[1][i]) begin
      if (sets[i] == set) ret = Valid(fromInteger(i));
    end

    return ret;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Search a transaction to retry
  ///////////////////////////////////////////////////////////////////////////////////////
  method Maybe#(Transaction) scheduler;
    Maybe#(Transaction) ret = Invalid;

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) begin
      if (valid[1][i] && !evict[1][i] && !refill[1][i] && !grant[1][i] && !probe[1][i])
        ret = Valid(fromInteger(i));
    end

    return ret;
  endmethod

  method Action retry(Transaction tr);
    dynamicAssert(valid[1][tr] && !evict[1][tr] && !refill[1][tr], "retry a blocked transaction");
    grant[1][tr] <= False;
    refill[1][tr] <= True;
    evict[1][tr] <= True;
    probe[1][tr] <= True;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 0: add a new transaction, initialy suppose that we muts evict and refill a line
  ///////////////////////////////////////////////////////////////////////////////////////
  method Bool canEnter = !valid[1][head];
  method ActionValue#(Transaction) enter(Set set) if(!valid[1][head]);
    grant[1][head] <= False;
    refill[1][head] <= True;
    evict[1][head] <= True;
    probe[1][head] <= True;
    valid[1][head] <= True;
    sets[head] <= set;
    head <= head+1;
    return head;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Mark an evict transaction as done or useless (hit)
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action evictDone(Transaction tr);
    evict[0][tr] <= False;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Mark a refill transaction as done or useless (hit)
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action refillDone(Transaction tr);
    refill[0][tr] <= False;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Mark a probe transaction as done or useless (hit)
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action probeDone(Transaction tr);
    probe[0][tr] <= False;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Infor the transaction queue that we wait for a grant acknoledge
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action startGrant(Transaction tr);
    grant[0][tr] <= True;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Mark a transaction as finished
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action deq(Transaction tr);
    valid[0][tr] <= False;
  endmethod
endmodule

interface ProbeScheduler;
  // Add a new set of probe to send
  method Action enter(Set set, Transaction tr, CacheOH oh);

  // Schedule a new probe
  method ActionValue#(Tuple2#(Transaction, CacheID)) scheduler();

  // Receive a probe response
  method Action receive(Set set, CacheID id);

  // Inform the cache that the probe sequence associated with a transaction finished
  method ActionValue#(Transaction) deq;
endinterface

(* synthesize *)
module mkProbeScheduler(ProbeScheduler);
  Vector#(TQ_SIZE, Reg#(CacheOH)) toSend <- replicateM(mkReg(0));
  Vector#(TQ_SIZE, Reg#(CacheOH)) toRecv <- replicateM(mkReg(0));
  Reg#(Vector#(TQ_SIZE, Bool)) valid <- mkReg(replicate(False));
  Vector#(TQ_SIZE, Reg#(Set)) sets <- replicateM(mkRegU);

  Reg#(Transaction) send_head <- mkReg(0);
  Reg#(Transaction) deq_head <- mkReg(0);

  rule skip_send if (toSend[send_head] == 0 || !valid[send_head]);
    send_head <= send_head + 1;
  endrule

  rule skip_grant if (!valid[deq_head]);
    deq_head <= deq_head + 1;
  endrule

  method Action enter(Set set, Transaction tr, CacheOH oh);
    valid[tr] <= True;
    toSend[tr] <= oh;
    toRecv[tr] <= oh;
    sets[tr] <= set;
  endmethod

  method ActionValue#(Tuple2#(Transaction, CacheID)) scheduler
    if (toSend[send_head] != 0 && valid[send_head]);
    CacheID id = 0;

    for (Integer i=0; i < valueof(NCache); i = i + 1) if (toSend[send_head][i] == 1) begin
      id = fromInteger(i);
    end

    toSend[send_head][id] <= 0;

    return tuple2(send_head, id);
  endmethod

  method Action receive(Set set, CacheID id);
    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) begin
      if (sets[i] == set) toRecv[i][id] <= 0;
    end
  endmethod

  method ActionValue#(Transaction) deq if (toRecv[deq_head] == 0 && valid[deq_head]);
    valid[deq_head] <= False;
    return deq_head;
  endmethod
endmodule
