MAKE = make

all: build/bbl build/bbl.flashdata cp_data build/bbl.asm Bin2Mem build/bbl.data build/bbl.bin

RV32 = 1
SPIKE_FLAGS = 
CROSS_COMPILE = riscv32-unknown-elf

ifndef CROSS_COMPILE
ifeq ($(RV32),1)
	CROSS_COMPILE = riscv32-unknown-linux-gnu
	SPIKE_FLAGS += --isa=RV32IMA
else
	CROSS_COMPILE = riscv64-unknown-linux-gnu
	SPIKE_FLAGS += --isa=RV64IMA
endif
endif

CC = $(CROSS_COMPILE)-as
LD = $(CROSS_COMPILE)-ld
OBJCOPY = $(CROSS_COMPILE)-objcopy
OBJDUMP = $(CROSS_COMPILE)-objdump
GDB = $(CROSS_COMPILE)-gdb

OBJECTS = build/bbl



build/Makefile:
	cd build && rm -f ./*
	cd build && ../configure --prefix=$$RISCV --host=$(CROSS_COMPILE) --with-payload=../../os/target/riscv32-os/release/os --disable-fp-emulation

build/bbl: build/Makefile
	cd build && $(MAKE)

clean:
	rm -f ./build/*  

%.om: %
	cp $< $@
%.bin: %.om
	$(OBJCOPY) -O binary $<  $@
%.asm: %.om
	$(OBJDUMP) -D $< > $@
Bin2Mem: Bin2Mem.c
	gcc $< -o $@
%.data: %.bin Bin2Mem
	./Bin2Mem -f $< -o $@
%.flashdata: %.om 
	./Bin2Mem -f $< -o $@
cp_data: build/bbl.flashdata
	cp $< ../wishbone_cyc10_os/simulation/modelsim/flash.data
	cp $< ../wishbone_cyc10_os/flash.data
.PHONY: build/bbl
