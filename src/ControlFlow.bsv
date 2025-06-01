import MicroOp :: *;
import Vector :: *;
import Decode :: *;
import Utils :: *;
import CSR :: *;

export controlFlow;

function ExecOutput controlFlow(ExecInput req);
  ExecOutput resp = mapMicroOp(constFn(defaultValue), req);
  Bit#(32) rs1 = req.val[0];
  Bit#(32) rs2 = req.val[1];
  Int#(32) rs1_int = unpack(rs1);
  Int#(32) rs2_int = unpack(rs2);

  case (req.instr) matches
    tagged Btype {op: .op} : begin
      Bool take_branch =
        case (op) matches
          BEQ : rs1 == rs2;
          BNE : rs1 != rs2;
          BLT : rs1_int < rs2_int;
          BGE : rs1_int >= rs2_int;
          BLTU : rs1 < rs2;
          BGEU : rs1 >= rs2;
      endcase;

      resp.val.nextPc = take_branch ? req.pc + immediateBits(req.instr) : req.pc + 4;
      resp.val.rdVal = 0;
    end
    tagged Itype {op: JALR} : begin
      resp.val.nextPc = (rs1 + immediateBits(req.instr)) & ~1;
      resp.val.rdVal = req.pc + 4;
    end
    tagged Jtype .* : begin
      resp.val.nextPc = req.pc + immediateBits(req.instr);
      resp.val.rdVal = req.pc + 4;
    end
  endcase

  resp.cause = INSTRUCTION_ADDRESS_MISALIGNED;
  resp.exception = resp.val.nextPc[1:0] != 0;
  resp.tval = resp.val.nextPc;

  return resp;
endfunction
