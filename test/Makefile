
SHELL = bash

TEST_OBJS = $(addsuffix .o,$(basename $(wildcard $(TARGET)/*.S)))

FIRMWARE_OBJS = firmware/start.o

TARGET ?= rv32ui
CFLAGS ?= -DRV32UI

GCC_WARNS  = -Werror -Wall -Wextra -Wshadow -Wundef -Wpointer-arith -Wcast-qual -Wcast-align -Wwrite-strings
GCC_WARNS += -Wredundant-decls -Wstrict-prototypes -Wmissing-prototypes -pedantic # -Wconversion

TOOLCHAIN_PREFIX = riscv32-unknown-elf-

all: firmware.hex firmware/firmware.d copy 

copy: firmware/firmware.hex
	cp $< ../wishbone_cyc10/

firmware.hex: firmware/firmware.coe
	./coe2hex

firmware/firmware.d: firmware/$(TARGET)
	$(TOOLCHAIN_PREFIX)objdump -d $< > $@

firmware/firmware.coe: firmware/firmware.bin
	./bin2coe.py 32 < firmware/firmware.bin > firmware/firmware.coe

firmware/firmware.bin: firmware/$(TARGET)
	$(TOOLCHAIN_PREFIX)objcopy -O binary $< $@

ifeq ($(TARGET),$(filter $(TARGET),rv32ui rv32ua))
firmware/$(TARGET): $(FIRMWARE_OBJS) $(TEST_OBJS) firmware/sections.lds
	$(TOOLCHAIN_PREFIX)gcc -Os -g -ffreestanding -nostdlib -o $@ \
		-Wl,-Bstatic,-T,firmware/sections.lds,-Map,firmware/firmware.map,--strip-debug \
		$(FIRMWARE_OBJS) $(TEST_OBJS) -lgcc

$(TARGET)/%.o: $(TARGET)/%.S $(TARGET)/riscv_test.h $(TARGET)/test_macros.h
	$(TOOLCHAIN_PREFIX)gcc -c -march=rv32ima -o $@ -DTEST_FUNC_NAME=$(notdir $(basename $<)) \
		-DTEST_FUNC_TXT='"$(notdir $(basename $<))"' -DTEST_FUNC_RET=$(notdir $(basename $<))_ret $<
else
firmware/$(TARGET):
	cp rv32msi/$(TARGET) ./firmware
endif

ifeq ($(TARGET), rv32ua)
CFLAGS = -DRV32UA
endif

firmware/start.o: firmware/start.S
	$(TOOLCHAIN_PREFIX)gcc $(CFLAGS) -c -march=rv32ima -o $@ $<

clean:	
	rm -vrf $(FIRMWARE_OBJS) rv32ui/*.o rv32ua/*.o firmware/start.o firmware/firmware.elf firmware/firmware.bin firmware/firmware.hex firmware/firmware.map firmware/firmware.d 

.PHONY:  clean
