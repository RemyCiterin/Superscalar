import ConfigReg::*;
import BuildList::*;
import RvInstr::*;
import RvAlu::*;
import List::*;


//Reminder:
//    | ustatus          | 000 |
//    | uie              | 004 |
//    | utvec            | 005 |
//    | uscratch         | 040 |
//    | uepc             | 041 |
//    | ucause           | 042 |
//    | ubadaddr         | 043 |
//    | uip              | 044 |
//    | fflags           | 001 |
//    | frm              | 002 |
//    | fcsr             | 003 |
//    | cycle            | c00 |
//    | time             | c01 |
//    | instret          | c02 |
//    | cycleh           | c80 |
//    | timeh            | c81 |
//    | instreth         | c82 |
//    | sstatus          | 100 |
//    | sedeleg          | 102 |
//    | sideleg          | 103 |
//    | sie              | 104 |
//    | stvec            | 105 |
//    | sscratch         | 140 |
//    | sepc             | 141 |
//    | scause           | 142 |
//    | sbadaddr         | 143 |
//    | sip              | 144 |
//    | satp             | 180 |
//    | scycle           | d00 |
//    | stime            | d01 |
//    | sinstret         | d02 |
//    | scycleh          | d80 |
//    | stimeh           | d81 |
//    | sinstreth        | d82 |
//    | hstatus          | 200 |
//    | hedeleg          | 202 |
//    | hideleg          | 203 |
//    | hie              | 204 |
//    | htvec            | 205 |
//    | hscratch         | 240 |
//    | hepc             | 241 |
//    | hcause           | 242 |
//    | hbadaddr         | 243 |
//    | hcycle           | e00 |
//    | htime            | e01 |
//    | hinstret         | e02 |
//    | hcycleh          | e80 |
//    | htimeh           | e81 |
//    | hinstreth        | e82 |
//    | misa             | f10 |
//    | mvendorid        | f11 |
//    | marchid          | f12 |
//    | mimpid           | f13 |
//    | mhartid          | f14 |
//    | mstatus          | 300 |
//    | medeleg          | 302 |
//    | mideleg          | 303 |
//    | mie              | 304 |
//    | mtvec            | 305 |
//    | mscratch         | 340 |
//    | mepc             | 341 |
//    | mcause           | 342 |
//    | mtval            | 343 |
//    | mip              | 344 |
//    | mbase            | 380 |
//    | mbound           | 381 |
//    | mibase           | 382 |
//    | mibound          | 383 |
//    | mdbase           | 384 |
//    | mdbound          | 385 |
//    | mcycle           | b00 |
//    | mtime            | f01 |
//    | minstret         | b02 |
//    | mcycleh          | b80 |
//    | mtimeh           | f81 |
//    | minstreth        | b82 |
//    | mucounteren      | 310 |
//    | mscounteren      | 311 |
//    | mhcounteren      | 312 |
//    | mucycle_delta    | 700 |
//    | mutime_delta     | 701 |
//    | muinstret_delta  | 702 |
//    | mscycle_delta    | 704 |
//    | mstime_delta     | 705 |
//    | msinstret_delta  | 706 |
//    | mhcycle_delta    | 708 |
//    | mhtime_delta     | 709 |
//    | mhinstret_delta  | 70a |
//    | mucycle_deltah   | 780 |
//    | mutime_deltah    | 781 |
//    | muinstret_deltah | 782 |
//    | mscycle_deltah   | 784 |
//    | mstime_deltah    | 785 |
//    | msinstret_deltah | 786 |
//    | mhcycle_deltah   | 788 |
//    | mhtime_deltah    | 789 |
//    | mhinstret_deltah | 78a |

typedef enum {
  User = 0,
  Supervisor = 1,
  Machine = 3
} Priv deriving(Bits, Eq, FShow);

instance Ord#(Priv);
    function Bool \< ( Priv x, Priv y );
        return pack(x) < pack(y);
    endfunction
    function Bool \<= ( Priv x, Priv y );
        return pack(x) <= pack(y);
    endfunction
    function Bool \> ( Priv x, Priv y );
        return pack(x) > pack(y);
    endfunction
    function Bool \>= ( Priv x, Priv y );
        return pack(x) >= pack(y);
    endfunction
    function Ordering compare( Priv x, Priv y );
        return compare(pack(x), pack(y));
    endfunction
    function Priv min( Priv x, Priv y );
        return x < y ? x : y;
    endfunction
    function Priv max( Priv x, Priv y );
        return x > y ? x : y;
    endfunction
endinstance

function Priv minPrivCsr(CsrId id) = unpack(id[9:8]);

function Bool isReadOnlyCsr(CsrId id) = id[11:10] == 'b11;

function Reg#(t) readOnlyReg(t value) = interface Reg;
  method Action _write(t _) = noAction;
  method t _read = value;
endinterface;

