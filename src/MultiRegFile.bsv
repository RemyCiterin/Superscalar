// This module defines register fiels with precise number of read and write ports. It use a
// Xor-based multi ported distributed RAM, doing so if we want to use `w` write ports and `r` read
// ports, the total number of copies that we need is `w * (w + r - 1)`
// In practice I tried to use less copies than that knowing the bluespec register files use `5` read
// ports, and some FPGA may use distributed RAM with multiple read ports.

import RegFile::*;
import Vector :: *;
import RevertingVirtualReg::*;

export ReadPort(..);
export WritePort(..);
export MultiRF(..);
export mkMultiRF;
export mkForwardMultiRF;

interface ReadPort#(type a, type t);
  (* always_ready *)
  method ActionValue#(t) request(a index);
endinterface

interface WritePort#(type a, type t);
  (* always_ready *)
  method Action request(a index, t value);
endinterface

interface MultiRF#(numeric type numRd, numeric type numWr, type a, type t);
  interface Vector#(numWr, WritePort#(a, t)) writePorts;
  interface Vector#(numRd, ReadPort#(a, t)) readPorts;
endinterface

// This interface is not exposed because it doesn't respect the scheduling rule `read < write`
module mkMultiReadRF#(a lo, a hi)
  (MultiRF#(numPort, 1, a, t)) provisos(Bits#(t, tW), Bits#(a, aW));
  Integer factor = 5;

  RegFile#(a, t) files[(valueOf(numPort) + factor - 1) / factor];

  for (Integer i=0; i < (valueOf(numPort) + factor - 1) / factor; i = i + 1) begin
    files[i] <- mkRegFileWCF(lo, hi);
  end

  Vector#(1, WritePort#(a, t)) writes = newVector;
  Vector#(numPort, ReadPort#(a, t)) reads= newVector;

  writes[0] = interface WritePort;
    method Action request(a index, t value);
      for (Integer i=0; i < (valueOf(numPort) + factor - 1) / factor; i = i + 1) begin
        files[i].upd(index, value);
      end
    endmethod
  endinterface;

  for (Integer i=0; i < valueOf(numPort); i = i + 1) begin
    Integer port = i / factor;

    reads[i] = interface ReadPort;
      method ActionValue#(t) request(a index);
        return files[port].sub(index);
      endmethod
    endinterface;
  end

  interface writePorts = writes;
  interface readPorts = reads;
endmodule

module mkMultiRF#(a lo, a hi)
  (MultiRF#(numRd, numWr, a, t)) provisos(Bits#(t, tW), Bits#(a, aW));
  MultiRF#(TAdd#(numRd, TSub#(numWr, 1)), 1, a, t) files[valueOf(numWr)];

  for (Integer i=0; i < valueOf(numWr); i = i + 1) begin
    files[i] <- mkMultiReadRF(lo, hi);
  end

  Vector#(numWr, WritePort#(a, t)) writes = newVector;
  Vector#(numRd, ReadPort#(a, t)) reads = newVector;

  // Ensure that read ports are scheduled before write ports: read ports can read `True` from those
  // wires only if the were not been clear by a write before in the scheduling
  Vector#(numWr, Reg#(Bool)) order <- replicateM(mkRevertingVirtualReg(True));

  for (Integer i=0; i < valueOf(numWr); i = i + 1) begin
    writes[i] = interface WritePort;
      method Action request(a index, t value);
        Bit#(tW) val = pack(value);

        for (Integer j=0; j < valueOf(numWr); j = j + 1) if (j != i) begin
          let x <- files[j].readPorts[valueOf(numRd) + (i > j ? i-1 : i)].request(index);
          val = val ^ pack(x);
        end

        files[i].writePorts[0].request(index, unpack(val));
        order[i] <= False;
      endmethod
    endinterface;
  end

  for (Integer i=0; i < valueOf(numRd); i = i + 1) begin
    reads[i] = interface ReadPort;
      method ActionValue#(t) request(a index);
        Bit#(tW) out = 0;

        for (Integer j=0; j < valueOf(numWr); j = j + 1) begin
          let val <- files[j].readPorts[i].request(index);
          out = out ^ pack(order[j] ? val : ?);
        end

        return unpack(out);
      endmethod
    endinterface;
  end

  interface readPorts = reads;
  interface writePorts = writes;
endmodule

// A multi port register file that forward it's data from the write port to the read ports
module mkForwardMultiRF#(a lo, a hi)
  (MultiRF#(numRd, numWr, a, t)) provisos(Bits#(t, tW), Bits#(a, aW), Eq#(a));
  MultiRF#(numRd, numWr, a, t) rf <- mkMultiRF(lo, hi);

  Vector#(numWr, WritePort#(a, t)) writes = newVector;
  Vector#(numRd, ReadPort#(a, t)) reads = newVector;

  Vector#(numWr, RWire#(Tuple2#(a,t))) writeWires <- replicateM(mkRWire);

  for (Integer i=0; i < valueOf(numWr); i = i + 1) begin
    writes[i] = interface WritePort;
      method Action request(a index, t value);
        writeWires[i].wset(tuple2(index, value));
      endmethod
    endinterface;

    (* fire_when_enabled, no_implicit_conditions *)
    rule rf_canon;
      if (writeWires[i].wget matches tagged Valid {.index, .value}) begin
        rf.writePorts[i].request(index, value);
      end
    endrule
  end

  for (Integer i=0; i < valueOf(numRd); i = i + 1) begin
    reads[i] = interface ReadPort;
      method ActionValue#(t) request(a index);
        t value <- rf.readPorts[i].request(index);

        for (Integer j=0; j < valueOf(numWr); j = j + 1) begin
          if (writeWires[j].wget matches tagged Valid {.i, .v} &&& index == i) value = v;
        end

        return value;
      endmethod
    endinterface;
  end

  interface readPorts = reads;
  interface writePorts = writes;
endmodule

(* synthesize *)
module testRF(MultiRF#(4, 2, Bit#(5), Bit#(32)));
  let rf <- mkMultiRF(0, 31);
  return rf;
endmodule
