import Connectable :: *;
import SpecialFIFOs :: *;
import RegFile :: *;
import FIFOF :: *;
import Vector :: *;
import GetPut :: *;
import Ehr :: *;

interface Fifo#(numeric type n, type t);
  method Action enq(t value);
  method Bool canEnq;

  method Action deq;
  method Bool canDeq;
  method t first;
endinterface

interface FifoI#(type t);
  method Action enq(t value);
  method Bool canEnq;
endinterface

interface FifoO#(type t);
  method Action deq;
  method Bool canDeq;
  method t first;
endinterface

instance ToGet#(Fifo#(n, t), t);
  function Get#(t) toGet(Fifo#(n, t) fifo);
    return interface Get;
      method ActionValue#(t) get;
        actionvalue
          fifo.deq;
          return fifo.first;
        endactionvalue
      endmethod
    endinterface;
  endfunction
endinstance

instance ToGet#(FifoO#(t), t);
  function Get#(t) toGet(FifoO#(t) fifo);
    return interface Get;
      method ActionValue#(t) get;
        actionvalue
          fifo.deq;
          return fifo.first;
        endactionvalue
      endmethod
    endinterface;
  endfunction
endinstance

instance ToPut#(Fifo#(n, t), t);
  function Put#(t) toPut(Fifo#(n, t) fifo);
    return interface Put;
      method Action put(t value);
        action
          fifo.enq(value);
        endaction
      endmethod
    endinterface;
  endfunction
endinstance

instance ToPut#(FifoI#(t), t);
  function Put#(t) toPut(FifoI#(t) fifo);
    return interface Put;
      method Action put(t value);
        action
          fifo.enq(value);
        endaction
      endmethod
    endinterface;
  endfunction
endinstance

instance Connectable#(Fifo#(n, t), Fifo#(m, t));
  module mkConnection#(Fifo#(n, t) lhs, Fifo#(m, t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

instance Connectable#(Fifo#(n, t), Put#(t));
  module mkConnection#(Fifo#(n, t) lhs, Put#(t) rhs) (Empty);
    mkConnection(toGet(lhs), rhs);
  endmodule
endinstance

instance Connectable#(Get#(t), Fifo#(m, t));
  module mkConnection#(Get#(t) lhs, Fifo#(m, t) rhs) (Empty);
    mkConnection(lhs, toPut(rhs));
  endmodule
endinstance


instance Connectable#(Fifo#(n, t), FIFOF#(t));
  module mkConnection#(Fifo#(n, t) lhs, FIFOF#(t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

instance Connectable#(FIFOF#(t), Fifo#(m, t));
  module mkConnection#(FIFOF#(t) lhs, Fifo#(m, t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

instance Connectable#(FifoO#(t), FifoI#(t));
  module mkConnection#(FifoO#(t) lhs, FifoI#(t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

instance Connectable#(Fifo#(n, t), FifoI#(t));
  module mkConnection#(Fifo#(n, t) lhs, FifoI#(t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

instance Connectable#(FifoO#(t), Fifo#(m, t));
  module mkConnection#(FifoO#(t) lhs, Fifo#(m, t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

instance Connectable#(FifoO#(t), Put#(t));
  module mkConnection#(FifoO#(t) lhs, Put#(t) rhs) (Empty);
    mkConnection(toGet(lhs), rhs);
  endmodule
endinstance

instance Connectable#(Get#(t), FifoI#(t));
  module mkConnection#(Get#(t) lhs, FifoI#(t) rhs) (Empty);
    mkConnection(lhs, toPut(rhs));
  endmodule
endinstance


instance Connectable#(FifoO#(t), FIFOF#(t));
  module mkConnection#(FifoO#(t) lhs, FIFOF#(t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

instance Connectable#(FIFOF#(t), FifoI#(t));
  module mkConnection#(FIFOF#(t) lhs, FifoI#(t) rhs) (Empty);
    mkConnection(toGet(lhs), toPut(rhs));
  endmodule
endinstance

function FifoO#(t) toFifoO(Fifo#(n, t) fifo);
  return interface FifoO;
    method deq = fifo.deq;
    method first = fifo.first;
    method canDeq = fifo.canDeq;
  endinterface;
endfunction

function FifoI#(t) toFifoI(Fifo#(n, t) fifo);
  return interface FifoI;
  method canEnq = fifo.canEnq;
  method enq = fifo.enq;
  endinterface;
endfunction

