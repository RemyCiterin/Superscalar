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
- Data cache (up to one instruction per cycle)
- Bitmap extension (`Zba` and `Zbb`)
- System registers (CSRs)

## TODO

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

Current score is around 4.15 CoreMark/MHz with 2 issues per cycle.

## Experiments

### Move forwarding

If a bundle (set of instructions fetched at the same cycle) of instructions is of the form
`mv x1,x2; xor x3,x1,x8`, then the second instruction is not blocked because of the move, instead
the value of the move is forwarded with 0 cycle of latency.
Also it's not necessary to maintains a state and forward the moves between multiple bundles because
the move latency is one cycle.
But on CoreMark, the performance gain is VERY small (4.173 Coremark/MHz with forwarding and 4.166
without).
