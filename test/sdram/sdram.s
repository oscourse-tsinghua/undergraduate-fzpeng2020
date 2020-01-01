
#include "riscv_test.h"
#include "test_macros.h"

	li a0, 0x80200000
	li t0, 0x40000

	li s0, 4
sw_8020:
	sw t0, (0)a0
	sub t0, t0, s0
	add a0, a0, s0
	bgez t0, loop_8020

	li a0, 0x80200000
	li t1, 0x40000
lw_8020:
	lw t0, (0)a0
	bne t1, t0, fail 
	add a0, a0, s0
 	sub t1, t1, s0
	bgez t1, lw_8020
	j pass	



  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
