
SHELL = bash

TEST_OBJS = $(addsuffix .o,$(basename $(wildcard test/*.S)))

# FIRMWARE_OBJS = firmware/start.o firmware/irq.o firmware/print.o firmware/sieve.o firmware/multest.o firmware/stats.o
FIRMWARE_OBJS = firmware/start.o

GCC_WARNS  = -Werror -Wall -Wextra -Wshadow -Wundef -Wpointer-arith -Wcast-qual -Wcast-align -Wwrite-strings
GCC_WARNS += -Wredundant-decls -Wstrict-prototypes -Wmissing-prototypes -pedantic # -Wconversion

TOOLCHAIN_PREFIX = riscv32-unknown-elf-

all: firmware.hex firmware/firmware.d copy 

copy: firmware/firmware.hex
	cp $< ../../wishbone_cyc10/simulation/modelsim/

firmware.hex: firmware/firmware.coe
	./coe2hex

firmware/firmware.d: firmware/firmware.elf
	$(TOOLCHAIN_PREFIX)objdump -d $< > $@

firmware/firmware.coe: firmware/firmware.bin
	./bin2coe.py 32 < firmware/firmware.bin > firmware/firmware.coe

firmware/firmware.bin: firmware/firmware.elf
	$(TOOLCHAIN_PREFIX)objcopy -O binary $< $@

firmware/firmware.elf: $(FIRMWARE_OBJS) $(TEST_OBJS) firmware/sections.lds
	$(TOOLCHAIN_PREFIX)gcc -Os -g -ffreestanding -nostdlib -o $@ \
		-Wl,-Bstatic,-T,firmware/sections.lds,-Map,firmware/firmware.map,--strip-debug \
		$(FIRMWARE_OBJS) $(TEST_OBJS) -lgcc

firmware/start.o: firmware/start.S
	$(TOOLCHAIN_PREFIX)gcc -c -march=rv32im -o $@ $<


test/%.o: test/%.S test/riscv_test.h test/test_macros.h
	$(TOOLCHAIN_PREFIX)gcc -c -march=rv32im -o $@ -DTEST_FUNC_NAME=$(notdir $(basename $<)) \
		-DTEST_FUNC_TXT='"$(notdir $(basename $<))"' -DTEST_FUNC_RET=$(notdir $(basename $<))_ret $<

clean:	
	rm -vrf $(FIRMWARE_OBJS) $(TEST_OBJS) firmware/firmware.elf firmware/firmware.bin firmware/firmware.hex firmware/firmware.map firmware/firmware.d ../../wishbone_cyc10/simulation/modelsim/firmware.hex 

.PHONY:  clean
