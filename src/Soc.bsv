import Connectable::*;
import BRAMCore::*;
import RegFile::*;
import RvInstr::*;
import RvAlu::*;
import UART::*;

import LLC::*;
import TLXBar::*;
import TLTypes::*;
import TLBram::*;

import RvCore :: *;
import RvSystem::*;


interface MainIfc;
  (* always_ready, always_enabled *)
  method Bit#(8) led;

  (* always_ready, always_enabled *)
  method Bit#(1) transmit;
endinterface

(* synthesize *)
module mkSoc(MainIfc);
  let cpu <- mkCPU();

  Integer memSize = 'hFFFFF;

  BRAM_PORT_BE#(Bit#(32), Bit#(256), 32) dmem <-
    mkBRAMCore1BELoad(memSize, False, "Mem256.mem", False);
  TLSlave#(32, 256, 8, 8, 0) dslave <- mkTLBram('h80000000, fromInteger(memSize), dmem);
  let llc <- mkLLC;
  mkIncreaseWidth(False, cpu.dmaster, llc.slave);
  mkConnection(llc.master, dslave);

  //BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) dmem <-
  //  mkBRAMCore1BELoad(memSize, False, "Mem32.mem", False);
  //TLSlave#(32, 32, 8, 8, 0) dslave <- mkTLBram('h80000000, fromInteger(memSize), dmem);
  //mkConnection(cpu.dmaster, dslave);

  BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) imem <-
    mkBRAMCore1BELoad(memSize, False, "Mem32.mem", False);
  TLSlave#(32, 32, 8, 8, 0) islave <- mkTLBram('h80000000, fromInteger(memSize), imem);
  mkConnection(cpu.imaster, islave);


  method transmit = cpu.transmit;
endmodule

module mkSocSim(Empty);
  MainIfc main <- mkSoc;
endmodule
