
sdram.o:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <sdram>:
   0:	0ff00513          	li	a0,255

00000004 <.delay_pr>:
   4:	fff50513          	addi	a0,a0,-1
   8:	fe051ee3          	bnez	a0,4 <.delay_pr>
   c:	00000537          	lui	a0,0x0
  10:	00050513          	mv	a0,a0
  14:	02000637          	lui	a2,0x2000

00000018 <.prname_next>:
  18:	00050583          	lb	a1,0(a0) # 0 <sdram>
  1c:	00058c63          	beqz	a1,34 <.prname_done>
  20:	00b62023          	sw	a1,0(a2) # 2000000 <.delay_ok+0x1fffee0>
  24:	00150513          	addi	a0,a0,1
  28:	ff1ff06f          	j	18 <.prname_next>

0000002c <.test_name>:
  2c:	61726473          	csrrsi	s0,0x617,4
  30:	006d                	c.nop	27
	...

00000034 <.prname_done>:
  34:	02e00593          	li	a1,46
  38:	00b62023          	sw	a1,0(a2)
  3c:	00b62023          	sw	a1,0(a2)
  40:	02000737          	lui	a4,0x2000
  44:	00100393          	li	t2,1
  48:	00400413          	li	s0,4

0000004c <sw_8020>:
  4c:	001002b7          	lui	t0,0x100
  50:	80000537          	lui	a0,0x80000
  54:	00552023          	sw	t0,0(a0) # 80000000 <.delay_ok+0x7ffffee0>
  58:	80000537          	lui	a0,0x80000
  5c:	00100337          	lui	t1,0x100

00000060 <lw_8020>:
  60:	00052283          	lw	t0,0(a0) # 80000000 <.delay_ok+0x7ffffee0>
  64:	fe9ff06f          	j	4c <sw_8020>
  68:	0b40006f          	j	11c <pass>

0000006c <goto_fail>:
  6c:	00050693          	mv	a3,a0
  70:	00000097          	auipc	ra,0x0
  74:	000080e7          	jalr	ra # 70 <goto_fail+0x4>
  78:	00028693          	mv	a3,t0
  7c:	00000097          	auipc	ra,0x0
  80:	000080e7          	jalr	ra # 7c <goto_fail+0x10>
  84:	00030693          	mv	a3,t1
  88:	00000097          	auipc	ra,0x0
  8c:	000080e7          	jalr	ra # 88 <goto_fail+0x1c>
  90:	0480006f          	j	d8 <fail>

00000094 <print_uint32>:
  94:	f00005b7          	lui	a1,0xf0000
  98:	03a00613          	li	a2,58
  9c:	02000737          	lui	a4,0x2000
  a0:	00800e13          	li	t3,8

000000a4 <loop>:
  a4:	00d5f533          	and	a0,a1,a3
  a8:	01c55513          	srli	a0,a0,0x1c
  ac:	03050513          	addi	a0,a0,48
  b0:	00c54463          	blt	a0,a2,b8 <digit>

000000b4 <char>:
  b4:	02750513          	addi	a0,a0,39

000000b8 <digit>:
  b8:	00a72023          	sw	a0,0(a4) # 2000000 <.delay_ok+0x1fffee0>
  bc:	00469693          	slli	a3,a3,0x4
  c0:	407e0e33          	sub	t3,t3,t2
  c4:	fe0e10e3          	bnez	t3,a4 <loop>
  c8:	02000513          	li	a0,32
  cc:	00a72023          	sw	a0,0(a4)
  d0:	00008067          	ret
  d4:	05c01463          	bne	zero,t3,11c <pass>

000000d8 <fail>:
  d8:	0ff00513          	li	a0,255

000000dc <.delay_fail>:
  dc:	fff50513          	addi	a0,a0,-1
  e0:	fe051ee3          	bnez	a0,dc <.delay_fail>
  e4:	02000537          	lui	a0,0x2000
  e8:	04500593          	li	a1,69
  ec:	00b52023          	sw	a1,0(a0) # 2000000 <.delay_ok+0x1fffee0>
  f0:	05200613          	li	a2,82
  f4:	00c52023          	sw	a2,0(a0)
  f8:	00c52023          	sw	a2,0(a0)
  fc:	04f00693          	li	a3,79
 100:	00d52023          	sw	a3,0(a0)
 104:	00c52023          	sw	a2,0(a0)
 108:	00d00713          	li	a4,13
 10c:	00e52023          	sw	a4,0(a0)
 110:	00a00793          	li	a5,10
 114:	00f52023          	sw	a5,0(a0)
 118:	ee9ff06f          	j	0 <sdram>

0000011c <pass>:
 11c:	0ff00513          	li	a0,255

00000120 <.delay_ok>:
 120:	fff50513          	addi	a0,a0,-1
 124:	fe051ee3          	bnez	a0,120 <.delay_ok>
 128:	02000537          	lui	a0,0x2000
 12c:	04f00593          	li	a1,79
 130:	00b52023          	sw	a1,0(a0) # 2000000 <.delay_ok+0x1fffee0>
 134:	04b00613          	li	a2,75
 138:	00c52023          	sw	a2,0(a0)
 13c:	00d00693          	li	a3,13
 140:	00d52023          	sw	a3,0(a0)
 144:	00a00713          	li	a4,10
 148:	00e52023          	sw	a4,0(a0)
 14c:	eb5ff06f          	j	0 <sdram>
