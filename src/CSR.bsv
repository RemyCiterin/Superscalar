package CSR;

import Utils :: *;
import Decode :: *;
import Ehr :: *;



typedef enum {
    CSRustatus          = 12'h000,
    CSRuie              = 12'h004,
    CSRutvec            = 12'h005,
    CSRuscratch         = 12'h040,
    CSRuepc             = 12'h041,
    CSRucause           = 12'h042,
    CSRubadaddr         = 12'h043,
    CSRuip              = 12'h044,
    CSRfflags           = 12'h001,
    CSRfrm              = 12'h002,
    CSRfcsr             = 12'h003,
    CSRcycle            = 12'hc00,
    CSRtime             = 12'hc01,
    CSRinstret          = 12'hc02,
    CSRcycleh           = 12'hc80,
    CSRtimeh            = 12'hc81,
    CSRinstreth         = 12'hc82,
    CSRsstatus          = 12'h100,
    CSRsedeleg          = 12'h102,
    CSRsideleg          = 12'h103,
    CSRsie              = 12'h104,
    CSRstvec            = 12'h105,
    CSRsscratch         = 12'h140,
    CSRsepc             = 12'h141,
    CSRscause           = 12'h142,
    CSRsbadaddr         = 12'h143,
    CSRsip              = 12'h144,
    CSRsptbr            = 12'h180,
    CSRscycle           = 12'hd00,
    CSRstime            = 12'hd01,
    CSRsinstret         = 12'hd02,
    CSRscycleh          = 12'hd80,
    CSRstimeh           = 12'hd81,
    CSRsinstreth        = 12'hd82,
    CSRhstatus          = 12'h200,
    CSRhedeleg          = 12'h202,
    CSRhideleg          = 12'h203,
    CSRhie              = 12'h204,
    CSRhtvec            = 12'h205,
    CSRhscratch         = 12'h240,
    CSRhepc             = 12'h241,
    CSRhcause           = 12'h242,
    CSRhbadaddr         = 12'h243,
    CSRhcycle           = 12'he00,
    CSRhtime            = 12'he01,
    CSRhinstret         = 12'he02,
    CSRhcycleh          = 12'he80,
    CSRhtimeh           = 12'he81,
    CSRhinstreth        = 12'he82,
    CSRmisa             = 12'hf10,
    CSRmvendorid        = 12'hf11,
    CSRmarchid          = 12'hf12,
    CSRmimpid           = 12'hf13,
    CSRmhartid          = 12'hf14,
    CSRmstatus          = 12'h300,
    CSRmedeleg          = 12'h302,
    CSRmideleg          = 12'h303,
    CSRmie              = 12'h304,
    CSRmtvec            = 12'h305,
    CSRmscratch         = 12'h340,
    CSRmepc             = 12'h341,
    CSRmcause           = 12'h342,
    CSRmtval            = 12'h343,
    CSRmip              = 12'h344,
    CSRmbase            = 12'h380,
    CSRmbound           = 12'h381,
    CSRmibase           = 12'h382,
    CSRmibound          = 12'h383,
    CSRmdbase           = 12'h384,
    CSRmdbound          = 12'h385,
    CSRmcycle           = 12'hb00,
    CSRmtime            = 12'hf01,
    CSRminstret         = 12'hb02,
    CSRmcycleh          = 12'hb80,
    CSRmtimeh           = 12'hf81,
    CSRminstreth        = 12'hb82,
    CSRmucounteren      = 12'h310,
    CSRmscounteren      = 12'h311,
    CSRmhcounteren      = 12'h312,
    CSRmucycle_delta    = 12'h700,
    CSRmutime_delta     = 12'h701,
    CSRmuinstret_delta  = 12'h702,
    CSRmscycle_delta    = 12'h704,
    CSRmstime_delta     = 12'h705,
    CSRmsinstret_delta  = 12'h706,
    CSRmhcycle_delta    = 12'h708,
    CSRmhtime_delta     = 12'h709,
    CSRmhinstret_delta  = 12'h70a,
    CSRmucycle_deltah   = 12'h780,
    CSRmutime_deltah    = 12'h781,
    CSRmuinstret_deltah = 12'h782,
    CSRmscycle_deltah   = 12'h784,
    CSRmstime_deltah    = 12'h785,
    CSRmsinstret_deltah = 12'h786,
    CSRmhcycle_deltah   = 12'h788,
    CSRmhtime_deltah    = 12'h789,
    CSRmhinstret_deltah = 12'h78a
} CSR deriving (Bits, Eq, FShow);

