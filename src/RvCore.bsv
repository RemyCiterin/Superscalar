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

  Reg#(Bit#(32)) cycle <- mkReg(0);

  Reg#(Bit#(32)) instret <- mkReg(0);

  ////////////////////////////////////////////////////////////////////////////
  // Define system registers
  ////////////////////////////////////////////////////////////////////////////
  let cycleCsr <- mkCycleCsr;
  let instrCsr <- mkInstructionCounterCsr;
  let system <- mkCsrUnit(List::append(cycleCsr, instrCsr.csrs));
  Fifo#(1, Bit#(32)) csrOut <- mkPipelineFifo;

  rule incrCycle;
    cycle <= cycle + 1;
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Register file definition (2*n read ports, and n write ports)
  ////////////////////////////////////////////////////////////////////////////
  MultiRF#(TMul#(2, SupSize), SupSize, ArchReg, Bit#(32))
    regFile <- mkForwardMultiRF(0, 31);

  ////////////////////////////////////////////////////////////////////////////
  // Epoch: eviry instruction with an epoch different than the current counter
  // must be flush
  ////////////////////////////////////////////////////////////////////////////
  Reg#(Epoch) epoch[2] <- mkCReg(2, 0);


  ////////////////////////////////////////////////////////////////////////////
  // Pipeline front-end
  ////////////////////////////////////////////////////////////////////////////
  Fifo#(2, Tuple3#(Bit#(32), Epoch, BranchPredTrain)) redirectQ <- mkFifo;
  FetchIfc fetch <- mkFetch;
  DecodeIfc decode <- mkDecode;

  ////////////////////////////////////////////////////////////////////////////
  // Define system registers
  ////////////////////////////////////////////////////////////////////////////
  DispatchBuffer dispatchBuffer <- mkDispatchBuffer;
  DispatchBuffer commitBuffer <- mkDispatchBuffer;
  Buffer#(Super#(RvInstr)) wbBuffer <- mkBuffer;

  ////////////////////////////////////////////////////////////////////////////
  // Define execution units
  ////////////////////////////////////////////////////////////////////////////
  Vector#(SupSize, ExecIfc#(1)) alu <- replicateM(mkExecAlu);

  let lsu_ifc <- mkLsu;
  let uart = lsu_ifc.transmit;
  let lsu = lsu_ifc.exec;

  ////////////////////////////////////////////////////////////////////////////
  // Scoreboard/bypass logic: ensure that an instruction can't start without
  // knowing it's operands, and propagate operands from the last stages of the
  // pipeline to the register-read stage.
  //
  // The entries of the scoreboard are from oldest to youngest
  ////////////////////////////////////////////////////////////////////////////
  List#(RWire#(Tuple2#(ArchReg, Maybe#(Bit#(32)))))
    scoreboard <- List::replicateM(2*supSize, mkRWire);

  (* fire_when_enabled, no_implicit_conditions *)
  rule scoreboard_canon;
    // Stage 2
    for (Integer i=0; i < supSize; i = i + 1) if (wbBuffer.mask[i]) begin
      Maybe#(Bit#(32)) result = ?;
      RvInstr instr = wbBuffer[i];
      ArchReg rd = instr.rd;

      if (instr.isSystem) result = Invalid;
      else if (instr.isMemAccess)
        result = lsu.exec2.valid ? Valid(lsu.exec2.result) : Invalid;
      else result = alu[i].exec2.valid ? Valid(alu[i].exec2.result) : Invalid;

      scoreboard[i].wset(tuple2(rd, result));
    end

    // Stage 1
    for (Integer i=0; i < supSize; i = i + 1)
    if (commitBuffer.mask[i] && commitBuffer.epoch == epoch[0]) begin
      RvInstr instr = commitBuffer.instr[i];
      Maybe#(Bit#(32)) result = ?;
      ArchReg rd = instr.rd;

      if (instr.isSystem) result = Invalid;
      else if (instr.isMemAccess) result = lsu.exec1.forward;
      else result = alu[i].exec1.forward;

      scoreboard[supSize+i].wset(tuple2(rd, result));
    end
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Redirect the fetch stage to a new program counter
  ////////////////////////////////////////////////////////////////////////////
  rule redirect;
    match {.pc, .epoch, .train} = redirectQ.first;
    fetch.redirect(pc, epoch);
    fetch.trainMis(train);
    redirectQ.deq;
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Front-end stages connections
  ////////////////////////////////////////////////////////////////////////////
  rule fetch2decode;
    let data <- fetch.get;
    decode.put(data);
  endrule

  rule decode2buffer;
    let data <- decode.get;
    dispatchBuffer.put(data);
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Write-back instructions: must be in-order as the pipeline may contains
  // multiple instructions with the same destination register
  ////////////////////////////////////////////////////////////////////////////
  rule writeBackRl if (wbBuffer.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && wbBuffer.mask[i]) begin
      RvInstr instr = wbBuffer[i];
      ArchReg rd = instr.rd;

      Bool rdy = True;
      if (instr.isSystem && useSys) rdy = False;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isSystem && !csrOut.canDeq) rdy = False;
      if (instr.isMemAccess && !lsu.exec2.valid) rdy = False;
      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec2.valid) rdy = False;

      if (!rdy) stop = True;

      if (rdy) begin
        Bit#(32) result = ?;

        if (instr.isMemAccess) begin
          result = lsu.exec2.result;
          lsu.exec2.deq;
          useMem = True;
        end else if (instr.isSystem) begin
          result = csrOut.first;
          useSys = True;
          csrOut.deq;
        end else begin
          result = alu[i].exec2.result;
          alu[i].exec2.deq;
        end

        if (debug && rd != 0) begin
          $display("        ", showReg(rd), " <= %h", result);
        end

        if (rd != 0) regFile.writePorts[i].request(rd, result);
        consumed[i] = True;
      end
    end

    wbBuffer.consume(consumed);
  endrule

  Reg#(Bit#(32)) commitPc <- mkReg('h80000000);

  ////////////////////////////////////////////////////////////////////////////
  // Flush the entries of the commit buffer in case of a misprediction/exception
  ////////////////////////////////////////////////////////////////////////////
  rule flush if (commitBuffer.mask != replicate(False) && commitBuffer.epoch != epoch[0]);
    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && commitBuffer.mask[i]) begin
      RvInstr instr = commitBuffer.instr[i];

      Bool rdy = True;
      if (instr.isSystem && useSys) rdy = False;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isSystem && !system.canDeq) rdy = False;
      if (instr.isMemAccess && !lsu.exec1.valid) rdy = False;
      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec1.valid) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        if (!instr.isMemAccess && !instr.isSystem) alu[i].exec1.commit(False);
        if (instr.isMemAccess) lsu.exec1.commit(False);
        if (instr.isSystem) system.deq(False);
        if (instr.isMemAccess) useMem = True;
        if (instr.isSystem) useSys = True;
        consumed[i] = True;
      end
    end

    commitBuffer.consume(consumed);
  endrule

  Reg#(Bit#(32)) forwardProgess <- mkReg(0);

  rule dead_lock if (forwardProgess >= 100000);
    $display("dead lock at %h", commitPc);
    $finish();
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Send commit-buffer entries to the write-back stage, or redirect the pipeline
  // in case of an exception/misprediction
  ////////////////////////////////////////////////////////////////////////////
  rule commit if (
      commitBuffer.mask != replicate(False) && !redirectQ.canDeq && commitBuffer.epoch == epoch[0]
    );

    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Bool trainHit = True;
    Bit#(32) currentPc = commitPc;
    Bit#(32) instrCounter = instret;
    Super#(Bool) consumed = replicate(False);
    Super#(Bool) commited = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && commitBuffer.mask[i]) begin
      RvInstr instr = commitBuffer.instr[i];
      let pc = commitBuffer.pc[i];
      ArchReg rd = instr.rd;

      dynamicAssert(pc == currentPc, "control flow error");

      let rdy = !(instr.isMemAccess && useMem);

      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec1.valid) rdy = False;
      if (instr.isMemAccess && !lsu.exec1.valid) rdy = False;
      if (instr.isSystem && !system.canDeq) rdy = False;
      if (instr.isSystem && !csrOut.canEnq) rdy = False;
      if (instr.isSystem && useSys) rdy = False;
      if (!rdy) stop = True;

      let exception = alu[i].exec1.exception;
      let nextPc = alu[i].exec1.nextPc;
      let cause = alu[i].exec1.cause;

      if (instr.isMemAccess) begin
        exception = lsu.exec1.exception;
        nextPc = lsu.exec1.nextPc;
        cause = lsu.exec1.cause;
      end

      if (instr.isSystem) begin
        exception = system.response.exception;
        cause = system.response.cause;
        nextPc = system.response.pc;
      end

      if (commitBuffer.exception[i]) begin
        cause = commitBuffer.cause[i];
        exception = True;
      end

      if (rdy) begin
        consumed[i] = True;
        commited[i] = !exception;
        instrCounter = instrCounter + 1;

        if (debug) $display(cycle, " commit 0x%h: ", pc, showRvInstr(instr));

        if (exception) $display("pc: %h cycle: %d instret: %d", pc, cycle, instret);

        if (instr.isMemAccess) begin
          lsu.exec1.commit(!exception);
          useMem = True;
        end else if (instr.isSystem) begin
          system.deq(!exception);
          csrOut.enq(system.response.rd);
          useSys = True;
        end else begin
          alu[i].exec1.commit(!exception);
        end

        currentPc = nextPc;

        // Misprediction: redirect pipeline
        if (exception || nextPc != commitBuffer.bprediction[i]) begin
          if (debug) $display("          redirect from 0x%h to 0x%h", pc, nextPc);

          redirectQ.enq(tuple3(
            nextPc, epoch[0]+1,
            BranchPredTrain{
              instrs: Valid(commitBuffer.instr),
              state: commitBuffer.bstate,
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
        instrs: Valid(commitBuffer.instr),
        state: commitBuffer.bstate,
        nextPc: currentPc,
        pc: commitPc
      });
    end

    forwardProgess <= consumed == replicate(False) ? forwardProgess+1 : 0;
    wbBuffer.put(commited, commitBuffer.instr);
    commitBuffer.consume(consumed);
    instret <= instrCounter;
    commitPc <= currentPc;
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Enter new instruction to the pipeline, also detect read-after-write hazard
  // and forward operands using the values in the scoreboard
  ////////////////////////////////////////////////////////////////////////////
  rule dispatch if (dispatchBuffer.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && dispatchBuffer.mask[i]) begin
      RvInstr instr = dispatchBuffer.instr[i];
      let pc = dispatchBuffer.pc[i];

      ArchReg rs1 = instr.rs1;
      ArchReg rs2 = instr.rs2;
      ArchReg rd = instr.rd;

      // Check if we are ready to schedule the instruction
      Bit#(32) op1 <- regFile.readPorts[2*i].request(rs1);
      Bit#(32) op2 <- regFile.readPorts[2*i+1].request(rs2);
      if (rs1 == 0) op1 = 0;
      if (rs2 == 0) op2 = 0;


      Bool rdy = True;
      Bool rdy1 = True;
      Bool rdy2 = True;

      Integer len = List::length(scoreboard);
      for (Integer j=0; j < len; j = j + 1) begin
        if (scoreboard[j].wget matches tagged Valid {.r, .d} &&& r != 0 && r == rs1) begin
          op1 = validValue(d);
          rdy1 = isValid(d);
        end

        if (scoreboard[j].wget matches tagged Valid {.r, .d} &&& r != 0 && r == rs2) begin
          op2 = validValue(d);
          rdy2 = isValid(d);
        end
      end

      for (Integer j=0; j < i; j = j + 1) if (dispatchBuffer.mask[j]) begin
        if (rs1 != 0 && rs1 == dispatchBuffer.instr[j].rd) rdy1 = False;
        if (rs2 != 0 && rs2 == dispatchBuffer.instr[j].rd) rdy2 = False;
        if (rd != 0 && rd == dispatchBuffer.instr[j].rd) rdy = False;
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

        let aluReq = AluRequest{
          instr: instr,
          rs1: op1,
          rs2: op2,
          pc: pc
        };

        if (instr.isSystem) begin
          system.enter(aluReq, Machine);
          useSys = True;
        end else if (instr.isMemAccess) begin
          lsu.enter(aluReq, dispatchBuffer.epoch);
          useMem = True;
        end else begin
          alu[i].enter(aluReq, dispatchBuffer.epoch);
        end
      end
    end

    dispatchBuffer.consume(consumed);
    commitBuffer.put(Bundle{
      bprediction: dispatchBuffer.bprediction,
      exception: dispatchBuffer.exception,
      bstate: dispatchBuffer.bstate,
      instr: dispatchBuffer.instr,
      epoch: dispatchBuffer.epoch,
      cause: dispatchBuffer.cause,
      pc: dispatchBuffer.pc,
      mask: consumed
    });
  endrule

  method transmit = uart;
  method led = 0;

  interface imaster = fetch.master;
  interface dmaster = lsu_ifc.master;
endmodule
