import BuildList::*;
import RvInstr::*;
import RvAlu::*;
import RvCSR::*;
import List::*;

interface SystemIfc;
  method ActionValue#(Bit#(32)) exception(Bit#(32) pc, CauseException cause, Bit#(32) tval);
  (* always_ready *) method Action incrret(Bit#(64) value);

  interface CsrUnitIfc exec;
endinterface

module mkSystemUnit#(Bit#(32) hart) (SystemIfc);
  let cycleCsr <- mkCycleCsr;
  let hartCsr <- mkMHartIdCsr(hart);
  let instrCsr <- mkInstructionCounterCsr;
  let trapCsr <- mkTrapCsr;

  let system <- mkCsrUnit(List::concat(lst(cycleCsr, instrCsr.csrs, hartCsr, trapCsr.csrs)));

  method incrret = instrCsr.incrret;
  interface exec = system;

  method ActionValue#(Bit#(32)) exception(Bit#(32) pc, CauseException exn, Bit#(32) tval);
    trapCsr.mcause <= zeroExtend(pack(exn));
    trapCsr.mtval <= tval;
    trapCsr.mepc <= pc;

    return trapCsr.mtvec;
  endmethod
endmodule
