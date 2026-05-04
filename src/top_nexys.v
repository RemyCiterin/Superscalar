module top (
  input clk100mhz,
  input i_rst,
  output [7:0] led,
  input wire rx,
  output wire tx
);

  wire CLK;
  assign CLK = clk100mhz;

  wire RSN_N;
  assign RST_N = !i_rst;

  mkSoc top (
    .CLK(CLK),
    .RST_N(RST_N),
    .transmit(tx),
    .led(led)
  );

endmodule
