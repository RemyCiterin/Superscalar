import BuildVector :: *;
import MicroOp :: *;
import Vector :: *;
import Memory :: *;
import Decode :: *;
import Utils :: *;
import Fifo :: *;
import Ehr :: *;

import CSR :: *;
import ALU :: *;
import ControlFlow :: *;
import Vector :: *;

import Cache :: *;
import TLTypes :: *;
import BCache :: *;

interface ExecPort;
  interface FifoI#(ExecInput) enter;
  interface FifoO#(ExecOutput) issue;
endinterface

(* synthesize *)
module mkAlu(ExecPort);
  Fifo#(2, ExecInput) inQ <- mkFifo;

  interface enter = toFifoI(inQ);

  interface issue = interface FifoO;
    method first = execAlu(inQ.first);
    method canDeq = inQ.canDeq;
    method deq = inQ.deq;
  endinterface;
endmodule

(* synthesize *)
module mkControl(ExecPort);
  Fifo#(2, ExecInput) inQ <- mkFifo;

  interface enter = toFifoI(inQ);

  interface issue = interface FifoO;
    method first = controlFlow(inQ.first);
    method canDeq = inQ.canDeq;
    method deq = inQ.deq;
  endinterface;
endmodule

interface DMEM_IFC;
  interface FifoI#(ExecInput) enter;
  interface FifoO#(ExecOutput) issue;
  interface FifoI#(Bool) commit;

  interface TLMaster#(32,32,8,8,8) master;
endinterface

// A naive memory unit with only one inflight request at any given time

(* synthesize *)
module mkDMem(DMEM_IFC);
  Fifo#(2, ExecInput) inQ <- mkFifo;
  Fifo#(2, ExecOutput) outQ <- mkFifo;
  Fifo#(1, Bool) commitQ <- mkBypassFifo;

  let cache <- mkDefaultDCache;

  rule setSource;
    cache.setSource(1);
  endrule

  Reg#(Bit#(3)) state <- mkReg(0);

  let req = inQ.first;
  let addr = req.val[0] + immediateBits(req.instr);

  rule startStore if (state == 0 && isStore(req.instr));
    ExecOutput resp = mapMicroOp(constFn(defaultValue), req);
    resp.val.nextPc = req.pc + 4;

    let size = case (req.instr) matches
      tagged Stype {op: SW} : 2'b11;
      tagged Stype {op: SH} : 2'b01;
      tagged Stype {op: SB} : 2'b00;
    endcase;

    if ((size & addr[1:0]) != 0) begin
      resp.cause = STORE_AMO_ADDRESS_MISALIGNED;
      resp.exception = True;
      resp.tval = addr;
    end

    outQ.enq(resp);

    state <= 3;
  endrule

  rule commitStore if (state == 3);
    let send = commitQ.first;
    commitQ.deq;

    let data = req.val[1] << {addr[1:0], 3'b000};
    let mask = case (req.instr) matches
      tagged Stype {op: SW} : 4'b1111;
      tagged Stype {op: SH} : 4'b0011;
      tagged Stype {op: SB} : 4'b0001;
    endcase << {addr[1:0]};

    if (send && addr != 32'h10000000) begin
      //$display("addr: 0x%h data: 0x%h mask: 0b%b", addr, data, mask);
      cache.send(addr & ~32'b11, tagged BCache::Store{
        data: data,
        mask: mask
      });
      state <= 4;
    end else begin
      if (send && addr == 32'h10000000 && mask[0] == 1)
        $write("%c", data[7:0]);
      state <= 0;
      inQ.deq;
    end
  endrule

  rule receiveStoreResponse if (state == 4);
    let _ <- cache.receive;
    state <= 0;
    inQ.deq;
  endrule

  rule sendReadRequest if (state == 0 && isLoad(req.instr));
    cache.send(addr & ~32'b11, BCache::Load);

    state <= 1;
  endrule

  rule receiveReadResponse if (state == 1);
    let beat <- cache.receive;

    ExecOutput resp = mapMicroOp(constFn(defaultValue), req);
    resp.val.nextPc = req.pc + 4;

    beat = beat >> {addr[1:0], 3'b000};

    match {.size, .data} = case (req.instr) matches
      tagged Itype {op: tagged Load LHU} : tuple2(2'b01, zeroExtend(beat[15:0]));
      tagged Itype {op: tagged Load LBU} : tuple2(2'b00, zeroExtend(beat[7:0]));
      tagged Itype {op: tagged Load LH} : tuple2(2'b01, signExtend(beat[15:0]));
      tagged Itype {op: tagged Load LB} : tuple2(2'b00, signExtend(beat[7:0]));
      tagged Itype {op: tagged Load LW} : tuple2(2'b11, beat);
    endcase;

    // Unaligned access
    if ((addr[1:0] & size) != 0) begin
      resp.cause = LOAD_ADDRESS_MISALIGNED;
      resp.exception = True;
      resp.tval = addr;
    end else begin
      resp.val.rdVal = data;
    end

    outQ.enq(resp);

    state <= 2;
  endrule

  rule commitRead if (state == 2);
    commitQ.deq;
    state <= 0;
    inQ.deq;
  endrule

  interface commit = toFifoI(commitQ);
  interface issue = toFifoO(outQ);
  interface enter = toFifoI(inQ);

  interface master = cache.master;
endmodule
