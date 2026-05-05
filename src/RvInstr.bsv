import BuildList :: *;
import Vector :: *;

typedef Bit#(8) Epoch;

typedef 1 SupLogSize;

typedef TExp#(SupLogSize) SupSize;
typedef Vector#(SupSize, t) Super#(type t);
Integer supLogSize = valueOf(SupLogSize);
Integer supSize = valueOf(SupSize);

typedef Bit#(5) ArchReg;

ArchReg archZero = 0;

typedef Bit#(7) Opcode;
typedef Bit#(7) Funct7;
typedef Bit#(3) Funct3;
typedef Bit#(2) AccessWidth;

Bit#(32) nop = 32'h00000013;

typedef enum {
  // I
  Err,
  Move,
  Lui,
  Auipc,
  Add,
  Slt,
  Sltu,
  And,
  Or,
  Xor,
  Sll,
  Sra,
  Srl,
  Sub,
  Jal,
  Jalr,
  Beq,
  Bne,
  Blt,
  Bltu,
  Bge,
  Bgeu,
  Load,
  Store,
  Fence,
  FenceI,
  SfenceVma,
  Ebreak,
  Ecall,
  Mret,
  Sret,
  Wfi,

  // M
  Div,
  Divu,
  Rem,
  Remu,
  Mul,
  Mulh,
  Mulhu,
  Mulhsu,

  // Custom fixed-point multiplication
  FixedPointMul,

  // Custom GF(256) operations
  MulGF256,
  DivGF256,

  // Zba
  Sh1add,
  Sh2add,
  Sh3add,

  // Zbb
  Andn,
  Orn,
  Xnor,
  Clz,
  Ctz,
  Cpop,
  Max,
  Maxu,
  Min,
  Minu,
  Sextb,
  Sexth,
  Zexth,
  Rol,
  Ror,
  Orcb,
  Rev8,

  // Zicsr
  Csrrw,
  Csrrc,
  Csrrs,

  // Amo / Load reserve / Store conditional
  Loadr,
  Storec,
  Amoand,
  Amoadd,
  Amoor,
  Amoxor,
  Amomin,
  Amomax,
  Amominu,
  Amomaxu,
  Amoswap
} Operation deriving(Bits, FShow, Eq);

typedef Bit#(12) CsrId;

typedef struct {
  Bit#(32) raw;
  Operation opcode;
  ArchReg rd;
  ArchReg rs1;
  ArchReg rs2;
  Bit#(32) imm;
  Bool immValid;
  Bool isAcquire;
  Bool isRelease;
  AccessWidth accessWidth;
  Bool isUnsigned;
  Bool isMemAccess;
  CsrId csr;
  Bool csrI;
  Bool isSystem;
} RvInstr deriving(Bits, FShow);

