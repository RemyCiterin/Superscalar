import Connectable::*;
import BuildVector::*;
import BRAMCore::*;
import Vector::*;
import RegFile::*;
import RvInstr::*;
import Clocks::*;
import RvAlu::*;
import UART::*;

import BlueCheck::*;

import CC_LLC::*;
import TLXBar::*;
import TLTypes::*;
import TLBram::*;

import RvDCache::*;

/////////////////////////////////////////////////////////////////////////////////////////
// Address mapping, as the probability of choosing two times the same random address
// (as a 32 bits integer) is very low, address are encoded in 4 bit, and each bits set a
// random bit of the 32-bits output.
/////////////////////////////////////////////////////////////////////////////////////////
typedef Bit#(4) Addr;
typedef Bit#(32) Data;

typedef 4 PhysAddrBits;
typedef struct {
  Vector#(4, Bit#(PhysAddrBits)) map;
} AddrMap deriving(FShow, Bits);

/////////////////////////////////////////////////////////////////////////////////////////
// Injective generation of random address mappings
/////////////////////////////////////////////////////////////////////////////////////////
module [Specification] mkAddrMapGen(Gen#(AddrMap));
  Gen#(Bit#(PhysAddrBits)) generators[4];

  for (Integer i=0; i < 4; i = i + 1) generators[i] <- mkGen;

  method ActionValue#(AddrMap) gen;
    Vector#(4, Bit#(PhysAddrBits)) ret = newVector;

    for (Integer i=0; i < 4; i = i + 1) begin
      Bit#(PhysAddrBits) b <- generators[i].gen;
      ret[i] = b;

      for (Integer j=0; j < i; j = j + 1) begin
        for (Integer k=0; k < i; k = k + 1) begin
          if (ret[i] == ret[k]) ret[i] = ret[i] + 1;
        end
      end
    end

    return AddrMap{map: ret};
  endmethod
endmodule

instance MkGen#(AddrMap);
  mkGen = mkAddrMapGen;
endinstance

function Bit#(32) applyAddrMap(Addr address, AddrMap map);
  Bit#(32) ret = 0;
  for (Integer i=0; i < 4; i = i + 1) begin
    ret[8 + bound((Bit#(5))'(zeroExtend(map.map[i])), 24)] = address[i];
  end

  return ret;
endfunction

/////////////////////////////////////////////////////////////////////////////////////////
// Simple system interface: each core can perform non-atomic memory operations (load+stores)
/////////////////////////////////////////////////////////////////////////////////////////
interface CoreIfc;
  method Action load(Addr addr);
  method ActionValue#(Data) response;
  method Action store(Addr address, Data data);
endinterface

typedef 4 NumCores;
interface SystemIfc;
  method Action setAddrMap(AddrMap map);
  interface Vector#(NumCores, CoreIfc) cores;
endinterface

/////////////////////////////////////////////////////////////////////////////////////////
// Generate a small memory system with `NumCores` L1 caches and one centralised Last
// Level Cache
/////////////////////////////////////////////////////////////////////////////////////////
module mkMemSys(SystemIfc);
  Integer memSize = 'hFFFFFFF;
  BRAM_PORT_BE#(Bit#(32), Bit#(256), 32) dmem <-
    mkBRAMCore1BE(memSize, False);
  TLSlave#(32, 256, 8, 8, 8) dslave <- mkTLBram('h80000000, fromInteger(memSize), dmem);
  let llc <- mkLLC(vec(0, 1, 2, 3));
  mkConnection(llc.master, dslave);

  Reg#(AddrMap) amap <- mkRegU;

  Vector#(NumCores, CoreIfc) coresIfc = newVector;

  function Bit#(0) rootSink(Bit#(8) sink) = 0;
  function Bit#(0) rootAddr(Bit#(32) _) = 0;
  function Bit#(TLog#(NumCores)) rootSource(Bit#(8) src) = truncate(src);

  let conf = XBarConf{
    bce: True,
    rootSource: rootSource,
    rootSink: rootSink,
    rootAddr: rootAddr
  };
  XBar#(1, NumCores, 32, 256, 8, 8, 8) xbar <- mkXBar(conf);

  mkConnection(xbar.masters[0], llc.slave);

  for (Integer i=0; i < valueof(NumCores); i = i + 1) begin
    DCache#(8, 8, 8) cache <- mkDCache(fromInteger(i));
    mkIncreaseWidth(True, cache.master, xbar.slaves[i]);
    Reg#(Data) last_response <- mkReg(0);
    Reg#(Bool) wait_response <- mkReg(False);
    Reg#(Bool) last_load <- mkRegU;

    rule response if (wait_response);
      last_response <= last_load ? cache.response : 0;
      wait_response <= False;
      cache.deq(True);
    endrule

    coresIfc[i] = interface CoreIfc;
      method Action load(Addr address) if (!wait_response);
        cache.lookup(DCacheReq{
          address: applyAddrMap(address, amap),
          opcode: Ld,
          mask: '1,
          data: ?,
          amo: ?
        });

        wait_response <= True;
        last_load <= True;
      endmethod

      method Action store(Addr address, Data data) if (!wait_response);
        cache.lookup(DCacheReq{
          address: applyAddrMap(address, amap),
          opcode: St,
          data: data,
          mask: '1,
          amo: ?
        });

        wait_response <= True;
        last_load <= False;
      endmethod

      method ActionValue#(Data) response if (!wait_response);
        return last_response;
      endmethod
    endinterface;

  end

  interface cores = coresIfc;
  interface setAddrMap = amap._write;
endmodule

/////////////////////////////////////////////////////////////////////////////////////////
// Golden model of the memory system: each of the 16 possible virtual memory locations
// are stored into register
/////////////////////////////////////////////////////////////////////////////////////////
module mkGoldenSystem(SystemIfc);
  Vector#(16, Reg#(Data)) mem <- replicateM(mkReg(?));
  Vector#(NumCores, CoreIfc) coresIfc = newVector;
  Reg#(AddrMap) amap <- mkRegU;

  for (Integer i=0; i < valueof(NumCores); i = i + 1) begin
    Reg#(Data) last_load <- mkReg(0);

    coresIfc[i] = interface CoreIfc;
      method ActionValue#(Data) response;
        return last_load;
      endmethod

      method Action store(Addr addr, Data d);
        mem[addr] <= d;
        last_load <= 0;
      endmethod

      method Action load(Addr addr);
        last_load <= mem[addr];
      endmethod
    endinterface;
  end

  interface cores = coresIfc;
  method Action setAddrMap(AddrMap m);
    amap <= m;
  endmethod
endmodule

/////////////////////////////////////////////////////////////////////////////////////////
// Specification: compare the execution traces of the memory subsystem with the one of
// the golden model
/////////////////////////////////////////////////////////////////////////////////////////
module [Specification] mkSystemSpec#(Reset rst) (Empty);
  SystemIfc impl <- mkMemSys(reset_by rst);
  SystemIfc spec <- mkGoldenSystem(reset_by rst);

  function Action setAddrMap(AddrMap amap);
    action
      impl.setAddrMap(amap);
      spec.setAddrMap(amap);
    endaction
  endfunction

  pre("setAddrMap", setAddrMap);

  for (Integer i=0; i < valueof(NumCores); i = i + 1) begin
    function String mkName(String s) = primStringConcat(s, integerToString(i));
    equiv(mkName("load"), impl.cores[i].load, spec.cores[i].load);
    equiv(mkName("resp"), impl.cores[i].response, spec.cores[i].response);
    equiv(mkName("store"), impl.cores[i].store, spec.cores[i].store);
  end
endmodule

/////////////////////////////////////////////////////////////////////////////////////////
// Test-bench: use iterative deepening to find small counter-examples
/////////////////////////////////////////////////////////////////////////////////////////
module [Module] mkSystemCheck();
  Clock clk <- exposeCurrentClock;
  MakeResetIfc r <- mkReset(0, True, clk);
  blueCheckID(mkSystemSpec(r.new_rst), r);
endmodule
