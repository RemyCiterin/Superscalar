import RvInstr::*;
import MulDiv::*;

import BuildList::*;
//import BitUtils::*;
//import BUtils::*;

interface AluIfc;
  (* always_ready *) method Bool canEnter;
  method Action enter(AluRequest req);

  (* always_ready *) method AluResponse response;
  (* always_ready *) method Bool canDeq;
  method Action deq;
endinterface

(* synthesize *)
module mkAlu#(Bool multiplication, Bool division, Bool branch) (AluIfc);
  Reg#(Bool) valid[2] <- mkCReg(2, False);
  Reg#(AluRequest) request <- mkRegU;

  let isDivRem = List::elem(request.instr.opcode, lst(Div, Divu, Rem, Remu));

  let isMul = List::elem(request.instr.opcode, lst(Mul, Mulh, Mulhu, Mulhsu));

  MulServer multiplier <- mkMulServer;
  DivServer divider <- mkDivServer;

  Bool deqReady = valid[0] &&
    (!division || !isDivRem || divider.valid) &&
    (!multiplication || !isMul || multiplier.valid);

  method Bool canEnter = !valid[1];
  method Action enter(AluRequest req) if (!valid[1]);
    if (division && List::elem(req.instr.opcode, lst(Div, Divu, Rem, Remu))) begin
      divider.enter(DivRequest{
        isSigned: List::elem(req.instr.opcode, lst(Div, Rem)),
        rem: List::elem(req.instr.opcode, lst(Rem, Remu)),
        x1: req.rs1,
        x2: req.rs2
      });
    end

    if (multiplication && List::elem(req.instr.opcode, lst(Mul, Mulh, Mulhu, Mulhsu))) begin
      multiplier.enter(MulRequest{
        high: List::elem(req.instr.opcode, lst(Mulh, Mulhu, Mulhsu)),
        x1Signed: List::elem(req.instr.opcode, lst(Mul, Mulh, Mulhsu)),
        x2Signed: List::elem(req.instr.opcode, lst(Mul, Mulh)),
        x1: req.rs1,
        x2: req.rs2
      });
    end

    valid[1] <= True;
    request <= req;
  endmethod

  method canDeq = deqReady;

  method Action deq if (deqReady);
    valid[0] <= False;
  endmethod

  method AluResponse response;
    if (isDivRem && division) begin
      return AluResponse{
        rd: divider.response,
        pc: request.pc+4,
        exception: False,
        cause: ?,
        tval: ?
      };
    end else if (isMul && multiplication) begin
      return AluResponse{
        rd: multiplier.response,
        pc: request.pc+4,
        exception: False,
        cause: ?,
        tval: ?
      };
    end else return execAlu(request, branch);
  endmethod
endmodule

typedef struct {
  Bit#(32) pc;
  Bit#(32) rd;
  Bool exception;
  CauseException cause;
  Bit#(32) tval;
} AluResponse deriving(Bits);

typedef struct {
  Bit#(32) pc;
  Bit#(32) rs1;
  Bit#(32) rs2;
  RvInstr instr;
} AluRequest deriving(Bits);

function AluResponse execAlu(AluRequest req, Bool branch);
  let opcode = req.instr.opcode;
  let imm = req.instr.imm;
  let rs1 = req.rs1;
  let rs2 = req.rs2;
  let rs2orImm =
    req.instr.immValid ? req.instr.imm : req.rs2;
  Int#(32) srs1 = unpack(rs1);
  Int#(32) srs2 = unpack(rs2);
  Int#(32) srs2orImm = unpack(rs2orImm);
  let pc = req.pc;

  let rd = case (req.instr.opcode) matches
    Lui    : imm;
    Auipc  : pc + imm;
    Jalr   : req.pc + 4;
    Jal    : req.pc + 4;
    Add    : rs1 + rs2orImm;
    Sub    : rs1 - rs2orImm;
    And    : rs1 & rs2orImm;
    Or     : rs1 | rs2orImm;
    Xor    : rs1 ^ rs2orImm;
    Sltu   : rs1 < rs2orImm ? 1 : 0;
    Slt    : srs1 < srs2orImm ? 1 : 0;
    Sll    : rs1 << rs2orImm[4:0];
    Srl    : rs1 >> rs2orImm[4:0];
    Sra    : signedShiftRight(rs1, rs2orImm[4:0]);
    Sh1add : ((rs1 << 1) + rs2orImm);
    Sh2add : ((rs1 << 2) + rs2orImm);
    Sh3add : ((rs1 << 3) + rs2orImm);
    Andn   : rs1 & ~rs2;
    Orn    : rs1 | ~rs2;
    Xnor   : ~(rs1 ^ rs2);
    Clz    : countLeadingZeros(rs1);
    Ctz    : countTrailingZeros(rs1);
    Cpop   : countSetBits(rs1);
    Max    : srs1 < srs2 ? rs2 : rs1;
    Maxu   : rs1 < rs2 ? rs2 : rs1;
    Min    : srs1 > srs2 ? rs2 : rs1;
    Minu   : rs1 > rs2 ? rs2 : rs1;
    Sextb  : signExtend(rs1[7:0]);
    Sexth  : signExtend(rs1[15:0]);
    Zexth  : zeroExtend(rs1[15:0]);
    Rol    : ((rs1 << rs2[4:0]) | (rs1 >> (-rs2[4:0])));
    Ror    : ((rs1 >> rs2orImm[4:0]) | (rs1 << (-rs2orImm[4:0])));
    Orcb   : orCombine(rs1);
    Rev8   : revBytes(rs1);
    .*     : 0;
  endcase;

  let nextPc = case (req.instr.opcode) matches
    Bge  : srs1 >= srs2 ? pc + imm : pc + 4;
    Blt  : srs1 < srs2 ? pc + imm : pc + 4;
    Bgeu : rs1 >= rs2 ? pc + imm : pc + 4;
    Beq  : rs1 == rs2 ? pc + imm : pc + 4;
    Bne  : rs1 != rs2 ? pc + imm : pc + 4;
    Bltu : rs1 < rs2 ? pc + imm : pc + 4;
    Jalr : ((rs1 + imm) & ~1);
    Jal  : pc + imm;
    .*   : pc + 4;
  endcase;
  if (!branch) nextPc = pc+4;

  return AluResponse{
    cause: InstructionAddressMisaligned,
    exception: nextPc[1:0] != 0,
    tval: nextPc,
    pc: nextPc,
    rd: rd
  };