module mkPipelineFifoBig(Fifo#(n, t)) provisos(Bits#(t, size_t));
  RegFile#(Bit#(TLog#(n)), t) data <- mkRegFileFull;

  Ehr#(2, Bit#(TLog#(n))) nextP <- mkEhr(0);
  Ehr#(2, Bit#(TLog#(n))) firstP <- mkEhr(0);
  Ehr#(2, Bool) empty <- mkEhr(True);
  Ehr#(2, Bool) full <- mkEhr(False);

  Bit#(TLog#(n)) max_index = fromInteger(valueOf(n) - 1);

  method canDeq = !empty[0];

  method t first if (!empty[0]);
    return data.sub(firstP[0]);
  endmethod

  method Action deq if (!empty[0]);
    let next_firstP = ( firstP[0] == max_index ? 0 : firstP[0] + 1 );
    full[0] <= False;

    firstP[0] <= next_firstP;
    if (next_firstP == nextP[0])
      empty[0] <= True;
  endmethod

  // at instant 1
  method canEnq = !full[1];

  method Action enq(t val) if (!full[1]);
    let next_nextP = (nextP[0] == max_index ? 0 : nextP[0] + 1);

    data.upd(nextP[0], val);
    empty[1] <= False;
    nextP[0] <= next_nextP;

    if (next_nextP == firstP[1])
      full[1] <= True;
  endmethod
endmodule

module mkPipelineFifoOne(Fifo#(n, t)) provisos(Bits#(t, size_t));
  Ehr#(2, Bool) valid <- mkEhr(False);
  Reg#(t) value <- mkReg(?);

  method canEnq = !valid[1];
  method canDeq = valid[0];
  method t first if (valid[0]);
    return value;
  endmethod

  method Action enq(t v) if (!valid[1]);
    action
      valid[1] <= True;
      value <= v;
    endaction
  endmethod

  method Action deq() if (valid[0]);
    action
      valid[0] <= False;
    endaction
  endmethod
endmodule

module mkPipelineFifo(Fifo#(n, t)) provisos(Bits#(t, size_t));
  Fifo#(n, t) fifo;

  if (valueOf(n) == 1) fifo <- mkPipelineFifoOne();
  else fifo <- mkPipelineFifoBig();

  return fifo;
endmodule

module mkSizeOneFifo(Fifo#(n, t)) provisos(Bits#(t, size_t));
  Reg#(Bool) valid <- mkReg(False);

  Reg#(t) elem <- mkReg(?);

  Wire#(t) enqVal <- mkDWire(?);
  Wire#(Bool) doEnq <- mkDWire(False);
  Wire#(Bool) doDeq <- mkDWire(False);

  (* no_implicit_conditions, fire_when_enabled *)
  rule ehr_canon;
    valid <= doEnq || (valid && !doDeq);
    elem <= doEnq ? enqVal : elem;
  endrule

  method Bool canDeq = valid;
  method t first if (valid) = elem;
  method Action deq if (valid);
    doDeq <= True;
  endmethod

  method canEnq = !valid;
  method Action enq(t x) if (!valid);
    doEnq <= True;
    enqVal <= x;
  endmethod
endmodule

module mkSizeTwoFifo(Fifo#(n, t)) provisos(Bits#(t, size_t));
  Reg#(Bool) valid0 <- mkReg(False);
  Reg#(Bool) valid1 <- mkReg(False);

  Reg#(t) elem0 <- mkReg(?);
  Reg#(t) elem1 <- mkReg(?);

  Wire#(t) enqVal <- mkDWire(?);
  Wire#(Bool) doEnq <- mkDWire(False);
  Wire#(Bool) doDeq <- mkDWire(False);

  (* no_implicit_conditions, fire_when_enabled *)
  rule ehr_canon;
    if (!valid0 || doDeq) begin
      // Forward value to position zero
      elem0 <= valid1 ? elem1 : enqVal;
      valid0 <= valid1 || doEnq;

      valid1 <= valid1 && doEnq;
      elem1 <= enqVal;
    end else begin
      elem1 <= doEnq ? enqVal : elem1;
      valid1 <= doEnq || valid1;
    end
  endrule

  method Bool canDeq = valid0;
  method t first if (valid0) = elem0;
  method Action deq if (valid0);
    doDeq <= True;
  endmethod

  method canEnq = !valid1 || !valid0;
  method Action enq(t x) if (!valid1 || !valid0);
    doEnq <= True;
    enqVal <= x;
  endmethod
endmodule

// WARNING: wrap canDeq to notEmpty, not true in the general case
module wrapFIFOF#(FIFOF#(t) fifo) (Fifo#(n,t));
  method deq = fifo.deq;
  method first = fifo.first;
  method canDeq = fifo.notEmpty;

  method enq = fifo.enq;
  method canEnq = fifo.notFull;
endmodule

// A fifo of size two without combinatorial path between both sides
module mkFifo(Fifo#(n, t)) provisos(Bits#(t, size_t));
  Fifo#(n,t) ifc = ?;

  case (valueOf(n))
    1 : ifc <- mkSizeOneFifo;
    2 : ifc <- mkSizeTwoFifo;
    default : begin
      Fifo#(TSub#(n,1),t) fifo1 <- mkBypassFifo;
      Fifo#(1,t) fifo2 <- mkPipelineFifo;

      rule connect_fifo;
        fifo2.enq(fifo1.first);
        fifo1.deq;
      endrule

      ifc = interface Fifo;
        method canEnq = fifo1.canEnq;
        method enq = fifo1.enq;

        method canDeq = fifo2.canDeq;
        method first = fifo2.first;
        method deq = fifo2.deq;
      endinterface;
    end
  endcase

  return ifc;
endmodule

module mkBypassFifo(Fifo#(n, t)) provisos(Bits#(t, size_t));
  let fifo <- mkSizedBypassFIFOF(valueOf(n));

  method canEnq = fifo.notFull;
  method canDeq = fifo.notEmpty;
  method first = fifo.first;
  method enq = fifo.enq;
  method deq = fifo.deq;
endmodule

// Return a Fifo that never accept/return any input/output
function Fifo#(n, t) nullFifo provisos(Bits#(t,tW));
  return interface Fifo;
    method Action deq if (False);
      noAction;
    endmethod

    method t first if (False);
      return ?;
    endmethod

    method Bool canDeq = False;

    method Action enq(t _in) if (False);
      noAction;
    endmethod

    method Bool canEnq = False;
  endinterface;
endfunction

// Return a FifoO that never return any output
function FifoO#(t) nullFifoO provisos(Bits#(t,tW));
  return toFifoO((Fifo#(0,t))'(nullFifo));
endfunction

// Return a FifoI that never accept any input
function FifoI#(t) nullFifoI provisos(Bits#(t,tW));
  return toFifoI((Fifo#(0,t))'(nullFifo));
endfunction
