
firmware/rv32mi-p-csr:     file format elf32-littleriscv


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
   10020:	00000f17          	auipc	t5,0x0
   10024:	2f8f0f13          	addi	t5,t5,760 # 10318 <mtvec_handler>
   10028:	000f0463          	beqz	t5,10030 <trap_vector+0x2c>
   1002c:	000f0067          	jr	t5
   10030:	34202f73          	csrr	t5,mcause
   10034:	000f5463          	bgez	t5,1003c <handle_exception>
   10038:	0040006f          	j	1003c <handle_exception>

0001003c <handle_exception>:
   1003c:	5391e193          	ori	gp,gp,1337

00010040 <write_tohost>:
   10040:	00000f17          	auipc	t5,0x0
   10044:	383f2023          	sw	gp,896(t5) # 103c0 <tohost>
   10048:	ff9ff06f          	j	10040 <write_tohost>

0001004c <reset_vector>:
   1004c:	f1402573          	csrr	a0,mhartid
   10050:	00051063          	bnez	a0,10050 <reset_vector+0x4>
   10054:	00001517          	auipc	a0,0x1
   10058:	fac50513          	addi	a0,a0,-84 # 11000 <_sidata>
   1005c:	000f0597          	auipc	a1,0xf0
   10060:	fa458593          	addi	a1,a1,-92 # 100000 <_ram_start>
   10064:	000f0617          	auipc	a2,0xf0
   10068:	fac60613          	addi	a2,a2,-84 # 100010 <_edata>
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
   10094:	f8050513          	addi	a0,a0,-128 # 100010 <_edata>
   10098:	000f0597          	auipc	a1,0xf0
   1009c:	f7858593          	addi	a1,a1,-136 # 100010 <_edata>
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
   100d8:	fff28293          	addi	t0,t0,-1 # 7fffffff <_edata+0x7fefffef>
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
   1012c:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1effff0>
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
   10174:	01428293          	addi	t0,t0,20 # 10184 <end_init_bss+0xd4>
   10178:	34129073          	csrw	mepc,t0
   1017c:	f1402573          	csrr	a0,mhartid
   10180:	30200073          	mret
   10184:	3401d073          	csrwi	mscratch,3

00010188 <test_2>:
   10188:	34002573          	csrr	a0,mscratch
   1018c:	00300e93          	li	t4,3
   10190:	00200193          	li	gp,2
   10194:	13d51663          	bne	a0,t4,102c0 <fail>

00010198 <test_3>:
   10198:	3400f5f3          	csrrci	a1,mscratch,1
   1019c:	00300e93          	li	t4,3
   101a0:	00300193          	li	gp,3
   101a4:	11d59e63          	bne	a1,t4,102c0 <fail>

000101a8 <test_4>:
   101a8:	34026673          	csrrsi	a2,mscratch,4
   101ac:	00200e93          	li	t4,2
   101b0:	00400193          	li	gp,4
   101b4:	11d61663          	bne	a2,t4,102c0 <fail>

000101b8 <test_5>:
   101b8:	340156f3          	csrrwi	a3,mscratch,2
   101bc:	00600e93          	li	t4,6
   101c0:	00500193          	li	gp,5
   101c4:	0fd69e63          	bne	a3,t4,102c0 <fail>

000101c8 <test_6>:
   101c8:	0bad2537          	lui	a0,0xbad2
   101cc:	dea50513          	addi	a0,a0,-534 # bad1dea <_edata+0xb9d1dda>
   101d0:	340515f3          	csrrw	a1,mscratch,a0
   101d4:	00200e93          	li	t4,2
   101d8:	00600193          	li	gp,6
   101dc:	0fd59263          	bne	a1,t4,102c0 <fail>

000101e0 <test_7>:
   101e0:	00002537          	lui	a0,0x2
   101e4:	dea50513          	addi	a0,a0,-534 # 1dea <_start-0xe216>
   101e8:	34053573          	csrrc	a0,mscratch,a0
   101ec:	0bad2eb7          	lui	t4,0xbad2
   101f0:	deae8e93          	addi	t4,t4,-534 # bad1dea <_edata+0xb9d1dda>
   101f4:	00700193          	li	gp,7
   101f8:	0dd51463          	bne	a0,t4,102c0 <fail>

000101fc <test_8>:
   101fc:	0000c537          	lui	a0,0xc
   10200:	eef50513          	addi	a0,a0,-273 # beef <_start-0x4111>
   10204:	34052573          	csrrs	a0,mscratch,a0
   10208:	0bad0eb7          	lui	t4,0xbad0
   1020c:	00800193          	li	gp,8
   10210:	0bd51863          	bne	a0,t4,102c0 <fail>

