import MultiRegFile :: *;
import BRAMCore :: *;
import RegFile :: *;
import TLTypes :: *;
import TLUtils :: *;
import Vector :: *;
import Fifo :: *;

typedef 256 LineW;
typedef TDiv#(LineW,8) MaskW;
typedef TLog#(TDiv#(LineW,8)) OffsetW;
typedef Bit#(LineW) Line;

typedef 256 Sets;
typedef 8 Ways;

typedef TLog#(Sets) IndexW;
typedef TSub#(32, TAdd#(IndexW, OffsetW)) TagW;

typedef Bit#(TagW) Tag;
typedef Bit#(MaskW) Mask;
typedef Bit#(IndexW) Index;
typedef Bit#(OffsetW) Offset;
typedef Bit#(TLog#(Ways)) Way;

typedef struct {
  Tag tag;
  Index index;
  Offset offset;
} Physical deriving(Bits);

typedef 8 SourceW;
typedef 8 SizeW;
`define TL_LLC 32, LineW, SizeW, SourceW, 0

interface LLC;
  interface TLSlave#(`TL_LLC) slave;
  interface TLMaster#(`TL_LLC) master;
endinterface

// TODO: memory responses
(* synthesize *)
module mkLLC(LLC);
  // Slave interface
  Fifo#(2, ChannelA#(`TL_LLC)) sinkA <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sourceD <- mkFifo;

  // Master interface
  Fifo#(2, ChannelA#(`TL_LLC)) evictBuffer <- mkPipelineFifo;
  Fifo#(2, ChannelA#(`TL_LLC)) sourceA <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sinkD <- mkFifo;

  RegFile#(Bit#(SourceW), Bit#(32)) source2address <-
    mkRegFileWCF(0,fromInteger(2**valueof(SourceW)-1));

  rule connectSourceA;
    sourceA.enq(evictBuffer.first);
    evictBuffer.deq;
  endrule

  Fifo#(2, ChannelA#(`TL_LLC)) toRetryQ1 <- mkFifo;
  Fifo#(2, ChannelA#(`TL_LLC)) toRetryQ2 <- mkFifo;
  Fifo#(8, ChannelA#(`TL_LLC)) retryQ <- mkPipelineFifo;
  TransactionQueue transactions <- mkTransactionQueue;

  rule connectRetryQ1;
    retryQ.enq(toRetryQ1.first);
    toRetryQ1.deq;
  endrule

  (* preempts = "connectRetryQ1, connectRetryQ2" *)
  rule connectRetryQ2;
    retryQ.enq(toRetryQ2.first);
    toRetryQ2.deq;
  endrule

  LLCPipe pipeline <- mkLLCPipe;

  rule lookup_cpu;
    if (sinkA.canDeq) begin
      Physical phys = unpack(sinkA.first.address);
      source2address.upd(sinkA.first.source, sinkA.first.address);

      Bool blocked <- transactions.search(phys.index);
      if (!blocked) begin
        //$display("start cpu request", fshow(sinkA.first));
        transactions.enter(phys.index, sinkA.first.source);
        pipeline.enter(sinkA.first.address, ChannelA(sinkA.first));
        sinkA.deq;
      end else begin
        toRetryQ1.enq(sinkA.first);
        sinkA.deq;
      end

    end else begin
      Physical phys = unpack(retryQ.first.address);

      Bool blocked <- transactions.search(phys.index);
      if (!blocked) begin
        //$display("start cpu request", fshow(retryQ.first));
        transactions.enter(phys.index, retryQ.first.source);
        pipeline.enter(retryQ.first.address, ChannelA(retryQ.first));
        retryQ.deq;
      end
    end
  endrule

  (* preempts = "lookup_mem, lookup_cpu" *)
  rule lookup_mem;
    //$display("receive mem response: ", fshow(sinkD.first));
    pipeline.enter(source2address.sub(sinkD.first.source), ChannelD(sinkD.first));
    sinkD.deq;
  endrule

  rule pipeline_deq_d if (pipeline.valid &&& pipeline.request matches tagged ChannelD .request);
    Physical phys = unpack(pipeline.address);

    if (request.opcode == AccessAckData) begin
      // Write the data and evict if necessary
      transactions.refillDone(request.source);

      // Add the new line set the new tag
      pipeline.deq(True, -1, Valid(phys.tag), request.data);

      if (pipeline.tag matches tagged Valid .tag)  begin
        // Evict old line
        sourceA.enq(ChannelA{
          opcode: PutData,
          address: pack(Physical{tag: tag, index: phys.index, offset: 0}),
          size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
          source: request.source,
          data: pipeline.line,
          mask: -1
        });
      end else begin
        // No need to evict any data
        transactions.evictDone(request.source);
      end
    end else if (request.opcode == AccessAck) begin
      transactions.evictDone(request.source);
      pipeline.deq(False, 0, ?, ?);
    end else begin
      $display("LLC: invalid memory response");
      $finish;
    end
  endrule

  (* preempts = "connectSourceA,pipeline_deq_a" *)
  (* preempts = "connectSourceA,pipeline_deq_d" *)
  rule pipeline_deq_a if (pipeline.valid &&& pipeline.request matches tagged ChannelA .request);
    Physical phys = unpack(request.address);

    if (Valid(phys.tag) == pipeline.tag) begin
      // Cache hit

      // Finish the transaction
      transactions.evictDone(request.source);
      transactions.refillDone(request.source);

      // Process request and send response
      case (request.opcode) matches
        GetFull : begin
          pipeline.deq(False, 0, ?, ?);
          sourceD.enq(ChannelD{
            opcode: AccessAckData,
            size: request.size,
            source: request.source,
            data: pipeline.line,
            sink: ?
          });
        end
        PutData : begin
          pipeline.deq(False, request.mask, ?, request.data);
          sourceD.enq(ChannelD{
            opcode: AccessAck,
            size: request.size,
            source: request.source,
            data: ?,
            sink: ?
          });
        end
        default: begin
          $display("LLC: unsupported request");
          $finish;
        end
      endcase
    end else begin
      // Cache miss
      toRetryQ2.enq(request);
      pipeline.deq(False, 0, ?, ?);

      sourceA.enq(ChannelA{
        opcode: GetFull,
        address: pack(Physical{tag: phys.tag, index: phys.index, offset: 0}),
        size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
        source: request.source,
        mask: -1,
        data: ?
      });
    end
  endrule

  interface TLMaster master;
    interface channelA = toFifoO(sourceA);
    interface channelB = nullFifoI;
    interface channelC = nullFifoO;
    interface channelD = toFifoI(sinkD);
    interface channelE = nullFifoO;
  endinterface

  interface TLSlave slave;
    interface channelA = toFifoI(sinkA);
    interface channelB = nullFifoO;
    interface channelC = nullFifoI;
    interface channelD = toFifoO(sourceD);
    interface channelE = nullFifoI;
  endinterface
