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
  (* always_ready *) method Action wakeupRs1(Bit#(32) value);
  (* always_ready *) method Action wakeupRs2(Bit#(32) value);

  // Forwarding signal doesn't depends of the valid signal
  (* always_ready *) method Maybe#(Bit#(32)) forward;

  (* always_ready *) method CauseException cause;
  (* always_ready *) method Bit#(32) nextPc;
  (* always_ready *) method Bool exception;
  (* always_ready *) method Bool valid;
  method Action commit(Bool keep);
endinterface

interface ExecStage2;
  (* always_ready *) method Action wakeupRs1(Bit#(32) value);
  (* always_ready *) method Action wakeupRs2(Bit#(32) value);

  // Forwarding signal doesn't depends of the valid signal
  (* always_ready *) method Maybe#(Bit#(32)) forward;

  (* always_ready *) method Bool valid;
  method Action deq;
endinterface

interface ExecStage3;
  (* always_ready *) method Bit#(32) result;
  (* always_ready *) method Bool valid;
  method Action deq;
endinterface

interface ExecIfc#(numeric type numFwd);
  // Stage 1: put an alu request to the
  method Action enter(AluRequest alu, Bool rdy1, Bool rdy2);
  method Bool canEnter;

  interface ExecStage1 exec1;
  interface ExecStage2 exec2;
  interface ExecStage3 exec3;
endinterface

(* synthesize *)
module mkExecAlu(ExecIfc#(1));
  let alu1 <- mkAlu(True, True, True);
  Reg#(AluRequest) request1 <- mkRegU;
  Reg#(Bool) late1 <- mkRegU;

  Reg#(Maybe#(Bit#(32))) rs1_exec1[2] <- mkCReg(2, Invalid);
  Reg#(Maybe#(Bit#(32))) rs2_exec1[2] <- mkCReg(2, Invalid);
  Reg#(Maybe#(Bit#(32))) rs1_exec2[2] <- mkCReg(2, Invalid);
  Reg#(Maybe#(Bit#(32))) rs2_exec2[2] <- mkCReg(2, Invalid);

  Reg#(Bool) valid2[2] <- mkCReg(2, False);
  Reg#(AluRequest) request2 <- mkRegU;
  Reg#(Bit#(32)) value2 <- mkRegU;
  Reg#(Bool) late2 <- mkRegU;

  Reg#(Bool) valid3[2] <- mkCReg(2, False);
  Reg#(AluRequest) request3 <- mkRegU;
  Reg#(Bit#(32)) value3 <- mkRegU;
  Reg#(Bool) late3 <- mkRegU;

  method canEnter = alu1.canEnter;
  method Action enter(AluRequest req, Bool rdy1, Bool rdy2);
    rs1_exec1[1] <= rdy1 ? Valid(req.rs1) : Invalid;
    rs2_exec1[1] <= rdy2 ? Valid(req.rs2) : Invalid;
    late1 <= !rdy1 || !rdy2;
    alu1.enter(req);
    request1 <= req;
  endmethod

  interface ExecStage1 exec1;
    method Action wakeupRs1(Bit#(32) value);
      if (!isValid(rs1_exec1[0])) rs1_exec1[0] <= Valid(value);
    endmethod

    method Action wakeupRs2(Bit#(32) value);
      if (!isValid(rs2_exec1[0])) rs2_exec1[0] <= Valid(value);
    endmethod

    method forward = alu1.canDeq && !late1 ? alu1.response.forward : Invalid;
    method valid = alu1.canDeq && !valid2[1];
    method exception = alu1.response.exception;
    method nextPc = alu1.response.pc;
    method cause = alu1.response.cause;

    method Action commit(Bool keep) if (alu1.canDeq && !valid2[1]);
      if (keep) valid2[1] <= True;
      rs1_exec2[1] <= rs1_exec1[1];
      rs2_exec2[1] <= rs2_exec1[1];
      value2 <= alu1.response.rd;
      request2 <= request1;
      late2 <= late1;
      alu1.deq;
    endmethod
  endinterface

  interface ExecStage2 exec2;
    method Action wakeupRs1(Bit#(32) value);
      if (!isValid(rs1_exec2[0])) rs1_exec2[0] <= Valid(value);
    endmethod

    method Action wakeupRs2(Bit#(32) value);
      if (!isValid(rs2_exec2[0])) rs2_exec2[0] <= Valid(value);
    endmethod

    method valid = valid2[0] && !valid3[1] && isValid(rs1_exec2[1]) && isValid(rs2_exec2[1]);
    method forward = valid2[0] && !late2 ? Valid(value2) : Invalid;

    method Action deq
      if (valid2[0] && !valid3[1] && isValid(rs1_exec2[1]) && isValid(rs2_exec2[1]));
      AluRequest req = request2;
      req.rs1 = validValue(rs1_exec2[1]);
      req.rs2 = validValue(rs2_exec2[1]);
      request3 <= req;

      valid2[0] <= False;
      valid3[1] <= True;
      value3 <= value2;
      late3 <= late2;
    endmethod
  endinterface

  interface ExecStage3 exec3;
    method valid = valid3[0];
    method result = late3 ? execAlu(request3, False).rd : value3;

    method Action deq if (valid3[0]);
      valid3[0] <= False;
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
  Reg#(Bool) valid3[2] <- mkCReg(2, False);
  Reg#(Bit#(32)) value3 <- mkRegU;

  Reg#(Bool) valid1[2] <- mkCReg(2, False);
  Reg#(AluRequest) request1 <- mkRegU;
  Reg#(Bit#(32)) pc1 <- mkRegU;

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
    method Action enter(AluRequest req, Bool rdy1, Bool rdy2) if (!valid1[1]);
      valid1[1] <= True;
      request1 <= req;
      pc1 <= req.pc;
    endmethod

    interface ExecStage1 exec1;
      method wakeupRs1(_) = noAction;
      method wakeupRs2(_) = noAction;
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
      method wakeupRs1(_) = noAction;
      method wakeupRs2(_) = noAction;
      method forward = cache.valid ? Valid(lsuRequestRd(request2, cache.response)) : Invalid;
      method valid = cache.valid && !valid3[1];

      method Action deq if (cache.valid && !valid3[1]);
        value3 <= lsuRequestRd(request2, cache.response);
        let address = (request2.address - 'h80000000) >> 2;
        let mask = lsuRequestMask(request2);
        let data = lsuRequestData(request2);
        valid3[1] <= True;

        cache.deq(True);
        if (request2.store && request2.address == 'h10000000 && mask[0] == 1) begin
          $write("%c", data[7:0]);
          //txUart.put(data[7:0]);
          $fflush(stdout);
        end
      endmethod
    endinterface

    interface ExecStage3 exec3;
      method valid = valid3[0];
      method result = value3;

      method Action deq if (valid3[0]);
        valid3[0] <= False;
      endmethod
    endinterface
  endinterface

  interface master = cache.master;

  method transmit = txUart.transmit;
endmodule
