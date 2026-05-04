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

// A local preprocessor macro to define read only registers of n bits sets to zero
`define ZERO_REG(n) asReg(readOnlyReg(Bit#(n)'(0)))

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

function CsrIfc regCsr(Reg#(Bit#(32)) r, CsrId i);
  return interface CsrIfc;
    method write = r._write;
    method flush = False;
    method read = r;
    method csr = i;
  endinterface;
endfunction

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

  let doRead = opcode == Csrrw ? instr.rd != 0 : True;
  let doWrite = opcode == Csrrc || opcode == Csrrs ? instr.rs1 != 0 : True;
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
      flush: doWrite,
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

module mkMHartIdCsr#(Bit#(32) hart) (List#(CsrIfc));
  return lst(
    readOnlyCsr(hart, 'hf14)
  );
endmodule

module mkCycleCsr(List#(CsrIfc));
  Reg#(Bit#(64)) counter <- mkConfigReg(0);

  (* no_implicit_conditions, fire_when_enabled *)
  rule incr_counter;
    counter <= counter + 1;
  endrule

  return lst(
    readOnlyCsr(truncate(counter), 'hb00),
    readOnlyCsr(truncateLSB(counter), 'hb80)
  );
endmodule

module mkScratchCsr(List#(CsrIfc));
  Reg#(Bit#(32)) mscratch <- mkConfigRegU;
  Reg#(Bit#(32)) sscratch <- mkConfigRegU;

  return lst(
    regCsr(asReg(mscratch), 'h340),
    regCsr(asReg(sscratch), 'h140)
  );
endmodule

interface InstructionCounterIfc;
  (* always_ready *) method Action incrret(Bit#(64) value);

  interface List#(CsrIfc) csrs;
endinterface

module mkInstructionCounterCsr(InstructionCounterIfc);
  Reg#(Bit#(64)) counter <- mkConfigReg(0);

  method Action incrret(Bit#(64) value);
    counter <= counter + value;
  endmethod

  interface csrs = lst(
    readOnlyCsr(truncate(counter), 'hb02),
    readOnlyCsr(truncateLSB(counter), 'hb82)
  );
endmodule

interface TrapCsrIfc;
  interface Reg#(Bit#(32)) mepc;
  interface Reg#(Bit#(32)) mcause;
  interface Reg#(Bit#(32)) mtvec;
  interface Reg#(Bit#(32)) mtval;

  interface Reg#(Bit#(32)) sepc;
  interface Reg#(Bit#(32)) scause;
  interface Reg#(Bit#(32)) stvec;
  interface Reg#(Bit#(32)) stval;

  interface List#(CsrIfc) csrs;
endinterface

module mkTrapCsr(TrapCsrIfc);
  Reg#(Bit#(32)) mepc_reg <- mkConfigReg(?);
  Reg#(Bit#(32)) mcause_reg <- mkConfigReg(?);
  Reg#(Bit#(32)) mtvec_reg <- mkConfigReg(?);
  Reg#(Bit#(32)) mtval_reg <- mkConfigReg(?);

  Reg#(Bit#(32)) sepc_reg <- mkConfigReg(?);
  Reg#(Bit#(32)) scause_reg <- mkConfigReg(?);
  Reg#(Bit#(32)) stvec_reg <- mkConfigReg(?);
  Reg#(Bit#(32)) stval_reg <- mkConfigReg(?);

  interface mepc = asReg(mepc_reg);
  interface mcause = asReg(mcause_reg);
  interface mtvec = asReg(mtvec_reg);
  interface mtval = asReg(mtval_reg);
  interface sepc = asReg(sepc_reg);
  interface scause = asReg(scause_reg);
  interface stvec = asReg(stvec_reg);
  interface stval = asReg(stval_reg);
  interface csrs = lst(
    regCsr(asReg(mepc_reg), 'h341),
    regCsr(asReg(mtvec_reg), 'h305),
    regCsr(asReg(mtval_reg), 'h343),
    regCsr(asReg(mcause_reg), 'h342),
    regCsr(asReg(sepc_reg), 'h141),
    regCsr(asReg(stvec_reg), 'h105),
    regCsr(asReg(stval_reg), 'h143),
    regCsr(asReg(scause_reg), 'h142)
  );
endmodule

interface InterruptPendingCsrIfc;
  interface Reg#(Bit#(1)) meip;
  interface Reg#(Bit#(1)) mtip;
  interface Reg#(Bit#(1)) msip;
  interface Reg#(Bit#(1)) seip;
  interface Reg#(Bit#(1)) stip;
  interface Reg#(Bit#(1)) ssip;
  interface Reg#(Bit#(32)) all;
  interface List#(CsrIfc) csrs;
endinterface

module mkInterruptPendingCsr(InterruptPendingCsrIfc);
  Reg#(Bit#(1)) meip_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) mtip_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) msip_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) ssip_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) seip_reg = meip_reg;
  Reg#(Bit#(1)) stip_reg = mtip_reg;

  Reg#(Bit#(32)) mip_reg = concatReg(
    `ZERO_REG(20),
    asReg(meip_reg),
    `ZERO_REG(1),
    asReg(readOnlyReg(seip_reg)),//asReg(seip_reg),
    `ZERO_REG(1),
    asReg(mtip_reg),
    `ZERO_REG(1),
    asReg(readOnlyReg(stip_reg)),//asReg(stip_reg),
    `ZERO_REG(1),
    asReg(msip_reg),
    `ZERO_REG(1),
    asReg(ssip_reg),
    `ZERO_REG(1)
  );

  Reg#(Bit#(32)) sip_reg = concatReg(
    `ZERO_REG(22),
    asReg(seip_reg),
    `ZERO_REG(3),
    asReg(stip_reg),
    `ZERO_REG(3),
    asReg(ssip_reg),
    `ZERO_REG(1)
  );

  interface meip = meip_reg;
  interface msip = msip_reg;
  interface mtip = mtip_reg;
  interface seip = seip_reg;
  interface ssip = ssip_reg;
  interface stip = stip_reg;
  interface all = mip_reg;
  interface csrs = lst(
    regCsr(asReg(mip_reg), 'h344),
    regCsr(asReg(sip_reg), 'h144)
  );
endmodule

interface InterruptEnableCsrIfc;
  interface Reg#(Bit#(1)) meie;
  interface Reg#(Bit#(1)) mtie;
  interface Reg#(Bit#(1)) msie;
  interface Reg#(Bit#(1)) seie;
  interface Reg#(Bit#(1)) stie;
  interface Reg#(Bit#(1)) ssie;
  interface Reg#(Bit#(32)) all;
  interface List#(CsrIfc) csrs;
endinterface

module mkInterruptEnableCsr(InterruptEnableCsrIfc);
  Reg#(Bit#(1)) meie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) mtie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) msie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) ssie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) seie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) stie_reg <- mkConfigReg(0);

  Reg#(Bit#(32)) mie_reg = concatReg(
    `ZERO_REG(20),
    asReg(meie_reg),
    `ZERO_REG(1),
    asReg(seie_reg),
    `ZERO_REG(1),
    asReg(mtie_reg),
    `ZERO_REG(1),
    asReg(stie_reg),
    `ZERO_REG(1),
    asReg(msie_reg),
    `ZERO_REG(1),
    asReg(ssie_reg),
    `ZERO_REG(1)
  );

  Reg#(Bit#(32)) sie_reg = concatReg(
    `ZERO_REG(22),
    asReg(seie_reg),
    `ZERO_REG(3),
    asReg(stie_reg),
    `ZERO_REG(3),
    asReg(ssie_reg),
    `ZERO_REG(1)
  );

  interface meie = meie_reg;
  interface msie = msie_reg;
  interface mtie = mtie_reg;
  interface seie = seie_reg;
  interface ssie = ssie_reg;
  interface stie = stie_reg;
  interface all = mie_reg;
  interface csrs = lst(
    regCsr(asReg(mie_reg), 'h344),
    regCsr(asReg(sie_reg), 'h144)
  );
endmodule

interface DelegCsrIfc;
  interface Reg#(Bit#(32)) medeleg;
  interface Reg#(Bit#(32)) mideleg;
  interface List#(CsrIfc) csrs;
endinterface

module mkDelegCsr(DelegCsrIfc);
  Reg#(Bit#(32)) medeleg_reg <- mkConfigReg(0);
  Reg#(Bit#(32)) mideleg_reg <- mkConfigReg(0);

  method mideleg = mideleg_reg;
  method medeleg = medeleg_reg;
  interface csrs = lst(
    regCsr(asReg(medeleg_reg), 'h302),
    regCsr(asReg(mideleg_reg), 'h303)
  );
endmodule

interface StatusCsrIfc;
  interface Reg#(Bit#(1)) mie;
  interface Reg#(Bit#(1)) mpie;
  interface Reg#(Bit#(2)) mpp;
  interface Reg#(Bit#(1)) spp;
  interface Reg#(Bit#(1)) mxr;
  interface Reg#(Bit#(1)) sum;
  interface Reg#(Bit#(1)) spie;
  interface Reg#(Bit#(1)) sie;
  interface List#(CsrIfc) csrs;
endinterface

module mkStatusCsr(StatusCsrIfc);
  Reg#(Bit#(1)) tsr_reg = `ZERO_REG(1);
  Reg#(Bit#(1)) tw_reg = `ZERO_REG(1);
  Reg#(Bit#(1)) tmv_reg = `ZERO_REG(1);
  Reg#(Bit#(1)) mxr_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) sum_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) mprv_reg <- mkConfigReg(0);
  Reg#(Bit#(2)) xs_reg = `ZERO_REG(2);
  Reg#(Bit#(2)) fs_reg = `ZERO_REG(2);
  Reg#(Bit#(2)) mpp_reg <- mkConfigReg('b11);
  Reg#(Bit#(2)) vs_reg = `ZERO_REG(2);
  Reg#(Bit#(1)) spp_reg <- mkConfigReg(1);
  Reg#(Bit#(1)) mpie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) spie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) mie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) sie_reg <- mkConfigReg(0);
  Reg#(Bit#(1)) sd_reg = readOnlyReg(pack(xs_reg == 'b11 && fs_reg == 'b11));

  Reg#(Bit#(32)) mstatus_reg = concatReg(
    `ZERO_REG(9),
    asReg(tsr_reg),
    asReg(tw_reg),
    asReg(tmv_reg),
    asReg(mxr_reg),
    asReg(sum_reg),
    asReg(mprv_reg),
    asReg(xs_reg),
    asReg(fs_reg),
    asReg(mpp_reg),
    asReg(vs_reg),
    asReg(spp_reg),
    asReg(mpie_reg),
    `ZERO_REG(1),
    asReg(spie_reg),
    `ZERO_REG(1),
    asReg(mie_reg),
    `ZERO_REG(1),
    asReg(sie_reg),
    `ZERO_REG(1)
  );

  Reg#(Bit#(32)) sstatus_reg = concatReg(
    asReg(sd_reg),
    `ZERO_REG(11),
    asReg(mxr_reg),
    asReg(sum_reg),
    `ZERO_REG(1),
    asReg(xs_reg),
    asReg(fs_reg),
    `ZERO_REG(2),
    asReg(vs_reg),
    asReg(spp_reg),
    `ZERO_REG(2),
    asReg(spie_reg),
    `ZERO_REG(3),
    asReg(sie_reg),
    `ZERO_REG(1)
  );

  method Reg#(Bit#(1)) mie = mie_reg;
  method Reg#(Bit#(1)) mpie = mpie_reg;
  method Reg#(Bit#(2)) mpp = mpp_reg;
  method Reg#(Bit#(1)) spp = spp_reg;
  method Reg#(Bit#(1)) mxr = mxr_reg;
  method Reg#(Bit#(1)) sum = sum_reg;
  method Reg#(Bit#(1)) spie = spie_reg;
  method Reg#(Bit#(1)) sie = sie_reg;

  interface csrs = lst(
    regCsr(asReg(mstatus_reg), 'h300),
    regCsr(asReg(sstatus_reg), 'h100)
  );
endmodule

typedef struct {
  Bit#(1) sv32;
  Bit#(9) asid;
  Bit#(22) ppn;
} Satp deriving(Bits, FShow, Eq);

interface SatpCsrIfc;
  interface Reg#(Satp) satp;
  interface List#(CsrIfc) csrs;
endinterface

module mkSatpCsr(SatpCsrIfc);
  Reg#(Satp) satp_reg <- mkConfigReg(unpack(0));

  Reg#(Bit#(32)) satp_reg32 = Reg{
    _write: compose(satp_reg._write, unpack),
    _read: pack(satp_reg)
  };

  interface satp = satp_reg;
  interface csrs = lst(regCsr(asReg(satp_reg32), 'h180));
endmodule
