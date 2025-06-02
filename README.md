# Superscalar
A superscalar cache coherent RISCV core in bluespec using TileLink cache coherency protocol.


# TODO

- Add a store buffer/load queue, I think LSU is the bottleneck and the reason why performances
    doesn't improve when the width of the pipeline increase
- Add atomic instructions, start with load release/store conditional
- Add basic system instructions
- Test with two cores!!!
- Use a non-blocking cache and maybe a multibanked cache, require adding this feature to
    BlueTileLink
