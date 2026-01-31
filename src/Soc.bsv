import BRAMCore::*;
import RegFile::*;
import RvInstr::*;
import RvAlu::*;
import UART::*;

import RvCore :: *;
import RvCSR::*;

interface MainIfc;
  (* always_ready, always_enabled *)
  method Bit#(8) led;

  (* always_ready, always_enabled *)
  method Bit#(1) transmit;
endinterface

(* synthesize *)
module mkSoc(MainIfc);
  let cpu <- mkCPU();
  method transmit = cpu.transmit;
endmodule

module mkSocSim(Empty);
  MainIfc main <- mkSoc;
endmodule
