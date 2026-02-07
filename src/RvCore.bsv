import MultiRegFile :: *;
import RvBranchPred :: *;
import ForwardBRAM :: *;
import BuildVector :: *;
import BRAMCore :: *;
import RvDCache :: *;
import RegFile :: *;
import RvInstr :: *;
import RvFetch :: *;
import RvExec :: *;
import Vector :: *;
import Assert :: *;
import RvAlu :: *;
import RvCSR :: *;
import UART :: *;
import Fifo :: *;

import Connectable :: *;
import TLTypes :: *;
import TLBram :: *;

interface CpuIfc;
  (* always_ready, always_enabled *)
  method Bit#(8) led;

  (* always_ready, always_enabled *)
  method Bit#(1) transmit;

  interface TLMaster#(32, 32, 8, 8, 0) imaster;
  interface TLMaster#(32, 32, 8, 8, 0) dmaster;
endinterface

(* synthesize *)
module mkCPU(CpuIfc);
  Bool debug = False;
  Bool useForwarding = True;
  Bool zeroCycleAluForwarding = True;
  Bool zeroCycleMoveForwarding = True;

  Reg#(Bit#(32)) cycle <- mkReg(0);

  Reg#(Bit#(32)) instret <- mkReg(0);

  let cycleCsr <- mkCycleCsr;
  let instrCsr <- mkInstructionCounterCsr;
  let system <- mkCsrUnit(List::append(cycleCsr, instrCsr.csrs));
  Fifo#(1, Tuple2#(ArchReg, Bit#(32))) csrOut <- mkPipelineFifo;

  rule incrCycle;
    cycle <= cycle + 1;
  endrule

  Reg#(Bit#(32)) scoreboard[3] <- mkCReg(3, 0);

  MultiRF#(TMul#(2, SupSize), SupSize, ArchReg, Bit#(32))
    regFile <- mkForwardMultiRF(0, 31);

  List#(RWire#(Tuple2#(ArchReg, Bit#(32))))
    forwarding <- List::replicateM(2*supSize, mkRWire);

  Reg#(Epoch) epoch[2] <- mkCReg(2, 0);

  Fifo#(2, Tuple3#(Bit#(32), Epoch, BranchPredTrain)) redirectQ <- mkFifo;

  FetchIfc fetch <- mkFetch;

  DecodeIfc decode <- mkDecode;

  DispatchBuffer inBuffer <- mkDispatchBuffer;
  DispatchBuffer outBuffer <- mkDispatchBuffer;

  Vector#(SupSize, ExecIfc#(1)) alu <- replicateM(mkExecAlu);

  let lsu_ifc <- mkLsu;
  let uart = lsu_ifc.transmit;
  let lsu = lsu_ifc.exec;

  rule redirect;
    match {.pc, .epoch, .train} = redirectQ.first;
    fetch.redirect(pc, epoch);
    fetch.trainMis(train);
    redirectQ.deq;
  endrule

  rule fetch2decode;
    let data <- fetch.get;
    decode.put(data);
  endrule

  rule decode2buffer;
    let data <- decode.get;
    inBuffer.put(data);
  endrule

  if (useForwarding) rule forward;
    for (Integer i=0; i < supSize; i = i + 1) begin
      ForwardIfc fwd = alu[i].forward[0];

      if (fwd.valid && fwd.epoch == epoch[0] && fwd.destination != 0) begin
        forwarding[i].wset(tuple2(fwd.destination, fwd.result));
      end
    end
  endrule

  rule writeBackRl;
    Bool useMem = False;
    Bool useSys = False;
    Bit#(32) score = scoreboard[0];

    for (Integer i=0; i < supSize; i = i + 1) begin
      WriteBackIfc wb = alu[i].writeBack;

      Bool rdy = wb.valid;
      if (wb.instr.isSystem && useSys) rdy = False;
      if (wb.instr.isMemAccess && useMem) rdy = False;
      if (wb.instr.isSystem && !csrOut.canDeq) rdy = False;
      if (wb.instr.isMemAccess && !lsu.writeBack.valid) rdy = False;

      if (rdy) begin
        Bit#(32) result = wb.result;
        ArchReg rd = wb.instr.rd;

        if (wb.instr.isMemAccess) begin
          result = lsu.writeBack.result;
          rd = lsu.writeBack.instr.rd;
          lsu.writeBack.deq;
          useMem = True;
        end

        if (wb.instr.isSystem) begin
          result = csrOut.first.snd;
          rd = csrOut.first.fst;
          useSys = True;
          csrOut.deq;
        end

        if (rd != 0) regFile.writePorts[i].request(rd, result);
        score[rd] = 0;
        wb.deq;

        if (debug && rd != 0) begin
          $display("        ", showReg(rd), " <= %h", result);
        end
      end
    end

    scoreboard[0] <= score;
  endrule

  Reg#(Bit#(32)) commitPc <- mkReg('h80000000);

  rule flush if (outBuffer.mask != replicate(False) && outBuffer.epoch != epoch[0]);
    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Bit#(32) score = scoreboard[1];
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
      RvInstr instr = outBuffer.instr[i];

      Bool rdy = alu[i].commit.valid;
      if (instr.isSystem && useSys) rdy = False;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isSystem && !system.canDeq) rdy = False;
      if (instr.isMemAccess && !lsu.commit.valid) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        score[instr.rd] = 0;
        if (instr.isMemAccess) lsu.commit.commit(False);
        if (instr.isSystem) system.deq(False);
        if (instr.isMemAccess) useMem = True;
        if (instr.isSystem) useSys = True;
        alu[i].commit.commit(False);
        consumed[i] = True;
      end
    end

    outBuffer.consume(consumed);
    scoreboard[1] <= score;
  endrule

  Reg#(Bit#(32)) forwardProgess <- mkReg(0);

  rule dead_lock if (forwardProgess >= 100000);
    $display("dead lock at %h", commitPc);
    $finish();
  endrule

  rule commit
    if (outBuffer.mask != replicate(False) && !redirectQ.canDeq && outBuffer.epoch == epoch[0]);

    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Bool trainHit = True;
    Bit#(32) currentPc = commitPc;
    Bit#(32) score = scoreboard[1];
    Bit#(32) instrCounter = instret;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && outBuffer.mask[i]) begin
      RvInstr instr = outBuffer.instr[i];
      let pc = outBuffer.pc[i];
      ArchReg rd = instr.rd;

      dynamicAssert(pc == currentPc, "control flow error");

      let rdy = !(instr.isMemAccess && useMem);

      if (instr.isMemAccess && !lsu.commit.valid) rdy = False;
      if (instr.isSystem && !system.canDeq) rdy = False;
      if (instr.isSystem && !csrOut.canEnq) rdy = False;
      if (instr.isSystem && useSys) rdy = False;
      if (!alu[i].commit.valid) rdy = False;
      if (!rdy) stop = True;

      let exception = alu[i].commit.exception;
      let nextPc = alu[i].commit.nextPc;
      let cause = alu[i].commit.cause;

      if (instr.isMemAccess) begin
        exception = lsu.commit.exception;
        nextPc = lsu.commit.nextPc;
        cause = lsu.commit.cause;
      end

      if (instr.isSystem) begin
        exception = system.response.exception;
        cause = system.response.cause;
        nextPc = system.response.pc;
      end

      if (outBuffer.exception[i]) begin
        cause = outBuffer.cause[i];
        exception = True;
      end

      if (rdy) begin
        consumed[i] = True;
        instrCounter = instrCounter + 1;
        alu[i].commit.commit(!exception);

        if (debug) $display(cycle, " commit 0x%h: ", pc, showRvInstr(instr));

        if (exception) $display("pc: %h cycle: %d instret: %d", pc, cycle, instret);

        if (instr.isMemAccess) begin
          lsu.commit.commit(!exception);
          useMem = True;
        end

        if (instr.isSystem) begin
          system.deq(!exception);
          csrOut.enq(tuple2(instr.rd, system.response.rd));
          useSys = True;
        end

        currentPc = nextPc;

        if (exception) score[instr.rd] = 0;

        // Misprediction: redirect pipeline
        if (exception || nextPc != outBuffer.bprediction[i]) begin
          if (debug) $display("          redirect from 0x%h to 0x%h", pc, nextPc);

          redirectQ.enq(tuple3(
            nextPc, epoch[0]+1,
            BranchPredTrain{
              instrs: Valid(outBuffer.instr),
              state: outBuffer.bstate,
              nextPc: nextPc,
              pc: pc
            }
          ));

          epoch[0] <= epoch[0] + 1;
          trainHit = False;
          stop = True;
        end
      end
    end

    if (trainHit) begin
      fetch.trainHit(BranchPredTrain{
        instrs: Valid(outBuffer.instr),
        state: outBuffer.bstate,
        nextPc: currentPc,
        pc: commitPc
      });
    end

    forwardProgess <= consumed == replicate(False) ? forwardProgess+1 : 0;
    outBuffer.consume(consumed);
    instret <= instrCounter;
    scoreboard[1] <= score;
    commitPc <= currentPc;
  endrule

  rule dispatch if (inBuffer.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Bit#(32) score = scoreboard[2];
    Super#(Bool) consumed = replicate(False);
    Super#(Maybe#(Bit#(32))) moves = replicate(Invalid);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && inBuffer.mask[i]) begin
      RvInstr instr = inBuffer.instr[i];
      let pc = inBuffer.pc[i];

      ArchReg rs1 = instr.rs1;
      ArchReg rs2 = instr.rs2;
      ArchReg rd = instr.rd;

      // Check if we are ready to schedule the instruction
      Bit#(32) op1 <- regFile.readPorts[2*i].request(rs1);
      Bit#(32) op2 <- regFile.readPorts[2*i+1].request(rs2);
      if (rs1 == 0) op1 = 0;
      if (rs2 == 0) op2 = 0;

      if (
        execAlu(AluRequest{instr: instr, rs1: op1, rs2: op2, pc: pc}, False).forward matches
        tagged Valid .x &&& rd != 0 && zeroCycleAluForwarding
      ) begin
        moves[i] = Valid(x);
      end

      Bool rdy1 = scoreboard[2][rs1] == 0;
      Bool rdy2 = scoreboard[2][rs2] == 0;

      for (Integer j=0; j < List::length(forwarding); j = j + 1) begin
        if (forwarding[j].wget matches tagged Valid {.r, .d} &&& r == rs1) begin
          moves[i] = Invalid;
          rdy1 = True;
          op1 = d;
        end

        if (forwarding[j].wget matches tagged Valid {.r, .d} &&& r == rs2) begin
          moves[i] = Invalid;
          rdy2 = True;
          op2 = d;
        end
      end

      Bool rdy = scoreboard[2][rd] == 0;

      for (Integer j=0; j < i; j = j + 1) if (inBuffer.mask[j]) begin
        if (rs1 != 0 && rs1 == inBuffer.instr[j].rd && moves[j] == Invalid) rdy1 = False;
        if (rs2 != 0 && rs2 == inBuffer.instr[j].rd && moves[j] == Invalid) rdy2 = False;
        if (rd != 0 && rd == inBuffer.instr[j].rd) rdy = False;

        if (rs1 != 0 && rs1 == inBuffer.instr[j].rd &&& moves[j] matches tagged Valid .d) begin
          rdy1 = True;
          op1 = d;
        end

        if (rs2 != 0 && rs2 == inBuffer.instr[j].rd &&& moves[j] matches tagged Valid .d) begin
          rdy2 = True;
          op2 = d;
        end
      end

      if (!rdy1 || !rdy2) rdy = False;

      if (!system.canEnter && instr.isSystem) rdy = False;
      if (!lsu.canEnter && instr.isMemAccess) rdy = False;
      if (useMem && instr.isMemAccess) rdy = False;
      if (useSys && instr.isSystem) rdy = False;
      if (!alu[i].canEnter) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        consumed[i] = True;
        if (rd != 0) score[rd] = 1;

        if (instr.opcode == Move && rd != 0 && zeroCycleMoveForwarding) moves[i] = Valid(op1);

        //$display(cycle, " enter: ", showRvInstr(instr));
        let aluReq = AluRequest{
          instr: instr,
          rs1: op1,
          rs2: op2,
          pc: pc
        };

        alu[i].enter(aluReq, inBuffer.epoch);

        if (instr.isSystem) begin
          system.enter(aluReq, Machine);
          useSys = True;
        end

        if (instr.isMemAccess) begin
          lsu.enter(aluReq, inBuffer.epoch);
          useMem = True;
        end
      end
    end

    scoreboard[2] <= score;
    inBuffer.consume(consumed);
    outBuffer.put(Bundle{
      bprediction: inBuffer.bprediction,
      exception: inBuffer.exception,
      bstate: inBuffer.bstate,
      instr: inBuffer.instr,
      epoch: inBuffer.epoch,
      cause: inBuffer.cause,
      pc: inBuffer.pc,
      mask: consumed
    });
  endrule

  method transmit = uart;
  method led = 0;

  interface imaster = fetch.master;
  interface dmaster = lsu_ifc.master;
endmodule
