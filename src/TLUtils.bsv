import Assert :: *;

typedef Bit#(TLog#(n)) Token#(numeric type n);

instance StringLiteral#(Fmt);
  function Fmt fromString(String s) = $format("%s", s);
endinstance

function Action doAssert(Bool b, Fmt str);
  action
    if (!b) begin
      //`ifdef BSIM
      $fdisplay(stderr, "\n%m: ASSERT FAIL!!");
      $fdisplay(stderr, "\n", str);
      //`endif
      dynamicAssert(b, "");
    end
  endaction
endfunction

// if x = {x[size-1], ..., x[0]}
// return {x[size-1-a], ..., x[0], x[size-1], ..., x[(size-a) % size]}
function Bit#(size) rotateLeft(Bit#(size) x, Bit#(TLog#(size)) a);
  // x = {x[size-1], ..., x[0]}
  // x << a = {x[size-1-a], ..., x[0], 0, ..., 0}
  // x >> b = {0, ..., 0, x[size-1], ..., x[b]}
  // And we want 1+(size-1-a) to be equal to b, so b=size-a

  if (valueOf(size) < 2) return x;
  else begin
    Bit#(TLog#(size)) b = fromInteger(valueOf(size) - 1) - a + 1;
    return (x << a) | (x >> b);
  end
endfunction

function Bit#(size) rotateRight(Bit#(size) x, Bit#(TLog#(size)) a);
  // x = {x[size-1], ..., x[0]}
  // x >> a = {0, ..., 0, x[size-1], ..., x[a]}
  // x << b = {x[size-1-b], ..., x[0], 0, ..., 0}
  // And we want 1+(size-1-b) to be equal to a, so b = size-a

  if (valueOf(size) < 2) return x;
  else begin
    Bit#(TLog#(size)) b = fromInteger(valueOf(size) - 1) - a + 1;
    return (x >> a) | (x << b);
  end
endfunction

// return the index of the less significant one
function Bit#(TAdd#(TLog#(size), 1)) firstOne(Bit#(size) x);

  function Bit#(TAdd#(TLog#(size), 1)) aux(Integer k);
    if (k == valueOf(size))
      return fromInteger(valueOf(size));
    else
      return x[k] == 1 ? fromInteger(k) : aux(k+1);
  endfunction

  return aux(0);
endfunction

// return the index of the most significant one
function Bit#(TAdd#(TLog#(size), 1)) lastOne(Bit#(size) x);

  function Bit#(TAdd#(TLog#(size), 1)) aux(Integer k);
    if (k == valueOf(size))
      return fromInteger(valueOf(size));
    else
      return x[valueOf(size) - 1 - k] == 1 ?
        fromInteger(valueOf(size) - 1 - k) :
        aux(k+1);
  endfunction

  return aux(0);
endfunction

// Return the index of the first one in a bitmask starting by a given index
function Maybe#(Bit#(TLog#(size)))
  firstOneFrom(Bit#(size) x, Bit#(TLog#(size)) n);

  let y = rotateRight(x, n);
  let m = firstOne(y);

  if (m == fromInteger(valueOf(size)))
    return Invalid;
  else begin
    let k = {1'b0, n} + m;
    return Valid(
      k >= fromInteger(valueOf(size)) ?
        truncate(k - fromInteger(valueOf(size))) :
        truncate(k)
    );
  end
endfunction

// Return the index of the last one in a bitmask starting by a given index
function Maybe#(Bit#(TLog#(size)))
  lastOneFrom(Bit#(size) x, Bit#(TLog#(size)) n);

  let y = rotateRight(x, n);
  let m = lastOne(y);

  if (m == fromInteger(valueOf(size)))
    return Invalid;
  else begin
    let k = {1'b0, n} + m;
    return Valid(
      k >= fromInteger(valueOf(size)) ?
        truncate(k - fromInteger(valueOf(size))) :
        truncate(k)
    );
  end
endfunction
