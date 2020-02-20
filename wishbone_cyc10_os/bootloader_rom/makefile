GCC_PREFIX = riscv32-unknown-elf-
CC = $(GCC_PREFIX)as
LD = $(GCC_PREFIX)ld
OBJCOPY = $(GCC_PREFIX)objcopy
OBJDUMP = $(GCC_PREFIX)objdump
GDB = $(GCC_PREFIX)gdb

all: cp_bootloader bootloader_rom.v bootloader_rom.om bootloader_rom.d

%.d: %.o
	$(GCC_PREFIX)objdump -d $< > $@ 
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
cp_bootloader: bootloader_rom.v
		mv bootloader_rom.v bootloader_rom
clean:
	rm -f *.o *.om *.bin *.data *.mif *.v *.asm Bin2Mem
