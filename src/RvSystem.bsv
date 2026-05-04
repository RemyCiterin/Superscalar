import BuildList::*;
import RvInstr::*;
import RvAlu::*;
import RvCSR::*;
import List::*;

interface SystemIfc;
  method ActionValue#(Bit#(32)) exception(Bit#(32) pc, CauseException cause, Bit#(32) tval);
  method ActionValue#(Bit#(32)) interrupt(Bit#(32) pc, CauseInterrupt cause, Bit#(32) tval);
  (* always_ready *) method Maybe#(CauseInterrupt) readyInterrupt;
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
  let pendingCsr <- mkInterruptPendingCsr;
  let enableCsr <- mkInterruptEnableCsr;
  let scratchCsr <- mkScratchCsr;
  let statusCsr <- mkStatusCsr;
  let delegCsr <- mkDelegCsr;
  let satpCsr <- mkSatpCsr;

  let csrs <- mkCsrUnit(List::concat(lst(
    cycleCsr,
    instrCsr.csrs,
    hartCsr,
    trapCsr.csrs,
    pendingCsr.csrs,
    enableCsr.csrs,
    statusCsr.csrs,
    delegCsr.csrs,
    scratchCsr
  )));

  Reg#(Bool) valid[2] <- mkCReg(2, False);
  Reg#(AluRequest) request <- mkRegU;
  Reg#(Priv) priv <- mkRegU;

  AluResponse response = csrs.response;
  Action do_deq = noAction;

  if (request.instr.opcode == Mret) begin
    response.cause = IllegalInstruction;
    response.exception = priv != Machine;
    response.pc = trapCsr.mepc;
    response.forward = Invalid;
    response.tval = request.pc;
    response.flush = True;

    do_deq = action
      Priv new_priv = unpack(statusCsr.mpp);

      if (new_priv == Machine) statusCsr.mie <= statusCsr.mpie;
      else statusCsr.sie <= statusCsr.spie;

      statusCsr.mpie <= 0;
      statusCsr.mpp <= 0;
      priv <= new_priv;
    endaction;
  end

  function ActionValue#(Bit#(32)) doException(Bool exn, Bit#(32) pc, Bit#(4) cause, Bit#(32) tval);
    actionvalue
      Bool toS =
        priv == User &&
        (exn ? delegCsr.medeleg : delegCsr.mideleg)[cause] == 1;

      if (toS) begin
        priv <= Supervisor;
        trapCsr.scause <= (zeroExtend(pack(!exn)) << 31) | zeroExtend(cause);
        trapCsr.stval <= tval;
        trapCsr.sepc <= pc;

        statusCsr.spp <= pack(priv != User);
        statusCsr.spie <= statusCsr.sie;
        statusCsr.sie <= 0;
      end else begin
        priv <= Machine;
        trapCsr.mcause <= (zeroExtend(pack(!exn)) << 31) | zeroExtend(cause);
        trapCsr.mtval <= tval;
        trapCsr.mepc <= pc;

        statusCsr.mpie <= priv == Machine ? statusCsr.mie : statusCsr.sie;
        statusCsr.mpp <= pack(priv);
        statusCsr.mie <= 0;
      end

      Bit#(32) tvec = toS ? trapCsr.stvec : trapCsr.mtvec;
      Bit#(32) base = tvec & ~'b11;
      return tvec[1:0] == 'b01 && !exn ? base + zeroExtend(cause)*4 : base;
    endactionvalue
  endfunction

  method incrret = instrCsr.incrret;

  method Maybe#(CauseInterrupt) readyInterrupt;
    Bit#(16) rdy = truncate(pendingCsr.all & enableCsr.all);

    Bit#(16) machine_mask = rdy & ~truncate(delegCsr.mideleg);
    Bool machine_en = statusCsr.mie == 1 || priv < Machine;

    Bit#(16) supervisor_mask = rdy & truncate(delegCsr.mideleg);
    Bool supervisor_en = (statusCsr.sie == 1 && priv == Supervisor) || priv == User;

    Bit#(16) mask = machine_en ? machine_mask : (supervisor_en ? supervisor_mask : 0);

    Bit#(4) cause = 0;
    for (Integer i=0; i < 16; i = i + 1) if (mask[15-i] == 1) cause = fromInteger(15-i);
    return mask == 0 ? Invalid : Valid(unpack(cause));
  endmethod

  interface CsrUnitIfc exec;
    method Bool canEnter = csrs.canEnter && !valid[1];
    method Action enter(AluRequest req, Priv pr) if (csrs.canEnter && !valid[1]);
      if (isCsrRW(req.instr.opcode)) csrs.enter(req, pr);
      valid[1] <= True;
      request <= req;
      priv <= pr;
    endmethod

    method AluResponse response = response;
    method Bool canDeq = valid[0] && (csrs.canDeq || !isCsrRW(request.instr.opcode));
    method Action deq(Bool commit) if (valid[0] && (csrs.canDeq || !isCsrRW(request.instr.opcode)));
      if (isCsrRW(request.instr.opcode)) csrs.deq(commit);
      if (commit) do_deq;
      valid[0] <= False;
    endmethod
  endinterface

  method ActionValue#(Bit#(32)) exception(Bit#(32) pc, CauseException cause, Bit#(32) tval);
    let ret <- doException(True, pc, pack(cause), tval);
    return ret;
  endmethod

  method ActionValue#(Bit#(32)) interrupt(Bit#(32) pc, CauseInterrupt cause, Bit#(32) tval);
    let ret <- doException(False, pc, pack(cause), tval);
    return ret;
  endmethod
endmodule
