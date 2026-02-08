import MultiRegFile :: *;
import RvBranchPred :: *;
import ForwardBRAM :: *;
import BuildVector :: *;
import BRAMCore :: *;
import RvDCache :: *;
import RegFile :: *;
import RvInstr :: *;
import RvFetch :: *;
import Vector :: *;
import Assert :: *;
import RvAlu :: *;
import RvCSR :: *;
import UART :: *;
import Fifo :: *;

import Connectable :: *;
import TLTypes :: *;
import TLBram :: *;

interface ExecStage1;
  // Forwarding signal doesn't depends of the valid signal
  (* always_ready *) method Maybe#(Bit#(32)) forward;

  (* always_ready *) method CauseException cause;
  (* always_ready *) method Bit#(32) nextPc;
  (* always_ready *) method Bool exception;
  (* always_ready *) method Bool valid;
  method Action commit(Bool keep);
endinterface

interface ExecStage2;
  (* always_ready *) method Bit#(32) result;
  (* always_ready *) method Bool valid;
  method Action deq;
endinterface

interface ExecIfc#(numeric type numFwd);
  // Stage 1: put an alu request to the
  method Action enter(AluRequest alu, Epoch epoch);
  method Bool canEnter;

  // Stage 2: resolve control flow
  interface ExecStage1 exec1;

  // Stage 3: write back the result
  interface ExecStage2 exec2;
endinterface

(* synthesize *)
module mkExecAlu(ExecIfc#(1));
  let alu1 <- mkAlu(True, True, True);
  Reg#(AluRequest) request1 <- mkRegU;
  Reg#(Epoch) epoch1 <- mkRegU;

  Reg#(Bool) valid2[2] <- mkCReg(2, False);
  Reg#(Bit#(32)) value2 <- mkRegU;

  method canEnter = alu1.canEnter;
  method Action enter(AluRequest req, Epoch ep);
    alu1.enter(req);
    request1 <= req;
    epoch1 <= ep;
  endmethod

  interface ExecStage1 exec1;
    method forward = alu1.canDeq ? alu1.response.forward : Invalid;
    method valid = alu1.canDeq && !valid2[1];
    method exception = alu1.response.exception;
    method nextPc = alu1.response.pc;
    method cause = alu1.response.cause;

    method Action commit(Bool keep) if (alu1.canDeq && !valid2[1]);
      if (keep) valid2[1] <= True;
      value2 <= alu1.response.rd;
      alu1.deq;
    endmethod
  endinterface

  interface ExecStage2 exec2;
    method valid = valid2[0];
    method result = value2;

    method Action deq if (valid2[0]);
      valid2[0] <= False;
    endmethod
  endinterface
endmodule

interface LsuIfc;
  interface ExecIfc#(0) exec;

  (* always_ready, always_enabled *)
  method Bit#(1) transmit;

  interface TLMaster#(32, 32, 8, 8, 0) master;
endinterface

(* synthesize *)
module mkLsu(LsuIfc);
  Reg#(Bool) valid1[2] <- mkCReg(2, False);
  Reg#(AluRequest) request1 <- mkRegU;
  Reg#(Bit#(32)) pc1 <- mkRegU;
  Reg#(Epoch) epoch1 <- mkRegU;

  TxUART txUart <- mkTxUART(1_000_000 / 115200);
  Bit#(32) minDmemAddr = 'h80000000;
  Bit#(32) maxDmemAddr = 'h80000000 + 'hFFFFF;

  DCache#(8, 8) cache <- mkDCache(0);

  Fifo#(1, Tuple2#(LsuRequest, RvInstr)) buffer <- mkBypassFifo;
  Reg#(LsuRequest) request2 <- mkRegU;

  rule enq_stage2;
    match {.req, .instr} = buffer.first;

    cache.lookup(DCacheReq{
      opcode: req.store ? St : Ld,
      mask: lsuRequestMask(req),
      data: lsuRequestData(req),
      address: req.address,
      amo: ?
    });

    request2 <= req;
    buffer.deq;
  endrule

  interface ExecIfc exec;
    method canEnter = !valid1[1];
    method Action enter(AluRequest req, Epoch epoch) if (!valid1[1]);
      valid1[1] <= True;
      request1 <= req;
      epoch1 <= epoch;
      pc1 <= req.pc;
    endmethod

    interface ExecStage1 exec1;
      method forward = Invalid;
      method nextPc = pc1 + 4;
      method cause =
        request1.instr.opcode == Load ? LoadAddressMisaligned : StoreAmoAddressMisaligned;
      method exception = !lsuRequestAligned(getLsuRequest(request1));
      method valid = valid1[0] && buffer.canEnq;

      method Action commit(Bool keep) if (valid1[0] && buffer.canEnq);
        if (keep) begin
          buffer.enq(tuple2(getLsuRequest(request1), request1.instr));
        end
        valid1[0] <= False;
      endmethod
    endinterface

    interface ExecStage2 exec2;
      method result = lsuRequestRd(request2, cache.response);
      method valid = cache.valid;

      method Action deq if (cache.valid);
        let address = (request2.address - 'h80000000) >> 2;
        let mask = lsuRequestMask(request2);
        let data = lsuRequestData(request2);

        cache.deq(True);
        if (request2.store && request2.address == 'h10000000 && mask[0] == 1) begin
          $write("%c", data[7:0]);
          //txUart.put(data[7:0]);
          $fflush(stdout);
        end
      endmethod
    endinterface
  endinterface

  interface master = cache.master;

  method transmit = txUart.transmit;
endmodule
