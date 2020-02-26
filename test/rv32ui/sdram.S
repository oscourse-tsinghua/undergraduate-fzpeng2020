
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32U
RVTEST_CODE_BEGIN
	li a4, 10000
	li a6, 0
	li t2, 1
	li a0, 0x80100000	
wait:
	sub a4, a4 ,t2
	bgez a4, wait

	li a4, 0x02000000
	li t3, 100000
	li t2, 1
	li s0, 4
back:	
	li t0, 0x00100000
	li a0, 0x80100000
sw_8020:
	sw t0, 0(a0)
	#sub t0, t0, s0
	#sub a0, a0, s0
	#bgez t0, sw_8020
	#li t0, 0x00100000
	#li a0, 0x80100000
	#j sw_8020

	li a5, 0x80100000
	li t1, 0x00100000
lw_8020:
	lw t0, 0(a5)
	sub a7, t1, t0
	beqz a7, ok 
	addi a6, a6, 1
ok:	
	#sub a5, a5, s0
 	#sub t1, t1, s0
	mv a3, t0
	call print_uint32
	
	#mv a3, t1
	#call print_uint32
	
	#bgez t1, lw_8020
	#mv a3, a6
	#call print_uint32
	call back
	j pass	

goto_fail:
	mv a3, a0
	call print_uint32
	mv a3, t0
	call print_uint32
	mv a3, t1
	call print_uint32
	j fail

#input a3 change:a0,a1,a2,a3,a4,t3
print_uint32:
	li a1, 0xf0000000
	li a2, 0x3a
	li a4, 0x02000000
	li t3, 8
loop:
	and a0, a1, a3
	srli a0, a0, 28
	addi a0, a0, 0x30
	blt a0, a2, digit
char:
	addi a0, a0, 0x27
digit:
	sw a0, 0(a4)
	slli a3, a3, 4
	sub t3, t3, t2
	bnez t3, loop
	li a0, ' '
	sw a0, 0(a4)
	ret 

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
