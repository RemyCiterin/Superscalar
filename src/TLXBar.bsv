import Connectable :: *;
import TLTypes :: *;
import RegFile :: *;
import Vector :: *;
import Array :: *;
import TLUtils :: *;
import Fifo :: *;
import Ehr :: *;

`include "TL.defines"

export mkIncreaseWidth;
export mkDecreaseWidth;
export XBarConf(..);
export XBar(..);
export mkXBar;

// This package defines N*M cross bar interconnects, to root the TileLink packets, it use
// - The address in channels A and C
// - The source in channels B and D
// - The sink in channel E
typedef struct {
  // If true, enable channels B,C and E (coherency), otherwise, keep those
  // channels empty
  Bool bce;

  function Token#(m) fn(Bit#(sourceW) source) rootSource;
  function Token#(n) fn(Bit#(sinkW) sink) rootSink;
  function Token#(n) fn(Bit#(addrW) addr) rootAddr;
} XBarConf#(numeric type n, numeric type m, `TL_ARGS_DECL);

interface XBar#(numeric type n, numeric type m, `TL_ARGS_DECL);
  interface Vector#(n, TLMaster#(`TL_ARGS)) masters;
  interface Vector#(m, TLSlave#(`TL_ARGS)) slaves;
endinterface

module mkXBar#(XBarConf#(n,m,`TL_ARGS) conf) (XBar#(n,m,`TL_ARGS));
  Fifo#(2, ChannelA#(`TL_ARGS)) fifoA <- mkFifo;
  Fifo#(2, ChannelB#(`TL_ARGS)) fifoB <- mkFifo;
  Fifo#(2, ChannelC#(`TL_ARGS)) fifoC <- mkFifo;
  Fifo#(2, ChannelD#(`TL_ARGS)) fifoD <- mkFifo;
  Fifo#(2, ChannelE#(`TL_ARGS)) fifoE <- mkFifo;

  TLSize busSize = fromInteger(valueOf(dataW)/8);

  Reg#(Token#(m)) tokenA <- mkReg(?);
  Reg#(Token#(m)) tokenC <- mkReg(?);
  Reg#(Token#(n)) tokenD <- mkReg(?);
  Reg#(TLSize) sizeA <- mkReg(0);
  Reg#(TLSize) sizeC <- mkReg(0);
  Reg#(TLSize) sizeD <- mkReg(0);

  if (!conf.bce) begin
    fifoB = nullFifo;
    fifoC = nullFifo;
    fifoE = nullFifo;
  end

  Vector#(n, TLMaster#(`TL_ARGS)) inputs = newVector;
  Vector#(m, TLSlave#(`TL_ARGS)) outputs = newVector;

  for (Integer i=0; i < valueOf(n); i = i + 1) begin
    Bool canDeqA =
      fifoA.canDeq && fromInteger(i) == conf.rootAddr(fifoA.first.address);

    Bool canDeqC =
      fifoC.canDeq && fromInteger(i) == conf.rootAddr(fifoC.first.address);

    Bool canEnqD =
      fifoD.canEnq && (sizeD == 0 || fromInteger(i) == tokenD);

    Bool canDeqE =
      fifoE.canDeq && fromInteger(i) == conf.rootSink(fifoE.first.sink);

    inputs[i] = interface TLMaster;
      interface FifoO channelA;
        method canDeq = canDeqA;
        method deq = when(canDeqA, fifoA.deq);
        method first = when(canDeqA, fifoA.first);
      endinterface

      interface channelB = toFifoI(fifoB);

      interface FifoO channelC;
        method canDeq = canDeqC;
        method deq = when(canDeqC, fifoC.deq);
        method first = when(canDeqC, fifoC.first);
      endinterface

      interface FifoI channelD;
        method canEnq = canEnqD;
        method Action enq(ChannelD#(`TL_ARGS) msg) if (canEnqD);
          action
            let size = sizeD == 0 ? 1 << msg.size : sizeD;
            sizeD <= size < busSize || !hasDataD(msg.opcode) ? 0 : size - busSize;
            tokenD <= fromInteger(i);
            fifoD.enq(msg);
          endaction
        endmethod
      endinterface

      interface FifoO channelE;
        method canDeq = canDeqE;
        method deq = when(canDeqE, fifoE.deq);
        method first = when(canDeqE, fifoE.first);
      endinterface
    endinterface;
  end

  for (Integer i=0; i < valueOf(m); i = i + 1) begin
    Bool canEnqA =
      fifoA.canEnq && (sizeA == 0 || fromInteger(i) == tokenA);

    Bool canDeqB =
      fifoB.canDeq && fromInteger(i) == conf.rootSource(fifoB.first.source);

    Bool canEnqC =
      fifoC.canEnq && (sizeC == 0 || fromInteger(i) == tokenC);

    Bool canDeqD =
      fifoD.canDeq && fromInteger(i) == conf.rootSource(fifoD.first.source);

    outputs[i] = interface TLSlave;
      interface FifoI channelA;
        method canEnq = canEnqA;
        method Action enq(ChannelA#(`TL_ARGS) msg) if (canEnqA);
          action
            let size = sizeA == 0 ? 1 << msg.size : sizeA;
            sizeA <= size < busSize || !hasDataA(msg.opcode) ? 0 : size - busSize;
            tokenA <= fromInteger(i);
            fifoA.enq(msg);
          endaction
        endmethod
      endinterface

      interface FifoO channelB;
        method canDeq = canDeqB;
        method deq = when(canDeqB, fifoB.deq);
        method first = when(canDeqB, fifoB.first);
      endinterface

      interface FifoI channelC;
        method canEnq = canEnqC;
        method Action enq(ChannelC#(`TL_ARGS) msg) if (canEnqC);
          action
            let size = sizeC == 0 ? 1 << msg.size : sizeC;
            sizeC <= size < busSize || !hasDataC(msg.opcode) ? 0 : size - busSize;
            tokenC <= fromInteger(i);
            fifoC.enq(msg);
          endaction
        endmethod
      endinterface

      interface FifoO channelD;
        method canDeq = canDeqD;
        method deq = when(canDeqD, fifoD.deq);
        method first = when(canDeqD, fifoD.first);
      endinterface

      interface channelE = toFifoI(fifoE);
    endinterface;
  end

  interface masters = inputs;
  interface slaves = outputs;
endmodule

module mkIncreaseWidthChannelA#(
    FifoI#(ChannelA#(addrW,TMul#(ratio,dataW),sizeW,sourceW,sinkW)) slave,
    FifoO#(ChannelA#(`TL_ARGS)) master
  ) (Empty);

  let meta <- mkMetaChannelA(master);
  let channel = meta.channel;
  let msg = channel.first;

  Reg#(Vector#(ratio,Bit#(dataW))) dataReg <- mkReg(replicate(0));
  Reg#(Vector#(ratio,Bit#(TDiv#(dataW,8)))) maskReg <- mkReg(replicate(0));
  Reg#(Token#(ratio)) index <- mkReg(0);

  rule connect;
    doAssert((msg.address & ((1 << msg.size) - 1)) == 0, "TileLink messages must be size-aligned");
    doAssert(valueof(ratio) == 2**log2(valueof(ratio)), "TileLink bus width must be a power of 2");
    doAssert(valueof(dataW) == 2**log2(valueof(dataW)), "TileLink bus width must be a power of 2");

    Vector#(ratio,Bit#(TDiv#(dataW,8))) mask = maskReg;
    Vector#(ratio,Bit#(dataW)) data = dataReg;

    Integer low = log2(valueOf(dataW)/8);
    Integer high = low + log2(valueOf(ratio)) - 1;
    mask[Token#(ratio)'(meta.address[high:low])] = msg.mask;
    data[Token#(ratio)'(meta.address[high:low])] = msg.data;

    if (index == maxBound || meta.last) begin
      slave.enq(ChannelA{
        mask: packArray(vectorToArray(mask)),
        opcode: msg.opcode,
        source: msg.source,
        address: msg.address,
        data: pack(data),
        size: msg.size
      });
    end

    dataReg <= meta.last || index == maxBound ? replicate(0) : data;
    maskReg <= meta.last || index == maxBound ? replicate(0) : mask;
    index <= meta.last || index == maxBound ? 0 : index + 1;

    channel.deq;
  endrule
endmodule

module mkIncreaseWidthChannelC#(
    FifoI#(ChannelC#(addrW,TMul#(ratio,dataW),sizeW,sourceW,sinkW)) slave,
    FifoO#(ChannelC#(`TL_ARGS)) master
  ) (Empty);

  let meta <- mkMetaChannelC(master);
  let channel = meta.channel;
  let msg = channel.first;

  Reg#(Vector#(ratio,Bit#(dataW))) dataReg <- mkReg(replicate(0));
  Reg#(Token#(ratio)) index <- mkReg(0);

  rule connect;
    doAssert((msg.address & ((1 << msg.size) - 1)) == 0, "TileLink messages must be size-aligned");
    doAssert(valueof(ratio) == 2**log2(valueof(ratio)), "TileLink bus width must be a power of 2");
    doAssert(valueof(dataW) == 2**log2(valueof(dataW)), "TileLink bus width must be a power of 2");

    Vector#(ratio,Bit#(dataW)) data = dataReg;
    data[(meta.address >> log2(valueOf(dataW)/8)) & fromInteger(valueOf(ratio)-1)] = msg.data;

    if (index == maxBound || meta.last) begin
      slave.enq(ChannelC{
        opcode: msg.opcode,
        source: msg.source,
        address: msg.address,
        data: pack(data),
        size: msg.size
      });
    end

    dataReg <= meta.last || index == maxBound ? replicate(0) : data;
    index <= meta.last || index == maxBound ? 0 : index + 1;

    channel.deq;
  endrule
endmodule

module mkIncreaseWidthChannelD#(
    FifoI#(ChannelA#(`TL_ARGS)) slaveA,
    FifoI#(ChannelD#(addrW,TMul#(ratio,dataW),sizeW,sourceW,sinkW)) slave,
    FifoO#(ChannelD#(`TL_ARGS)) master
  ) (FifoI#(ChannelA#(`TL_ARGS)));

  let meta <- mkMetaChannelD(master);
  let channel = meta.channel;
  let msg = channel.first;

  RegFile#(Bit#(sourceW), Token#(ratio)) indexes <- mkRegFileFull;
  Reg#(Vector#(ratio,Bit#(dataW))) dataReg <- mkReg(replicate(0));
  Reg#(Token#(ratio)) index <- mkReg(0);

  rule connect;
    doAssert(valueof(ratio) == 2**log2(valueof(ratio)), "TileLink bus width must be a power of 2");
    doAssert(valueof(dataW) == 2**log2(valueof(dataW)), "TileLink bus width must be a power of 2");

    Vector#(ratio,Bit#(dataW)) data = dataReg;
    data[meta.first ? indexes.sub(msg.source) : index] = msg.data;

    if (index == maxBound || meta.last) begin
      slave.enq(ChannelD{
        opcode: msg.opcode,
        source: msg.source,
        data: pack(data),
        sink: msg.sink,
        size: msg.size
      });
    end

    dataReg <= meta.last || index == maxBound ? replicate(0) : data;
    index <= meta.last || index == maxBound ? 0 : index + 1;

    channel.deq;
  endrule

  method canEnq = slaveA.canEnq;

  method Action enq(ChannelA#(`TL_ARGS) m);
    action
      Integer low = log2(valueOf(dataW)/8);
      Integer high = low + log2(valueOf(ratio)) - 1;
      indexes.upd(m.source, m.address[high:low]);
      slaveA.enq(m);
    endaction
  endmethod
endmodule


module mkDecreaseWidthChannelA#(
    FifoI#(ChannelA#(`TL_ARGS)) slave,
    FifoO#(ChannelA#(addrW,TMul#(ratio,dataW),sizeW,sourceW,sinkW)) master
  ) (Empty);

  let msg = master.first;

  Vector#(ratio,Bit#(TDiv#(dataW,8))) mask = arrayToVector(unpackArray(msg.mask,valueof(ratio)));
  Vector#(ratio,Bit#(dataW)) data = unpack(msg.data);

  Reg#(Token#(ratio)) indexReg <- mkReg(0);

  Integer low = log2(valueOf(dataW)/8);
  Integer high = low + log2(valueOf(ratio)) - 1;

  TLSize size = 1 << msg.size;
  Token#(ratio) firstIndex = msg.address[high:low];
  Token#(ratio) length =
    hasDataA(msg.opcode) && size > fromInteger(valueOf(dataW)/8) ? size[high:low] : 1;

  Reg#(Bool) first <- mkReg(True);

  rule connect;
    doAssert((msg.address & ((1 << msg.size) - 1)) == 0, "TileLink messages must be size-aligned");
    doAssert(valueof(ratio) == 2**log2(valueof(ratio)), "TileLink bus width must be a power of 2");
    doAssert(valueof(dataW) == 2**log2(valueof(dataW)), "TileLink bus width must be a power of 2");

    Token#(ratio) index = first ? firstIndex : indexReg;
    Bool last = index+1 == firstIndex + length;

    slave.enq(ChannelA{
      address: msg.address,
      opcode: msg.opcode,
      source: msg.source,
      data: data[index],
      mask: mask[index],
      size: msg.size
    });


    first <= last;
    indexReg <= index + 1;
    if (last) master.deq;
  endrule
endmodule

module mkDecreaseWidthChannelC#(
    FifoI#(ChannelC#(`TL_ARGS)) slave,
    FifoO#(ChannelC#(addrW,TMul#(ratio,dataW),sizeW,sourceW,sinkW)) master
  ) (Empty);

  let msg = master.first;

  Vector#(ratio,Bit#(dataW)) data = unpack(msg.data);

  Reg#(Token#(ratio)) indexReg <- mkReg(0);

  Integer low = log2(valueOf(dataW)/8);
  Integer high = low + log2(valueOf(ratio)) - 1;

  TLSize size = 1 << msg.size;
  Token#(ratio) firstIndex = msg.address[high:low];
  Token#(ratio) length =
    hasDataC(msg.opcode) && size > fromInteger(valueOf(dataW)/8) ? size[high:low] : 1;

  Reg#(Bool) first <- mkReg(True);

  rule connect;
    doAssert((msg.address & ((1 << msg.size) - 1)) == 0, "TileLink messages must be size-aligned");
    doAssert(valueof(ratio) == 2**log2(valueof(ratio)), "TileLink bus width must be a power of 2");
    doAssert(valueof(dataW) == 2**log2(valueof(dataW)), "TileLink bus width must be a power of 2");

    Token#(ratio) index = first ? firstIndex : indexReg;
    Bool last = index+1 == firstIndex + length;

    slave.enq(ChannelC{
      address: msg.address,
      opcode: msg.opcode,
      source: msg.source,
      data: data[index],
      size: msg.size
    });


    first <= last;
    indexReg <= index + 1;
    if (last) master.deq;
  endrule
endmodule

module mkDecreaseWidthChannelD#(
    FifoO#(ChannelA#(`TL_ARGS)) fifo,
    FifoI#(ChannelD#(`TL_ARGS)) slave,
    FifoO#(ChannelD#(addrW,TMul#(ratio,dataW),sizeW,sourceW,sinkW)) master
  ) (FifoO#(ChannelA#(`TL_ARGS)));

  let msg = master.first;

  Vector#(ratio,Bit#(dataW)) data = unpack(msg.data);

  Reg#(Token#(ratio)) indexReg <- mkReg(0);

  RegFile#(Bit#(sourceW), Token#(ratio)) indexes <- mkRegFileFull;

  Integer low = log2(valueOf(dataW)/8);
  Integer high = low + log2(valueOf(ratio)) - 1;

  TLSize size = 1 << msg.size;
  Token#(ratio) firstIndex = indexes.sub(msg.source);
  Token#(ratio) length =
    hasDataD(msg.opcode) && size > fromInteger(valueOf(dataW)/8) ? size[high:low] : 1;

  Reg#(Bool) isFirst <- mkReg(True);

  rule connect;
    doAssert(valueof(ratio) == 2**log2(valueof(ratio)), "TileLink bus width must be a power of 2");
    doAssert(valueof(dataW) == 2**log2(valueof(dataW)), "TileLink bus width must be a power of 2");

    Token#(ratio) index = isFirst ? firstIndex : indexReg;
    Bool last = index+1 == firstIndex + length;

    slave.enq(ChannelD{
      opcode: msg.opcode,
      source: msg.source,
      data: data[index],
      size: msg.size,
      sink: msg.sink
    });


    isFirst <= last;
    indexReg <= index + 1;
    if (last) master.deq;
  endrule

  method canDeq = fifo.canDeq;
  method first = fifo.first;
  method Action deq;
    action
      fifo.deq;
      indexes.upd(fifo.first.source, fifo.first.address[high:low]);
    endaction
  endmethod
endmodule

module mkIncreaseWidth#(
    Bool bce,
    TLMaster#(`TL_ARGS) master,
    TLSlave#(addrW,TMul#(dataW,ratio),sizeW,sourceW,sinkW) slave
  )(Empty);

  if (bce) mkIncreaseWidthChannelC(slave.channelC, master.channelC);
  let chA <- mkDecreaseWidthChannelD(master.channelA, master.channelD, slave.channelD);
  mkIncreaseWidthChannelA(slave.channelA, chA);

  if (bce) rule connectB;
    let msg = slave.channelB.first;
    slave.channelB.deq;

    master.channelB.enq(ChannelB{
      address: msg.address,
      opcode: msg.opcode,
      source: msg.source,
      size: msg.size
    });
  endrule

  if (bce) rule connectE;
    let msg = master.channelE.first;
    master.channelE.deq;

    slave.channelE.enq(ChannelE{
      opcode: msg.opcode,
      sink: msg.sink
    });
  endrule
endmodule

module mkDecreaseWidth#(
    Bool bce,
    TLMaster#(addrW,TMul#(dataW,ratio),sizeW,sourceW,sinkW) master,
    TLSlave#(`TL_ARGS) slave
  )(Empty);

  if (bce) mkDecreaseWidthChannelC(slave.channelC, master.channelC);
  let chA <- mkIncreaseWidthChannelD(slave.channelA, master.channelD, slave.channelD);
  mkDecreaseWidthChannelA(chA, master.channelA);

  if (bce) rule connectB;
    let msg = slave.channelB.first;
    slave.channelB.deq;

    master.channelB.enq(ChannelB{
      address: msg.address,
      opcode: msg.opcode,
      source: msg.source,
      size: msg.size
    });
  endrule

  if (bce) rule connectE;
    let msg = master.channelE.first;
    master.channelE.deq;

    slave.channelE.enq(ChannelE{
      opcode: msg.opcode,
      sink: msg.sink
    });
  endrule
endmodule
