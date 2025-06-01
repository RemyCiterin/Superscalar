use bitflags::bitflags;

use crate::{constant, palloc, pointer::*};

bitflags! {
    #[derive(Copy, Clone, PartialEq, Eq, PartialOrd, Ord)]
    pub struct Flags: usize {
        const V = 1 << 0;
        const R = 1 << 1;
        const W = 1 << 2;
        const X = 1 << 3;
        const U = 1 << 4;
        const G = 1 << 5;
        const A = 1 << 6;
        const D = 1 << 7;
    }
}

#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord)]
pub struct Perms {
    pub write: bool,
    pub read: bool,
    pub exec: bool,
    pub user: bool,
}

// Definition of a Page Table Entry
#[repr(C)]
#[derive(Copy, Clone, PartialEq, Eq, PartialOrd, Ord)]
pub struct Entry(pub usize);

impl Entry {
    pub fn new(ppn: PhyPageNum, flags: Flags) -> Self {
        Self(flags.bits() | (usize::from(ppn) << 10))
    }

    pub fn ppn(&self) -> PhyPageNum {
        PhyPageNum::from(self.0 >> 10)
    }

    pub fn flags(&self) -> Flags {
        Flags::from_bits(self.0 & ((1 << 10) - 1)).unwrap()
    }

    pub fn perms(&self) -> Perms {
        Perms {
            write: self.flags().contains(Flags::W),
            read: self.flags().contains(Flags::R),
            exec: self.flags().contains(Flags::X),
            user: self.flags().contains(Flags::U),
        }
    }

    pub fn set_ppn(&mut self, ppn: PhyPageNum) {
        *self = Self::new(ppn, self.flags())
    }

    pub fn set_perms(&mut self, perms: Perms) {
        let mut flags = self.flags();

        flags = if perms.write {
            flags | Flags::W
        } else {
            flags & !Flags::W
        };
        flags = if perms.read {
            flags | Flags::R
        } else {
            flags & !Flags::R
        };
        flags = if perms.exec {
            flags | Flags::X
        } else {
            flags & !Flags::X
        };
        flags = if perms.user {
            flags | Flags::U
        } else {
            flags & !Flags::U
        };

        *self = Self::new(self.ppn(), flags);
    }

    pub fn valid(&self) -> bool {
        self.flags().contains(Flags::V)
    }

    pub fn leaf(&self) -> bool {
        let p = self.perms();
        p.exec || p.read || p.write
    }

    pub fn clear_valid(&mut self) {
        *self = Self::new(self.ppn(), self.flags() & !Flags::V)
    }

    pub fn set_valid(&mut self) {
        *self = Self::new(self.ppn(), self.flags() | Flags::V)
    }
}

impl Default for Entry {
    fn default() -> Self {
        Entry(0)
    }
}

// allocate and inite a page table
pub fn init_ptable() -> PhyPageNum {
    let ppn = palloc::alloc().unwrap();

    let table = ppn.as_pte_mut();
    for i in 0..512 {
        table[i] = Entry::new(PhyPageNum::from(0), Flags::from_bits_retain(0));
    }

    ppn
}

/// Return the last level page table entry associated with a vitrual address
/// and allocate if necessary some new intermediate page tables
pub fn walk_and_alloc(
    level: usize,
    ptable: PhyPageNum,
    va: VirtAddr,
) -> &'static mut Entry {
    let entry: &'static mut Entry = &mut ptable.as_pte_mut()[va.vpn(level)];

    if level == 0 {
        return entry;
    }

    if entry.valid() {
        return walk_and_alloc(level - 1, entry.ppn(), va);
    }

    *entry = Entry::new(init_ptable(), Flags::V);
    return walk_and_alloc(level - 1, entry.ppn(), va);
}

/// Return the last level page table entry associated with a virtual address
/// or null if the address is not allocated
pub fn walk(
    level: usize,
    ptable: PhyPageNum,
    va: VirtAddr,
) -> Option<&'static mut Entry> {
    let entry: &'static mut Entry = &mut ptable.as_pte_mut()[va.vpn(level)];

    if level == 0 {
        return Some(entry);
    }

    if entry.valid() {
        return walk(level - 1, entry.ppn(), va);
    }

    return None;
}

pub fn map(
    table: PhyPageNum,
    first_virt: VirtAddr,
    first_phys: PhysAddr,
    size: usize,
    perms: Perms,
) {
    if first_virt.offset() != 0 || first_phys.offset() != 0 {
        panic!(
            "map: alignment error phys: {:?} virt: {:?}",
            first_virt, first_virt
        );
    }

    if size % constant::PAGE_SIZE != 0 {
        panic!(
            "map: size must be divisible by {}, found {}",
            constant::PAGE_SIZE,
            size
        );
    }

    for idx in 0..(size / constant::PAGE_SIZE) {
        let virt = first_virt + (constant::PAGE_SIZE * idx);
        let phys = first_phys + (constant::PAGE_SIZE * idx);

        let entry = walk_and_alloc(2, table, virt);

        if entry.valid() {
            panic!("remap");
        }

        entry.set_ppn(phys.ppn());
        entry.set_perms(perms);
        entry.set_valid();
    }
}

pub fn unmap(table: PhyPageNum, first_virt: VirtAddr, size: usize, free: bool) {
    if first_virt.offset() != 0 {
        panic!("unmap: alignment error: {:?}", first_virt);
    }

    if size % constant::PAGE_SIZE != 0 {
        panic!(
            "unmap: size must be divisible by {}, found {}",
            constant::PAGE_SIZE,
            size
        );
    }

    for idx in 0..(size / constant::PAGE_SIZE) {
        let virt = first_virt + (constant::PAGE_SIZE * idx);

        let entry = walk(2, table, virt).unwrap();

        if !entry.valid() {
            panic!("unmap");
        }

        if free {
            palloc::free(entry.ppn());
        }

        *entry = Default::default();
    }
}
