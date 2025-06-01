import Decode :: *;
import Utils :: *;
import TLTypes :: *;
import Memory :: *;
import Vector :: *;
import CSR :: *;

typedef 4 SupSize;
typedef Vector#(SupSize,t) Super#(type t);
typedef Super#(Bool) SupMask;

Integer supSize = valueOf(SupSize);

typedef MemoryRequest#(32, TMul#(SupSize,32)) FetchRequest;
typedef MemoryResponse#(TMul#(SupSize,32)) FetchResponse;

typedef struct {
  Bool flush;
  Bit#(32) rdVal;
  Bit#(32) nextPc;
} ExecResult deriving(Bits, FShow, Eq);

instance DefaultValue#(ExecResult);
  function defaultValue = ExecResult{
    flush: False,
    nextPc: ?,
    rdVal: ?
  };
endinstance

typedef struct {
  // Epoch number: used to detect mis-speculated instructions
  Epoch epoch;

  // Age counter: used to know if an instruction is older than another
  Age age;

  // Decoded instruction
  Instr instr;

  // Program counter
  Bit#(32) pc;

  // Predicted program counter
  Bit#(32) predPc;

  // Execution tag
  ExecTag tag;

  // Pipeline index
  Bit#(8) pipeline;

  // True if the somethig fail
  Bool exception;

  // Cause of a potential exception
  CauseException cause;

  // Value associated with an exception
  Bit#(32) tval;

  // First operand
  ArchReg rs1;

  // Second operand
  ArchReg rs2;

  // Destination register
  ArchReg rd;

  // Payload of the instruction
  t val;
} MicroOp#(type t) deriving(Bits, FShow, Eq);

function MicroOp#(b) mapMicroOp(function b f(a x), MicroOp#(a) op) =
  MicroOp{
    exception: op.exception,
    pipeline: op.pipeline,
    predPc: op.predPc,
    cause: op.cause,
    epoch: op.epoch,
    instr: op.instr,
    val: f(op.val),
    tval: op.tval,
    age: op.age,
    tag: op.tag,
    rs1: op.rs1,
    rs2: op.rs2,
    rd: op.rd,
    pc: op.pc
  };

typedef MicroOp#(Vector#(n,t)) MicroOpN#(numeric type n, type t);

function MicroOpN#(n,b) mapMicroOpN(function b f(a x), MicroOpN#(n,a) op) =
  mapMicroOp(Vector::map(f),op);

typedef MicroOp#(ExecResult) ExecOutput;
typedef MicroOpN#(2, Bit#(32)) ExecInput;
