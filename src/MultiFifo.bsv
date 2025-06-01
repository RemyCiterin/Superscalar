import BuildVector :: *;
import Vector :: *;
import Fifo :: *;
import Ehr :: *;

//module wrapSuperFifoI#(FifoI#(t) fifo) (Super#(FifoI#(t))) provisos(Bits#(t,tW));
//  Super#(FifoI#(t)) ifc = newVector;
//
//  Ehr#(TAdd#(SupSize,1), Maybe#(t)) ehr <- mkEhr(Invalid);
//
//  rule connect if (ehr[supSize+1] matches tagged Valid .x);
//    fifo.enq(x);
//  endrule
//
//  for (Integer i=0; i < supSize; i = i + 1) begin
//    Bool canEnq = case (ehr[i]) matches
//      Invalid : True;
//      default : False;
//    endcase;
//
//    ifc[i] = interface FifoI;
//      method canEnq = canEnq;
//      method Action enq(t x) if (canEnq);
//        ehr[i] <= Valid(x);
//      endmethod
//    endinterface;
//  end
//
//  return ifc;
//endmodule

// A type of fifo with multiple output ports and one input port
typedef Tuple2#(FifoI#(t), Vector#(n,FifoO#(t))) ManyOutputFifo#(numeric type n, type t);

module mkManyOutputFifo(ManyOutputFifo#(n,t)) provisos(Bits#(t,tW));
  Fifo#(2, t) fifo <- mkFifo;

  ManyOutputFifo#(n,t) ifc = tuple2(toFifoI(fifo),newVector);
  Vector#(n, Wire#(Bool)) doDeq <- replicateM(mkDWire(False));

  Bool acc = False;
  Vector#(n,Bool) canDeq = newVector;

  for (Integer i=0; i < valueOf(n); i = i + 1) begin
    canDeq[i] = fifo.canDeq && !acc;
    acc = acc || doDeq[i];
  end

  (* fire_when_enabled *)
  rule deqRl if (acc && fifo.canDeq);
    fifo.deq;
  endrule

  for (Integer i=0; i < valueOf(n); i = i + 1) begin
    ifc.snd[i] = interface FifoO;
      method canDeq = canDeq[i];
      method first if (canDeq[i]) = fifo.first;
      method Action deq if (canDeq[i]);
        doDeq[i] <= True;
      endmethod
    endinterface;
  end

  return ifc;
endmodule
