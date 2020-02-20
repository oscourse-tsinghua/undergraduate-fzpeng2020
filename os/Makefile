target := riscv32-os
mode ?= debug
kernel := target/$(target)/$(mode)/os
bin := target/$(target)/$(mode)/kernel.bin
usr_path := usr/build/rust
export USER_IMG = $(usr_path)/hello_world
qemu_path := ~/software/qemu-4.1.0/riscv32-softmmu/qemu-system-riscv32 

#export SFSIMG = $(usr_path)/rcore32.img

.PHONY: all clean run build asm qemu kernel

all: build

build: $(bin) usr

usr:
	cd ./usr/build/
	cargo build --target riscv32-os.json
	cd ..

run: build qemu

ifeq ($(mode),debug)

kernel:
	@cargo xbuild --target riscv32-os.json
else
kernel:
	@cargo xbuild --release --target riscv32-os.json
endif

$(bin): kernel
	@riscv32-unknown-elf-objcopy $(kernel) --strip-all -O binary $@

asm:
	@riscv32-unknown-elf-objdump -D $(kernel)  > os.asm

gdb:
	@ $(qemu_path) -nographic -machine virt \
		-kernel opensbi/virt.elf \
    	-device loader,file=$(bin),addr=0x80400000 \
		-s -S

qemu:
	@ $(qemu_path) -nographic -machine virt \
        -kernel opensbi/virt.elf \
        -device loader,file=$(bin),addr=0x80400000
clean:
	rm -r $(kernel)
