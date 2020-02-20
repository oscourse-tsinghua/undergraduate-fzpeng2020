
bootloader_rom.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <__start>:
   0:	20000437          	lui	s0,0x20000
   4:	00000513          	li	a0,0
   8:	0c4000ef          	jal	ra,cc <load_word>
   c:	00050313          	mv	t1,a0
  10:	464c42b7          	lui	t0,0x464c4
  14:	57f28293          	addi	t0,t0,1407 # 464c457f <load_word+0x464c44b3>
  18:	00628463          	beq	t0,t1,20 <elf_magic_accepted>
  1c:	0ac0006f          	j	c8 <bad>

00000020 <elf_magic_accepted>:
  20:	01c00513          	li	a0,28
  24:	0a8000ef          	jal	ra,cc <load_word>
  28:	00050493          	mv	s1,a0
  2c:	02c00513          	li	a0,44
  30:	09c000ef          	jal	ra,cc <load_word>
  34:	00050913          	mv	s2,a0
  38:	01091913          	slli	s2,s2,0x10
  3c:	01095913          	srli	s2,s2,0x10
  40:	01800513          	li	a0,24
  44:	088000ef          	jal	ra,cc <load_word>
  48:	00050993          	mv	s3,a0

0000004c <next_sec>:
  4c:	00848513          	addi	a0,s1,8
  50:	07c000ef          	jal	ra,cc <load_word>
  54:	00050a13          	mv	s4,a0
  58:	01048513          	addi	a0,s1,16
  5c:	070000ef          	jal	ra,cc <load_word>
  60:	00050a93          	mv	s5,a0
  64:	00448513          	addi	a0,s1,4
  68:	064000ef          	jal	ra,cc <load_word>
  6c:	00050b13          	mv	s6,a0
  70:	01448513          	addi	a0,s1,20
  74:	058000ef          	jal	ra,cc <load_word>
  78:	00050b93          	mv	s7,a0
  7c:	020b8e63          	beqz	s7,b8 <goto_next_sec>

00000080 <copy_sec>:
  80:	000b0513          	mv	a0,s6
  84:	048000ef          	jal	ra,cc <load_word>
  88:	00050293          	mv	t0,a0
  8c:	005a2023          	sw	t0,0(s4)
  90:	004b0b13          	addi	s6,s6,4
  94:	004a0a13          	addi	s4,s4,4
  98:	ffca8a93          	addi	s5,s5,-4
  9c:	ffcb8b93          	addi	s7,s7,-4
  a0:	ff5040e3          	bgtz	s5,80 <copy_sec>
  a4:	000b8a63          	beqz	s7,b8 <goto_next_sec>

000000a8 <memset_zero>:
  a8:	000a2023          	sw	zero,0(s4)
  ac:	004a0a13          	addi	s4,s4,4
  b0:	ffcb8b93          	addi	s7,s7,-4
  b4:	ff704ae3          	bgtz	s7,a8 <memset_zero>

000000b8 <goto_next_sec>:
  b8:	02048493          	addi	s1,s1,32
  bc:	fff90913          	addi	s2,s2,-1
  c0:	f92046e3          	bgtz	s2,4c <next_sec>

000000c4 <done>:
  c4:	00098067          	jr	s3

000000c8 <bad>:
  c8:	0000006f          	j	c8 <bad>

000000cc <load_word>:
  cc:	00151f93          	slli	t6,a0,0x1
  d0:	01f40fb3          	add	t6,s0,t6
  d4:	000fd503          	lhu	a0,0(t6)
  d8:	004fdf83          	lhu	t6,4(t6)
  dc:	010f9f93          	slli	t6,t6,0x10
  e0:	01f56533          	or	a0,a0,t6
  e4:	00008067          	ret
	...
