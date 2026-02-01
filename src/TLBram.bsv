// Drive a BRAM module using TileLink Get and Put requests

import TLTypes :: *;
import BRAMCore :: *;
import Fifo :: *;
import Ehr :: *;

export mkTLBram;

`include "TL.defines"

module mkTLBram#(
    Bit#(addrW) baseAddr,
    Bit#(addrW) baseSize,
    BRAM_PORT_BE#(Bit#(addrW), Bit#(dataW), TDiv#(dataW, 8)) bram
  ) (TLSlave#(`TL_ARGS));

  Fifo#(2, ChannelA#(`TL_ARGS)) fifoA <- mkFifo;
  Fifo#(2, ChannelD#(`TL_ARGS)) fifoD <- mkFifo;

  // Using a pipeline fifo ensure the output of the bram always point to the last requested data
  Fifo#(1, ChannelD#(`TL_ARGS)) queue <- mkPipelineFifo;

  Bit#(sizeW) logBusSize = fromInteger(log2(valueOf(dataW)/8));
  TLSize busSize = fromInteger(valueOf(dataW)/8);

  TLMaster#(`TL_ARGS) master = interface TLMaster;
    interface channelA = toFifoO(fifoA);
    interface channelB = nullFifoI;
    interface channelC = nullFifoO;
    interface channelD = toFifoI(fifoD);
    interface channelE = nullFifoO;
  endinterface;

  Reg#(TLSize) size <- mkReg(0);
  Reg#(Bit#(addrW)) address <- mkRegU;

  let message = fifoA.first;

  rule request if (fifoA.canDeq);
    Bool isWrite = message.opcode == PutData;
    let mask = isWrite ? message.mask : 0;

    let sz = size == 0 ? 1 << message.size : size;
    let addr = size == 0 ? message.address : address;

    if (baseSize >= addr - baseAddr)
      bram.put(mask, (addr - baseAddr) >> logBusSize, message.data);

    address <= addr + fromInteger(valueof(dataW)/8);
    size <= sz > busSize ? sz - busSize : 0;

    if (isWrite || sz <= busSize) fifoA.deq;

    if (!isWrite || sz <= busSize) begin
      queue.enq(ChannelD{
        opcode: isWrite ? AccessAck : AccessAckData,
        source: message.source,
        size: message.size,
        sink: ?,
        data: ?
      });
    end
  endrule

  rule response;
    let resp = queue.first;
    resp.data = bram.read;
    queue.deq;

    fifoD.enq(resp);
  endrule

  interface channelA = toFifoI(fifoA);
  interface channelB = nullFifoO;
  interface channelC = nullFifoI;
  interface channelD = toFifoO(fifoD);
  interface channelE = nullFifoI;
endmodule
