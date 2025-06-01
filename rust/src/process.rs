use alloc::vec::Vec;

use crate::{pointer::*, trap::Registers};

pub struct Process {
    /// Uniq identifier of the process
    pub pid: ProcessId,

    /// Pointer to the page table of the process
    pub ptable: PhyPageNum,

    pub registers: Registers,

    pub pc: usize,

    pub ipc_buffer: PhyPageNum,

    free: bool,
}

/// A ProcessId is an unique identifier at each instant: if a process is kill,
/// then a new process can use the same Id
#[derive(Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub struct ProcessId(usize);

pub struct ProcessManager {
    /// List of all the processes: free and allocated
    processes: Vec<Process>,

    /// List of all the free processes
    free: Vec<ProcessId>,
}

impl ProcessManager {
    pub fn new() -> Self {
        Self {
            processes: vec![],
            free: vec![],
        }
    }

    pub fn free(&mut self, pid: ProcessId) {
        self.processes[pid.0].free = true;
        self.free.push(pid);
    }

    pub fn new_process(&mut self, mut process: Process) -> ProcessId {
        if let Some(pid) = self.free.last() {
            process.free = false;
            process.pid = *pid;

            self.processes[pid.0] = process;
            return *pid;
        }

        let pid = ProcessId(self.processes.len());

        process.free = false;
        process.pid = pid;

        self.processes.push(process);
        pid
    }
}
