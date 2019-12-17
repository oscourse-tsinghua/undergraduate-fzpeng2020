
firmware/rv32mi-p-mcsr:     file format elf32-littleriscv


Disassembly of section .text.init:

00010000 <_start>:
   10000:	04c0006f          	j	1004c <reset_vector>

00010004 <trap_vector>:
   10004:	34202f73          	csrr	t5,mcause
   10008:	00800f93          	li	t6,8
   1000c:	03ff0a63          	beq	t5,t6,10040 <write_tohost>
   10010:	00900f93          	li	t6,9
   10014:	03ff0663          	beq	t5,t6,10040 <write_tohost>
   10018:	00b00f93          	li	t6,11
   1001c:	03ff0263          	beq	t5,t6,10040 <write_tohost>
   10020:	ffff0f17          	auipc	t5,0xffff0
   10024:	fe0f0f13          	addi	t5,t5,-32 # 0 <_start-0x10000>
   10028:	000f0463          	beqz	t5,10030 <trap_vector+0x2c>
   1002c:	000f0067          	jr	t5
   10030:	34202f73          	csrr	t5,mcause
   10034:	000f5463          	bgez	t5,1003c <handle_exception>
   10038:	0040006f          	j	1003c <handle_exception>

0001003c <handle_exception>:
   1003c:	5391e193          	ori	gp,gp,1337

00010040 <write_tohost>:
   10040:	00000f17          	auipc	t5,0x0
   10044:	243f2023          	sw	gp,576(t5) # 10280 <tohost>
   10048:	ff9ff06f          	j	10040 <write_tohost>

0001004c <reset_vector>:
   1004c:	f1402573          	csrr	a0,mhartid
   10050:	00051063          	bnez	a0,10050 <reset_vector+0x4>
   10054:	00001517          	auipc	a0,0x1
   10058:	fac50513          	addi	a0,a0,-84 # 11000 <_sidata>
   1005c:	000f0597          	auipc	a1,0xf0
   10060:	fa458593          	addi	a1,a1,-92 # 100000 <_edata>
   10064:	000f0617          	auipc	a2,0xf0
   10068:	f9c60613          	addi	a2,a2,-100 # 100000 <_edata>
   1006c:	00c5dc63          	bge	a1,a2,10084 <end_init_data>

00010070 <loop_init_data>:
   10070:	00052683          	lw	a3,0(a0)
   10074:	00d5a023          	sw	a3,0(a1)
   10078:	00450513          	addi	a0,a0,4
   1007c:	00458593          	addi	a1,a1,4
   10080:	fec5c8e3          	blt	a1,a2,10070 <loop_init_data>

00010084 <end_init_data>:
   10084:	00000513          	li	a0,0
   10088:	00000593          	li	a1,0
   1008c:	00000613          	li	a2,0
   10090:	000f0517          	auipc	a0,0xf0
   10094:	f7050513          	addi	a0,a0,-144 # 100000 <_edata>
   10098:	000f0597          	auipc	a1,0xf0
   1009c:	f6858593          	addi	a1,a1,-152 # 100000 <_edata>
   100a0:	00b55863          	bge	a0,a1,100b0 <end_init_bss>

000100a4 <loop_init_bss>:
   100a4:	00052023          	sw	zero,0(a0)
   100a8:	00450513          	addi	a0,a0,4
   100ac:	feb54ce3          	blt	a0,a1,100a4 <loop_init_bss>

