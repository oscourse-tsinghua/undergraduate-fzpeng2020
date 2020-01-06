pub const PHYSICAL_MEMORY_END: usize = 0x80200000;
pub const KERNEL_BEGIN_PADDR: usize = 0x80019000;
pub const KERNEL_BEGIN_VADDR: usize = 0xfc400000;
pub const MAX_PHYSICAL_MEMORY:  usize = 0x00200000;
pub const MAX_PHYSICAL_PAGES: usize = MAX_PHYSICAL_MEMORY >> 12;
pub const KERNEL_HEAP_SIZE: usize = 0x00010000;

