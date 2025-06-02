import BuildVector :: *;
import GetPut :: *;
import Fetch :: *;
import Utils :: *;
import Decode :: *;
import MicroOp :: *;
import Memory :: *;
import TLTypes :: *;
import ALU :: *;
import CSR :: *;
import ControlFlow :: *;
import Ehr :: *;
import Fifo :: *;
import Vector :: *;
import Connectable :: *;
import Pipeline :: *;
import MultiFifo :: *;
import BranchPred :: *;

import RegFile :: *;

interface Fire;
  method Action fire;
endinterface

// Ensure that we dispatch instructions in order
interface DispatchBuffer;
  // Receive a block of instructions from the fetch/decode stage
  // only if the buffer is empty
  interface FifoI#(Super#(Maybe#(MicroOp#(void)))) enter;

  // Dequeue a subset of element of the buffer
  interface Super#(Fire) deq;

  // Return the content of the buffer
  method Super#(Maybe#(MicroOp#(void))) first;
endinterface

(* synthesize *)
module mkDispatchBuffer(DispatchBuffer);
  Super#(Reg#(MicroOp#(void))) buffer <- replicateM(mkReg(?));
  Super#(Ehr#(2, Bool)) valid <- replicateM(mkEhr(False));

  Super#(Fire) deqIfc = newVector;

  Bool blocked = True;
  for (Integer i=0; i < supSize; i = i + 1) begin
    if (valid[i][0]) blocked = False;
  end

  for (Integer i=0; i < supSize; i = i + 1) begin
    deqIfc[i] = interface Fire;
      method Action fire if (!blocked && valid[i][0]);
        valid[i][0] <= False;
      endmethod
    endinterface;
  end

  Bool canEnq = True;
  for (Integer i=0; i < supSize ; i = i + 1) begin
    canEnq = canEnq && !valid[i][1];
  end

  method first if (!blocked);
    Super#(Maybe#(MicroOp#(void))) ret = newVector;

    for (Integer i=0; i < supSize; i = i + 1) begin
      ret[i] = valid[i][0] ? Valid(buffer[i]) : Invalid;
    end

    return ret;
  endmethod

  interface deq = deqIfc;

  interface enter = interface FifoI;
    method canEnq = canEnq;
    method Action enq(Super#(Maybe#(MicroOp#(void))) entry) if (canEnq);
      for (Integer i=0; i < supSize; i = i + 1) begin
        valid[i][1] <= entry[i] != Invalid;
        buffer[i] <= unJust(entry[i]);
      end
    endmethod
  endinterface;
endmodule

// A fifo with N enqueue interfaces and one dequeue interface
module mkMultiInputFifo(Tuple2#(Vector#(ports, FifoI#(t)), FifoO#(t))) provisos(Bits#(t,tW));
  Fifo#(1, t) outQ <- mkBypassFifo;

  Ehr#(TAdd#(ports,1), Maybe#(t)) buffer <- mkEhr(Invalid);

  rule connect if (buffer[0] matches tagged Valid .x);
    buffer[0] <= Invalid;
    outQ.enq(x);
  endrule

  Tuple2#(Vector#(ports, FifoI#(t)), FifoO#(t)) ifc = tuple2(?, toFifoO(outQ));

  for (Integer i=0; i < valueof(ports); i = i + 1) begin
    Bool canEnq = case (buffer[i+1]) matches
      Invalid : True;
      default : False;
    endcase;

    ifc.fst[i] = interface FifoI;
      method Bool canEnq = canEnq;
      method Action enq(t x) if (canEnq);
        buffer[i+1] <= Valid(x);
      endmethod
    endinterface;
  end

  return ifc;
endmodule

interface ReadPort;
  method Bit#(32) rs1(ArchReg arch);
  method Bit#(32) rs2(ArchReg arch);
endinterface

interface WritePort;
  method Action rd(ArchReg arch, Bit#(32) val);
endinterface

interface RegisterFile;
  interface Super#(ReadPort) read;
  interface Super#(WritePort) write;
endinterface

// A register file with (write < read)
(* synthesize *)
module mkRegisterFile(RegisterFile);
  Vector#(32, Ehr#(TAdd#(1,SupSize), Bit#(32))) rf <- replicateM(mkEhr(0));

  Super#(ReadPort) readIfc = newVector;
  Super#(WritePort) writeIfc = newVector;

  for (Integer i=0; i < supSize; i = i + 1) begin
    readIfc[i] = interface ReadPort;
      method Bit#(32) rs1(ArchReg arch) = rf[pack(arch)][supSize];
      method Bit#(32) rs2(ArchReg arch) = rf[pack(arch)][supSize];
    endinterface;

    writeIfc[i] = interface WritePort;
      method Action rd(ArchReg arch, Bit#(32) val);
        if (arch != zeroReg) rf[pack(arch)][i] <= val;
      endmethod
    endinterface;
  end

  interface read = readIfc;
  interface write = writeIfc;
endmodule

// Check if a triple of registers is ready, and set the destination
// register as busy
interface EnqPort;
  method Action setBusy(ArchReg arch);
  method Bool rs1(ArchReg arch);
  method Bool rs2(ArchReg arch);
  method Bool rd(ArchReg arch);
endinterface

// Set a register as ready
interface DeqPort;
  method Action setReady(ArchReg arch);
endinterface

interface Core;
  interface TLMaster#(32,32,8,8,8) dmaster;
  interface TLMaster#(32,TMul#(SupSize,32),8,8,8) imaster;
endinterface

(* synthesize *)
module mkCore(Core);
  let fetch <- mkFetchDecode;

  Ehr#(2,Epoch) epochCounter <- mkEhr(0);
  Reg#(Bit#(32)) instructionCounter <- mkReg(0);
  Reg#(Bit#(32)) misCounter <- mkReg(0);

  let registers <- mkRegisterFile;
  Ehr#(2,Bit#(32)) scoreboard <- mkEhr(0);

  Fifo#(2, ExecInput) directQ <- mkFifo;

  ExecPort control1 <- mkControl;
  ExecPort control2 <- mkControl;
  DMEM_IFC dmem <- mkDMem;
  ExecPort alu1 <- mkAlu;
  ExecPort alu2 <- mkAlu;

  Fifo#(8, Super#(Maybe#(MicroOp#(void)))) window <- mkFifo;
  // Ensure that we dispatch instructions in order
  DispatchBuffer dispatch <- mkDispatchBuffer;
  // Ensure that we complete instructions in order
  DispatchBuffer complete <- mkDispatchBuffer;

  rule enter;
    let ops = fetch.decoded.first;
    dispatch.enter.enq(ops);
    fetch.decoded.deq;
  endrule

  mkConnection(window, complete.enter);

  Reg#(Bit#(32)) cycle <- mkReg(0);

  rule updateCycle;
    cycle <= cycle + 1;
  endrule

  Reg#(Bit#(TLog#(SupSize))) index <- mkReg(0);
  rule updateIndex;
    index <= index + 1;
  endrule

  rule registerRead;
    Bool stop = False;

    Epoch epoch = epochCounter[1];
    Bit#(32) score = scoreboard[1];
    Bool control1Ready = control1.enter.canEnq;
    Bool control2Ready = control2.enter.canEnq;
    Bool alu1Ready = alu1.enter.canEnq;
    Bool alu2Ready = alu2.enter.canEnq;
    Bool directReady = directQ.canEnq;
    Bool memReady = dmem.enter.canEnq;

    Super#(Maybe#(MicroOp#(void))) requests = replicate(Invalid);

    for (Integer i=0; i < supSize; i = i + 1)
    if (!stop &&& dispatch.first[i] matches tagged Valid .request_) begin
      MicroOp#(void) req = request_;

      let rdy =
        score[pack(req.rs1)] == 0 &&
        score[pack(req.rs2)] == 0 &&
        score[pack(req.rd)] == 0;

      if ((rdy || req.exception) && req.epoch == epoch) begin
        function Vector#(2,Bit#(32)) regRead(void _) =
          vec(registers.read[i].rs1(req.rs1), registers.read[i].rs2(req.rs2));
        let op = mapMicroOp(regRead, req);

        //$display("read ", fshow(req.rs1), " = 0x%h and ", regRead(?)[0],
        //  fshow(req.rs2), " = 0x%h", regRead(?)[1]);

        case (req.tag) matches
          CONTROL : if (control1Ready) begin
            control1.enter.enq(op);
            control1Ready = False;
            req.pipeline = 0;
          end else if (control2Ready) begin
            control2.enter.enq(op);
            control2Ready = False;
            req.pipeline = 1;
          end else stop = True;
          DIRECT : if (directReady) begin
            directReady = False;
            req.pipeline = 2;
            directQ.enq(op);
          end else stop = True;
          DMEM : if (memReady) begin
            dmem.enter.enq(op);
            memReady = False;
            req.pipeline = 3;
          end else stop = True;
          EXEC : if (alu1Ready) begin
            req.pipeline = 4;
            alu1Ready = False;
            alu1.enter.enq(op);
          end else if (alu2Ready) begin
            req.pipeline = 5;
            alu2Ready = False;
            alu2.enter.enq(op);
          end else stop = True;
        endcase
      end else
        stop = True;

      if (!stop) requests[i] = Valid(req);
      if (!stop || req.epoch != epoch) dispatch.deq[i].fire;
      if (!stop && !req.exception && req.rd != zeroReg) score[pack(req.rd)] = 1;
      //if (!stop) $display(cycle, " dispatch instruction: ", displayInstr(req.instr));
    end

    if (Vector::any(isJust,requests)) window.enq(requests);
    scoreboard[1] <= score;
  endrule

  rule retire;
    Bool stop = False;

    // Scoreboard screenshot
    Epoch epoch = epochCounter[0];
    Bit#(32) score = scoreboard[0];
    Bit#(32) counter = instructionCounter;
    Bool control1Ready = control1.issue.canDeq;
    Bool control2Ready = control2.issue.canDeq;
    Bool commitReady = dmem.commit.canEnq;
    Bool alu1Ready = alu1.issue.canDeq;
    Bool alu2Ready = alu2.issue.canDeq;
    Bool directReady = directQ.canDeq;
    Bool memReady = dmem.issue.canDeq;
    Bool trainHit = True;

    for (Integer i=0; i < supSize; i = i + 1)
    if (!stop &&& complete.first[i] matches tagged Valid .req) begin

      ExecOutput resp = ?;
      case (req.pipeline)
        0 : if (control1Ready) begin
          resp <- toGet(control1.issue).get;
          control1Ready = False;
        end else stop = True;
        1 : if (control2Ready) begin
          resp <- toGet(control2.issue).get;
          control2Ready = False;
        end else stop = True;
        2 : if (directReady) begin
          let _ <- toGet(directQ).get;
          directReady = False;
        end else stop = True;
        3 : if (memReady && commitReady) begin
          dmem.commit.enq(req.epoch == epoch);
          resp <- toGet(dmem.issue).get;
          commitReady = False;
          memReady = False;
        end else stop = True;
        4 : if (alu1Ready) begin
          resp <- toGet(alu1.issue).get;
          alu1Ready = False;
        end else stop = True;
        5 : if (alu2Ready) begin
          resp <- toGet(alu2.issue).get;
          alu2Ready = False;
        end else stop = True;
      endcase

      if (req.train && req.epoch == epoch) begin
        if (!trainHit) stop = True;
        trainHit = False;
      end

      if (!stop) begin
        complete.deq[i].fire;
        if (!req.exception && req.rd != zeroReg) score[pack(req.rd)] = 0;

        //$display(
        //  cycle, " %b ", req.epoch == epoch,
        //  "retire pc: 0x%h instruction: ", req.pc,
        //  displayInstr(req.instr)
        //);

        if (req.epoch == epoch) begin
          counter = counter + 1;

          if (req.exception) $display("Exception! ", fshow(req.cause));
          if (resp.exception) $display("Exception! ", fshow(resp.cause));
          //if (req.exception || resp.exception)
          if (req.tag == DIRECT)
            $display(cycle, " ", misCounter, " retire pc: 0x%h instruction: ", req.pc, displayInstr(req.instr));

          if (req.tag == DIRECT)
            $display("cycle: %d instret: %d", cycle, counter);

          if (!req.exception && !resp.exception && req.tag != DIRECT) begin
            //if (req.rd != zeroReg) $display("  ", fshow(req.rd), " <= 0x%h", resp.val.rdVal);
            registers.write[i].rd(req.rd, resp.val.rdVal);
          end

          if (req.tag != DIRECT && resp.val.nextPc != req.predPc) begin
            //$display(cycle, " redirect to pc: 0x%h counter: %d", resp.val.nextPc, counter);
            fetch.trainMis(BranchPredTrain{
              next_pc: resp.val.nextPc,
              instr: Valid(req.instr),
              state: req.bstate,
              pc: req.pc
            });
            fetch.redirect(resp.val.nextPc, epoch+1);
            epoch = epoch+1;
            stop = True;

            misCounter <= misCounter + 1;
          end else if (req.tag != DIRECT && req.train) begin
            fetch.trainHit(BranchPredTrain{
              next_pc: resp.val.nextPc,
              instr: Valid(req.instr),
              state: req.bstate,
              pc: req.pc
            });
            stop = True;
          end
        end
      end
    end

    epochCounter[0] <= epoch;
    scoreboard[0] <= score;
    instructionCounter <= counter;
  endrule

  interface dmaster = dmem.master;
  interface imaster = fetch.master;
endmodule
