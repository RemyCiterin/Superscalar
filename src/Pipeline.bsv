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
import MulDiv :: *;

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
module mkAluWithMulDiv(ExecPort);
  Fifo#(4, Bit#(2)) kindQ <- mkFifo;
  let mul <- mkMulServer;
  let div <- mkDivServer;
  let alu <- mkAlu;

  function Bool canDeq;
    if (kindQ.canDeq && alu.issue.canDeq)
      return case (kindQ.first) matches
        2 : div.response.canDeq;
        1 : mul.response.canDeq;
        0 : True;
      endcase;
    else
      return False;
  endfunction

  interface FifoI enter;
    method Bool canEnq = alu.enter.canEnq && mul.request.canEnq && div.request.canEnq;
    method Action enq(ExecInput entry);
      alu.enter.enq(entry);

      case (entry.instr) matches
        tagged Rtype {op: MUL} : begin
          mul.request.enq(MulRequest{
            x1: entry.val[0], x2: entry.val[1],
            x1Signed: True, x2Signed: True, high: False
          });
          kindQ.enq(1);
        end
        tagged Rtype {op: MULH} : begin
          mul.request.enq(MulRequest{
            x1: entry.val[0], x2: entry.val[1],
            x1Signed: True, x2Signed: True, high: True
          });
          kindQ.enq(1);
        end
        tagged Rtype {op: MULHSU} : begin
          mul.request.enq(MulRequest{
            x1: entry.val[0], x2: entry.val[1],
            x1Signed: True, x2Signed: False, high: True
          });
          kindQ.enq(1);
        end
        tagged Rtype {op: MULHU} : begin
          mul.request.enq(MulRequest{
            x1: entry.val[0], x2: entry.val[1],
            x1Signed: False, x2Signed: False, high: True
          });
          kindQ.enq(1);
        end
        tagged Rtype {op: DIV} : begin
          div.request.enq(DivRequest{
            x1: entry.val[0], x2: entry.val[1],
            isSigned: True, rem: False
          });
          kindQ.enq(2);
        end
        tagged Rtype {op: DIVU} : begin
          div.request.enq(DivRequest{
            x1: entry.val[0], x2: entry.val[1],
            isSigned: False, rem: False
          });
          kindQ.enq(2);
        end
        tagged Rtype {op: REM} : begin
          div.request.enq(DivRequest{
            x1: entry.val[0], x2: entry.val[1],
            isSigned: True, rem: True
          });
          kindQ.enq(2);
        end
        tagged Rtype {op: REMU} : begin
          div.request.enq(DivRequest{
            x1: entry.val[0], x2: entry.val[1],
            isSigned: False, rem: True
          });
          kindQ.enq(2);
        end
        default: kindQ.enq(0);
      endcase
    endmethod
  endinterface

  interface FifoO issue;
    method Bool canDeq = canDeq;

    method first if (canDeq);
      ExecOutput ret = alu.issue.first;

      case (kindQ.first) matches
        1 : ret.val.rdVal = mul.response.first;
        2 : ret.val.rdVal = div.response.first;
      endcase

      return ret;
    endmethod

    method Action deq;
      alu.issue.deq;
      kindQ.deq;

      case (kindQ.first) matches
        1 : mul.response.deq;
        2 : div.response.deq;
      endcase
    endmethod
  endinterface
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
