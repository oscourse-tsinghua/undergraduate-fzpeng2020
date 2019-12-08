#GCC_PREFIX = riscv32-unknown-linux-gnu-
GCC_PREFIX = riscv32-unknown-elf-
CC = $(GCC_PREFIX)as
LD = $(GCC_PREFIX)ld
OBJCOPY = $(GCC_PREFIX)objcopy
OBJDUMP = $(GCC_PREFIX)objdump
GDB = $(GCC_PREFIX)gdb

all: config_string_rom config_string_rom.v config_string_rom.om

%.o: %.s
	$(CC) $< -o $@
%.om: %.o rom.ld
	$(LD) -T rom.ld $< -o $@
%.bin: %.om
	$(OBJCOPY) -O binary $<  $@
Bin2Mem: Bin2Mem.c
	gcc $< -o $@
%.v: %.bin Bin2Mem
	./Bin2Mem -f $< -o $@
config_string_rom: config_string_rom.v
	cp $< $@

clean:
	rm -f *.o *.om *.bin *.data *.mif *.v *.asm Bin2Mem config_string_rom