000100b0 <end_init_bss>:
   100b0:	00000513          	li	a0,0
   100b4:	00000593          	li	a1,0
   100b8:	00000297          	auipc	t0,0x0
   100bc:	01028293          	addi	t0,t0,16 # 100c8 <end_init_bss+0x18>
   100c0:	30529073          	csrw	mtvec,t0
   100c4:	18005073          	csrwi	satp,0
   100c8:	00000297          	auipc	t0,0x0
   100cc:	02028293          	addi	t0,t0,32 # 100e8 <end_init_bss+0x38>
   100d0:	30529073          	csrw	mtvec,t0
   100d4:	800002b7          	lui	t0,0x80000
   100d8:	fff28293          	addi	t0,t0,-1 # 7fffffff <_edata+0x7fefffff>
   100dc:	3b029073          	csrw	pmpaddr0,t0
   100e0:	01f00293          	li	t0,31
   100e4:	3a029073          	csrw	pmpcfg0,t0
   100e8:	00000297          	auipc	t0,0x0
   100ec:	01828293          	addi	t0,t0,24 # 10100 <end_init_bss+0x50>
   100f0:	30529073          	csrw	mtvec,t0
   100f4:	30205073          	csrwi	medeleg,0
   100f8:	30305073          	csrwi	mideleg,0
   100fc:	30405073          	csrwi	mie,0
   10100:	00000193          	li	gp,0
   10104:	00000297          	auipc	t0,0x0
   10108:	f0028293          	addi	t0,t0,-256 # 10004 <trap_vector>
   1010c:	30529073          	csrw	mtvec,t0
   10110:	00100513          	li	a0,1
   10114:	01f51513          	slli	a0,a0,0x1f
   10118:	02054263          	bltz	a0,1013c <end_init_bss+0x8c>
   1011c:	0ff0000f          	fence
   10120:	00100193          	li	gp,1
   10124:	02000637          	lui	a2,0x2000
   10128:	04f00693          	li	a3,79
   1012c:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1f00000>
   10130:	04b00693          	li	a3,75
   10134:	00d62023          	sw	a3,0(a2)
   10138:	00000073          	ecall
   1013c:	ffff0297          	auipc	t0,0xffff0
   10140:	ec428293          	addi	t0,t0,-316 # 0 <_start-0x10000>
   10144:	00028e63          	beqz	t0,10160 <end_init_bss+0xb0>
   10148:	10529073          	csrw	stvec,t0
   1014c:	0000b2b7          	lui	t0,0xb
   10150:	10928293          	addi	t0,t0,265 # b109 <_start-0x4ef7>
   10154:	30229073          	csrw	medeleg,t0
   10158:	30202373          	csrr	t1,medeleg
   1015c:	ee6290e3          	bne	t0,t1,1003c <handle_exception>
   10160:	30005073          	csrwi	mstatus,0
   10164:	00002537          	lui	a0,0x2
   10168:	80050513          	addi	a0,a0,-2048 # 1800 <_start-0xe800>
   1016c:	30052073          	csrs	mstatus,a0
   10170:	00000297          	auipc	t0,0x0
   10174:	01428293          	addi	t0,t0,20 # 10184 <test_2>
   10178:	34129073          	csrw	mepc,t0
   1017c:	f1402573          	csrr	a0,mhartid
   10180:	30200073          	mret

00010184 <test_2>:
   10184:	30102573          	csrr	a0,misa
   10188:	01e55513          	srli	a0,a0,0x1e
   1018c:	00100e93          	li	t4,1
   10190:	00200193          	li	gp,2
   10194:	03d51863          	bne	a0,t4,101c4 <fail>

00010198 <test_3>:
   10198:	f1402573          	csrr	a0,mhartid
   1019c:	00000e93          	li	t4,0
   101a0:	00300193          	li	gp,3
   101a4:	03d51063          	bne	a0,t4,101c4 <fail>
   101a8:	f1302573          	csrr	a0,mimpid
   101ac:	f1202573          	csrr	a0,marchid
   101b0:	f1102573          	csrr	a0,mvendorid
   101b4:	00000293          	li	t0,0
   101b8:	3052a073          	csrs	mtvec,t0
   101bc:	3412a073          	csrs	mepc,t0
   101c0:	02301e63          	bne	zero,gp,101fc <pass>

000101c4 <fail>:
   101c4:	0ff0000f          	fence
   101c8:	02000637          	lui	a2,0x2000
   101cc:	04600693          	li	a3,70
   101d0:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1f00000>
   101d4:	04100693          	li	a3,65
   101d8:	00d62023          	sw	a3,0(a2)
   101dc:	04900693          	li	a3,73
   101e0:	00d62023          	sw	a3,0(a2)
   101e4:	04c00693          	li	a3,76
   101e8:	00d62023          	sw	a3,0(a2)
   101ec:	00018063          	beqz	gp,101ec <fail+0x28>
   101f0:	00119193          	slli	gp,gp,0x1
   101f4:	0011e193          	ori	gp,gp,1
   101f8:	00000073          	ecall

000101fc <pass>:
   101fc:	0ff0000f          	fence
   10200:	00100193          	li	gp,1
   10204:	02000637          	lui	a2,0x2000
   10208:	04f00693          	li	a3,79
   1020c:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1f00000>
   10210:	04b00693          	li	a3,75
   10214:	00d62023          	sw	a3,0(a2)
   10218:	00000073          	ecall
   1021c:	c0001073          	unimp
	...

Disassembly of section .text:

000102c8 <_sidata-0xd38>:
	...
