package UART;

import GetPut :: *;
import Fifo :: *;

interface RxUART;
  (* always_ready, always_enabled *)
  method Action receive(Bit#(1) value);

  (* always_ready, always_enabled *)
  method Bit#(8) leds;

  // receive a data from the uart
  method Bit#(8) data;

  // check if the last data found from the uart is valid
  method Bool valid;

  // acknowledge the last data
  method Action ack;
endinterface

module mkRxUART#(Bit#(32) time_per_bit) (RxUART);
  Wire#(Bit#(1)) rx <- mkBypassWire;

  // we perform a majority judgment for each bit
  Reg#(Bit#(32)) nb_measure1 <- mkReg(0);

  Reg#(Bit#(32)) count <- mkReg(0);

  Reg#(Bool) busy <- mkReg(False);

  Reg#(Bit#(10)) data_reg <- mkReg(0);
  Reg#(Bit#(10)) valid_reg <- mkReg(0);

  Reg#(Bool) valid_copy <- mkReg(False);
  Reg#(Bit#(8)) data_copy <- mkReg(0);

  Reg#(Bit#(32)) zero_count <- mkReg(0);

  // we start mesearing if rx is set to zero for enough time
  rule try_start if (!busy);
    if (zero_count >= 10) begin
      count <= time_per_bit - 10;
      nb_measure1 <= 0;
      valid_reg <= 0;
      busy <= True;
    end else begin
      zero_count <= (rx == 0 ? zero_count + 1 : 0);
    end
  endrule

  rule measure if (busy && count > 0 && rx == 1);
    nb_measure1 <= nb_measure1 + 1;
  endrule

  rule decrease_count if (busy && count > 0);
    count <= count - 1;
  endrule


  rule step if (busy && count == 0);
    count <= time_per_bit;

    let new_bit = (2 * nb_measure1 > time_per_bit ? 1'b1 : 1'b0);
    nb_measure1 <= 0;

    if (valid_reg == 0 && new_bit == 1'b1) begin
      zero_count <= 0;
      busy <= False;
    end else begin
      valid_reg <= {1'b1, truncateLSB(valid_reg)};
      data_reg <= {new_bit, truncateLSB(data_reg)};
    end
  endrule

  rule finish if (busy && valid_reg == -1);
    if (data_reg[0] == 0 && data_reg[9] == 1) begin
      data_copy <= data_reg[8:1];
      valid_copy <= True;
    end

    valid_reg <= 0;
    zero_count <= 0;
    busy <= False;
  endrule

  method receive = rx._write;

  method Bool valid;
    return valid_copy;
  endmethod

  method Bit#(8) data if (valid_copy);
    return data_copy;
  endmethod

  method leds = data_reg[8:1];

  method Action ack if (valid_copy);
    action
      valid_copy <= False;
    endaction
  endmethod
endmodule

interface TxUART;
  (* always_ready, always_enabled *)
  method Bit#(1) transmit;

  // user can use this port to send data to the UART
  method Action put(Bit#(8) data);

  method Bit#(8) leds;
endinterface

module mkTxUART#(Bit#(32) time_per_bit) (TxUART);
  Fifo#(2, Bit#(8)) inputs_fifo <- mkFifo;

  Wire#(Bit#(1)) tx <- mkBypassWire;

  Reg#(Bit#(128)) valid <- mkReg(~0);
  Reg#(Bit#(128)) data <- mkReg(~0);
  Reg#(Bit#(32)) count <- mkReg(0);
  Reg#(Bit#(8)) status <- mkReg(0);

  rule step;
    if (valid == 0) begin
      if (inputs_fifo.canDeq) begin
        $write("%c", inputs_fifo.first);
        data <= {~0, inputs_fifo.first, 1'b0};
        status <= inputs_fifo.first;
        valid <= ~0;
        count <= 0;

        inputs_fifo.deq;

        tx <= 1;
      end else
        tx <= 1;

    end else begin
      tx <= data[0];

      if (count >= time_per_bit) begin
        valid <= {1'b0, truncateLSB(valid)};
        data <= {1'b1, truncateLSB(data)};
        count <= 0;
      end else
        count <= count + 1;
    end
  endrule

  method transmit = tx;

  method put = toPut(inputs_fifo).put;

  method leds = status;
endmodule


endpackage
