target := riscv32-os
mode := debug
kernel := target/$(target)/$(mode)/os
bin := target/$(target)/$(mode)/kernel.bin
usr_path := usr
qemu_path := ~/software/qemu-4.1.0/riscv32-softmmu/qemu-system-riscv32 

export SFSIMG = $(usr_path)/rcore32.img

.PHONY: all clean run build asm qemu kernel

all: build

build: $(bin)

run: build qemu

kernel:
	@cargo xbuild --target riscv32-os.json

$(bin): kernel
	@riscv32-unknown-elf-objcopy $(kernel) --strip-all -O binary $@

asm:
	@riscv32-unknown-elf-objdump -d $(kernel) | less

gdb:
	@ $(qemu_path) -nographic -machine virt \
		-kernel opensbi/virt.elf \
    	-device loader,file=$(bin),addr=0x80400000 \
		-s -S

qemu:
	@ $(qemu_path) -nographic -machine virt \
        -kernel opensbi/virt.elf \
        -device loader,file=$(bin),addr=0x80400000
