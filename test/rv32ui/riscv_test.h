#ifndef _ENV_PICORV32_TEST_H
#define _ENV_PICORV32_TEST_H

#ifndef TEST_FUNC_NAME
#  define TEST_FUNC_NAME mytest
#  define TEST_FUNC_TXT "mytest"
#  define TEST_FUNC_RET mytest_ret
#endif

#define RVTEST_RV32U
#define TESTNUM x28

#define RVTEST_CODE_BEGIN		\
	.text;				\
	.global TEST_FUNC_NAME;		\
	.global TEST_FUNC_RET;		\
TEST_FUNC_NAME:				\
	li	a0, 0x7fff;		\
	li  a3, 10;			\
	li  a4, 1;			\
.delay_pr:				\
	addi	a0,a0,-1;		\
	bne	a0,zero,.delay_pr;	\
	lui	a0,%hi(.test_name);	\
	addi	a0,a0,%lo(.test_name);	\
	lui	a2,0x02000000>>12;	\
.prname_next:				\
	lb	a1,0(a0);		\
	beq	a1,zero,.prname_done;	\
	sw	a1,0(a2);		\
	addi	a0,a0,1;		\
	sub     a3,a3,a4;		\
	jal	zero,.prname_next;	\
.test_name:				\
	.ascii TEST_FUNC_TXT;		\
	.byte 0x00;			\
	.balign 4, 0;			\
.prname_done:				\
	addi	a1,zero,'.';		\
.loop:						\
	sw	a1,0(a2);		\
	sub a3,a3,a4;		\
	beq a3,zero,.endloop;	\
	call .loop;			\
.endloop:

#define RVTEST_PASS			\
	li	a0, 0xff;		\
.delay_ok:				\
	addi	a0,a0,-1;		\
	bne	a0,zero,.delay_ok;	\
	lui	a0,0x02000000>>12;	\
	addi	a1,zero,'O';		\
	sw	a1,0(a0);		\
	addi	a2,zero,'K';		\
	sw	a2,0(a0);		\
	addi	a4,zero,' ';		\
	sw	a4,0(a0);		\
	jal	zero,TEST_FUNC_RET;

#define RVTEST_FAIL			\
	li	a0, 0xff;		\
.delay_fail:				\
	addi	a0,a0,-1;		\
	bne	a0,zero,.delay_fail;	\
	lui	a0,0x02000000>>12;	\
	addi	a1,zero,'E';		\
	sw	a1,0(a0);		\
	addi	a2,zero,'R';		\
	sw	a2,0(a0);		\
	sw	a2,0(a0);		\
	addi	a3,zero,'O';		\
	sw	a3,0(a0);		\
	sw	a2,0(a0);		\
	addi	a4,zero,' ';		\
	sw	a4,0(a0);		\
	jal	zero,TEST_FUNC_RET;	

	//ebreak;

#define RVTEST_CODE_END
#define RVTEST_DATA_BEGIN .balign 4;
#define RVTEST_DATA_END

#endif