function RvInstr decodeRvInstr(Bit#(32) data);
  Operation operation = Err;
  ArchReg rs1 = data[19:15];
  ArchReg rs2 = data[24:20];
  Bool isMemAccess = False;
  ArchReg rd = data[11:7];
  Bool isAcquire = False;
  Bool isRelease = False;
  Bit#(32) imm = ?;

  Bit#(3) funct3 = data[14:12];
  Bit#(7) funct7 = data[31:25];

  Bit#(7) opcode = data[6:0];

  let itype = case (opcode) matches
    7'b0001111 : True;
    7'b0000011 : True;
    7'b0010011 : True;
    7'b1100111 : True;
    7'b1110011 : True;
    .* : False;
  endcase;

  let utype = case (opcode) matches
    7'b0010111 : True;
    7'b0110111 : True;
    .* : False;
  endcase;

  let rtype = opcode == 7'b0110011 || opcode == 7'b0101111 || opcode == 7'b0001011;
  let stype = opcode == 7'b0100011;
  let jtype = opcode == 7'b1101111;
  let btype = opcode == 7'b1100011;

  if (itype) begin
    imm = signExtend(data[31:20]);

    operation = case (tuple4(opcode, funct7, funct3, rs2)) matches
      {7'b1110011, 7'b0010001, 3'b000, .*} : rd == 0 ? SfenceVma : Err;
      {7'b1110011, 7'b0011000, 3'b000, 5'b00010} : Mret;
      {7'b1110011, 7'b0001000, 3'b000, 5'b00010} : Sret;
      {7'b1110011, 7'b0000000, 3'b000, 5'b00000} : Ebreak;
      {7'b1110011, 7'b0000000, 3'b000, 5'b00001} : Ecall;
      {7'b1110011, 7'b0001000, 3'b000, 5'b00101} : Wfi;
      {7'b1110011, .*, 3'b101, .*} : Csrrw;
      {7'b1110011, .*, 3'b001, .*} : Csrrw;
      {7'b1110011, .*, 3'b110, .*} : Csrrs;
      {7'b1110011, .*, 3'b010, .*} : Csrrs;
      {7'b1110011, .*, 3'b111, .*} : Csrrc;
      {7'b1110011, .*, 3'b011, .*} : Csrrc;
      {7'b0010011, .*, 3'b000, .*} : Add;
      {7'b0010011, .*, 3'b010, .*} : Slt;
      {7'b0010011, .*, 3'b011, .*} : Sltu;
      {7'b0010011, .*, 3'b111, .*} : And;
      {7'b0010011, .*, 3'b110, .*} : Or;
      {7'b0010011, .*, 3'b100, .*} : Xor;
      {7'b1100111, .*, 3'b000, .*} : Jalr;
      {7'b0010011, 7'b0110000, 3'b001, 5'b00000} : Clz;
      {7'b0010011, 7'b0110000, 3'b001, 5'b00001} : Ctz;
      {7'b0010011, 7'b0110000, 3'b001, 5'b00010} : Cpop;
      {7'b0010011, 7'b0110000, 3'b001, 5'b00100} : Sextb;
      {7'b0010011, 7'b0110000, 3'b001, 5'b00101} : Sexth;
      {7'b0010011, 7'b0010100, 3'b101, 5'b00111} : Orcb;
      {7'b0010011, 7'b0110100, 3'b101, 5'b11000} : Rev8;
      {7'b0010011, 7'b0110000, 3'b101, .*} : Ror;
      {7'b0010011, 7'b0000000, 3'b001, .*} : Sll;
      {7'b0010011, 7'b0000000, 3'b101, .*} : Srl;
      {7'b0010011, 7'b0100000, 3'b101, .*} : Sra;
      {7'b0000011, .*, .*} :
        funct3[1:0] == 'b11 || funct3 == 3'b110 ? Err : Load;
      {7'b0001111, .*, 3'b000, .*} : rd == 0 ? Fence : Err;
      {7'b0001111, 7'b0000000, 3'b001, 5'b00000} : FenceI;
      .* : Err;
    endcase;

    if (operation == Load || operation == Fence) isMemAccess = True;

    if (operation != SfenceVma) rs2 = 0;
    let nullRd =
      operation == Mret || operation == Sret || operation == Ebreak ||
      operation == Ecall || operation == Wfi || operation == FenceI;
    if (nullRd) rd = archZero;
  end

  if (stype) begin
    rd = archZero;
    isMemAccess = True;
    imm = signExtend({data[31:25], data[11:7]});
    operation = funct3[2] == 1 || funct3[1:0] == 'b11 ? Err : Store;
  end

  if (btype) begin
    rd = archZero;
    imm = signExtend({data[31], data[7], data[30:25], data[11:8], 1'b0});
    operation = case (funct3) matches
      3'b000 : Beq;
      3'b001 : Bne;
      3'b100 : Blt;
      3'b110 : Bltu;
      3'b101 : Bge;
      3'b111 : Bgeu;
      .* : Err;
    endcase;
  end

  if (utype) begin
    imm = signExtend({data[31:12], 12'b0});
    operation = opcode == 7'b0010111 ? Auipc : Lui;
    rs1 = archZero;
    rs2 = archZero;
  end

  if (jtype) begin
    imm = signExtend({data[31], data[19:12], data[20], data[30:21], 1'b0});
    operation = Jal;
  end

  if (rtype) begin
    operation = case (tuple3(opcode, funct7, funct3)) matches
      {7'b0110011, 7'b0000100, 3'b100} : rs2 == 0 ? Zexth : Err;
      {7'b0110011, 7'b0110000, 3'b001} : Rol;
      {7'b0110011, 7'b0110000, 3'b101} : Ror;
      {7'b0110011, 7'b0000101, 3'b110} : Max;
      {7'b0110011, 7'b0000101, 3'b111} : Maxu;
      {7'b0110011, 7'b0000101, 3'b100} : Min;
      {7'b0110011, 7'b0000101, 3'b101} : Minu;
      {7'b0110011, 7'b0100000, 3'b111} : Andn;
      {7'b0110011, 7'b0100000, 3'b110} : Orn;
      {7'b0110011, 7'b0100000, 3'b100} : Xnor;
      {7'b0110011, 7'b0010000, 3'b010} : Sh1add;
      {7'b0110011, 7'b0010000, 3'b100} : Sh2add;
      {7'b0110011, 7'b0010000, 3'b110} : Sh3add;
      {7'b0110011, 7'b0000001, 3'b000} : Mul;
      {7'b0110011, 7'b0000001, 3'b001} : Mulh;
      {7'b0110011, 7'b0000001, 3'b010} : Mulhsu;
      {7'b0110011, 7'b0000001, 3'b011} : Mulhu;
      {7'b0110011, 7'b0000001, 3'b100} : Div;
      {7'b0110011, 7'b0000001, 3'b101} : Divu;
      {7'b0110011, 7'b0000001, 3'b110} : Rem;
      {7'b0110011, 7'b0000001, 3'b111} : Remu;
      {7'b0110011, 7'b0000000, 3'b000} : Add;
      {7'b0110011, 7'b0000000, 3'b010} : Slt;
      {7'b0110011, 7'b0000000, 3'b011} : Sltu;
      {7'b0110011, 7'b0000000, 3'b111} : And;
      {7'b0110011, 7'b0000000, 3'b110} : Or;
      {7'b0110011, 7'b0000000, 3'b100} : Xor;
      {7'b0110011, 7'b0100000, 3'b000} : Sub;
      {7'b0110011, 7'b0000000, 3'b001} : Sll;
      {7'b0110011, 7'b0000000, 3'b101} : Srl;
      {7'b0110011, 7'b0100000, 3'b101} : Sra;
      {7'b0001011, 7'b0000000, 3'b000} : FixedPointMul;
      {7'b0001011, 7'b0000000, 3'b001} : MulGF256;
      {7'b0001011, 7'b0000000, 3'b010} : DivGF256;
      .* : Err;
    endcase;

    if (opcode == 7'b0101111) begin // Sc/Lr/Amo
      imm = 0;
      isMemAccess = True;
      isAcquire = funct7[1] == 1;
      isRelease = funct7[0] == 1;
      operation = case (tuple2(funct7[6:2], funct3)) matches
        {5'b00010, 3'b010} : rs2 == 0 ? Loadr : Err;
        {5'b00011, 3'b010} : Storec;
        {5'b00001, 3'b010} : Amoswap;
        {5'b00000, 3'b010} : Amoadd;
        {5'b00100, 3'b010} : Amoxor;
        {5'b01100, 3'b010} : Amoand;
        {5'b01000, 3'b010} : Amoor;
        {5'b10000, 3'b010} : Amomin;
        {5'b10100, 3'b010} : Amomax;
        {5'b11000, 3'b010} : Amominu;
        {5'b11100, 3'b010} : Amomaxu;
        default: Err;
      endcase;
    end
  end

  if (operation == And && rtype && rs2 == 0) operation = Move;
  if (operation == Add && itype && imm == 0) operation = Move;
  if (operation == Xor && rtype && rs2 == 0) operation = Move;
  if (operation == Xor && itype && imm == 0) operation = Move;
  if (operation == Or && rtype && rs2 == 0) operation = Move;
  if (operation == Or && itype && imm == 0) operation = Move;

  return RvInstr{
    rd: rd,
    rs1: rs1,
    rs2: rs2,
    imm: imm,
    raw: data,
    csr: imm[11:0],
    opcode: operation,
    csrI: funct3[2] == 1,
    isAcquire: isAcquire,
    isRelease: isRelease,
    isMemAccess: isMemAccess,
    accessWidth: funct3[1:0],
    isUnsigned: funct3[2] == 1,
    immValid: utype || stype || itype || jtype || btype,
    isSystem:
      operation == Csrrc || operation == Csrrs || operation == Csrrw ||
      operation == Mret || operation == Sret || operation == FenceI ||
      operation == Ecall || operation == Ebreak || operation == Wfi
  };
endfunction

function Fmt showReg(ArchReg arch);
  String integers[32] = {
    "zero", "ra", "sp", "gp",
    "tp", "t0", "t1", "t2", "s0", "s1", "a0",
    "a1", "a2", "a3", "a4", "a5", "a6", "a7",
    "s2", "s3", "s4", "s5", "s6", "s7", "s8",
    "s9", "s10", "s11", "t3", "t4", "t5", "t6"
  };

  return $format(integers[arch]);
endfunction

function Action displayRvInstr(RvInstr instr);
  action
    let ui = $format((UInt#(32))'(unpack(instr.imm)));
    let si = $format((Int#(32))'(unpack(instr.imm)));
    let sxi =
      instr.imm[31] == 0 ?
      $format("0x%h", instr.imm) :
      $format("-0x%h", -instr.imm);
    let xi = $format("0x%h", instr.imm);
    let rs1 = showReg(instr.rs1);
    let rs2 = showReg(instr.rs2);
    let rd = showReg(instr.rd);

    Bool showOp = False;

    case (instr.opcode) matches
      Err : $write("err");
      Move : $write("mv ", rd, ", ", rs1);
      Lui : $write("lui ", rd, ", ", xi);
      Auipc : $write("auipc ", rd, ", ", sxi);
      Add : begin $write("add"); showOp = True; end
      Slt : begin $write("slt"); showOp = True; end
      Sltu : begin $write("sltu"); showOp = True; end
      And : begin $write("and"); showOp = True; end
      Clz : begin $write("clz"); showOp = True; end
      Ctz : begin $write("ctz"); showOp = True; end
      Cpop : begin $write("cpop"); showOp = True; end
      Min : begin $write("min"); showOp = True; end
      Minu : begin $write("minu"); showOp = True; end
      Max : begin $write("max"); showOp = True; end
      Maxu : begin $write("maxu"); showOp = True; end
      Andn : begin $write("andn"); showOp = True; end
      Xnor : begin $write("xnor"); showOp = True; end
      Orn : begin $write("orn"); showOp = True; end
      Zexth : begin $write("zexth"); showOp = True; end
      Sexth : begin $write("sexth"); showOp = True; end
      Sextb : begin $write("sextb"); showOp = True; end
      Ror : begin $write("ror"); showOp = True; end
      Rol : begin $write("rol"); showOp = True; end
      Orcb : begin $write("orcn"); showOp = True; end
      Rev8 : begin $write("rev8"); showOp = True; end
      Sh1add : begin $write("sh1add"); showOp = True; end
      Sh2add : begin $write("sh2add"); showOp = True; end
      Sh3add : begin $write("sh3add"); showOp = True; end
      Mul : begin $write("mul"); showOp = True; end
      Mulh : begin $write("mulh"); showOp = True; end
      Mulhu : begin $write("mulhu"); showOp = True; end
      Mulhsu : begin $write("mulhsu"); showOp = True; end
      Div : begin $write("div"); showOp = True; end
      Divu : begin $write("divu"); showOp = True; end
      Rem : begin $write("rem"); showOp = True; end
      Remu : begin $write("remu"); showOp = True; end
      Or : begin $write("or"); showOp = True; end
      Xor : begin $write("xor"); showOp = True; end
      Sll : begin $write("sll"); showOp = True; end
      Sra : begin $write("sra"); showOp = True; end
      Srl : begin $write("srl"); showOp = True; end
      Sub : begin $write("sub"); showOp = True; end
      Jal : $write("jal ", rd, ", ", sxi);
      Jalr : $write("jalr ", rd, ", ", rs1, ", ", si);
      Beq : $write("beq ", rs1, ", ", rs2, ", ", sxi);
      Bne : $write("bne ", rs1, ", ", rs2, ", ", sxi);
      Blt : $write("blt ", rs1, ", ", rs2, ", ", sxi);
      Bltu : $write("bltu ", rs1, ", ", rs2, ", ", sxi);
      Bge : $write("bge ", rs1, ", ", rs2, ", ", sxi);
      Bgeu : $write("bgeu ", rs1, ", ", rs2, ", ", sxi);
      Loadr : $write("lr.w ", rd, ", (", rs1, ")");
      Storec : $write("lr.w ", rd, ", ", rs2, ", (", rs1, ")");
      Amoor : $write("amoor ", rd, ", ", rs2, ", (", rs1, ")");
      Amoand : $write("amoand ", rd, ", ", rs2, ", (", rs1, ")");
      Amoxor : $write("amoxor ", rd, ", ", rs2, ", (", rs1, ")");
      Amoadd : $write("amoadd ", rd, ", ", rs2, ", (", rs1, ")");
      Amomin : $write("amomin ", rd, ", ", rs2, ", (", rs1, ")");
      Amomax : $write("amomax ", rd, ", ", rs2, ", (", rs1, ")");
      Amominu : $write("amominu ", rd, ", ", rs2, ", (", rs1, ")");
      Amomaxu : $write("amomaxu ", rd, ", ", rs2, ", (", rs1, ")");
      Amoswap : $write("amoswap ", rd, ", ", rs2, ", (", rs1, ")");
      Fence : $write("fence");
      Load : begin
        case (tuple2(instr.isUnsigned, instr.accessWidth)) matches
          {False, 2'b00} : $write("lb ", rd, ", ", si, "(", rs1, ")");
          {True, 2'b00} : $write("lbu ", rd, ", ", si, "(", rs1, ")");
          {False, 2'b01} : $write("lh ", rd, ", ", si, "(", rs1, ")");
          {True, 2'b01} : $write("lhu ", rd, ", ", si, "(", rs1, ")");
          {False, 2'b10} : $write("lw ", rd, ", ", si, "(", rs1, ")");
        endcase
      end
      Store : begin
        case (instr.accessWidth) matches
          2'b00 : $write("sb ", rs2, ", ", si, "(", rs1, ")");
          2'b01 : $write("sh ", rs2, ", ", si, "(", rs1, ")");
          2'b10 : $write("sw ", rs2, ", ", si, "(", rs1, ")");
        endcase
      end
      default: $write("unknown");
    endcase

    if (showOp) begin
      if (instr.immValid) $write("i ", rd, ", ", rs1, ", ", si);
      else $write(" ", rd, ", ", rs1, ", ", rs2);
    end
  endaction
endfunction

typedef enum {
  SupervisorSoftwareInterrupt = 1,
  MachineSoftwareInterrupt = 3,
  SupervisorTimerInterrupt = 5,
  MachineTimerInterrupt = 7,
  SupervisorExternalInterrupt = 9,
  MachineExternalInterrupt = 11
} CauseInterrupt deriving(Bits);

typedef enum {
  InstructionAddressMisaligned = 0,
  InstructionAccessFault = 1,
  IllegalInstruction = 2,
  Breakpoint = 3,
  LoadAddressMisaligned = 4,
  LoadAccessFault = 5,
  StoreAmoAddressMisaligned = 6,
  StoreAmoAccessFault = 7,
  EcallU = 8,
  EcallS = 9,
  EcallM = 11,
  InstructionPageFault = 12,
  LoadPageFault = 13,
  StoreAmoPageFault = 15
} CauseException deriving(Bits);

// To support late issue, an instruction must have no side effect like exception or control flow
// indirection, it's program counter must also be correctly predicted
function Bool supportLateIssue(Operation opcode);
  return case (opcode) matches
    Move:   True;
    Auipc:  True;
    Add:    True;
    Slt:    True;
    Sltu:   True;
    And:    True;
    Or:     True;
    Xor:    True;
    Sll:    True;
    Sra:    True;
    Srl:    True;
    Sub:    True;
    Sh1add: True;
    Sh2add: True;
    Sh3add: True;
    Min:    True;
    Max:    True;
    Minu:   True;
    Maxu:   True;
    Xnor:   True;
    Orn:    True;
    Andn:   True;
    Sexth:  True;
    Sextb:  True;
    Zexth:  True;
    Orcb:   True;
    Rev8:   True;
    Rol:    True;
    Ror:    True;
    Jal:    True;
    Jalr:   True;
    Beq:    True;
    Bne:    True;
    Blt:    True;
    Bltu:   True;
    Bge:    True;
    Bgeu:   True;
    default: False;
  endcase;
endfunction
