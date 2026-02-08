# Superscalar

A superscalar RISC-V CPU implementing rv32-im supporting Tiny Coupled memories.

# Current state

## Supported features

- RV32-I
- Superscalar exception: the number of ways must be a power of two, in practice 1 or 2 gives the
    best results; beyond that, the results are less interesting compared to the gain in surface
    area/loss of frequency. It use a xor-based multi-ported register file.
- Forwarding from the ALUs/LSU to the register read stage
- Multiplication/Division (M extension)
- Division and `clz`, `cpop`, `ctz` operations are off-pipeline, because otherwise they are in the
    critical path, and are not frequent enough to be very interesting to pipeline on the benchmarks
    I use
- Data and instruction caches (up to one operation per cycle)
- Bitmap extension (`Zba` and `Zbb`)
- System registers (CSRs)

## TODO

- Late ALU, similar to this [article](https://doi.org/10.1109/ICCD.2015.7357163), but I want to
    restrict the branch resulutions to the early ALU, to keep the overall design of the commit stage
- Implement pipelined mul/div/clz/ctz/cpop, currently multiplication is either implemented using a
    finite-state-machine, either using the DSP of the fpga.
- Exceptions and interrupts
- add an instruction cache
- atomic memory operations, opens the door to parallelism
- cache coherence using TileLink
- add an MMU/TLB
- floating points, maybe look at how to to an FMA because the one from bluespec have a very high
    latency
- `64` bits support

## Performances

Current score is around 4.1 CoreMark/MHz with 2 issues per cycle.

## Experiments

### Late ALU

My firsts tentatives of adding a late ALU did not yield conclusive results, because increasing the
pipeline length significantly increased the number of stalls. Previously, I blocked the pipeline
as soon as I encountered write-after-write hazards, so increasing its length increased these
constraints even when there were no read-after-write hazards.
Therefore, I changed the pipeline structure to avoid blocking in this case (except for WAW hazards
between two instructions in the same bundle), at the cost of an in-order write-back stage and a
more complex forwarding circuit. This allows increasing the number of stages without impacting
performance.
I now need to add the new ALU and the wakeup circuit to accept instructions whose operands are not
yet known.
I also want to restrict this second ALU to instructions without control flow, this allow to keep the
design of the pipeline relativly simple (no speculative memory/system operations).

### Move forwarding

If a bundle (set of instructions fetched at the same cycle) of instructions is of the form
`mv x1,x2; xor x3,x1,x8`, then the second instruction is not blocked because of the move, instead
the value of the move is forwarded with 0 cycle of latency.
Also it's not necessary to maintains a state and forward the moves between multiple bundles because
the move latency is one cycle.
But on CoreMark, the performance gain is VERY small (4.173 Coremark/MHz with forwarding and 4.166
without).
