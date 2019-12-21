target := riscv32-os
mode := debug
kernel := target/$(target)/$(mode)/os
bin := target/$(target)/$(mode)/kernel.bin

.PHONY: all clean run build asm qemu kernel

all: build

build: $(bin)

kernel:
	    @cargo xbuild --target riscv32-os.json

$(bin): kernel
	    @riscv32-unknown-elf-objcopy $(kernel) --strip-all -O binary $@

asm:
	    @riscv32-unknown-elf-objdump -d $(kernel) | less

