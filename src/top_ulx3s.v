module top (
  input CLK,
  input RST_N,

  output ftdi_rxd,
  input ftdi_txd,

  output [7:0] led
);


  mkSoc top (
    .CLK(CLK),
    .RST_N(RST_N),
    .transmit(ftdi_rxd),
    .led(led)
  );

endmodule
