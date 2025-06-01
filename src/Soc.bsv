import TLTypes :: *;

import BlockRam :: *;
import BRAMCore :: *;
import TLBram :: *;

import BCache :: *;
import TLXBar :: *;

import Ehr :: *;
import Fifo :: *;

import Decode :: *;
import Utils :: *;

import MicroOp :: *;
import Fetch :: *;

import ControlFlow :: *;
import ALU :: *;
import Core :: *;

import Memory :: *;
import CompletionBuffer :: *;
import GetPut :: *;

import Cache :: *;

import Connectable :: *;

import TLBroadcast :: *;

import Vector :: *;
import BuildVector :: *;

typedef 32 AddrW;
typedef 32 DataW;
typedef 8 SizeW;
typedef 8 SourceW;
typedef 8 SinkW;

module mkRom(TLSlave#(AddrW,DataW,SizeW,SourceW,0));
  BRAM_DUAL_PORT_BE#(Bit#(AddrW), Bit#(DataW), TDiv#(DataW,8)) rom <-
    mkBRAMCore2BELoad(1024 * 1024 * 33, False, "Mem.hex", False);

  BramBE#(Bit#(AddrW), DataW) bram <- wrapBramBE(rom);

  TLSlave#(AddrW,DataW,SizeW,SourceW,0) ifc <- mkTLBram(32'h80000000, 1024*1024*33, bram);
  return ifc;
endmodule

module mkUart(TLSlave#(AddrW,DataW,SizeW,SourceW,SinkW));
  Fifo#(1, void) fifo <- mkPipelineFifo;

  BramBE#(Bit#(AddrW), DataW) bram = interface BramBE;
    method Action read(_) = fifo.enq(?);
    method Bool canRead = fifo.canEnq;
    method Bool canDeq = fifo.canDeq;
    method Action deq = fifo.deq;
    method response = ?;

    method Action write(Bit#(AddrW) addr, Bit#(DataW) data, Bit#(TDiv#(DataW,8)) mask);
      if (addr == 32'h10000000 && mask[0] == 1)
        $write("%c", data[7:0]);
    endmethod
  endinterface;

  TLSlave#(AddrW,DataW,SizeW,SourceW,SinkW) ifc <- mkTLBram(32'h10000000, 4096, bram);
  return ifc;
endmodule

module mkSoc(Empty);
  let rom <- mkRom;
  let core <- mkCore;

  function Bit#(1) rootSource(Bit#(SourceW) source) = source == 0 ? 0 : 1;
  function Bit#(0) rootSink(Bit#(SinkW) sink) = 0;
  function Bit#(0) rootAddr(Bit#(AddrW) addr) = 0;

  XBar#(1, 2, 32, 32, 8, 8, 8) xbar <-
    mkXBar(XBarConf{rootSource: rootSource, rootSink: rootSink, rootAddr: rootAddr, bce: True});

  // For each source, return the source managing the probe requests of that source
  function Bit#(sourceW) repr(Bit#(sourceW) source) = source;

  TLBroadcast#(AddrW,DataW,SizeW,SourceW,SinkW) broadcast <- mkTLBroadcast(TLBroadcastConf{
    mshr: 4,
    sink: 0,
    logSize: 6, // cache blocks are 16 bytes
    sources: vec(0,1),
    repr: repr
  });

  mkConnection(broadcast.coherent, xbar.masters[0]);

  mkDecreaseWidth(True, core.imaster, xbar.slaves[0]);
  //mkConnection(core.imaster, xbar.slaves[0]);

  //rule display_imaster if (core.imaster.channelA.canDeq);
  //  $display("imaster: 0x%h", core.imaster.channelA.first.address);
  //endrule

  mkConnection(xbar.slaves[1], core.dmaster);

  mkConnection(broadcast.uncoherent, rom);
endmodule
