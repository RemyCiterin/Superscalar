import BRAMCore::*;
import Vector::*;

export FORWARD_BRAM(..);
export FORWARD_BRAM_BE(..);

export mkForwardBRAMCore;
export mkForwardBRAMCoreLoad;
export mkForwardBRAMCoreBE;
export mkForwardBRAMCoreBELoad;

(* always_ready *)
interface FORWARD_BRAM#(type addr, type data);
  // Write request
  method Action write(addr a, data d);

  // Read request
  method Action read(addr a);

  // Read response
  method data response;
endinterface

(* always_ready *)
interface FORWARD_BRAM_BE#(type addr, type data, numeric type n);
  // Write request
  method Action write(Bit#(n) writeen, addr a, data d);

  // Read request
  method Action read(addr a);

  // Read response
  method data response;
endinterface

module mkForwardBRAMWrapper#(BRAM_DUAL_PORT#(addr, data) bram) (FORWARD_BRAM#(addr, data))
  provisos(Bits#(addr, addr_sz), Bits#(data, data_sz), Eq#(addr));

  Reg#(Bool) fwdValid <- mkReg(False);
  Reg#(data) fwdData <- mkReg(?);

  Wire#(Bool) loadValid <- mkDWire(False);
  Wire#(addr) loadAddr <- mkDWire(?);

  Wire#(Bool) storeValid <- mkDWire(False);
  Wire#(data) storeData <- mkDWire(?);
  Wire#(addr) storeAddr <- mkDWire(?);

  (* fire_when_enabled, no_implicit_conditions *)
  rule canon;
    if (loadValid) begin
      fwdData <= storeData;
      fwdValid <= storeValid && storeAddr == loadAddr;
    end
  endrule

  method Action write(addr a, data d);
    action
      bram.a.put(True, a, d);
      storeValid <= True;
      storeAddr <= a;
      storeData <= d;
    endaction
  endmethod

  method Action read(addr a);
    action
      bram.b.put(False, a, ?);
      loadValid <= True;
      loadAddr <= a;
    endaction
  endmethod

  method response = fwdValid ? fwdData : bram.b.read;
endmodule

module mkForwardBRAMWrapperBE#(BRAM_DUAL_PORT_BE#(addr, data, n) bram)
  (FORWARD_BRAM_BE#(addr, data, n))
  provisos(
    Eq#(addr),
    Bits#(addr, addr_sz),
    Bits#(data, data_sz),
    Div#(data_sz, n, chunk_sz),
    Mul#(chunk_sz, n, data_sz)
  );

  Reg#(Bit#(n)) fwdValid <- mkReg(0);
  Reg#(data) fwdData <- mkReg(?);

  Wire#(Bool) loadValid <- mkDWire(False);
  Wire#(addr) loadAddr <- mkDWire(?);

  Wire#(Bit#(n)) storeValid <- mkDWire(0);
  Wire#(data) storeData <- mkDWire(?);
  Wire#(addr) storeAddr <- mkDWire(?);

  (* fire_when_enabled, no_implicit_conditions *)
  rule canon;
    if (loadValid) begin
      fwdData <= storeData;
      fwdValid <= (storeValid != 0 && storeAddr == loadAddr) ? storeValid : 0;
    end
  endrule

  method Action write(Bit#(n) writeen, addr a, data d);
    action
      bram.a.put(writeen, a, d);
      storeValid <= writeen;
      storeAddr <= a;
      storeData <= d;
    endaction
  endmethod

  method Action read(addr a);
    action
      bram.b.put(0, a, ?);
      loadValid <= True;
      loadAddr <= a;
    endaction
  endmethod

  method response;
    Vector#(n, Bit#(chunk_sz)) data = unpack(pack(fwdData));
    Vector#(n, Bit#(chunk_sz)) resp = unpack(pack(bram.b.read));

    for (Integer i=0; i < valueOf(n); i = i + 1) begin
      if (fwdValid[i] == 1) resp[i] = data[i];
    end

    return unpack(pack(resp));
  endmethod
endmodule

module mkForwardBRAMCore#(Integer memSize) (FORWARD_BRAM#(addr, data))
  provisos(Eq#(addr), Bits#(addr, addr_sz), Bits#(data, data_sz));
  BRAM_DUAL_PORT#(addr, data) bram <- mkBRAMCore2(memSize, False);
  let ifc <- mkForwardBRAMWrapper(bram);
  return ifc;
endmodule

module mkForwardBRAMCoreLoad#(Integer memSize, String fileName, Bool binary)
  (FORWARD_BRAM#(addr, data)) provisos(Eq#(addr), Bits#(addr, addr_sz), Bits#(data, data_sz));
  BRAM_DUAL_PORT#(addr, data) bram <- mkBRAMCore2Load(memSize, False, fileName, binary);
  let ifc <- mkForwardBRAMWrapper(bram);
  return ifc;
endmodule

module mkForwardBRAMCoreBE#(Integer memSize) (FORWARD_BRAM_BE#(addr, data, n))
  provisos(
    Eq#(addr),
    Bits#(addr, addr_sz),
    Bits#(data, data_sz),
    Div#(data_sz, n, chunk_sz),
    Mul#(chunk_sz, n, data_sz)
  );
  BRAM_DUAL_PORT_BE#(addr, data, n) bram <- mkBRAMCore2BE(memSize, False);
  let ifc <- mkForwardBRAMWrapperBE(bram);
  return ifc;
endmodule

module mkForwardBRAMCoreBELoad#(Integer memSize, String fileName, Bool binary)
  (FORWARD_BRAM_BE#(addr, data, n))
  provisos(
    Eq#(addr),
    Bits#(addr, addr_sz),
    Bits#(data, data_sz),
    Div#(data_sz, n, chunk_sz),
    Mul#(chunk_sz, n, data_sz)
  );
  BRAM_DUAL_PORT_BE#(addr, data, n) bram <- mkBRAMCore2BELoad(memSize, False, fileName, binary);
  let ifc <- mkForwardBRAMWrapperBE(bram);
  return ifc;
endmodule
