import MultiRegFile :: *;
import BRAMCore :: *;
import RegFile :: *;
import TLTypes :: *;
import TLUtils :: *;
import Assert :: *;
import Vector :: *;
import Fifo :: *;

typedef 256 LineW;
typedef TDiv#(LineW,8) MaskW;
typedef TLog#(TDiv#(LineW,8)) OffsetW;
typedef Bit#(LineW) Line;

typedef 256 Sets;
typedef 8 Ways;

typedef 4 TQ_SIZE; // Number of MSHR
typedef Bit#(TLog#(TQ_SIZE)) Transaction;

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

(* synthesize *)
module mkLLC(LLC);
  // Slave interface
  Fifo#(2, ChannelA#(`TL_LLC)) sinkA <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sourceD <- mkFifo;

  // Master interface
  Fifo#(2, ChannelA#(`TL_LLC)) evictBuffer <- mkFifo;
  Fifo#(2, ChannelA#(`TL_LLC)) refillBuffer <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sinkD <- mkFifo;

  RegFile#(Transaction, ChannelA#(`TL_LLC)) requests <- mkRegFileFull;

  TransactionQueue transactions <- mkTransactionQueue;

  LLCPipe pipeline <- mkLLCPipe;

  rule lookup_cpu if (!sinkD.canDeq);
    let tr_opt = transactions.scheduler;
    if (tr_opt matches tagged Valid .tr) begin
      let request = requests.sub(tr);
      pipeline.enter(request.address, tr, ChannelA(request));
      transactions.retry(tr);
    end else begin
      Physical phys = unpack(sinkA.first.address);

      Bool blocked <- transactions.search(phys.index);
      if (!blocked) begin
        let tr <- transactions.enter(phys.index);
        //$display("start cpu request", fshow(sinkA.first), " t%h", tr);
        pipeline.enter(sinkA.first.address, tr, ChannelA(sinkA.first));
        requests.upd(tr, sinkA.first);
        sinkA.deq;
      end
    end
  endrule

  rule lookup_mem;
    //$display("receive mem response: ", fshow(sinkD.first));
    Transaction tr = truncate(sinkD.first.source >> 1);
    pipeline.enter(requests.sub(tr).address, tr, ChannelD(sinkD.first));
    sinkD.deq;
  endrule

  rule pipeline_deq_d if (pipeline.valid &&& pipeline.request matches tagged ChannelD .request);
    Physical phys = unpack(pipeline.address);

    if (request.opcode == AccessAckData) begin
      transactions.refillDone(pipeline.transaction);
      pipeline.deq(True, -1, Valid(phys.tag), request.data);

      // Evict the old cache line
      if (pipeline.tag matches tagged Valid .tag) begin
        evictBuffer.enq(ChannelA{
          opcode: PutData,
          address: pack(Physical{tag: tag, index: phys.index, offset: 0}),
          size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
          source: 2*zeroExtend(pipeline.transaction),
          data: pipeline.line,
          mask: -1
        });
      end else begin
        transactions.evictDone(pipeline.transaction);
      end
    end else if (request.opcode == AccessAck) begin
      transactions.evictDone(pipeline.transaction);
      pipeline.deq(False, 0, ?, ?);
    end else begin
      $display("LLC: invalid memory response");
      $finish;
    end
  endrule

  rule pipeline_deq_a if (pipeline.valid &&& pipeline.request matches tagged ChannelA .request);
    Physical phys = unpack(request.address);

    if (Valid(phys.tag) == pipeline.tag) begin
      // Cache hit

      // Finish the transaction
      transactions.deq(pipeline.transaction);
      transactions.evictDone(pipeline.transaction);
      transactions.refillDone(pipeline.transaction);

      // Process request and send response
      case (request.opcode) matches
        GetFull : begin
          //$display("respond: 0x%h\n", pipeline.line);
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
      pipeline.deq(False, 0, ?, ?);

      // Acquire the new cache line
      refillBuffer.enq(ChannelA{
        opcode: GetFull,
        address: pack(Physical{tag: phys.tag, index: phys.index, offset: 0}),
        size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
        source: 2*zeroExtend(pipeline.transaction)+1,
        mask: -1,
        data: ?
      });
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
  method Action enter(Bit#(32) address, Transaction tr, LLCPipeReq request);

  method Action deq(Bool wrTag, Mask mask, Maybe#(Tag) newTag, Line newLine);
  (* always_ready *) method Transaction transaction;
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
  Reg#(Transaction) stage1_transaction <- mkRegU;
  Reg#(LLCPipeReq) stage1_request <- mkRegU;
  Reg#(Bit#(32)) stage1_address <- mkRegU;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 2 states
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(Bool) stage2_valid[2] <- mkCReg(2, False);
  Reg#(Transaction) stage2_transaction <- mkRegU;
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
    stage2_transaction <= stage1_transaction;
    stage2_request <= stage1_request;
    stage2_address <= stage1_address;
    stage2_tag <= tag;
    stage2_way <= way;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 2
  ///////////////////////////////////////////////////////////////////////////////////////
  method transaction = stage2_transaction;
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
  method Action enter(Bit#(32) addr, Transaction tr, LLCPipeReq req) if (!stage1_valid[1] && init);
    Physical phys = unpack(addr);
    randomWay <= randomWay + 1;
    stage1_transaction <= tr;
    stage1_valid[1] <= True;
    stage1_address <= addr;
    stage1_request <= req;

    for (Integer w=0; w < valueof(Ways); w = w + 1) begin
      let tag <- tagRams[w].readPorts[0].request(phys.index);
      tagRegs[w] <= tag;
    end
  endmethod
endmodule

// The transaction queue is in charge of scheduling the requests/checking for hazards
interface TransactionQueue;
  // Return if their is an inflight transaction using a given index, if true then the current
  // request must be delayed. I use an actionvalue here because otherwise bluespec try to
  // duplicate the ports
  (* always_ready *) method ActionValue#(Bool) search(Index index);

  (* always_ready *) method Bool canEnter;
  method ActionValue#(Transaction) enter(Index index);

  // Search for a transaction to retry
  (* always_ready *) method Maybe#(Transaction) scheduler;

  // Retry a transaction
  (* always_ready *) method Action retry(Transaction tr);

  // Inform the transaction queue that an evict transaction finished
  (* always_ready *) method Action evictDone(Transaction tr);

  // Inform the transaction queue that a refill transaction finished
  (* always_ready *) method Action refillDone(Transaction tr);

  // Mark a transaction as finished
  (* always_ready *) method Action deq(Transaction tr);
endinterface

(* synthesize *)
module mkTransactionQueue(TransactionQueue);
  Vector#(TQ_SIZE, Reg#(Index)) indices <- replicateM(mkRegU);
  Reg#(Vector#(TQ_SIZE, Bool)) refill[2] <- mkCReg(2, replicate(False));
  Reg#(Vector#(TQ_SIZE, Bool)) evict[2] <- mkCReg(2, replicate(False));
  Reg#(Vector#(TQ_SIZE, Bool)) valid[2] <- mkCReg(2, replicate(False));
  Reg#(Transaction) head <- mkReg(0);
  Reg#(Transaction) tail <- mkReg(0);

  ///////////////////////////////////////////////////////////////////////////////////////
  // Search for hazards
  ///////////////////////////////////////////////////////////////////////////////////////
  method ActionValue#(Bool) search(Index index);
    Bool found = False;

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) if (valid[1][i]) begin
      found = found || indices[i] == index;
    end

    return found;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Search a transaction to retry
  ///////////////////////////////////////////////////////////////////////////////////////
  method Maybe#(Transaction) scheduler;
    Maybe#(Transaction) ret = Invalid;

    for (Integer i=0; i < valueof(TQ_SIZE); i = i + 1) begin
      if (valid[1][i] && !evict[1][i] && !refill[1][i])
        ret = Valid(fromInteger(i));
    end

    return ret;
  endmethod

  method Action retry(Transaction tr);
    dynamicAssert(valid[1][tr] && !evict[1][tr] && !refill[1][tr], "retry a blocked transaction");
    refill[1][tr] <= True;
    evict[1][tr] <= True;
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 0: add a new transaction, initialy support that we muts evict and refill a line
  ///////////////////////////////////////////////////////////////////////////////////////
  method Bool canEnter = !valid[1][head];
  method ActionValue#(Transaction) enter(Index index) if(!valid[1][head]);
    refill[1][head] <= True;
    evict[1][head] <= True;
    valid[1][head] <= True;
    indices[head] <= index;
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
  // Mark a transaction as finished
  ///////////////////////////////////////////////////////////////////////////////////////
  method Action deq(Transaction tr);
    valid[0][tr] <= False;
  endmethod
endmodule