typedef enum{
  INSTRUCTION_ADDRESS_MISALIGNED,
  INSTRUCTION_ACCESS_FAULT,
  ILLEGAL_INSTRUCTION,
  BREAKPOINT,
  LOAD_ADDRESS_MISALIGNED,
  LOAD_ACCESS_FAULT,
  STORE_AMO_ADDRESS_MISALIGNED,
  STORE_AMO_ACCESS_FAULT,
  ECALL_FROM_U,
  ECALL_FROM_S,
  ECALL_FROM_M,
  INSTRUCTION_PAGE_FAULT,
  LOAD_PAGE_FAULT,
  STORE_AMO_PAGE_FAULT
} CauseException deriving(FShow, Eq);

instance Bits#(CauseException, 4);
  function Bit#(4) pack(CauseException cause);
    return case (cause) matches
      INSTRUCTION_ADDRESS_MISALIGNED : 0;
      INSTRUCTION_ACCESS_FAULT       : 1;
      ILLEGAL_INSTRUCTION            : 2;
      BREAKPOINT                     : 3;
      LOAD_ADDRESS_MISALIGNED        : 4;
      LOAD_ACCESS_FAULT              : 5;
      STORE_AMO_ADDRESS_MISALIGNED   : 6;
      STORE_AMO_ACCESS_FAULT         : 7;
      ECALL_FROM_U                   : 8;
      ECALL_FROM_S                   : 9;
      ECALL_FROM_M                   : 11;
      INSTRUCTION_PAGE_FAULT         : 12;
      LOAD_PAGE_FAULT                : 13;
      STORE_AMO_PAGE_FAULT           : 15;
    endcase;
  endfunction

  function CauseException unpack(Bit#(4) val);
    return case (val) matches
      0  :  INSTRUCTION_ADDRESS_MISALIGNED;
      1  :  INSTRUCTION_ACCESS_FAULT;
      2  :  ILLEGAL_INSTRUCTION;
      3  :  BREAKPOINT;
      4  :  LOAD_ADDRESS_MISALIGNED;
      5  :  LOAD_ACCESS_FAULT;
      6  :  STORE_AMO_ADDRESS_MISALIGNED;
      7  :  STORE_AMO_ACCESS_FAULT;
      8  :  ECALL_FROM_U;
      9  :  ECALL_FROM_S;
      11 :  ECALL_FROM_M;
      12 :  INSTRUCTION_PAGE_FAULT;
      13 :  LOAD_PAGE_FAULT;
      15 :  STORE_AMO_PAGE_FAULT;
    endcase;
  endfunction
endinstance

typedef enum {
  SUPERVISOR_SOFTWARE_INTERRUPT,
  MACHINE_SOFTWARE_INTERRUPT,
  SUPERVISOR_TIMER_INTERRUPT,
  MACHINE_TIMER_INTERRUPT,
  SUPERVISOR_EXTERNAL_INTERRUPT,
  MACHINE_EXTERNAL_INTERRUPT
} CauseInterrupt deriving(Eq, FShow);

instance Bits#(CauseInterrupt, 4);
  function Bit#(4) pack(CauseInterrupt cause);
    return case (cause) matches
      SUPERVISOR_SOFTWARE_INTERRUPT : 1;
      MACHINE_SOFTWARE_INTERRUPT    : 3;
      SUPERVISOR_TIMER_INTERRUPT    : 5;
      MACHINE_TIMER_INTERRUPT       : 7;
      SUPERVISOR_EXTERNAL_INTERRUPT : 9;
      MACHINE_EXTERNAL_INTERRUPT    : 11;
    endcase;
  endfunction

  function CauseInterrupt unpack(Bit#(4) val);
    return case (val) matches
      1  : SUPERVISOR_SOFTWARE_INTERRUPT;
      3  : MACHINE_SOFTWARE_INTERRUPT;
      5  : SUPERVISOR_TIMER_INTERRUPT;
      7  : MACHINE_TIMER_INTERRUPT;
      9  : SUPERVISOR_EXTERNAL_INTERRUPT;
      11 : MACHINE_EXTERNAL_INTERRUPT;
    endcase;
  endfunction
endinstance

typedef union tagged {
  struct {
    Bit#(4) cause;
    Bit#(32) trap_pc;
  } Exception;
  Bit#(32) RetPc; // xRET instructions
  Bit#(32) Result; // csr read op
  void None; // all other op
} CsrResult deriving(Bits, FShow, Eq);

interface CsrFile;
  // execute a CSRxx operation (csrrw, csrrc...) and return the previous value of
  // the modufied csr register
  method ActionValue#(Maybe#(Bit #(32))) exec_csrxx(
    Itype itype,
    IOp op,
    Bit#(32) rs1
  );

  // execute a mret instruction
  method ActionValue#(Bit#(32)) mret;

  // increment the instret register
  method Action increment_instret;

  // execute an exception
  method ActionValue#(Bit#(32)) exec_exception(
    Bit#(32) epc,
    Bool is_interrupt,
    Bit#(4) cause,
    Bit#(32) tval
  );

  method Bit#(32) read_epc;

  method Maybe#(CauseInterrupt) readyInterrupt;
  method Bool wakeFromWFI;

  // Floating point functions
  method Bit#(3) read_frm();

  method Action set_fflags(Bit#(5) fflags);

  (* always_ready, always_enabled *)
  method Action set_TIME(Bit#(64) t);

  method Action set_meip(Bool b);
  method Action set_mtip(Bool b);
  method Action set_msip(Bool b);
endinterface

module mkCsrFile#(
    Bit#(32) hartid
  ) (CsrFile);

  Bit#(32) mvendorid = 0;
  Bit#(32) marchid = 0;
  Bit#(32) mimpid = 0;

  Reg#(Bit#(32)) mvendorid_csr = readOnlyReg(mvendorid);
  Reg#(Bit#(32)) marchid_csr = readOnlyReg(marchid);
  Reg#(Bit#(32)) mimpid_csr = readOnlyReg(mimpid);

  Bit#(32) default_mtvec = 32'h80000000;

  Reg#(Bit#(3)) frm_field <- mkReg(0);
  Reg#(Bit#(5)) fflags_field <- mkReg(0);

  Reg#(Bit#(32)) fcsr_csr = concatReg(
    asReg(fflags_field),
    asReg(frm_field),
    asReg(readOnlyReg(24'b0))
  );

  // Counters
  Ehr#(2, Bit#(64)) cycle_counter <- mkEhr(0);
  Ehr#(2, Bit#(64)) time_counter <- mkEhr(0);
  Reg#(Bit#(64)) instret_counter <- mkReg(0);

  // mtvec declaration
  Reg#(Bit#(30)) mtvec_field <- mkReg(truncateLSB(default_mtvec));
  Reg#(Bit#(2)) mtvec_mode_field <- mkReg(0);

  Reg#(Bit#(32)) mtvec_csr = concatReg(
    asReg(mtvec_field),
    asReg(mtvec_mode_field)
  );

  // mhardid declaration
  Reg#(Bit#(32)) mhartid_csr = readOnlyReg(hartid);

  // mstatus declaration
  Reg#(Bit#(1)) mie_field <- mkReg(0);
  Reg#(Bit#(1)) mpie_field <- mkReg(0);

  Reg#(Bit#(32)) mstatus_csr = concatReg(
    asReg(readOnlyReg(24'b0)),
    asReg(mpie_field),
    asReg(readOnlyReg(3'b0)),
    asReg(mie_field),
    asReg(readOnlyReg(3'b0))
  );

  // mie declaration
  Reg#(Bit#(1)) meie_field <- mkReg(0);
  Reg#(Bit#(1)) mtie_field <- mkReg(0);
  Reg#(Bit#(1)) msie_field <- mkReg(0);

  Reg#(Bit#(32)) mie_csr = concatReg(
    asReg(readOnlyReg(20'b0)),
    asReg(meie_field),
    asReg(readOnlyReg(3'b0)),
    asReg(mtie_field),
    asReg(readOnlyReg(3'b0)),
    asReg(msie_field),
    asReg(readOnlyReg(3'b0))
  );

  // mip declaration
  Reg#(Bit#(1)) meip_field <- mkReg(0);
  Reg#(Bit#(1)) mtip_field <- mkReg(0);
  Reg#(Bit#(1)) msip_field <- mkReg(0);

  Reg#(Bit#(32)) mip_csr = concatReg(
    asReg(readOnlyReg(20'b0)),
    asReg(meip_field),
    asReg(readOnlyReg(3'b0)),
    asReg(mtip_field),
    asReg(readOnlyReg(3'b0)),
    asReg(msip_field),
    asReg(readOnlyReg(3'b0))
  );

  // mtval declaration
  Reg#(Bit#(32)) mtval_csr <- mkReg(0);

  // mepc declaration
  Reg#(Bit#(32)) mepc_csr <- mkReg(0);

  // mscratch declaration
  Reg#(Bit#(32)) mscratch_csr <- mkReg(0);

  // mcause declaration
  Reg#(Bit#(32)) mcause_csr <- mkReg(0);

  // mcycle declaration
  Reg#(Bit#(32)) mcycle_csr = truncateReg(cycle_counter[1]);
  Reg#(Bit#(32)) mcycleh_csr = truncateRegLSB(cycle_counter[1]);

  // mtime declaration
  Reg#(Bit#(32)) mtime_csr = truncateReg(time_counter[1]);
  Reg#(Bit#(32)) mtimeh_csr = truncateRegLSB(time_counter[1]);

  // minstret declaration
  Reg#(Bit#(32)) minstret_csr = truncateReg(instret_counter);
  Reg#(Bit#(32)) minstreth_csr = truncateRegLSB(instret_counter);

  function Reg#(Bit#(32)) getCSR(CSR csr);
    return case (csr)
      CSRmhartid : mhartid_csr;
      CSRmvendorid : mvendorid_csr;
      CSRmimpid : mimpid_csr;
      CSRmarchid : marchid_csr;
      CSRmtvec : mtvec_csr;
      CSRmstatus : mstatus_csr;
      CSRmie : mie_csr;
      CSRmip : mip_csr;
      CSRmtval : mtval_csr;
      CSRmepc : mepc_csr;
      CSRmscratch : mscratch_csr;
      CSRmcause : mcause_csr;
      CSRmtime : mtime_csr;
      CSRmtimeh : mtimeh_csr;
      CSRmcycle : mcycle_csr;
      CSRmcycleh : mcycleh_csr;
      CSRminstret : minstret_csr;
      CSRminstreth : minstreth_csr;
      CSRfcsr : fcsr_csr;
      default: readOnlyReg(0);
    endcase;
  endfunction

  function Bool isLegalCSR(CSR csr);
    return case (csr)
      CSRmhartid   : True;
      CSRmvendorid : True;
      CSRmimpid    : True;
      CSRmarchid   : True;
      CSRmtvec     : True;
      CSRmstatus   : True;
      CSRmie       : True;
      CSRmip       : True;
      CSRmtval     : True;
      CSRmepc      : True;
      CSRmscratch  : True;
      CSRmcause    : True;
      CSRmtime     : True;
      CSRmtimeh    : True;
      CSRmcycle    : True;
      CSRmcycleh   : True;
      CSRminstret  : True;
      CSRminstreth : True;
      CSRfcsr      : True;
      default: False;
    endcase;
  endfunction

  function Maybe#(CauseInterrupt) readyInterruptFunc();
    Bit#(12) ready_interrupts = truncate(mip_csr) & truncate(mie_csr);

    Bool interrupts_enabled = mie_field == 1;

    if (ready_interrupts != 0 && interrupts_enabled) begin
      // pack/unpack type conversion:
      // UInt#(TLog#(TAdd#(12,1))) == UInt#(4) -> Bit#(4) -> CauseInterrupt
      return Valid(unpack(pack(countZerosLSB(ready_interrupts))));
    end else return Invalid;
  endfunction

  rule incrementCycle;
    cycle_counter[0] <= cycle_counter[0] + 1;
  endrule

  method Action set_TIME(Bit#(64) t);
    time_counter[0] <= t;
  endmethod

  method Action set_mtip(Bool b);
    mtip_field <= b ? 1 : 0;
  endmethod

  method Action set_meip(Bool b);
    meip_field <= b ? 1 : 0;
  endmethod

  method Action set_msip(Bool b);
    msip_field <= b ? 1 : 0;
  endmethod

  method Bit#(32) read_epc;
    return mepc_csr;
  endmethod

  method Maybe#(CauseInterrupt) readyInterrupt;
    return readyInterruptFunc;
  endmethod

  method Bool wakeFromWFI;
    return (mip_csr & mie_csr) != 0;
  endmethod

  method Action increment_instret;
    instret_counter <= instret_counter + 1;
  endmethod

  method ActionValue#(Bit#(32)) exec_exception(
    Bit#(32) epc, Bool is_interrupt, Bit#(4) cause, Bit#(32) tval);
    actionvalue
      mepc_csr <= epc;
      let mcause_msb = (is_interrupt ? {1'b1, 31'b0} : 0);
      mcause_csr <= mcause_msb | zeroExtend(cause);
      mtval_csr <= tval;

      mpie_field <= mie_field;
      mie_field <= 0;

      let base = mtvec_csr & {unpack(-1), 2'b0};
      let is_vectored = mtvec_csr[1:0] == 2'b01;
      let trap_pc =
        (is_vectored && is_interrupt ? base + (zeroExtend(cause) << 2) : base);
      //$display("trap pc= %h", trap_pc);
      //$display("with: %b %b %b", mie_csr, mip_csr, mstatus_csr);
      return trap_pc;
    endactionvalue
  endmethod

  method ActionValue#(Bit#(32)) mret;
    actionvalue
      //$display("ret: %b %b %b", mie_csr, mip_csr, mstatus_csr);
      // update the mie field in function of it's previous value
      mie_field <= mpie_field;
      mpie_field <= 0;

      return mepc_csr;
    endactionvalue
  endmethod

  method read_frm = frm_field;
  method set_fflags = fflags_field._write;

  method ActionValue#(Maybe#(Bit#(32))) exec_csrxx(Itype itype, IOp op, Bit#(32) rs1_val);
    actionvalue
      //$display(displayInstr(tagged Itype{instr: instr, op: op}));
      //$display("mie: %b mip: %b mstatus[mie]: %b", mie_csr, mip_csr, mie_field);
      //$display("mstatus[mpie]: %b", mpie_field);
      Bit#(12) csr_addr = immediateBits(itype)[11:0];
      Reg#(Bit#(32)) csr = getCSR(unpack(csr_addr));
      Bit#(5) rs1 = getRs1(itype.bits);
      Bit#(5) rd  = getRd(itype.bits);

      case (op) matches
        CSRRWI : rs1_val = zeroExtend(rs1);
        CSRRSI : rs1_val = zeroExtend(rs1);
        CSRRCI : rs1_val = zeroExtend(rs1);
        default: noAction;
      endcase

      Bool wrote_instret =
        csr_addr == pack(CSRminstret) || csr_addr == pack(CSRminstreth);

      function Action incr_instret;
        action
          if (!wrote_instret)
            instret_counter <= instret_counter+1;
        endaction
      endfunction

      // execute a CSRRW or a CSRRWI
      function ActionValue#(Maybe#(Bit#(32))) exec_write();
        actionvalue
          if (!isLegalCSR(unpack(csr_addr))) begin
            return Invalid;
          end else begin
            let out = tagged Valid (rd == 0 ? 0 : csr);
            csr <= rs1_val;
            return out;
          end
        endactionvalue
      endfunction

      // execute another CSR operation
      function ActionValue#(Maybe#(Bit#(32))) exec_other();
        actionvalue
          if (!isLegalCSR(unpack(csr_addr))) begin
            return Invalid;
          end else begin
            let v_new = (op == CSRRS || op == CSRRSI ? csr | rs1_val : csr & ~rs1_val);

            if (rs1 != 0) begin
              csr <= v_new;
              incr_instret();
              return tagged Valid csr;
            end else begin
              incr_instret();
              return tagged Valid csr;
            end
          end
        endactionvalue
      endfunction


      case (op) matches
        CSRRW  : begin Maybe#(Bit#(32)) ret <- exec_write(); return ret; end
        CSRRWI : begin Maybe#(Bit#(32)) ret <- exec_write(); return ret; end
        CSRRC  : begin Maybe#(Bit#(32)) ret <- exec_other(); return ret; end
        CSRRCI : begin Maybe#(Bit#(32)) ret <- exec_other(); return ret; end
        CSRRS  : begin Maybe#(Bit#(32)) ret <- exec_other(); return ret; end
        CSRRSI : begin Maybe#(Bit#(32)) ret <- exec_other(); return ret; end
        default : return Invalid;
      endcase
    endactionvalue
  endmethod

endmodule

endpackage