00010214 <test_9>:
   10214:	34002573          	csrr	a0,mscratch
   10218:	0badceb7          	lui	t4,0xbadc
   1021c:	eefe8e93          	addi	t4,t4,-273 # badbeef <_edata+0xb9dbedf>
   10220:	00900193          	li	gp,9
   10224:	09d51e63          	bne	a0,t4,102c0 <fail>
   10228:	30102573          	csrr	a0,misa
   1022c:	02057513          	andi	a0,a0,32
   10230:	00050c63          	beqz	a0,10248 <test_10+0xc>
   10234:	000065b7          	lui	a1,0x6
   10238:	3005a073          	csrs	mstatus,a1

0001023c <test_10>:
   1023c:	00100e93          	li	t4,1
   10240:	00a00193          	li	gp,10
   10244:	07d01e63          	bne	zero,t4,102c0 <fail>
   10248:	30102573          	csrr	a0,misa
   1024c:	01455513          	srli	a0,a0,0x14
   10250:	00157513          	andi	a0,a0,1
   10254:	04050463          	beqz	a0,1029c <finish>
   10258:	000022b7          	lui	t0,0x2
   1025c:	80028293          	addi	t0,t0,-2048 # 1800 <_start-0xe800>
   10260:	3002b073          	csrc	mstatus,t0
   10264:	00000297          	auipc	t0,0x0
   10268:	01028293          	addi	t0,t0,16 # 10274 <test_11>
   1026c:	34129073          	csrw	mepc,t0
   10270:	30200073          	mret

00010274 <test_11>:
   10274:	0ff00513          	li	a0,255
   10278:	c0001573          	csrrw	a0,cycle,zero
   1027c:	0ff00e93          	li	t4,255
   10280:	00b00193          	li	gp,11
   10284:	03d51e63          	bne	a0,t4,102c0 <fail>

00010288 <test_12>:
   10288:	0ff00513          	li	a0,255
   1028c:	30002573          	csrr	a0,mstatus
   10290:	0ff00e93          	li	t4,255
   10294:	00c00193          	li	gp,12
   10298:	03d51463          	bne	a0,t4,102c0 <fail>

0001029c <finish>:
   1029c:	0ff0000f          	fence
   102a0:	00100193          	li	gp,1
   102a4:	02000637          	lui	a2,0x2000
   102a8:	04f00693          	li	a3,79
   102ac:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1effff0>
   102b0:	04b00693          	li	a3,75
   102b4:	00d62023          	sw	a3,0(a2)
   102b8:	00000073          	ecall
   102bc:	02301e63          	bne	zero,gp,102f8 <pass>

000102c0 <fail>:
   102c0:	0ff0000f          	fence
   102c4:	02000637          	lui	a2,0x2000
   102c8:	04600693          	li	a3,70
   102cc:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1effff0>
   102d0:	04100693          	li	a3,65
   102d4:	00d62023          	sw	a3,0(a2)
   102d8:	04900693          	li	a3,73
   102dc:	00d62023          	sw	a3,0(a2)
   102e0:	04c00693          	li	a3,76
   102e4:	00d62023          	sw	a3,0(a2)
   102e8:	00018063          	beqz	gp,102e8 <fail+0x28>
   102ec:	00119193          	slli	gp,gp,0x1
   102f0:	0011e193          	ori	gp,gp,1
   102f4:	00000073          	ecall

000102f8 <pass>:
   102f8:	0ff0000f          	fence
   102fc:	00100193          	li	gp,1
   10300:	02000637          	lui	a2,0x2000
   10304:	04f00693          	li	a3,79
   10308:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1effff0>
   1030c:	04b00693          	li	a3,75
   10310:	00d62023          	sw	a3,0(a2)
   10314:	00000073          	ecall

00010318 <mtvec_handler>:
   10318:	00900293          	li	t0,9
   1031c:	0051e663          	bltu	gp,t0,10328 <mtvec_handler+0x10>
   10320:	00b00293          	li	t0,11
   10324:	0232f863          	bgeu	t0,gp,10354 <privileged>
   10328:	342022f3          	csrr	t0,mcause
   1032c:	00800313          	li	t1,8
   10330:	f86298e3          	bne	t0,t1,102c0 <fail>
   10334:	0ff0000f          	fence
   10338:	00100193          	li	gp,1
   1033c:	02000637          	lui	a2,0x2000
   10340:	04f00693          	li	a3,79
   10344:	00d62023          	sw	a3,0(a2) # 2000000 <_edata+0x1effff0>
   10348:	04b00693          	li	a3,75
   1034c:	00d62023          	sw	a3,0(a2)
   10350:	00000073          	ecall

00010354 <privileged>:
   10354:	342022f3          	csrr	t0,mcause
   10358:	00200313          	li	t1,2
   1035c:	f66292e3          	bne	t0,t1,102c0 <fail>
   10360:	341022f3          	csrr	t0,mepc
   10364:	00428293          	addi	t0,t0,4
   10368:	34129073          	csrw	mepc,t0
   1036c:	30200073          	mret
   10370:	c0001073          	unimp
	...

Disassembly of section .text:

00010408 <_sidata-0xbf8>:
	...
