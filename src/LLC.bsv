import MultiRegFile :: *;
import BRAMCore :: *;
import RegFile :: *;
import TLTypes :: *;
import TLUtils :: *;
import Assert :: *;
import Vector :: *;
import Fifo :: *;

import CachePipe :: *;

// Define the parameter of the cache
typedef 256 LineW; // Width (in bits) of one cache line
typedef 256 Sets;  // Number of "set"
typedef 8 Ways;    // Number of element per "set"
typedef 4 TQ_SIZE; // Maximum number of concurent requests
typedef 32 AddrW;  // Width (in bits) of the tilelink "address" field
typedef 8 SourceW; // Width (in bits) of the tilelink "source" field
typedef 8 SizeW;   // Width (in bits) of the tilelink "size" field

typedef TDiv#(LineW,8) MaskW;
typedef TLog#(TDiv#(LineW,8)) OffsetW;
typedef Bit#(LineW) Line;

typedef Bit#(TLog#(TQ_SIZE)) Transaction;

typedef TLog#(Sets) IndexW;
typedef TSub#(AddrW, TAdd#(IndexW, OffsetW)) TagW;

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

`define TL_LLC AddrW, LineW, SizeW, SourceW, 0

interface LLC;
  interface TLSlave#(`TL_LLC) slave;
  interface TLMaster#(`TL_LLC) master;
endinterface

(* synthesize *)
module mkLLC(LLC);
  ///////////////////////////////////////////////////////////////////////////////////////
  // Slave bus interface (from compute units)
  ///////////////////////////////////////////////////////////////////////////////////////
  Fifo#(2, ChannelA#(`TL_LLC)) sinkA <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sourceD <- mkFifo;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Master bus interface (to memory)
  ///////////////////////////////////////////////////////////////////////////////////////
  Fifo#(2, ChannelA#(`TL_LLC)) evictBuffer <- mkFifo;
  Fifo#(2, ChannelA#(`TL_LLC)) refillBuffer <- mkFifo;
  Fifo#(2, ChannelD#(`TL_LLC)) sinkD <- mkFifo;

  ///////////////////////////////////////////////////////////////////////////////////////
  // MSHR file: scheduler and associated requests
  ///////////////////////////////////////////////////////////////////////////////////////
  RegFile#(Transaction, ChannelA#(`TL_LLC)) requests <- mkRegFileFull;
  TransactionQueue transactions <- mkTransactionQueue;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Cache pipeline (contains the states of each line)
  ///////////////////////////////////////////////////////////////////////////////////////
  CachePipe#(TagW, Ways, IndexW, Line, LLCRequest) pipeline <- mkCachePipe;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Retry an old request or allocate a new one, have a lower priority than the memory port
  ///////////////////////////////////////////////////////////////////////////////////////
  rule lookup_cpu if (!sinkD.canDeq);
    let tr_opt = transactions.scheduler;
    if (tr_opt matches tagged Valid .tr) begin
      // We can retry al older request
      let request = requests.sub(tr);
      //pipeline.enter(request.address, tr, ChannelA(request));
      transactions.retry(tr);

      Physical phys = unpack(request.address);
      pipeline.enter(
        phys.tag, phys.index, Invalid,
        LLCRequest{transaction: tr, request: ChannelA(request), address: pack(phys)}
      );
    end else begin
      // Try a new incomming request, block if their is a data hazard
      // (the "set" of the new requets is already used by an order request)
      Physical phys = unpack(sinkA.first.address);

      Bool blocked <- transactions.search(phys.index);
      if (!blocked) begin
        let tr <- transactions.enter(phys.index);
        //$display("start cpu request", fshow(sinkA.first), " t%h", tr);
        //pipeline.enter(sinkA.first.address, tr, ChannelA(sinkA.first));
        pipeline.enter(
          phys.tag,
          phys.index,
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
  // Accept a response from memory
  ///////////////////////////////////////////////////////////////////////////////////////
  rule lookup_mem;
    //$display("receive mem response: ", fshow(sinkD.first));
    Transaction tr = truncate(sinkD.first.source >> 1);
    Physical phys = unpack(requests.sub(tr).address);
    //pipeline.enter(requests.sub(tr).address, tr, ChannelD(sinkD.first));
    pipeline.enter(
      phys.tag,
      phys.index,
      Invalid,
      LLCRequest{
        transaction: tr,
        address: pack(phys),
        request: ChannelD(sinkD.first)
      }
    );
    sinkD.deq;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Dequeue a memory response from the pipeline, and free the associated ressources
  // (clear the refill/evict bit of the associated MSHR)
  ///////////////////////////////////////////////////////////////////////////////////////
  rule pipeline_deq_d if (pipeline.valid &&& pipeline.request matches tagged ChannelD .request);
    Physical phys = unpack(pipeline.address);

    if (request.opcode == AccessAckData) begin
      transactions.refillDone(pipeline.transaction);
      pipeline.deq(True, True, Valid(phys.tag), request.data);

      // Evict the old cache line
      if (pipeline.tag matches tagged Valid .tag) begin
        evictBuffer.enq(ChannelA{
          opcode: PutData,
          address: pack(Physical{tag: tag, index: phys.index, offset: 0}),
          size: fromInteger(valueof(TLog#(TDiv#(LineW,8)))),
          source: 2*zeroExtend(pipeline.transaction),
          data: pipeline.data,
          mask: -1
        });
      end else begin
        transactions.evictDone(pipeline.transaction);
      end
    end else if (request.opcode == AccessAck) begin
      transactions.evictDone(pipeline.transaction);
      pipeline.deq(False, False, ?, ?);
    end else begin
      $display("LLC: invalid memory response");
      $finish;
    end
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Dequeue a cpu request from the pipeline, deq the request in case of a hit, or start
  // a refill/evict sequence (forward progress: never allocate ressources here)
  ///////////////////////////////////////////////////////////////////////////////////////
  rule pipeline_deq_a if (pipeline.valid &&& pipeline.request matches tagged ChannelA .request);
    Physical phys = unpack(request.address);

    if (Valid(phys.tag) == pipeline.tag) begin
      // Cache hit

      // Finish the transaction
      transactions.deq(pipeline.transaction);
      transactions.evictDone(pipeline.transaction);
      transactions.refillDone(pipeline.transaction);

      // Process request and send response, the "enq" is not blocking for forward progress
      // because the compute units are guaranties to accept those messages
      case (request.opcode) matches
        GetFull : begin
          //$display("respond: 0x%h\n", pipeline.line);
          pipeline.deq(False, False, ?, ?);
          sourceD.enq(ChannelD{
            opcode: AccessAckData,
            size: request.size,
            source: request.source,
            data: pipeline.data,
            sink: ?
          });
        end
        PutData : begin
          Vector#(TDiv#(LineW,8), Bit#(8)) newData = unpack(pipeline.data);
          for (Integer i=0; i < valueof(LineW)/8; i = i + 1) begin
            if (request.mask[i] == 1) newData[i] = request.data[8*i+7:8*i];
          end

          pipeline.deq(False, True, ?, pack(newData));
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
      pipeline.deq(False, False, ?, ?);

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

typedef struct {
  LLCSink request;
  Bit#(AddrW) address;
  Transaction transaction;
} LLCRequest deriving(Bits);

typedef union tagged {
  ChannelA#(`TL_LLC) ChannelA;
  ChannelD#(`TL_LLC) ChannelD;
} LLCSink deriving(Bits);

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
  // Stage 0: add a new transaction, initialy suppose that we muts evict and refill a line
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