// we construct register concatenation by induction:
// we may type _concatReg(r1, r2) with
// - Reg#(Bit#(k + n))
// - Reg#(Bit#(k + n)) -> r
// depending of the context
typeclass ConcatReg#(type r, numeric type n, numeric type m)
  dependencies ((r, n) determines m, (r, m) determines n);
  function r _concatReg(Reg#(Bit#(n)) x, Reg#(Bit#(m)) y);
endtypeclass

instance ConcatReg#(Reg#(Bit#(m)), k, n) provisos (Add#(k, n, m));
  function Reg#(Bit#(m)) _concatReg(Reg#(Bit#(k)) r1, Reg#(Bit#(n)) r2);
    return (interface Reg;
      method Bit#(m) _read;
        return {r1._read, r2._read};
      endmethod

      method Action _write(Bit#(m) new_value);
        action
          r1 <= truncateLSB(new_value);
          r2 <= truncate(new_value);
        endaction
      endmethod
    endinterface);
  endfunction
endinstance

instance ConcatReg#(function r f(Reg#(Bit#(m)) z), k, n)
  provisos (ConcatReg#(r, TAdd#(k, n), m));

  function function r f(Reg#(Bit#(m)) z) _concatReg(Reg#(Bit#(k)) x, Reg#(Bit#(n)) y);
    return _concatReg(interface Reg;
      method Bit#(TAdd#(k, n)) _read = {x._read, y._read};
      method Action _write(Bit#(TAdd#(k, n)) z);
        x <= truncateLSB(z);
        y <= truncate(z);
      endmethod
    endinterface);
  endfunction
endinstance

function r concatReg(Reg#(Bit#(n)) x, Reg#(Bit#(m)) y) provisos (ConcatReg#(r, n, m));
  return _concatReg(x, y);
endfunction

interface CsrIfc;
  (* always_ready *) method Bool flush;
  (* always_ready *) method CsrId csr;
  (* always_ready *) method Bit#(32) read();
  (* always_ready *) method Action write(Bit#(32) val);
endinterface

function CsrIfc readOnlyCsr(Bit#(32) r, CsrId i) = interface CsrIfc;
  method Action write(Bit#(32) _) = noAction;
  method flush = False;
  method read = r;
  method csr = i;
endinterface;

module mkRegCsr#(Reg#(Bit#(32)) r, CsrId i) (CsrIfc);
  method write = r._write;
  method flush = False;
  method read = r;
  method csr = i;
endmodule

interface CsrUnitIfc;
  (* always_ready *) method Bool canEnter;
  method Action enter(AluRequest req, Priv p);

  (* always_ready *) method Bool canDeq;
  (* always_ready *) method AluResponse response;
  method Action deq(Bool commit);
endinterface

module mkCsrUnit#(List#(CsrIfc) csrs) (CsrUnitIfc);
  Reg#(Bool) valid[2] <- mkCReg(2, False);
  Reg#(AluRequest) request <- mkRegU;
  Reg#(Priv) priv <- mkRegU;

  RvInstr instr = request.instr;
  Operation opcode = instr.opcode;
  CsrId csr = instr.csr;

  let doRead = opcode == Csrrw ? instr.rd == 0 : True;
  let doWrite = opcode == Csrrc || opcode == Csrrs ? instr.rs1 == 0 : True;
  let readOnly = isReadOnlyCsr(csr);

  let legal = !(readOnly && doWrite) && priv >= minPrivCsr(csr);
  doWrite = doWrite && legal;
  doRead = doRead && legal;

  Bit#(32) value = ?;
  for (Integer i=0; i < List::length(csrs); i = i + 1) if (doRead && csrs[i].csr == csr) begin
    value = csrs[i].read();
  end

  Bit#(32) operand = instr.csrI ? zeroExtend(instr.rs1) : request.rs1;

  Bit#(32) val = case (opcode) matches
    Csrrc : value & ~operand;
    Csrrs : value | operand;
    Csrrw : operand;
    default: ?;
  endcase;

  method canEnter = !valid[1];
  method Action enter(AluRequest req, Priv p) if (!valid[1]);
    valid[1] <= True;
    request <= req;
    priv <= p;
  endmethod

  method canDeq = valid[0];

  method AluResponse response;
    return AluResponse{
      cause: IllegalInstruction,
      pc: request.pc + 4,
      exception: !legal,
      forward: Invalid,
      tval: instr.raw,
      rd: value
    };
  endmethod

  method Action deq(Bool commit) if (valid[0]);
    for (Integer i=0; i < List::length(csrs); i = i + 1) if (doWrite && csrs[i].csr == csr) begin
      csrs[i].write(val);
    end

    valid[0] <= False;
  endmethod
endmodule

module mkCycleCsr(List#(CsrIfc));
  Reg#(Bit#(64)) counter <- mkReg(0);

  (* no_implicit_conditions, fire_when_enabled *)
  rule incr_counter;
    counter <= counter + 1;
  endrule

  return lst(
    readOnlyCsr(truncate(counter), 'hb00),
    readOnlyCsr(truncateLSB(counter), 'hb80)
  );
endmodule

interface InstructionCounterIfc;
  (* always_ready *) method Action incrret;

  interface List#(CsrIfc) csrs;
endinterface

module mkInstructionCounterCsr(InstructionCounterIfc);
  Reg#(Bit#(64)) counter <- mkConfigReg(0);

  method Action incrret;
    counter <= counter+1;
  endmethod

  interface csrs = lst(
    readOnlyCsr(truncate(counter), 'hb02),
    readOnlyCsr(truncateLSB(counter), 'hb82)
  );
endmodule


