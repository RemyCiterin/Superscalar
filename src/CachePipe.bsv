import MultiRegFile :: *;
import ForwardBRAM :: *;
import BRAMCore :: *;
import RegFile :: *;
import Assert :: *;
import Vector :: *;

interface CachePipe
  #(numeric type tagW, numeric type ways, numeric type setW, type payload, type req);

  (* always_ready *) method Bool canEnter;
  method Action enter(Bit#(tagW) tag, Bit#(setW) set, Maybe#(Bit#(TLog#(ways))) way, req request);

  method Action deq
    (Bool wrTag, Bool wrPayload, Maybe#(Bit#(tagW)) newTag, payload payload);
  (* always_ready *) method Maybe#(Bit#(tagW)) tag;
  (* always_ready *) method Bit#(TLog#(ways)) way;
  (* always_ready *) method payload data;
  (* always_ready *) method Bool valid;
  (* always_ready *) method req _read;
endinterface

module mkCachePipe(CachePipe#(tagW, ways, setW, payload, req))
  provisos(
    Bits#(payload, payloadW),
    Bits#(req, reqW),
    Alias#(Bit#(TLog#(ways)), way),
    Alias#(Bit#(tagW), tag),
    Alias#(Bit#(setW), set)
  );

  ///////////////////////////////////////////////////////////////////////////////////////
  // Random remplacement policy
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(way) randomWay <- mkReg(0);

  ///////////////////////////////////////////////////////////////////////////////////////
  // Tags (and forwarding structures)
  ///////////////////////////////////////////////////////////////////////////////////////
  Vector#(ways, MultiRF#(1, 1, set, Maybe#(tag)))
    tagRams <- replicateM(mkForwardMultiRF(0, fromInteger(2 ** valueof(setW) - 1)));
  Vector#(ways, Array#(Reg#(Maybe#(tag)))) tagRegs <- replicateM(mkCReg(2, Invalid));

  ///////////////////////////////////////////////////////////////////////////////////////
  // Initialization
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(Bool) init <- mkReg(False);
  Reg#(set) initSet <- mkReg(0);

  rule init_rl if (!init);
    for (Integer i=0; i < valueof(ways); i = i + 1) begin
      tagRams[i].writePorts[0].request(initSet, Invalid);
    end

    initSet <= initSet + 1;
    if (initSet + 1 == 0) init <= True;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Data rams (contains cache lines and metadata like states, owners)
  ///////////////////////////////////////////////////////////////////////////////////////
  FORWARD_BRAM#(Bit#(TAdd#(TLog#(ways), setW)), payload)
    payloadRams <- mkForwardBRAMCore(valueof(ways) * 2**valueof(setW));

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 1 states
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(Bool) stage1_valid[2] <- mkCReg(2, False);
  Reg#(Tuple2#(tag, set)) stage1_address <- mkRegU;
  Reg#(Maybe#(way)) stage1_way <- mkRegU;
  Reg#(req) stage1_request <- mkRegU;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 2 states
  ///////////////////////////////////////////////////////////////////////////////////////
  Reg#(Bool) stage2_valid[2] <- mkCReg(2, False);
  Reg#(Tuple2#(tag, set)) stage2_address <- mkRegU;
  Reg#(Maybe#(tag)) stage2_tag <- mkRegU;
  Reg#(req) stage2_request <- mkRegU;
  Reg#(way) stage2_way <- mkRegU;

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 1
  ///////////////////////////////////////////////////////////////////////////////////////
  (* fire_when_enabled, no_implicit_conditions *)
  rule matching if (stage1_valid[0] && !stage2_valid[1] && init);
    stage1_valid[0] <= False;
    stage2_valid[1] <= True;

    Maybe#(tag) t = tagRegs[randomWay][1];
    way w = randomWay;

    for (Integer i=0; i < valueof(ways); i = i + 1) begin
      if (tagRegs[i][1] == Valid(stage1_address.fst)) begin
        w = fromInteger(i);
        t = tagRegs[i][1];
      end
    end

    if (isValid(stage1_way)) begin
      w = validValue(stage1_way);
      t = tagRegs[w][1];
    end

    payloadRams.read({w, stage1_address.snd});
    stage2_request <= stage1_request;
    stage2_address <= stage1_address;
    stage2_way <= w;
    stage2_tag <= t;
  endrule

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 2
  ///////////////////////////////////////////////////////////////////////////////////////
  method valid = stage2_valid[0] && init;
  method data = payloadRams.response;
  method _read = stage2_request;
  method tag = stage2_tag;
  method way = stage2_way;

  method Action deq(Bool wrTag, Bool wrPayload, Maybe#(tag) newTag, payload payload)
    if (stage2_valid[0] && init);
    stage2_valid[0] <= False;

    if (wrTag) tagRams[stage2_way].writePorts[0].request(stage2_address.snd, newTag);
    if (wrPayload) payloadRams.write({stage2_way, stage2_address.snd}, payload);

    // Forward tags from stage 2 to stage 1
    if (wrTag && stage2_address.snd == stage1_address.snd) begin
      tagRegs[stage2_way][0] <= newTag;
    end
  endmethod

  ///////////////////////////////////////////////////////////////////////////////////////
  // Stage 0
  ///////////////////////////////////////////////////////////////////////////////////////
  method canEnter = !stage1_valid[1] && init;

  method Action enter(tag t, set s, Maybe#(way) w, req request) if (!stage1_valid[1] && init);
    stage1_address <= tuple2(t, s);
    randomWay <= randomWay + 1;
    stage1_request <= request;
    stage1_valid[1] <= True;
    stage1_way <= w;

    for (Integer i=0; i < valueof(ways); i = i + 1) begin
      let x <- tagRams[i].readPorts[0].request(s);
      tagRegs[i][1] <= x;
    end
  endmethod
endmodule
