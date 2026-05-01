import BuildList::*;
import RvInstr::*;
import RvAlu::*;
import RvCSR::*;
import List::*;

interface SystemIfc;
  method ActionValue#(Bit#(32)) exception(Bit#(32) pc, CauseException cause, Bit#(32) tval);
  method ActionValue#(Bit#(32)) interrupt(Bit#(32) pc, CauseInterrupt cause, Bit#(32) tval);
  (* always_ready *) method Action incrret(Bit#(64) value);

  interface CsrUnitIfc exec;
endinterface

(* synthesize *)
module mkSystemUnit#(Bit#(32) hart) (SystemIfc);
  function Bool isCsrRW(Operation opcode);
    return List::elem(opcode, lst(Csrrw, Csrrs, Csrrc));
  endfunction

  let cycleCsr <- mkCycleCsr;
  let hartCsr <- mkMHartIdCsr(hart);
  let instrCsr <- mkInstructionCounterCsr;
  let trapCsr <- mkTrapCsr;

  let csrs <- mkCsrUnit(List::concat(lst(cycleCsr, instrCsr.csrs, hartCsr, trapCsr.csrs)));

  Reg#(Bool) valid[2] <- mkCReg(2, False);
  Reg#(AluRequest) request <- mkRegU;
  Reg#(Priv) priv <- mkRegU;

  AluResponse response = csrs.response;

  if (request.instr.opcode == Mret) begin
    response.exception = False;
    response.pc = trapCsr.mepc;
    response.forward = Invalid;
  end

  method incrret = instrCsr.incrret;

  interface exec = csrs;
  //interface CsrUnitIfc exec;
  //  method Bool canEnter = csrs.canEnter && !valid[1];
  //  method Action enter(AluRequest req, Priv pr) if (csrs.canEnter && !valid[1]);
  //    if (isCsrRW(req.instr.opcode)) csrs.enter(req, pr);
  //    valid[1] <= True;
  //    request <= req;
  //    priv <= pr;
  //  endmethod

  //  method AluResponse response = response;
  //  method Bool canDeq = valid[0] && (csrs.canDeq || !isCsrRW(request.instr.opcode));
  //  method Action deq(Bool commit) if (valid[0] && (csrs.canDeq || !isCsrRW(request.instr.opcode)));
  //    if (isCsrRW(request.instr.opcode)) csrs.deq(commit);
  //    valid[0] <= False;
  //  endmethod
  //endinterface

  method ActionValue#(Bit#(32)) exception(Bit#(32) pc, CauseException exn, Bit#(32) tval);
    trapCsr.mcause <= zeroExtend(pack(exn));
    trapCsr.mtval <= tval;
    trapCsr.mepc <= pc;

    return trapCsr.mtvec;
  endmethod

  method ActionValue#(Bit#(32)) interrupt(Bit#(32) pc, CauseInterrupt exn, Bit#(32) tval);
    trapCsr.mcause <= (1 << 31) | zeroExtend(pack(exn));
    trapCsr.mtval <= tval;
    trapCsr.mepc <= pc;

    return trapCsr.mtvec;
  endmethod
endmodule