endmodule

typedef union tagged {
  ChannelA#(`TL_LLC) ChannelA;
  ChannelD#(`TL_LLC) ChannelD;
} LLCPipeReq deriving(Bits);

interface LLCPipe;
  // Two cycles of latency
  method Action enter(Bit#(32) address, LLCPipeReq request);

  method Action deq(Bool wrTag, Mask mask, Maybe#(Tag) newTag, Line newLine);
  (* always_ready *) method LLCPipeReq request;
  (* always_ready *) method Bit#(32) address;
  (* always_ready *) method Maybe#(Tag) tag;
  (* always_ready *) method Bool valid;
  (* always_ready *) method Line line;
  (* always_ready *) method Way way;
endinterface

(* synthesize *)
module mkLLCPipe(LLCPipe);
  ///////////////////////////////////////////////////////////////////////////////////////
  // Random remplacement policy
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(Way) randomWay <- mkReg(0);

  ///////////////////////////////////////////////////////////////////////////////////////
  // Tags
  ///////////////////////////////////////////////////////////////////////////////////////
  Vector#(Ways, MultiRF#(1, 1, Index, Maybe#(Tag)))
    tagRams <- replicateM(mkForwardMultiRF(0, fromInteger(2 ** valueof(IndexW) - 1)));
  Vector#(Ways, Reg#(Maybe#(Tag))) tagRegs <- replicateM(mkReg(Invalid));

  Reg#(Bool) init <- mkReg(False);
  Reg#(Index) initIndex <- mkReg(0);

  rule init_rl if (!init);
    for (Integer i=0; i < valueof(Ways); i = i + 1) begin
      tagRams[i].writePorts[0].request(initIndex, Invalid);
    end

    initIndex <= initIndex + 1;
    if (initIndex + 1 == 0) init <= True;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Data
  ///////////////////////////////////////////////////////////////////////////////////////
  BRAM_DUAL_PORT_BE#(Bit#(TAdd#(TLog#(Ways), IndexW)), Line, MaskW)
    dataRams <- mkBRAMCore2BE(valueof(Ways) * valueof(Sets), False);

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 1 states
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(Bool) stage1_valid[2] <- mkCReg(2, False);
  Reg#(LLCPipeReq) stage1_request <- mkRegU;
  Reg#(Bit#(32)) stage1_address <- mkRegU;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 2 states
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(Bool) stage2_valid[2] <- mkCReg(2, False);
  Reg#(LLCPipeReq) stage2_request <- mkRegU;
  Reg#(Bit#(32)) stage2_address <- mkRegU;
  Reg#(Maybe#(Tag)) stage2_tag <- mkRegU;
  Reg#(Way) stage2_way <- mkRegU;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 1
  ///////////////////////////////////////////////////////////////////////////////////////
  rule matching if (stage1_valid[0] && !stage2_valid[1] && init);
    Physical phys = unpack(stage1_address);
    stage1_valid[0] <= False;
    stage2_valid[1] <= True;

    Maybe#(Tag) tag = tagRegs[randomWay];
    Way way = randomWay;

    for (Integer i=0; i < valueof(Ways); i = i + 1) if (tagRegs[i] == Valid(phys.tag)) begin
      way = fromInteger(i);
      tag = tagRegs[i];
    end

    dataRams.a.put(0, {way, phys.index}, ?);
    stage2_request <= stage1_request;
    stage2_address <= stage1_address;
    stage2_tag <= tag;
    stage2_way <= way;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 2
  ///////////////////////////////////////////////////////////////////////////////////////
  method valid = stage2_valid[0] && init;
  method request = stage2_request;
  method address = stage2_address;
  method line = dataRams.a.read;
  method tag = stage2_tag;
  method way = stage2_way;

  method Action deq(Bool wrTag, Mask mask, Maybe#(Tag) newTag, Line newLine)
    if (stage2_valid[0] && init);
    stage2_valid[0] <= False;

    Physical phys = unpack(stage2_address);
    if (wrTag) tagRams[stage2_way].writePorts[0].request(phys.index, newTag);
    dataRams.b.put(mask, {stage2_way, phys.index}, newLine);
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 0
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action enter(Bit#(32) addr, LLCPipeReq req) if (!stage1_valid[1] && init);
    Physical phys = unpack(addr);
    randomWay <= randomWay + 1;
    stage1_valid[1] <= True;
    stage1_address <= addr;
    stage1_request <= req;

    for (Integer w=0; w < valueof(Ways); w = w + 1) begin
      let tag <- tagRams[w].readPorts[0].request(phys.index);
      tagRegs[w] <= tag;
    end
  endmethod
endmodule

interface TransactionQueue;
  // Return if their is an inflight transaction using a given index, if true then the current
  // request must be delayed. I use an actionvalue here because otherwise bluespec try to
  // duplicate the ports
  (* always_ready *) method ActionValue#(Bool) search(Index index);

  (* always_ready *) method Bool canEnter;
  method Action enter(Index index, Bit#(SourceW) source);

  // Inform the transaction queue that an evict transaction finished
  (* always_ready *) method Action evictDone(Bit#(SourceW) source);

  // Inform the transaction queue that a refill transaction finished
  (* always_ready *) method Action refillDone(Bit#(SourceW) source);
endinterface

typedef 16 TQ_SIZE;

(* synthesize *)
module mkTransactionQueue(TransactionQueue);
  Vector#(TQ_SIZE, Reg#(Bit#(SourceW))) sources <- replicateM(mkRegU);
  Vector#(TQ_SIZE, Reg#(Index)) indices <- replicateM(mkRegU);
  Reg#(Vector#(TQ_SIZE, Bool)) refill[2] <- mkCReg(2, replicate(False));
  Reg#(Vector#(TQ_SIZE, Bool)) evict[2] <- mkCReg(2, replicate(False));
  Reg#(Bit#(TLog#(TQ_SIZE))) head <- mkReg(0);
  Reg#(Bit#(TLog#(TQ_SIZE))) tail <- mkReg(0);

  ///////////////////////////////////////////////////////////////////////////////////////
  // Search for hazards
  ///////////////////////////////////////////////////////////////////////////////////////
  method ActionValue#(Bool) search(Index index);
    Bool found = False;

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) if (evict[1][i] || refill[1][i]) begin
      found = found || indices[i] == index;
    end

    return found;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 0: add a new transaction, initialy support that we muts evict and refill a line
  ///////////////////////////////////////////////////////////////////////////////////////
  method Bool canEnter = !evict[1][head] && !refill[1][head];
  method Action enter(Index index, Bit#(SourceW) source) if (!evict[1][head] && !refill[1][head]);
    refill[1][head] <= True;
    sources[head] <= source;
    indices[head] <= index;
    evict[1][head] <= True;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Mark an evict transaction as done or useless (hit)
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action evictDone(Bit#(SourceW) source);
    Vector#(TQ_SIZE, Bool) v = evict[0];

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) if (sources[i] == source) begin
      v[i] = False;
    end

    evict[0] <= v;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Mark a refill transaction as done or useless (hit)
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action refillDone(Bit#(SourceW) source);
    Vector#(TQ_SIZE, Bool) v = refill[0];

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) if (sources[i] == source) begin
      v[i] = False;
    end

    refill[0] <= v;
  endmethod
endmodule
