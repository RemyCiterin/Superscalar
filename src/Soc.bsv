import BRAMCore::*;
import RegFile::*;
import RvInstr::*;
import RvAlu::*;
import UART::*;

import Fetch :: *;
import BranchPred::*;

import MulDiv :: *;

interface MainIfc;
  (* always_ready, always_enabled *)
  method Bit#(8) led;

  (* always_ready, always_enabled *)
  method Bit#(1) transmit;
endinterface

module mkSoc(MainIfc);
  let cpu <- mkCPU();
  method transmit = cpu.transmit;

  //Bool debug = False;

  //TxUART txUart <- mkTxUART(25_000_000 / 115200);

  //Reg#(Bit#(32)) cycle <- mkReg(0);
  //rule incr_cycle; cycle <= cycle+1; endrule

  //RegFile#(Bit#(5), Bit#(32)) counters <- mkRegFileFull;

  ////rule dump_counters if (cycle[16:0] < 23);
  ////  $display("op ", fshow(Operation'(unpack(cycle[4:0]))), ": ", counters.sub(cycle[4:0]));
  ////endrule

  //let maxAddr = 32*1024;

  //Reg#(Bit#(8)) state <- mkReg(-1);
  //Reg#(Bit#(32)) pc <- mkReg('h80000000);

  //Reg#(RvInstr) instr <- mkReg(?);

  //BRAM_PORT_BE#(Bit#(30), Bit#(32), 4) bram <-
  //  mkBRAMCore1BELoad(maxAddr, False, "Mem.hex", False);

  //RegFile#(ArchReg, Bit#(32)) rf <- mkRegFileFull;
  //Reg#(ArchReg) initReg <- mkReg(0);

  //rule init if (state == -1);
  //  rf.upd(initReg, 0);
  //  counters.upd(initReg, 0);
  //  initReg <= initReg + 1;
  //  if (initReg+1 == 0) state <= 0;
  //endrule

  //rule fetch if (state == 0);
  //  if (debug) $write("pc: %h   ", pc);
  //  bram.put(0, (pc-'h80000000)[31:2], ?);
  //  state <= 1;
  //endrule

  //rule decode if (state == 1);
  //  instr <= decodeRvInstr(bram.read);
  //  state <= 2;

  //  let ins = decodeRvInstr(bram.read);
  //  counters.upd(pack(ins.opcode), counters.sub(pack(ins.opcode))+1);
  //endrule

  //let aluReq = AluRequest{
  //  instr: instr,
  //  rs1: rf.sub(instr.rs1),
  //  rs2: rf.sub(instr.rs2),
  //  pc: pc
  //};

  //let lsuReq = getLsuRequest(aluReq);
  //let address = (lsuReq.address - 'h80000000)[31:2];
  ////address = address < maxAddr ? address : 0;

  //rule exec if (state == 2 && instr.opcode != Load && instr.opcode != Store);
  //  if (debug) $display("exec ", showRvInstr(instr));
  //  let resp = execAlu(aluReq);

  //  if (debug) $display("    ", showReg(instr.rd), " := %h", resp.rd);
  //  if (instr.rd != archZero) rf.upd(instr.rd, resp.rd);
  //  pc <= resp.pc;
  //  state <= 0;
  //endrule

  //rule store if (state == 2 && instr.opcode == Store);
  //  if (debug) $display("exec ", showRvInstr(instr));
  //  let mask = lsuRequestMask(lsuReq);
  //  let data = lsuRequestData(lsuReq);
  //  //bram.put(mask, address, data);
  //  if (address < maxAddr) bram.put(mask, address, data);
  //  if (debug) $display("    mem[%h] = %h when %b", lsuReq.address, data, mask);

  //  if (lsuReq.address == 'h10000000 && mask[0] == 1) begin
  //    //$write("%c", data[7:0]);
  //    txUart.put(data[7:0]);
  //  end

  //  pc <= pc + 4;
  //  state <= 0;
  //endrule

  //rule loadReq if (state == 2 && instr.opcode == Load);
  //  bram.put(0, address, ?);
  //  state <= 3;
  //endrule

  //rule loadResp if (state == 3);
  //  if (debug) $display("exec ", showRvInstr(instr));
  //  if (debug) $write("    mem[%h] : ", lsuReq.address);
  //  if (debug) $display(showReg(instr.rd), " := %h", lsuRequestRd(lsuReq, bram.read));
  //  if (instr.rd != archZero) rf.upd(instr.rd, lsuRequestRd(lsuReq, bram.read));
  //  pc <= pc + 4;
  //  state <= 0;
  //endrule

  //method led = state;
endmodule

module mkSocSim(Empty);
  MainIfc main <- mkSoc;
endmodule
