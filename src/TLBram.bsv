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

  TLMaster#(`TL_ARGS) master = interface TLMaster;
    interface channelA = toFifoO(fifoA);
    interface channelB = nullFifoI;
    interface channelC = nullFifoO;
    interface channelD = toFifoI(fifoD);
    interface channelE = nullFifoO;
  endinterface;

  // Keep track of the status of each request:
  // - the address of the current beat
  // - is the current beat the last one
  MetaChannelA#(`TL_ARGS) metaA <- mkMetaChannelA(master.channelA);
  let message = metaA.channel.first;

  rule request;
    Bool isWrite = message.opcode == PutData;
    let mask = isWrite ? message.mask : 0;

    if (baseSize >= metaA.address - baseAddr)
      bram.put(mask, (metaA.address - baseAddr) >> logBusSize, message.data);

    metaA.channel.deq;

    if (metaA.last || !isWrite) begin
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
