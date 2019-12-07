
auipc.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <auipc>:
   0:	00010537          	lui	a0,0x10
   4:	fff50513          	addi	a0,a0,-1 # ffff <.delay_ok+0xff1f>

00000008 <.delay_pr>:
   8:	fff50513          	addi	a0,a0,-1
   c:	fe051ee3          	bnez	a0,8 <.delay_pr>
  10:	00000537          	lui	a0,0x0
  14:	00050513          	mv	a0,a0
  18:	02000637          	lui	a2,0x2000

0000001c <.prname_next>:
  1c:	00050583          	lb	a1,0(a0) # 0 <auipc>
  20:	00058c63          	beqz	a1,38 <.prname_done>
  24:	00b62023          	sw	a1,0(a2) # 2000000 <.delay_ok+0x1ffff20>
  28:	00150513          	addi	a0,a0,1
  2c:	ff1ff06f          	j	1c <.prname_next>

00000030 <.test_name>:
  30:	7561                	lui	a0,0xffff8
  32:	7069                	c.lui	zero,0xffffa
  34:	00000063          	beqz	zero,34 <.test_name+0x4>

00000038 <.prname_done>:
  38:	02e00593          	li	a1,46
  3c:	00b62023          	sw	a1,0(a2)
  40:	00b62023          	sw	a1,0(a2)

00000044 <test_2>:
  44:	00000013          	nop

00000048 <.L0 >:
  48:	00000517          	auipc	a0,0x0
  4c:	00050513          	mv	a0,a0
  50:	004005ef          	jal	a1,54 <.L11>

00000054 <.L11>:
  54:	40b50533          	sub	a0,a0,a1
  58:	00002eb7          	lui	t4,0x2
  5c:	710e8e93          	addi	t4,t4,1808 # 2710 <.delay_ok+0x2630>
  60:	00200e13          	li	t3,2
  64:	03d51663          	bne	a0,t4,90 <fail>

00000068 <test_3>:
  68:	00000013          	nop

0000006c <.L0 >:
  6c:	00000517          	auipc	a0,0x0
  70:	00050513          	mv	a0,a0
  74:	004005ef          	jal	a1,78 <.L12>

00000078 <.L12>:
  78:	40b50533          	sub	a0,a0,a1
  7c:	ffffeeb7          	lui	t4,0xffffe
  80:	8f0e8e93          	addi	t4,t4,-1808 # ffffd8f0 <.delay_ok+0xffffd810>
  84:	00300e13          	li	t3,3
  88:	01d51463          	bne	a0,t4,90 <fail>
  8c:	05c01663          	bne	zero,t3,d8 <pass>

00000090 <fail>:
  90:	00100537          	lui	a0,0x100
  94:	fff50513          	addi	a0,a0,-1 # fffff <.delay_ok+0xfff1f>

00000098 <.delay_fail>:
  98:	fff50513          	addi	a0,a0,-1
  9c:	fe051ee3          	bnez	a0,98 <.delay_fail>
  a0:	02000537          	lui	a0,0x2000
  a4:	04500593          	li	a1,69
  a8:	00b52023          	sw	a1,0(a0) # 2000000 <.delay_ok+0x1ffff20>
  ac:	05200613          	li	a2,82
  b0:	00c52023          	sw	a2,0(a0)
  b4:	00c52023          	sw	a2,0(a0)
  b8:	04f00693          	li	a3,79
  bc:	00d52023          	sw	a3,0(a0)
  c0:	00c52023          	sw	a2,0(a0)
  c4:	00d00713          	li	a4,13
  c8:	00e52023          	sw	a4,0(a0)
  cc:	00a00793          	li	a5,10
  d0:	00f52023          	sw	a5,0(a0)
  d4:	f2dff06f          	j	0 <auipc>

000000d8 <pass>:
  d8:	00100537          	lui	a0,0x100
  dc:	fff50513          	addi	a0,a0,-1 # fffff <.delay_ok+0xfff1f>

000000e0 <.delay_ok>:
  e0:	fff50513          	addi	a0,a0,-1
  e4:	fe051ee3          	bnez	a0,e0 <.delay_ok>
  e8:	02000537          	lui	a0,0x2000
  ec:	04f00593          	li	a1,79
  f0:	00b52023          	sw	a1,0(a0) # 2000000 <.delay_ok+0x1ffff20>
  f4:	04b00613          	li	a2,75
  f8:	00c52023          	sw	a2,0(a0)
  fc:	00d00693          	li	a3,13
 100:	00d52023          	sw	a3,0(a0)
 104:	00a00713          	li	a4,10
 108:	00e52023          	sw	a4,0(a0)
 10c:	ef5ff06f          	j	0 <auipc>
