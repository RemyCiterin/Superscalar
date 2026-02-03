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
- Data cache (up to one instruction per cycle)
- Bitmap extension (`Zba` and `Zbb`)

## TODO

- optimize register to register moves: replacing `x1` by `x2` after a `mv x1,x2` is possible, but
    some other optimisations like replacing `x1` by `x0` after `xor x1,x2,x2` is not possible
    because of weak memory ordering dependencies
- add system registers support (CSR file), with exceptions and interrupts
- add an instruction cache
- atomic memory operations, opens the door to parallelism
- cache coherence using TileLink
- add an MMU/TLB
- floating points, maybe look at how to to an FMA because the one from bluespec have a very high
    latency
- `64` bits support

## Performances

Current score is 4.15 CoreMark/MHz
