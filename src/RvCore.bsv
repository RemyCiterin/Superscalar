import MultiRegFile :: *;
import RvBranchPred :: *;
import ForwardBRAM :: *;
import BuildVector :: *;
import ConfigReg :: *;
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

typedef struct {
  Super#(RvInstr) instr;
  Super#(Bit#(32)) uid;
} ExecEntry deriving(Bits);

(* synthesize *)
module mkCPU(CpuIfc);
  Bool debug = False;
  Bool logTrace = False;
  Bool useLateIssue = True;
  Bool useForwarding = True;

  Reg#(Bit#(32)) cycle <- mkConfigReg(0);

  Reg#(Bit#(32)) instret <- mkConfigReg(0);

  Reg#(File) trace_file <- mkReg(InvalidFile);

  rule init_log if (cycle == 0 && logTrace);
    let log <- $fopen("trace.txt");
    $fdisplay(log, "Kanata 0004");
    trace_file <= log;
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Define system registers
  ////////////////////////////////////////////////////////////////////////////
  let cycleCsr <- mkCycleCsr;
  let instrCsr <- mkInstructionCounterCsr;
  let system <- mkCsrUnit(List::append(cycleCsr, instrCsr.csrs));
  Reg#(AluRequest) csrExec2 <- mkRegU;
  Reg#(AluRequest) csrExec3 <- mkRegU;
  Reg#(Bit#(32)) csrExec4 <- mkRegU;

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
  DispatchBuffer execBuffer1 <- mkDispatchBuffer;
  DispatchBuffer execBuffer2 <- mkDispatchBuffer;
  Buffer#(ExecEntry) wbBuffer <- mkBuffer;

  ////////////////////////////////////////////////////////////////////////////
  // Define execution units
  ////////////////////////////////////////////////////////////////////////////
  Vector#(SupSize, ExecIfc#(1)) alu <- replicateM(mkExecAlu(useLateIssue));

  let lsu_ifc <- mkLsu;
  let uart = lsu_ifc.transmit;
  let lsu = lsu_ifc.exec;

  ////////////////////////////////////////////////////////////////////////////
  // Scoreboard/bypass logic: ensure that an instruction can't start without
  // knowing it's operands, and propagate operands from the last stages of the
  // pipeline to the register-read stage.
  //
  // The entries of the scoreboard are from oldest to youngest
  //
  // This stage is also in charge of propagating data from the write-back
  // stage and forwarding circuit to the late ALUs operands.
  ////////////////////////////////////////////////////////////////////////////
  List#(RWire#(Tuple2#(ArchReg, Maybe#(Bit#(32)))))
    scoreboard <- List::replicateM(4*supSize, mkRWire);

  (* fire_when_enabled, no_implicit_conditions *)
  rule scoreboard_canon;
    Vector#(SupSize, Maybe#(Bit#(32))) wakeupRs1Ex1 = replicate(Invalid);
    Vector#(SupSize, Maybe#(Bit#(32))) wakeupRs2Ex1 = replicate(Invalid);

    Vector#(SupSize, Maybe#(Bit#(32))) wakeupRs1Ex2 = replicate(Invalid);
    Vector#(SupSize, Maybe#(Bit#(32))) wakeupRs2Ex2 = replicate(Invalid);

    // Stage 4
    for (Integer i=0; i < supSize; i = i + 1) if (wbBuffer.mask[i]) begin
      RvInstr instr = wbBuffer.instr[i];
      Maybe#(Bit#(32)) result = ?;
      ArchReg rd = instr.rd;

      if (instr.isSystem) result = Valid(csrExec4);
      else if (instr.isMemAccess)
        result = lsu.exec4.valid ? Valid(lsu.exec4.result) : Invalid;
      else result = alu[i].exec4.valid ? Valid(alu[i].exec4.result) : Invalid;

      scoreboard[i].wset(tuple2(rd, result));

      for (Integer j=0; j < supSize; j = j + 1) begin
        if (rd == execBuffer2.instr[j].rs1) wakeupRs1Ex2[j] = result;
        if (rd == execBuffer2.instr[j].rs2) wakeupRs2Ex2[j] = result;
        if (rd == execBuffer1.instr[j].rs1) wakeupRs1Ex1[j] = result;
        if (rd == execBuffer1.instr[j].rs2) wakeupRs2Ex1[j] = result;
      end
    end

    // Stage 3
    for (Integer i=0; i < supSize; i = i + 1)
    if (commitBuffer.mask[i] && commitBuffer.epoch == epoch[0]) begin
      RvInstr instr = commitBuffer.instr[i];
      Maybe#(Bit#(32)) result = ?;
      ArchReg rd = instr.rd;

      if (instr.isSystem) result = Invalid;
      else if (instr.isMemAccess) result = lsu.exec3.forward;
      else result = alu[i].exec3.forward;

      scoreboard[supSize+i].wset(tuple2(rd, result));

      for (Integer j=0; j < supSize; j = j + 1) begin
        if (rd == execBuffer2.instr[j].rs1) wakeupRs1Ex2[j] = result;
        if (rd == execBuffer2.instr[j].rs2) wakeupRs2Ex2[j] = result;
        if (rd == execBuffer1.instr[j].rs1) wakeupRs1Ex1[j] = result;
        if (rd == execBuffer1.instr[j].rs2) wakeupRs2Ex1[j] = result;
      end
    end

    // Stage 2
    for (Integer i=0; i < supSize; i = i + 1)
    if (execBuffer2.mask[i] && execBuffer2.epoch == epoch[0]) begin
      RvInstr instr = execBuffer2.instr[i];
      Maybe#(Bit#(32)) result = ?;
      ArchReg rd = instr.rd;

      if (instr.isSystem) result = Invalid;
      else if (instr.isMemAccess) result = lsu.exec2.forward;
      else result = alu[i].exec2.forward;

      scoreboard[2*supSize+i].wset(tuple2(rd, result));

      for (Integer j=0; j < supSize; j = j + 1) begin
        if (j > i && rd == execBuffer2.instr[j].rs1) wakeupRs1Ex2[j] = result;
        if (j > i && rd == execBuffer2.instr[j].rs2) wakeupRs2Ex2[j] = result;
        if (rd == execBuffer1.instr[j].rs1) wakeupRs1Ex1[j] = result;
        if (rd == execBuffer1.instr[j].rs2) wakeupRs2Ex1[j] = result;
      end
    end

    // Stage 1
    for (Integer i=0; i < supSize; i = i + 1)
    if (execBuffer1.mask[i] && execBuffer1.epoch == epoch[0]) begin
      RvInstr instr = execBuffer1.instr[i];
      Maybe#(Bit#(32)) result = ?;
      ArchReg rd = instr.rd;

      if (instr.isSystem) result = Invalid;
      else if (instr.isMemAccess) result = lsu.exec1.forward;
      else result = alu[i].exec1.forward;

      scoreboard[3*supSize+i].wset(tuple2(rd, result));

      for (Integer j=0; j < supSize; j = j + 1) begin
        if (j > i && rd == execBuffer1.instr[j].rs1) wakeupRs1Ex1[j] = result;
        if (j > i && rd == execBuffer1.instr[j].rs2) wakeupRs2Ex1[j] = result;
      end
    end

    for (Integer j=0; j < supSize; j = j + 1) begin
      if (useLateIssue && execBuffer1.epoch == epoch[0]) begin
        if (wakeupRs1Ex1[j] matches tagged Valid .d) alu[j].exec1.wakeupRs1(d);
        if (wakeupRs2Ex1[j] matches tagged Valid .d) alu[j].exec1.wakeupRs2(d);
      end

      if (useLateIssue && execBuffer2.epoch == epoch[0]) begin
        if (wakeupRs1Ex2[j] matches tagged Valid .d) alu[j].exec2.wakeupRs1(d);
        if (wakeupRs2Ex2[j] matches tagged Valid .d) alu[j].exec2.wakeupRs2(d);
      end

      if (useLateIssue && execBuffer1.epoch != epoch[0]) begin
        alu[j].exec1.wakeupRs1(?);
        alu[j].exec1.wakeupRs2(?);
      end

      if (useLateIssue && execBuffer2.epoch != epoch[0]) begin
        alu[j].exec2.wakeupRs1(?);
        alu[j].exec2.wakeupRs2(?);
      end
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

    if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
    for (Integer i=0; i < supSize; i = i + 1) if (data.mask[i]) begin
      if (logTrace) $fdisplay(trace_file, "I %d %d 0", data.uid[i], data.uid[i]);
      if (logTrace) $fdisplay(trace_file, "S %d 0 D", data.uid[i]);
    end
  endrule

  rule decode2buffer;
    let data <- decode.get;
    dispatchBuffer.put(data);

    if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
    for (Integer i=0; i < supSize; i = i + 1) if (data.mask[i]) begin
      if (logTrace) $fdisplay(trace_file, "E %d 0 D", data.uid[i]);
      if (logTrace) $fdisplay(trace_file, "S %d 0 Is", data.uid[i]);
    end
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Execution stage 1 to execution stage 2
  ////////////////////////////////////////////////////////////////////////////
  rule execRl1 if (execBuffer1.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && execBuffer1.mask[i]) begin
      RvInstr instr = execBuffer1.instr[i];
      Bit#(32) uid = execBuffer1.uid[i];

      Bool rdy = True;
      if (instr.isSystem && useSys) rdy = False;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isMemAccess && !lsu.exec1.valid) rdy = False;
      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec1.valid) rdy = False;

      if (!rdy) stop = True;

      if (rdy) begin
        if (instr.isMemAccess) begin
          lsu.exec1.deq;
          useMem = True;
        end else if (instr.isSystem) begin
          csrExec3 <= csrExec2;
          useSys = True;
        end else begin
          alu[i].exec1.deq;
        end

        consumed[i] = True;
        if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
        if (logTrace) $fdisplay(trace_file, "E %d 0 Ex1", uid);
        if (logTrace) $fdisplay(trace_file, "S %d 0 Ex2", uid);
      end
    end

    execBuffer1.consume(consumed);
    execBuffer2.put(Bundle{
      bprediction: execBuffer1.bprediction,
      exception: execBuffer1.exception,
      bstate: execBuffer1.bstate,
      instr: execBuffer1.instr,
      epoch: execBuffer1.epoch,
      cause: execBuffer1.cause,
      uid: execBuffer1.uid,
      pc: execBuffer1.pc,
      mask: consumed
    });
  endrule

  ////////////////////////////////////////////////////////////////////////////
  // Execution stage to commit stage
  ////////////////////////////////////////////////////////////////////////////
  rule execRl2 if (execBuffer2.mask != replicate(False));
    Bool stop = False;
    Bool useMem = False;
    Bool useSys = False;
    Super#(Bool) consumed = replicate(False);

    for (Integer i=0; i < supSize; i = i + 1) if (!stop && execBuffer2.mask[i]) begin
      RvInstr instr = execBuffer2.instr[i];
      Bit#(32) uid = execBuffer2.uid[i];

      Bool rdy = True;
      if (instr.isSystem && useSys) rdy = False;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isSystem && !system.canEnter) rdy = False;
      if (instr.isMemAccess && !lsu.exec2.valid) rdy = False;
      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec2.valid) rdy = False;

      if (!rdy) stop = True;

      if (rdy) begin
        if (instr.isMemAccess) begin
          lsu.exec2.deq;
          useMem = True;
        end else if (instr.isSystem) begin
          system.enter(csrExec3, Machine);
          useSys = True;
        end else begin
          alu[i].exec2.deq;
        end

        consumed[i] = True;
        if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
        if (logTrace) $fdisplay(trace_file, "E %d 0 Ex2", uid);
        if (logTrace) $fdisplay(trace_file, "S %d 0 C", uid);
      end
    end

    execBuffer2.consume(consumed);
    commitBuffer.put(Bundle{
      bprediction: execBuffer2.bprediction,
      exception: execBuffer2.exception,
      bstate: execBuffer2.bstate,
      instr: execBuffer2.instr,
      epoch: execBuffer2.epoch,
      cause: execBuffer2.cause,
      uid: execBuffer2.uid,
      pc: execBuffer2.pc,
      mask: consumed
    });
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
      RvInstr instr = wbBuffer.instr[i];
      Bit#(32) uid = wbBuffer.uid[i];
      ArchReg rd = instr.rd;

      Bool rdy = True;
      if (instr.isSystem && useSys) rdy = False;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isMemAccess && !lsu.exec4.valid) rdy = False;
      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec4.valid) rdy = False;

      if (!rdy) stop = True;

      if (rdy) begin
        Bit#(32) result = ?;

        if (instr.isMemAccess) begin
          result = lsu.exec4.result;
          lsu.exec4.deq;
          useMem = True;
        end else if (instr.isSystem) begin
          result = csrExec4;
          useSys = True;
        end else begin
          result = alu[i].exec4.result;
          alu[i].exec4.deq;
        end

        if (debug && rd != 0) begin
          $display("        ", showReg(rd), " <= %h", result);
        end

        if (rd != 0) regFile.writePorts[i].request(rd, result);
        consumed[i] = True;

        if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
        if (logTrace) $fdisplay(trace_file, "E %d 0 Wb", uid);
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
      Bit#(32) uid = commitBuffer.uid[i];

      Bool rdy = True;
      if (instr.isSystem && useSys) rdy = False;
      if (instr.isMemAccess && useMem) rdy = False;
      if (instr.isSystem && !system.canDeq) rdy = False;
      if (instr.isMemAccess && !lsu.exec3.valid) rdy = False;
      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec3.valid) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        if (!instr.isMemAccess && !instr.isSystem) alu[i].exec3.deq(False);
        if (instr.isMemAccess) lsu.exec3.deq(False);
        if (instr.isSystem) system.deq(False);
        if (instr.isMemAccess) useMem = True;
        if (instr.isSystem) useSys = True;
        consumed[i] = True;

        if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
        if (logTrace) $fdisplay(trace_file, "E %d 0 C", uid);
      end
    end

    commitBuffer.consume(consumed);
  endrule

  Reg#(Bit#(32)) forwardProgess <- mkReg(0);

  rule dead_lock if (forwardProgess >= 1000000);
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
      Bit#(32) uid = commitBuffer.uid[i];
      let pc = commitBuffer.pc[i];
      ArchReg rd = instr.rd;

      dynamicAssert(pc == currentPc, "control flow error");

      let rdy = !(instr.isMemAccess && useMem);

      if (!instr.isMemAccess && !instr.isSystem && !alu[i].exec3.valid) rdy = False;
      if (instr.isMemAccess && !lsu.exec3.valid) rdy = False;
      if (instr.isSystem && !system.canDeq) rdy = False;
      if (instr.isSystem && useSys) rdy = False;
      if (!rdy) stop = True;

      let exception = alu[i].exec3.exception;
      let nextPc = alu[i].exec3.nextPc;
      let cause = alu[i].exec3.cause;

      if (instr.isMemAccess) begin
        exception = lsu.exec3.exception;
        nextPc = lsu.exec3.nextPc;
        cause = lsu.exec3.cause;
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

        if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
        if (logTrace) $fdisplay(trace_file, "E %d 0 C", uid);
        if (!exception && logTrace) $fdisplay(trace_file, "S %d 0 Wb", uid);

        if (instr.isMemAccess) begin
          lsu.exec3.deq(!exception);
          useMem = True;
        end else if (instr.isSystem) begin
          csrExec4 <= system.response.rd;
          system.deq(!exception);
          useSys = True;
        end else begin
          alu[i].exec3.deq(!exception);
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
    wbBuffer.put(commited, ExecEntry{instr: commitBuffer.instr, uid: commitBuffer.uid});
    commitBuffer.consume(consumed);
    instret <= instrCounter;
    commitPc <= currentPc;
  endrule

  Reg#(Bit#(32)) stalled1 <- mkReg(0);
  Reg#(Bit#(32)) stalled2 <- mkReg(0);

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
      Bit#(32) uid = dispatchBuffer.uid[i];
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

      if ((!rdy1 || !rdy2) && !useLateIssue) rdy = False;
      if ((!rdy1 || !rdy2) && !supportLateIssue(instr.opcode) && useLateIssue) rdy = False;

      if (!lsu.canEnter && instr.isMemAccess) rdy = False;
      if (useMem && instr.isMemAccess) rdy = False;
      if (useSys && instr.isSystem) rdy = False;
      if (!alu[i].canEnter) rdy = False;
      if (!rdy) stop = True;

      if (rdy) begin
        consumed[i] = True;
        if (logTrace) $fdisplay(trace_file, "C=%d", cycle);
        if (logTrace) $fdisplay(trace_file, "E %d 0 Is", uid);
        if (logTrace) $fdisplay(trace_file, "S %d 0 Ex1", uid);
        if (logTrace) $fdisplay(
          trace_file,
          "L %d 0 0x%h: ", uid, pc,
          " ", fshow(instr.opcode),
          " ", showReg(rd),
          " ", showReg(rs1),
          " ", showReg(rs2)
        );

        let aluReq = AluRequest{
          instr: instr,
          rs1: op1,
          rs2: op2,
          pc: pc
        };

        if (instr.isSystem) begin
          csrExec2 <= aluReq;
          useSys = True;
        end else if (instr.isMemAccess) begin
          lsu.enter(aluReq, rdy1, rdy2);
          useMem = True;
        end else begin
          alu[i].enter(aluReq, rdy1, rdy2);
        end
      end
    end

    dispatchBuffer.consume(consumed);
    execBuffer1.put(Bundle{
      bprediction: dispatchBuffer.bprediction,
      exception: dispatchBuffer.exception,
      bstate: dispatchBuffer.bstate,
      instr: dispatchBuffer.instr,
      epoch: dispatchBuffer.epoch,
      cause: dispatchBuffer.cause,
      uid: dispatchBuffer.uid,
      pc: dispatchBuffer.pc,
      mask: consumed
    });
  endrule

  method transmit = uart;
  method led = 0;

  interface imaster = fetch.master;
  interface dmaster = lsu_ifc.master;
endmodule
