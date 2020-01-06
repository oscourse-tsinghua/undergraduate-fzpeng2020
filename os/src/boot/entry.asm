    .section .text.entry
    .globl _start
_start:
	lui sp, %hi(bootstacktop)   # 将栈指针 sp 置为栈顶地址
	/*
	csrr t0, satp
	#lw t1, 0(t0)
 	mv a3, t0
	# a3
	call print_uint32
	
	lui     t0, %hi(boot_page_table_sv32)
    li      t1, 0xC0000000 - 0x80000000
	sub     t0, t0, t1 
	srli    t0, t0, 12
    li      t1, 1 << 31
    or      t0, t0, t1
    csrw    satp, t0
	#sfence.vma
	*/
	# update pc to 0xc0xx_xxxx
	lui t0, %hi(rust_main)
	addi t0, t0, %lo(rust_main)
	jr t0

# parameter a3	
print_uint32:
	li a1, 0xf0000000
	li a7, 1
	li t1, 8
	li t2, 1
loop:
	and a0, a1, a3
	srli a0, a0, 28
	addi a0, a0, 48
	ecall
	slli a3, a3, 4
	sub t1, t1, t2
	bnez t1, loop
	ret  

    .section .bss.stack
    .align 12  # PGSHIFT
    .global bootstack
bootstack:
    .space 4096 * 4                # 开辟一块栈空间（4个页）
    .global bootstacktop
bootstacktop:
    
	.section .data
    .align 12
boot_page_table_sv32:
    .zero 4 * 513
    # 0x80400000 -> 0x80400000 (4M)
    .word 0x201000cf # VRWXAD
	.zero 4 * 255
    # 0xC0400000 -> 0x80400000 (4M)
    .word 0x201000ef #DAG XWRV
    .zero 4 * 253
	# sbi map
	.word 0x20108401 #DA     V      
boot_page_table_sv32_top:
