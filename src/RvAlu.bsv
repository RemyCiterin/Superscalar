import RvInstr::*;
import MulDiv::*;

import BuildList::*;

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

  let isCount = List::elem(request.instr.opcode, lst(Clz, Cpop, Ctz));

  BitCounterIfc counter <- mkBitCounter;
  MulServer multiplier <- mkMulServer;
  DivServer divider <- mkDivServer;

  Bool deqReady = valid[0] &&
    (!division || !isDivRem || divider.valid) &&
    (!multiplication || !isMul || multiplier.valid) &&
    (!isCount || counter.valid);

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
    counter.enter(req);
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
        forward: Invalid,
        pc: request.pc+4,
        exception: False,
        cause: ?,
        tval: ?
      };
    end else if (isMul && multiplication) begin
      return AluResponse{
        rd: multiplier.response,
        forward: Invalid,
        pc: request.pc+4,
        exception: False,
        cause: ?,
        tval: ?
      };
    end else if (isCount) begin
      return AluResponse{
        rd: counter.response,
        forward: Invalid,
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
  Maybe#(Bit#(32)) forward;
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

  let rd_fwd = case (req.instr.opcode) matches
    Lui    : Valid(imm);
    Move   : Valid(rs1);
    Auipc  : Valid(pc + imm);
    Jalr   : Valid(req.pc + 4);
    Jal    : Valid(req.pc + 4);
    Add    : Valid(rs1 + rs2orImm);
    Sub    : Valid(rs1 - rs2orImm);
    And    : Valid(rs1 & rs2orImm);
    Or     : Valid(rs1 | rs2orImm);
    Xor    : Valid(rs1 ^ rs2orImm);
    Sltu   : Valid(rs1 < rs2orImm ? 1 : 0);
    Slt    : Valid(srs1 < srs2orImm ? 1 : 0);
    Sll    : Valid(rs1 << rs2orImm[4:0]);
    Srl    : Valid(rs1 >> rs2orImm[4:0]);
    Sra    : Valid(signedShiftRight(rs1, rs2orImm[4:0]));
    Sh1add : Valid(((rs1 << 1) + rs2orImm));
    Sh2add : Valid(((rs1 << 2) + rs2orImm));
    Sh3add : Valid(((rs1 << 3) + rs2orImm));
    Andn   : Valid(rs1 & ~rs2);
    Orn    : Valid(rs1 | ~rs2);
    Xnor   : Valid(~(rs1 ^ rs2));
    Max    : Valid(srs1 < srs2 ? rs2 : rs1);
    Maxu   : Valid(rs1 < rs2 ? rs2 : rs1);
    Min    : Valid(srs1 > srs2 ? rs2 : rs1);
    Minu   : Valid(rs1 > rs2 ? rs2 : rs1);
    Sextb  : Valid(signExtend(rs1[7:0]));
    Sexth  : Valid(signExtend(rs1[15:0]));
    Zexth  : Valid(zeroExtend(rs1[15:0]));
    Rol    : Valid(((rs1 << rs2[4:0]) | (rs1 >> (-rs2[4:0]))));
    Ror    : Valid(((rs1 >> rs2orImm[4:0]) | (rs1 << (-rs2orImm[4:0]))));
    Orcb   : Valid(orCombine(rs1));
    Rev8   : Valid(revBytes(rs1));
    default: Invalid;
  endcase;

  let rd = case (req.instr.opcode) matches
    //Clz    : countLeadingZeros(rs1);
    //Ctz    : countTrailingZeros(rs1);
    //Cpop   : countSetBits(rs1);
    default: validValue(rd_fwd);
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
    forward: rd_fwd,
    tval: nextPc,
    pc: nextPc,
    rd: rd
  };
endfunction

interface BitCounterIfc;
  (* always_ready *) method Action enter(AluRequest req);
  (* always_ready *) method Bit#(32) response;
  (* always_ready *) method Bool valid;
endinterface

(* synthesize *)
module mkBitCounter(BitCounterIfc);
  Reg#(Bit#(32)) operand <- mkRegU;
  Reg#(Operation) opcode <- mkRegU;
  Reg#(Bool) used <- mkReg(False);
  Reg#(Bit#(32)) index <- mkRegU;
  Reg#(Bit#(6)) acc <- mkRegU;
  Reg#(Bool) found <- mkRegU;

  rule step if (index != 0);
    Bool one = (operand & index) != 0;

    case (opcode) matches
      Cpop : acc <= one ? acc+1 : acc;
      Clz  : acc <= one ? 0 : acc + 1;
      Ctz  : begin
        if (!found && !one) acc <= acc + 1;
        found <= found || one;
      end
    endcase

    index <= index << 1;
  endrule

  method Action enter(AluRequest req);
    opcode <= req.instr.opcode;
    operand <= req.rs1;
    found <= False;
    used <= True;
    index <= 1;
    acc <= 0;
  endmethod

  method valid = used && index == 0;
  method response = zeroExtend(acc);
endmodule

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
