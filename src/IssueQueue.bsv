import Utils :: *;
import Decode :: *;
import MicroOp :: *;
import Vector :: *;
import Fifo :: *;
import Ehr :: *;

typedef 2 IqSize;

interface WakeupPort;
  method Action write(ArchReg arch);
endinterface

interface IssueQueue#(numeric type size);
  // Enter a new instruction, and set some of it's register as ready/busy (ready=high)
  interface FifoI#(MicroOp#(Vector#(2,Bool))) enter;

  // Retire a ready instruction
  interface FifoO#(MicroOp#(void)) issue;

  // Set a register as ready
  interface Super#(WakeupPort) wakeup;
endinterface

module mkIssueQueue(IssueQueue#(size));
  Vector#(size, Reg#(MicroOp#(void))) queue <- replicateM(mkReg(?));
  Vector#(size, Ehr#(TAdd#(SupSize,1), Bool)) rs1Ready <- replicateM(mkEhr(False));
  Vector#(size, Ehr#(TAdd#(SupSize,1), Bool)) rs2Ready <- replicateM(mkEhr(False));

  Ehr#(2, Bit#(size)) valid <- mkEhr(0);
  Reg#(Bit#(TLog#(size))) head <- mkReg(0);
  Reg#(Bit#(TLog#(size))) tail <- mkReg(0);

  Super#(WakeupPort) wakeupIfc = replicate(?);

  for (Integer i=0; i < supSize; i = i + 1) begin
    wakeupIfc[i] = interface WakeupPort;
      method Action write(ArchReg arch);
        for (Integer j=0; j < valueof(size); j = j + 1) begin
          if (arch == queue[j].rs1) rs1Ready[j][i] <= True;
          if (arch == queue[j].rs2) rs2Ready[j][i] <= True;
        end
      endmethod
    endinterface;
  end

  Bool canDeq = valid[0][head] == 1 && rs1Ready[head][0] && rs2Ready[head][0];
  Bool canEnq = valid[1][tail] == 0;

  interface wakeup = wakeupIfc;

  interface issue = interface FifoO;
    method canDeq = canDeq;
    method first if (canDeq) = queue[head];
    method Action deq if (canDeq);
      head <= head == fromInteger(valueof(size)-1) ? 0 : head + 1;
      valid[0][head] <= 0;
    endmethod
  endinterface;

  interface enter = interface FifoI;
    method canEnq = canEnq;
    method Action enq(MicroOp#(Vector#(2,Bool)) op) if (canEnq);
      tail <= tail == fromInteger(valueof(size)-1) ? 0 : tail + 1;
      queue[tail] <= mapMicroOp(constFn(?), op);
      rs1Ready[tail][supSize] <= op.val[0];
      rs2Ready[tail][supSize] <= op.val[1];
      valid[1][tail] <= 1;
    endmethod
  endinterface;
endmodule

(* synthesize *)
module mkDefaultIq(IssueQueue#(IqSize));
  let ifc <- mkIssueQueue;
  return ifc;
endmodule
