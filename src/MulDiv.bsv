export MulRequest(..);
export DivRequest(..);
export MulServer(..);
export DivServer(..);
export mkMulServer;
export mkDivServer;

typedef struct {
  Bit#(32) x1;
  Bit#(32) x2;
  Bool x1Signed;
  Bool x2Signed;
  Bool high;
} MulRequest deriving(Bits, FShow, Eq);

typedef struct {
  Bit#(32) x1;
  Bit#(32) x2;
  Bool isSigned;
  Bool rem;
} DivRequest deriving(Bits, FShow, Eq);

interface MulServer;
  (* always_ready *) method Action enter(MulRequest req);
  (* always_ready *) method Bit#(32) response;
  (* always_ready *) method Bool valid;
endinterface

interface DivServer;
  (* always_ready *) method Action enter(DivRequest req);
  (* always_ready *) method Bit#(32) response;
  (* always_ready *) method Bool valid;
endinterface

interface Multiplier;
  (* always_ready *) method Action enter(Bit#(64) lhs, Bit#(64) rhs);
  (* always_ready *) method Bit#(64) response;
  (* always_ready *) method Bool valid;
endinterface

// Slow but very small multiplier, perform 4 multiplcation steps per cycle
(* synthesize *)
module mkMultiplier(Multiplier);
  Reg#(Bit#(64)) status <- mkReg(0);
  Reg#(Bool) used <- mkReg(False);
  Reg#(Bit#(64)) acc <- mkReg(0);
  Reg#(Bit#(64)) lhs <- mkReg(?);
  Reg#(Bit#(64)) rhs <- mkReg(?);

  rule step if (status != 0);
    acc <= acc +
      (rhs[0] == 1 ? lhs : 0) +
      (rhs[1] == 1 ? lhs << 1 : 0) +
      (rhs[2] == 1 ? lhs << 2 : 0) +
      (rhs[3] == 1 ? lhs << 3 : 0);
    status <= status << 4;
    rhs <= rhs >> 4;
    lhs <= lhs << 4;
  endrule

  method Action enter(Bit#(64) l, Bit#(64) r);
    used <= True;
    status <= 1;
    lhs <= l;
    rhs <= r;
    acc <= 0;
  endmethod

  method Bool valid = used && status == 0;
  method Bit#(64) response = acc;
endmodule

(* synthesize *)
module mkMulServer(MulServer);
  Reg#(Bool) used <- mkReg(False);
  Reg#(MulRequest) req <- mkRegU;
  Bool fastMul = True;

  Multiplier server <- mkMultiplier;

  method Action enter(MulRequest r);
    Bit#(64) x1 = r.x1Signed ? signExtend(r.x1) : zeroExtend(r.x1);
    Bit#(64) x2 = r.x2Signed ? signExtend(r.x2) : zeroExtend(r.x2);
    if (!fastMul) server.enter(x1, x2);
    used <= True;
    req <= r;
  endmethod

  method Bool valid = used && (fastMul || server.valid);

  method Bit#(32) response;
    Bit#(64) x1 = req.x1Signed ? signExtend(req.x1) : zeroExtend(req.x1);
    Bit#(64) x2 = req.x2Signed ? signExtend(req.x2) : zeroExtend(req.x2);
    Bit#(64) ret = fastMul ? x1 * x2 : server.response;
    return req.high ? ret[63:32] : ret[31:0];
  endmethod
endmodule

// Represent an intermediate state
// of the division
typedef struct {
  Bit#(size) index;
  Bit#(size) rem;
  Bit#(size) div;
} DivideUState#(numeric type size) deriving(Bits, FShow, Eq);

function DivideUState#(size) divideInit;
  return DivideUState{
    index: 1 << (valueOf(size) - 1),
    rem: 0,
    div: 0
  };
endfunction

// Let a = b * (2^-(n+1) * q) + 1
//   2 * a = b * (2^-n * q) + 2*r
//   2 * a + 1 = b * (2^-n * q) + 2*r+1
//
// Then we remove b to the reminder if 2*r+1 or 2*r is greater than b
function DivideUState#(size) divideStep(Bit#(size) num, Bit#(size) den, DivideUState#(size) state);
  state.rem = (num & state.index) != 0 ? (state.rem << 1) | 1 : state.rem << 1;

  if (state.rem >= den) begin
    state.rem = state.rem - den;
    state.div = state.div | state.index;
  end

  state.index = state.index >> 1;

  return state;
endfunction

typedef 34 DivideSize;

(* synthesize *)
module mkDivServer(DivServer);
  Reg#(DivideUState#(DivideSize)) state <- mkRegU;
  Reg#(Bool) used <- mkReg(False);
  Reg#(Bool) isOverflow <- mkRegU;
  Reg#(DivRequest) req <- mkRegU;
  Reg#(Bool) isZero <- mkRegU;

  // Let return Q, R such that
  // N = Q * D + R with sign(R) = sign(N) and 0 <= |R| < |D|

  // First if D < 0 and N > 0
  //   N = -Q * -D + R
  //   with -D > 0, R > 0 and N > 0
  // So we compute q, r = divMod(N, -D) and return (-q, r)

  // Second if D > 0 and N < 0
  //   -N = -Q * D - R
  //   with -N > 0, -R > 0 and D > 0
  // So we compute q, r = divMod(-N, D) and return (-q, -r)

  // Then if D < 0 and N < 0
  //   -N = Q * -D - R
  //   with -N > 0, -D > 0 and N < 0
  // So we compute q, r = divMod(-N, -D) and return (q, -r)

  rule step if (state.index != 0);
    Bit#(DivideSize) n = (req.isSigned ? signExtend(req.x1) : zeroExtend(req.x1));
    Bit#(DivideSize) d = (req.isSigned ? signExtend(req.x2) : zeroExtend(req.x2));
    Int#(DivideSize) n_int = unpack(n);
    Int#(DivideSize) d_int = unpack(d);

    n = req.isSigned && n_int < 0 ? -n : n;
    d = req.isSigned && d_int < 0 ? -d : d;

    state <= divideStep(n, d, state);
  endrule

  method Action enter(DivRequest r);
    isOverflow <= r.x1 == -(1 << 31) && r.x2 == -1 && r.isSigned;
    state <= divideInit;
    isZero <= r.x2 == 0;
    used <= True;
    req <= r;
  endmethod

  method Bit#(32) response;
    Bit#(DivideSize) n = (req.isSigned ? signExtend(req.x1) : zeroExtend(req.x1));
    Bit#(DivideSize) d = (req.isSigned ? signExtend(req.x2) : zeroExtend(req.x2));
    Int#(DivideSize) n_int = unpack(n);
    Int#(DivideSize) d_int = unpack(d);

    if (isZero) return req.rem ? 0 : -1;
    else if (isOverflow) return req.rem ? 0 : req.x1;
    else begin
      if (req.rem) begin
        if (req.isSigned && n_int < 0)
          return -truncate(state.rem);
        else
          return truncate(state.rem);
      end else begin
        if (req.isSigned && ((n_int < 0) != (d_int < 0)))
          return -truncate(state.div);
        else
          return truncate(state.div);
      end
    end
  endmethod

  method Bool valid = used && (isZero || isOverflow || state.index == 0);
endmodule
