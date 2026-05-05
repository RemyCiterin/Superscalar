import Connectable::*;
import BuildVector::*;
import BRAMCore::*;
import Vector::*;
import RegFile::*;
import RvInstr::*;
import RvAlu::*;
import UART::*;

import CC_LLC::*;
//import LLC::*;
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
module mkMultiSoc(MainIfc);
  let cpu0 <- mkCPU(0, 0, 1, 3);
  let cpu1 <- mkCPU(1, 0, 2, 4);

  rule set_interrupts;
    cpu0.setTimerInterrupt(False);
    cpu1.setTimerInterrupt(False);
    cpu0.setExternalInterrupt(False);
    cpu1.setExternalInterrupt(False);
    cpu0.setSoftwareInterrupt(False);
    cpu1.setSoftwareInterrupt(False);
  endrule

  Integer memSize = 'hFFFFFFF;

  BRAM_PORT_BE#(Bit#(32), Bit#(256), 32) dmem <-
    mkBRAMCore1BELoad(memSize, False, "Mem256.mem", False);
  TLSlave#(32, 256, 8, 8, 8) dslave <- mkTLBram('h80000000, fromInteger(memSize), dmem);
  let llc <- mkLLC(vec(1, 2, -1, -1));

  function rootSource(Bit#(8) src) = src == 1 ? 0 : 1;
  function rootSink(_) = 0;
  function rootAddr(_) = 0;

  let conf = XBarConf{
    bce: True,
    rootSource: rootSource,
    rootSink: rootSink,
    rootAddr: rootAddr
  };
  XBar#(1, 2, 32, 256, 8, 8, 8) xbar <- mkXBar(conf);

  mkConnection(llc.master, dslave);
  mkConnection(xbar.masters[0], llc.slave);
  mkIncreaseWidth(True, cpu0.dcache_master, xbar.slaves[0]);
  mkIncreaseWidth(True, cpu1.dcache_master, xbar.slaves[1]);

  BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) imem1 <-
    mkBRAMCore1BELoad(memSize, False, "Mem32.mem", False);
  TLSlave#(32, 32, 8, 8, 0) islave1 <- mkTLBram('h80000000, fromInteger(memSize), imem1);
  BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) imem0 <-
    mkBRAMCore1BELoad(memSize, False, "Mem32.mem", False);
  TLSlave#(32, 32, 8, 8, 0) islave0 <- mkTLBram('h80000000, fromInteger(memSize), imem0);
  mkConnection(cpu1.icache_master, islave1);
  mkConnection(cpu0.icache_master, islave0);

  method transmit = cpu0.transmit;
endmodule

(* synthesize *)
module mkSoc(MainIfc);
  //let ifc <- mkMultiSoc;
  //return ifc;

  let cpu0 <- mkCPU(0, 0, 1, 2);

  rule set_interrupts;
    cpu0.setTimerInterrupt(False);
    cpu0.setExternalInterrupt(False);
    cpu0.setSoftwareInterrupt(False);
  endrule

  Integer memSize = 'hFFFFFFF;

  //BRAM_PORT_BE#(Bit#(32), Bit#(256), 32) dmem <-
  //  mkBRAMCore1BELoad(memSize, False, "Mem256.mem", False);
  //TLSlave#(32, 256, 8, 8, 8) dslave <- mkTLBram('h80000000, fromInteger(memSize), dmem);
  //let llc <- mkLLC(vec(1, -1));
  //mkIncreaseWidth(True, cpu0.dcache_master, llc.slave);
  //mkConnection(llc.master, dslave);

  BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) dmem <-
    mkBRAMCore1BELoad(memSize, False, "Mem32.mem", False);
  TLSlave#(32, 32, 8, 8, 8) dslave <- mkTLBram('h80000000, fromInteger(memSize), dmem);
  mkConnection(cpu0.dcache_master, dslave);

  BRAM_PORT_BE#(Bit#(32), Bit#(32), 4) imem <-
    mkBRAMCore1BELoad(memSize, False, "Mem32.mem", False);
  TLSlave#(32, 32, 8, 8, 0) islave <- mkTLBram('h80000000, fromInteger(memSize), imem);
  mkConnection(cpu0.icache_master, islave);


  method transmit = cpu0.transmit;
endmodule

module mkSocSim(Empty);
  MainIfc main <- mkSoc;
endmodule
