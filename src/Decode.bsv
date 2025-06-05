package Decode;

import List :: *;
import Array :: *;

`ifdef FLOAT
Bool floatExtension = True;
`else
Bool floatExtension = False;
`endif

typedef struct {
  Bit#(5) name;
  Bool fpoint;
} ArchReg deriving(Eq,Bounded);

instance Bits#(ArchReg, 6);
  function Bit#(6) pack(ArchReg r) = {r.fpoint ? 1 : 0, r.name};
  function ArchReg unpack(Bit#(6) v) = ArchReg{name: v[4:0], fpoint: v[5] == 1};
endinstance

// zeroReg is a read-only register set to zero
ArchReg zeroReg = ArchReg{name: 0, fpoint: False};

instance FShow#(ArchReg);
  function Fmt fshow(ArchReg r);
    String integers[32] = {
      "zero", "ra", "sp", "gp",
      "tp", "t0", "t1", "t2", "s0", "s1", "a0",
      "a1", "a2", "a3", "a4", "a5", "a6", "a7",
      "s2", "s3", "s4", "s5", "s6", "s7", "s8",
      "s9", "s10", "s11", "t3", "t4", "t5", "t6"
    };

    String fpoints[32] = {
      "ft0", "ft1", "ft2", "ft3", "ft4", "ft5", "ft6", "ft7",
      "fs0", "fs1",
      "fa0", "fa1", "fa2", "fa3", "fa4", "fa5", "fa6", "fa7",
      "fs2", "fs3", "fs4", "fs5", "fs6", "fs7", "fs8", "fs9", "fs10", "fs11",
      "ft8", "ft9", "ft10", "ft11"
    };

    return r.fpoint ? $format(fpoints[r.name]) : $format(integers[r.name]);
  endfunction
endinstance

typedef Bit#(7) Opcode;

typedef enum {
  R4type,
  Rtype,
  Itype,
  Stype,
  Btype,
  Utype,
  Jtype
} Optype deriving(Bits, FShow, Eq);

function Maybe#(Optype) opcodeType(Opcode opcode);
  return case (opcode)
    7'b0000011 : Valid(Itype); // LOAD
    7'b0000111 : floatExtension ? Valid(Itype) : Invalid; // LOAD-FP
    7'b0001011 : Invalid;      // custom-0
    7'b0001111 : Valid(Itype); // MISC-MEM (FENCE and FENCE_I)
    7'b0010011 : Valid(Itype); // OP-IMM
    7'b0010111 : Valid(Utype); // AUIPC
    7'b0011011 : Invalid;      // OP-IMM-32
    7'b0011111 : Invalid;      // 48b

    7'b0100011 : Valid(Stype); // STORE
    7'b0100111 : floatExtension ? Valid(Stype) : Invalid; // STORE-FP
    7'b0101011 : Invalid;      // custom-1
    7'b0101111 : Invalid;      // AMO
    7'b0110011 : Valid(Rtype); // OP
    7'b0110111 : Valid(Utype); // LUI
    7'b0111011 : Invalid;      // OP-32
    7'b0111111 : Invalid;      // 64b

    7'b1000011 : floatExtension ? Valid(R4type) : Invalid;// MADD
    7'b1000111 : floatExtension ? Valid(R4type) : Invalid;// MSUB
    7'b1001011 : floatExtension ? Valid(R4type) : Invalid;// NMSUB
    7'b1001111 : floatExtension ? Valid(R4type) : Invalid;// NMADD
    7'b1010011 : floatExtension ? Valid(Rtype)  : Invalid; // OP-FP
    7'b1010111 : Invalid;      // reserved
    7'b1011011 : Invalid;      // custom2/rv128
    7'b1011111 : Invalid;      // 48b

    7'b1100011 : Valid(Btype); // BRANCH
    7'b1100111 : Valid(Itype); // JALR
    7'b1101011 : Invalid;      // reserved
    7'b1101111 : Valid(Jtype); // JAL
    7'b1110011 : Valid(Itype); // SYSTEM
    7'b1110111 : Invalid;      // reserved
    7'b1111011 : Invalid;      // custom3/rv128
    7'b1111111 : Invalid;      // 64b

    default : Invalid; // Compressed instruction
  endcase;
endfunction

function Opcode getOpcode(Bit#(32) instr);
  return instr[6:0];
endfunction

function Bit#(3) getFunct3(Bit#(32) instr);
  return instr[14:12];
endfunction

function Bit#(2) getFunct2(Bit#(32) instr);
  return instr[26:25];
endfunction

function Bit#(7) getFunct7(Bit#(32) instr);
  return instr[31:25];
endfunction

function Bit#(5) getRs1(Bit#(32) instr);
  return unpack(instr[19:15]);
endfunction

function Bit#(5) getRs2(Bit#(32) instr);
  return unpack(instr[24:20]);
endfunction

function Bit#(5) getRs3(Bit#(32) instr);
  return unpack(instr[31:27]);
endfunction

function Bit#(5) getRd(Bit#(32) instr);
  return unpack(instr[11:7]);
endfunction

typeclass HasImmediate#(type t);
  function Bit#(32) immediateBits(t value);
    return pack(immediate(value));
  endfunction

  function Int#(32) immediate(t value);
    return unpack(immediateBits(value));
  endfunction
endtypeclass

typeclass HasOpcode#(type t);
  function Opcode opcode(t value);
endtypeclass

typeclass HasRegister1#(type t);
  function ArchReg register1(t value);
endtypeclass

typeclass HasRegister2#(type t);
  function ArchReg register2(t value);
endtypeclass

typeclass HasRegister3#(type t);
  function ArchReg register3(t value);
endtypeclass

typeclass HasDestination#(type t);
  function ArchReg destination(t value);
endtypeclass

typeclass HasFunction3#(type t);
  function Bit#(3) function3(t value);
endtypeclass

typeclass HasFunction7#(type t);
  function Bit#(7) function7(t value);
endtypeclass

typeclass HasFunction2#(type t);
  function Bit#(2) function2(t value);
endtypeclass

typedef struct {Bit#(32) bits;} R4type deriving(Eq, FShow);
typedef struct {Bit#(32) bits;} Rtype deriving(Eq, FShow);
typedef struct {Bit#(32) bits;} Itype deriving(Eq, FShow);
typedef struct {Bit#(32) bits;} Stype deriving(Eq, FShow);
typedef struct {Bit#(32) bits;} Btype deriving(Eq, FShow);
typedef struct {Bit#(32) bits;} Utype deriving(Eq, FShow);
typedef struct {Bit#(32) bits;} Jtype deriving(Eq, FShow);

// Show that each instruction type may be serialized

instance Bits#(Rtype, 32);
  function Bit#(32) pack(Rtype instr) = instr.bits;

  function Rtype unpack(Bit#(32) bits) = Rtype{bits:bits};
endinstance

instance Bits#(R4type, 32);
  function Bit#(32) pack(R4type instr) = instr.bits;

  function R4type unpack(Bit#(32) bits) = R4type{bits:bits};
endinstance

instance Bits#(Stype, 32);
  function Bit#(32) pack(Stype instr) = instr.bits;

  function Stype unpack(Bit#(32) bits) = Stype{bits:bits};
endinstance

instance Bits#(Itype, 32);
  function Bit#(32) pack(Itype instr) = instr.bits;

  function Itype unpack(Bit#(32) bits) = Itype{bits:bits};
endinstance

instance Bits#(Btype, 32);
  function Bit#(32) pack(Btype instr) = instr.bits;

  function Btype unpack(Bit#(32) bits) = Btype{bits:bits};
endinstance

instance Bits#(Utype, 32);
  function Bit#(32) pack(Utype instr) = instr.bits;

  function Utype unpack(Bit#(32) bits) = Utype{bits:bits};
endinstance

instance Bits#(Jtype, 32);
  function Bit#(32) pack(Jtype instr) = instr.bits;

  function Jtype unpack(Bit#(32) bits) = Jtype{bits:bits};
endinstance

// Show that some instructions have a function3 field

instance HasFunction3#(Rtype);
  function Bit#(3) function3(Rtype instr) = getFunct3(instr.bits);
endinstance

instance HasFunction3#(Itype);
  function Bit#(3) function3(Itype instr) = getFunct3(instr.bits);
endinstance

instance HasFunction3#(Stype);
  function Bit#(3) function3(Stype instr) = getFunct3(instr.bits);
endinstance

instance HasFunction3#(Btype);
  function Bit#(3) function3(Btype instr) = getFunct3(instr.bits);
endinstance

instance HasFunction3#(R4type);
  function Bit#(3) function3(R4type instr) = getFunct3(instr.bits);
endinstance

// Show that some instruction types has a function7 field

instance HasFunction7#(Rtype);
  function Bit#(7) function7(Rtype instr) = getFunct7(instr.bits);
endinstance

// Show that some instruction types has a function2 field

instance HasFunction2#(R4type);
  function Bit#(2) function2(R4type instr) = getFunct2(instr.bits);
endinstance

// Show that some instruction types has an immediate

instance HasImmediate#(Itype);
  function Bit#(32) immediateBits(Itype instr);
    return signExtend(instr.bits[31:20]);
  endfunction
endinstance

instance HasImmediate#(Stype);
  function Bit#(32) immediateBits(Stype instr);
    return signExtend({instr.bits[31:25], instr.bits[11:7]});
  endfunction
endinstance

instance HasImmediate#(Btype);
  function Bit#(32) immediateBits(Btype instr);
    let imm = {instr.bits[31:31], instr.bits[7:7], instr.bits[30:25], instr.bits[11:8]};
    return signExtend({imm, 1'b0});
  endfunction
endinstance

instance HasImmediate#(Utype);
  function Bit#(32) immediateBits(Utype instr);
    return signExtend({instr.bits[31:12], 12'b0});
  endfunction
endinstance

instance HasImmediate#(Jtype);
  function Bit#(32) immediateBits(Jtype instr);
    let imm = {instr.bits[31:31], instr.bits[19:12], instr.bits[20:20], instr.bits[30:21]};
    return signExtend({imm, 1'b0});
  endfunction
endinstance

// show that each instruction type has an opcode

instance HasOpcode#(Rtype);
  function Opcode opcode(Rtype instr) = getOpcode(instr.bits);
endinstance

instance HasOpcode#(Itype);
  function Opcode opcode(Itype instr) = getOpcode(instr.bits);
endinstance

instance HasOpcode#(Stype);
  function Opcode opcode(Stype instr) = getOpcode(instr.bits);
endinstance

instance HasOpcode#(Btype);
  function Opcode opcode(Btype instr) = getOpcode(instr.bits);
endinstance

instance HasOpcode#(Utype);
  function Opcode opcode(Utype instr) = getOpcode(instr.bits);
endinstance

instance HasOpcode#(Jtype);
  function Opcode opcode(Jtype instr) = getOpcode(instr.bits);
endinstance

instance HasOpcode#(R4type);
  function Opcode opcode(R4type instr) = getOpcode(instr.bits);
endinstance


typedef enum {
  BEQ, BNE, BLT, BGE, BLTU, BGEU
} BOp deriving(Bits, Eq);

instance FShow#(BOp);
  function Fmt fshow(BOp op);
    return case (op) matches
      BEQ : fshow("beq");
      BNE : fshow("bne");
      BLT : fshow("blt");
      BGE : fshow("bge");
      BLTU : fshow("bltu");
      BGEU : fshow("bgeq");
    endcase;
  endfunction
endinstance

function Maybe#(BOp) decodeBtype(Btype instr);
  return case (function3(instr))
    3'b000 : Valid(BEQ);
    3'b001 : Valid(BNE);
    3'b100 : Valid(BLT);
    3'b101 : Valid(BGE);
    3'b110 : Valid(BLTU);
    3'b111 : Valid(BGEU);
    default : Invalid;
  endcase;
endfunction

typedef enum {
  FADD_S, // rd = rs1 + rs2
  FSUB_S, // rd = rs1 - rs2
  FMUL_S, // rd = rs1 * rs2
  FDIV_S, // rd = rs1 / rs2
  FSQRT_S, // rd = sqrt(rs1)

  FSGNJ_S,  // rd = abs(rs1) * sign(rs2)
  FSGNJN_S, // rd = abs(rs1) * -sign(rs2)
  FSGNJX_S, // rd = rs1 * sign(rs2)

  FMIN_S, // rd = min(rs1, rs2)
  FMAX_S, // rd = max(rs1, rs2)

  FEQ_S, // rd = rs1 == rs2 ? 1 : 0
  FLT_S, // rd = rs1 < rs2 ? 1 : 0
  FLE_S, // rd = rs1 <= rs2 ? 1 : 0

  FCLASS_S,

  FCVT_W_S,  // rd = (int32_t) rs1
  FCVT_WU_S, // rd = (uint32_t) rs1
  FCVT_S_W,  // rd = (float) rs1
  FCVT_S_WU, // rd = (float) rs1

  FMV_W_X, // rd = *((float*) &rs1)
  FMV_X_W  // rd = *((int*) &rs1)
} FloatOp deriving(Bits, Eq);

// return if the rs1 field of a FloatOp is a floating point register
function Bool isFRs1FloatOp(FloatOp op);
  return case (op) matches
    FCVT_S_W: False;
    FCVT_S_WU: False;
    FMV_W_X: False;
    default: True;
  endcase;
endfunction

// return if the rs2 field of a FloatOp is a floating point register
function Bool isFRs2FloatOp(FloatOp op);
  return True;
endfunction

// return if the rd field of a FloatOp is a floating point register
function Bool isFRdFloatOp(FloatOp op);
  return case (op) matches
    FCLASS_S : False;
    FEQ_S: False;
    FLT_S: False;
    FLE_S: False;
    FCVT_W_S: False;
    FCVT_WU_S: False;
    FMV_X_W: False;
    default: True;
  endcase;
endfunction

instance FShow#(FloatOp);
  function Fmt fshow(FloatOp op);
    return case(op) matches
      FADD_S : fshow("fadd.s");
      FSUB_S : fshow("fsub.s");
      FMUL_S : fshow("fmul.s");
      FDIV_S : fshow("fdiv.s");
      FSQRT_S : fshow("fsqrt.s");
      FSGNJ_S : fshow("fsgnj.s");
      FSGNJN_S : fshow("fsgnjn.s");
      FSGNJX_S : fshow("fsgnjx.s");
      FMIN_S : fshow("fmin.s");
      FMAX_S : fshow("fmax.s");
      FEQ_S : fshow("feq.s");
      FLT_S : fshow("flt.s");
      FLE_S : fshow("fle.s");
      FCLASS_S : fshow("fclass.s");
      FCVT_W_S : fshow("fcvt.w.s");
      FCVT_WU_S : fshow("fcvt.wu.s");
      FCVT_S_W : fshow("fcvt.s.w");
      FCVT_S_WU : fshow("fcvt.s.wu");
      FMV_W_X : fshow("fmv.w.x");
      FMV_X_W : fshow("fmv.x.w");
    endcase;
  endfunction
endinstance

typedef enum {
  FMADD_S,
  FMSUB_S,
  FNMSUB_S,
  FNMADD_S
} R4Op deriving(Bits, Eq);

instance FShow#(R4Op);
  function Fmt fshow(R4Op op);
    return case (op) matches
      FMADD_S : fshow("fmadd.s");
      FMSUB_S : fshow("fmsub.s");
      FNMADD_S : fshow("fnmadd.s");
      FNMSUB_S : fshow("fnmsub.s");
    endcase;
  endfunction
endinstance

function Maybe#(R4Op) decodeR4type(R4type instr);
  return case (tuple2(function2(instr), opcode(instr))) matches
    {0, 7'b1000011} : Valid(FMADD_S);
    {0, 7'b1000111} : Valid(FMSUB_S);
    {0, 7'b1001011} : Valid(FNMSUB_S);
    {0, 7'b1001111} : Valid(FNMADD_S);
    default : Invalid;
  endcase;
endfunction

typedef union tagged {
  void ADD;
  void SUB;
  void SLL;
  void SLT;
  void SLTU;
  void XOR;
  void SRL;
  void SRA;
  void OR;
  void AND;
  void MUL;
  void MULH;
  void MULHSU;
  void MULHU;
  void DIV;
  void DIVU;
  void REM;
  void REMU;
  FloatOp FloatOp;
} ROp deriving(Bits, Eq);

instance FShow#(ROp);
  function Fmt fshow(ROp op);
    return case (op) matches
      tagged FloatOp .op : fshow(op);
      ADD : fshow("add");
      SUB : fshow("sub");
      SLL : fshow("sll");
      SLT : fshow("slt");
      SLTU : fshow("sltu");
      XOR : fshow("xor");
      SRL : fshow("srl");
      SRA : fshow("sra");
      OR : fshow("or");
      AND : fshow("and");
      MUL : fshow("mul");
      MULH : fshow("mulh");
      MULHSU : fshow("mulhsu");
      MULHU : fshow("mulhu");
    endcase;
  endfunction
endinstance

function Maybe#(ROp) decodeFloatOp(Rtype instr);
  Bit#(5) f5 = getRs2(instr.bits);
  Bit#(7) f7 = function7(instr);
  Bit#(3) f3 = function3(instr);

  return case (tuple3(f7, f5, f3)) matches
    {7'b0000000, .*, .*} : Valid(FloatOp(FADD_S));
    {7'b0000100, .*, .*} : Valid(FloatOp(FSUB_S));
    {7'b0001000, .*, .*} : Valid(FloatOp(FMUL_S));
    {7'b0001100, .*, .*} : Valid(FloatOp(FDIV_S));
    {7'b1010000, .*, 3'b000} : Valid(FloatOp(FLE_S));
    {7'b1010000, .*, 3'b001} : Valid(FloatOp(FLT_S));
    {7'b1010000, .*, 3'b010} : Valid(FloatOp(FEQ_S));
    {7'b0010100, .*, 3'b000} : Valid(FloatOp(FMIN_S));
    {7'b0010100, .*, 3'b001} : Valid(FloatOp(FMAX_S));
    {7'b0101100, 5'b00000, .*} : Valid(FloatOp(FSQRT_S));
    {7'b0010000, .*, 3'b000} : Valid(FloatOp(FSGNJ_S));
    {7'b0010000, .*, 3'b001} : Valid(FloatOp(FSGNJN_S));
    {7'b0010000, .*, 3'b010} : Valid(FloatOp(FSGNJX_S));
    {7'b1100000, 5'b00000, .*} : Valid(FloatOp(FCVT_W_S));
    {7'b1100000, 5'b00001, .*} : Valid(FloatOp(FCVT_WU_S));
    {7'b1101000, 5'b00000, .*} : Valid(FloatOp(FCVT_S_W));
    {7'b1101000, 5'b00001, .*} : Valid(FloatOp(FCVT_S_WU));
    {7'b1110000, 5'b00001, 3'b000} : Valid(FloatOp(FCLASS_S));
    {7'b1110000, 5'b00000, 3'b000} : Valid(FloatOp(FMV_X_W));
    {7'b1111000, 5'b00000, 3'b000} : Valid(FloatOp(FMV_W_X));
    default : Invalid;
  endcase;
endfunction

function Maybe#(ROp) decodeRtype(Rtype instr);
  return opcode(instr) == 7'b1010011 ?
    decodeFloatOp(instr) :
    case (tuple2(function7(instr), function3(instr))) matches
      {7'b0000000, 3'b000} : Valid(ADD);  // add
      {7'b0100000, 3'b000} : Valid(SUB);  // sub
      {7'b0000000, 3'b001} : Valid(SLL);  // shift left logic
      {7'b0000000, 3'b010} : Valid(SLT);  // less than
      {7'b0000000, 3'b011} : Valid(SLTU); // less than unsigned
      {7'b0000000, 3'b100} : Valid(XOR);  // xor
      {7'b0000000, 3'b101} : Valid(SRL);  // shift right logic
      {7'b0100000, 3'b101} : Valid(SRA);  // shift right arithmetic
      {7'b0000000, 3'b110} : Valid(OR);   // or
      {7'b0000000, 3'b111} : Valid(AND);  // and

      {7'b0000001, 3'b000} : Valid(MUL);
      {7'b0000001, 3'b001} : Valid(MULH);
      {7'b0000001, 3'b010} : Valid(MULHSU);
      {7'b0000001, 3'b011} : Valid(MULHU);
      {7'b0000001, 3'b100} : Valid(DIV);
      {7'b0000001, 3'b101} : Valid(DIVU);
      {7'b0000001, 3'b110} : Valid(REM);
      {7'b0000001, 3'b111} : Valid(REMU);
      default : Invalid;
    endcase;
endfunction

typedef enum {
  AUIPC, LUI
} UOp deriving(Bits, Eq);

instance FShow#(UOp);
  function Fmt fshow(UOp op);
    return case (op) matches
      AUIPC : fshow("auipc");
      LUI : fshow("lui");
    endcase;
  endfunction
endinstance

function UOp decodeUtype(Utype instr);
  if (opcode(instr) == 7'b0110111)
    return LUI;
  else return AUIPC;
endfunction

typedef enum {
  SB, SH, SW, SFP
} SOp deriving(Eq, Bits);

instance FShow#(SOp);
  function Fmt fshow(SOp op);
    return case (op) matches
      SB : fshow("sb");
      SH : fshow("sh");
      SW : fshow("sw");
      SFP : fshow("fsw");
    endcase;
  endfunction
endinstance

function Maybe#(SOp) decodeStype(Stype instr);
  return case (opcode(instr))
    7'b0100111 : function3(instr) == 3'b010 ? Valid(SFP) : Invalid;
    default : case (function3(instr))
      3'b000 : Valid(SB);
      3'b001 : Valid(SH);
      3'b010 : Valid(SW);
      default : Invalid;
    endcase
  endcase;
endfunction


typedef enum {
  LB, LW, LH, LBU, LHU, LFP
} LoadOp deriving(Bits, Eq);

instance FShow#(LoadOp);
  function Fmt fshow(LoadOp op);
    return case (op) matches
      LB : fshow("lb");
      LH : fshow("lh");
      LW : fshow("lw");
      LHU : fshow("lhu");
      LBU : fshow("lbu");
      LFP : fshow("flw");
    endcase;
  endfunction
endinstance

typedef enum {
  MRET, URET, SRET
} RetOp deriving(Bits, Eq);

instance FShow#(RetOp);
  function Fmt fshow(RetOp op);
    return case (op) matches
      MRET : fshow("mret");
      URET : fshow("uret");
      SRET : fshow("sret");
    endcase;
  endfunction
endinstance

typedef union tagged {
  void JALR;
  LoadOp Load;
  void ADDI;
  void SLTI;
  void SLTIU;
  void XORI;
  void ORI;
  void ANDI;
  void SLLI;
  void SRLI;
  void SRAI;
  void FENCE;
  void FENCE_I;
  void CBO;
  void ECALL;
  void EBREAK;
  void CSRRW;
  void CSRRS;
  void CSRRC;
  void CSRRWI;
  void CSRRSI;
  void CSRRCI;
  RetOp Ret;
  void WFI;
  // SFENCE_VM
} IOp deriving(Bits, Eq);

typedef struct {
  Bool w;
  Bool r;
  Bool o;
  Bool i;
} MemEvent deriving(Bits, FShow, Eq);

typedef struct {
  MemEvent pred;
  MemEvent succ;
} FenceType deriving(Bits, FShow, Eq);

function FenceType getFenceType(Itype fence);
  return FenceType {
    pred: unpack(immediateBits(fence)[3:0]),
    succ: unpack(immediateBits(fence)[7:4])
  };
endfunction

instance FShow#(IOp);
  function Fmt fshow(IOp op);
    return case (op) matches
      JALR : fshow("jarl");
      tagged Load .l : fshow(l);
      ADDI : fshow("addi");
      SLTI : fshow("slti");
      SLTIU : fshow("sltiu");
      XORI : fshow("xori");
      ORI : fshow("ori");
      ANDI : fshow("andi");
      SLLI : fshow("slli");
      SRLI : fshow("srli");
      SRAI : fshow("srai");
      FENCE : fshow("fence");
      FENCE_I : fshow("fence.i");
      CBO : fshow("cbo.flush");
      ECALL : fshow("ecall");
      EBREAK : fshow("ebreak");
      CSRRW : fshow("csrrw");
      CSRRS : fshow("csrrs");
      CSRRC : fshow("csrrc");
      CSRRWI : fshow("csrrwi");
      CSRRSI : fshow("csrrsi");
      CSRRCI : fshow("csrrci");
      tagged Ret .r : fshow(r);
      WFI : fshow("wfi");
    endcase;
  endfunction
endinstance

function Maybe#(IOp) decodeItype(Itype instr);
  case (opcode(instr))
    7'b1100111 : return ((function3(instr) == 0) ? Valid(JALR) : Invalid);

    7'b0000111 :
      return function3(instr) == 3'b010 ? Valid(tagged Load LFP) : Invalid;

    7'b0000011 :
      return case (function3(instr))
        3'b000 : Valid(tagged Load LB);
        3'b001 : Valid(tagged Load LH);
        3'b010 : Valid(tagged Load LW);
        3'b100 : Valid(tagged Load LBU);
        3'b101 : Valid(tagged Load LHU);
        default : Invalid;
      endcase;

    7'b0010011 :
      return case (function3(instr))
        3'b000 : Valid(ADDI);
        3'b010 : Valid(SLTI);
        3'b011 : Valid(SLTIU);
        3'b100 : Valid(XORI);
        3'b110 : Valid(ORI);
        3'b111 : Valid(ANDI);
        3'b001 : ((immediateBits(instr)[11:5] == 0) ? Valid(SLLI) : Invalid);
        3'b101 : begin
          case (immediateBits(instr)[11:5])
            0 : Valid(SRLI);
            'b0100000 : Valid(SRAI);
            default : Invalid;
          endcase
        end
        default: Invalid;
      endcase;

    7'b0001111 :
      if (immediateBits(instr)[11:8] == 0 && getRd(instr.bits) == 0)
        return
          case (function3(instr))
            0 : getRs1(instr.bits) == 0 ? Valid(FENCE) : Invalid;
            1 : getRs1(instr.bits) == 0 ? Valid(FENCE_I) : Invalid;
            2 : begin
              case (immediateBits(instr)[7:0]) matches
                1 : Valid(CBO);
                2 : Valid(CBO);
                0 : Valid(CBO);
              endcase
            end
            default : Invalid;
          endcase;
      else return Invalid;

    7'b1110011 :
      case (function3(instr))
        3'b000 :
          if (getRs1(instr.bits) != 0 || getRd(instr.bits) != 0)
            return Invalid;
          else return case (immediateBits(instr))
            //32'b000000000010 : Valid(tagged Ret URET);
            //32'b000100000010 : Valid(tagged Ret SRET);
            32'b001100000010 : Valid(tagged Ret MRET);
            32'b000100000101 : Valid(WFI);
            0 : Valid(ECALL);
            1 : Valid(EBREAK);
            default: Invalid;
          endcase;
        3'b001 : return Valid(CSRRW);
        3'b010 : return Valid(CSRRS);
        3'b011 : return Valid(CSRRC);
        3'b101 : return Valid(CSRRWI);
        3'b110 : return Valid(CSRRSI);
        3'b111 : return Valid(CSRRCI);
        default : return Invalid;
      endcase

    default: return Invalid;
  endcase
endfunction



typedef union tagged {
  struct{R4type instr; R4Op op;} R4type;
  struct{Rtype instr; ROp op;} Rtype;
  struct{Itype instr; IOp op;} Itype;
  struct{Stype instr; SOp op;} Stype;
  struct{Btype instr; BOp op;} Btype;
  struct{Utype instr; UOp op;} Utype;
  Jtype Jtype;
} Instr deriving(Bits, FShow, Eq);

instance HasImmediate#(Instr);
  function Bit#(32) immediateBits(Instr instr);
    return case (instr) matches
      tagged Itype {instr: .instr} : immediateBits(instr);
      tagged Stype {instr: .instr} : immediateBits(instr);
      tagged Btype {instr: .instr} : immediateBits(instr);
      tagged Utype {instr: .instr} : immediateBits(instr);
      tagged Jtype .instr : immediateBits(instr);
      default : 0;
    endcase;
  endfunction
endinstance

function Maybe#(Instr) decodeInstr(Bit#(32) instr);
  case (opcodeType(getOpcode(instr))) matches
    tagged Valid R4type :
      return case (decodeR4type(unpack(instr))) matches
        tagged Valid .op : Valid(tagged R4type{instr: unpack(instr), op:op});
        default: Invalid;
      endcase;
    tagged Valid Rtype :
      return case (decodeRtype(unpack(instr))) matches
        tagged Valid .op : Valid(tagged Rtype{instr: unpack(instr), op:op});
        default: Invalid;
      endcase;
    tagged Valid Itype :
      return case (decodeItype(unpack(instr))) matches
        tagged Valid .op : Valid(tagged Itype{instr: unpack(instr), op:op});
        default: Invalid;
      endcase;
    tagged Valid Btype :
      return case (decodeBtype(unpack(instr))) matches
        tagged Valid .op : Valid(tagged Btype{instr: unpack(instr), op:op});
        default: Invalid;
      endcase;
    tagged Valid Stype :
      return case (decodeStype(unpack(instr))) matches
        tagged Valid .op : Valid(tagged Stype{instr: unpack(instr), op:op});
        default: Invalid;
      endcase;
    tagged Valid Utype :
      return Valid(tagged Utype {instr: unpack(instr), op: decodeUtype(unpack(instr))});
    tagged Valid Jtype :
      return Valid(tagged Jtype (unpack(instr)));
    default : return Invalid;
  endcase
endfunction

function Bool hasFloatRs1(Instr instr);
  return case (instr) matches
    tagged R4type .* : True;
    tagged Rtype {op: tagged FloatOp .op} : isFRs1FloatOp(op);
    default: False;
  endcase;
endfunction

function Bool hasFloatRs2(Instr instr);
  return case (instr) matches
    tagged R4type .* : True;
    tagged Rtype {op: tagged FloatOp .op} : isFRs2FloatOp(op);
    tagged Stype {op: SFP} : True;
    default: False;
  endcase;
endfunction

function Bool hasFloatRs3(Instr instr);
  return case (instr) matches
    tagged R4type .* : True;
    default: False;
  endcase;
endfunction

function Bool hasFloatRd(Instr instr);
  return case (instr) matches
    tagged R4type .* : True;
    tagged Rtype {op: tagged FloatOp .op} : isFRdFloatOp(op);
    tagged Itype {op: tagged Load LFP} : True;
    default: False;
  endcase;
endfunction

function Maybe#(Bit#(5)) hasRegister1(Instr instr);
  return case (instr) matches
    tagged R4type {instr: .instr} : Valid(getRs1(instr.bits));
    tagged Rtype {instr: .instr}  :  Valid(getRs1(instr.bits));
    tagged Btype {instr: .instr}  :  Valid(getRs1(instr.bits));
    tagged Stype {instr: .instr}  :  Valid(getRs1(instr.bits));

    tagged Itype {op: FENCE}   : Invalid;
    tagged Itype {op: FENCE_I} : Invalid;
    tagged Itype {op: ECALL}   : Invalid;
    tagged Itype {op: EBREAK}  : Invalid;
    tagged Itype {op: CSRRWI}  : Invalid;
    tagged Itype {op: CSRRSI}  : Invalid;
    tagged Itype {op: CSRRCI}  : Invalid;
    tagged Itype {op: WFI}     : Invalid;
    tagged Itype {op: tagged Ret .*} : Invalid;
    tagged Itype {instr: .instr} : Valid(getRs1(instr.bits));
    default : Invalid;
  endcase;
endfunction

instance HasRegister1#(Instr);
  function ArchReg register1(Instr instr);
    return case (hasRegister1(instr)) matches
      tagged Valid .r : ArchReg{name: r, fpoint: hasFloatRs1(instr)};
      default : zeroReg;
    endcase;
  endfunction
endinstance

function Maybe#(Bit#(5)) hasRegister2(Instr instr);
  return case (instr) matches
    tagged Rtype {instr: .instr} : Valid(getRs2(instr.bits));
    tagged Btype {instr: .instr} : Valid(getRs2(instr.bits));
    tagged Stype {instr: .instr} : Valid(getRs2(instr.bits));
    tagged R4type {instr: .instr} : Valid(getRs2(instr.bits));
    default : Invalid;
  endcase;
endfunction

instance HasRegister2#(Instr);
  function ArchReg register2(Instr instr);
    return case (hasRegister2(instr)) matches
      tagged Valid .r : ArchReg{name: r, fpoint: hasFloatRs2(instr)};
      default : zeroReg;
    endcase;
  endfunction
endinstance

function Maybe#(Bit#(5)) hasRegister3(Instr instr);
  return case (instr) matches
    tagged R4type {instr: .instr} : Valid(getRs3(instr.bits));
    default : Invalid;
  endcase;
endfunction

instance HasRegister3#(Instr);
  function ArchReg register3(Instr instr);
    return case (hasRegister3(instr)) matches
      tagged Valid .r : ArchReg{name: r, fpoint: hasFloatRs3(instr)};
      default : zeroReg;
    endcase;
  endfunction
endinstance

function Maybe#(Bit#(5)) hasDestination(Instr instr);
  return case (instr) matches
      tagged R4type {instr: .instr} : Valid(getRd(instr.bits));
      tagged Rtype {instr: .instr}  : Valid(getRd(instr.bits));
      tagged Utype {instr: .instr}  : Valid(getRd(instr.bits));
      tagged Jtype .instr           : Valid(getRd(instr.bits));

      tagged Itype {op: FENCE}   : Invalid;
      tagged Itype {op: FENCE_I} : Invalid;
      tagged Itype {op: ECALL} : Invalid;
      tagged Itype {op: EBREAK} : Invalid;
      tagged Itype {op: CBO} : Invalid;
      tagged Itype {op: tagged Ret .val} : Invalid;
      tagged Itype {instr: .instr} : Valid(getRd(instr.bits));

      default : Invalid;
  endcase;
endfunction

instance HasDestination#(Instr);
  function ArchReg destination(Instr instr);
    return case (hasDestination(instr)) matches
      tagged Valid .r : ArchReg{name: r, fpoint: hasFloatRd(instr)};
      default : zeroReg;
    endcase;
  endfunction
endinstance

function Bool isLoad(Instr instr);
  return case (instr) matches
    tagged Itype {op: tagged Load .*} : True;
    default : False;
  endcase;
endfunction

function Bool isStore(Instr instr);
  return case (instr) matches
    tagged Stype .* : True;
    default : False;
  endcase;
endfunction

function Fmt displayInstr(Instr instr);
  return case (instr) matches
    tagged Rtype {op: .op, instr: .*} :
      $format(fshow(op), " ", fshow(destination(instr)), ", ", fshow(register1(instr)), ", ", fshow(register2(instr)));
    tagged Btype {op: .op, instr: .*} :
      $format(fshow(op), " ", fshow(register1(instr)), ", ", fshow(register2(instr)), ", %d", immediate(instr));
    tagged Stype {op: .op, instr: .*} :
      $format(fshow(op), " ", fshow(register1(instr)), ", ", fshow(register2(instr)), ", %d", immediate(instr));
    tagged Itype {op: .op, instr: .*} :
      $format(fshow(op), " ", fshow(destination(instr)), ", ", fshow(register1(instr)), ", %d", immediate(instr));
    tagged Jtype .* :
      $format("jal %h ", immediateBits(instr), fshow(destination(instr)));
    tagged Utype {op: .op, instr: .*} :
      $format(fshow(op), " ", fshow(destination(instr)), ", %h", immediateBits(instr));
  endcase;
endfunction

endpackage
