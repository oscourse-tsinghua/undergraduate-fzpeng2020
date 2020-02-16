pub const PHYSICAL_MEMORY_END: usize = 0x80440000;
pub const KERNEL_BEGIN_PADDR: usize = 0x80400000;
pub const KERNEL_BEGIN_VADDR: usize = 0xC0400000;
pub const MAX_PHYSICAL_MEMORY:  usize = 0x00040000;
pub const MAX_PHYSICAL_PAGES: usize = MAX_PHYSICAL_MEMORY >> 12;
pub const KERNEL_HEAP_SIZE: usize = 0x00010000;
pub const KERNEL_STACK_SIZE: usize = 0x00001000;
pub const PHYSICAL_MEMORY_OFFSET: usize = 0x40000000;
pub const PAGE_SIZE: usize = 4096;

