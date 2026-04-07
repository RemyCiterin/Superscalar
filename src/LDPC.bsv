// Thil fine define an Low-Density-Parity-Check decoder using min-sum alorithms. To instantiate it,
// the solver take as argument two string corresponding to the location of two files containing a
// representation of the sparse matrix used to build the code.
//  - the first one give the positions of the rows of the non-zeros elements
//  - the second one give the positions of the columns of the non-zeros elements
// Using those files the solver can access to the n-th non-zero element using `(f1[n], f2[n])`

import BRAMCore::*;
import StmtFSM::*;
import RegFile::*;
import Vector::*;

interface Iterator#(numeric type size);
  (* always_ready *) method Action zero;
  (* always_ready *) method Action step;
  (* always_ready *) method Bit#(TLog#(size)) next;
  (* always_ready *) method Bit#(TLog#(size)) _read;
  (* always_ready *) method Bool stop;
endinterface

module mkIterator(Iterator#(size));
  Reg#(Bit#(TAdd#(TLog#(size), 1))) current <- mkReg(0);

  method Action zero;
    current <= 0;
  endmethod

  method Action step;
    current <= current + 1;
  endmethod

  method _read = truncate(current);
  method next = current == fromInteger(valueof(size) - 1) ? 0 : truncate(current + 1);
  method stop = current == fromInteger(valueof(size));
endmodule

interface LDPC_DECODER_IDC#(numeric type num_edges, numeric type rows, numeric type cols);
  // First stage of the decoder, used by the caller of the module to send the bits of the encoded
  // message on-by-one.
  (* always_ready *) method Bool canRecv;
  method Action recvBit(bit b, Bit#(TLog#(cols)) position);

  // Start the decoding process
  (* always_ready *) method Bool canStart;
  method Action start(Bit#(32) max_iter);

  // This interface allow the caller to get the decoded stream (of length `cols-rows`)
endinterface

typedef enum{
  Idle,
  StartProcess,
  ComputeLLR,
  Done
} LDPC_DECODER_STATE deriving(Eq, Bits);

module mkLDPC_DECODER#(
    String rows_path,
    String cols_path
  )(LDPC_DECODER_IDC#(num_edges, rows, cols))
  provisos(
    Alias#(col, Bit#(TLog#(cols))),
    Alias#(row, Bit#(TLog#(rows))),
    Alias#(tanner_edge, Bit#(TLog#(num_edges)))
  );

  Reg#(Bool) allSatisfied <- mkRegU;

  Iterator#( rows ) row_iter <- mkIterator();
  Iterator#( cols ) col_iter <- mkIterator();
  Iterator#( num_edges ) edge_iter <- mkIterator();

  BRAM_PORT#(tanner_edge, row) rows_ram <-
    mkBRAMCore1Load(valueof(num_edges), False, rows_path, False);
  BRAM_PORT#(tanner_edge, col) cols_ram <-
    mkBRAMCore1Load(valueof(num_edges), False, cols_path, False);

  RegFile#(col, Int#(8)) message <- mkRegFileFull();

  // Current message probability distribution
  RegFile#(col, Int#(8)) llr <- mkRegFileFull();

  // Intrinsic messages (variable-to-check)
  RegFile#(tanner_edge, Bool) alpha <- mkRegFileFull();
  RegFile#(tanner_edge, Bit#(8)) beta <- mkRegFileFull();

  // Extrinsic messages (check-to-variable)
  RegFile#(tanner_edge, Int#(8)) extrinsic <- mkRegFileFull();

  // Extrinsic message intermediate computations
  RegFile#(row, Bit#(8)) extrinsic_min1 <- mkRegFileFull();
  RegFile#(row, Bit#(8)) extrinsic_min2 <- mkRegFileFull();
  RegFile#(row, Bool) extrinsic_sign <- mkRegFileFull();

  // Does the current Log-Likehood-Ratios satisfies each contraints
  RegFile#(row, Bool) unsatisfied <- mkRegFileFull();

  Reg#(LDPC_DECODER_STATE) state <- mkReg(Idle);
  Reg#(Bit#(32)) iter <- mkRegU;

  function Int#(8) bit8_to_int8(Bit#(8) x);
    Bit#(8) bound = pack( (Int#(8))'(maxBound) );
    if (x > bound) return unpack(bound);
    else return unpack(x);
  endfunction

  mkAlwaysFSM(seq
    while (state != StartProcess) noAction;

    //////////////////////////////////////////////////////////////////////////////
    // Reset the intrinsic messages using the input a-priori
    //////////////////////////////////////////////////////////////////////////////
    edge_iter.zero;
    cols_ram.put(False, edge_iter, ?);
    while (!edge_iter.stop) action
      Int#(8) msg = message.sub( cols_ram.read );
      beta.upd( edge_iter, pack(msg < 0 ? -msg : msg) );
      cols_ram.put(False, edge_iter.next, ?);
      alpha.upd( edge_iter, msg < 0 );

      edge_iter.step;
    endaction

    while (iter > 0) seq
      action
        let instant <- $time;
        $display("==== iteration: %d time: %d ====", iter, instant / 10);
        iter <= iter - 1;
      endaction

      ////////////////////////////////////////////////////////////////////////////
      // Reset the extrinsic messages intermediate buffers
      ////////////////////////////////////////////////////////////////////////////
      row_iter.zero;
      while (!row_iter.stop) action
        extrinsic_sign.upd( row_iter, False );
        extrinsic_min1.upd( row_iter, maxBound );
        extrinsic_min2.upd( row_iter, maxBound );

        row_iter.step;
      endaction

      ////////////////////////////////////////////////////////////////////////////
      // Fill the extrinsic messages intermediate buffers
      ////////////////////////////////////////////////////////////////////////////
      edge_iter.zero;
      rows_ram.put(False, edge_iter, ?);

      while (!edge_iter.stop) action
        row current_row = rows_ram.read;

        extrinsic_sign.upd(current_row, extrinsic_sign.sub(current_row) != alpha.sub(edge_iter));

        let b = beta.sub( edge_iter );
        let min1 = extrinsic_min1.sub( current_row );
        let min2 = extrinsic_min2.sub( current_row );

        if (b < min1) begin
          extrinsic_min1.upd( current_row, b );
          extrinsic_min2.upd( current_row, min2 );
        end else if (b < min2) begin
          extrinsic_min2.upd( current_row, b );
        end

        rows_ram.put(False, edge_iter.next, ?);
        edge_iter.step;
      endaction

      ////////////////////////////////////////////////////////////////////////////
      // Compute the intrinsic messages
      ////////////////////////////////////////////////////////////////////////////
      edge_iter.zero;
      rows_ram.put(False, edge_iter, ?);

      while (!edge_iter.stop) action
        row current_row = rows_ram.read;

        let b = beta.sub( edge_iter );
        let a = alpha.sub( edge_iter );
        let min1 = extrinsic_min1.sub( current_row );
        let min2 = extrinsic_min2.sub( current_row );
        let sign = extrinsic_sign.sub( current_row );

        Int#(8) e = bit8_to_int8(b == min1 ? min2 : min1);

        if (a != sign) extrinsic.upd( edge_iter, boundedMinus( 0, e ) );
        else extrinsic.upd( edge_iter, e );

        rows_ram.put(False, edge_iter.next, ?);
        edge_iter.step;
      endaction

      ////////////////////////////////////////////////////////////////////////////
      // Compute the Log-Likehood-Ratios using the extrinsic messages
      ////////////////////////////////////////////////////////////////////////////
      col_iter.zero;
      while (!col_iter.stop) action
        llr.upd( col_iter, message.sub( col_iter ) );

        col_iter.step;
      endaction

      edge_iter.zero;
      cols_ram.put(False, edge_iter, ?);
      while (!edge_iter.stop) action
        col current_col = cols_ram.read;
        let e = extrinsic.sub( edge_iter );
        llr.upd( current_col, boundedPlus( llr.sub( current_col ), e ) );

        cols_ram.put(False, edge_iter.next, ?);
        edge_iter.step;
      endaction

      ////////////////////////////////////////////////////////////////////////////
      // Use the Log-Likehood-Ratios to check if all the constraints are satisfied
      ////////////////////////////////////////////////////////////////////////////
      row_iter.zero;
      while (!row_iter.stop) action
        unsatisfied.upd( row_iter, False );

        row_iter.step;
      endaction

      edge_iter.zero;
      rows_ram.put(False, edge_iter, ?);
      cols_ram.put(False, edge_iter, ?);

      while (!edge_iter.stop) action
        row current_row = rows_ram.read;
        col current_col = cols_ram.read;

        unsatisfied.upd( current_row, unsatisfied.sub(current_row) != llr.sub(current_col) < 0 );

        rows_ram.put(False, edge_iter.next, ?);
        cols_ram.put(False, edge_iter.next, ?);
        edge_iter.step;
      endaction

      row_iter.zero;
      allSatisfied <= True;
      while (!row_iter.stop) action
        if (unsatisfied.sub(row_iter)) allSatisfied <= False;

        row_iter.step;
      endaction

      if (allSatisfied) iter <= 0;

      ////////////////////////////////////////////////////////////////////////////
      // Compute the variables-to-check (intrinsic) messages `alpha` and `beta`
      ////////////////////////////////////////////////////////////////////////////
      edge_iter.zero;
      cols_ram.put(False, edge_iter, ?);
      while (!edge_iter.stop) action
        col current_col = cols_ram.read;
        let diff = boundedMinus( llr.sub( current_col ), extrinsic.sub( edge_iter ) );
        beta.upd( edge_iter, pack(diff < 0 ? -diff : diff) );
        alpha.upd( edge_iter, diff < 0 );

        cols_ram.put(False, edge_iter.next, ?);
        edge_iter.step;
      endaction
    endseq

    state <= Done;
  endseq);

  method Bool canRecv = state == Idle;
  method Action recvBit(bit b, col column);
    message.upd(column, b == 0 ? 1 : -1);
  endmethod

  method Bool canStart = state == Idle;
  method Action start(Bit#(32) max_iter);
    state <= StartProcess;
    iter <= max_iter;
  endmethod
endmodule

(* synthesize *)
module mkLDPC_TB(Empty);
  BRAM_PORT#(Bit#(12), Bit#(1)) inputs <- mkBRAMCore1Load(2560, False, "input.txt", False);

  LDPC_DECODER_IDC#(7680, 1536, 2560) decoder <- mkLDPC_DECODER("rows.txt", "cols.txt");

  Reg#(Bit#(12)) index <- mkReg(0);

  mkAlwaysFSM(seq
    while (index < 2560) seq
      inputs.put(False, index, ?);
      decoder.recvBit(inputs.read, index);
      index <= index + 1;
    endseq

    decoder.start(100);

    while (True) noAction;
  endseq);


endmodule
