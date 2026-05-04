import Connectable::*;
import BuildVector::*;
import BRAMCore::*;
import Vector::*;
import RegFile::*;
import RvInstr::*;
import StmtFSM::*;
import Clocks::*;
import RvAlu::*;
import UART::*;

import BlueCheck::*;

import CC_LLC::*;
import TLXBar::*;
import TLTypes::*;
import TLBram::*;

import RvDCache::*;

import "BDPI" function Action clear_checker();
import "BDPI" function Action add_event_to_checker
  (Bit#(32) thread, Bool is_load, Bool is_store, Bit#(32) address, Bit#(32) data);
import "BDPI" function ActionValue#(Bool) run_checker(Bit#(32) cores);

/////////////////////////////////////////////////////////////////////////////////////////
// Address mapping, as the probability of choosing two times the same random address
// (as a 32 bits integer) is very low, address are encoded in 4 bit, and each bits set a
// random bit of the 32-bits output.
/////////////////////////////////////////////////////////////////////////////////////////
typedef Bit#(1) Addr;
typedef Bit#(32) Data;

typedef 4 PhysAddrBits;
typedef struct {
  Vector#(1, Bit#(PhysAddrBits)) map;
} AddrMap deriving(FShow, Bits);

/////////////////////////////////////////////////////////////////////////////////////////
// Injective generation of random address mappings
/////////////////////////////////////////////////////////////////////////////////////////
module [Specification] mkAddrMapGen(Gen#(AddrMap));
  Gen#(Bit#(PhysAddrBits)) generators[1];

  for (Integer i=0; i < 1; i = i + 1) generators[i] <- mkGen;

  method ActionValue#(AddrMap) gen;
    Vector#(1, Bit#(PhysAddrBits)) ret = newVector;

    for (Integer i=0; i < 1; i = i + 1) begin
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
  for (Integer i=0; i < 1; i = i + 1) begin
    ret[8 + bound((Bit#(5))'(zeroExtend(map.map[i])), 24)] = address[i];
  end

  return ret;
endfunction

/////////////////////////////////////////////////////////////////////////////////////////
// Simple system interface: each core can perform non-atomic memory operations (load+stores).
//
// During a store operation, the system use an unique identifier as the data, this ensure
// than the checker can identify the read-from relation just by looking at the loaded value.
/////////////////////////////////////////////////////////////////////////////////////////
interface CoreIfc;
  method Action load(Addr addr);
  method ActionValue#(Data) response;
  method Action store(Addr address);
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

  Reg#(Bit#(32)) event_id <- mkReg(0);

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

        event_id <= event_id + 1;
        wait_response <= True;
        last_load <= True;
      endmethod

      method Action store(Addr address) if (!wait_response);
        cache.lookup(DCacheReq{
          address: applyAddrMap(address, amap),
          data: event_id,
          opcode: St,
          mask: '1,
          amo: ?
        });

        event_id <= event_id + 1;
        wait_response <= True;
        last_load <= False;
      endmethod

      method ActionValue#(Data) response if (!wait_response);
        event_id <= event_id + 1;
        return last_response;
      endmethod
    endinterface;
  end

  interface cores = coresIfc;
  interface setAddrMap = amap._write;
endmodule

/////////////////////////////////////////////////////////////////////////////////////////
// Specification: compare the execution traces of the memory subsystem with the one of
// the golden model
/////////////////////////////////////////////////////////////////////////////////////////
module [Specification] mkSystemSpec#(Reset rst) (Empty);
  SystemIfc impl <- mkMemSys(reset_by rst);
  Reg#(Data) event_id <- mkReg(0, reset_by rst);
  Reg#(AddrMap) amap <- mkRegU(reset_by rst);

  let ensure <- mkEnsure;

  function Action setAddrMap(AddrMap m);
    action
      impl.setAddrMap(m);
      amap <= m;
    endaction
  endfunction

  pre("setAddrMap", setAddrMap);
  pre("clear", clear_checker);

  for (Integer i=0; i < valueof(NumCores); i = i + 1) begin
    function String mkName(String s) = primStringConcat(s, integerToString(i));

    function Action doStore(Addr addr);
      action
        add_event_to_checker(fromInteger(i), False, True, applyAddrMap(addr, amap), event_id);
        impl.cores[i].store(addr);
        event_id <= event_id + 1;
      endaction
    endfunction

    function Action doLoad(Addr addr);
      action
        add_event_to_checker(fromInteger(i), True, False, applyAddrMap(addr, amap), event_id);
        impl.cores[i].load(addr);
        event_id <= event_id + 1;
      endaction
    endfunction

    function Action doResp;
      action
        let resp <- impl.cores[i].response;
        add_event_to_checker(fromInteger(i), False, False, ?, resp);
        event_id <= event_id + 1;
      endaction
    endfunction

    prop(mkName("store"), doStore);
    prop(mkName("load"), doLoad);
    prop(mkName("resp"), doResp);
  end

  post("consistency_checker", action
    let sat <- run_checker(fromInteger(valueof(NumCores)));
    ensure(sat);
  endaction);
endmodule

/////////////////////////////////////////////////////////////////////////////////////////
// Test-bench: use iterative deepening to find small counter-examples
/////////////////////////////////////////////////////////////////////////////////////////
module [Module] mkSystemCheck();
  Clock clk <- exposeCurrentClock;
  MakeResetIfc r <- mkReset(0, True, clk);

  // Customise default BlueCheck parameters
  BlueCheck_Params params = bcParamsID(r);
  params.wedgeDetect      = True;
  params.id.initialDepth  = 10;
  function incr(x)        = x+10;
  params.id.incDepth      = incr;
  params.numIterations    = 10;
  params.id.testsPerDepth = 1000;

  // Generate checker
  Stmt s <- mkModelChecker(mkSystemSpec(r.new_rst), params);
  mkAutoFSM(s);
endmodule
