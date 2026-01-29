import RevertingVirtualReg::*;
import Vector :: *;

typedef Vector#(n, Reg#(t)) Ehr#(numeric type n, type t);

/*
This register type have the following constraints:
  forall i < j, w[i] < r[j]
  forall i < j, r[i] < w[j]
  forall i < j, w[i] < w[j]
  forall i j, r[i] is conflict free with r[j]
  forall i, w[i] conflict with w[i]
*/

module mkEhr#(t init) (Ehr#(n, t)) provisos(Bits#(t, tWidth));
  Vector#(n, Reg#(Bool)) order <- replicateM(mkRevertingVirtualReg(False));
  Vector#(n, RWire#(t)) wires <- replicateM(mkUnsafeRWire);
  Reg#(t) register <- mkReg(init);

  Vector#(n, Reg#(t)) ifc = newVector;

  function t read(Integer i);
    t value = register;
    for (Integer j=0; j < i; j = j + 1) begin
      if (wires[j].wget matches tagged Valid .val)
        value = val;
    end

    return value;
  endfunction

  (* fire_when_enabled, no_implicit_conditions *)
  rule ehr_canon;
    register <= read(valueOf(n));
  endrule

  for(Integer i=0; i < valueOf(n); i = i + 1) begin
    ifc[i] = interface Reg;
      method Action _write(t x);
        wires[i].wset(order[i] ? read(i) : x);
        order[i] <= True;
      endmethod

      method t _read();
        Bool valid = True;
        for (Integer j=i; j < valueOf(n); j = j + 1) begin
          valid = valid && !order[j];
        end

        return valid ? read(i) : ?;
      endmethod
    endinterface;
  end

  return ifc;
endmodule

interface FWire#(type t);
  (* always_ready *)
  method Bool valid;

  (* always_ready *)
  method t _read;
endinterface

module mkFWire#(t value) (FWire#(t)) provisos(Bits#(t,tW));
  Wire#(Bool) present <-mkDWire(False);
  Wire#(t) val <- mkDWire(?);

  rule ehr_canon;
    present <= True;
    val <= value;
  endrule

  method t _read = val;
  method Bool valid = present;
endmodule