endfunction

function Bit#(n) countLeadingZeros(Bit#(n) x);
  Bool found = False;
  Bit#(n) ret = 32;

  for (Integer i=0; i < valueof(n); i = i + 1) if (!found && x[valueof(n)-1-i] == 1) begin
    ret = fromInteger(i);
    found = True;
  end

  return ret;
endfunction

function Bit#(n) countTrailingZeros(Bit#(n) x);
  Bool found = False;
  Bit#(n) ret = 32;

  for (Integer i=0; i < valueof(n); i = i + 1) if (!found && x[i] == 1) begin
    ret = fromInteger(i);
    found = True;
  end

  return ret;
endfunction

function Bit#(n) countSetBits(Bit#(n) x);
  Bit#(n) ret = 0;

  for (Integer i=0; i < valueof(n); i = i + 1) begin
    if (x[i] == 1) ret = ret + 1;
  end

  return ret;
endfunction

function Bit#(32) orCombine(Bit#(32) x);
  Bit#(32) ret = 0;

  ret[7:0] = x[7:0] == 0 ? 0 : 'hFF;
  ret[15:8] = x[15:8] == 0 ? 0 : 'hFF;
  ret[23:16] = x[23:16] == 0 ? 0 : 'hFF;
  ret[31:24] = x[31:24] == 0 ? 0 : 'hFF;

  return ret;
endfunction

function Bit#(32) revBytes(Bit#(32) x);
  Bit#(32) ret = 0;

  ret[7:0] = x[31:24];
  ret[15:8] = x[23:16];
  ret[23:16] = x[15:8];
  ret[31:24] = x[7:0];

  return ret;
endfunction

typedef struct {
  Bool store;
  Bit#(32) val;
  Bit#(32) address;
  AccessWidth width;
  Bool isUnsigned;
} LsuRequest deriving(Bits);

function LsuRequest getLsuRequest(AluRequest req);
  return LsuRequest{
    store: req.instr.opcode == Store,
    address: req.rs1 + req.instr.imm,
    isUnsigned: req.instr.isUnsigned,
    width: req.instr.accessWidth,
    val: req.rs2
  };
endfunction

// Return if a memory operation is aligned
function Bool lsuRequestAligned(LsuRequest req);
  return case (req.width) matches
    2'b10 : req.address[1:0] == 0;
    2'b01 : req.address[0:0] == 0;
    2'b00 : True;
  endcase;
endfunction

function Bit#(4) lsuRequestMask(LsuRequest req);
  return case (req.width) matches
    2'b00 : 4'b0001;
    2'b01 : 4'b0011;
    2'b10 : 4'b1111;
  endcase << req.address[1:0];
endfunction

function Bit#(32) lsuRequestData(LsuRequest req);
  return req.val << {req.address[1:0], 3'b000};
endfunction

function Bit#(32) lsuRequestRd(LsuRequest req, Bit#(32) resp);
  let data = resp >> {req.address[1:0], 3'b000};
  return case (req.width) matches
    2'b00 : req.isUnsigned ? zeroExtend(data[7:0]) : signExtend(data[7:0]);
    2'b01 : req.isUnsigned ? zeroExtend(data[15:0]) : signExtend(data[15:0]);
    2'b10 : data;
  endcase;
endfunction
