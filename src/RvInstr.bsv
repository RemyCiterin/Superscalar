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
  Err,
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
  Div,
  Divu,
  Rem,
  Remu,
  Mul,
  Mulh,
  Mulhu,
  Mulhsu
} Operation deriving(Bits, FShow, Eq);

typedef struct {
  Bit#(32) raw;
  Operation opcode;
  ArchReg rd;
  ArchReg rs1;
  ArchReg rs2;
  Bit#(32) imm;
  Bool immValid;
  AccessWidth accessWidth;
  Bool isUnsigned;
  Bool isMemAccess;
} RvInstr deriving(Bits, FShow);

function RvInstr decodeRvInstr(Bit#(32) data);
  Operation operation = Err;
  ArchReg rs1 = data[19:15];
  ArchReg rs2 = data[24:20];
  ArchReg rd = data[11:7];
  Bit#(32) imm = ?;

  Bit#(3) funct3 = data[14:12];
  Bit#(7) funct7 = data[31:25];

  Bit#(7) opcode = data[6:0];

  let itype = case (opcode) matches
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

  let rtype = opcode == 7'b0110011;
  let stype = opcode == 7'b0100011;
  let jtype = opcode == 7'b1101111;
  let btype = opcode == 7'b1100011;


  if (itype) begin
    imm = signExtend(data[31:20]);

    operation = case (tuple3(opcode, funct7, funct3)) matches
      {7'b0010011, .*, 3'b000} : Add;
      {7'b0010011, .*, 3'b010} : Slt;
      {7'b0010011, .*, 3'b011} : Sltu;
      {7'b0010011, .*, 3'b111} : And;
      {7'b0010011, .*, 3'b110} : Or;
      {7'b0010011, .*, 3'b100} : Xor;
      {7'b1100111, .*, 3'b000} : Jalr;
      {7'b0010011, 7'b0000000, 3'b001} : Sll;
      {7'b0010011, 7'b0000000, 3'b101} : Srl;
      {7'b0010011, 7'b0100000, 3'b101} : Sra;
      {7'b0000011, .*, .*} :
        funct3[1:0] == 'b11 || funct3 == 3'b110 ? Err : Load;
      .* : Err;
    endcase;
  end

  if (stype) begin
    rd = archZero;
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
  end

  if (jtype) begin
    imm = signExtend({data[31], data[19:12], data[20], data[30:21], 1'b0});
    operation = Jal;
  end

  if (rtype) begin
    operation = case (tuple2(funct7, funct3)) matches
      {7'b0000001, 3'b000} : Mul;
      {7'b0000001, 3'b001} : Mulh;
      {7'b0000001, 3'b010} : Mulhsu;
      {7'b0000001, 3'b011} : Mulhu;
      {7'b0000001, 3'b100} : Div;
      {7'b0000001, 3'b101} : Divu;
      {7'b0000001, 3'b110} : Rem;
      {7'b0000001, 3'b111} : Remu;
      {7'b0000000, 3'b000} : Add;
      {7'b0000000, 3'b010} : Slt;
      {7'b0000000, 3'b011} : Sltu;
      {7'b0000000, 3'b111} : And;
      {7'b0000000, 3'b110} : Or;
      {7'b0000000, 3'b100} : Xor;
      {7'b0100000, 3'b000} : Sub;
      {7'b0000000, 3'b001} : Sll;
      {7'b0000000, 3'b101} : Srl;
      {7'b0100000, 3'b101} : Sra;
      .* : Err;
    endcase;
  end

  return RvInstr{
    rd: rd,
    rs1: rs1,
    rs2: rs2,
    imm: imm,
    raw: data,
    opcode: operation,
    accessWidth: funct3[1:0],
    isUnsigned: funct3[2] == 1,
    immValid: utype || stype || itype || jtype || btype,
    isMemAccess: operation == Load || operation == Store
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

function Fmt showRvInstr(RvInstr instr);
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

  let showOp =
    instr.immValid ?
    $format("i ", rd, ", ", rs1, ", ", si) :
    $format(" ", rd, ", ", rs1, ", ", rs2);

  return case (instr.opcode) matches
    Err : $format("err");
    Lui : $format("lui ", rd, ", ", xi);
    Auipc : $format("auipc ", rd, ", ", sxi);
    Add : $format("add", showOp);
    Slt : $format("slt", showOp);
    Sltu : $format("sltu", showOp);
    And : $format("and", showOp);
    Or : $format("or", showOp);
    Xor : $format("xor", showOp);
    Sll : $format("sll", showOp);
    Sra : $format("sra", showOp);
    Srl : $format("srl", showOp);
    Sub : $format("sub", showOp);
    Jal : $format("jal ", rd, ", ", sxi);
    Jalr : $format("jalr ", rd, ", ", rs1, ", ", si);
    Beq : $format("beq ", rs1, ", ", rs2, ", ", sxi);
    Bne : $format("bne ", rs1, ", ", rs2, ", ", sxi);
    Blt : $format("blt ", rs1, ", ", rs2, ", ", sxi);
    Bltu : $format("bltu ", rs1, ", ", rs2, ", ", sxi);
    Bge : $format("bge ", rs1, ", ", rs2, ", ", sxi);
    Bgeu : $format("bgeu ", rs1, ", ", rs2, ", ", sxi);
    Load : begin
      case (tuple2(instr.isUnsigned, instr.accessWidth)) matches
        {False, 2'b00} : $format("lb ", rd, ", ", si, "(", rs1, ")");
        {True, 2'b00} : $format("lbu ", rd, ", ", si, "(", rs1, ")");
        {False, 2'b01} : $format("lh ", rd, ", ", si, "(", rs1, ")");
        {True, 2'b01} : $format("lhu ", rd, ", ", si, "(", rs1, ")");
        {False, 2'b10} : $format("lw ", rd, ", ", si, "(", rs1, ")");
      endcase
    end
    Store : begin
      case (instr.accessWidth) matches
        2'b00 : $format("sb ", rs2, ", ", si, "(", rs1, ")");
        2'b01 : $format("sh ", rs2, ", ", si, "(", rs1, ")");
        2'b10 : $format("sw ", rs2, ", ", si, "(", rs1, ")");
      endcase
    end
  endcase;
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
function Bool supportLateIssue(Operation opcode, Bit#(32) pc, Bit#(32) predPc);
  return case (opcode) matches
    Lui:    pc + 4 == predPc;
    Auipc:  pc + 4 == predPc;
    Add:    pc + 4 == predPc;
    Slt:    pc + 4 == predPc;
    Sltu:   pc + 4 == predPc;
    And:    pc + 4 == predPc;
    Or:     pc + 4 == predPc;
    Xor:    pc + 4 == predPc;
    Sll:    pc + 4 == predPc;
    Sra:    pc + 4 == predPc;
    Srl:    pc + 4 == predPc;
    Sub:    pc + 4 == predPc;
    //Div:    True;
    //Divu:   True;
    //Rem:    True;
    //Remu:   True;
    //Mul:    True;
    //Mulh:   True;
    //Mulhu:  True;
    //Mulhsu: True;
    default: False;
  endcase;
endfunction
