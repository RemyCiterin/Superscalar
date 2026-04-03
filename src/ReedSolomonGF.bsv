// Thil file implement the Galois Field GF(256) represented by the quotient:
// `GF(2)[x] / X^8 + X^4 + X^3 + X^2 + X` (represented in hexa by 0x11D).
//
// Using this representation `X` is a primitive element of the field, meaning that every
// elements (except 0) can be written as a power of `X` modulo `X^8 + X^4 + X^3 + X^2 + X`. For
// convenience `X` will be noted as `alpha`, to remove the ambiguity with the polynomes over
// GF(256)...

typedef struct { Bit#(8) raw; } GF256 deriving(Bits, Ord, Eq);

instance Literal#(GF256);
  function GF256 fromInteger(Integer x);
    return GF256{raw: fromInteger(x)};
  endfunction

  function Bool inLiteralRange(GF256 a, Integer x);
    return inLiteralRange(a.raw, x);
  endfunction
endinstance

// `alpha` is a primitive element of GF(256) used to perform multiplication/division operations, and
// used to compute the syndromes in the Reed Solomon decoding process.
GF256 alpha = 2;

// This table returns all the power of `alpha` (primitive element of the Galois field)
GF256 gf256_exp[512] = {
  'h1, 'h2, 'h4, 'h8, 'h10, 'h20, 'h40, 'h80, 'h1d, 'h3a, 'h74, 'he8, 'hcd, 'h87, 'h13, 'h26,
  'h4c, 'h98, 'h2d, 'h5a, 'hb4, 'h75, 'hea, 'hc9, 'h8f, 'h3, 'h6, 'hc, 'h18, 'h30, 'h60, 'hc0,
  'h9d, 'h27, 'h4e, 'h9c, 'h25, 'h4a, 'h94, 'h35, 'h6a, 'hd4, 'hb5, 'h77, 'hee, 'hc1, 'h9f, 'h23,
  'h46, 'h8c, 'h5, 'ha, 'h14, 'h28, 'h50, 'ha0, 'h5d, 'hba, 'h69, 'hd2, 'hb9, 'h6f, 'hde, 'ha1,
  'h5f, 'hbe, 'h61, 'hc2, 'h99, 'h2f, 'h5e, 'hbc, 'h65, 'hca, 'h89, 'hf, 'h1e, 'h3c, 'h78, 'hf0,
  'hfd, 'he7, 'hd3, 'hbb, 'h6b, 'hd6, 'hb1, 'h7f, 'hfe, 'he1, 'hdf, 'ha3, 'h5b, 'hb6, 'h71, 'he2,
  'hd9, 'haf, 'h43, 'h86, 'h11, 'h22, 'h44, 'h88, 'hd, 'h1a, 'h34, 'h68, 'hd0, 'hbd, 'h67, 'hce,
  'h81, 'h1f, 'h3e, 'h7c, 'hf8, 'hed, 'hc7, 'h93, 'h3b, 'h76, 'hec, 'hc5, 'h97, 'h33, 'h66, 'hcc,
  'h85, 'h17, 'h2e, 'h5c, 'hb8, 'h6d, 'hda, 'ha9, 'h4f, 'h9e, 'h21, 'h42, 'h84, 'h15, 'h2a, 'h54,
  'ha8, 'h4d, 'h9a, 'h29, 'h52, 'ha4, 'h55, 'haa, 'h49, 'h92, 'h39, 'h72, 'he4, 'hd5, 'hb7, 'h73,
  'he6, 'hd1, 'hbf, 'h63, 'hc6, 'h91, 'h3f, 'h7e, 'hfc, 'he5, 'hd7, 'hb3, 'h7b, 'hf6, 'hf1, 'hff,
  'he3, 'hdb, 'hab, 'h4b, 'h96, 'h31, 'h62, 'hc4, 'h95, 'h37, 'h6e, 'hdc, 'ha5, 'h57, 'hae, 'h41,
  'h82, 'h19, 'h32, 'h64, 'hc8, 'h8d, 'h7, 'he, 'h1c, 'h38, 'h70, 'he0, 'hdd, 'ha7, 'h53, 'ha6,
  'h51, 'ha2, 'h59, 'hb2, 'h79, 'hf2, 'hf9, 'hef, 'hc3, 'h9b, 'h2b, 'h56, 'hac, 'h45, 'h8a, 'h9,
  'h12, 'h24, 'h48, 'h90, 'h3d, 'h7a, 'hf4, 'hf5, 'hf7, 'hf3, 'hfb, 'heb, 'hcb, 'h8b, 'hb, 'h16,
  'h2c, 'h58, 'hb0, 'h7d, 'hfa, 'he9, 'hcf, 'h83, 'h1b, 'h36, 'h6c, 'hd8, 'had, 'h47, 'h8e, 'h1,
  'h2, 'h4, 'h8, 'h10, 'h20, 'h40, 'h80, 'h1d, 'h3a, 'h74, 'he8, 'hcd, 'h87, 'h13, 'h26, 'h4c,
  'h98, 'h2d, 'h5a, 'hb4, 'h75, 'hea, 'hc9, 'h8f, 'h3, 'h6, 'hc, 'h18, 'h30, 'h60, 'hc0, 'h9d,
  'h27, 'h4e, 'h9c, 'h25, 'h4a, 'h94, 'h35, 'h6a, 'hd4, 'hb5, 'h77, 'hee, 'hc1, 'h9f, 'h23, 'h46,
  'h8c, 'h5, 'ha, 'h14, 'h28, 'h50, 'ha0, 'h5d, 'hba, 'h69, 'hd2, 'hb9, 'h6f, 'hde, 'ha1, 'h5f,
  'hbe, 'h61, 'hc2, 'h99, 'h2f, 'h5e, 'hbc, 'h65, 'hca, 'h89, 'hf, 'h1e, 'h3c, 'h78, 'hf0, 'hfd,
  'he7, 'hd3, 'hbb, 'h6b, 'hd6, 'hb1, 'h7f, 'hfe, 'he1, 'hdf, 'ha3, 'h5b, 'hb6, 'h71, 'he2, 'hd9,
  'haf, 'h43, 'h86, 'h11, 'h22, 'h44, 'h88, 'hd, 'h1a, 'h34, 'h68, 'hd0, 'hbd, 'h67, 'hce, 'h81,
  'h1f, 'h3e, 'h7c, 'hf8, 'hed, 'hc7, 'h93, 'h3b, 'h76, 'hec, 'hc5, 'h97, 'h33, 'h66, 'hcc, 'h85,
  'h17, 'h2e, 'h5c, 'hb8, 'h6d, 'hda, 'ha9, 'h4f, 'h9e, 'h21, 'h42, 'h84, 'h15, 'h2a, 'h54, 'ha8,
  'h4d, 'h9a, 'h29, 'h52, 'ha4, 'h55, 'haa, 'h49, 'h92, 'h39, 'h72, 'he4, 'hd5, 'hb7, 'h73, 'he6,
  'hd1, 'hbf, 'h63, 'hc6, 'h91, 'h3f, 'h7e, 'hfc, 'he5, 'hd7, 'hb3, 'h7b, 'hf6, 'hf1, 'hff, 'he3,
  'hdb, 'hab, 'h4b, 'h96, 'h31, 'h62, 'hc4, 'h95, 'h37, 'h6e, 'hdc, 'ha5, 'h57, 'hae, 'h41, 'h82,
  'h19, 'h32, 'h64, 'hc8, 'h8d, 'h7, 'he, 'h1c, 'h38, 'h70, 'he0, 'hdd, 'ha7, 'h53, 'ha6, 'h51,
  'ha2, 'h59, 'hb2, 'h79, 'hf2, 'hf9, 'hef, 'hc3, 'h9b, 'h2b, 'h56, 'hac, 'h45, 'h8a, 'h9, 'h12,
  'h24, 'h48, 'h90, 'h3d, 'h7a, 'hf4, 'hf5, 'hf7, 'hf3, 'hfb, 'heb, 'hcb, 'h8b, 'hb, 'h16, 'h2c,
  'h58, 'hb0, 'h7d, 'hfa, 'he9, 'hcf, 'h83, 'h1b, 'h36, 'h6c, 'hd8, 'had, 'h47, 'h8e, 'h1, 'h2
};

// This table returns the logarythms of the elements of GF(256) in base `alpha`
Bit#(8) gf256_log[256] = {
  'h0, 'h0, 'h1, 'h19, 'h2, 'h32, 'h1a, 'hc6, 'h3, 'hdf, 'h33, 'hee, 'h1b, 'h68, 'hc7, 'h4b, 'h4,
  'h64, 'he0, 'he, 'h34, 'h8d, 'hef, 'h81, 'h1c, 'hc1, 'h69, 'hf8, 'hc8, 'h8, 'h4c, 'h71, 'h5,
  'h8a, 'h65, 'h2f, 'he1, 'h24, 'hf, 'h21, 'h35, 'h93, 'h8e, 'hda, 'hf0, 'h12, 'h82, 'h45, 'h1d,
  'hb5, 'hc2, 'h7d, 'h6a, 'h27, 'hf9, 'hb9, 'hc9, 'h9a, 'h9, 'h78, 'h4d, 'he4, 'h72, 'ha6, 'h6,
  'hbf, 'h8b, 'h62, 'h66, 'hdd, 'h30, 'hfd, 'he2, 'h98, 'h25, 'hb3, 'h10, 'h91, 'h22, 'h88, 'h36,
  'hd0, 'h94, 'hce, 'h8f, 'h96, 'hdb, 'hbd, 'hf1, 'hd2, 'h13, 'h5c, 'h83, 'h38, 'h46, 'h40, 'h1e,
  'h42, 'hb6, 'ha3, 'hc3, 'h48, 'h7e, 'h6e, 'h6b, 'h3a, 'h28, 'h54, 'hfa, 'h85, 'hba, 'h3d, 'hca,
  'h5e, 'h9b, 'h9f, 'ha, 'h15, 'h79, 'h2b, 'h4e, 'hd4, 'he5, 'hac, 'h73, 'hf3, 'ha7, 'h57, 'h7,
  'h70, 'hc0, 'hf7, 'h8c, 'h80, 'h63, 'hd, 'h67, 'h4a, 'hde, 'hed, 'h31, 'hc5, 'hfe, 'h18, 'he3,
  'ha5, 'h99, 'h77, 'h26, 'hb8, 'hb4, 'h7c, 'h11, 'h44, 'h92, 'hd9, 'h23, 'h20, 'h89, 'h2e, 'h37,
  'h3f, 'hd1, 'h5b, 'h95, 'hbc, 'hcf, 'hcd, 'h90, 'h87, 'h97, 'hb2, 'hdc, 'hfc, 'hbe, 'h61, 'hf2,
  'h56, 'hd3, 'hab, 'h14, 'h2a, 'h5d, 'h9e, 'h84, 'h3c, 'h39, 'h53, 'h47, 'h6d, 'h41, 'ha2, 'h1f,
  'h2d, 'h43, 'hd8, 'hb7, 'h7b, 'ha4, 'h76, 'hc4, 'h17, 'h49, 'hec, 'h7f, 'hc, 'h6f, 'hf6, 'h6c,
  'ha1, 'h3b, 'h52, 'h29, 'h9d, 'h55, 'haa, 'hfb, 'h60, 'h86, 'hb1, 'hbb, 'hcc, 'h3e, 'h5a, 'hcb,
  'h59, 'h5f, 'hb0, 'h9c, 'ha9, 'ha0, 'h51, 'hb, 'hf5, 'h16, 'heb, 'h7a, 'h75, 'h2c, 'hd7, 'h4f,
  'hae, 'hd5, 'he9, 'he6, 'he7, 'had, 'he8, 'h74, 'hd6, 'hf4, 'hea, 'ha8, 'h50, 'h58, 'haf
};

instance Arith#(GF256);
  function \+ (x, y) = GF256{raw: x.raw ^ y.raw};

  function \- (x, y) = GF256{raw: x.raw ^ y.raw};

  function negate (x) = x;

  function \% (x, y) = error("no modulo operation on GF256");

  function \* (p, q);
    Bit#(9) logP = zeroExtend(gf256_log[p.raw]);
    Bit#(9) logQ = zeroExtend(gf256_log[q.raw]);

    if (p == 0 || q == 0) return 0;
    else return gf256_exp[logP + logQ];
  endfunction

  function \/ (p, q);
    Bit#(9) logP = zeroExtend(gf256_log[p.raw]);
    Bit#(9) logQ = zeroExtend(gf256_log[q.raw]);

    if (p == 0 || q == 0) return 0;
    else return gf256_exp[255 + logP - logQ];
  endfunction
endinstance
