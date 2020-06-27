
firmware/rv32ui:     file format elf32-littleriscv


Disassembly of section .text:

00010000 <_start>:
   10000:	00000093          	li	ra,0
   10004:	00000113          	li	sp,0
   10008:	00000193          	li	gp,0
   1000c:	00000213          	li	tp,0
   10010:	00000293          	li	t0,0
   10014:	00000313          	li	t1,0
   10018:	00000393          	li	t2,0
   1001c:	00000413          	li	s0,0
   10020:	00000493          	li	s1,0
   10024:	00000513          	li	a0,0
   10028:	00000593          	li	a1,0
   1002c:	00000613          	li	a2,0
   10030:	00000693          	li	a3,0
   10034:	00000713          	li	a4,0
   10038:	00000793          	li	a5,0
   1003c:	00000813          	li	a6,0
   10040:	00000893          	li	a7,0
   10044:	00000913          	li	s2,0
   10048:	00000993          	li	s3,0
   1004c:	00000a13          	li	s4,0
   10050:	00000a93          	li	s5,0
   10054:	00000b13          	li	s6,0
   10058:	00000b93          	li	s7,0
   1005c:	00000c13          	li	s8,0
   10060:	00000c93          	li	s9,0
   10064:	00000d13          	li	s10,0
   10068:	00000d93          	li	s11,0
   1006c:	00000e13          	li	t3,0
   10070:	00000e93          	li	t4,0
   10074:	00000f13          	li	t5,0
   10078:	00000f93          	li	t6,0
   1007c:	0000a517          	auipc	a0,0xa
   10080:	6ec50513          	addi	a0,a0,1772 # 1a768 <_etext>
   10084:	7fff0597          	auipc	a1,0x7fff0
   10088:	f7c58593          	addi	a1,a1,-132 # 80000000 <_ram_start>
   1008c:	7fff0617          	auipc	a2,0x7fff0
   10090:	fe460613          	addi	a2,a2,-28 # 80000070 <_edata>
   10094:	00c5dc63          	bge	a1,a2,100ac <end_init_data>

00010098 <loop_init_data>:
   10098:	00052683          	lw	a3,0(a0)
   1009c:	00d5a023          	sw	a3,0(a1)
   100a0:	00450513          	addi	a0,a0,4
   100a4:	00458593          	addi	a1,a1,4
   100a8:	fec5c8e3          	blt	a1,a2,10098 <loop_init_data>

000100ac <end_init_data>:
   100ac:	7fff0517          	auipc	a0,0x7fff0
   100b0:	fc450513          	addi	a0,a0,-60 # 80000070 <_edata>
   100b4:	7fff0597          	auipc	a1,0x7fff0
   100b8:	fbc58593          	addi	a1,a1,-68 # 80000070 <_edata>
   100bc:	00b55863          	bge	a0,a1,100cc <end_init_bss>

000100c0 <loop_init_bss>:
   100c0:	00052023          	sw	zero,0(a0)
   100c4:	00450513          	addi	a0,a0,4
   100c8:	feb54ce3          	blt	a0,a1,100c0 <loop_init_bss>

000100cc <end_init_bss>:
   100cc:	2a1060ef          	jal	ra,16b6c <lui>

000100d0 <lui_ret>:
   100d0:	378040ef          	jal	ra,14448 <auipc>

000100d4 <auipc_ret>:
   100d4:	46c090ef          	jal	ra,19540 <j>

000100d8 <j_ret>:
   100d8:	339080ef          	jal	ra,18c10 <jal>

000100dc <jal_ret>:
   100dc:	7b8040ef          	jal	ra,14894 <jalr>

000100e0 <jalr_ret>:
   100e0:	110000ef          	jal	ra,101f0 <print>
   100e4:	605020ef          	jal	ra,12ee8 <beq>

000100e8 <beq_ret>:
   100e8:	16d040ef          	jal	ra,14a54 <bne>

000100ec <bne_ret>:
   100ec:	7f0090ef          	jal	ra,198dc <blt>

000100f0 <blt_ret>:
   100f0:	2e1010ef          	jal	ra,11bd0 <bge>

000100f4 <bge_ret>:
   100f4:	044070ef          	jal	ra,17138 <bltu>

000100f8 <bltu_ret>:
   100f8:	0f8000ef          	jal	ra,101f0 <print>
   100fc:	4d9040ef          	jal	ra,14dd4 <bgeu>

00010100 <bgeu_ret>:
   10100:	230060ef          	jal	ra,16330 <lb>

00010104 <lb_ret>:
   10104:	7a4010ef          	jal	ra,118a8 <lh>

00010108 <lh_ret>:
   10108:	661030ef          	jal	ra,13f68 <lw>

0001010c <lw_ret>:
   1010c:	71d050ef          	jal	ra,16028 <lbu>

00010110 <lbu_ret>:
   10110:	0e0000ef          	jal	ra,101f0 <print>
   10114:	148080ef          	jal	ra,1825c <lhu>

00010118 <lhu_ret>:
   10118:	371060ef          	jal	ra,16c88 <sb>

0001011c <sb_ret>:
   1011c:	51c060ef          	jal	ra,16638 <sh>

00010120 <sh_ret>:
   10120:	089020ef          	jal	ra,129a8 <sw>

00010124 <sw_ret>:
   10124:	428040ef          	jal	ra,1454c <addi>

00010128 <addi_ret>:
   10128:	0c8000ef          	jal	ra,101f0 <print>
   1012c:	644050ef          	jal	ra,15770 <slti>

00010130 <slti_ret>:
   10130:	508090ef          	jal	ra,19638 <xori>

00010134 <xori_ret>:
   10134:	691070ef          	jal	ra,17fc4 <ori>

00010138 <ori_ret>:
   10138:	188090ef          	jal	ra,192c0 <andi>

0001013c <andi_ret>:
   1013c:	5d0070ef          	jal	ra,1770c <slli>

00010140 <slli_ret>:
   10140:	0b0000ef          	jal	ra,101f0 <print>
   10144:	119030ef          	jal	ra,13a5c <srli>

00010148 <srli_ret>:
   10148:	665010ef          	jal	ra,11fac <srai>

0001014c <srai_ret>:
   1014c:	3d9080ef          	jal	ra,18d24 <add>

00010150 <add_ret>:
   10150:	3b5000ef          	jal	ra,10d04 <sub>

00010154 <sub_ret>:
   10154:	12c010ef          	jal	ra,11280 <sll>

00010158 <sll_ret>:
   10158:	098000ef          	jal	ra,101f0 <print>
   1015c:	149050ef          	jal	ra,15aa4 <slt>

00010160 <slt_ret>:
   10160:	628000ef          	jal	ra,10788 <xor>

00010164 <xor_ret>:
   10164:	434080ef          	jal	ra,18598 <srl>

00010168 <srl_ret>:
   10168:	29c030ef          	jal	ra,13404 <sra>

0001016c <sra_ret>:
   1016c:	09c000ef          	jal	ra,10208 <or>

00010170 <or_ret>:
   10170:	080000ef          	jal	ra,101f0 <print>
   10174:	0dd070ef          	jal	ra,17a50 <and>

00010178 <and_ret>:
   10178:	2e1090ef          	jal	ra,19c58 <mulh>

0001017c <mulh_ret>:
   1017c:	0640a0ef          	jal	ra,1a1e0 <mulhsu>

00010180 <mulhsu_ret>:
   10180:	068050ef          	jal	ra,151e8 <mulhu>

00010184 <mulhu_ret>:
   10184:	2a0020ef          	jal	ra,12424 <mul>

00010188 <mul_ret>:
   10188:	068000ef          	jal	ra,101f0 <print>
   1018c:	124040ef          	jal	ra,142b0 <div>

00010190 <div_ret>:
   10190:	0d4030ef          	jal	ra,13264 <divu>

00010194 <divu_ret>:
   10194:	43d030ef          	jal	ra,13dd0 <rem>

00010198 <rem_ret>:
   10198:	354070ef          	jal	ra,174ec <remu>

0001019c <remu_ret>:
   1019c:	4ec070ef          	jal	ra,17688 <simple>

000101a0 <simple_ret>:
   101a0:	050000ef          	jal	ra,101f0 <print>
   101a4:	180020ef          	jal	ra,12324 <sdram>

000101a8 <sdram_ret>:
   101a8:	00010137          	lui	sp,0x10
   101ac:	deadc1b7          	lui	gp,0xdeadc
   101b0:	eef18193          	addi	gp,gp,-273 # deadbeef <_edata+0x5eadbe7f>
   101b4:	00018213          	mv	tp,gp

000101b8 <done>:
   101b8:	02000537          	lui	a0,0x2000
   101bc:	04400593          	li	a1,68
   101c0:	04f00613          	li	a2,79
   101c4:	04e00693          	li	a3,78
   101c8:	04500713          	li	a4,69
   101cc:	00d00793          	li	a5,13
   101d0:	00a00813          	li	a6,10
   101d4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   101d8:	00c52023          	sw	a2,0(a0)
   101dc:	00d52023          	sw	a3,0(a0)
   101e0:	00e52023          	sw	a4,0(a0)
   101e4:	00f52023          	sw	a5,0(a0)
   101e8:	01052023          	sw	a6,0(a0)

000101ec <loop>:
   101ec:	0000006f          	j	101ec <loop>

000101f0 <print>:
   101f0:	02000537          	lui	a0,0x2000
   101f4:	00d00593          	li	a1,13
   101f8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   101fc:	00a00593          	li	a1,10
   10200:	00b52023          	sw	a1,0(a0)
   10204:	00008067          	ret

00010208 <or>:
   10208:	00008537          	lui	a0,0x8
   1020c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   10210:	00a00693          	li	a3,10
   10214:	00100713          	li	a4,1

00010218 <.delay_pr>:
   10218:	fff50513          	addi	a0,a0,-1
   1021c:	fe051ee3          	bnez	a0,10218 <.delay_pr>
   10220:	00010537          	lui	a0,0x10
   10224:	24450513          	addi	a0,a0,580 # 10244 <.test_name>
   10228:	02000637          	lui	a2,0x2000

0001022c <.prname_next>:
   1022c:	00050583          	lb	a1,0(a0)
   10230:	00058c63          	beqz	a1,10248 <.prname_done>
   10234:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   10238:	00150513          	addi	a0,a0,1
   1023c:	40e686b3          	sub	a3,a3,a4
   10240:	fedff06f          	j	1022c <.prname_next>

00010244 <.test_name>:
   10244:	0000726f          	jal	tp,17244 <test_8>

00010248 <.prname_done>:
   10248:	02e00593          	li	a1,46

0001024c <.loop>:
   1024c:	00b62023          	sw	a1,0(a2)
   10250:	40e686b3          	sub	a3,a3,a4
   10254:	00068463          	beqz	a3,1025c <test_2>
   10258:	ff5ff0ef          	jal	ra,1024c <.loop>

0001025c <test_2>:
   1025c:	ff0100b7          	lui	ra,0xff010
   10260:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10264:	0f0f1137          	lui	sp,0xf0f1
   10268:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   1026c:	0020e1b3          	or	gp,ra,sp
   10270:	ff100eb7          	lui	t4,0xff100
   10274:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10278:	00200e13          	li	t3,2
   1027c:	4bd19263          	bne	gp,t4,10720 <fail>

00010280 <test_3>:
   10280:	0ff010b7          	lui	ra,0xff01
   10284:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10288:	f0f0f137          	lui	sp,0xf0f0f
   1028c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10290:	0020e1b3          	or	gp,ra,sp
   10294:	fff10eb7          	lui	t4,0xfff10
   10298:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   1029c:	00300e13          	li	t3,3
   102a0:	49d19063          	bne	gp,t4,10720 <fail>

000102a4 <test_4>:
   102a4:	00ff00b7          	lui	ra,0xff0
   102a8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   102ac:	0f0f1137          	lui	sp,0xf0f1
   102b0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   102b4:	0020e1b3          	or	gp,ra,sp
   102b8:	0fff1eb7          	lui	t4,0xfff1
   102bc:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6897>
   102c0:	00400e13          	li	t3,4
   102c4:	45d19e63          	bne	gp,t4,10720 <fail>

000102c8 <test_5>:
   102c8:	f00ff0b7          	lui	ra,0xf00ff
   102cc:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   102d0:	f0f0f137          	lui	sp,0xf0f0f
   102d4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   102d8:	0020e1b3          	or	gp,ra,sp
   102dc:	f0fffeb7          	lui	t4,0xf0fff
   102e0:	0ffe8e93          	addi	t4,t4,255 # f0fff0ff <_edata+0x70fff08f>
   102e4:	00500e13          	li	t3,5
   102e8:	43d19c63          	bne	gp,t4,10720 <fail>

000102ec <test_6>:
   102ec:	ff0100b7          	lui	ra,0xff010
   102f0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   102f4:	0f0f1137          	lui	sp,0xf0f1
   102f8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   102fc:	0020e0b3          	or	ra,ra,sp
   10300:	ff100eb7          	lui	t4,0xff100
   10304:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10308:	00600e13          	li	t3,6
   1030c:	41d09a63          	bne	ra,t4,10720 <fail>

00010310 <test_7>:
   10310:	ff0100b7          	lui	ra,0xff010
   10314:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10318:	0f0f1137          	lui	sp,0xf0f1
   1031c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10320:	0020e133          	or	sp,ra,sp
   10324:	ff100eb7          	lui	t4,0xff100
   10328:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   1032c:	00700e13          	li	t3,7
   10330:	3fd11863          	bne	sp,t4,10720 <fail>

00010334 <test_8>:
   10334:	ff0100b7          	lui	ra,0xff010
   10338:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1033c:	0010e0b3          	or	ra,ra,ra
   10340:	ff010eb7          	lui	t4,0xff010
   10344:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10348:	00800e13          	li	t3,8
   1034c:	3dd09a63          	bne	ra,t4,10720 <fail>

00010350 <test_9>:
   10350:	00000213          	li	tp,0
   10354:	ff0100b7          	lui	ra,0xff010
   10358:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1035c:	0f0f1137          	lui	sp,0xf0f1
   10360:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10364:	0020e1b3          	or	gp,ra,sp
   10368:	00018313          	mv	t1,gp
   1036c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10370:	00200293          	li	t0,2
   10374:	fe5210e3          	bne	tp,t0,10354 <test_9+0x4>
   10378:	ff100eb7          	lui	t4,0xff100
   1037c:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10380:	00900e13          	li	t3,9
   10384:	39d31e63          	bne	t1,t4,10720 <fail>

00010388 <test_10>:
   10388:	00000213          	li	tp,0
   1038c:	0ff010b7          	lui	ra,0xff01
   10390:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10394:	f0f0f137          	lui	sp,0xf0f0f
   10398:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   1039c:	0020e1b3          	or	gp,ra,sp
   103a0:	00000013          	nop
   103a4:	00018313          	mv	t1,gp
   103a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   103ac:	00200293          	li	t0,2
   103b0:	fc521ee3          	bne	tp,t0,1038c <test_10+0x4>
   103b4:	fff10eb7          	lui	t4,0xfff10
   103b8:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   103bc:	00a00e13          	li	t3,10
   103c0:	37d31063          	bne	t1,t4,10720 <fail>

000103c4 <test_11>:
   103c4:	00000213          	li	tp,0
   103c8:	00ff00b7          	lui	ra,0xff0
   103cc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   103d0:	0f0f1137          	lui	sp,0xf0f1
   103d4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   103d8:	0020e1b3          	or	gp,ra,sp
   103dc:	00000013          	nop
   103e0:	00000013          	nop
   103e4:	00018313          	mv	t1,gp
   103e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   103ec:	00200293          	li	t0,2
   103f0:	fc521ce3          	bne	tp,t0,103c8 <test_11+0x4>
   103f4:	0fff1eb7          	lui	t4,0xfff1
   103f8:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6897>
   103fc:	00b00e13          	li	t3,11
   10400:	33d31063          	bne	t1,t4,10720 <fail>

00010404 <test_12>:
   10404:	00000213          	li	tp,0
   10408:	ff0100b7          	lui	ra,0xff010
   1040c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10410:	0f0f1137          	lui	sp,0xf0f1
   10414:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10418:	0020e1b3          	or	gp,ra,sp
   1041c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10420:	00200293          	li	t0,2
   10424:	fe5212e3          	bne	tp,t0,10408 <test_12+0x4>
   10428:	ff100eb7          	lui	t4,0xff100
   1042c:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10430:	00c00e13          	li	t3,12
   10434:	2fd19663          	bne	gp,t4,10720 <fail>

00010438 <test_13>:
   10438:	00000213          	li	tp,0
   1043c:	0ff010b7          	lui	ra,0xff01
   10440:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10444:	f0f0f137          	lui	sp,0xf0f0f
   10448:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   1044c:	00000013          	nop
   10450:	0020e1b3          	or	gp,ra,sp
   10454:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10458:	00200293          	li	t0,2
   1045c:	fe5210e3          	bne	tp,t0,1043c <test_13+0x4>
   10460:	fff10eb7          	lui	t4,0xfff10
   10464:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10468:	00d00e13          	li	t3,13
   1046c:	2bd19a63          	bne	gp,t4,10720 <fail>

00010470 <test_14>:
   10470:	00000213          	li	tp,0
   10474:	00ff00b7          	lui	ra,0xff0
   10478:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   1047c:	0f0f1137          	lui	sp,0xf0f1
   10480:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10484:	00000013          	nop
   10488:	00000013          	nop
   1048c:	0020e1b3          	or	gp,ra,sp
   10490:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10494:	00200293          	li	t0,2
   10498:	fc521ee3          	bne	tp,t0,10474 <test_14+0x4>
   1049c:	0fff1eb7          	lui	t4,0xfff1
   104a0:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6897>
   104a4:	00e00e13          	li	t3,14
   104a8:	27d19c63          	bne	gp,t4,10720 <fail>

000104ac <test_15>:
   104ac:	00000213          	li	tp,0
   104b0:	ff0100b7          	lui	ra,0xff010
   104b4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   104b8:	00000013          	nop
   104bc:	0f0f1137          	lui	sp,0xf0f1
   104c0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   104c4:	0020e1b3          	or	gp,ra,sp
   104c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   104cc:	00200293          	li	t0,2
   104d0:	fe5210e3          	bne	tp,t0,104b0 <test_15+0x4>
   104d4:	ff100eb7          	lui	t4,0xff100
   104d8:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   104dc:	00f00e13          	li	t3,15
   104e0:	25d19063          	bne	gp,t4,10720 <fail>

000104e4 <test_16>:
   104e4:	00000213          	li	tp,0
   104e8:	0ff010b7          	lui	ra,0xff01
   104ec:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   104f0:	00000013          	nop
   104f4:	f0f0f137          	lui	sp,0xf0f0f
   104f8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   104fc:	00000013          	nop
   10500:	0020e1b3          	or	gp,ra,sp
   10504:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10508:	00200293          	li	t0,2
   1050c:	fc521ee3          	bne	tp,t0,104e8 <test_16+0x4>
   10510:	fff10eb7          	lui	t4,0xfff10
   10514:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10518:	01000e13          	li	t3,16
   1051c:	21d19263          	bne	gp,t4,10720 <fail>

00010520 <test_17>:
   10520:	00000213          	li	tp,0
   10524:	00ff00b7          	lui	ra,0xff0
   10528:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   1052c:	00000013          	nop
   10530:	00000013          	nop
   10534:	0f0f1137          	lui	sp,0xf0f1
   10538:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   1053c:	0020e1b3          	or	gp,ra,sp
   10540:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10544:	00200293          	li	t0,2
   10548:	fc521ee3          	bne	tp,t0,10524 <test_17+0x4>
   1054c:	0fff1eb7          	lui	t4,0xfff1
   10550:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6897>
   10554:	01100e13          	li	t3,17
   10558:	1dd19463          	bne	gp,t4,10720 <fail>

0001055c <test_18>:
   1055c:	00000213          	li	tp,0
   10560:	0f0f1137          	lui	sp,0xf0f1
   10564:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10568:	ff0100b7          	lui	ra,0xff010
   1056c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10570:	0020e1b3          	or	gp,ra,sp
   10574:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10578:	00200293          	li	t0,2
   1057c:	fe5212e3          	bne	tp,t0,10560 <test_18+0x4>
   10580:	ff100eb7          	lui	t4,0xff100
   10584:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10588:	01200e13          	li	t3,18
   1058c:	19d19a63          	bne	gp,t4,10720 <fail>

00010590 <test_19>:
   10590:	00000213          	li	tp,0
   10594:	f0f0f137          	lui	sp,0xf0f0f
   10598:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   1059c:	0ff010b7          	lui	ra,0xff01
   105a0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   105a4:	00000013          	nop
   105a8:	0020e1b3          	or	gp,ra,sp
   105ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   105b0:	00200293          	li	t0,2
   105b4:	fe5210e3          	bne	tp,t0,10594 <test_19+0x4>
   105b8:	fff10eb7          	lui	t4,0xfff10
   105bc:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   105c0:	01300e13          	li	t3,19
   105c4:	15d19e63          	bne	gp,t4,10720 <fail>

000105c8 <test_20>:
   105c8:	00000213          	li	tp,0
   105cc:	0f0f1137          	lui	sp,0xf0f1
   105d0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   105d4:	00ff00b7          	lui	ra,0xff0
   105d8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   105dc:	00000013          	nop
   105e0:	00000013          	nop
   105e4:	0020e1b3          	or	gp,ra,sp
   105e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   105ec:	00200293          	li	t0,2
   105f0:	fc521ee3          	bne	tp,t0,105cc <test_20+0x4>
   105f4:	0fff1eb7          	lui	t4,0xfff1
   105f8:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6897>
   105fc:	01400e13          	li	t3,20
   10600:	13d19063          	bne	gp,t4,10720 <fail>

00010604 <test_21>:
   10604:	00000213          	li	tp,0
   10608:	0f0f1137          	lui	sp,0xf0f1
   1060c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10610:	00000013          	nop
   10614:	ff0100b7          	lui	ra,0xff010
   10618:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1061c:	0020e1b3          	or	gp,ra,sp
   10620:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10624:	00200293          	li	t0,2
   10628:	fe5210e3          	bne	tp,t0,10608 <test_21+0x4>
   1062c:	ff100eb7          	lui	t4,0xff100
   10630:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10634:	01500e13          	li	t3,21
   10638:	0fd19463          	bne	gp,t4,10720 <fail>

0001063c <test_22>:
   1063c:	00000213          	li	tp,0
   10640:	f0f0f137          	lui	sp,0xf0f0f
   10644:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10648:	00000013          	nop
   1064c:	0ff010b7          	lui	ra,0xff01
   10650:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10654:	00000013          	nop
   10658:	0020e1b3          	or	gp,ra,sp
   1065c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10660:	00200293          	li	t0,2
   10664:	fc521ee3          	bne	tp,t0,10640 <test_22+0x4>
   10668:	fff10eb7          	lui	t4,0xfff10
   1066c:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10670:	01600e13          	li	t3,22
   10674:	0bd19663          	bne	gp,t4,10720 <fail>

00010678 <test_23>:
   10678:	00000213          	li	tp,0
   1067c:	0f0f1137          	lui	sp,0xf0f1
   10680:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10684:	00000013          	nop
   10688:	00000013          	nop
   1068c:	00ff00b7          	lui	ra,0xff0
   10690:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   10694:	0020e1b3          	or	gp,ra,sp
   10698:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1069c:	00200293          	li	t0,2
   106a0:	fc521ee3          	bne	tp,t0,1067c <test_23+0x4>
   106a4:	0fff1eb7          	lui	t4,0xfff1
   106a8:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6897>
   106ac:	01700e13          	li	t3,23
   106b0:	07d19863          	bne	gp,t4,10720 <fail>

000106b4 <test_24>:
   106b4:	ff0100b7          	lui	ra,0xff010
   106b8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   106bc:	00106133          	or	sp,zero,ra
   106c0:	ff010eb7          	lui	t4,0xff010
   106c4:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   106c8:	01800e13          	li	t3,24
   106cc:	05d11a63          	bne	sp,t4,10720 <fail>

000106d0 <test_25>:
   106d0:	00ff00b7          	lui	ra,0xff0
   106d4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   106d8:	0000e133          	or	sp,ra,zero
   106dc:	00ff0eb7          	lui	t4,0xff0
   106e0:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5997>
   106e4:	01900e13          	li	t3,25
   106e8:	03d11c63          	bne	sp,t4,10720 <fail>

000106ec <test_26>:
   106ec:	000060b3          	or	ra,zero,zero
   106f0:	00000e93          	li	t4,0
   106f4:	01a00e13          	li	t3,26
   106f8:	03d09463          	bne	ra,t4,10720 <fail>

000106fc <test_27>:
   106fc:	111110b7          	lui	ra,0x11111
   10700:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f69a9>
   10704:	22222137          	lui	sp,0x22222
   10708:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207aba>
   1070c:	0020e033          	or	zero,ra,sp
   10710:	00000e93          	li	t4,0
   10714:	01b00e13          	li	t3,27
   10718:	01d01463          	bne	zero,t4,10720 <fail>
   1071c:	05c01063          	bne	zero,t3,1075c <pass>

00010720 <fail>:
   10720:	0ff00513          	li	a0,255

00010724 <.delay_fail>:
   10724:	fff50513          	addi	a0,a0,-1
   10728:	fe051ee3          	bnez	a0,10724 <.delay_fail>
   1072c:	02000537          	lui	a0,0x2000
   10730:	04500593          	li	a1,69
   10734:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   10738:	05200613          	li	a2,82
   1073c:	00c52023          	sw	a2,0(a0)
   10740:	00c52023          	sw	a2,0(a0)
   10744:	04f00693          	li	a3,79
   10748:	00d52023          	sw	a3,0(a0)
   1074c:	00c52023          	sw	a2,0(a0)
   10750:	02000713          	li	a4,32
   10754:	00e52023          	sw	a4,0(a0)
   10758:	a19ff06f          	j	10170 <or_ret>

0001075c <pass>:
   1075c:	0ff00513          	li	a0,255

00010760 <.delay_ok>:
   10760:	fff50513          	addi	a0,a0,-1
   10764:	fe051ee3          	bnez	a0,10760 <.delay_ok>
   10768:	02000537          	lui	a0,0x2000
   1076c:	04f00593          	li	a1,79
   10770:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   10774:	04b00613          	li	a2,75
   10778:	00c52023          	sw	a2,0(a0)
   1077c:	02000713          	li	a4,32
   10780:	00e52023          	sw	a4,0(a0)
   10784:	9edff06f          	j	10170 <or_ret>

00010788 <xor>:
   10788:	00008537          	lui	a0,0x8
   1078c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   10790:	00a00693          	li	a3,10
   10794:	00100713          	li	a4,1

00010798 <.delay_pr>:
   10798:	fff50513          	addi	a0,a0,-1
   1079c:	fe051ee3          	bnez	a0,10798 <.delay_pr>
   107a0:	00010537          	lui	a0,0x10
   107a4:	7c450513          	addi	a0,a0,1988 # 107c4 <.test_name>
   107a8:	02000637          	lui	a2,0x2000

000107ac <.prname_next>:
   107ac:	00050583          	lb	a1,0(a0)
   107b0:	00058c63          	beqz	a1,107c8 <.prname_done>
   107b4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   107b8:	00150513          	addi	a0,a0,1
   107bc:	40e686b3          	sub	a3,a3,a4
   107c0:	fedff06f          	j	107ac <.prname_next>

000107c4 <.test_name>:
   107c4:	6f78                	flw	fa4,92(a4)
   107c6:	0072                	c.slli	zero,0x1c

000107c8 <.prname_done>:
   107c8:	02e00593          	li	a1,46

000107cc <.loop>:
   107cc:	00b62023          	sw	a1,0(a2)
   107d0:	40e686b3          	sub	a3,a3,a4
   107d4:	00068463          	beqz	a3,107dc <test_2>
   107d8:	ff5ff0ef          	jal	ra,107cc <.loop>

000107dc <test_2>:
   107dc:	ff0100b7          	lui	ra,0xff010
   107e0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   107e4:	0f0f1137          	lui	sp,0xf0f1
   107e8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   107ec:	0020c1b3          	xor	gp,ra,sp
   107f0:	f00ffeb7          	lui	t4,0xf00ff
   107f4:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   107f8:	00200e13          	li	t3,2
   107fc:	4bd19063          	bne	gp,t4,10c9c <fail>

00010800 <test_3>:
   10800:	0ff010b7          	lui	ra,0xff01
   10804:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10808:	f0f0f137          	lui	sp,0xf0f0f
   1080c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10810:	0020c1b3          	xor	gp,ra,sp
   10814:	ff010eb7          	lui	t4,0xff010
   10818:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   1081c:	00300e13          	li	t3,3
   10820:	47d19e63          	bne	gp,t4,10c9c <fail>

00010824 <test_4>:
   10824:	00ff00b7          	lui	ra,0xff0
   10828:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   1082c:	0f0f1137          	lui	sp,0xf0f1
   10830:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10834:	0020c1b3          	xor	gp,ra,sp
   10838:	0ff01eb7          	lui	t4,0xff01
   1083c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   10840:	00400e13          	li	t3,4
   10844:	45d19c63          	bne	gp,t4,10c9c <fail>

00010848 <test_5>:
   10848:	f00ff0b7          	lui	ra,0xf00ff
   1084c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   10850:	f0f0f137          	lui	sp,0xf0f0f
   10854:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10858:	0020c1b3          	xor	gp,ra,sp
   1085c:	00ff0eb7          	lui	t4,0xff0
   10860:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5997>
   10864:	00500e13          	li	t3,5
   10868:	43d19a63          	bne	gp,t4,10c9c <fail>

0001086c <test_6>:
   1086c:	ff0100b7          	lui	ra,0xff010
   10870:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10874:	0f0f1137          	lui	sp,0xf0f1
   10878:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   1087c:	0020c0b3          	xor	ra,ra,sp
   10880:	f00ffeb7          	lui	t4,0xf00ff
   10884:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10888:	00600e13          	li	t3,6
   1088c:	41d09863          	bne	ra,t4,10c9c <fail>

00010890 <test_7>:
   10890:	ff0100b7          	lui	ra,0xff010
   10894:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10898:	0f0f1137          	lui	sp,0xf0f1
   1089c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   108a0:	0020c133          	xor	sp,ra,sp
   108a4:	f00ffeb7          	lui	t4,0xf00ff
   108a8:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   108ac:	00700e13          	li	t3,7
   108b0:	3fd11663          	bne	sp,t4,10c9c <fail>

000108b4 <test_8>:
   108b4:	ff0100b7          	lui	ra,0xff010
   108b8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   108bc:	0010c0b3          	xor	ra,ra,ra
   108c0:	00000e93          	li	t4,0
   108c4:	00800e13          	li	t3,8
   108c8:	3dd09a63          	bne	ra,t4,10c9c <fail>

000108cc <test_9>:
   108cc:	00000213          	li	tp,0
   108d0:	ff0100b7          	lui	ra,0xff010
   108d4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   108d8:	0f0f1137          	lui	sp,0xf0f1
   108dc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   108e0:	0020c1b3          	xor	gp,ra,sp
   108e4:	00018313          	mv	t1,gp
   108e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   108ec:	00200293          	li	t0,2
   108f0:	fe5210e3          	bne	tp,t0,108d0 <test_9+0x4>
   108f4:	f00ffeb7          	lui	t4,0xf00ff
   108f8:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   108fc:	00900e13          	li	t3,9
   10900:	39d31e63          	bne	t1,t4,10c9c <fail>

00010904 <test_10>:
   10904:	00000213          	li	tp,0
   10908:	0ff010b7          	lui	ra,0xff01
   1090c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10910:	f0f0f137          	lui	sp,0xf0f0f
   10914:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10918:	0020c1b3          	xor	gp,ra,sp
   1091c:	00000013          	nop
   10920:	00018313          	mv	t1,gp
   10924:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10928:	00200293          	li	t0,2
   1092c:	fc521ee3          	bne	tp,t0,10908 <test_10+0x4>
   10930:	ff010eb7          	lui	t4,0xff010
   10934:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10938:	00a00e13          	li	t3,10
   1093c:	37d31063          	bne	t1,t4,10c9c <fail>

00010940 <test_11>:
   10940:	00000213          	li	tp,0
   10944:	00ff00b7          	lui	ra,0xff0
   10948:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   1094c:	0f0f1137          	lui	sp,0xf0f1
   10950:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10954:	0020c1b3          	xor	gp,ra,sp
   10958:	00000013          	nop
   1095c:	00000013          	nop
   10960:	00018313          	mv	t1,gp
   10964:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10968:	00200293          	li	t0,2
   1096c:	fc521ce3          	bne	tp,t0,10944 <test_11+0x4>
   10970:	0ff01eb7          	lui	t4,0xff01
   10974:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   10978:	00b00e13          	li	t3,11
   1097c:	33d31063          	bne	t1,t4,10c9c <fail>

00010980 <test_12>:
   10980:	00000213          	li	tp,0
   10984:	ff0100b7          	lui	ra,0xff010
   10988:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1098c:	0f0f1137          	lui	sp,0xf0f1
   10990:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10994:	0020c1b3          	xor	gp,ra,sp
   10998:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1099c:	00200293          	li	t0,2
   109a0:	fe5212e3          	bne	tp,t0,10984 <test_12+0x4>
   109a4:	f00ffeb7          	lui	t4,0xf00ff
   109a8:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   109ac:	00c00e13          	li	t3,12
   109b0:	2fd19663          	bne	gp,t4,10c9c <fail>

000109b4 <test_13>:
   109b4:	00000213          	li	tp,0
   109b8:	0ff010b7          	lui	ra,0xff01
   109bc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   109c0:	f0f0f137          	lui	sp,0xf0f0f
   109c4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   109c8:	00000013          	nop
   109cc:	0020c1b3          	xor	gp,ra,sp
   109d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   109d4:	00200293          	li	t0,2
   109d8:	fe5210e3          	bne	tp,t0,109b8 <test_13+0x4>
   109dc:	ff010eb7          	lui	t4,0xff010
   109e0:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   109e4:	00d00e13          	li	t3,13
   109e8:	2bd19a63          	bne	gp,t4,10c9c <fail>

000109ec <test_14>:
   109ec:	00000213          	li	tp,0
   109f0:	00ff00b7          	lui	ra,0xff0
   109f4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   109f8:	0f0f1137          	lui	sp,0xf0f1
   109fc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10a00:	00000013          	nop
   10a04:	00000013          	nop
   10a08:	0020c1b3          	xor	gp,ra,sp
   10a0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a10:	00200293          	li	t0,2
   10a14:	fc521ee3          	bne	tp,t0,109f0 <test_14+0x4>
   10a18:	0ff01eb7          	lui	t4,0xff01
   10a1c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   10a20:	00e00e13          	li	t3,14
   10a24:	27d19c63          	bne	gp,t4,10c9c <fail>

00010a28 <test_15>:
   10a28:	00000213          	li	tp,0
   10a2c:	ff0100b7          	lui	ra,0xff010
   10a30:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10a34:	00000013          	nop
   10a38:	0f0f1137          	lui	sp,0xf0f1
   10a3c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10a40:	0020c1b3          	xor	gp,ra,sp
   10a44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a48:	00200293          	li	t0,2
   10a4c:	fe5210e3          	bne	tp,t0,10a2c <test_15+0x4>
   10a50:	f00ffeb7          	lui	t4,0xf00ff
   10a54:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10a58:	00f00e13          	li	t3,15
   10a5c:	25d19063          	bne	gp,t4,10c9c <fail>

00010a60 <test_16>:
   10a60:	00000213          	li	tp,0
   10a64:	0ff010b7          	lui	ra,0xff01
   10a68:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10a6c:	00000013          	nop
   10a70:	f0f0f137          	lui	sp,0xf0f0f
   10a74:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10a78:	00000013          	nop
   10a7c:	0020c1b3          	xor	gp,ra,sp
   10a80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a84:	00200293          	li	t0,2
   10a88:	fc521ee3          	bne	tp,t0,10a64 <test_16+0x4>
   10a8c:	ff010eb7          	lui	t4,0xff010
   10a90:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10a94:	01000e13          	li	t3,16
   10a98:	21d19263          	bne	gp,t4,10c9c <fail>

00010a9c <test_17>:
   10a9c:	00000213          	li	tp,0
   10aa0:	00ff00b7          	lui	ra,0xff0
   10aa4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   10aa8:	00000013          	nop
   10aac:	00000013          	nop
   10ab0:	0f0f1137          	lui	sp,0xf0f1
   10ab4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10ab8:	0020c1b3          	xor	gp,ra,sp
   10abc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10ac0:	00200293          	li	t0,2
   10ac4:	fc521ee3          	bne	tp,t0,10aa0 <test_17+0x4>
   10ac8:	0ff01eb7          	lui	t4,0xff01
   10acc:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   10ad0:	01100e13          	li	t3,17
   10ad4:	1dd19463          	bne	gp,t4,10c9c <fail>

00010ad8 <test_18>:
   10ad8:	00000213          	li	tp,0
   10adc:	0f0f1137          	lui	sp,0xf0f1
   10ae0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10ae4:	ff0100b7          	lui	ra,0xff010
   10ae8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10aec:	0020c1b3          	xor	gp,ra,sp
   10af0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10af4:	00200293          	li	t0,2
   10af8:	fe5212e3          	bne	tp,t0,10adc <test_18+0x4>
   10afc:	f00ffeb7          	lui	t4,0xf00ff
   10b00:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10b04:	01200e13          	li	t3,18
   10b08:	19d19a63          	bne	gp,t4,10c9c <fail>

00010b0c <test_19>:
   10b0c:	00000213          	li	tp,0
   10b10:	f0f0f137          	lui	sp,0xf0f0f
   10b14:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10b18:	0ff010b7          	lui	ra,0xff01
   10b1c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10b20:	00000013          	nop
   10b24:	0020c1b3          	xor	gp,ra,sp
   10b28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b2c:	00200293          	li	t0,2
   10b30:	fe5210e3          	bne	tp,t0,10b10 <test_19+0x4>
   10b34:	ff010eb7          	lui	t4,0xff010
   10b38:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10b3c:	01300e13          	li	t3,19
   10b40:	15d19e63          	bne	gp,t4,10c9c <fail>

00010b44 <test_20>:
   10b44:	00000213          	li	tp,0
   10b48:	0f0f1137          	lui	sp,0xf0f1
   10b4c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10b50:	00ff00b7          	lui	ra,0xff0
   10b54:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   10b58:	00000013          	nop
   10b5c:	00000013          	nop
   10b60:	0020c1b3          	xor	gp,ra,sp
   10b64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b68:	00200293          	li	t0,2
   10b6c:	fc521ee3          	bne	tp,t0,10b48 <test_20+0x4>
   10b70:	0ff01eb7          	lui	t4,0xff01
   10b74:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   10b78:	01400e13          	li	t3,20
   10b7c:	13d19063          	bne	gp,t4,10c9c <fail>

00010b80 <test_21>:
   10b80:	00000213          	li	tp,0
   10b84:	0f0f1137          	lui	sp,0xf0f1
   10b88:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10b8c:	00000013          	nop
   10b90:	ff0100b7          	lui	ra,0xff010
   10b94:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10b98:	0020c1b3          	xor	gp,ra,sp
   10b9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10ba0:	00200293          	li	t0,2
   10ba4:	fe5210e3          	bne	tp,t0,10b84 <test_21+0x4>
   10ba8:	f00ffeb7          	lui	t4,0xf00ff
   10bac:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10bb0:	01500e13          	li	t3,21
   10bb4:	0fd19463          	bne	gp,t4,10c9c <fail>

00010bb8 <test_22>:
   10bb8:	00000213          	li	tp,0
   10bbc:	f0f0f137          	lui	sp,0xf0f0f
   10bc0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10bc4:	00000013          	nop
   10bc8:	0ff010b7          	lui	ra,0xff01
   10bcc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   10bd0:	00000013          	nop
   10bd4:	0020c1b3          	xor	gp,ra,sp
   10bd8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10bdc:	00200293          	li	t0,2
   10be0:	fc521ee3          	bne	tp,t0,10bbc <test_22+0x4>
   10be4:	ff010eb7          	lui	t4,0xff010
   10be8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10bec:	01600e13          	li	t3,22
   10bf0:	0bd19663          	bne	gp,t4,10c9c <fail>

00010bf4 <test_23>:
   10bf4:	00000213          	li	tp,0
   10bf8:	0f0f1137          	lui	sp,0xf0f1
   10bfc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   10c00:	00000013          	nop
   10c04:	00000013          	nop
   10c08:	00ff00b7          	lui	ra,0xff0
   10c0c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   10c10:	0020c1b3          	xor	gp,ra,sp
   10c14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10c18:	00200293          	li	t0,2
   10c1c:	fc521ee3          	bne	tp,t0,10bf8 <test_23+0x4>
   10c20:	0ff01eb7          	lui	t4,0xff01
   10c24:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   10c28:	01700e13          	li	t3,23
   10c2c:	07d19863          	bne	gp,t4,10c9c <fail>

00010c30 <test_24>:
   10c30:	ff0100b7          	lui	ra,0xff010
   10c34:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10c38:	00104133          	xor	sp,zero,ra
   10c3c:	ff010eb7          	lui	t4,0xff010
   10c40:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10c44:	01800e13          	li	t3,24
   10c48:	05d11a63          	bne	sp,t4,10c9c <fail>

00010c4c <test_25>:
   10c4c:	00ff00b7          	lui	ra,0xff0
   10c50:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   10c54:	0000c133          	xor	sp,ra,zero
   10c58:	00ff0eb7          	lui	t4,0xff0
   10c5c:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5997>
   10c60:	01900e13          	li	t3,25
   10c64:	03d11c63          	bne	sp,t4,10c9c <fail>

00010c68 <test_26>:
   10c68:	000040b3          	xor	ra,zero,zero
   10c6c:	00000e93          	li	t4,0
   10c70:	01a00e13          	li	t3,26
   10c74:	03d09463          	bne	ra,t4,10c9c <fail>

00010c78 <test_27>:
   10c78:	111110b7          	lui	ra,0x11111
   10c7c:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f69a9>
   10c80:	22222137          	lui	sp,0x22222
   10c84:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207aba>
   10c88:	0020c033          	xor	zero,ra,sp
   10c8c:	00000e93          	li	t4,0
   10c90:	01b00e13          	li	t3,27
   10c94:	01d01463          	bne	zero,t4,10c9c <fail>
   10c98:	05c01063          	bne	zero,t3,10cd8 <pass>

00010c9c <fail>:
   10c9c:	0ff00513          	li	a0,255

00010ca0 <.delay_fail>:
   10ca0:	fff50513          	addi	a0,a0,-1
   10ca4:	fe051ee3          	bnez	a0,10ca0 <.delay_fail>
   10ca8:	02000537          	lui	a0,0x2000
   10cac:	04500593          	li	a1,69
   10cb0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   10cb4:	05200613          	li	a2,82
   10cb8:	00c52023          	sw	a2,0(a0)
   10cbc:	00c52023          	sw	a2,0(a0)
   10cc0:	04f00693          	li	a3,79
   10cc4:	00d52023          	sw	a3,0(a0)
   10cc8:	00c52023          	sw	a2,0(a0)
   10ccc:	02000713          	li	a4,32
   10cd0:	00e52023          	sw	a4,0(a0)
   10cd4:	c90ff06f          	j	10164 <xor_ret>

00010cd8 <pass>:
   10cd8:	0ff00513          	li	a0,255

00010cdc <.delay_ok>:
   10cdc:	fff50513          	addi	a0,a0,-1
   10ce0:	fe051ee3          	bnez	a0,10cdc <.delay_ok>
   10ce4:	02000537          	lui	a0,0x2000
   10ce8:	04f00593          	li	a1,79
   10cec:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   10cf0:	04b00613          	li	a2,75
   10cf4:	00c52023          	sw	a2,0(a0)
   10cf8:	02000713          	li	a4,32
   10cfc:	00e52023          	sw	a4,0(a0)
   10d00:	c64ff06f          	j	10164 <xor_ret>

00010d04 <sub>:
   10d04:	00008537          	lui	a0,0x8
   10d08:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   10d0c:	00a00693          	li	a3,10
   10d10:	00100713          	li	a4,1

00010d14 <.delay_pr>:
   10d14:	fff50513          	addi	a0,a0,-1
   10d18:	fe051ee3          	bnez	a0,10d14 <.delay_pr>
   10d1c:	00011537          	lui	a0,0x11
   10d20:	d4050513          	addi	a0,a0,-704 # 10d40 <.test_name>
   10d24:	02000637          	lui	a2,0x2000

00010d28 <.prname_next>:
   10d28:	00050583          	lb	a1,0(a0)
   10d2c:	00058c63          	beqz	a1,10d44 <.prname_done>
   10d30:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   10d34:	00150513          	addi	a0,a0,1
   10d38:	40e686b3          	sub	a3,a3,a4
   10d3c:	fedff06f          	j	10d28 <.prname_next>

00010d40 <.test_name>:
   10d40:	00627573          	csrrci	a0,0x6,4

00010d44 <.prname_done>:
   10d44:	02e00593          	li	a1,46

00010d48 <.loop>:
   10d48:	00b62023          	sw	a1,0(a2)
   10d4c:	40e686b3          	sub	a3,a3,a4
   10d50:	00068463          	beqz	a3,10d58 <test_2>
   10d54:	ff5ff0ef          	jal	ra,10d48 <.loop>

00010d58 <test_2>:
   10d58:	00000093          	li	ra,0
   10d5c:	00000113          	li	sp,0
   10d60:	402081b3          	sub	gp,ra,sp
   10d64:	00000e93          	li	t4,0
   10d68:	00200e13          	li	t3,2
   10d6c:	4bd19663          	bne	gp,t4,11218 <fail>

00010d70 <test_3>:
   10d70:	00100093          	li	ra,1
   10d74:	00100113          	li	sp,1
   10d78:	402081b3          	sub	gp,ra,sp
   10d7c:	00000e93          	li	t4,0
   10d80:	00300e13          	li	t3,3
   10d84:	49d19a63          	bne	gp,t4,11218 <fail>

00010d88 <test_4>:
   10d88:	00300093          	li	ra,3
   10d8c:	00700113          	li	sp,7
   10d90:	402081b3          	sub	gp,ra,sp
   10d94:	ffc00e93          	li	t4,-4
   10d98:	00400e13          	li	t3,4
   10d9c:	47d19e63          	bne	gp,t4,11218 <fail>

00010da0 <test_5>:
   10da0:	00000093          	li	ra,0
   10da4:	ffff8137          	lui	sp,0xffff8
   10da8:	402081b3          	sub	gp,ra,sp
   10dac:	00008eb7          	lui	t4,0x8
   10db0:	00500e13          	li	t3,5
   10db4:	47d19263          	bne	gp,t4,11218 <fail>

00010db8 <test_6>:
   10db8:	800000b7          	lui	ra,0x80000
   10dbc:	00000113          	li	sp,0
   10dc0:	402081b3          	sub	gp,ra,sp
   10dc4:	80000eb7          	lui	t4,0x80000
   10dc8:	00600e13          	li	t3,6
   10dcc:	45d19663          	bne	gp,t4,11218 <fail>

00010dd0 <test_7>:
   10dd0:	800000b7          	lui	ra,0x80000
   10dd4:	ffff8137          	lui	sp,0xffff8
   10dd8:	402081b3          	sub	gp,ra,sp
   10ddc:	80008eb7          	lui	t4,0x80008
   10de0:	00700e13          	li	t3,7
   10de4:	43d19a63          	bne	gp,t4,11218 <fail>

00010de8 <test_8>:
   10de8:	00000093          	li	ra,0
   10dec:	00008137          	lui	sp,0x8
   10df0:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   10df4:	402081b3          	sub	gp,ra,sp
   10df8:	ffff8eb7          	lui	t4,0xffff8
   10dfc:	001e8e93          	addi	t4,t4,1 # ffff8001 <_edata+0x7fff7f91>
   10e00:	00800e13          	li	t3,8
   10e04:	41d19a63          	bne	gp,t4,11218 <fail>

00010e08 <test_9>:
   10e08:	800000b7          	lui	ra,0x80000
   10e0c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   10e10:	00000113          	li	sp,0
   10e14:	402081b3          	sub	gp,ra,sp
   10e18:	80000eb7          	lui	t4,0x80000
   10e1c:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   10e20:	00900e13          	li	t3,9
   10e24:	3fd19a63          	bne	gp,t4,11218 <fail>

00010e28 <test_10>:
   10e28:	800000b7          	lui	ra,0x80000
   10e2c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   10e30:	00008137          	lui	sp,0x8
   10e34:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   10e38:	402081b3          	sub	gp,ra,sp
   10e3c:	7fff8eb7          	lui	t4,0x7fff8
   10e40:	00a00e13          	li	t3,10
   10e44:	3dd19a63          	bne	gp,t4,11218 <fail>

00010e48 <test_11>:
   10e48:	800000b7          	lui	ra,0x80000
   10e4c:	00008137          	lui	sp,0x8
   10e50:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   10e54:	402081b3          	sub	gp,ra,sp
   10e58:	7fff8eb7          	lui	t4,0x7fff8
   10e5c:	001e8e93          	addi	t4,t4,1 # 7fff8001 <_etext+0x7ffdd899>
   10e60:	00b00e13          	li	t3,11
   10e64:	3bd19a63          	bne	gp,t4,11218 <fail>

00010e68 <test_12>:
   10e68:	800000b7          	lui	ra,0x80000
   10e6c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   10e70:	ffff8137          	lui	sp,0xffff8
   10e74:	402081b3          	sub	gp,ra,sp
   10e78:	80008eb7          	lui	t4,0x80008
   10e7c:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   10e80:	00c00e13          	li	t3,12
   10e84:	39d19a63          	bne	gp,t4,11218 <fail>

00010e88 <test_13>:
   10e88:	00000093          	li	ra,0
   10e8c:	fff00113          	li	sp,-1
   10e90:	402081b3          	sub	gp,ra,sp
   10e94:	00100e93          	li	t4,1
   10e98:	00d00e13          	li	t3,13
   10e9c:	37d19e63          	bne	gp,t4,11218 <fail>

00010ea0 <test_14>:
   10ea0:	fff00093          	li	ra,-1
   10ea4:	00100113          	li	sp,1
   10ea8:	402081b3          	sub	gp,ra,sp
   10eac:	ffe00e93          	li	t4,-2
   10eb0:	00e00e13          	li	t3,14
   10eb4:	37d19263          	bne	gp,t4,11218 <fail>

00010eb8 <test_15>:
   10eb8:	fff00093          	li	ra,-1
   10ebc:	fff00113          	li	sp,-1
   10ec0:	402081b3          	sub	gp,ra,sp
   10ec4:	00000e93          	li	t4,0
   10ec8:	00f00e13          	li	t3,15
   10ecc:	35d19663          	bne	gp,t4,11218 <fail>

00010ed0 <test_16>:
   10ed0:	00d00093          	li	ra,13
   10ed4:	00b00113          	li	sp,11
   10ed8:	402080b3          	sub	ra,ra,sp
   10edc:	00200e93          	li	t4,2
   10ee0:	01000e13          	li	t3,16
   10ee4:	33d09a63          	bne	ra,t4,11218 <fail>

00010ee8 <test_17>:
   10ee8:	00e00093          	li	ra,14
   10eec:	00b00113          	li	sp,11
   10ef0:	40208133          	sub	sp,ra,sp
   10ef4:	00300e93          	li	t4,3
   10ef8:	01100e13          	li	t3,17
   10efc:	31d11e63          	bne	sp,t4,11218 <fail>

00010f00 <test_18>:
   10f00:	00d00093          	li	ra,13
   10f04:	401080b3          	sub	ra,ra,ra
   10f08:	00000e93          	li	t4,0
   10f0c:	01200e13          	li	t3,18
   10f10:	31d09463          	bne	ra,t4,11218 <fail>

00010f14 <test_19>:
   10f14:	00000213          	li	tp,0
   10f18:	00d00093          	li	ra,13
   10f1c:	00b00113          	li	sp,11
   10f20:	402081b3          	sub	gp,ra,sp
   10f24:	00018313          	mv	t1,gp
   10f28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f2c:	00200293          	li	t0,2
   10f30:	fe5214e3          	bne	tp,t0,10f18 <test_19+0x4>
   10f34:	00200e93          	li	t4,2
   10f38:	01300e13          	li	t3,19
   10f3c:	2dd31e63          	bne	t1,t4,11218 <fail>

00010f40 <test_20>:
   10f40:	00000213          	li	tp,0
   10f44:	00e00093          	li	ra,14
   10f48:	00b00113          	li	sp,11
   10f4c:	402081b3          	sub	gp,ra,sp
   10f50:	00000013          	nop
   10f54:	00018313          	mv	t1,gp
   10f58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f5c:	00200293          	li	t0,2
   10f60:	fe5212e3          	bne	tp,t0,10f44 <test_20+0x4>
   10f64:	00300e93          	li	t4,3
   10f68:	01400e13          	li	t3,20
   10f6c:	2bd31663          	bne	t1,t4,11218 <fail>

00010f70 <test_21>:
   10f70:	00000213          	li	tp,0
   10f74:	00f00093          	li	ra,15
   10f78:	00b00113          	li	sp,11
   10f7c:	402081b3          	sub	gp,ra,sp
   10f80:	00000013          	nop
   10f84:	00000013          	nop
   10f88:	00018313          	mv	t1,gp
   10f8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f90:	00200293          	li	t0,2
   10f94:	fe5210e3          	bne	tp,t0,10f74 <test_21+0x4>
   10f98:	00400e93          	li	t4,4
   10f9c:	01500e13          	li	t3,21
   10fa0:	27d31c63          	bne	t1,t4,11218 <fail>

00010fa4 <test_22>:
   10fa4:	00000213          	li	tp,0
   10fa8:	00d00093          	li	ra,13
   10fac:	00b00113          	li	sp,11
   10fb0:	402081b3          	sub	gp,ra,sp
   10fb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10fb8:	00200293          	li	t0,2
   10fbc:	fe5216e3          	bne	tp,t0,10fa8 <test_22+0x4>
   10fc0:	00200e93          	li	t4,2
   10fc4:	01600e13          	li	t3,22
   10fc8:	25d19863          	bne	gp,t4,11218 <fail>

00010fcc <test_23>:
   10fcc:	00000213          	li	tp,0
   10fd0:	00e00093          	li	ra,14
   10fd4:	00b00113          	li	sp,11
   10fd8:	00000013          	nop
   10fdc:	402081b3          	sub	gp,ra,sp
   10fe0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10fe4:	00200293          	li	t0,2
   10fe8:	fe5214e3          	bne	tp,t0,10fd0 <test_23+0x4>
   10fec:	00300e93          	li	t4,3
   10ff0:	01700e13          	li	t3,23
   10ff4:	23d19263          	bne	gp,t4,11218 <fail>

00010ff8 <test_24>:
   10ff8:	00000213          	li	tp,0
   10ffc:	00f00093          	li	ra,15
   11000:	00b00113          	li	sp,11
   11004:	00000013          	nop
   11008:	00000013          	nop
   1100c:	402081b3          	sub	gp,ra,sp
   11010:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11014:	00200293          	li	t0,2
   11018:	fe5212e3          	bne	tp,t0,10ffc <test_24+0x4>
   1101c:	00400e93          	li	t4,4
   11020:	01800e13          	li	t3,24
   11024:	1fd19a63          	bne	gp,t4,11218 <fail>

00011028 <test_25>:
   11028:	00000213          	li	tp,0
   1102c:	00d00093          	li	ra,13
   11030:	00000013          	nop
   11034:	00b00113          	li	sp,11
   11038:	402081b3          	sub	gp,ra,sp
   1103c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11040:	00200293          	li	t0,2
   11044:	fe5214e3          	bne	tp,t0,1102c <test_25+0x4>
   11048:	00200e93          	li	t4,2
   1104c:	01900e13          	li	t3,25
   11050:	1dd19463          	bne	gp,t4,11218 <fail>

00011054 <test_26>:
   11054:	00000213          	li	tp,0
   11058:	00e00093          	li	ra,14
   1105c:	00000013          	nop
   11060:	00b00113          	li	sp,11
   11064:	00000013          	nop
   11068:	402081b3          	sub	gp,ra,sp
   1106c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11070:	00200293          	li	t0,2
   11074:	fe5212e3          	bne	tp,t0,11058 <test_26+0x4>
   11078:	00300e93          	li	t4,3
   1107c:	01a00e13          	li	t3,26
   11080:	19d19c63          	bne	gp,t4,11218 <fail>

00011084 <test_27>:
   11084:	00000213          	li	tp,0
   11088:	00f00093          	li	ra,15
   1108c:	00000013          	nop
   11090:	00000013          	nop
   11094:	00b00113          	li	sp,11
   11098:	402081b3          	sub	gp,ra,sp
   1109c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110a0:	00200293          	li	t0,2
   110a4:	fe5212e3          	bne	tp,t0,11088 <test_27+0x4>
   110a8:	00400e93          	li	t4,4
   110ac:	01b00e13          	li	t3,27
   110b0:	17d19463          	bne	gp,t4,11218 <fail>

000110b4 <test_28>:
   110b4:	00000213          	li	tp,0
   110b8:	00b00113          	li	sp,11
   110bc:	00d00093          	li	ra,13
   110c0:	402081b3          	sub	gp,ra,sp
   110c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110c8:	00200293          	li	t0,2
   110cc:	fe5216e3          	bne	tp,t0,110b8 <test_28+0x4>
   110d0:	00200e93          	li	t4,2
   110d4:	01c00e13          	li	t3,28
   110d8:	15d19063          	bne	gp,t4,11218 <fail>

000110dc <test_29>:
   110dc:	00000213          	li	tp,0
   110e0:	00b00113          	li	sp,11
   110e4:	00e00093          	li	ra,14
   110e8:	00000013          	nop
   110ec:	402081b3          	sub	gp,ra,sp
   110f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110f4:	00200293          	li	t0,2
   110f8:	fe5214e3          	bne	tp,t0,110e0 <test_29+0x4>
   110fc:	00300e93          	li	t4,3
   11100:	01d00e13          	li	t3,29
   11104:	11d19a63          	bne	gp,t4,11218 <fail>

00011108 <test_30>:
   11108:	00000213          	li	tp,0
   1110c:	00b00113          	li	sp,11
   11110:	00f00093          	li	ra,15
   11114:	00000013          	nop
   11118:	00000013          	nop
   1111c:	402081b3          	sub	gp,ra,sp
   11120:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11124:	00200293          	li	t0,2
   11128:	fe5212e3          	bne	tp,t0,1110c <test_30+0x4>
   1112c:	00400e93          	li	t4,4
   11130:	01e00e13          	li	t3,30
   11134:	0fd19263          	bne	gp,t4,11218 <fail>

00011138 <test_31>:
   11138:	00000213          	li	tp,0
   1113c:	00b00113          	li	sp,11
   11140:	00000013          	nop
   11144:	00d00093          	li	ra,13
   11148:	402081b3          	sub	gp,ra,sp
   1114c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11150:	00200293          	li	t0,2
   11154:	fe5214e3          	bne	tp,t0,1113c <test_31+0x4>
   11158:	00200e93          	li	t4,2
   1115c:	01f00e13          	li	t3,31
   11160:	0bd19c63          	bne	gp,t4,11218 <fail>

00011164 <test_32>:
   11164:	00000213          	li	tp,0
   11168:	00b00113          	li	sp,11
   1116c:	00000013          	nop
   11170:	00e00093          	li	ra,14
   11174:	00000013          	nop
   11178:	402081b3          	sub	gp,ra,sp
   1117c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11180:	00200293          	li	t0,2
   11184:	fe5212e3          	bne	tp,t0,11168 <test_32+0x4>
   11188:	00300e93          	li	t4,3
   1118c:	02000e13          	li	t3,32
   11190:	09d19463          	bne	gp,t4,11218 <fail>

00011194 <test_33>:
   11194:	00000213          	li	tp,0
   11198:	00b00113          	li	sp,11
   1119c:	00000013          	nop
   111a0:	00000013          	nop
   111a4:	00f00093          	li	ra,15
   111a8:	402081b3          	sub	gp,ra,sp
   111ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   111b0:	00200293          	li	t0,2
   111b4:	fe5212e3          	bne	tp,t0,11198 <test_33+0x4>
   111b8:	00400e93          	li	t4,4
   111bc:	02100e13          	li	t3,33
   111c0:	05d19c63          	bne	gp,t4,11218 <fail>

000111c4 <test_34>:
   111c4:	ff100093          	li	ra,-15
   111c8:	40100133          	neg	sp,ra
   111cc:	00f00e93          	li	t4,15
   111d0:	02200e13          	li	t3,34
   111d4:	05d11263          	bne	sp,t4,11218 <fail>

000111d8 <test_35>:
   111d8:	02000093          	li	ra,32
   111dc:	40008133          	sub	sp,ra,zero
   111e0:	02000e93          	li	t4,32
   111e4:	02300e13          	li	t3,35
   111e8:	03d11863          	bne	sp,t4,11218 <fail>

000111ec <test_36>:
   111ec:	400000b3          	neg	ra,zero
   111f0:	00000e93          	li	t4,0
   111f4:	02400e13          	li	t3,36
   111f8:	03d09063          	bne	ra,t4,11218 <fail>

000111fc <test_37>:
   111fc:	01000093          	li	ra,16
   11200:	01e00113          	li	sp,30
   11204:	40208033          	sub	zero,ra,sp
   11208:	00000e93          	li	t4,0
   1120c:	02500e13          	li	t3,37
   11210:	01d01463          	bne	zero,t4,11218 <fail>
   11214:	05c01063          	bne	zero,t3,11254 <pass>

00011218 <fail>:
   11218:	0ff00513          	li	a0,255

0001121c <.delay_fail>:
   1121c:	fff50513          	addi	a0,a0,-1
   11220:	fe051ee3          	bnez	a0,1121c <.delay_fail>
   11224:	02000537          	lui	a0,0x2000
   11228:	04500593          	li	a1,69
   1122c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   11230:	05200613          	li	a2,82
   11234:	00c52023          	sw	a2,0(a0)
   11238:	00c52023          	sw	a2,0(a0)
   1123c:	04f00693          	li	a3,79
   11240:	00d52023          	sw	a3,0(a0)
   11244:	00c52023          	sw	a2,0(a0)
   11248:	02000713          	li	a4,32
   1124c:	00e52023          	sw	a4,0(a0)
   11250:	f05fe06f          	j	10154 <sub_ret>

00011254 <pass>:
   11254:	0ff00513          	li	a0,255

00011258 <.delay_ok>:
   11258:	fff50513          	addi	a0,a0,-1
   1125c:	fe051ee3          	bnez	a0,11258 <.delay_ok>
   11260:	02000537          	lui	a0,0x2000
   11264:	04f00593          	li	a1,79
   11268:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1126c:	04b00613          	li	a2,75
   11270:	00c52023          	sw	a2,0(a0)
   11274:	02000713          	li	a4,32
   11278:	00e52023          	sw	a4,0(a0)
   1127c:	ed9fe06f          	j	10154 <sub_ret>

00011280 <sll>:
   11280:	00008537          	lui	a0,0x8
   11284:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   11288:	00a00693          	li	a3,10
   1128c:	00100713          	li	a4,1

00011290 <.delay_pr>:
   11290:	fff50513          	addi	a0,a0,-1
   11294:	fe051ee3          	bnez	a0,11290 <.delay_pr>
   11298:	00011537          	lui	a0,0x11
   1129c:	2bc50513          	addi	a0,a0,700 # 112bc <.test_name>
   112a0:	02000637          	lui	a2,0x2000

000112a4 <.prname_next>:
   112a4:	00050583          	lb	a1,0(a0)
   112a8:	00058c63          	beqz	a1,112c0 <.prname_done>
   112ac:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   112b0:	00150513          	addi	a0,a0,1
   112b4:	40e686b3          	sub	a3,a3,a4
   112b8:	fedff06f          	j	112a4 <.prname_next>

000112bc <.test_name>:
   112bc:	006c6c73          	csrrsi	s8,0x6,24

000112c0 <.prname_done>:
   112c0:	02e00593          	li	a1,46

000112c4 <.loop>:
   112c4:	00b62023          	sw	a1,0(a2)
   112c8:	40e686b3          	sub	a3,a3,a4
   112cc:	00068463          	beqz	a3,112d4 <test_2>
   112d0:	ff5ff0ef          	jal	ra,112c4 <.loop>

000112d4 <test_2>:
   112d4:	00100093          	li	ra,1
   112d8:	00000113          	li	sp,0
   112dc:	002091b3          	sll	gp,ra,sp
   112e0:	00100e93          	li	t4,1
   112e4:	00200e13          	li	t3,2
   112e8:	55d19c63          	bne	gp,t4,11840 <fail>

000112ec <test_3>:
   112ec:	00100093          	li	ra,1
   112f0:	00100113          	li	sp,1
   112f4:	002091b3          	sll	gp,ra,sp
   112f8:	00200e93          	li	t4,2
   112fc:	00300e13          	li	t3,3
   11300:	55d19063          	bne	gp,t4,11840 <fail>

00011304 <test_4>:
   11304:	00100093          	li	ra,1
   11308:	00700113          	li	sp,7
   1130c:	002091b3          	sll	gp,ra,sp
   11310:	08000e93          	li	t4,128
   11314:	00400e13          	li	t3,4
   11318:	53d19463          	bne	gp,t4,11840 <fail>

0001131c <test_5>:
   1131c:	00100093          	li	ra,1
   11320:	00e00113          	li	sp,14
   11324:	002091b3          	sll	gp,ra,sp
   11328:	00004eb7          	lui	t4,0x4
   1132c:	00500e13          	li	t3,5
   11330:	51d19863          	bne	gp,t4,11840 <fail>

00011334 <test_6>:
   11334:	00100093          	li	ra,1
   11338:	01f00113          	li	sp,31
   1133c:	002091b3          	sll	gp,ra,sp
   11340:	80000eb7          	lui	t4,0x80000
   11344:	00600e13          	li	t3,6
   11348:	4fd19c63          	bne	gp,t4,11840 <fail>

0001134c <test_7>:
   1134c:	fff00093          	li	ra,-1
   11350:	00000113          	li	sp,0
   11354:	002091b3          	sll	gp,ra,sp
   11358:	fff00e93          	li	t4,-1
   1135c:	00700e13          	li	t3,7
   11360:	4fd19063          	bne	gp,t4,11840 <fail>

00011364 <test_8>:
   11364:	fff00093          	li	ra,-1
   11368:	00100113          	li	sp,1
   1136c:	002091b3          	sll	gp,ra,sp
   11370:	ffe00e93          	li	t4,-2
   11374:	00800e13          	li	t3,8
   11378:	4dd19463          	bne	gp,t4,11840 <fail>

0001137c <test_9>:
   1137c:	fff00093          	li	ra,-1
   11380:	00700113          	li	sp,7
   11384:	002091b3          	sll	gp,ra,sp
   11388:	f8000e93          	li	t4,-128
   1138c:	00900e13          	li	t3,9
   11390:	4bd19863          	bne	gp,t4,11840 <fail>

00011394 <test_10>:
   11394:	fff00093          	li	ra,-1
   11398:	00e00113          	li	sp,14
   1139c:	002091b3          	sll	gp,ra,sp
   113a0:	ffffceb7          	lui	t4,0xffffc
   113a4:	00a00e13          	li	t3,10
   113a8:	49d19c63          	bne	gp,t4,11840 <fail>

000113ac <test_11>:
   113ac:	fff00093          	li	ra,-1
   113b0:	01f00113          	li	sp,31
   113b4:	002091b3          	sll	gp,ra,sp
   113b8:	80000eb7          	lui	t4,0x80000
   113bc:	00b00e13          	li	t3,11
   113c0:	49d19063          	bne	gp,t4,11840 <fail>

000113c4 <test_12>:
   113c4:	212120b7          	lui	ra,0x21212
   113c8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   113cc:	00000113          	li	sp,0
   113d0:	002091b3          	sll	gp,ra,sp
   113d4:	21212eb7          	lui	t4,0x21212
   113d8:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f79b9>
   113dc:	00c00e13          	li	t3,12
   113e0:	47d19063          	bne	gp,t4,11840 <fail>

000113e4 <test_13>:
   113e4:	212120b7          	lui	ra,0x21212
   113e8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   113ec:	00100113          	li	sp,1
   113f0:	002091b3          	sll	gp,ra,sp
   113f4:	42424eb7          	lui	t4,0x42424
   113f8:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409ada>
   113fc:	00d00e13          	li	t3,13
   11400:	45d19063          	bne	gp,t4,11840 <fail>

00011404 <test_14>:
   11404:	212120b7          	lui	ra,0x21212
   11408:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   1140c:	00700113          	li	sp,7
   11410:	002091b3          	sll	gp,ra,sp
   11414:	90909eb7          	lui	t4,0x90909
   11418:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   1141c:	00e00e13          	li	t3,14
   11420:	43d19063          	bne	gp,t4,11840 <fail>

00011424 <test_15>:
   11424:	212120b7          	lui	ra,0x21212
   11428:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   1142c:	00e00113          	li	sp,14
   11430:	002091b3          	sll	gp,ra,sp
   11434:	48484eb7          	lui	t4,0x48484
   11438:	00f00e13          	li	t3,15
   1143c:	41d19263          	bne	gp,t4,11840 <fail>

00011440 <test_16>:
   11440:	212120b7          	lui	ra,0x21212
   11444:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   11448:	01f00113          	li	sp,31
   1144c:	002091b3          	sll	gp,ra,sp
   11450:	80000eb7          	lui	t4,0x80000
   11454:	01000e13          	li	t3,16
   11458:	3fd19463          	bne	gp,t4,11840 <fail>

0001145c <test_17>:
   1145c:	212120b7          	lui	ra,0x21212
   11460:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   11464:	fe000113          	li	sp,-32
   11468:	002091b3          	sll	gp,ra,sp
   1146c:	21212eb7          	lui	t4,0x21212
   11470:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f79b9>
   11474:	01100e13          	li	t3,17
   11478:	3dd19463          	bne	gp,t4,11840 <fail>

0001147c <test_18>:
   1147c:	212120b7          	lui	ra,0x21212
   11480:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   11484:	fe100113          	li	sp,-31
   11488:	002091b3          	sll	gp,ra,sp
   1148c:	42424eb7          	lui	t4,0x42424
   11490:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409ada>
   11494:	01200e13          	li	t3,18
   11498:	3bd19463          	bne	gp,t4,11840 <fail>

0001149c <test_19>:
   1149c:	212120b7          	lui	ra,0x21212
   114a0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   114a4:	fe700113          	li	sp,-25
   114a8:	002091b3          	sll	gp,ra,sp
   114ac:	90909eb7          	lui	t4,0x90909
   114b0:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   114b4:	01300e13          	li	t3,19
   114b8:	39d19463          	bne	gp,t4,11840 <fail>

000114bc <test_20>:
   114bc:	212120b7          	lui	ra,0x21212
   114c0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   114c4:	fee00113          	li	sp,-18
   114c8:	002091b3          	sll	gp,ra,sp
   114cc:	48484eb7          	lui	t4,0x48484
   114d0:	01400e13          	li	t3,20
   114d4:	37d19663          	bne	gp,t4,11840 <fail>

000114d8 <test_21>:
   114d8:	212120b7          	lui	ra,0x21212
   114dc:	12008093          	addi	ra,ra,288 # 21212120 <_etext+0x211f79b8>
   114e0:	fff00113          	li	sp,-1
   114e4:	002091b3          	sll	gp,ra,sp
   114e8:	00000e93          	li	t4,0
   114ec:	01500e13          	li	t3,21
   114f0:	35d19863          	bne	gp,t4,11840 <fail>

000114f4 <test_22>:
   114f4:	00100093          	li	ra,1
   114f8:	00700113          	li	sp,7
   114fc:	002090b3          	sll	ra,ra,sp
   11500:	08000e93          	li	t4,128
   11504:	01600e13          	li	t3,22
   11508:	33d09c63          	bne	ra,t4,11840 <fail>

0001150c <test_23>:
   1150c:	00100093          	li	ra,1
   11510:	00e00113          	li	sp,14
   11514:	00209133          	sll	sp,ra,sp
   11518:	00004eb7          	lui	t4,0x4
   1151c:	01700e13          	li	t3,23
   11520:	33d11063          	bne	sp,t4,11840 <fail>

00011524 <test_24>:
   11524:	00300093          	li	ra,3
   11528:	001090b3          	sll	ra,ra,ra
   1152c:	01800e93          	li	t4,24
   11530:	01800e13          	li	t3,24
   11534:	31d09663          	bne	ra,t4,11840 <fail>

00011538 <test_25>:
   11538:	00000213          	li	tp,0
   1153c:	00100093          	li	ra,1
   11540:	00700113          	li	sp,7
   11544:	002091b3          	sll	gp,ra,sp
   11548:	00018313          	mv	t1,gp
   1154c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11550:	00200293          	li	t0,2
   11554:	fe5214e3          	bne	tp,t0,1153c <test_25+0x4>
   11558:	08000e93          	li	t4,128
   1155c:	01900e13          	li	t3,25
   11560:	2fd31063          	bne	t1,t4,11840 <fail>

00011564 <test_26>:
   11564:	00000213          	li	tp,0
   11568:	00100093          	li	ra,1
   1156c:	00e00113          	li	sp,14
   11570:	002091b3          	sll	gp,ra,sp
   11574:	00000013          	nop
   11578:	00018313          	mv	t1,gp
   1157c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11580:	00200293          	li	t0,2
   11584:	fe5212e3          	bne	tp,t0,11568 <test_26+0x4>
   11588:	00004eb7          	lui	t4,0x4
   1158c:	01a00e13          	li	t3,26
   11590:	2bd31863          	bne	t1,t4,11840 <fail>

00011594 <test_27>:
   11594:	00000213          	li	tp,0
   11598:	00100093          	li	ra,1
   1159c:	01f00113          	li	sp,31
   115a0:	002091b3          	sll	gp,ra,sp
   115a4:	00000013          	nop
   115a8:	00000013          	nop
   115ac:	00018313          	mv	t1,gp
   115b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   115b4:	00200293          	li	t0,2
   115b8:	fe5210e3          	bne	tp,t0,11598 <test_27+0x4>
   115bc:	80000eb7          	lui	t4,0x80000
   115c0:	01b00e13          	li	t3,27
   115c4:	27d31e63          	bne	t1,t4,11840 <fail>

000115c8 <test_28>:
   115c8:	00000213          	li	tp,0
   115cc:	00100093          	li	ra,1
   115d0:	00700113          	li	sp,7
   115d4:	002091b3          	sll	gp,ra,sp
   115d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   115dc:	00200293          	li	t0,2
   115e0:	fe5216e3          	bne	tp,t0,115cc <test_28+0x4>
   115e4:	08000e93          	li	t4,128
   115e8:	01c00e13          	li	t3,28
   115ec:	25d19a63          	bne	gp,t4,11840 <fail>

000115f0 <test_29>:
   115f0:	00000213          	li	tp,0
   115f4:	00100093          	li	ra,1
   115f8:	00e00113          	li	sp,14
   115fc:	00000013          	nop
   11600:	002091b3          	sll	gp,ra,sp
   11604:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11608:	00200293          	li	t0,2
   1160c:	fe5214e3          	bne	tp,t0,115f4 <test_29+0x4>
   11610:	00004eb7          	lui	t4,0x4
   11614:	01d00e13          	li	t3,29
   11618:	23d19463          	bne	gp,t4,11840 <fail>

0001161c <test_30>:
   1161c:	00000213          	li	tp,0
   11620:	00100093          	li	ra,1
   11624:	01f00113          	li	sp,31
   11628:	00000013          	nop
   1162c:	00000013          	nop
   11630:	002091b3          	sll	gp,ra,sp
   11634:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11638:	00200293          	li	t0,2
   1163c:	fe5212e3          	bne	tp,t0,11620 <test_30+0x4>
   11640:	80000eb7          	lui	t4,0x80000
   11644:	01e00e13          	li	t3,30
   11648:	1fd19c63          	bne	gp,t4,11840 <fail>

0001164c <test_31>:
   1164c:	00000213          	li	tp,0
   11650:	00100093          	li	ra,1
   11654:	00000013          	nop
   11658:	00700113          	li	sp,7
   1165c:	002091b3          	sll	gp,ra,sp
   11660:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11664:	00200293          	li	t0,2
   11668:	fe5214e3          	bne	tp,t0,11650 <test_31+0x4>
   1166c:	08000e93          	li	t4,128
   11670:	01f00e13          	li	t3,31
   11674:	1dd19663          	bne	gp,t4,11840 <fail>

00011678 <test_32>:
   11678:	00000213          	li	tp,0
   1167c:	00100093          	li	ra,1
   11680:	00000013          	nop
   11684:	00e00113          	li	sp,14
   11688:	00000013          	nop
   1168c:	002091b3          	sll	gp,ra,sp
   11690:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11694:	00200293          	li	t0,2
   11698:	fe5212e3          	bne	tp,t0,1167c <test_32+0x4>
   1169c:	00004eb7          	lui	t4,0x4
   116a0:	02000e13          	li	t3,32
   116a4:	19d19e63          	bne	gp,t4,11840 <fail>

000116a8 <test_33>:
   116a8:	00000213          	li	tp,0
   116ac:	00100093          	li	ra,1
   116b0:	00000013          	nop
   116b4:	00000013          	nop
   116b8:	01f00113          	li	sp,31
   116bc:	002091b3          	sll	gp,ra,sp
   116c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   116c4:	00200293          	li	t0,2
   116c8:	fe5212e3          	bne	tp,t0,116ac <test_33+0x4>
   116cc:	80000eb7          	lui	t4,0x80000
   116d0:	02100e13          	li	t3,33
   116d4:	17d19663          	bne	gp,t4,11840 <fail>

000116d8 <test_34>:
   116d8:	00000213          	li	tp,0
   116dc:	00700113          	li	sp,7
   116e0:	00100093          	li	ra,1
   116e4:	002091b3          	sll	gp,ra,sp
   116e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   116ec:	00200293          	li	t0,2
   116f0:	fe5216e3          	bne	tp,t0,116dc <test_34+0x4>
   116f4:	08000e93          	li	t4,128
   116f8:	02200e13          	li	t3,34
   116fc:	15d19263          	bne	gp,t4,11840 <fail>

00011700 <test_35>:
   11700:	00000213          	li	tp,0
   11704:	00e00113          	li	sp,14
   11708:	00100093          	li	ra,1
   1170c:	00000013          	nop
   11710:	002091b3          	sll	gp,ra,sp
   11714:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11718:	00200293          	li	t0,2
   1171c:	fe5214e3          	bne	tp,t0,11704 <test_35+0x4>
   11720:	00004eb7          	lui	t4,0x4
   11724:	02300e13          	li	t3,35
   11728:	11d19c63          	bne	gp,t4,11840 <fail>

0001172c <test_36>:
   1172c:	00000213          	li	tp,0
   11730:	01f00113          	li	sp,31
   11734:	00100093          	li	ra,1
   11738:	00000013          	nop
   1173c:	00000013          	nop
   11740:	002091b3          	sll	gp,ra,sp
   11744:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11748:	00200293          	li	t0,2
   1174c:	fe5212e3          	bne	tp,t0,11730 <test_36+0x4>
   11750:	80000eb7          	lui	t4,0x80000
   11754:	02400e13          	li	t3,36
   11758:	0fd19463          	bne	gp,t4,11840 <fail>

0001175c <test_37>:
   1175c:	00000213          	li	tp,0
   11760:	00700113          	li	sp,7
   11764:	00000013          	nop
   11768:	00100093          	li	ra,1
   1176c:	002091b3          	sll	gp,ra,sp
   11770:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11774:	00200293          	li	t0,2
   11778:	fe5214e3          	bne	tp,t0,11760 <test_37+0x4>
   1177c:	08000e93          	li	t4,128
   11780:	02500e13          	li	t3,37
   11784:	0bd19e63          	bne	gp,t4,11840 <fail>

00011788 <test_38>:
   11788:	00000213          	li	tp,0
   1178c:	00e00113          	li	sp,14
   11790:	00000013          	nop
   11794:	00100093          	li	ra,1
   11798:	00000013          	nop
   1179c:	002091b3          	sll	gp,ra,sp
   117a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   117a4:	00200293          	li	t0,2
   117a8:	fe5212e3          	bne	tp,t0,1178c <test_38+0x4>
   117ac:	00004eb7          	lui	t4,0x4
   117b0:	02600e13          	li	t3,38
   117b4:	09d19663          	bne	gp,t4,11840 <fail>

000117b8 <test_39>:
   117b8:	00000213          	li	tp,0
   117bc:	01f00113          	li	sp,31
   117c0:	00000013          	nop
   117c4:	00000013          	nop
   117c8:	00100093          	li	ra,1
   117cc:	002091b3          	sll	gp,ra,sp
   117d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   117d4:	00200293          	li	t0,2
   117d8:	fe5212e3          	bne	tp,t0,117bc <test_39+0x4>
   117dc:	80000eb7          	lui	t4,0x80000
   117e0:	02700e13          	li	t3,39
   117e4:	05d19e63          	bne	gp,t4,11840 <fail>

000117e8 <test_40>:
   117e8:	00f00093          	li	ra,15
   117ec:	00101133          	sll	sp,zero,ra
   117f0:	00000e93          	li	t4,0
   117f4:	02800e13          	li	t3,40
   117f8:	05d11463          	bne	sp,t4,11840 <fail>

000117fc <test_41>:
   117fc:	02000093          	li	ra,32
   11800:	00009133          	sll	sp,ra,zero
   11804:	02000e93          	li	t4,32
   11808:	02900e13          	li	t3,41
   1180c:	03d11a63          	bne	sp,t4,11840 <fail>

00011810 <test_42>:
   11810:	000010b3          	sll	ra,zero,zero
   11814:	00000e93          	li	t4,0
   11818:	02a00e13          	li	t3,42
   1181c:	03d09263          	bne	ra,t4,11840 <fail>

00011820 <test_43>:
   11820:	40000093          	li	ra,1024
   11824:	00001137          	lui	sp,0x1
   11828:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   1182c:	00209033          	sll	zero,ra,sp
   11830:	00000e93          	li	t4,0
   11834:	02b00e13          	li	t3,43
   11838:	01d01463          	bne	zero,t4,11840 <fail>
   1183c:	05c01063          	bne	zero,t3,1187c <pass>

00011840 <fail>:
   11840:	0ff00513          	li	a0,255

00011844 <.delay_fail>:
   11844:	fff50513          	addi	a0,a0,-1
   11848:	fe051ee3          	bnez	a0,11844 <.delay_fail>
   1184c:	02000537          	lui	a0,0x2000
   11850:	04500593          	li	a1,69
   11854:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   11858:	05200613          	li	a2,82
   1185c:	00c52023          	sw	a2,0(a0)
   11860:	00c52023          	sw	a2,0(a0)
   11864:	04f00693          	li	a3,79
   11868:	00d52023          	sw	a3,0(a0)
   1186c:	00c52023          	sw	a2,0(a0)
   11870:	02000713          	li	a4,32
   11874:	00e52023          	sw	a4,0(a0)
   11878:	8e1fe06f          	j	10158 <sll_ret>

0001187c <pass>:
   1187c:	0ff00513          	li	a0,255

00011880 <.delay_ok>:
   11880:	fff50513          	addi	a0,a0,-1
   11884:	fe051ee3          	bnez	a0,11880 <.delay_ok>
   11888:	02000537          	lui	a0,0x2000
   1188c:	04f00593          	li	a1,79
   11890:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   11894:	04b00613          	li	a2,75
   11898:	00c52023          	sw	a2,0(a0)
   1189c:	02000713          	li	a4,32
   118a0:	00e52023          	sw	a4,0(a0)
   118a4:	8b5fe06f          	j	10158 <sll_ret>

000118a8 <lh>:
   118a8:	00008537          	lui	a0,0x8
   118ac:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   118b0:	00a00693          	li	a3,10
   118b4:	00100713          	li	a4,1

000118b8 <.delay_pr>:
   118b8:	fff50513          	addi	a0,a0,-1
   118bc:	fe051ee3          	bnez	a0,118b8 <.delay_pr>
   118c0:	00012537          	lui	a0,0x12
   118c4:	8e450513          	addi	a0,a0,-1820 # 118e4 <.test_name>
   118c8:	02000637          	lui	a2,0x2000

000118cc <.prname_next>:
   118cc:	00050583          	lb	a1,0(a0)
   118d0:	00058c63          	beqz	a1,118e8 <.prname_done>
   118d4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   118d8:	00150513          	addi	a0,a0,1
   118dc:	40e686b3          	sub	a3,a3,a4
   118e0:	fedff06f          	j	118cc <.prname_next>

000118e4 <.test_name>:
   118e4:	686c                	flw	fa1,84(s0)
	...

000118e8 <.prname_done>:
   118e8:	02e00593          	li	a1,46

000118ec <.loop>:
   118ec:	00b62023          	sw	a1,0(a2)
   118f0:	40e686b3          	sub	a3,a3,a4
   118f4:	00068463          	beqz	a3,118fc <test_2>
   118f8:	ff5ff0ef          	jal	ra,118ec <.loop>

000118fc <test_2>:
   118fc:	7ffee097          	auipc	ra,0x7ffee
   11900:	70408093          	addi	ra,ra,1796 # 80000000 <_ram_start>
   11904:	00009183          	lh	gp,0(ra)
   11908:	0ff00e93          	li	t4,255
   1190c:	00200e13          	li	t3,2
   11910:	25d19c63          	bne	gp,t4,11b68 <fail>

00011914 <test_3>:
   11914:	7ffee097          	auipc	ra,0x7ffee
   11918:	6ec08093          	addi	ra,ra,1772 # 80000000 <_ram_start>
   1191c:	00209183          	lh	gp,2(ra)
   11920:	f0000e93          	li	t4,-256
   11924:	00300e13          	li	t3,3
   11928:	25d19063          	bne	gp,t4,11b68 <fail>

0001192c <test_4>:
   1192c:	7ffee097          	auipc	ra,0x7ffee
   11930:	6d408093          	addi	ra,ra,1748 # 80000000 <_ram_start>
   11934:	00409183          	lh	gp,4(ra)
   11938:	00001eb7          	lui	t4,0x1
   1193c:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11940:	00400e13          	li	t3,4
   11944:	23d19263          	bne	gp,t4,11b68 <fail>

00011948 <test_5>:
   11948:	7ffee097          	auipc	ra,0x7ffee
   1194c:	6b808093          	addi	ra,ra,1720 # 80000000 <_ram_start>
   11950:	00609183          	lh	gp,6(ra)
   11954:	fffffeb7          	lui	t4,0xfffff
   11958:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   1195c:	00500e13          	li	t3,5
   11960:	21d19463          	bne	gp,t4,11b68 <fail>

00011964 <test_6>:
   11964:	7ffee097          	auipc	ra,0x7ffee
   11968:	6a208093          	addi	ra,ra,1698 # 80000006 <tdat4>
   1196c:	ffa09183          	lh	gp,-6(ra)
   11970:	0ff00e93          	li	t4,255
   11974:	00600e13          	li	t3,6
   11978:	1fd19863          	bne	gp,t4,11b68 <fail>

0001197c <test_7>:
   1197c:	7ffee097          	auipc	ra,0x7ffee
   11980:	68a08093          	addi	ra,ra,1674 # 80000006 <tdat4>
   11984:	ffc09183          	lh	gp,-4(ra)
   11988:	f0000e93          	li	t4,-256
   1198c:	00700e13          	li	t3,7
   11990:	1dd19c63          	bne	gp,t4,11b68 <fail>

00011994 <test_8>:
   11994:	7ffee097          	auipc	ra,0x7ffee
   11998:	67208093          	addi	ra,ra,1650 # 80000006 <tdat4>
   1199c:	ffe09183          	lh	gp,-2(ra)
   119a0:	00001eb7          	lui	t4,0x1
   119a4:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   119a8:	00800e13          	li	t3,8
   119ac:	1bd19e63          	bne	gp,t4,11b68 <fail>

000119b0 <test_9>:
   119b0:	7ffee097          	auipc	ra,0x7ffee
   119b4:	65608093          	addi	ra,ra,1622 # 80000006 <tdat4>
   119b8:	00009183          	lh	gp,0(ra)
   119bc:	fffffeb7          	lui	t4,0xfffff
   119c0:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   119c4:	00900e13          	li	t3,9
   119c8:	1bd19063          	bne	gp,t4,11b68 <fail>

000119cc <test_10>:
   119cc:	7ffee097          	auipc	ra,0x7ffee
   119d0:	63408093          	addi	ra,ra,1588 # 80000000 <_ram_start>
   119d4:	fe008093          	addi	ra,ra,-32
   119d8:	02009183          	lh	gp,32(ra)
   119dc:	0ff00e93          	li	t4,255
   119e0:	00a00e13          	li	t3,10
   119e4:	19d19263          	bne	gp,t4,11b68 <fail>

000119e8 <test_11>:
   119e8:	7ffee097          	auipc	ra,0x7ffee
   119ec:	61808093          	addi	ra,ra,1560 # 80000000 <_ram_start>
   119f0:	ffb08093          	addi	ra,ra,-5
   119f4:	00709183          	lh	gp,7(ra)
   119f8:	f0000e93          	li	t4,-256
   119fc:	00b00e13          	li	t3,11
   11a00:	17d19463          	bne	gp,t4,11b68 <fail>

00011a04 <test_12>:
   11a04:	00c00e13          	li	t3,12
   11a08:	00000213          	li	tp,0
   11a0c:	7ffee097          	auipc	ra,0x7ffee
   11a10:	5f608093          	addi	ra,ra,1526 # 80000002 <tdat2>
   11a14:	00209183          	lh	gp,2(ra)
   11a18:	00018313          	mv	t1,gp
   11a1c:	00001eb7          	lui	t4,0x1
   11a20:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11a24:	15d31263          	bne	t1,t4,11b68 <fail>
   11a28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a2c:	00200293          	li	t0,2
   11a30:	fc521ee3          	bne	tp,t0,11a0c <test_12+0x8>

00011a34 <test_13>:
   11a34:	00d00e13          	li	t3,13
   11a38:	00000213          	li	tp,0
   11a3c:	7ffee097          	auipc	ra,0x7ffee
   11a40:	5c808093          	addi	ra,ra,1480 # 80000004 <tdat3>
   11a44:	00209183          	lh	gp,2(ra)
   11a48:	00000013          	nop
   11a4c:	00018313          	mv	t1,gp
   11a50:	fffffeb7          	lui	t4,0xfffff
   11a54:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11a58:	11d31863          	bne	t1,t4,11b68 <fail>
   11a5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a60:	00200293          	li	t0,2
   11a64:	fc521ce3          	bne	tp,t0,11a3c <test_13+0x8>

00011a68 <test_14>:
   11a68:	00e00e13          	li	t3,14
   11a6c:	00000213          	li	tp,0
   11a70:	7ffee097          	auipc	ra,0x7ffee
   11a74:	59008093          	addi	ra,ra,1424 # 80000000 <_ram_start>
   11a78:	00209183          	lh	gp,2(ra)
   11a7c:	00000013          	nop
   11a80:	00000013          	nop
   11a84:	00018313          	mv	t1,gp
   11a88:	f0000e93          	li	t4,-256
   11a8c:	0dd31e63          	bne	t1,t4,11b68 <fail>
   11a90:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a94:	00200293          	li	t0,2
   11a98:	fc521ce3          	bne	tp,t0,11a70 <test_14+0x8>

00011a9c <test_15>:
   11a9c:	00f00e13          	li	t3,15
   11aa0:	00000213          	li	tp,0
   11aa4:	7ffee097          	auipc	ra,0x7ffee
   11aa8:	55e08093          	addi	ra,ra,1374 # 80000002 <tdat2>
   11aac:	00209183          	lh	gp,2(ra)
   11ab0:	00001eb7          	lui	t4,0x1
   11ab4:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11ab8:	0bd19863          	bne	gp,t4,11b68 <fail>
   11abc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ac0:	00200293          	li	t0,2
   11ac4:	fe5210e3          	bne	tp,t0,11aa4 <test_15+0x8>

00011ac8 <test_16>:
   11ac8:	01000e13          	li	t3,16
   11acc:	00000213          	li	tp,0
   11ad0:	7ffee097          	auipc	ra,0x7ffee
   11ad4:	53408093          	addi	ra,ra,1332 # 80000004 <tdat3>
   11ad8:	00000013          	nop
   11adc:	00209183          	lh	gp,2(ra)
   11ae0:	fffffeb7          	lui	t4,0xfffff
   11ae4:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11ae8:	09d19063          	bne	gp,t4,11b68 <fail>
   11aec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11af0:	00200293          	li	t0,2
   11af4:	fc521ee3          	bne	tp,t0,11ad0 <test_16+0x8>

00011af8 <test_17>:
   11af8:	01100e13          	li	t3,17
   11afc:	00000213          	li	tp,0
   11b00:	7ffee097          	auipc	ra,0x7ffee
   11b04:	50008093          	addi	ra,ra,1280 # 80000000 <_ram_start>
   11b08:	00000013          	nop
   11b0c:	00000013          	nop
   11b10:	00209183          	lh	gp,2(ra)
   11b14:	f0000e93          	li	t4,-256
   11b18:	05d19863          	bne	gp,t4,11b68 <fail>
   11b1c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11b20:	00200293          	li	t0,2
   11b24:	fc521ee3          	bne	tp,t0,11b00 <test_17+0x8>

00011b28 <test_18>:
   11b28:	7ffee197          	auipc	gp,0x7ffee
   11b2c:	4d818193          	addi	gp,gp,1240 # 80000000 <_ram_start>
   11b30:	00019103          	lh	sp,0(gp)
   11b34:	00200113          	li	sp,2
   11b38:	00200e93          	li	t4,2
   11b3c:	01200e13          	li	t3,18
   11b40:	03d11463          	bne	sp,t4,11b68 <fail>

00011b44 <test_19>:
   11b44:	7ffee197          	auipc	gp,0x7ffee
   11b48:	4bc18193          	addi	gp,gp,1212 # 80000000 <_ram_start>
   11b4c:	00019103          	lh	sp,0(gp)
   11b50:	00000013          	nop
   11b54:	00200113          	li	sp,2
   11b58:	00200e93          	li	t4,2
   11b5c:	01300e13          	li	t3,19
   11b60:	01d11463          	bne	sp,t4,11b68 <fail>
   11b64:	05c01063          	bne	zero,t3,11ba4 <pass>

00011b68 <fail>:
   11b68:	0ff00513          	li	a0,255

00011b6c <.delay_fail>:
   11b6c:	fff50513          	addi	a0,a0,-1
   11b70:	fe051ee3          	bnez	a0,11b6c <.delay_fail>
   11b74:	02000537          	lui	a0,0x2000
   11b78:	04500593          	li	a1,69
   11b7c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   11b80:	05200613          	li	a2,82
   11b84:	00c52023          	sw	a2,0(a0)
   11b88:	00c52023          	sw	a2,0(a0)
   11b8c:	04f00693          	li	a3,79
   11b90:	00d52023          	sw	a3,0(a0)
   11b94:	00c52023          	sw	a2,0(a0)
   11b98:	02000713          	li	a4,32
   11b9c:	00e52023          	sw	a4,0(a0)
   11ba0:	d68fe06f          	j	10108 <lh_ret>

00011ba4 <pass>:
   11ba4:	0ff00513          	li	a0,255

00011ba8 <.delay_ok>:
   11ba8:	fff50513          	addi	a0,a0,-1
   11bac:	fe051ee3          	bnez	a0,11ba8 <.delay_ok>
   11bb0:	02000537          	lui	a0,0x2000
   11bb4:	04f00593          	li	a1,79
   11bb8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   11bbc:	04b00613          	li	a2,75
   11bc0:	00c52023          	sw	a2,0(a0)
   11bc4:	02000713          	li	a4,32
   11bc8:	00e52023          	sw	a4,0(a0)
   11bcc:	d3cfe06f          	j	10108 <lh_ret>

00011bd0 <bge>:
   11bd0:	00008537          	lui	a0,0x8
   11bd4:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   11bd8:	00a00693          	li	a3,10
   11bdc:	00100713          	li	a4,1

00011be0 <.delay_pr>:
   11be0:	fff50513          	addi	a0,a0,-1
   11be4:	fe051ee3          	bnez	a0,11be0 <.delay_pr>
   11be8:	00012537          	lui	a0,0x12
   11bec:	c0c50513          	addi	a0,a0,-1012 # 11c0c <.test_name>
   11bf0:	02000637          	lui	a2,0x2000

00011bf4 <.prname_next>:
   11bf4:	00050583          	lb	a1,0(a0)
   11bf8:	00058c63          	beqz	a1,11c10 <.prname_done>
   11bfc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   11c00:	00150513          	addi	a0,a0,1
   11c04:	40e686b3          	sub	a3,a3,a4
   11c08:	fedff06f          	j	11bf4 <.prname_next>

00011c0c <.test_name>:
   11c0c:	6762                	flw	fa4,24(sp)
   11c0e:	0065                	c.nop	25

00011c10 <.prname_done>:
   11c10:	02e00593          	li	a1,46

00011c14 <.loop>:
   11c14:	00b62023          	sw	a1,0(a2)
   11c18:	40e686b3          	sub	a3,a3,a4
   11c1c:	00068463          	beqz	a3,11c24 <test_2>
   11c20:	ff5ff0ef          	jal	ra,11c14 <.loop>

00011c24 <test_2>:
   11c24:	00200e13          	li	t3,2
   11c28:	00000093          	li	ra,0
   11c2c:	00000113          	li	sp,0
   11c30:	0020d663          	bge	ra,sp,11c3c <test_2+0x18>
   11c34:	31c01863          	bne	zero,t3,11f44 <fail>
   11c38:	01c01663          	bne	zero,t3,11c44 <test_3>
   11c3c:	fe20dee3          	bge	ra,sp,11c38 <test_2+0x14>
   11c40:	31c01263          	bne	zero,t3,11f44 <fail>

00011c44 <test_3>:
   11c44:	00300e13          	li	t3,3
   11c48:	00100093          	li	ra,1
   11c4c:	00100113          	li	sp,1
   11c50:	0020d663          	bge	ra,sp,11c5c <test_3+0x18>
   11c54:	2fc01863          	bne	zero,t3,11f44 <fail>
   11c58:	01c01663          	bne	zero,t3,11c64 <test_4>
   11c5c:	fe20dee3          	bge	ra,sp,11c58 <test_3+0x14>
   11c60:	2fc01263          	bne	zero,t3,11f44 <fail>

00011c64 <test_4>:
   11c64:	00400e13          	li	t3,4
   11c68:	fff00093          	li	ra,-1
   11c6c:	fff00113          	li	sp,-1
   11c70:	0020d663          	bge	ra,sp,11c7c <test_4+0x18>
   11c74:	2dc01863          	bne	zero,t3,11f44 <fail>
   11c78:	01c01663          	bne	zero,t3,11c84 <test_5>
   11c7c:	fe20dee3          	bge	ra,sp,11c78 <test_4+0x14>
   11c80:	2dc01263          	bne	zero,t3,11f44 <fail>

00011c84 <test_5>:
   11c84:	00500e13          	li	t3,5
   11c88:	00100093          	li	ra,1
   11c8c:	00000113          	li	sp,0
   11c90:	0020d663          	bge	ra,sp,11c9c <test_5+0x18>
   11c94:	2bc01863          	bne	zero,t3,11f44 <fail>
   11c98:	01c01663          	bne	zero,t3,11ca4 <test_6>
   11c9c:	fe20dee3          	bge	ra,sp,11c98 <test_5+0x14>
   11ca0:	2bc01263          	bne	zero,t3,11f44 <fail>

00011ca4 <test_6>:
   11ca4:	00600e13          	li	t3,6
   11ca8:	00100093          	li	ra,1
   11cac:	fff00113          	li	sp,-1
   11cb0:	0020d663          	bge	ra,sp,11cbc <test_6+0x18>
   11cb4:	29c01863          	bne	zero,t3,11f44 <fail>
   11cb8:	01c01663          	bne	zero,t3,11cc4 <test_7>
   11cbc:	fe20dee3          	bge	ra,sp,11cb8 <test_6+0x14>
   11cc0:	29c01263          	bne	zero,t3,11f44 <fail>

00011cc4 <test_7>:
   11cc4:	00700e13          	li	t3,7
   11cc8:	fff00093          	li	ra,-1
   11ccc:	ffe00113          	li	sp,-2
   11cd0:	0020d663          	bge	ra,sp,11cdc <test_7+0x18>
   11cd4:	27c01863          	bne	zero,t3,11f44 <fail>
   11cd8:	01c01663          	bne	zero,t3,11ce4 <test_8>
   11cdc:	fe20dee3          	bge	ra,sp,11cd8 <test_7+0x14>
   11ce0:	27c01263          	bne	zero,t3,11f44 <fail>

00011ce4 <test_8>:
   11ce4:	00800e13          	li	t3,8
   11ce8:	00000093          	li	ra,0
   11cec:	00100113          	li	sp,1
   11cf0:	0020d463          	bge	ra,sp,11cf8 <test_8+0x14>
   11cf4:	01c01463          	bne	zero,t3,11cfc <test_8+0x18>
   11cf8:	25c01663          	bne	zero,t3,11f44 <fail>
   11cfc:	fe20dee3          	bge	ra,sp,11cf8 <test_8+0x14>

00011d00 <test_9>:
   11d00:	00900e13          	li	t3,9
   11d04:	fff00093          	li	ra,-1
   11d08:	00100113          	li	sp,1
   11d0c:	0020d463          	bge	ra,sp,11d14 <test_9+0x14>
   11d10:	01c01463          	bne	zero,t3,11d18 <test_9+0x18>
   11d14:	23c01863          	bne	zero,t3,11f44 <fail>
   11d18:	fe20dee3          	bge	ra,sp,11d14 <test_9+0x14>

00011d1c <test_10>:
   11d1c:	00a00e13          	li	t3,10
   11d20:	ffe00093          	li	ra,-2
   11d24:	fff00113          	li	sp,-1
   11d28:	0020d463          	bge	ra,sp,11d30 <test_10+0x14>
   11d2c:	01c01463          	bne	zero,t3,11d34 <test_10+0x18>
   11d30:	21c01a63          	bne	zero,t3,11f44 <fail>
   11d34:	fe20dee3          	bge	ra,sp,11d30 <test_10+0x14>

00011d38 <test_11>:
   11d38:	00b00e13          	li	t3,11
   11d3c:	ffe00093          	li	ra,-2
   11d40:	00100113          	li	sp,1
   11d44:	0020d463          	bge	ra,sp,11d4c <test_11+0x14>
   11d48:	01c01463          	bne	zero,t3,11d50 <test_11+0x18>
   11d4c:	1fc01c63          	bne	zero,t3,11f44 <fail>
   11d50:	fe20dee3          	bge	ra,sp,11d4c <test_11+0x14>

00011d54 <test_12>:
   11d54:	00c00e13          	li	t3,12
   11d58:	00000213          	li	tp,0
   11d5c:	fff00093          	li	ra,-1
   11d60:	00000113          	li	sp,0
   11d64:	1e20d063          	bge	ra,sp,11f44 <fail>
   11d68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11d6c:	00200293          	li	t0,2
   11d70:	fe5216e3          	bne	tp,t0,11d5c <test_12+0x8>

00011d74 <test_13>:
   11d74:	00d00e13          	li	t3,13
   11d78:	00000213          	li	tp,0
   11d7c:	fff00093          	li	ra,-1
   11d80:	00000113          	li	sp,0
   11d84:	00000013          	nop
   11d88:	1a20de63          	bge	ra,sp,11f44 <fail>
   11d8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11d90:	00200293          	li	t0,2
   11d94:	fe5214e3          	bne	tp,t0,11d7c <test_13+0x8>

00011d98 <test_14>:
   11d98:	00e00e13          	li	t3,14
   11d9c:	00000213          	li	tp,0
   11da0:	fff00093          	li	ra,-1
   11da4:	00000113          	li	sp,0
   11da8:	00000013          	nop
   11dac:	00000013          	nop
   11db0:	1820da63          	bge	ra,sp,11f44 <fail>
   11db4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11db8:	00200293          	li	t0,2
   11dbc:	fe5212e3          	bne	tp,t0,11da0 <test_14+0x8>

00011dc0 <test_15>:
   11dc0:	00f00e13          	li	t3,15
   11dc4:	00000213          	li	tp,0
   11dc8:	fff00093          	li	ra,-1
   11dcc:	00000013          	nop
   11dd0:	00000113          	li	sp,0
   11dd4:	1620d863          	bge	ra,sp,11f44 <fail>
   11dd8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ddc:	00200293          	li	t0,2
   11de0:	fe5214e3          	bne	tp,t0,11dc8 <test_15+0x8>

00011de4 <test_16>:
   11de4:	01000e13          	li	t3,16
   11de8:	00000213          	li	tp,0
   11dec:	fff00093          	li	ra,-1
   11df0:	00000013          	nop
   11df4:	00000113          	li	sp,0
   11df8:	00000013          	nop
   11dfc:	1420d463          	bge	ra,sp,11f44 <fail>
   11e00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11e04:	00200293          	li	t0,2
   11e08:	fe5212e3          	bne	tp,t0,11dec <test_16+0x8>

00011e0c <test_17>:
   11e0c:	01100e13          	li	t3,17
   11e10:	00000213          	li	tp,0
   11e14:	fff00093          	li	ra,-1
   11e18:	00000013          	nop
   11e1c:	00000013          	nop
   11e20:	00000113          	li	sp,0
   11e24:	1220d063          	bge	ra,sp,11f44 <fail>
   11e28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11e2c:	00200293          	li	t0,2
   11e30:	fe5212e3          	bne	tp,t0,11e14 <test_17+0x8>

00011e34 <test_18>:
   11e34:	01200e13          	li	t3,18
   11e38:	00000213          	li	tp,0
   11e3c:	fff00093          	li	ra,-1
   11e40:	00000113          	li	sp,0
   11e44:	1020d063          	bge	ra,sp,11f44 <fail>
   11e48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11e4c:	00200293          	li	t0,2
   11e50:	fe5216e3          	bne	tp,t0,11e3c <test_18+0x8>

00011e54 <test_19>:
   11e54:	01300e13          	li	t3,19
   11e58:	00000213          	li	tp,0
   11e5c:	fff00093          	li	ra,-1
   11e60:	00000113          	li	sp,0
   11e64:	00000013          	nop
   11e68:	0c20de63          	bge	ra,sp,11f44 <fail>
   11e6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11e70:	00200293          	li	t0,2
   11e74:	fe5214e3          	bne	tp,t0,11e5c <test_19+0x8>

00011e78 <test_20>:
   11e78:	01400e13          	li	t3,20
   11e7c:	00000213          	li	tp,0
   11e80:	fff00093          	li	ra,-1
   11e84:	00000113          	li	sp,0
   11e88:	00000013          	nop
   11e8c:	00000013          	nop
   11e90:	0a20da63          	bge	ra,sp,11f44 <fail>
   11e94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11e98:	00200293          	li	t0,2
   11e9c:	fe5212e3          	bne	tp,t0,11e80 <test_20+0x8>

00011ea0 <test_21>:
   11ea0:	01500e13          	li	t3,21
   11ea4:	00000213          	li	tp,0
   11ea8:	fff00093          	li	ra,-1
   11eac:	00000013          	nop
   11eb0:	00000113          	li	sp,0
   11eb4:	0820d863          	bge	ra,sp,11f44 <fail>
   11eb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ebc:	00200293          	li	t0,2
   11ec0:	fe5214e3          	bne	tp,t0,11ea8 <test_21+0x8>

00011ec4 <test_22>:
   11ec4:	01600e13          	li	t3,22
   11ec8:	00000213          	li	tp,0
   11ecc:	fff00093          	li	ra,-1
   11ed0:	00000013          	nop
   11ed4:	00000113          	li	sp,0
   11ed8:	00000013          	nop
   11edc:	0620d463          	bge	ra,sp,11f44 <fail>
   11ee0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ee4:	00200293          	li	t0,2
   11ee8:	fe5212e3          	bne	tp,t0,11ecc <test_22+0x8>

00011eec <test_23>:
   11eec:	01700e13          	li	t3,23
   11ef0:	00000213          	li	tp,0
   11ef4:	fff00093          	li	ra,-1
   11ef8:	00000013          	nop
   11efc:	00000013          	nop
   11f00:	00000113          	li	sp,0
   11f04:	0420d063          	bge	ra,sp,11f44 <fail>
   11f08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11f0c:	00200293          	li	t0,2
   11f10:	fe5212e3          	bne	tp,t0,11ef4 <test_23+0x8>

00011f14 <test_24>:
   11f14:	00100093          	li	ra,1
   11f18:	0000da63          	bgez	ra,11f2c <test_24+0x18>
   11f1c:	00108093          	addi	ra,ra,1
   11f20:	00108093          	addi	ra,ra,1
   11f24:	00108093          	addi	ra,ra,1
   11f28:	00108093          	addi	ra,ra,1
   11f2c:	00108093          	addi	ra,ra,1
   11f30:	00108093          	addi	ra,ra,1
   11f34:	00300e93          	li	t4,3
   11f38:	01800e13          	li	t3,24
   11f3c:	01d09463          	bne	ra,t4,11f44 <fail>
   11f40:	05c01063          	bne	zero,t3,11f80 <pass>

00011f44 <fail>:
   11f44:	0ff00513          	li	a0,255

00011f48 <.delay_fail>:
   11f48:	fff50513          	addi	a0,a0,-1
   11f4c:	fe051ee3          	bnez	a0,11f48 <.delay_fail>
   11f50:	02000537          	lui	a0,0x2000
   11f54:	04500593          	li	a1,69
   11f58:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   11f5c:	05200613          	li	a2,82
   11f60:	00c52023          	sw	a2,0(a0)
   11f64:	00c52023          	sw	a2,0(a0)
   11f68:	04f00693          	li	a3,79
   11f6c:	00d52023          	sw	a3,0(a0)
   11f70:	00c52023          	sw	a2,0(a0)
   11f74:	02000713          	li	a4,32
   11f78:	00e52023          	sw	a4,0(a0)
   11f7c:	978fe06f          	j	100f4 <bge_ret>

00011f80 <pass>:
   11f80:	0ff00513          	li	a0,255

00011f84 <.delay_ok>:
   11f84:	fff50513          	addi	a0,a0,-1
   11f88:	fe051ee3          	bnez	a0,11f84 <.delay_ok>
   11f8c:	02000537          	lui	a0,0x2000
   11f90:	04f00593          	li	a1,79
   11f94:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   11f98:	04b00613          	li	a2,75
   11f9c:	00c52023          	sw	a2,0(a0)
   11fa0:	02000713          	li	a4,32
   11fa4:	00e52023          	sw	a4,0(a0)
   11fa8:	94cfe06f          	j	100f4 <bge_ret>

00011fac <srai>:
   11fac:	00008537          	lui	a0,0x8
   11fb0:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   11fb4:	00a00693          	li	a3,10
   11fb8:	00100713          	li	a4,1

00011fbc <.delay_pr>:
   11fbc:	fff50513          	addi	a0,a0,-1
   11fc0:	fe051ee3          	bnez	a0,11fbc <.delay_pr>
   11fc4:	00012537          	lui	a0,0x12
   11fc8:	fe850513          	addi	a0,a0,-24 # 11fe8 <.test_name>
   11fcc:	02000637          	lui	a2,0x2000

00011fd0 <.prname_next>:
   11fd0:	00050583          	lb	a1,0(a0)
   11fd4:	00058e63          	beqz	a1,11ff0 <.prname_done>
   11fd8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   11fdc:	00150513          	addi	a0,a0,1
   11fe0:	40e686b3          	sub	a3,a3,a4
   11fe4:	fedff06f          	j	11fd0 <.prname_next>

00011fe8 <.test_name>:
   11fe8:	69617273          	csrrci	tp,0x696,2
   11fec:	0000                	unimp
	...

00011ff0 <.prname_done>:
   11ff0:	02e00593          	li	a1,46

00011ff4 <.loop>:
   11ff4:	00b62023          	sw	a1,0(a2)
   11ff8:	40e686b3          	sub	a3,a3,a4
   11ffc:	00068463          	beqz	a3,12004 <test_2>
   12000:	ff5ff0ef          	jal	ra,11ff4 <.loop>

00012004 <test_2>:
   12004:	00000093          	li	ra,0
   12008:	4000d193          	srai	gp,ra,0x0
   1200c:	00000e93          	li	t4,0
   12010:	00200e13          	li	t3,2
   12014:	2bd19463          	bne	gp,t4,122bc <fail>

00012018 <test_3>:
   12018:	800000b7          	lui	ra,0x80000
   1201c:	4010d193          	srai	gp,ra,0x1
   12020:	c0000eb7          	lui	t4,0xc0000
   12024:	00300e13          	li	t3,3
   12028:	29d19a63          	bne	gp,t4,122bc <fail>

0001202c <test_4>:
   1202c:	800000b7          	lui	ra,0x80000
   12030:	4070d193          	srai	gp,ra,0x7
   12034:	ff000eb7          	lui	t4,0xff000
   12038:	00400e13          	li	t3,4
   1203c:	29d19063          	bne	gp,t4,122bc <fail>

00012040 <test_5>:
   12040:	800000b7          	lui	ra,0x80000
   12044:	40e0d193          	srai	gp,ra,0xe
   12048:	fffe0eb7          	lui	t4,0xfffe0
   1204c:	00500e13          	li	t3,5
   12050:	27d19663          	bne	gp,t4,122bc <fail>

00012054 <test_6>:
   12054:	800000b7          	lui	ra,0x80000
   12058:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   1205c:	41f0d193          	srai	gp,ra,0x1f
   12060:	fff00e93          	li	t4,-1
   12064:	00600e13          	li	t3,6
   12068:	25d19a63          	bne	gp,t4,122bc <fail>

0001206c <test_7>:
   1206c:	800000b7          	lui	ra,0x80000
   12070:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   12074:	4000d193          	srai	gp,ra,0x0
   12078:	80000eb7          	lui	t4,0x80000
   1207c:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   12080:	00700e13          	li	t3,7
   12084:	23d19c63          	bne	gp,t4,122bc <fail>

00012088 <test_8>:
   12088:	800000b7          	lui	ra,0x80000
   1208c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   12090:	4010d193          	srai	gp,ra,0x1
   12094:	40000eb7          	lui	t4,0x40000
   12098:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe5897>
   1209c:	00800e13          	li	t3,8
   120a0:	21d19e63          	bne	gp,t4,122bc <fail>

000120a4 <test_9>:
   120a4:	800000b7          	lui	ra,0x80000
   120a8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   120ac:	4070d193          	srai	gp,ra,0x7
   120b0:	01000eb7          	lui	t4,0x1000
   120b4:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe5897>
   120b8:	00900e13          	li	t3,9
   120bc:	21d19063          	bne	gp,t4,122bc <fail>

000120c0 <test_10>:
   120c0:	800000b7          	lui	ra,0x80000
   120c4:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   120c8:	40e0d193          	srai	gp,ra,0xe
   120cc:	00020eb7          	lui	t4,0x20
   120d0:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   120d4:	00a00e13          	li	t3,10
   120d8:	1fd19263          	bne	gp,t4,122bc <fail>

000120dc <test_11>:
   120dc:	800000b7          	lui	ra,0x80000
   120e0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   120e4:	41f0d193          	srai	gp,ra,0x1f
   120e8:	00000e93          	li	t4,0
   120ec:	00b00e13          	li	t3,11
   120f0:	1dd19663          	bne	gp,t4,122bc <fail>

000120f4 <test_12>:
   120f4:	818180b7          	lui	ra,0x81818
   120f8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   120fc:	4000d193          	srai	gp,ra,0x0
   12100:	81818eb7          	lui	t4,0x81818
   12104:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   12108:	00c00e13          	li	t3,12
   1210c:	1bd19863          	bne	gp,t4,122bc <fail>

00012110 <test_13>:
   12110:	818180b7          	lui	ra,0x81818
   12114:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   12118:	4010d193          	srai	gp,ra,0x1
   1211c:	c0c0ceb7          	lui	t4,0xc0c0c
   12120:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   12124:	00d00e13          	li	t3,13
   12128:	19d19a63          	bne	gp,t4,122bc <fail>

0001212c <test_14>:
   1212c:	818180b7          	lui	ra,0x81818
   12130:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   12134:	4070d193          	srai	gp,ra,0x7
   12138:	ff030eb7          	lui	t4,0xff030
   1213c:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   12140:	00e00e13          	li	t3,14
   12144:	17d19c63          	bne	gp,t4,122bc <fail>

00012148 <test_15>:
   12148:	818180b7          	lui	ra,0x81818
   1214c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   12150:	40e0d193          	srai	gp,ra,0xe
   12154:	fffe0eb7          	lui	t4,0xfffe0
   12158:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   1215c:	00f00e13          	li	t3,15
   12160:	15d19e63          	bne	gp,t4,122bc <fail>

00012164 <test_16>:
   12164:	818180b7          	lui	ra,0x81818
   12168:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   1216c:	41f0d193          	srai	gp,ra,0x1f
   12170:	fff00e93          	li	t4,-1
   12174:	01000e13          	li	t3,16
   12178:	15d19263          	bne	gp,t4,122bc <fail>

0001217c <test_17>:
   1217c:	800000b7          	lui	ra,0x80000
   12180:	4070d093          	srai	ra,ra,0x7
   12184:	ff000eb7          	lui	t4,0xff000
   12188:	01100e13          	li	t3,17
   1218c:	13d09863          	bne	ra,t4,122bc <fail>

00012190 <test_18>:
   12190:	00000213          	li	tp,0
   12194:	800000b7          	lui	ra,0x80000
   12198:	4070d193          	srai	gp,ra,0x7
   1219c:	00018313          	mv	t1,gp
   121a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121a4:	00200293          	li	t0,2
   121a8:	fe5216e3          	bne	tp,t0,12194 <test_18+0x4>
   121ac:	ff000eb7          	lui	t4,0xff000
   121b0:	01200e13          	li	t3,18
   121b4:	11d31463          	bne	t1,t4,122bc <fail>

000121b8 <test_19>:
   121b8:	00000213          	li	tp,0
   121bc:	800000b7          	lui	ra,0x80000
   121c0:	40e0d193          	srai	gp,ra,0xe
   121c4:	00000013          	nop
   121c8:	00018313          	mv	t1,gp
   121cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121d0:	00200293          	li	t0,2
   121d4:	fe5214e3          	bne	tp,t0,121bc <test_19+0x4>
   121d8:	fffe0eb7          	lui	t4,0xfffe0
   121dc:	01300e13          	li	t3,19
   121e0:	0dd31e63          	bne	t1,t4,122bc <fail>

000121e4 <test_20>:
   121e4:	00000213          	li	tp,0
   121e8:	800000b7          	lui	ra,0x80000
   121ec:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   121f0:	41f0d193          	srai	gp,ra,0x1f
   121f4:	00000013          	nop
   121f8:	00000013          	nop
   121fc:	00018313          	mv	t1,gp
   12200:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12204:	00200293          	li	t0,2
   12208:	fe5210e3          	bne	tp,t0,121e8 <test_20+0x4>
   1220c:	fff00e93          	li	t4,-1
   12210:	01400e13          	li	t3,20
   12214:	0bd31463          	bne	t1,t4,122bc <fail>

00012218 <test_21>:
   12218:	00000213          	li	tp,0
   1221c:	800000b7          	lui	ra,0x80000
   12220:	4070d193          	srai	gp,ra,0x7
   12224:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12228:	00200293          	li	t0,2
   1222c:	fe5218e3          	bne	tp,t0,1221c <test_21+0x4>
   12230:	ff000eb7          	lui	t4,0xff000
   12234:	01500e13          	li	t3,21
   12238:	09d19263          	bne	gp,t4,122bc <fail>

0001223c <test_22>:
   1223c:	00000213          	li	tp,0
   12240:	800000b7          	lui	ra,0x80000
   12244:	00000013          	nop
   12248:	40e0d193          	srai	gp,ra,0xe
   1224c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12250:	00200293          	li	t0,2
   12254:	fe5216e3          	bne	tp,t0,12240 <test_22+0x4>
   12258:	fffe0eb7          	lui	t4,0xfffe0
   1225c:	01600e13          	li	t3,22
   12260:	05d19e63          	bne	gp,t4,122bc <fail>

00012264 <test_23>:
   12264:	00000213          	li	tp,0
   12268:	800000b7          	lui	ra,0x80000
   1226c:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   12270:	00000013          	nop
   12274:	00000013          	nop
   12278:	41f0d193          	srai	gp,ra,0x1f
   1227c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12280:	00200293          	li	t0,2
   12284:	fe5212e3          	bne	tp,t0,12268 <test_23+0x4>
   12288:	fff00e93          	li	t4,-1
   1228c:	01700e13          	li	t3,23
   12290:	03d19663          	bne	gp,t4,122bc <fail>

00012294 <test_24>:
   12294:	41f05093          	srai	ra,zero,0x1f
   12298:	00000e93          	li	t4,0
   1229c:	01800e13          	li	t3,24
   122a0:	01d09e63          	bne	ra,t4,122bc <fail>

000122a4 <test_25>:
   122a4:	02100093          	li	ra,33
   122a8:	4140d013          	srai	zero,ra,0x14
   122ac:	00000e93          	li	t4,0
   122b0:	01900e13          	li	t3,25
   122b4:	01d01463          	bne	zero,t4,122bc <fail>
   122b8:	05c01063          	bne	zero,t3,122f8 <pass>

000122bc <fail>:
   122bc:	0ff00513          	li	a0,255

000122c0 <.delay_fail>:
   122c0:	fff50513          	addi	a0,a0,-1
   122c4:	fe051ee3          	bnez	a0,122c0 <.delay_fail>
   122c8:	02000537          	lui	a0,0x2000
   122cc:	04500593          	li	a1,69
   122d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   122d4:	05200613          	li	a2,82
   122d8:	00c52023          	sw	a2,0(a0)
   122dc:	00c52023          	sw	a2,0(a0)
   122e0:	04f00693          	li	a3,79
   122e4:	00d52023          	sw	a3,0(a0)
   122e8:	00c52023          	sw	a2,0(a0)
   122ec:	02000713          	li	a4,32
   122f0:	00e52023          	sw	a4,0(a0)
   122f4:	e59fd06f          	j	1014c <srai_ret>

000122f8 <pass>:
   122f8:	0ff00513          	li	a0,255

000122fc <.delay_ok>:
   122fc:	fff50513          	addi	a0,a0,-1
   12300:	fe051ee3          	bnez	a0,122fc <.delay_ok>
   12304:	02000537          	lui	a0,0x2000
   12308:	04f00593          	li	a1,79
   1230c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   12310:	04b00613          	li	a2,75
   12314:	00c52023          	sw	a2,0(a0)
   12318:	02000713          	li	a4,32
   1231c:	00e52023          	sw	a4,0(a0)
   12320:	e2dfd06f          	j	1014c <srai_ret>

00012324 <sdram>:
   12324:	00008537          	lui	a0,0x8
   12328:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   1232c:	00a00693          	li	a3,10
   12330:	00100713          	li	a4,1

00012334 <.delay_pr>:
   12334:	fff50513          	addi	a0,a0,-1
   12338:	fe051ee3          	bnez	a0,12334 <.delay_pr>
   1233c:	00012537          	lui	a0,0x12
   12340:	36050513          	addi	a0,a0,864 # 12360 <.test_name>
   12344:	02000637          	lui	a2,0x2000

00012348 <.prname_next>:
   12348:	00050583          	lb	a1,0(a0)
   1234c:	00058e63          	beqz	a1,12368 <.prname_done>
   12350:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   12354:	00150513          	addi	a0,a0,1
   12358:	40e686b3          	sub	a3,a3,a4
   1235c:	fedff06f          	j	12348 <.prname_next>

00012360 <.test_name>:
   12360:	61726473          	csrrsi	s0,0x617,4
   12364:	006d                	c.nop	27
	...

00012368 <.prname_done>:
   12368:	02e00593          	li	a1,46

0001236c <.loop>:
   1236c:	00b62023          	sw	a1,0(a2)
   12370:	40e686b3          	sub	a3,a3,a4
   12374:	00068463          	beqz	a3,1237c <.endloop>
   12378:	ff5ff0ef          	jal	ra,1236c <.loop>

0001237c <.endloop>:
   1237c:	80200537          	lui	a0,0x80200
   12380:	000402b7          	lui	t0,0x40
   12384:	00400413          	li	s0,4

00012388 <sw_8020>:
   12388:	00552023          	sw	t0,0(a0) # 80200000 <_edata+0x1fff90>
   1238c:	408282b3          	sub	t0,t0,s0
   12390:	00850533          	add	a0,a0,s0
   12394:	fe02dae3          	bgez	t0,12388 <sw_8020>
   12398:	80200537          	lui	a0,0x80200
   1239c:	00040337          	lui	t1,0x40

000123a0 <lw_8020>:
   123a0:	00052283          	lw	t0,0(a0) # 80200000 <_edata+0x1fff90>
   123a4:	00531c63          	bne	t1,t0,123bc <fail>
   123a8:	00850533          	add	a0,a0,s0
   123ac:	40830333          	sub	t1,t1,s0
   123b0:	fe0358e3          	bgez	t1,123a0 <lw_8020>
   123b4:	0440006f          	j	123f8 <pass>
   123b8:	05c01063          	bne	zero,t3,123f8 <pass>

000123bc <fail>:
   123bc:	0ff00513          	li	a0,255

000123c0 <.delay_fail>:
   123c0:	fff50513          	addi	a0,a0,-1
   123c4:	fe051ee3          	bnez	a0,123c0 <.delay_fail>
   123c8:	02000537          	lui	a0,0x2000
   123cc:	04500593          	li	a1,69
   123d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   123d4:	05200613          	li	a2,82
   123d8:	00c52023          	sw	a2,0(a0)
   123dc:	00c52023          	sw	a2,0(a0)
   123e0:	04f00693          	li	a3,79
   123e4:	00d52023          	sw	a3,0(a0)
   123e8:	00c52023          	sw	a2,0(a0)
   123ec:	02000713          	li	a4,32
   123f0:	00e52023          	sw	a4,0(a0)
   123f4:	db5fd06f          	j	101a8 <sdram_ret>

000123f8 <pass>:
   123f8:	0ff00513          	li	a0,255

000123fc <.delay_ok>:
   123fc:	fff50513          	addi	a0,a0,-1
   12400:	fe051ee3          	bnez	a0,123fc <.delay_ok>
   12404:	02000537          	lui	a0,0x2000
   12408:	04f00593          	li	a1,79
   1240c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   12410:	04b00613          	li	a2,75
   12414:	00c52023          	sw	a2,0(a0)
   12418:	02000713          	li	a4,32
   1241c:	00e52023          	sw	a4,0(a0)
   12420:	d89fd06f          	j	101a8 <sdram_ret>

00012424 <mul>:
   12424:	00008537          	lui	a0,0x8
   12428:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   1242c:	00a00693          	li	a3,10
   12430:	00100713          	li	a4,1

00012434 <.delay_pr>:
   12434:	fff50513          	addi	a0,a0,-1
   12438:	fe051ee3          	bnez	a0,12434 <.delay_pr>
   1243c:	00012537          	lui	a0,0x12
   12440:	46050513          	addi	a0,a0,1120 # 12460 <.test_name>
   12444:	02000637          	lui	a2,0x2000

00012448 <.prname_next>:
   12448:	00050583          	lb	a1,0(a0)
   1244c:	00058c63          	beqz	a1,12464 <.prname_done>
   12450:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   12454:	00150513          	addi	a0,a0,1
   12458:	40e686b3          	sub	a3,a3,a4
   1245c:	fedff06f          	j	12448 <.prname_next>

00012460 <.test_name>:
   12460:	756d                	lui	a0,0xffffb
   12462:	006c                	addi	a1,sp,12

00012464 <.prname_done>:
   12464:	02e00593          	li	a1,46

00012468 <.loop>:
   12468:	00b62023          	sw	a1,0(a2)
   1246c:	40e686b3          	sub	a3,a3,a4
   12470:	00068463          	beqz	a3,12478 <test_32>
   12474:	ff5ff0ef          	jal	ra,12468 <.loop>

00012478 <test_32>:
   12478:	000080b7          	lui	ra,0x8
   1247c:	e0008093          	addi	ra,ra,-512 # 7e00 <_start-0x8200>
   12480:	b6db7137          	lui	sp,0xb6db7
   12484:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   12488:	022081b3          	mul	gp,ra,sp
   1248c:	00001eb7          	lui	t4,0x1
   12490:	200e8e93          	addi	t4,t4,512 # 1200 <_start-0xee00>
   12494:	02000e13          	li	t3,32
   12498:	4bd19463          	bne	gp,t4,12940 <fail>

0001249c <test_33>:
   1249c:	000080b7          	lui	ra,0x8
   124a0:	fc008093          	addi	ra,ra,-64 # 7fc0 <_start-0x8040>
   124a4:	b6db7137          	lui	sp,0xb6db7
   124a8:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   124ac:	022081b3          	mul	gp,ra,sp
   124b0:	00001eb7          	lui	t4,0x1
   124b4:	240e8e93          	addi	t4,t4,576 # 1240 <_start-0xedc0>
   124b8:	02100e13          	li	t3,33
   124bc:	49d19263          	bne	gp,t4,12940 <fail>

000124c0 <test_2>:
   124c0:	00000093          	li	ra,0
   124c4:	00000113          	li	sp,0
   124c8:	022081b3          	mul	gp,ra,sp
   124cc:	00000e93          	li	t4,0
   124d0:	00200e13          	li	t3,2
   124d4:	47d19663          	bne	gp,t4,12940 <fail>

000124d8 <test_3>:
   124d8:	00100093          	li	ra,1
   124dc:	00100113          	li	sp,1
   124e0:	022081b3          	mul	gp,ra,sp
   124e4:	00100e93          	li	t4,1
   124e8:	00300e13          	li	t3,3
   124ec:	45d19a63          	bne	gp,t4,12940 <fail>

000124f0 <test_4>:
   124f0:	00300093          	li	ra,3
   124f4:	00700113          	li	sp,7
   124f8:	022081b3          	mul	gp,ra,sp
   124fc:	01500e93          	li	t4,21
   12500:	00400e13          	li	t3,4
   12504:	43d19e63          	bne	gp,t4,12940 <fail>

00012508 <test_5>:
   12508:	00000093          	li	ra,0
   1250c:	ffff8137          	lui	sp,0xffff8
   12510:	022081b3          	mul	gp,ra,sp
   12514:	00000e93          	li	t4,0
   12518:	00500e13          	li	t3,5
   1251c:	43d19263          	bne	gp,t4,12940 <fail>

00012520 <test_6>:
   12520:	800000b7          	lui	ra,0x80000
   12524:	00000113          	li	sp,0
   12528:	022081b3          	mul	gp,ra,sp
   1252c:	00000e93          	li	t4,0
   12530:	00600e13          	li	t3,6
   12534:	41d19663          	bne	gp,t4,12940 <fail>

00012538 <test_7>:
   12538:	800000b7          	lui	ra,0x80000
   1253c:	ffff8137          	lui	sp,0xffff8
   12540:	022081b3          	mul	gp,ra,sp
   12544:	00000e93          	li	t4,0
   12548:	00700e13          	li	t3,7
   1254c:	3fd19a63          	bne	gp,t4,12940 <fail>

00012550 <test_30>:
   12550:	aaaab0b7          	lui	ra,0xaaaab
   12554:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   12558:	00030137          	lui	sp,0x30
   1255c:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15715>
   12560:	022081b3          	mul	gp,ra,sp
   12564:	00010eb7          	lui	t4,0x10
   12568:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   1256c:	01e00e13          	li	t3,30
   12570:	3dd19863          	bne	gp,t4,12940 <fail>

00012574 <test_31>:
   12574:	000300b7          	lui	ra,0x30
   12578:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15715>
   1257c:	aaaab137          	lui	sp,0xaaaab
   12580:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   12584:	022081b3          	mul	gp,ra,sp
   12588:	00010eb7          	lui	t4,0x10
   1258c:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12590:	01f00e13          	li	t3,31
   12594:	3bd19663          	bne	gp,t4,12940 <fail>

00012598 <test_34>:
   12598:	ff0000b7          	lui	ra,0xff000
   1259c:	ff000137          	lui	sp,0xff000
   125a0:	022081b3          	mul	gp,ra,sp
   125a4:	00000e93          	li	t4,0
   125a8:	02200e13          	li	t3,34
   125ac:	39d19a63          	bne	gp,t4,12940 <fail>

000125b0 <test_35>:
   125b0:	fff00093          	li	ra,-1
   125b4:	fff00113          	li	sp,-1
   125b8:	022081b3          	mul	gp,ra,sp
   125bc:	00100e93          	li	t4,1
   125c0:	02300e13          	li	t3,35
   125c4:	37d19e63          	bne	gp,t4,12940 <fail>

000125c8 <test_36>:
   125c8:	fff00093          	li	ra,-1
   125cc:	00100113          	li	sp,1
   125d0:	022081b3          	mul	gp,ra,sp
   125d4:	fff00e93          	li	t4,-1
   125d8:	02400e13          	li	t3,36
   125dc:	37d19263          	bne	gp,t4,12940 <fail>

000125e0 <test_37>:
   125e0:	00100093          	li	ra,1
   125e4:	fff00113          	li	sp,-1
   125e8:	022081b3          	mul	gp,ra,sp
   125ec:	fff00e93          	li	t4,-1
   125f0:	02500e13          	li	t3,37
   125f4:	35d19663          	bne	gp,t4,12940 <fail>

000125f8 <test_8>:
   125f8:	00d00093          	li	ra,13
   125fc:	00b00113          	li	sp,11
   12600:	022080b3          	mul	ra,ra,sp
   12604:	08f00e93          	li	t4,143
   12608:	00800e13          	li	t3,8
   1260c:	33d09a63          	bne	ra,t4,12940 <fail>

00012610 <test_9>:
   12610:	00e00093          	li	ra,14
   12614:	00b00113          	li	sp,11
   12618:	02208133          	mul	sp,ra,sp
   1261c:	09a00e93          	li	t4,154
   12620:	00900e13          	li	t3,9
   12624:	31d11e63          	bne	sp,t4,12940 <fail>

00012628 <test_10>:
   12628:	00d00093          	li	ra,13
   1262c:	021080b3          	mul	ra,ra,ra
   12630:	0a900e93          	li	t4,169
   12634:	00a00e13          	li	t3,10
   12638:	31d09463          	bne	ra,t4,12940 <fail>

0001263c <test_11>:
   1263c:	00000213          	li	tp,0
   12640:	00d00093          	li	ra,13
   12644:	00b00113          	li	sp,11
   12648:	022081b3          	mul	gp,ra,sp
   1264c:	00018313          	mv	t1,gp
   12650:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12654:	00200293          	li	t0,2
   12658:	fe5214e3          	bne	tp,t0,12640 <test_11+0x4>
   1265c:	08f00e93          	li	t4,143
   12660:	00b00e13          	li	t3,11
   12664:	2dd31e63          	bne	t1,t4,12940 <fail>

00012668 <test_12>:
   12668:	00000213          	li	tp,0
   1266c:	00e00093          	li	ra,14
   12670:	00b00113          	li	sp,11
   12674:	022081b3          	mul	gp,ra,sp
   12678:	00000013          	nop
   1267c:	00018313          	mv	t1,gp
   12680:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12684:	00200293          	li	t0,2
   12688:	fe5212e3          	bne	tp,t0,1266c <test_12+0x4>
   1268c:	09a00e93          	li	t4,154
   12690:	00c00e13          	li	t3,12
   12694:	2bd31663          	bne	t1,t4,12940 <fail>

00012698 <test_13>:
   12698:	00000213          	li	tp,0
   1269c:	00f00093          	li	ra,15
   126a0:	00b00113          	li	sp,11
   126a4:	022081b3          	mul	gp,ra,sp
   126a8:	00000013          	nop
   126ac:	00000013          	nop
   126b0:	00018313          	mv	t1,gp
   126b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126b8:	00200293          	li	t0,2
   126bc:	fe5210e3          	bne	tp,t0,1269c <test_13+0x4>
   126c0:	0a500e93          	li	t4,165
   126c4:	00d00e13          	li	t3,13
   126c8:	27d31c63          	bne	t1,t4,12940 <fail>

000126cc <test_14>:
   126cc:	00000213          	li	tp,0
   126d0:	00d00093          	li	ra,13
   126d4:	00b00113          	li	sp,11
   126d8:	022081b3          	mul	gp,ra,sp
   126dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126e0:	00200293          	li	t0,2
   126e4:	fe5216e3          	bne	tp,t0,126d0 <test_14+0x4>
   126e8:	08f00e93          	li	t4,143
   126ec:	00e00e13          	li	t3,14
   126f0:	25d19863          	bne	gp,t4,12940 <fail>

000126f4 <test_15>:
   126f4:	00000213          	li	tp,0
   126f8:	00e00093          	li	ra,14
   126fc:	00b00113          	li	sp,11
   12700:	00000013          	nop
   12704:	022081b3          	mul	gp,ra,sp
   12708:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1270c:	00200293          	li	t0,2
   12710:	fe5214e3          	bne	tp,t0,126f8 <test_15+0x4>
   12714:	09a00e93          	li	t4,154
   12718:	00f00e13          	li	t3,15
   1271c:	23d19263          	bne	gp,t4,12940 <fail>

00012720 <test_16>:
   12720:	00000213          	li	tp,0
   12724:	00f00093          	li	ra,15
   12728:	00b00113          	li	sp,11
   1272c:	00000013          	nop
   12730:	00000013          	nop
   12734:	022081b3          	mul	gp,ra,sp
   12738:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1273c:	00200293          	li	t0,2
   12740:	fe5212e3          	bne	tp,t0,12724 <test_16+0x4>
   12744:	0a500e93          	li	t4,165
   12748:	01000e13          	li	t3,16
   1274c:	1fd19a63          	bne	gp,t4,12940 <fail>

00012750 <test_17>:
   12750:	00000213          	li	tp,0
   12754:	00d00093          	li	ra,13
   12758:	00000013          	nop
   1275c:	00b00113          	li	sp,11
   12760:	022081b3          	mul	gp,ra,sp
   12764:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12768:	00200293          	li	t0,2
   1276c:	fe5214e3          	bne	tp,t0,12754 <test_17+0x4>
   12770:	08f00e93          	li	t4,143
   12774:	01100e13          	li	t3,17
   12778:	1dd19463          	bne	gp,t4,12940 <fail>

0001277c <test_18>:
   1277c:	00000213          	li	tp,0
   12780:	00e00093          	li	ra,14
   12784:	00000013          	nop
   12788:	00b00113          	li	sp,11
   1278c:	00000013          	nop
   12790:	022081b3          	mul	gp,ra,sp
   12794:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12798:	00200293          	li	t0,2
   1279c:	fe5212e3          	bne	tp,t0,12780 <test_18+0x4>
   127a0:	09a00e93          	li	t4,154
   127a4:	01200e13          	li	t3,18
   127a8:	19d19c63          	bne	gp,t4,12940 <fail>

000127ac <test_19>:
   127ac:	00000213          	li	tp,0
   127b0:	00f00093          	li	ra,15
   127b4:	00000013          	nop
   127b8:	00000013          	nop
   127bc:	00b00113          	li	sp,11
   127c0:	022081b3          	mul	gp,ra,sp
   127c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   127c8:	00200293          	li	t0,2
   127cc:	fe5212e3          	bne	tp,t0,127b0 <test_19+0x4>
   127d0:	0a500e93          	li	t4,165
   127d4:	01300e13          	li	t3,19
   127d8:	17d19463          	bne	gp,t4,12940 <fail>

000127dc <test_20>:
   127dc:	00000213          	li	tp,0
   127e0:	00b00113          	li	sp,11
   127e4:	00d00093          	li	ra,13
   127e8:	022081b3          	mul	gp,ra,sp
   127ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   127f0:	00200293          	li	t0,2
   127f4:	fe5216e3          	bne	tp,t0,127e0 <test_20+0x4>
   127f8:	08f00e93          	li	t4,143
   127fc:	01400e13          	li	t3,20
   12800:	15d19063          	bne	gp,t4,12940 <fail>

00012804 <test_21>:
   12804:	00000213          	li	tp,0
   12808:	00b00113          	li	sp,11
   1280c:	00e00093          	li	ra,14
   12810:	00000013          	nop
   12814:	022081b3          	mul	gp,ra,sp
   12818:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1281c:	00200293          	li	t0,2
   12820:	fe5214e3          	bne	tp,t0,12808 <test_21+0x4>
   12824:	09a00e93          	li	t4,154
   12828:	01500e13          	li	t3,21
   1282c:	11d19a63          	bne	gp,t4,12940 <fail>

00012830 <test_22>:
   12830:	00000213          	li	tp,0
   12834:	00b00113          	li	sp,11
   12838:	00f00093          	li	ra,15
   1283c:	00000013          	nop
   12840:	00000013          	nop
   12844:	022081b3          	mul	gp,ra,sp
   12848:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1284c:	00200293          	li	t0,2
   12850:	fe5212e3          	bne	tp,t0,12834 <test_22+0x4>
   12854:	0a500e93          	li	t4,165
   12858:	01600e13          	li	t3,22
   1285c:	0fd19263          	bne	gp,t4,12940 <fail>

00012860 <test_23>:
   12860:	00000213          	li	tp,0
   12864:	00b00113          	li	sp,11
   12868:	00000013          	nop
   1286c:	00d00093          	li	ra,13
   12870:	022081b3          	mul	gp,ra,sp
   12874:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12878:	00200293          	li	t0,2
   1287c:	fe5214e3          	bne	tp,t0,12864 <test_23+0x4>
   12880:	08f00e93          	li	t4,143
   12884:	01700e13          	li	t3,23
   12888:	0bd19c63          	bne	gp,t4,12940 <fail>

0001288c <test_24>:
   1288c:	00000213          	li	tp,0
   12890:	00b00113          	li	sp,11
   12894:	00000013          	nop
   12898:	00e00093          	li	ra,14
   1289c:	00000013          	nop
   128a0:	022081b3          	mul	gp,ra,sp
   128a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   128a8:	00200293          	li	t0,2
   128ac:	fe5212e3          	bne	tp,t0,12890 <test_24+0x4>
   128b0:	09a00e93          	li	t4,154
   128b4:	01800e13          	li	t3,24
   128b8:	09d19463          	bne	gp,t4,12940 <fail>

000128bc <test_25>:
   128bc:	00000213          	li	tp,0
   128c0:	00b00113          	li	sp,11
   128c4:	00000013          	nop
   128c8:	00000013          	nop
   128cc:	00f00093          	li	ra,15
   128d0:	022081b3          	mul	gp,ra,sp
   128d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   128d8:	00200293          	li	t0,2
   128dc:	fe5212e3          	bne	tp,t0,128c0 <test_25+0x4>
   128e0:	0a500e93          	li	t4,165
   128e4:	01900e13          	li	t3,25
   128e8:	05d19c63          	bne	gp,t4,12940 <fail>

000128ec <test_26>:
   128ec:	01f00093          	li	ra,31
   128f0:	02100133          	mul	sp,zero,ra
   128f4:	00000e93          	li	t4,0
   128f8:	01a00e13          	li	t3,26
   128fc:	05d11263          	bne	sp,t4,12940 <fail>

00012900 <test_27>:
   12900:	02000093          	li	ra,32
   12904:	02008133          	mul	sp,ra,zero
   12908:	00000e93          	li	t4,0
   1290c:	01b00e13          	li	t3,27
   12910:	03d11863          	bne	sp,t4,12940 <fail>

00012914 <test_28>:
   12914:	020000b3          	mul	ra,zero,zero
   12918:	00000e93          	li	t4,0
   1291c:	01c00e13          	li	t3,28
   12920:	03d09063          	bne	ra,t4,12940 <fail>

00012924 <test_29>:
   12924:	02100093          	li	ra,33
   12928:	02200113          	li	sp,34
   1292c:	02208033          	mul	zero,ra,sp
   12930:	00000e93          	li	t4,0
   12934:	01d00e13          	li	t3,29
   12938:	01d01463          	bne	zero,t4,12940 <fail>
   1293c:	05c01063          	bne	zero,t3,1297c <pass>

00012940 <fail>:
   12940:	0ff00513          	li	a0,255

00012944 <.delay_fail>:
   12944:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   12948:	fe051ee3          	bnez	a0,12944 <.delay_fail>
   1294c:	02000537          	lui	a0,0x2000
   12950:	04500593          	li	a1,69
   12954:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   12958:	05200613          	li	a2,82
   1295c:	00c52023          	sw	a2,0(a0)
   12960:	00c52023          	sw	a2,0(a0)
   12964:	04f00693          	li	a3,79
   12968:	00d52023          	sw	a3,0(a0)
   1296c:	00c52023          	sw	a2,0(a0)
   12970:	02000713          	li	a4,32
   12974:	00e52023          	sw	a4,0(a0)
   12978:	811fd06f          	j	10188 <mul_ret>

0001297c <pass>:
   1297c:	0ff00513          	li	a0,255

00012980 <.delay_ok>:
   12980:	fff50513          	addi	a0,a0,-1
   12984:	fe051ee3          	bnez	a0,12980 <.delay_ok>
   12988:	02000537          	lui	a0,0x2000
   1298c:	04f00593          	li	a1,79
   12990:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   12994:	04b00613          	li	a2,75
   12998:	00c52023          	sw	a2,0(a0)
   1299c:	02000713          	li	a4,32
   129a0:	00e52023          	sw	a4,0(a0)
   129a4:	fe4fd06f          	j	10188 <mul_ret>

000129a8 <sw>:
   129a8:	00008537          	lui	a0,0x8
   129ac:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   129b0:	00a00693          	li	a3,10
   129b4:	00100713          	li	a4,1

000129b8 <.delay_pr>:
   129b8:	fff50513          	addi	a0,a0,-1
   129bc:	fe051ee3          	bnez	a0,129b8 <.delay_pr>
   129c0:	00013537          	lui	a0,0x13
   129c4:	9e450513          	addi	a0,a0,-1564 # 129e4 <.test_name>
   129c8:	02000637          	lui	a2,0x2000

000129cc <.prname_next>:
   129cc:	00050583          	lb	a1,0(a0)
   129d0:	00058c63          	beqz	a1,129e8 <.prname_done>
   129d4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   129d8:	00150513          	addi	a0,a0,1
   129dc:	40e686b3          	sub	a3,a3,a4
   129e0:	fedff06f          	j	129cc <.prname_next>

000129e4 <.test_name>:
   129e4:	00007773          	csrrci	a4,ustatus,0

000129e8 <.prname_done>:
   129e8:	02e00593          	li	a1,46

000129ec <.loop>:
   129ec:	00b62023          	sw	a1,0(a2)
   129f0:	40e686b3          	sub	a3,a3,a4
   129f4:	00068463          	beqz	a3,129fc <test_2>
   129f8:	ff5ff0ef          	jal	ra,129ec <.loop>

000129fc <test_2>:
   129fc:	7ffed097          	auipc	ra,0x7ffed
   12a00:	60c08093          	addi	ra,ra,1548 # 80000008 <tdat>
   12a04:	00aa0137          	lui	sp,0xaa0
   12a08:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85942>
   12a0c:	0020a023          	sw	sp,0(ra)
   12a10:	0000a183          	lw	gp,0(ra)
   12a14:	00aa0eb7          	lui	t4,0xaa0
   12a18:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85942>
   12a1c:	00200e13          	li	t3,2
   12a20:	47d19063          	bne	gp,t4,12e80 <fail>

00012a24 <test_3>:
   12a24:	7ffed097          	auipc	ra,0x7ffed
   12a28:	5e408093          	addi	ra,ra,1508 # 80000008 <tdat>
   12a2c:	aa00b137          	lui	sp,0xaa00b
   12a30:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   12a34:	0020a223          	sw	sp,4(ra)
   12a38:	0040a183          	lw	gp,4(ra)
   12a3c:	aa00beb7          	lui	t4,0xaa00b
   12a40:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   12a44:	00300e13          	li	t3,3
   12a48:	43d19c63          	bne	gp,t4,12e80 <fail>

00012a4c <test_4>:
   12a4c:	7ffed097          	auipc	ra,0x7ffed
   12a50:	5bc08093          	addi	ra,ra,1468 # 80000008 <tdat>
   12a54:	0aa01137          	lui	sp,0xaa01
   12a58:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e6338>
   12a5c:	0020a423          	sw	sp,8(ra)
   12a60:	0080a183          	lw	gp,8(ra)
   12a64:	0aa01eb7          	lui	t4,0xaa01
   12a68:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e6338>
   12a6c:	00400e13          	li	t3,4
   12a70:	41d19863          	bne	gp,t4,12e80 <fail>

00012a74 <test_5>:
   12a74:	7ffed097          	auipc	ra,0x7ffed
   12a78:	59408093          	addi	ra,ra,1428 # 80000008 <tdat>
   12a7c:	a00aa137          	lui	sp,0xa00aa
   12a80:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   12a84:	0020a623          	sw	sp,12(ra)
   12a88:	00c0a183          	lw	gp,12(ra)
   12a8c:	a00aaeb7          	lui	t4,0xa00aa
   12a90:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   12a94:	00500e13          	li	t3,5
   12a98:	3fd19463          	bne	gp,t4,12e80 <fail>

00012a9c <test_6>:
   12a9c:	7ffed097          	auipc	ra,0x7ffed
   12aa0:	58808093          	addi	ra,ra,1416 # 80000024 <tdat8>
   12aa4:	00aa0137          	lui	sp,0xaa0
   12aa8:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85942>
   12aac:	fe20aa23          	sw	sp,-12(ra)
   12ab0:	ff40a183          	lw	gp,-12(ra)
   12ab4:	00aa0eb7          	lui	t4,0xaa0
   12ab8:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85942>
   12abc:	00600e13          	li	t3,6
   12ac0:	3dd19063          	bne	gp,t4,12e80 <fail>

00012ac4 <test_7>:
   12ac4:	7ffed097          	auipc	ra,0x7ffed
   12ac8:	56008093          	addi	ra,ra,1376 # 80000024 <tdat8>
   12acc:	aa00b137          	lui	sp,0xaa00b
   12ad0:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   12ad4:	fe20ac23          	sw	sp,-8(ra)
   12ad8:	ff80a183          	lw	gp,-8(ra)
   12adc:	aa00beb7          	lui	t4,0xaa00b
   12ae0:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   12ae4:	00700e13          	li	t3,7
   12ae8:	39d19c63          	bne	gp,t4,12e80 <fail>

00012aec <test_8>:
   12aec:	7ffed097          	auipc	ra,0x7ffed
   12af0:	53808093          	addi	ra,ra,1336 # 80000024 <tdat8>
   12af4:	0aa01137          	lui	sp,0xaa01
   12af8:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e6338>
   12afc:	fe20ae23          	sw	sp,-4(ra)
   12b00:	ffc0a183          	lw	gp,-4(ra)
   12b04:	0aa01eb7          	lui	t4,0xaa01
   12b08:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e6338>
   12b0c:	00800e13          	li	t3,8
   12b10:	37d19863          	bne	gp,t4,12e80 <fail>

00012b14 <test_9>:
   12b14:	7ffed097          	auipc	ra,0x7ffed
   12b18:	51008093          	addi	ra,ra,1296 # 80000024 <tdat8>
   12b1c:	a00aa137          	lui	sp,0xa00aa
   12b20:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   12b24:	0020a023          	sw	sp,0(ra)
   12b28:	0000a183          	lw	gp,0(ra)
   12b2c:	a00aaeb7          	lui	t4,0xa00aa
   12b30:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   12b34:	00900e13          	li	t3,9
   12b38:	35d19463          	bne	gp,t4,12e80 <fail>

00012b3c <test_10>:
   12b3c:	7ffed097          	auipc	ra,0x7ffed
   12b40:	4ec08093          	addi	ra,ra,1260 # 80000028 <tdat9>
   12b44:	12345137          	lui	sp,0x12345
   12b48:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232af10>
   12b4c:	fe008213          	addi	tp,ra,-32
   12b50:	02222023          	sw	sp,32(tp) # 20 <_start-0xffe0>
   12b54:	0000a183          	lw	gp,0(ra)
   12b58:	12345eb7          	lui	t4,0x12345
   12b5c:	678e8e93          	addi	t4,t4,1656 # 12345678 <_etext+0x1232af10>
   12b60:	00a00e13          	li	t3,10
   12b64:	31d19e63          	bne	gp,t4,12e80 <fail>

00012b68 <test_11>:
   12b68:	7ffed097          	auipc	ra,0x7ffed
   12b6c:	4c008093          	addi	ra,ra,1216 # 80000028 <tdat9>
   12b70:	58213137          	lui	sp,0x58213
   12b74:	09810113          	addi	sp,sp,152 # 58213098 <_etext+0x581f8930>
   12b78:	ffd08093          	addi	ra,ra,-3
   12b7c:	0020a3a3          	sw	sp,7(ra)
   12b80:	7ffed217          	auipc	tp,0x7ffed
   12b84:	4ac20213          	addi	tp,tp,1196 # 8000002c <tdat10>
   12b88:	00022183          	lw	gp,0(tp) # 0 <_start-0x10000>
   12b8c:	58213eb7          	lui	t4,0x58213
   12b90:	098e8e93          	addi	t4,t4,152 # 58213098 <_etext+0x581f8930>
   12b94:	00b00e13          	li	t3,11
   12b98:	2fd19463          	bne	gp,t4,12e80 <fail>

00012b9c <test_12>:
   12b9c:	00c00e13          	li	t3,12
   12ba0:	00000213          	li	tp,0
   12ba4:	aabbd0b7          	lui	ra,0xaabbd
   12ba8:	cdd08093          	addi	ra,ra,-803 # aabbccdd <_edata+0x2abbcc6d>
   12bac:	7ffed117          	auipc	sp,0x7ffed
   12bb0:	45c10113          	addi	sp,sp,1116 # 80000008 <tdat>
   12bb4:	00112023          	sw	ra,0(sp)
   12bb8:	00012183          	lw	gp,0(sp)
   12bbc:	aabbdeb7          	lui	t4,0xaabbd
   12bc0:	cdde8e93          	addi	t4,t4,-803 # aabbccdd <_edata+0x2abbcc6d>
   12bc4:	2bd19e63          	bne	gp,t4,12e80 <fail>
   12bc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12bcc:	00200293          	li	t0,2
   12bd0:	fc521ae3          	bne	tp,t0,12ba4 <test_12+0x8>

00012bd4 <test_13>:
   12bd4:	00d00e13          	li	t3,13
   12bd8:	00000213          	li	tp,0
   12bdc:	daabc0b7          	lui	ra,0xdaabc
   12be0:	ccd08093          	addi	ra,ra,-819 # daabbccd <_edata+0x5aabbc5d>
   12be4:	7ffed117          	auipc	sp,0x7ffed
   12be8:	42410113          	addi	sp,sp,1060 # 80000008 <tdat>
   12bec:	00000013          	nop
   12bf0:	00112223          	sw	ra,4(sp)
   12bf4:	00412183          	lw	gp,4(sp)
   12bf8:	daabceb7          	lui	t4,0xdaabc
   12bfc:	ccde8e93          	addi	t4,t4,-819 # daabbccd <_edata+0x5aabbc5d>
   12c00:	29d19063          	bne	gp,t4,12e80 <fail>
   12c04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12c08:	00200293          	li	t0,2
   12c0c:	fc5218e3          	bne	tp,t0,12bdc <test_13+0x8>

00012c10 <test_14>:
   12c10:	00e00e13          	li	t3,14
   12c14:	00000213          	li	tp,0
   12c18:	ddaac0b7          	lui	ra,0xddaac
   12c1c:	bcc08093          	addi	ra,ra,-1076 # ddaabbcc <_edata+0x5daabb5c>
   12c20:	7ffed117          	auipc	sp,0x7ffed
   12c24:	3e810113          	addi	sp,sp,1000 # 80000008 <tdat>
   12c28:	00000013          	nop
   12c2c:	00000013          	nop
   12c30:	00112423          	sw	ra,8(sp)
   12c34:	00812183          	lw	gp,8(sp)
   12c38:	ddaaceb7          	lui	t4,0xddaac
   12c3c:	bcce8e93          	addi	t4,t4,-1076 # ddaabbcc <_edata+0x5daabb5c>
   12c40:	25d19063          	bne	gp,t4,12e80 <fail>
   12c44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12c48:	00200293          	li	t0,2
   12c4c:	fc5216e3          	bne	tp,t0,12c18 <test_14+0x8>

00012c50 <test_15>:
   12c50:	00f00e13          	li	t3,15
   12c54:	00000213          	li	tp,0
   12c58:	cddab0b7          	lui	ra,0xcddab
   12c5c:	bbc08093          	addi	ra,ra,-1092 # cddaabbc <_edata+0x4ddaab4c>
   12c60:	00000013          	nop
   12c64:	7ffed117          	auipc	sp,0x7ffed
   12c68:	3a410113          	addi	sp,sp,932 # 80000008 <tdat>
   12c6c:	00112623          	sw	ra,12(sp)
   12c70:	00c12183          	lw	gp,12(sp)
   12c74:	cddabeb7          	lui	t4,0xcddab
   12c78:	bbce8e93          	addi	t4,t4,-1092 # cddaabbc <_edata+0x4ddaab4c>
   12c7c:	21d19263          	bne	gp,t4,12e80 <fail>
   12c80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12c84:	00200293          	li	t0,2
   12c88:	fc5218e3          	bne	tp,t0,12c58 <test_15+0x8>

00012c8c <test_16>:
   12c8c:	01000e13          	li	t3,16
   12c90:	00000213          	li	tp,0
   12c94:	ccddb0b7          	lui	ra,0xccddb
   12c98:	abb08093          	addi	ra,ra,-1349 # ccddaabb <_edata+0x4cddaa4b>
   12c9c:	00000013          	nop
   12ca0:	7ffed117          	auipc	sp,0x7ffed
   12ca4:	36810113          	addi	sp,sp,872 # 80000008 <tdat>
   12ca8:	00000013          	nop
   12cac:	00112823          	sw	ra,16(sp)
   12cb0:	01012183          	lw	gp,16(sp)
   12cb4:	ccddbeb7          	lui	t4,0xccddb
   12cb8:	abbe8e93          	addi	t4,t4,-1349 # ccddaabb <_edata+0x4cddaa4b>
   12cbc:	1dd19263          	bne	gp,t4,12e80 <fail>
   12cc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12cc4:	00200293          	li	t0,2
   12cc8:	fc5216e3          	bne	tp,t0,12c94 <test_16+0x8>

00012ccc <test_17>:
   12ccc:	01100e13          	li	t3,17
   12cd0:	00000213          	li	tp,0
   12cd4:	bccde0b7          	lui	ra,0xbccde
   12cd8:	aab08093          	addi	ra,ra,-1365 # bccddaab <_edata+0x3ccdda3b>
   12cdc:	00000013          	nop
   12ce0:	00000013          	nop
   12ce4:	7ffed117          	auipc	sp,0x7ffed
   12ce8:	32410113          	addi	sp,sp,804 # 80000008 <tdat>
   12cec:	00112a23          	sw	ra,20(sp)
   12cf0:	01412183          	lw	gp,20(sp)
   12cf4:	bccdeeb7          	lui	t4,0xbccde
   12cf8:	aabe8e93          	addi	t4,t4,-1365 # bccddaab <_edata+0x3ccdda3b>
   12cfc:	19d19263          	bne	gp,t4,12e80 <fail>
   12d00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d04:	00200293          	li	t0,2
   12d08:	fc5216e3          	bne	tp,t0,12cd4 <test_17+0x8>

00012d0c <test_18>:
   12d0c:	01200e13          	li	t3,18
   12d10:	00000213          	li	tp,0
   12d14:	7ffed117          	auipc	sp,0x7ffed
   12d18:	2f410113          	addi	sp,sp,756 # 80000008 <tdat>
   12d1c:	001120b7          	lui	ra,0x112
   12d20:	23308093          	addi	ra,ra,563 # 112233 <_etext+0xf7acb>
   12d24:	00112023          	sw	ra,0(sp)
   12d28:	00012183          	lw	gp,0(sp)
   12d2c:	00112eb7          	lui	t4,0x112
   12d30:	233e8e93          	addi	t4,t4,563 # 112233 <_etext+0xf7acb>
   12d34:	15d19663          	bne	gp,t4,12e80 <fail>
   12d38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d3c:	00200293          	li	t0,2
   12d40:	fc521ae3          	bne	tp,t0,12d14 <test_18+0x8>

00012d44 <test_19>:
   12d44:	01300e13          	li	t3,19
   12d48:	00000213          	li	tp,0
   12d4c:	7ffed117          	auipc	sp,0x7ffed
   12d50:	2bc10113          	addi	sp,sp,700 # 80000008 <tdat>
   12d54:	300110b7          	lui	ra,0x30011
   12d58:	22308093          	addi	ra,ra,547 # 30011223 <_etext+0x2fff6abb>
   12d5c:	00000013          	nop
   12d60:	00112223          	sw	ra,4(sp)
   12d64:	00412183          	lw	gp,4(sp)
   12d68:	30011eb7          	lui	t4,0x30011
   12d6c:	223e8e93          	addi	t4,t4,547 # 30011223 <_etext+0x2fff6abb>
   12d70:	11d19863          	bne	gp,t4,12e80 <fail>
   12d74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d78:	00200293          	li	t0,2
   12d7c:	fc5218e3          	bne	tp,t0,12d4c <test_19+0x8>

00012d80 <test_20>:
   12d80:	01400e13          	li	t3,20
   12d84:	00000213          	li	tp,0
   12d88:	7ffed117          	auipc	sp,0x7ffed
   12d8c:	28010113          	addi	sp,sp,640 # 80000008 <tdat>
   12d90:	330010b7          	lui	ra,0x33001
   12d94:	12208093          	addi	ra,ra,290 # 33001122 <_etext+0x32fe69ba>
   12d98:	00000013          	nop
   12d9c:	00000013          	nop
   12da0:	00112423          	sw	ra,8(sp)
   12da4:	00812183          	lw	gp,8(sp)
   12da8:	33001eb7          	lui	t4,0x33001
   12dac:	122e8e93          	addi	t4,t4,290 # 33001122 <_etext+0x32fe69ba>
   12db0:	0dd19863          	bne	gp,t4,12e80 <fail>
   12db4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12db8:	00200293          	li	t0,2
   12dbc:	fc5216e3          	bne	tp,t0,12d88 <test_20+0x8>

00012dc0 <test_21>:
   12dc0:	01500e13          	li	t3,21
   12dc4:	00000213          	li	tp,0
   12dc8:	7ffed117          	auipc	sp,0x7ffed
   12dcc:	24010113          	addi	sp,sp,576 # 80000008 <tdat>
   12dd0:	00000013          	nop
   12dd4:	233000b7          	lui	ra,0x23300
   12dd8:	11208093          	addi	ra,ra,274 # 23300112 <_etext+0x232e59aa>
   12ddc:	00112623          	sw	ra,12(sp)
   12de0:	00c12183          	lw	gp,12(sp)
   12de4:	23300eb7          	lui	t4,0x23300
   12de8:	112e8e93          	addi	t4,t4,274 # 23300112 <_etext+0x232e59aa>
   12dec:	09d19a63          	bne	gp,t4,12e80 <fail>
   12df0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12df4:	00200293          	li	t0,2
   12df8:	fc5218e3          	bne	tp,t0,12dc8 <test_21+0x8>

00012dfc <test_22>:
   12dfc:	01600e13          	li	t3,22
   12e00:	00000213          	li	tp,0
   12e04:	7ffed117          	auipc	sp,0x7ffed
   12e08:	20410113          	addi	sp,sp,516 # 80000008 <tdat>
   12e0c:	00000013          	nop
   12e10:	223300b7          	lui	ra,0x22330
   12e14:	01108093          	addi	ra,ra,17 # 22330011 <_etext+0x223158a9>
   12e18:	00000013          	nop
   12e1c:	00112823          	sw	ra,16(sp)
   12e20:	01012183          	lw	gp,16(sp)
   12e24:	22330eb7          	lui	t4,0x22330
   12e28:	011e8e93          	addi	t4,t4,17 # 22330011 <_etext+0x223158a9>
   12e2c:	05d19a63          	bne	gp,t4,12e80 <fail>
   12e30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e34:	00200293          	li	t0,2
   12e38:	fc5216e3          	bne	tp,t0,12e04 <test_22+0x8>

00012e3c <test_23>:
   12e3c:	01700e13          	li	t3,23
   12e40:	00000213          	li	tp,0
   12e44:	7ffed117          	auipc	sp,0x7ffed
   12e48:	1c410113          	addi	sp,sp,452 # 80000008 <tdat>
   12e4c:	00000013          	nop
   12e50:	00000013          	nop
   12e54:	122330b7          	lui	ra,0x12233
   12e58:	00108093          	addi	ra,ra,1 # 12233001 <_etext+0x12218899>
   12e5c:	00112a23          	sw	ra,20(sp)
   12e60:	01412183          	lw	gp,20(sp)
   12e64:	12233eb7          	lui	t4,0x12233
   12e68:	001e8e93          	addi	t4,t4,1 # 12233001 <_etext+0x12218899>
   12e6c:	01d19a63          	bne	gp,t4,12e80 <fail>
   12e70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e74:	00200293          	li	t0,2
   12e78:	fc5216e3          	bne	tp,t0,12e44 <test_23+0x8>
   12e7c:	05c01063          	bne	zero,t3,12ebc <pass>

00012e80 <fail>:
   12e80:	0ff00513          	li	a0,255

00012e84 <.delay_fail>:
   12e84:	fff50513          	addi	a0,a0,-1
   12e88:	fe051ee3          	bnez	a0,12e84 <.delay_fail>
   12e8c:	02000537          	lui	a0,0x2000
   12e90:	04500593          	li	a1,69
   12e94:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   12e98:	05200613          	li	a2,82
   12e9c:	00c52023          	sw	a2,0(a0)
   12ea0:	00c52023          	sw	a2,0(a0)
   12ea4:	04f00693          	li	a3,79
   12ea8:	00d52023          	sw	a3,0(a0)
   12eac:	00c52023          	sw	a2,0(a0)
   12eb0:	02000713          	li	a4,32
   12eb4:	00e52023          	sw	a4,0(a0)
   12eb8:	a6cfd06f          	j	10124 <sw_ret>

00012ebc <pass>:
   12ebc:	0ff00513          	li	a0,255

00012ec0 <.delay_ok>:
   12ec0:	fff50513          	addi	a0,a0,-1
   12ec4:	fe051ee3          	bnez	a0,12ec0 <.delay_ok>
   12ec8:	02000537          	lui	a0,0x2000
   12ecc:	04f00593          	li	a1,79
   12ed0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   12ed4:	04b00613          	li	a2,75
   12ed8:	00c52023          	sw	a2,0(a0)
   12edc:	02000713          	li	a4,32
   12ee0:	00e52023          	sw	a4,0(a0)
   12ee4:	a40fd06f          	j	10124 <sw_ret>

00012ee8 <beq>:
   12ee8:	00008537          	lui	a0,0x8
   12eec:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   12ef0:	00a00693          	li	a3,10
   12ef4:	00100713          	li	a4,1

00012ef8 <.delay_pr>:
   12ef8:	fff50513          	addi	a0,a0,-1
   12efc:	fe051ee3          	bnez	a0,12ef8 <.delay_pr>
   12f00:	00013537          	lui	a0,0x13
   12f04:	f2450513          	addi	a0,a0,-220 # 12f24 <.test_name>
   12f08:	02000637          	lui	a2,0x2000

00012f0c <.prname_next>:
   12f0c:	00050583          	lb	a1,0(a0)
   12f10:	00058c63          	beqz	a1,12f28 <.prname_done>
   12f14:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   12f18:	00150513          	addi	a0,a0,1
   12f1c:	40e686b3          	sub	a3,a3,a4
   12f20:	fedff06f          	j	12f0c <.prname_next>

00012f24 <.test_name>:
   12f24:	6562                	flw	fa0,24(sp)
   12f26:	0071                	c.nop	28

00012f28 <.prname_done>:
   12f28:	02e00593          	li	a1,46

00012f2c <.loop>:
   12f2c:	00b62023          	sw	a1,0(a2)
   12f30:	40e686b3          	sub	a3,a3,a4
   12f34:	00068463          	beqz	a3,12f3c <test_2>
   12f38:	ff5ff0ef          	jal	ra,12f2c <.loop>

00012f3c <test_2>:
   12f3c:	00200e13          	li	t3,2
   12f40:	00000093          	li	ra,0
   12f44:	00000113          	li	sp,0
   12f48:	00208663          	beq	ra,sp,12f54 <test_2+0x18>
   12f4c:	2bc01863          	bne	zero,t3,131fc <fail>
   12f50:	01c01663          	bne	zero,t3,12f5c <test_3>
   12f54:	fe208ee3          	beq	ra,sp,12f50 <test_2+0x14>
   12f58:	2bc01263          	bne	zero,t3,131fc <fail>

00012f5c <test_3>:
   12f5c:	00300e13          	li	t3,3
   12f60:	00100093          	li	ra,1
   12f64:	00100113          	li	sp,1
   12f68:	00208663          	beq	ra,sp,12f74 <test_3+0x18>
   12f6c:	29c01863          	bne	zero,t3,131fc <fail>
   12f70:	01c01663          	bne	zero,t3,12f7c <test_4>
   12f74:	fe208ee3          	beq	ra,sp,12f70 <test_3+0x14>
   12f78:	29c01263          	bne	zero,t3,131fc <fail>

00012f7c <test_4>:
   12f7c:	00400e13          	li	t3,4
   12f80:	fff00093          	li	ra,-1
   12f84:	fff00113          	li	sp,-1
   12f88:	00208663          	beq	ra,sp,12f94 <test_4+0x18>
   12f8c:	27c01863          	bne	zero,t3,131fc <fail>
   12f90:	01c01663          	bne	zero,t3,12f9c <test_5>
   12f94:	fe208ee3          	beq	ra,sp,12f90 <test_4+0x14>
   12f98:	27c01263          	bne	zero,t3,131fc <fail>

00012f9c <test_5>:
   12f9c:	00500e13          	li	t3,5
   12fa0:	00000093          	li	ra,0
   12fa4:	00100113          	li	sp,1
   12fa8:	00208463          	beq	ra,sp,12fb0 <test_5+0x14>
   12fac:	01c01463          	bne	zero,t3,12fb4 <test_5+0x18>
   12fb0:	25c01663          	bne	zero,t3,131fc <fail>
   12fb4:	fe208ee3          	beq	ra,sp,12fb0 <test_5+0x14>

00012fb8 <test_6>:
   12fb8:	00600e13          	li	t3,6
   12fbc:	00100093          	li	ra,1
   12fc0:	00000113          	li	sp,0
   12fc4:	00208463          	beq	ra,sp,12fcc <test_6+0x14>
   12fc8:	01c01463          	bne	zero,t3,12fd0 <test_6+0x18>
   12fcc:	23c01863          	bne	zero,t3,131fc <fail>
   12fd0:	fe208ee3          	beq	ra,sp,12fcc <test_6+0x14>

00012fd4 <test_7>:
   12fd4:	00700e13          	li	t3,7
   12fd8:	fff00093          	li	ra,-1
   12fdc:	00100113          	li	sp,1
   12fe0:	00208463          	beq	ra,sp,12fe8 <test_7+0x14>
   12fe4:	01c01463          	bne	zero,t3,12fec <test_7+0x18>
   12fe8:	21c01a63          	bne	zero,t3,131fc <fail>
   12fec:	fe208ee3          	beq	ra,sp,12fe8 <test_7+0x14>

00012ff0 <test_8>:
   12ff0:	00800e13          	li	t3,8
   12ff4:	00100093          	li	ra,1
   12ff8:	fff00113          	li	sp,-1
   12ffc:	00208463          	beq	ra,sp,13004 <test_8+0x14>
   13000:	01c01463          	bne	zero,t3,13008 <test_8+0x18>
   13004:	1fc01c63          	bne	zero,t3,131fc <fail>
   13008:	fe208ee3          	beq	ra,sp,13004 <test_8+0x14>

0001300c <test_9>:
   1300c:	00900e13          	li	t3,9
   13010:	00000213          	li	tp,0
   13014:	00000093          	li	ra,0
   13018:	fff00113          	li	sp,-1
   1301c:	1e208063          	beq	ra,sp,131fc <fail>
   13020:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13024:	00200293          	li	t0,2
   13028:	fe5216e3          	bne	tp,t0,13014 <test_9+0x8>

0001302c <test_10>:
   1302c:	00a00e13          	li	t3,10
   13030:	00000213          	li	tp,0
   13034:	00000093          	li	ra,0
   13038:	fff00113          	li	sp,-1
   1303c:	00000013          	nop
   13040:	1a208e63          	beq	ra,sp,131fc <fail>
   13044:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13048:	00200293          	li	t0,2
   1304c:	fe5214e3          	bne	tp,t0,13034 <test_10+0x8>

00013050 <test_11>:
   13050:	00b00e13          	li	t3,11
   13054:	00000213          	li	tp,0
   13058:	00000093          	li	ra,0
   1305c:	fff00113          	li	sp,-1
   13060:	00000013          	nop
   13064:	00000013          	nop
   13068:	18208a63          	beq	ra,sp,131fc <fail>
   1306c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13070:	00200293          	li	t0,2
   13074:	fe5212e3          	bne	tp,t0,13058 <test_11+0x8>

00013078 <test_12>:
   13078:	00c00e13          	li	t3,12
   1307c:	00000213          	li	tp,0
   13080:	00000093          	li	ra,0
   13084:	00000013          	nop
   13088:	fff00113          	li	sp,-1
   1308c:	16208863          	beq	ra,sp,131fc <fail>
   13090:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13094:	00200293          	li	t0,2
   13098:	fe5214e3          	bne	tp,t0,13080 <test_12+0x8>

0001309c <test_13>:
   1309c:	00d00e13          	li	t3,13
   130a0:	00000213          	li	tp,0
   130a4:	00000093          	li	ra,0
   130a8:	00000013          	nop
   130ac:	fff00113          	li	sp,-1
   130b0:	00000013          	nop
   130b4:	14208463          	beq	ra,sp,131fc <fail>
   130b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   130bc:	00200293          	li	t0,2
   130c0:	fe5212e3          	bne	tp,t0,130a4 <test_13+0x8>

000130c4 <test_14>:
   130c4:	00e00e13          	li	t3,14
   130c8:	00000213          	li	tp,0
   130cc:	00000093          	li	ra,0
   130d0:	00000013          	nop
   130d4:	00000013          	nop
   130d8:	fff00113          	li	sp,-1
   130dc:	12208063          	beq	ra,sp,131fc <fail>
   130e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   130e4:	00200293          	li	t0,2
   130e8:	fe5212e3          	bne	tp,t0,130cc <test_14+0x8>

000130ec <test_15>:
   130ec:	00f00e13          	li	t3,15
   130f0:	00000213          	li	tp,0
   130f4:	00000093          	li	ra,0
   130f8:	fff00113          	li	sp,-1
   130fc:	10208063          	beq	ra,sp,131fc <fail>
   13100:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13104:	00200293          	li	t0,2
   13108:	fe5216e3          	bne	tp,t0,130f4 <test_15+0x8>

0001310c <test_16>:
   1310c:	01000e13          	li	t3,16
   13110:	00000213          	li	tp,0
   13114:	00000093          	li	ra,0
   13118:	fff00113          	li	sp,-1
   1311c:	00000013          	nop
   13120:	0c208e63          	beq	ra,sp,131fc <fail>
   13124:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13128:	00200293          	li	t0,2
   1312c:	fe5214e3          	bne	tp,t0,13114 <test_16+0x8>

00013130 <test_17>:
   13130:	01100e13          	li	t3,17
   13134:	00000213          	li	tp,0
   13138:	00000093          	li	ra,0
   1313c:	fff00113          	li	sp,-1
   13140:	00000013          	nop
   13144:	00000013          	nop
   13148:	0a208a63          	beq	ra,sp,131fc <fail>
   1314c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13150:	00200293          	li	t0,2
   13154:	fe5212e3          	bne	tp,t0,13138 <test_17+0x8>

00013158 <test_18>:
   13158:	01200e13          	li	t3,18
   1315c:	00000213          	li	tp,0
   13160:	00000093          	li	ra,0
   13164:	00000013          	nop
   13168:	fff00113          	li	sp,-1
   1316c:	08208863          	beq	ra,sp,131fc <fail>
   13170:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13174:	00200293          	li	t0,2
   13178:	fe5214e3          	bne	tp,t0,13160 <test_18+0x8>

0001317c <test_19>:
   1317c:	01300e13          	li	t3,19
   13180:	00000213          	li	tp,0
   13184:	00000093          	li	ra,0
   13188:	00000013          	nop
   1318c:	fff00113          	li	sp,-1
   13190:	00000013          	nop
   13194:	06208463          	beq	ra,sp,131fc <fail>
   13198:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1319c:	00200293          	li	t0,2
   131a0:	fe5212e3          	bne	tp,t0,13184 <test_19+0x8>

000131a4 <test_20>:
   131a4:	01400e13          	li	t3,20
   131a8:	00000213          	li	tp,0
   131ac:	00000093          	li	ra,0
   131b0:	00000013          	nop
   131b4:	00000013          	nop
   131b8:	fff00113          	li	sp,-1
   131bc:	04208063          	beq	ra,sp,131fc <fail>
   131c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   131c4:	00200293          	li	t0,2
   131c8:	fe5212e3          	bne	tp,t0,131ac <test_20+0x8>

000131cc <test_21>:
   131cc:	00100093          	li	ra,1
   131d0:	00000a63          	beqz	zero,131e4 <test_21+0x18>
   131d4:	00108093          	addi	ra,ra,1
   131d8:	00108093          	addi	ra,ra,1
   131dc:	00108093          	addi	ra,ra,1
   131e0:	00108093          	addi	ra,ra,1
   131e4:	00108093          	addi	ra,ra,1
   131e8:	00108093          	addi	ra,ra,1
   131ec:	00300e93          	li	t4,3
   131f0:	01500e13          	li	t3,21
   131f4:	01d09463          	bne	ra,t4,131fc <fail>
   131f8:	05c01063          	bne	zero,t3,13238 <pass>

000131fc <fail>:
   131fc:	0ff00513          	li	a0,255

00013200 <.delay_fail>:
   13200:	fff50513          	addi	a0,a0,-1
   13204:	fe051ee3          	bnez	a0,13200 <.delay_fail>
   13208:	02000537          	lui	a0,0x2000
   1320c:	04500593          	li	a1,69
   13210:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13214:	05200613          	li	a2,82
   13218:	00c52023          	sw	a2,0(a0)
   1321c:	00c52023          	sw	a2,0(a0)
   13220:	04f00693          	li	a3,79
   13224:	00d52023          	sw	a3,0(a0)
   13228:	00c52023          	sw	a2,0(a0)
   1322c:	02000713          	li	a4,32
   13230:	00e52023          	sw	a4,0(a0)
   13234:	eb5fc06f          	j	100e8 <beq_ret>

00013238 <pass>:
   13238:	0ff00513          	li	a0,255

0001323c <.delay_ok>:
   1323c:	fff50513          	addi	a0,a0,-1
   13240:	fe051ee3          	bnez	a0,1323c <.delay_ok>
   13244:	02000537          	lui	a0,0x2000
   13248:	04f00593          	li	a1,79
   1324c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13250:	04b00613          	li	a2,75
   13254:	00c52023          	sw	a2,0(a0)
   13258:	02000713          	li	a4,32
   1325c:	00e52023          	sw	a4,0(a0)
   13260:	e89fc06f          	j	100e8 <beq_ret>

00013264 <divu>:
   13264:	00008537          	lui	a0,0x8
   13268:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   1326c:	00a00693          	li	a3,10
   13270:	00100713          	li	a4,1

00013274 <.delay_pr>:
   13274:	fff50513          	addi	a0,a0,-1
   13278:	fe051ee3          	bnez	a0,13274 <.delay_pr>
   1327c:	00013537          	lui	a0,0x13
   13280:	2a050513          	addi	a0,a0,672 # 132a0 <.test_name>
   13284:	02000637          	lui	a2,0x2000

00013288 <.prname_next>:
   13288:	00050583          	lb	a1,0(a0)
   1328c:	00058e63          	beqz	a1,132a8 <.prname_done>
   13290:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   13294:	00150513          	addi	a0,a0,1
   13298:	40e686b3          	sub	a3,a3,a4
   1329c:	fedff06f          	j	13288 <.prname_next>

000132a0 <.test_name>:
   132a0:	6964                	flw	fs1,84(a0)
   132a2:	7576                	flw	fa0,124(sp)
   132a4:	0000                	unimp
	...

000132a8 <.prname_done>:
   132a8:	02e00593          	li	a1,46

000132ac <.loop>:
   132ac:	00b62023          	sw	a1,0(a2)
   132b0:	40e686b3          	sub	a3,a3,a4
   132b4:	00068463          	beqz	a3,132bc <test_2>
   132b8:	ff5ff0ef          	jal	ra,132ac <.loop>

000132bc <test_2>:
   132bc:	01400093          	li	ra,20
   132c0:	00600113          	li	sp,6
   132c4:	0220d1b3          	divu	gp,ra,sp
   132c8:	00300e93          	li	t4,3
   132cc:	00200e13          	li	t3,2
   132d0:	0dd19663          	bne	gp,t4,1339c <fail>

000132d4 <test_3>:
   132d4:	fec00093          	li	ra,-20
   132d8:	00600113          	li	sp,6
   132dc:	0220d1b3          	divu	gp,ra,sp
   132e0:	2aaabeb7          	lui	t4,0x2aaab
   132e4:	aa7e8e93          	addi	t4,t4,-1369 # 2aaaaaa7 <_etext+0x2aa9033f>
   132e8:	00300e13          	li	t3,3
   132ec:	0bd19863          	bne	gp,t4,1339c <fail>

000132f0 <test_4>:
   132f0:	01400093          	li	ra,20
   132f4:	ffa00113          	li	sp,-6
   132f8:	0220d1b3          	divu	gp,ra,sp
   132fc:	00000e93          	li	t4,0
   13300:	00400e13          	li	t3,4
   13304:	09d19c63          	bne	gp,t4,1339c <fail>

00013308 <test_5>:
   13308:	fec00093          	li	ra,-20
   1330c:	ffa00113          	li	sp,-6
   13310:	0220d1b3          	divu	gp,ra,sp
   13314:	00000e93          	li	t4,0
   13318:	00500e13          	li	t3,5
   1331c:	09d19063          	bne	gp,t4,1339c <fail>

00013320 <test_6>:
   13320:	800000b7          	lui	ra,0x80000
   13324:	00100113          	li	sp,1
   13328:	0220d1b3          	divu	gp,ra,sp
   1332c:	80000eb7          	lui	t4,0x80000
   13330:	00600e13          	li	t3,6
   13334:	07d19463          	bne	gp,t4,1339c <fail>

00013338 <test_7>:
   13338:	800000b7          	lui	ra,0x80000
   1333c:	fff00113          	li	sp,-1
   13340:	0220d1b3          	divu	gp,ra,sp
   13344:	00000e93          	li	t4,0
   13348:	00700e13          	li	t3,7
   1334c:	05d19863          	bne	gp,t4,1339c <fail>

00013350 <test_8>:
   13350:	800000b7          	lui	ra,0x80000
   13354:	00000113          	li	sp,0
   13358:	0220d1b3          	divu	gp,ra,sp
   1335c:	fff00e93          	li	t4,-1
   13360:	00800e13          	li	t3,8
   13364:	03d19c63          	bne	gp,t4,1339c <fail>

00013368 <test_9>:
   13368:	00100093          	li	ra,1
   1336c:	00000113          	li	sp,0
   13370:	0220d1b3          	divu	gp,ra,sp
   13374:	fff00e93          	li	t4,-1
   13378:	00900e13          	li	t3,9
   1337c:	03d19063          	bne	gp,t4,1339c <fail>

00013380 <test_10>:
   13380:	00000093          	li	ra,0
   13384:	00000113          	li	sp,0
   13388:	0220d1b3          	divu	gp,ra,sp
   1338c:	fff00e93          	li	t4,-1
   13390:	00a00e13          	li	t3,10
   13394:	01d19463          	bne	gp,t4,1339c <fail>
   13398:	05c01063          	bne	zero,t3,133d8 <pass>

0001339c <fail>:
   1339c:	0ff00513          	li	a0,255

000133a0 <.delay_fail>:
   133a0:	fff50513          	addi	a0,a0,-1
   133a4:	fe051ee3          	bnez	a0,133a0 <.delay_fail>
   133a8:	02000537          	lui	a0,0x2000
   133ac:	04500593          	li	a1,69
   133b0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   133b4:	05200613          	li	a2,82
   133b8:	00c52023          	sw	a2,0(a0)
   133bc:	00c52023          	sw	a2,0(a0)
   133c0:	04f00693          	li	a3,79
   133c4:	00d52023          	sw	a3,0(a0)
   133c8:	00c52023          	sw	a2,0(a0)
   133cc:	02000713          	li	a4,32
   133d0:	00e52023          	sw	a4,0(a0)
   133d4:	dc1fc06f          	j	10194 <divu_ret>

000133d8 <pass>:
   133d8:	0ff00513          	li	a0,255

000133dc <.delay_ok>:
   133dc:	fff50513          	addi	a0,a0,-1
   133e0:	fe051ee3          	bnez	a0,133dc <.delay_ok>
   133e4:	02000537          	lui	a0,0x2000
   133e8:	04f00593          	li	a1,79
   133ec:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   133f0:	04b00613          	li	a2,75
   133f4:	00c52023          	sw	a2,0(a0)
   133f8:	02000713          	li	a4,32
   133fc:	00e52023          	sw	a4,0(a0)
   13400:	d95fc06f          	j	10194 <divu_ret>

00013404 <sra>:
   13404:	00008537          	lui	a0,0x8
   13408:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   1340c:	00a00693          	li	a3,10
   13410:	00100713          	li	a4,1

00013414 <.delay_pr>:
   13414:	fff50513          	addi	a0,a0,-1
   13418:	fe051ee3          	bnez	a0,13414 <.delay_pr>
   1341c:	00013537          	lui	a0,0x13
   13420:	44050513          	addi	a0,a0,1088 # 13440 <.test_name>
   13424:	02000637          	lui	a2,0x2000

00013428 <.prname_next>:
   13428:	00050583          	lb	a1,0(a0)
   1342c:	00058c63          	beqz	a1,13444 <.prname_done>
   13430:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   13434:	00150513          	addi	a0,a0,1
   13438:	40e686b3          	sub	a3,a3,a4
   1343c:	fedff06f          	j	13428 <.prname_next>

00013440 <.test_name>:
   13440:	00617273          	csrrci	tp,0x6,2

00013444 <.prname_done>:
   13444:	02e00593          	li	a1,46

00013448 <.loop>:
   13448:	00b62023          	sw	a1,0(a2)
   1344c:	40e686b3          	sub	a3,a3,a4
   13450:	00068463          	beqz	a3,13458 <test_2>
   13454:	ff5ff0ef          	jal	ra,13448 <.loop>

00013458 <test_2>:
   13458:	800000b7          	lui	ra,0x80000
   1345c:	00000113          	li	sp,0
   13460:	4020d1b3          	sra	gp,ra,sp
   13464:	80000eb7          	lui	t4,0x80000
   13468:	00200e13          	li	t3,2
   1346c:	59d19463          	bne	gp,t4,139f4 <fail>

00013470 <test_3>:
   13470:	800000b7          	lui	ra,0x80000
   13474:	00100113          	li	sp,1
   13478:	4020d1b3          	sra	gp,ra,sp
   1347c:	c0000eb7          	lui	t4,0xc0000
   13480:	00300e13          	li	t3,3
   13484:	57d19863          	bne	gp,t4,139f4 <fail>

00013488 <test_4>:
   13488:	800000b7          	lui	ra,0x80000
   1348c:	00700113          	li	sp,7
   13490:	4020d1b3          	sra	gp,ra,sp
   13494:	ff000eb7          	lui	t4,0xff000
   13498:	00400e13          	li	t3,4
   1349c:	55d19c63          	bne	gp,t4,139f4 <fail>

000134a0 <test_5>:
   134a0:	800000b7          	lui	ra,0x80000
   134a4:	00e00113          	li	sp,14
   134a8:	4020d1b3          	sra	gp,ra,sp
   134ac:	fffe0eb7          	lui	t4,0xfffe0
   134b0:	00500e13          	li	t3,5
   134b4:	55d19063          	bne	gp,t4,139f4 <fail>

000134b8 <test_6>:
   134b8:	800000b7          	lui	ra,0x80000
   134bc:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   134c0:	01f00113          	li	sp,31
   134c4:	4020d1b3          	sra	gp,ra,sp
   134c8:	fff00e93          	li	t4,-1
   134cc:	00600e13          	li	t3,6
   134d0:	53d19263          	bne	gp,t4,139f4 <fail>

000134d4 <test_7>:
   134d4:	800000b7          	lui	ra,0x80000
   134d8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134dc:	00000113          	li	sp,0
   134e0:	4020d1b3          	sra	gp,ra,sp
   134e4:	80000eb7          	lui	t4,0x80000
   134e8:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   134ec:	00700e13          	li	t3,7
   134f0:	51d19263          	bne	gp,t4,139f4 <fail>

000134f4 <test_8>:
   134f4:	800000b7          	lui	ra,0x80000
   134f8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134fc:	00100113          	li	sp,1
   13500:	4020d1b3          	sra	gp,ra,sp
   13504:	40000eb7          	lui	t4,0x40000
   13508:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe5897>
   1350c:	00800e13          	li	t3,8
   13510:	4fd19263          	bne	gp,t4,139f4 <fail>

00013514 <test_9>:
   13514:	800000b7          	lui	ra,0x80000
   13518:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1351c:	00700113          	li	sp,7
   13520:	4020d1b3          	sra	gp,ra,sp
   13524:	01000eb7          	lui	t4,0x1000
   13528:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe5897>
   1352c:	00900e13          	li	t3,9
   13530:	4dd19263          	bne	gp,t4,139f4 <fail>

00013534 <test_10>:
   13534:	800000b7          	lui	ra,0x80000
   13538:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1353c:	00e00113          	li	sp,14
   13540:	4020d1b3          	sra	gp,ra,sp
   13544:	00020eb7          	lui	t4,0x20
   13548:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   1354c:	00a00e13          	li	t3,10
   13550:	4bd19263          	bne	gp,t4,139f4 <fail>

00013554 <test_11>:
   13554:	800000b7          	lui	ra,0x80000
   13558:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1355c:	01f00113          	li	sp,31
   13560:	4020d1b3          	sra	gp,ra,sp
   13564:	00000e93          	li	t4,0
   13568:	00b00e13          	li	t3,11
   1356c:	49d19463          	bne	gp,t4,139f4 <fail>

00013570 <test_12>:
   13570:	818180b7          	lui	ra,0x81818
   13574:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13578:	00000113          	li	sp,0
   1357c:	4020d1b3          	sra	gp,ra,sp
   13580:	81818eb7          	lui	t4,0x81818
   13584:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   13588:	00c00e13          	li	t3,12
   1358c:	47d19463          	bne	gp,t4,139f4 <fail>

00013590 <test_13>:
   13590:	818180b7          	lui	ra,0x81818
   13594:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13598:	00100113          	li	sp,1
   1359c:	4020d1b3          	sra	gp,ra,sp
   135a0:	c0c0ceb7          	lui	t4,0xc0c0c
   135a4:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   135a8:	00d00e13          	li	t3,13
   135ac:	45d19463          	bne	gp,t4,139f4 <fail>

000135b0 <test_14>:
   135b0:	818180b7          	lui	ra,0x81818
   135b4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135b8:	00700113          	li	sp,7
   135bc:	4020d1b3          	sra	gp,ra,sp
   135c0:	ff030eb7          	lui	t4,0xff030
   135c4:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   135c8:	00e00e13          	li	t3,14
   135cc:	43d19463          	bne	gp,t4,139f4 <fail>

000135d0 <test_15>:
   135d0:	818180b7          	lui	ra,0x81818
   135d4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135d8:	00e00113          	li	sp,14
   135dc:	4020d1b3          	sra	gp,ra,sp
   135e0:	fffe0eb7          	lui	t4,0xfffe0
   135e4:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   135e8:	00f00e13          	li	t3,15
   135ec:	41d19463          	bne	gp,t4,139f4 <fail>

000135f0 <test_16>:
   135f0:	818180b7          	lui	ra,0x81818
   135f4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135f8:	01f00113          	li	sp,31
   135fc:	4020d1b3          	sra	gp,ra,sp
   13600:	fff00e93          	li	t4,-1
   13604:	01000e13          	li	t3,16
   13608:	3fd19663          	bne	gp,t4,139f4 <fail>

0001360c <test_17>:
   1360c:	818180b7          	lui	ra,0x81818
   13610:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13614:	fc000113          	li	sp,-64
   13618:	4020d1b3          	sra	gp,ra,sp
   1361c:	81818eb7          	lui	t4,0x81818
   13620:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   13624:	01100e13          	li	t3,17
   13628:	3dd19663          	bne	gp,t4,139f4 <fail>

0001362c <test_18>:
   1362c:	818180b7          	lui	ra,0x81818
   13630:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13634:	fc100113          	li	sp,-63
   13638:	4020d1b3          	sra	gp,ra,sp
   1363c:	c0c0ceb7          	lui	t4,0xc0c0c
   13640:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   13644:	01200e13          	li	t3,18
   13648:	3bd19663          	bne	gp,t4,139f4 <fail>

0001364c <test_19>:
   1364c:	818180b7          	lui	ra,0x81818
   13650:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13654:	fc700113          	li	sp,-57
   13658:	4020d1b3          	sra	gp,ra,sp
   1365c:	ff030eb7          	lui	t4,0xff030
   13660:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   13664:	01300e13          	li	t3,19
   13668:	39d19663          	bne	gp,t4,139f4 <fail>

0001366c <test_20>:
   1366c:	818180b7          	lui	ra,0x81818
   13670:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13674:	fce00113          	li	sp,-50
   13678:	4020d1b3          	sra	gp,ra,sp
   1367c:	fffe0eb7          	lui	t4,0xfffe0
   13680:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   13684:	01400e13          	li	t3,20
   13688:	37d19663          	bne	gp,t4,139f4 <fail>

0001368c <test_21>:
   1368c:	818180b7          	lui	ra,0x81818
   13690:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13694:	fff00113          	li	sp,-1
   13698:	4020d1b3          	sra	gp,ra,sp
   1369c:	fff00e93          	li	t4,-1
   136a0:	01500e13          	li	t3,21
   136a4:	35d19863          	bne	gp,t4,139f4 <fail>

000136a8 <test_22>:
   136a8:	800000b7          	lui	ra,0x80000
   136ac:	00700113          	li	sp,7
   136b0:	4020d0b3          	sra	ra,ra,sp
   136b4:	ff000eb7          	lui	t4,0xff000
   136b8:	01600e13          	li	t3,22
   136bc:	33d09c63          	bne	ra,t4,139f4 <fail>

000136c0 <test_23>:
   136c0:	800000b7          	lui	ra,0x80000
   136c4:	00e00113          	li	sp,14
   136c8:	4020d133          	sra	sp,ra,sp
   136cc:	fffe0eb7          	lui	t4,0xfffe0
   136d0:	01700e13          	li	t3,23
   136d4:	33d11063          	bne	sp,t4,139f4 <fail>

000136d8 <test_24>:
   136d8:	00700093          	li	ra,7
   136dc:	4010d0b3          	sra	ra,ra,ra
   136e0:	00000e93          	li	t4,0
   136e4:	01800e13          	li	t3,24
   136e8:	31d09663          	bne	ra,t4,139f4 <fail>

000136ec <test_25>:
   136ec:	00000213          	li	tp,0
   136f0:	800000b7          	lui	ra,0x80000
   136f4:	00700113          	li	sp,7
   136f8:	4020d1b3          	sra	gp,ra,sp
   136fc:	00018313          	mv	t1,gp
   13700:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13704:	00200293          	li	t0,2
   13708:	fe5214e3          	bne	tp,t0,136f0 <test_25+0x4>
   1370c:	ff000eb7          	lui	t4,0xff000
   13710:	01900e13          	li	t3,25
   13714:	2fd31063          	bne	t1,t4,139f4 <fail>

00013718 <test_26>:
   13718:	00000213          	li	tp,0
   1371c:	800000b7          	lui	ra,0x80000
   13720:	00e00113          	li	sp,14
   13724:	4020d1b3          	sra	gp,ra,sp
   13728:	00000013          	nop
   1372c:	00018313          	mv	t1,gp
   13730:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13734:	00200293          	li	t0,2
   13738:	fe5212e3          	bne	tp,t0,1371c <test_26+0x4>
   1373c:	fffe0eb7          	lui	t4,0xfffe0
   13740:	01a00e13          	li	t3,26
   13744:	2bd31863          	bne	t1,t4,139f4 <fail>

00013748 <test_27>:
   13748:	00000213          	li	tp,0
   1374c:	800000b7          	lui	ra,0x80000
   13750:	01f00113          	li	sp,31
   13754:	4020d1b3          	sra	gp,ra,sp
   13758:	00000013          	nop
   1375c:	00000013          	nop
   13760:	00018313          	mv	t1,gp
   13764:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13768:	00200293          	li	t0,2
   1376c:	fe5210e3          	bne	tp,t0,1374c <test_27+0x4>
   13770:	fff00e93          	li	t4,-1
   13774:	01b00e13          	li	t3,27
   13778:	27d31e63          	bne	t1,t4,139f4 <fail>

0001377c <test_28>:
   1377c:	00000213          	li	tp,0
   13780:	800000b7          	lui	ra,0x80000
   13784:	00700113          	li	sp,7
   13788:	4020d1b3          	sra	gp,ra,sp
   1378c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13790:	00200293          	li	t0,2
   13794:	fe5216e3          	bne	tp,t0,13780 <test_28+0x4>
   13798:	ff000eb7          	lui	t4,0xff000
   1379c:	01c00e13          	li	t3,28
   137a0:	25d19a63          	bne	gp,t4,139f4 <fail>

000137a4 <test_29>:
   137a4:	00000213          	li	tp,0
   137a8:	800000b7          	lui	ra,0x80000
   137ac:	00e00113          	li	sp,14
   137b0:	00000013          	nop
   137b4:	4020d1b3          	sra	gp,ra,sp
   137b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   137bc:	00200293          	li	t0,2
   137c0:	fe5214e3          	bne	tp,t0,137a8 <test_29+0x4>
   137c4:	fffe0eb7          	lui	t4,0xfffe0
   137c8:	01d00e13          	li	t3,29
   137cc:	23d19463          	bne	gp,t4,139f4 <fail>

000137d0 <test_30>:
   137d0:	00000213          	li	tp,0
   137d4:	800000b7          	lui	ra,0x80000
   137d8:	01f00113          	li	sp,31
   137dc:	00000013          	nop
   137e0:	00000013          	nop
   137e4:	4020d1b3          	sra	gp,ra,sp
   137e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   137ec:	00200293          	li	t0,2
   137f0:	fe5212e3          	bne	tp,t0,137d4 <test_30+0x4>
   137f4:	fff00e93          	li	t4,-1
   137f8:	01e00e13          	li	t3,30
   137fc:	1fd19c63          	bne	gp,t4,139f4 <fail>

00013800 <test_31>:
   13800:	00000213          	li	tp,0
   13804:	800000b7          	lui	ra,0x80000
   13808:	00000013          	nop
   1380c:	00700113          	li	sp,7
   13810:	4020d1b3          	sra	gp,ra,sp
   13814:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13818:	00200293          	li	t0,2
   1381c:	fe5214e3          	bne	tp,t0,13804 <test_31+0x4>
   13820:	ff000eb7          	lui	t4,0xff000
   13824:	01f00e13          	li	t3,31
   13828:	1dd19663          	bne	gp,t4,139f4 <fail>

0001382c <test_32>:
   1382c:	00000213          	li	tp,0
   13830:	800000b7          	lui	ra,0x80000
   13834:	00000013          	nop
   13838:	00e00113          	li	sp,14
   1383c:	00000013          	nop
   13840:	4020d1b3          	sra	gp,ra,sp
   13844:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13848:	00200293          	li	t0,2
   1384c:	fe5212e3          	bne	tp,t0,13830 <test_32+0x4>
   13850:	fffe0eb7          	lui	t4,0xfffe0
   13854:	02000e13          	li	t3,32
   13858:	19d19e63          	bne	gp,t4,139f4 <fail>

0001385c <test_33>:
   1385c:	00000213          	li	tp,0
   13860:	800000b7          	lui	ra,0x80000
   13864:	00000013          	nop
   13868:	00000013          	nop
   1386c:	01f00113          	li	sp,31
   13870:	4020d1b3          	sra	gp,ra,sp
   13874:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13878:	00200293          	li	t0,2
   1387c:	fe5212e3          	bne	tp,t0,13860 <test_33+0x4>
   13880:	fff00e93          	li	t4,-1
   13884:	02100e13          	li	t3,33
   13888:	17d19663          	bne	gp,t4,139f4 <fail>

0001388c <test_34>:
   1388c:	00000213          	li	tp,0
   13890:	00700113          	li	sp,7
   13894:	800000b7          	lui	ra,0x80000
   13898:	4020d1b3          	sra	gp,ra,sp
   1389c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138a0:	00200293          	li	t0,2
   138a4:	fe5216e3          	bne	tp,t0,13890 <test_34+0x4>
   138a8:	ff000eb7          	lui	t4,0xff000
   138ac:	02200e13          	li	t3,34
   138b0:	15d19263          	bne	gp,t4,139f4 <fail>

000138b4 <test_35>:
   138b4:	00000213          	li	tp,0
   138b8:	00e00113          	li	sp,14
   138bc:	800000b7          	lui	ra,0x80000
   138c0:	00000013          	nop
   138c4:	4020d1b3          	sra	gp,ra,sp
   138c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138cc:	00200293          	li	t0,2
   138d0:	fe5214e3          	bne	tp,t0,138b8 <test_35+0x4>
   138d4:	fffe0eb7          	lui	t4,0xfffe0
   138d8:	02300e13          	li	t3,35
   138dc:	11d19c63          	bne	gp,t4,139f4 <fail>

000138e0 <test_36>:
   138e0:	00000213          	li	tp,0
   138e4:	01f00113          	li	sp,31
   138e8:	800000b7          	lui	ra,0x80000
   138ec:	00000013          	nop
   138f0:	00000013          	nop
   138f4:	4020d1b3          	sra	gp,ra,sp
   138f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138fc:	00200293          	li	t0,2
   13900:	fe5212e3          	bne	tp,t0,138e4 <test_36+0x4>
   13904:	fff00e93          	li	t4,-1
   13908:	02400e13          	li	t3,36
   1390c:	0fd19463          	bne	gp,t4,139f4 <fail>

00013910 <test_37>:
   13910:	00000213          	li	tp,0
   13914:	00700113          	li	sp,7
   13918:	00000013          	nop
   1391c:	800000b7          	lui	ra,0x80000
   13920:	4020d1b3          	sra	gp,ra,sp
   13924:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13928:	00200293          	li	t0,2
   1392c:	fe5214e3          	bne	tp,t0,13914 <test_37+0x4>
   13930:	ff000eb7          	lui	t4,0xff000
   13934:	02500e13          	li	t3,37
   13938:	0bd19e63          	bne	gp,t4,139f4 <fail>

0001393c <test_38>:
   1393c:	00000213          	li	tp,0
   13940:	00e00113          	li	sp,14
   13944:	00000013          	nop
   13948:	800000b7          	lui	ra,0x80000
   1394c:	00000013          	nop
   13950:	4020d1b3          	sra	gp,ra,sp
   13954:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13958:	00200293          	li	t0,2
   1395c:	fe5212e3          	bne	tp,t0,13940 <test_38+0x4>
   13960:	fffe0eb7          	lui	t4,0xfffe0
   13964:	02600e13          	li	t3,38
   13968:	09d19663          	bne	gp,t4,139f4 <fail>

0001396c <test_39>:
   1396c:	00000213          	li	tp,0
   13970:	01f00113          	li	sp,31
   13974:	00000013          	nop
   13978:	00000013          	nop
   1397c:	800000b7          	lui	ra,0x80000
   13980:	4020d1b3          	sra	gp,ra,sp
   13984:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13988:	00200293          	li	t0,2
   1398c:	fe5212e3          	bne	tp,t0,13970 <test_39+0x4>
   13990:	fff00e93          	li	t4,-1
   13994:	02700e13          	li	t3,39
   13998:	05d19e63          	bne	gp,t4,139f4 <fail>

0001399c <test_40>:
   1399c:	00f00093          	li	ra,15
   139a0:	40105133          	sra	sp,zero,ra
   139a4:	00000e93          	li	t4,0
   139a8:	02800e13          	li	t3,40
   139ac:	05d11463          	bne	sp,t4,139f4 <fail>

000139b0 <test_41>:
   139b0:	02000093          	li	ra,32
   139b4:	4000d133          	sra	sp,ra,zero
   139b8:	02000e93          	li	t4,32
   139bc:	02900e13          	li	t3,41
   139c0:	03d11a63          	bne	sp,t4,139f4 <fail>

000139c4 <test_42>:
   139c4:	400050b3          	sra	ra,zero,zero
   139c8:	00000e93          	li	t4,0
   139cc:	02a00e13          	li	t3,42
   139d0:	03d09263          	bne	ra,t4,139f4 <fail>

000139d4 <test_43>:
   139d4:	40000093          	li	ra,1024
   139d8:	00001137          	lui	sp,0x1
   139dc:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   139e0:	4020d033          	sra	zero,ra,sp
   139e4:	00000e93          	li	t4,0
   139e8:	02b00e13          	li	t3,43
   139ec:	01d01463          	bne	zero,t4,139f4 <fail>
   139f0:	05c01063          	bne	zero,t3,13a30 <pass>

000139f4 <fail>:
   139f4:	0ff00513          	li	a0,255

000139f8 <.delay_fail>:
   139f8:	fff50513          	addi	a0,a0,-1
   139fc:	fe051ee3          	bnez	a0,139f8 <.delay_fail>
   13a00:	02000537          	lui	a0,0x2000
   13a04:	04500593          	li	a1,69
   13a08:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13a0c:	05200613          	li	a2,82
   13a10:	00c52023          	sw	a2,0(a0)
   13a14:	00c52023          	sw	a2,0(a0)
   13a18:	04f00693          	li	a3,79
   13a1c:	00d52023          	sw	a3,0(a0)
   13a20:	00c52023          	sw	a2,0(a0)
   13a24:	02000713          	li	a4,32
   13a28:	00e52023          	sw	a4,0(a0)
   13a2c:	f40fc06f          	j	1016c <sra_ret>

00013a30 <pass>:
   13a30:	0ff00513          	li	a0,255

00013a34 <.delay_ok>:
   13a34:	fff50513          	addi	a0,a0,-1
   13a38:	fe051ee3          	bnez	a0,13a34 <.delay_ok>
   13a3c:	02000537          	lui	a0,0x2000
   13a40:	04f00593          	li	a1,79
   13a44:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13a48:	04b00613          	li	a2,75
   13a4c:	00c52023          	sw	a2,0(a0)
   13a50:	02000713          	li	a4,32
   13a54:	00e52023          	sw	a4,0(a0)
   13a58:	f14fc06f          	j	1016c <sra_ret>

00013a5c <srli>:
   13a5c:	00008537          	lui	a0,0x8
   13a60:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   13a64:	00a00693          	li	a3,10
   13a68:	00100713          	li	a4,1

00013a6c <.delay_pr>:
   13a6c:	fff50513          	addi	a0,a0,-1
   13a70:	fe051ee3          	bnez	a0,13a6c <.delay_pr>
   13a74:	00014537          	lui	a0,0x14
   13a78:	a9850513          	addi	a0,a0,-1384 # 13a98 <.test_name>
   13a7c:	02000637          	lui	a2,0x2000

00013a80 <.prname_next>:
   13a80:	00050583          	lb	a1,0(a0)
   13a84:	00058e63          	beqz	a1,13aa0 <.prname_done>
   13a88:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   13a8c:	00150513          	addi	a0,a0,1
   13a90:	40e686b3          	sub	a3,a3,a4
   13a94:	fedff06f          	j	13a80 <.prname_next>

00013a98 <.test_name>:
   13a98:	696c7273          	csrrci	tp,0x696,24
   13a9c:	0000                	unimp
	...

00013aa0 <.prname_done>:
   13aa0:	02e00593          	li	a1,46

00013aa4 <.loop>:
   13aa4:	00b62023          	sw	a1,0(a2)
   13aa8:	40e686b3          	sub	a3,a3,a4
   13aac:	00068463          	beqz	a3,13ab4 <test_2>
   13ab0:	ff5ff0ef          	jal	ra,13aa4 <.loop>

00013ab4 <test_2>:
   13ab4:	ffff80b7          	lui	ra,0xffff8
   13ab8:	0000d193          	srli	gp,ra,0x0
   13abc:	ffff8eb7          	lui	t4,0xffff8
   13ac0:	00200e13          	li	t3,2
   13ac4:	2bd19263          	bne	gp,t4,13d68 <fail>

00013ac8 <test_3>:
   13ac8:	ffff80b7          	lui	ra,0xffff8
   13acc:	0010d193          	srli	gp,ra,0x1
   13ad0:	7fffceb7          	lui	t4,0x7fffc
   13ad4:	00300e13          	li	t3,3
   13ad8:	29d19863          	bne	gp,t4,13d68 <fail>

00013adc <test_4>:
   13adc:	ffff80b7          	lui	ra,0xffff8
   13ae0:	0070d193          	srli	gp,ra,0x7
   13ae4:	02000eb7          	lui	t4,0x2000
   13ae8:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5798>
   13aec:	00400e13          	li	t3,4
   13af0:	27d19c63          	bne	gp,t4,13d68 <fail>

00013af4 <test_5>:
   13af4:	ffff80b7          	lui	ra,0xffff8
   13af8:	00e0d193          	srli	gp,ra,0xe
   13afc:	00040eb7          	lui	t4,0x40
   13b00:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25896>
   13b04:	00500e13          	li	t3,5
   13b08:	27d19063          	bne	gp,t4,13d68 <fail>

00013b0c <test_6>:
   13b0c:	ffff80b7          	lui	ra,0xffff8
   13b10:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   13b14:	00f0d193          	srli	gp,ra,0xf
   13b18:	00020eb7          	lui	t4,0x20
   13b1c:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   13b20:	00600e13          	li	t3,6
   13b24:	25d19263          	bne	gp,t4,13d68 <fail>

00013b28 <test_7>:
   13b28:	fff00093          	li	ra,-1
   13b2c:	0000d193          	srli	gp,ra,0x0
   13b30:	fff00e93          	li	t4,-1
   13b34:	00700e13          	li	t3,7
   13b38:	23d19863          	bne	gp,t4,13d68 <fail>

00013b3c <test_8>:
   13b3c:	fff00093          	li	ra,-1
   13b40:	0010d193          	srli	gp,ra,0x1
   13b44:	80000eb7          	lui	t4,0x80000
   13b48:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   13b4c:	00800e13          	li	t3,8
   13b50:	21d19c63          	bne	gp,t4,13d68 <fail>

00013b54 <test_9>:
   13b54:	fff00093          	li	ra,-1
   13b58:	0070d193          	srli	gp,ra,0x7
   13b5c:	02000eb7          	lui	t4,0x2000
   13b60:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe5897>
   13b64:	00900e13          	li	t3,9
   13b68:	21d19063          	bne	gp,t4,13d68 <fail>

00013b6c <test_10>:
   13b6c:	fff00093          	li	ra,-1
   13b70:	00e0d193          	srli	gp,ra,0xe
   13b74:	00040eb7          	lui	t4,0x40
   13b78:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x25897>
   13b7c:	00a00e13          	li	t3,10
   13b80:	1fd19463          	bne	gp,t4,13d68 <fail>

00013b84 <test_11>:
   13b84:	fff00093          	li	ra,-1
   13b88:	01f0d193          	srli	gp,ra,0x1f
   13b8c:	00100e93          	li	t4,1
   13b90:	00b00e13          	li	t3,11
   13b94:	1dd19a63          	bne	gp,t4,13d68 <fail>

00013b98 <test_12>:
   13b98:	212120b7          	lui	ra,0x21212
   13b9c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   13ba0:	0000d193          	srli	gp,ra,0x0
   13ba4:	21212eb7          	lui	t4,0x21212
   13ba8:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f79b9>
   13bac:	00c00e13          	li	t3,12
   13bb0:	1bd19c63          	bne	gp,t4,13d68 <fail>

00013bb4 <test_13>:
   13bb4:	212120b7          	lui	ra,0x21212
   13bb8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   13bbc:	0010d193          	srli	gp,ra,0x1
   13bc0:	10909eb7          	lui	t4,0x10909
   13bc4:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108ee928>
   13bc8:	00d00e13          	li	t3,13
   13bcc:	19d19e63          	bne	gp,t4,13d68 <fail>

00013bd0 <test_14>:
   13bd0:	212120b7          	lui	ra,0x21212
   13bd4:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   13bd8:	0070d193          	srli	gp,ra,0x7
   13bdc:	00424eb7          	lui	t4,0x424
   13be0:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409ada>
   13be4:	00e00e13          	li	t3,14
   13be8:	19d19063          	bne	gp,t4,13d68 <fail>

00013bec <test_15>:
   13bec:	212120b7          	lui	ra,0x21212
   13bf0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   13bf4:	00e0d193          	srli	gp,ra,0xe
   13bf8:	00008eb7          	lui	t4,0x8
   13bfc:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   13c00:	00f00e13          	li	t3,15
   13c04:	17d19263          	bne	gp,t4,13d68 <fail>

00013c08 <test_16>:
   13c08:	212120b7          	lui	ra,0x21212
   13c0c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   13c10:	01f0d193          	srli	gp,ra,0x1f
   13c14:	00000e93          	li	t4,0
   13c18:	01000e13          	li	t3,16
   13c1c:	15d19663          	bne	gp,t4,13d68 <fail>

00013c20 <test_21>:
   13c20:	ffff80b7          	lui	ra,0xffff8
   13c24:	0010d093          	srli	ra,ra,0x1
   13c28:	7fffceb7          	lui	t4,0x7fffc
   13c2c:	01500e13          	li	t3,21
   13c30:	13d09c63          	bne	ra,t4,13d68 <fail>

00013c34 <test_22>:
   13c34:	00000213          	li	tp,0
   13c38:	ffff80b7          	lui	ra,0xffff8
   13c3c:	0010d193          	srli	gp,ra,0x1
   13c40:	00018313          	mv	t1,gp
   13c44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c48:	00200293          	li	t0,2
   13c4c:	fe5216e3          	bne	tp,t0,13c38 <test_22+0x4>
   13c50:	7fffceb7          	lui	t4,0x7fffc
   13c54:	01600e13          	li	t3,22
   13c58:	11d31863          	bne	t1,t4,13d68 <fail>

00013c5c <test_23>:
   13c5c:	00000213          	li	tp,0
   13c60:	ffff80b7          	lui	ra,0xffff8
   13c64:	00e0d193          	srli	gp,ra,0xe
   13c68:	00000013          	nop
   13c6c:	00018313          	mv	t1,gp
   13c70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c74:	00200293          	li	t0,2
   13c78:	fe5214e3          	bne	tp,t0,13c60 <test_23+0x4>
   13c7c:	00040eb7          	lui	t4,0x40
   13c80:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25896>
   13c84:	01700e13          	li	t3,23
   13c88:	0fd31063          	bne	t1,t4,13d68 <fail>

00013c8c <test_24>:
   13c8c:	00000213          	li	tp,0
   13c90:	ffff80b7          	lui	ra,0xffff8
   13c94:	00f0d193          	srli	gp,ra,0xf
   13c98:	00000013          	nop
   13c9c:	00000013          	nop
   13ca0:	00018313          	mv	t1,gp
   13ca4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13ca8:	00200293          	li	t0,2
   13cac:	fe5212e3          	bne	tp,t0,13c90 <test_24+0x4>
   13cb0:	00020eb7          	lui	t4,0x20
   13cb4:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   13cb8:	01800e13          	li	t3,24
   13cbc:	0bd31663          	bne	t1,t4,13d68 <fail>

00013cc0 <test_25>:
   13cc0:	00000213          	li	tp,0
   13cc4:	ffff80b7          	lui	ra,0xffff8
   13cc8:	0010d193          	srli	gp,ra,0x1
   13ccc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13cd0:	00200293          	li	t0,2
   13cd4:	fe5218e3          	bne	tp,t0,13cc4 <test_25+0x4>
   13cd8:	7fffceb7          	lui	t4,0x7fffc
   13cdc:	01900e13          	li	t3,25
   13ce0:	09d19463          	bne	gp,t4,13d68 <fail>

00013ce4 <test_26>:
   13ce4:	00000213          	li	tp,0
   13ce8:	ffff80b7          	lui	ra,0xffff8
   13cec:	00000013          	nop
   13cf0:	00e0d193          	srli	gp,ra,0xe
   13cf4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13cf8:	00200293          	li	t0,2
   13cfc:	fe5216e3          	bne	tp,t0,13ce8 <test_26+0x4>
   13d00:	00040eb7          	lui	t4,0x40
   13d04:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25896>
   13d08:	01a00e13          	li	t3,26
   13d0c:	05d19e63          	bne	gp,t4,13d68 <fail>

00013d10 <test_27>:
   13d10:	00000213          	li	tp,0
   13d14:	ffff80b7          	lui	ra,0xffff8
   13d18:	00000013          	nop
   13d1c:	00000013          	nop
   13d20:	00f0d193          	srli	gp,ra,0xf
   13d24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13d28:	00200293          	li	t0,2
   13d2c:	fe5214e3          	bne	tp,t0,13d14 <test_27+0x4>
   13d30:	00020eb7          	lui	t4,0x20
   13d34:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   13d38:	01b00e13          	li	t3,27
   13d3c:	03d19663          	bne	gp,t4,13d68 <fail>

00013d40 <test_28>:
   13d40:	01f05093          	srli	ra,zero,0x1f
   13d44:	00000e93          	li	t4,0
   13d48:	01c00e13          	li	t3,28
   13d4c:	01d09e63          	bne	ra,t4,13d68 <fail>

00013d50 <test_29>:
   13d50:	02100093          	li	ra,33
   13d54:	0140d013          	srli	zero,ra,0x14
   13d58:	00000e93          	li	t4,0
   13d5c:	01d00e13          	li	t3,29
   13d60:	01d01463          	bne	zero,t4,13d68 <fail>
   13d64:	05c01063          	bne	zero,t3,13da4 <pass>

00013d68 <fail>:
   13d68:	0ff00513          	li	a0,255

00013d6c <.delay_fail>:
   13d6c:	fff50513          	addi	a0,a0,-1
   13d70:	fe051ee3          	bnez	a0,13d6c <.delay_fail>
   13d74:	02000537          	lui	a0,0x2000
   13d78:	04500593          	li	a1,69
   13d7c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13d80:	05200613          	li	a2,82
   13d84:	00c52023          	sw	a2,0(a0)
   13d88:	00c52023          	sw	a2,0(a0)
   13d8c:	04f00693          	li	a3,79
   13d90:	00d52023          	sw	a3,0(a0)
   13d94:	00c52023          	sw	a2,0(a0)
   13d98:	02000713          	li	a4,32
   13d9c:	00e52023          	sw	a4,0(a0)
   13da0:	ba8fc06f          	j	10148 <srli_ret>

00013da4 <pass>:
   13da4:	0ff00513          	li	a0,255

00013da8 <.delay_ok>:
   13da8:	fff50513          	addi	a0,a0,-1
   13dac:	fe051ee3          	bnez	a0,13da8 <.delay_ok>
   13db0:	02000537          	lui	a0,0x2000
   13db4:	04f00593          	li	a1,79
   13db8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13dbc:	04b00613          	li	a2,75
   13dc0:	00c52023          	sw	a2,0(a0)
   13dc4:	02000713          	li	a4,32
   13dc8:	00e52023          	sw	a4,0(a0)
   13dcc:	b7cfc06f          	j	10148 <srli_ret>

00013dd0 <rem>:
   13dd0:	00008537          	lui	a0,0x8
   13dd4:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   13dd8:	00a00693          	li	a3,10
   13ddc:	00100713          	li	a4,1

00013de0 <.delay_pr>:
   13de0:	fff50513          	addi	a0,a0,-1
   13de4:	fe051ee3          	bnez	a0,13de0 <.delay_pr>
   13de8:	00014537          	lui	a0,0x14
   13dec:	e0c50513          	addi	a0,a0,-500 # 13e0c <.test_name>
   13df0:	02000637          	lui	a2,0x2000

00013df4 <.prname_next>:
   13df4:	00050583          	lb	a1,0(a0)
   13df8:	00058c63          	beqz	a1,13e10 <.prname_done>
   13dfc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   13e00:	00150513          	addi	a0,a0,1
   13e04:	40e686b3          	sub	a3,a3,a4
   13e08:	fedff06f          	j	13df4 <.prname_next>

00013e0c <.test_name>:
   13e0c:	6572                	flw	fa0,28(sp)
   13e0e:	006d                	c.nop	27

00013e10 <.prname_done>:
   13e10:	02e00593          	li	a1,46

00013e14 <.loop>:
   13e14:	00b62023          	sw	a1,0(a2)
   13e18:	40e686b3          	sub	a3,a3,a4
   13e1c:	00068463          	beqz	a3,13e24 <test_2>
   13e20:	ff5ff0ef          	jal	ra,13e14 <.loop>

00013e24 <test_2>:
   13e24:	01400093          	li	ra,20
   13e28:	00600113          	li	sp,6
   13e2c:	0220e1b3          	rem	gp,ra,sp
   13e30:	00200e93          	li	t4,2
   13e34:	00200e13          	li	t3,2
   13e38:	0dd19463          	bne	gp,t4,13f00 <fail>

00013e3c <test_3>:
   13e3c:	fec00093          	li	ra,-20
   13e40:	00600113          	li	sp,6
   13e44:	0220e1b3          	rem	gp,ra,sp
   13e48:	ffe00e93          	li	t4,-2
   13e4c:	00300e13          	li	t3,3
   13e50:	0bd19863          	bne	gp,t4,13f00 <fail>

00013e54 <test_4>:
   13e54:	01400093          	li	ra,20
   13e58:	ffa00113          	li	sp,-6
   13e5c:	0220e1b3          	rem	gp,ra,sp
   13e60:	00200e93          	li	t4,2
   13e64:	00400e13          	li	t3,4
   13e68:	09d19c63          	bne	gp,t4,13f00 <fail>

00013e6c <test_5>:
   13e6c:	fec00093          	li	ra,-20
   13e70:	ffa00113          	li	sp,-6
   13e74:	0220e1b3          	rem	gp,ra,sp
   13e78:	ffe00e93          	li	t4,-2
   13e7c:	00500e13          	li	t3,5
   13e80:	09d19063          	bne	gp,t4,13f00 <fail>

00013e84 <test_6>:
   13e84:	800000b7          	lui	ra,0x80000
   13e88:	00100113          	li	sp,1
   13e8c:	0220e1b3          	rem	gp,ra,sp
   13e90:	00000e93          	li	t4,0
   13e94:	00600e13          	li	t3,6
   13e98:	07d19463          	bne	gp,t4,13f00 <fail>

00013e9c <test_7>:
   13e9c:	800000b7          	lui	ra,0x80000
   13ea0:	fff00113          	li	sp,-1
   13ea4:	0220e1b3          	rem	gp,ra,sp
   13ea8:	00000e93          	li	t4,0
   13eac:	00700e13          	li	t3,7
   13eb0:	05d19863          	bne	gp,t4,13f00 <fail>

00013eb4 <test_8>:
   13eb4:	800000b7          	lui	ra,0x80000
   13eb8:	00000113          	li	sp,0
   13ebc:	0220e1b3          	rem	gp,ra,sp
   13ec0:	80000eb7          	lui	t4,0x80000
   13ec4:	00800e13          	li	t3,8
   13ec8:	03d19c63          	bne	gp,t4,13f00 <fail>

00013ecc <test_9>:
   13ecc:	00100093          	li	ra,1
   13ed0:	00000113          	li	sp,0
   13ed4:	0220e1b3          	rem	gp,ra,sp
   13ed8:	00100e93          	li	t4,1
   13edc:	00900e13          	li	t3,9
   13ee0:	03d19063          	bne	gp,t4,13f00 <fail>

00013ee4 <test_10>:
   13ee4:	00000093          	li	ra,0
   13ee8:	00000113          	li	sp,0
   13eec:	0220e1b3          	rem	gp,ra,sp
   13ef0:	00000e93          	li	t4,0
   13ef4:	00a00e13          	li	t3,10
   13ef8:	01d19463          	bne	gp,t4,13f00 <fail>
   13efc:	05c01063          	bne	zero,t3,13f3c <pass>

00013f00 <fail>:
   13f00:	0ff00513          	li	a0,255

00013f04 <.delay_fail>:
   13f04:	fff50513          	addi	a0,a0,-1
   13f08:	fe051ee3          	bnez	a0,13f04 <.delay_fail>
   13f0c:	02000537          	lui	a0,0x2000
   13f10:	04500593          	li	a1,69
   13f14:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13f18:	05200613          	li	a2,82
   13f1c:	00c52023          	sw	a2,0(a0)
   13f20:	00c52023          	sw	a2,0(a0)
   13f24:	04f00693          	li	a3,79
   13f28:	00d52023          	sw	a3,0(a0)
   13f2c:	00c52023          	sw	a2,0(a0)
   13f30:	02000713          	li	a4,32
   13f34:	00e52023          	sw	a4,0(a0)
   13f38:	a60fc06f          	j	10198 <rem_ret>

00013f3c <pass>:
   13f3c:	0ff00513          	li	a0,255

00013f40 <.delay_ok>:
   13f40:	fff50513          	addi	a0,a0,-1
   13f44:	fe051ee3          	bnez	a0,13f40 <.delay_ok>
   13f48:	02000537          	lui	a0,0x2000
   13f4c:	04f00593          	li	a1,79
   13f50:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   13f54:	04b00613          	li	a2,75
   13f58:	00c52023          	sw	a2,0(a0)
   13f5c:	02000713          	li	a4,32
   13f60:	00e52023          	sw	a4,0(a0)
   13f64:	a34fc06f          	j	10198 <rem_ret>

00013f68 <lw>:
   13f68:	00008537          	lui	a0,0x8
   13f6c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   13f70:	00a00693          	li	a3,10
   13f74:	00100713          	li	a4,1

00013f78 <.delay_pr>:
   13f78:	fff50513          	addi	a0,a0,-1
   13f7c:	fe051ee3          	bnez	a0,13f78 <.delay_pr>
   13f80:	00014537          	lui	a0,0x14
   13f84:	fa450513          	addi	a0,a0,-92 # 13fa4 <.test_name>
   13f88:	02000637          	lui	a2,0x2000

00013f8c <.prname_next>:
   13f8c:	00050583          	lb	a1,0(a0)
   13f90:	00058c63          	beqz	a1,13fa8 <.prname_done>
   13f94:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   13f98:	00150513          	addi	a0,a0,1
   13f9c:	40e686b3          	sub	a3,a3,a4
   13fa0:	fedff06f          	j	13f8c <.prname_next>

00013fa4 <.test_name>:
   13fa4:	776c                	flw	fa1,108(a4)
	...

00013fa8 <.prname_done>:
   13fa8:	02e00593          	li	a1,46

00013fac <.loop>:
   13fac:	00b62023          	sw	a1,0(a2)
   13fb0:	40e686b3          	sub	a3,a3,a4
   13fb4:	00068463          	beqz	a3,13fbc <test_2>
   13fb8:	ff5ff0ef          	jal	ra,13fac <.loop>

00013fbc <test_2>:
   13fbc:	7ffec097          	auipc	ra,0x7ffec
   13fc0:	07408093          	addi	ra,ra,116 # 80000030 <tdat>
   13fc4:	0000a183          	lw	gp,0(ra)
   13fc8:	00ff0eb7          	lui	t4,0xff0
   13fcc:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5997>
   13fd0:	00200e13          	li	t3,2
   13fd4:	27d19a63          	bne	gp,t4,14248 <fail>

00013fd8 <test_3>:
   13fd8:	7ffec097          	auipc	ra,0x7ffec
   13fdc:	05808093          	addi	ra,ra,88 # 80000030 <tdat>
   13fe0:	0040a183          	lw	gp,4(ra)
   13fe4:	ff010eb7          	lui	t4,0xff010
   13fe8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13fec:	00300e13          	li	t3,3
   13ff0:	25d19c63          	bne	gp,t4,14248 <fail>

00013ff4 <test_4>:
   13ff4:	7ffec097          	auipc	ra,0x7ffec
   13ff8:	03c08093          	addi	ra,ra,60 # 80000030 <tdat>
   13ffc:	0080a183          	lw	gp,8(ra)
   14000:	0ff01eb7          	lui	t4,0xff01
   14004:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   14008:	00400e13          	li	t3,4
   1400c:	23d19e63          	bne	gp,t4,14248 <fail>

00014010 <test_5>:
   14010:	7ffec097          	auipc	ra,0x7ffec
   14014:	02008093          	addi	ra,ra,32 # 80000030 <tdat>
   14018:	00c0a183          	lw	gp,12(ra)
   1401c:	f00ffeb7          	lui	t4,0xf00ff
   14020:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   14024:	00500e13          	li	t3,5
   14028:	23d19063          	bne	gp,t4,14248 <fail>

0001402c <test_6>:
   1402c:	7ffec097          	auipc	ra,0x7ffec
   14030:	01008093          	addi	ra,ra,16 # 8000003c <tdat4>
   14034:	ff40a183          	lw	gp,-12(ra)
   14038:	00ff0eb7          	lui	t4,0xff0
   1403c:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5997>
   14040:	00600e13          	li	t3,6
   14044:	21d19263          	bne	gp,t4,14248 <fail>

00014048 <test_7>:
   14048:	7ffec097          	auipc	ra,0x7ffec
   1404c:	ff408093          	addi	ra,ra,-12 # 8000003c <tdat4>
   14050:	ff80a183          	lw	gp,-8(ra)
   14054:	ff010eb7          	lui	t4,0xff010
   14058:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   1405c:	00700e13          	li	t3,7
   14060:	1fd19463          	bne	gp,t4,14248 <fail>

00014064 <test_8>:
   14064:	7ffec097          	auipc	ra,0x7ffec
   14068:	fd808093          	addi	ra,ra,-40 # 8000003c <tdat4>
   1406c:	ffc0a183          	lw	gp,-4(ra)
   14070:	0ff01eb7          	lui	t4,0xff01
   14074:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   14078:	00800e13          	li	t3,8
   1407c:	1dd19663          	bne	gp,t4,14248 <fail>

00014080 <test_9>:
   14080:	7ffec097          	auipc	ra,0x7ffec
   14084:	fbc08093          	addi	ra,ra,-68 # 8000003c <tdat4>
   14088:	0000a183          	lw	gp,0(ra)
   1408c:	f00ffeb7          	lui	t4,0xf00ff
   14090:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   14094:	00900e13          	li	t3,9
   14098:	1bd19863          	bne	gp,t4,14248 <fail>

0001409c <test_10>:
   1409c:	7ffec097          	auipc	ra,0x7ffec
   140a0:	f9408093          	addi	ra,ra,-108 # 80000030 <tdat>
   140a4:	fe008093          	addi	ra,ra,-32
   140a8:	0200a183          	lw	gp,32(ra)
   140ac:	00ff0eb7          	lui	t4,0xff0
   140b0:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5997>
   140b4:	00a00e13          	li	t3,10
   140b8:	19d19863          	bne	gp,t4,14248 <fail>

000140bc <test_11>:
   140bc:	7ffec097          	auipc	ra,0x7ffec
   140c0:	f7408093          	addi	ra,ra,-140 # 80000030 <tdat>
   140c4:	ffd08093          	addi	ra,ra,-3
   140c8:	0070a183          	lw	gp,7(ra)
   140cc:	ff010eb7          	lui	t4,0xff010
   140d0:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   140d4:	00b00e13          	li	t3,11
   140d8:	17d19863          	bne	gp,t4,14248 <fail>

000140dc <test_12>:
   140dc:	00c00e13          	li	t3,12
   140e0:	00000213          	li	tp,0
   140e4:	7ffec097          	auipc	ra,0x7ffec
   140e8:	f5008093          	addi	ra,ra,-176 # 80000034 <tdat2>
   140ec:	0040a183          	lw	gp,4(ra)
   140f0:	00018313          	mv	t1,gp
   140f4:	0ff01eb7          	lui	t4,0xff01
   140f8:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   140fc:	15d31663          	bne	t1,t4,14248 <fail>
   14100:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14104:	00200293          	li	t0,2
   14108:	fc521ee3          	bne	tp,t0,140e4 <test_12+0x8>

0001410c <test_13>:
   1410c:	00d00e13          	li	t3,13
   14110:	00000213          	li	tp,0
   14114:	7ffec097          	auipc	ra,0x7ffec
   14118:	f2408093          	addi	ra,ra,-220 # 80000038 <tdat3>
   1411c:	0040a183          	lw	gp,4(ra)
   14120:	00000013          	nop
   14124:	00018313          	mv	t1,gp
   14128:	f00ffeb7          	lui	t4,0xf00ff
   1412c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   14130:	11d31c63          	bne	t1,t4,14248 <fail>
   14134:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14138:	00200293          	li	t0,2
   1413c:	fc521ce3          	bne	tp,t0,14114 <test_13+0x8>

00014140 <test_14>:
   14140:	00e00e13          	li	t3,14
   14144:	00000213          	li	tp,0
   14148:	7ffec097          	auipc	ra,0x7ffec
   1414c:	ee808093          	addi	ra,ra,-280 # 80000030 <tdat>
   14150:	0040a183          	lw	gp,4(ra)
   14154:	00000013          	nop
   14158:	00000013          	nop
   1415c:	00018313          	mv	t1,gp
   14160:	ff010eb7          	lui	t4,0xff010
   14164:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   14168:	0fd31063          	bne	t1,t4,14248 <fail>
   1416c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14170:	00200293          	li	t0,2
   14174:	fc521ae3          	bne	tp,t0,14148 <test_14+0x8>

00014178 <test_15>:
   14178:	00f00e13          	li	t3,15
   1417c:	00000213          	li	tp,0
   14180:	7ffec097          	auipc	ra,0x7ffec
   14184:	eb408093          	addi	ra,ra,-332 # 80000034 <tdat2>
   14188:	0040a183          	lw	gp,4(ra)
   1418c:	0ff01eb7          	lui	t4,0xff01
   14190:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   14194:	0bd19a63          	bne	gp,t4,14248 <fail>
   14198:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1419c:	00200293          	li	t0,2
   141a0:	fe5210e3          	bne	tp,t0,14180 <test_15+0x8>

000141a4 <test_16>:
   141a4:	01000e13          	li	t3,16
   141a8:	00000213          	li	tp,0
   141ac:	7ffec097          	auipc	ra,0x7ffec
   141b0:	e8c08093          	addi	ra,ra,-372 # 80000038 <tdat3>
   141b4:	00000013          	nop
   141b8:	0040a183          	lw	gp,4(ra)
   141bc:	f00ffeb7          	lui	t4,0xf00ff
   141c0:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   141c4:	09d19263          	bne	gp,t4,14248 <fail>
   141c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   141cc:	00200293          	li	t0,2
   141d0:	fc521ee3          	bne	tp,t0,141ac <test_16+0x8>

000141d4 <test_17>:
   141d4:	01100e13          	li	t3,17
   141d8:	00000213          	li	tp,0
   141dc:	7ffec097          	auipc	ra,0x7ffec
   141e0:	e5408093          	addi	ra,ra,-428 # 80000030 <tdat>
   141e4:	00000013          	nop
   141e8:	00000013          	nop
   141ec:	0040a183          	lw	gp,4(ra)
   141f0:	ff010eb7          	lui	t4,0xff010
   141f4:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   141f8:	05d19863          	bne	gp,t4,14248 <fail>
   141fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14200:	00200293          	li	t0,2
   14204:	fc521ce3          	bne	tp,t0,141dc <test_17+0x8>

00014208 <test_18>:
   14208:	7ffec197          	auipc	gp,0x7ffec
   1420c:	e2818193          	addi	gp,gp,-472 # 80000030 <tdat>
   14210:	0001a103          	lw	sp,0(gp)
   14214:	00200113          	li	sp,2
   14218:	00200e93          	li	t4,2
   1421c:	01200e13          	li	t3,18
   14220:	03d11463          	bne	sp,t4,14248 <fail>

00014224 <test_19>:
   14224:	7ffec197          	auipc	gp,0x7ffec
   14228:	e0c18193          	addi	gp,gp,-500 # 80000030 <tdat>
   1422c:	0001a103          	lw	sp,0(gp)
   14230:	00000013          	nop
   14234:	00200113          	li	sp,2
   14238:	00200e93          	li	t4,2
   1423c:	01300e13          	li	t3,19
   14240:	01d11463          	bne	sp,t4,14248 <fail>
   14244:	05c01063          	bne	zero,t3,14284 <pass>

00014248 <fail>:
   14248:	0ff00513          	li	a0,255

0001424c <.delay_fail>:
   1424c:	fff50513          	addi	a0,a0,-1
   14250:	fe051ee3          	bnez	a0,1424c <.delay_fail>
   14254:	02000537          	lui	a0,0x2000
   14258:	04500593          	li	a1,69
   1425c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14260:	05200613          	li	a2,82
   14264:	00c52023          	sw	a2,0(a0)
   14268:	00c52023          	sw	a2,0(a0)
   1426c:	04f00693          	li	a3,79
   14270:	00d52023          	sw	a3,0(a0)
   14274:	00c52023          	sw	a2,0(a0)
   14278:	02000713          	li	a4,32
   1427c:	00e52023          	sw	a4,0(a0)
   14280:	e8dfb06f          	j	1010c <lw_ret>

00014284 <pass>:
   14284:	0ff00513          	li	a0,255

00014288 <.delay_ok>:
   14288:	fff50513          	addi	a0,a0,-1
   1428c:	fe051ee3          	bnez	a0,14288 <.delay_ok>
   14290:	02000537          	lui	a0,0x2000
   14294:	04f00593          	li	a1,79
   14298:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1429c:	04b00613          	li	a2,75
   142a0:	00c52023          	sw	a2,0(a0)
   142a4:	02000713          	li	a4,32
   142a8:	00e52023          	sw	a4,0(a0)
   142ac:	e61fb06f          	j	1010c <lw_ret>

000142b0 <div>:
   142b0:	00008537          	lui	a0,0x8
   142b4:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   142b8:	00a00693          	li	a3,10
   142bc:	00100713          	li	a4,1

000142c0 <.delay_pr>:
   142c0:	fff50513          	addi	a0,a0,-1
   142c4:	fe051ee3          	bnez	a0,142c0 <.delay_pr>
   142c8:	00014537          	lui	a0,0x14
   142cc:	2ec50513          	addi	a0,a0,748 # 142ec <.test_name>
   142d0:	02000637          	lui	a2,0x2000

000142d4 <.prname_next>:
   142d4:	00050583          	lb	a1,0(a0)
   142d8:	00058c63          	beqz	a1,142f0 <.prname_done>
   142dc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   142e0:	00150513          	addi	a0,a0,1
   142e4:	40e686b3          	sub	a3,a3,a4
   142e8:	fedff06f          	j	142d4 <.prname_next>

000142ec <.test_name>:
   142ec:	6964                	flw	fs1,84(a0)
   142ee:	0076                	c.slli	zero,0x1d

000142f0 <.prname_done>:
   142f0:	02e00593          	li	a1,46

000142f4 <.loop>:
   142f4:	00b62023          	sw	a1,0(a2)
   142f8:	40e686b3          	sub	a3,a3,a4
   142fc:	00068463          	beqz	a3,14304 <test_2>
   14300:	ff5ff0ef          	jal	ra,142f4 <.loop>

00014304 <test_2>:
   14304:	01400093          	li	ra,20
   14308:	00600113          	li	sp,6
   1430c:	0220c1b3          	div	gp,ra,sp
   14310:	00300e93          	li	t4,3
   14314:	00200e13          	li	t3,2
   14318:	0dd19463          	bne	gp,t4,143e0 <fail>

0001431c <test_3>:
   1431c:	fec00093          	li	ra,-20
   14320:	00600113          	li	sp,6
   14324:	0220c1b3          	div	gp,ra,sp
   14328:	ffd00e93          	li	t4,-3
   1432c:	00300e13          	li	t3,3
   14330:	0bd19863          	bne	gp,t4,143e0 <fail>

00014334 <test_4>:
   14334:	01400093          	li	ra,20
   14338:	ffa00113          	li	sp,-6
   1433c:	0220c1b3          	div	gp,ra,sp
   14340:	ffd00e93          	li	t4,-3
   14344:	00400e13          	li	t3,4
   14348:	09d19c63          	bne	gp,t4,143e0 <fail>

0001434c <test_5>:
   1434c:	fec00093          	li	ra,-20
   14350:	ffa00113          	li	sp,-6
   14354:	0220c1b3          	div	gp,ra,sp
   14358:	00300e93          	li	t4,3
   1435c:	00500e13          	li	t3,5
   14360:	09d19063          	bne	gp,t4,143e0 <fail>

00014364 <test_6>:
   14364:	800000b7          	lui	ra,0x80000
   14368:	00100113          	li	sp,1
   1436c:	0220c1b3          	div	gp,ra,sp
   14370:	80000eb7          	lui	t4,0x80000
   14374:	00600e13          	li	t3,6
   14378:	07d19463          	bne	gp,t4,143e0 <fail>

0001437c <test_7>:
   1437c:	800000b7          	lui	ra,0x80000
   14380:	fff00113          	li	sp,-1
   14384:	0220c1b3          	div	gp,ra,sp
   14388:	80000eb7          	lui	t4,0x80000
   1438c:	00700e13          	li	t3,7
   14390:	05d19863          	bne	gp,t4,143e0 <fail>

00014394 <test_8>:
   14394:	800000b7          	lui	ra,0x80000
   14398:	00000113          	li	sp,0
   1439c:	0220c1b3          	div	gp,ra,sp
   143a0:	fff00e93          	li	t4,-1
   143a4:	00800e13          	li	t3,8
   143a8:	03d19c63          	bne	gp,t4,143e0 <fail>

000143ac <test_9>:
   143ac:	00100093          	li	ra,1
   143b0:	00000113          	li	sp,0
   143b4:	0220c1b3          	div	gp,ra,sp
   143b8:	fff00e93          	li	t4,-1
   143bc:	00900e13          	li	t3,9
   143c0:	03d19063          	bne	gp,t4,143e0 <fail>

000143c4 <test_10>:
   143c4:	00000093          	li	ra,0
   143c8:	00000113          	li	sp,0
   143cc:	0220c1b3          	div	gp,ra,sp
   143d0:	fff00e93          	li	t4,-1
   143d4:	00a00e13          	li	t3,10
   143d8:	01d19463          	bne	gp,t4,143e0 <fail>
   143dc:	05c01063          	bne	zero,t3,1441c <pass>

000143e0 <fail>:
   143e0:	0ff00513          	li	a0,255

000143e4 <.delay_fail>:
   143e4:	fff50513          	addi	a0,a0,-1
   143e8:	fe051ee3          	bnez	a0,143e4 <.delay_fail>
   143ec:	02000537          	lui	a0,0x2000
   143f0:	04500593          	li	a1,69
   143f4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   143f8:	05200613          	li	a2,82
   143fc:	00c52023          	sw	a2,0(a0)
   14400:	00c52023          	sw	a2,0(a0)
   14404:	04f00693          	li	a3,79
   14408:	00d52023          	sw	a3,0(a0)
   1440c:	00c52023          	sw	a2,0(a0)
   14410:	02000713          	li	a4,32
   14414:	00e52023          	sw	a4,0(a0)
   14418:	d79fb06f          	j	10190 <div_ret>

0001441c <pass>:
   1441c:	0ff00513          	li	a0,255

00014420 <.delay_ok>:
   14420:	fff50513          	addi	a0,a0,-1
   14424:	fe051ee3          	bnez	a0,14420 <.delay_ok>
   14428:	02000537          	lui	a0,0x2000
   1442c:	04f00593          	li	a1,79
   14430:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14434:	04b00613          	li	a2,75
   14438:	00c52023          	sw	a2,0(a0)
   1443c:	02000713          	li	a4,32
   14440:	00e52023          	sw	a4,0(a0)
   14444:	d4dfb06f          	j	10190 <div_ret>

00014448 <auipc>:
   14448:	00008537          	lui	a0,0x8
   1444c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   14450:	00a00693          	li	a3,10
   14454:	00100713          	li	a4,1

00014458 <.delay_pr>:
   14458:	fff50513          	addi	a0,a0,-1
   1445c:	fe051ee3          	bnez	a0,14458 <.delay_pr>
   14460:	00014537          	lui	a0,0x14
   14464:	48450513          	addi	a0,a0,1156 # 14484 <.test_name>
   14468:	02000637          	lui	a2,0x2000

0001446c <.prname_next>:
   1446c:	00050583          	lb	a1,0(a0)
   14470:	00058e63          	beqz	a1,1448c <.prname_done>
   14474:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   14478:	00150513          	addi	a0,a0,1
   1447c:	40e686b3          	sub	a3,a3,a4
   14480:	fedff06f          	j	1446c <.prname_next>

00014484 <.test_name>:
   14484:	7561                	lui	a0,0xffff8
   14486:	7069                	c.lui	zero,0xffffa
   14488:	00000063          	beqz	zero,14488 <.test_name+0x4>

0001448c <.prname_done>:
   1448c:	02e00593          	li	a1,46

00014490 <.loop>:
   14490:	00b62023          	sw	a1,0(a2)
   14494:	40e686b3          	sub	a3,a3,a4
   14498:	00068463          	beqz	a3,144a0 <test_2>
   1449c:	ff5ff0ef          	jal	ra,14490 <.loop>

000144a0 <test_2>:
   144a0:	00002517          	auipc	a0,0x2
   144a4:	71c50513          	addi	a0,a0,1820 # 16bbc <.loop+0xc>
   144a8:	004005ef          	jal	a1,144ac <test_2+0xc>
   144ac:	40b50533          	sub	a0,a0,a1
   144b0:	00002eb7          	lui	t4,0x2
   144b4:	710e8e93          	addi	t4,t4,1808 # 2710 <_start-0xd8f0>
   144b8:	00200e13          	li	t3,2
   144bc:	03d51463          	bne	a0,t4,144e4 <fail>

000144c0 <test_3>:
   144c0:	ffffe517          	auipc	a0,0xffffe
   144c4:	8fc50513          	addi	a0,a0,-1796 # 11dbc <test_14+0x24>
   144c8:	004005ef          	jal	a1,144cc <test_3+0xc>
   144cc:	40b50533          	sub	a0,a0,a1
   144d0:	ffffeeb7          	lui	t4,0xffffe
   144d4:	8f0e8e93          	addi	t4,t4,-1808 # ffffd8f0 <_edata+0x7fffd880>
   144d8:	00300e13          	li	t3,3
   144dc:	01d51463          	bne	a0,t4,144e4 <fail>
   144e0:	05c01063          	bne	zero,t3,14520 <pass>

000144e4 <fail>:
   144e4:	0ff00513          	li	a0,255

000144e8 <.delay_fail>:
   144e8:	fff50513          	addi	a0,a0,-1
   144ec:	fe051ee3          	bnez	a0,144e8 <.delay_fail>
   144f0:	02000537          	lui	a0,0x2000
   144f4:	04500593          	li	a1,69
   144f8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   144fc:	05200613          	li	a2,82
   14500:	00c52023          	sw	a2,0(a0)
   14504:	00c52023          	sw	a2,0(a0)
   14508:	04f00693          	li	a3,79
   1450c:	00d52023          	sw	a3,0(a0)
   14510:	00c52023          	sw	a2,0(a0)
   14514:	02000713          	li	a4,32
   14518:	00e52023          	sw	a4,0(a0)
   1451c:	bb9fb06f          	j	100d4 <auipc_ret>

00014520 <pass>:
   14520:	0ff00513          	li	a0,255

00014524 <.delay_ok>:
   14524:	fff50513          	addi	a0,a0,-1
   14528:	fe051ee3          	bnez	a0,14524 <.delay_ok>
   1452c:	02000537          	lui	a0,0x2000
   14530:	04f00593          	li	a1,79
   14534:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14538:	04b00613          	li	a2,75
   1453c:	00c52023          	sw	a2,0(a0)
   14540:	02000713          	li	a4,32
   14544:	00e52023          	sw	a4,0(a0)
   14548:	b8dfb06f          	j	100d4 <auipc_ret>

0001454c <addi>:
   1454c:	00008537          	lui	a0,0x8
   14550:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   14554:	00a00693          	li	a3,10
   14558:	00100713          	li	a4,1

0001455c <.delay_pr>:
   1455c:	fff50513          	addi	a0,a0,-1
   14560:	fe051ee3          	bnez	a0,1455c <.delay_pr>
   14564:	00014537          	lui	a0,0x14
   14568:	58850513          	addi	a0,a0,1416 # 14588 <.test_name>
   1456c:	02000637          	lui	a2,0x2000

00014570 <.prname_next>:
   14570:	00050583          	lb	a1,0(a0)
   14574:	00058e63          	beqz	a1,14590 <.prname_done>
   14578:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   1457c:	00150513          	addi	a0,a0,1
   14580:	40e686b3          	sub	a3,a3,a4
   14584:	fedff06f          	j	14570 <.prname_next>

00014588 <.test_name>:
   14588:	6461                	lui	s0,0x18
   1458a:	6964                	flw	fs1,84(a0)
   1458c:	0000                	unimp
	...

00014590 <.prname_done>:
   14590:	02e00593          	li	a1,46

00014594 <.loop>:
   14594:	00b62023          	sw	a1,0(a2)
   14598:	40e686b3          	sub	a3,a3,a4
   1459c:	00068463          	beqz	a3,145a4 <test_2>
   145a0:	ff5ff0ef          	jal	ra,14594 <.loop>

000145a4 <test_2>:
   145a4:	00000093          	li	ra,0
   145a8:	00008193          	mv	gp,ra
   145ac:	00000e93          	li	t4,0
   145b0:	00200e13          	li	t3,2
   145b4:	27d19c63          	bne	gp,t4,1482c <fail>

000145b8 <test_3>:
   145b8:	00100093          	li	ra,1
   145bc:	00108193          	addi	gp,ra,1 # 80000001 <_edata+0xffffff91>
   145c0:	00200e93          	li	t4,2
   145c4:	00300e13          	li	t3,3
   145c8:	27d19263          	bne	gp,t4,1482c <fail>

000145cc <test_4>:
   145cc:	00300093          	li	ra,3
   145d0:	00708193          	addi	gp,ra,7
   145d4:	00a00e93          	li	t4,10
   145d8:	00400e13          	li	t3,4
   145dc:	25d19863          	bne	gp,t4,1482c <fail>

000145e0 <test_5>:
   145e0:	00000093          	li	ra,0
   145e4:	80008193          	addi	gp,ra,-2048
   145e8:	80000e93          	li	t4,-2048
   145ec:	00500e13          	li	t3,5
   145f0:	23d19e63          	bne	gp,t4,1482c <fail>

000145f4 <test_6>:
   145f4:	800000b7          	lui	ra,0x80000
   145f8:	00008193          	mv	gp,ra
   145fc:	80000eb7          	lui	t4,0x80000
   14600:	00600e13          	li	t3,6
   14604:	23d19463          	bne	gp,t4,1482c <fail>

00014608 <test_7>:
   14608:	800000b7          	lui	ra,0x80000
   1460c:	80008193          	addi	gp,ra,-2048 # 7ffff800 <_edata+0xfffff790>
   14610:	80000eb7          	lui	t4,0x80000
   14614:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_edata+0xfffff790>
   14618:	00700e13          	li	t3,7
   1461c:	21d19863          	bne	gp,t4,1482c <fail>

00014620 <test_8>:
   14620:	00000093          	li	ra,0
   14624:	7ff08193          	addi	gp,ra,2047
   14628:	7ff00e93          	li	t4,2047
   1462c:	00800e13          	li	t3,8
   14630:	1fd19e63          	bne	gp,t4,1482c <fail>

00014634 <test_9>:
   14634:	800000b7          	lui	ra,0x80000
   14638:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1463c:	00008193          	mv	gp,ra
   14640:	80000eb7          	lui	t4,0x80000
   14644:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   14648:	00900e13          	li	t3,9
   1464c:	1fd19063          	bne	gp,t4,1482c <fail>

00014650 <test_10>:
   14650:	800000b7          	lui	ra,0x80000
   14654:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14658:	7ff08193          	addi	gp,ra,2047
   1465c:	80000eb7          	lui	t4,0x80000
   14660:	7fee8e93          	addi	t4,t4,2046 # 800007fe <_edata+0x78e>
   14664:	00a00e13          	li	t3,10
   14668:	1dd19263          	bne	gp,t4,1482c <fail>

0001466c <test_11>:
   1466c:	800000b7          	lui	ra,0x80000
   14670:	7ff08193          	addi	gp,ra,2047 # 800007ff <_edata+0x78f>
   14674:	80000eb7          	lui	t4,0x80000
   14678:	7ffe8e93          	addi	t4,t4,2047 # 800007ff <_edata+0x78f>
   1467c:	00b00e13          	li	t3,11
   14680:	1bd19663          	bne	gp,t4,1482c <fail>

00014684 <test_12>:
   14684:	800000b7          	lui	ra,0x80000
   14688:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1468c:	80008193          	addi	gp,ra,-2048
   14690:	7ffffeb7          	lui	t4,0x7ffff
   14694:	7ffe8e93          	addi	t4,t4,2047 # 7ffff7ff <_etext+0x7ffe5097>
   14698:	00c00e13          	li	t3,12
   1469c:	19d19863          	bne	gp,t4,1482c <fail>

000146a0 <test_13>:
   146a0:	00000093          	li	ra,0
   146a4:	fff08193          	addi	gp,ra,-1
   146a8:	fff00e93          	li	t4,-1
   146ac:	00d00e13          	li	t3,13
   146b0:	17d19e63          	bne	gp,t4,1482c <fail>

000146b4 <test_14>:
   146b4:	fff00093          	li	ra,-1
   146b8:	00108193          	addi	gp,ra,1
   146bc:	00000e93          	li	t4,0
   146c0:	00e00e13          	li	t3,14
   146c4:	17d19463          	bne	gp,t4,1482c <fail>

000146c8 <test_15>:
   146c8:	fff00093          	li	ra,-1
   146cc:	fff08193          	addi	gp,ra,-1
   146d0:	ffe00e93          	li	t4,-2
   146d4:	00f00e13          	li	t3,15
   146d8:	15d19a63          	bne	gp,t4,1482c <fail>

000146dc <test_16>:
   146dc:	800000b7          	lui	ra,0x80000
   146e0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   146e4:	00108193          	addi	gp,ra,1
   146e8:	80000eb7          	lui	t4,0x80000
   146ec:	01000e13          	li	t3,16
   146f0:	13d19e63          	bne	gp,t4,1482c <fail>

000146f4 <test_17>:
   146f4:	00d00093          	li	ra,13
   146f8:	00b08093          	addi	ra,ra,11
   146fc:	01800e93          	li	t4,24
   14700:	01100e13          	li	t3,17
   14704:	13d09463          	bne	ra,t4,1482c <fail>

00014708 <test_18>:
   14708:	00000213          	li	tp,0
   1470c:	00d00093          	li	ra,13
   14710:	00b08193          	addi	gp,ra,11
   14714:	00018313          	mv	t1,gp
   14718:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1471c:	00200293          	li	t0,2
   14720:	fe5216e3          	bne	tp,t0,1470c <test_18+0x4>
   14724:	01800e93          	li	t4,24
   14728:	01200e13          	li	t3,18
   1472c:	11d31063          	bne	t1,t4,1482c <fail>

00014730 <test_19>:
   14730:	00000213          	li	tp,0
   14734:	00d00093          	li	ra,13
   14738:	00a08193          	addi	gp,ra,10
   1473c:	00000013          	nop
   14740:	00018313          	mv	t1,gp
   14744:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14748:	00200293          	li	t0,2
   1474c:	fe5214e3          	bne	tp,t0,14734 <test_19+0x4>
   14750:	01700e93          	li	t4,23
   14754:	01300e13          	li	t3,19
   14758:	0dd31a63          	bne	t1,t4,1482c <fail>

0001475c <test_20>:
   1475c:	00000213          	li	tp,0
   14760:	00d00093          	li	ra,13
   14764:	00908193          	addi	gp,ra,9
   14768:	00000013          	nop
   1476c:	00000013          	nop
   14770:	00018313          	mv	t1,gp
   14774:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14778:	00200293          	li	t0,2
   1477c:	fe5212e3          	bne	tp,t0,14760 <test_20+0x4>
   14780:	01600e93          	li	t4,22
   14784:	01400e13          	li	t3,20
   14788:	0bd31263          	bne	t1,t4,1482c <fail>

0001478c <test_21>:
   1478c:	00000213          	li	tp,0
   14790:	00d00093          	li	ra,13
   14794:	00b08193          	addi	gp,ra,11
   14798:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1479c:	00200293          	li	t0,2
   147a0:	fe5218e3          	bne	tp,t0,14790 <test_21+0x4>
   147a4:	01800e93          	li	t4,24
   147a8:	01500e13          	li	t3,21
   147ac:	09d19063          	bne	gp,t4,1482c <fail>

000147b0 <test_22>:
   147b0:	00000213          	li	tp,0
   147b4:	00d00093          	li	ra,13
   147b8:	00000013          	nop
   147bc:	00a08193          	addi	gp,ra,10
   147c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   147c4:	00200293          	li	t0,2
   147c8:	fe5216e3          	bne	tp,t0,147b4 <test_22+0x4>
   147cc:	01700e93          	li	t4,23
   147d0:	01600e13          	li	t3,22
   147d4:	05d19c63          	bne	gp,t4,1482c <fail>

000147d8 <test_23>:
   147d8:	00000213          	li	tp,0
   147dc:	00d00093          	li	ra,13
   147e0:	00000013          	nop
   147e4:	00000013          	nop
   147e8:	00908193          	addi	gp,ra,9
   147ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   147f0:	00200293          	li	t0,2
   147f4:	fe5214e3          	bne	tp,t0,147dc <test_23+0x4>
   147f8:	01600e93          	li	t4,22
   147fc:	01700e13          	li	t3,23
   14800:	03d19663          	bne	gp,t4,1482c <fail>

00014804 <test_24>:
   14804:	02000093          	li	ra,32
   14808:	02000e93          	li	t4,32
   1480c:	01800e13          	li	t3,24
   14810:	01d09e63          	bne	ra,t4,1482c <fail>

00014814 <test_25>:
   14814:	02100093          	li	ra,33
   14818:	03208013          	addi	zero,ra,50
   1481c:	00000e93          	li	t4,0
   14820:	01900e13          	li	t3,25
   14824:	01d01463          	bne	zero,t4,1482c <fail>
   14828:	05c01063          	bne	zero,t3,14868 <pass>

0001482c <fail>:
   1482c:	0ff00513          	li	a0,255

00014830 <.delay_fail>:
   14830:	fff50513          	addi	a0,a0,-1
   14834:	fe051ee3          	bnez	a0,14830 <.delay_fail>
   14838:	02000537          	lui	a0,0x2000
   1483c:	04500593          	li	a1,69
   14840:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14844:	05200613          	li	a2,82
   14848:	00c52023          	sw	a2,0(a0)
   1484c:	00c52023          	sw	a2,0(a0)
   14850:	04f00693          	li	a3,79
   14854:	00d52023          	sw	a3,0(a0)
   14858:	00c52023          	sw	a2,0(a0)
   1485c:	02000713          	li	a4,32
   14860:	00e52023          	sw	a4,0(a0)
   14864:	8c5fb06f          	j	10128 <addi_ret>

00014868 <pass>:
   14868:	0ff00513          	li	a0,255

0001486c <.delay_ok>:
   1486c:	fff50513          	addi	a0,a0,-1
   14870:	fe051ee3          	bnez	a0,1486c <.delay_ok>
   14874:	02000537          	lui	a0,0x2000
   14878:	04f00593          	li	a1,79
   1487c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14880:	04b00613          	li	a2,75
   14884:	00c52023          	sw	a2,0(a0)
   14888:	02000713          	li	a4,32
   1488c:	00e52023          	sw	a4,0(a0)
   14890:	899fb06f          	j	10128 <addi_ret>

00014894 <jalr>:
   14894:	00008537          	lui	a0,0x8
   14898:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   1489c:	00a00693          	li	a3,10
   148a0:	00100713          	li	a4,1

000148a4 <.delay_pr>:
   148a4:	fff50513          	addi	a0,a0,-1
   148a8:	fe051ee3          	bnez	a0,148a4 <.delay_pr>
   148ac:	00015537          	lui	a0,0x15
   148b0:	8d050513          	addi	a0,a0,-1840 # 148d0 <.test_name>
   148b4:	02000637          	lui	a2,0x2000

000148b8 <.prname_next>:
   148b8:	00050583          	lb	a1,0(a0)
   148bc:	00058e63          	beqz	a1,148d8 <.prname_done>
   148c0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   148c4:	00150513          	addi	a0,a0,1
   148c8:	40e686b3          	sub	a3,a3,a4
   148cc:	fedff06f          	j	148b8 <.prname_next>

000148d0 <.test_name>:
   148d0:	616a                	flw	ft2,152(sp)
   148d2:	726c                	flw	fa1,100(a2)
   148d4:	0000                	unimp
	...

000148d8 <.prname_done>:
   148d8:	02e00593          	li	a1,46

000148dc <.loop>:
   148dc:	00b62023          	sw	a1,0(a2)
   148e0:	40e686b3          	sub	a3,a3,a4
   148e4:	00068463          	beqz	a3,148ec <test_2>
   148e8:	ff5ff0ef          	jal	ra,148dc <.loop>

000148ec <test_2>:
   148ec:	00200e13          	li	t3,2
   148f0:	00000f93          	li	t6,0
   148f4:	00000117          	auipc	sp,0x0
   148f8:	01810113          	addi	sp,sp,24 # 1490c <target_2>

000148fc <linkaddr_2>:
   148fc:	000109e7          	jalr	s3,sp
   14900:	00000013          	nop
   14904:	00000013          	nop
   14908:	0e40006f          	j	149ec <fail>

0001490c <target_2>:
   1490c:	00000097          	auipc	ra,0x0
   14910:	ff008093          	addi	ra,ra,-16 # 148fc <linkaddr_2>
   14914:	00408093          	addi	ra,ra,4
   14918:	0d309a63          	bne	ra,s3,149ec <fail>

0001491c <test_3>:
   1491c:	00300e13          	li	t3,3
   14920:	00000f93          	li	t6,0
   14924:	00000197          	auipc	gp,0x0
   14928:	01418193          	addi	gp,gp,20 # 14938 <target_3>

0001492c <linkaddr_3>:
   1492c:	00018067          	jr	gp
   14930:	00000013          	nop
   14934:	0b80006f          	j	149ec <fail>

00014938 <target_3>:
   14938:	0a0f9a63          	bnez	t6,149ec <fail>

0001493c <test_4>:
   1493c:	00400e13          	li	t3,4
   14940:	00000213          	li	tp,0
   14944:	00000317          	auipc	t1,0x0
   14948:	01030313          	addi	t1,t1,16 # 14954 <test_4+0x18>
   1494c:	000309e7          	jalr	s3,t1
   14950:	09c01e63          	bne	zero,t3,149ec <fail>
   14954:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14958:	00200293          	li	t0,2
   1495c:	fe5214e3          	bne	tp,t0,14944 <test_4+0x8>

00014960 <test_5>:
   14960:	00500e13          	li	t3,5
   14964:	00000213          	li	tp,0
   14968:	00000317          	auipc	t1,0x0
   1496c:	01430313          	addi	t1,t1,20 # 1497c <test_5+0x1c>
   14970:	00000013          	nop
   14974:	000309e7          	jalr	s3,t1
   14978:	07c01a63          	bne	zero,t3,149ec <fail>
   1497c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14980:	00200293          	li	t0,2
   14984:	fe5212e3          	bne	tp,t0,14968 <test_5+0x8>

00014988 <test_6>:
   14988:	00600e13          	li	t3,6
   1498c:	00000213          	li	tp,0
   14990:	00000317          	auipc	t1,0x0
   14994:	01830313          	addi	t1,t1,24 # 149a8 <test_6+0x20>
   14998:	00000013          	nop
   1499c:	00000013          	nop
   149a0:	000309e7          	jalr	s3,t1
   149a4:	05c01463          	bne	zero,t3,149ec <fail>
   149a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   149ac:	00200293          	li	t0,2
   149b0:	fe5210e3          	bne	tp,t0,14990 <test_6+0x8>

000149b4 <test_7>:
   149b4:	00100093          	li	ra,1
   149b8:	00000117          	auipc	sp,0x0
   149bc:	01c10113          	addi	sp,sp,28 # 149d4 <test_7+0x20>
   149c0:	ffc109e7          	jalr	s3,-4(sp)
   149c4:	00108093          	addi	ra,ra,1
   149c8:	00108093          	addi	ra,ra,1
   149cc:	00108093          	addi	ra,ra,1
   149d0:	00108093          	addi	ra,ra,1
   149d4:	00108093          	addi	ra,ra,1
   149d8:	00108093          	addi	ra,ra,1
   149dc:	00400e93          	li	t4,4
   149e0:	00700e13          	li	t3,7
   149e4:	01d09463          	bne	ra,t4,149ec <fail>
   149e8:	05c01063          	bne	zero,t3,14a28 <pass>

000149ec <fail>:
   149ec:	0ff00513          	li	a0,255

000149f0 <.delay_fail>:
   149f0:	fff50513          	addi	a0,a0,-1
   149f4:	fe051ee3          	bnez	a0,149f0 <.delay_fail>
   149f8:	02000537          	lui	a0,0x2000
   149fc:	04500593          	li	a1,69
   14a00:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14a04:	05200613          	li	a2,82
   14a08:	00c52023          	sw	a2,0(a0)
   14a0c:	00c52023          	sw	a2,0(a0)
   14a10:	04f00693          	li	a3,79
   14a14:	00d52023          	sw	a3,0(a0)
   14a18:	00c52023          	sw	a2,0(a0)
   14a1c:	02000713          	li	a4,32
   14a20:	00e52023          	sw	a4,0(a0)
   14a24:	ebcfb06f          	j	100e0 <jalr_ret>

00014a28 <pass>:
   14a28:	0ff00513          	li	a0,255

00014a2c <.delay_ok>:
   14a2c:	fff50513          	addi	a0,a0,-1
   14a30:	fe051ee3          	bnez	a0,14a2c <.delay_ok>
   14a34:	02000537          	lui	a0,0x2000
   14a38:	04f00593          	li	a1,79
   14a3c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14a40:	04b00613          	li	a2,75
   14a44:	00c52023          	sw	a2,0(a0)
   14a48:	02000713          	li	a4,32
   14a4c:	00e52023          	sw	a4,0(a0)
   14a50:	e90fb06f          	j	100e0 <jalr_ret>

00014a54 <bne>:
   14a54:	00008537          	lui	a0,0x8
   14a58:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   14a5c:	00a00693          	li	a3,10
   14a60:	00100713          	li	a4,1

00014a64 <.delay_pr>:
   14a64:	fff50513          	addi	a0,a0,-1
   14a68:	fe051ee3          	bnez	a0,14a64 <.delay_pr>
   14a6c:	00015537          	lui	a0,0x15
   14a70:	a9050513          	addi	a0,a0,-1392 # 14a90 <.test_name>
   14a74:	02000637          	lui	a2,0x2000

00014a78 <.prname_next>:
   14a78:	00050583          	lb	a1,0(a0)
   14a7c:	00058c63          	beqz	a1,14a94 <.prname_done>
   14a80:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   14a84:	00150513          	addi	a0,a0,1
   14a88:	40e686b3          	sub	a3,a3,a4
   14a8c:	fedff06f          	j	14a78 <.prname_next>

00014a90 <.test_name>:
   14a90:	6e62                	flw	ft8,24(sp)
   14a92:	0065                	c.nop	25

00014a94 <.prname_done>:
   14a94:	02e00593          	li	a1,46

00014a98 <.loop>:
   14a98:	00b62023          	sw	a1,0(a2)
   14a9c:	40e686b3          	sub	a3,a3,a4
   14aa0:	00068463          	beqz	a3,14aa8 <test_2>
   14aa4:	ff5ff0ef          	jal	ra,14a98 <.loop>

00014aa8 <test_2>:
   14aa8:	00200e13          	li	t3,2
   14aac:	00000093          	li	ra,0
   14ab0:	00100113          	li	sp,1
   14ab4:	00209663          	bne	ra,sp,14ac0 <test_2+0x18>
   14ab8:	2bc01a63          	bne	zero,t3,14d6c <fail>
   14abc:	01c01663          	bne	zero,t3,14ac8 <test_3>
   14ac0:	fe209ee3          	bne	ra,sp,14abc <test_2+0x14>
   14ac4:	2bc01463          	bne	zero,t3,14d6c <fail>

00014ac8 <test_3>:
   14ac8:	00300e13          	li	t3,3
   14acc:	00100093          	li	ra,1
   14ad0:	00000113          	li	sp,0
   14ad4:	00209663          	bne	ra,sp,14ae0 <test_3+0x18>
   14ad8:	29c01a63          	bne	zero,t3,14d6c <fail>
   14adc:	01c01663          	bne	zero,t3,14ae8 <test_4>
   14ae0:	fe209ee3          	bne	ra,sp,14adc <test_3+0x14>
   14ae4:	29c01463          	bne	zero,t3,14d6c <fail>

00014ae8 <test_4>:
   14ae8:	00400e13          	li	t3,4
   14aec:	fff00093          	li	ra,-1
   14af0:	00100113          	li	sp,1
   14af4:	00209663          	bne	ra,sp,14b00 <test_4+0x18>
   14af8:	27c01a63          	bne	zero,t3,14d6c <fail>
   14afc:	01c01663          	bne	zero,t3,14b08 <test_5>
   14b00:	fe209ee3          	bne	ra,sp,14afc <test_4+0x14>
   14b04:	27c01463          	bne	zero,t3,14d6c <fail>

00014b08 <test_5>:
   14b08:	00500e13          	li	t3,5
   14b0c:	00100093          	li	ra,1
   14b10:	fff00113          	li	sp,-1
   14b14:	00209663          	bne	ra,sp,14b20 <test_5+0x18>
   14b18:	25c01a63          	bne	zero,t3,14d6c <fail>
   14b1c:	01c01663          	bne	zero,t3,14b28 <test_6>
   14b20:	fe209ee3          	bne	ra,sp,14b1c <test_5+0x14>
   14b24:	25c01463          	bne	zero,t3,14d6c <fail>

00014b28 <test_6>:
   14b28:	00600e13          	li	t3,6
   14b2c:	00000093          	li	ra,0
   14b30:	00000113          	li	sp,0
   14b34:	00209463          	bne	ra,sp,14b3c <test_6+0x14>
   14b38:	01c01463          	bne	zero,t3,14b40 <test_6+0x18>
   14b3c:	23c01863          	bne	zero,t3,14d6c <fail>
   14b40:	fe209ee3          	bne	ra,sp,14b3c <test_6+0x14>

00014b44 <test_7>:
   14b44:	00700e13          	li	t3,7
   14b48:	00100093          	li	ra,1
   14b4c:	00100113          	li	sp,1
   14b50:	00209463          	bne	ra,sp,14b58 <test_7+0x14>
   14b54:	01c01463          	bne	zero,t3,14b5c <test_7+0x18>
   14b58:	21c01a63          	bne	zero,t3,14d6c <fail>
   14b5c:	fe209ee3          	bne	ra,sp,14b58 <test_7+0x14>

00014b60 <test_8>:
   14b60:	00800e13          	li	t3,8
   14b64:	fff00093          	li	ra,-1
   14b68:	fff00113          	li	sp,-1
   14b6c:	00209463          	bne	ra,sp,14b74 <test_8+0x14>
   14b70:	01c01463          	bne	zero,t3,14b78 <test_8+0x18>
   14b74:	1fc01c63          	bne	zero,t3,14d6c <fail>
   14b78:	fe209ee3          	bne	ra,sp,14b74 <test_8+0x14>

00014b7c <test_9>:
   14b7c:	00900e13          	li	t3,9
   14b80:	00000213          	li	tp,0
   14b84:	00000093          	li	ra,0
   14b88:	00000113          	li	sp,0
   14b8c:	1e209063          	bne	ra,sp,14d6c <fail>
   14b90:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14b94:	00200293          	li	t0,2
   14b98:	fe5216e3          	bne	tp,t0,14b84 <test_9+0x8>

00014b9c <test_10>:
   14b9c:	00a00e13          	li	t3,10
   14ba0:	00000213          	li	tp,0
   14ba4:	00000093          	li	ra,0
   14ba8:	00000113          	li	sp,0
   14bac:	00000013          	nop
   14bb0:	1a209e63          	bne	ra,sp,14d6c <fail>
   14bb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14bb8:	00200293          	li	t0,2
   14bbc:	fe5214e3          	bne	tp,t0,14ba4 <test_10+0x8>

00014bc0 <test_11>:
   14bc0:	00b00e13          	li	t3,11
   14bc4:	00000213          	li	tp,0
   14bc8:	00000093          	li	ra,0
   14bcc:	00000113          	li	sp,0
   14bd0:	00000013          	nop
   14bd4:	00000013          	nop
   14bd8:	18209a63          	bne	ra,sp,14d6c <fail>
   14bdc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14be0:	00200293          	li	t0,2
   14be4:	fe5212e3          	bne	tp,t0,14bc8 <test_11+0x8>

00014be8 <test_12>:
   14be8:	00c00e13          	li	t3,12
   14bec:	00000213          	li	tp,0
   14bf0:	00000093          	li	ra,0
   14bf4:	00000013          	nop
   14bf8:	00000113          	li	sp,0
   14bfc:	16209863          	bne	ra,sp,14d6c <fail>
   14c00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14c04:	00200293          	li	t0,2
   14c08:	fe5214e3          	bne	tp,t0,14bf0 <test_12+0x8>

00014c0c <test_13>:
   14c0c:	00d00e13          	li	t3,13
   14c10:	00000213          	li	tp,0
   14c14:	00000093          	li	ra,0
   14c18:	00000013          	nop
   14c1c:	00000113          	li	sp,0
   14c20:	00000013          	nop
   14c24:	14209463          	bne	ra,sp,14d6c <fail>
   14c28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14c2c:	00200293          	li	t0,2
   14c30:	fe5212e3          	bne	tp,t0,14c14 <test_13+0x8>

00014c34 <test_14>:
   14c34:	00e00e13          	li	t3,14
   14c38:	00000213          	li	tp,0
   14c3c:	00000093          	li	ra,0
   14c40:	00000013          	nop
   14c44:	00000013          	nop
   14c48:	00000113          	li	sp,0
   14c4c:	12209063          	bne	ra,sp,14d6c <fail>
   14c50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14c54:	00200293          	li	t0,2
   14c58:	fe5212e3          	bne	tp,t0,14c3c <test_14+0x8>

00014c5c <test_15>:
   14c5c:	00f00e13          	li	t3,15
   14c60:	00000213          	li	tp,0
   14c64:	00000093          	li	ra,0
   14c68:	00000113          	li	sp,0
   14c6c:	10209063          	bne	ra,sp,14d6c <fail>
   14c70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14c74:	00200293          	li	t0,2
   14c78:	fe5216e3          	bne	tp,t0,14c64 <test_15+0x8>

00014c7c <test_16>:
   14c7c:	01000e13          	li	t3,16
   14c80:	00000213          	li	tp,0
   14c84:	00000093          	li	ra,0
   14c88:	00000113          	li	sp,0
   14c8c:	00000013          	nop
   14c90:	0c209e63          	bne	ra,sp,14d6c <fail>
   14c94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14c98:	00200293          	li	t0,2
   14c9c:	fe5214e3          	bne	tp,t0,14c84 <test_16+0x8>

00014ca0 <test_17>:
   14ca0:	01100e13          	li	t3,17
   14ca4:	00000213          	li	tp,0
   14ca8:	00000093          	li	ra,0
   14cac:	00000113          	li	sp,0
   14cb0:	00000013          	nop
   14cb4:	00000013          	nop
   14cb8:	0a209a63          	bne	ra,sp,14d6c <fail>
   14cbc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14cc0:	00200293          	li	t0,2
   14cc4:	fe5212e3          	bne	tp,t0,14ca8 <test_17+0x8>

00014cc8 <test_18>:
   14cc8:	01200e13          	li	t3,18
   14ccc:	00000213          	li	tp,0
   14cd0:	00000093          	li	ra,0
   14cd4:	00000013          	nop
   14cd8:	00000113          	li	sp,0
   14cdc:	08209863          	bne	ra,sp,14d6c <fail>
   14ce0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ce4:	00200293          	li	t0,2
   14ce8:	fe5214e3          	bne	tp,t0,14cd0 <test_18+0x8>

00014cec <test_19>:
   14cec:	01300e13          	li	t3,19
   14cf0:	00000213          	li	tp,0
   14cf4:	00000093          	li	ra,0
   14cf8:	00000013          	nop
   14cfc:	00000113          	li	sp,0
   14d00:	00000013          	nop
   14d04:	06209463          	bne	ra,sp,14d6c <fail>
   14d08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d0c:	00200293          	li	t0,2
   14d10:	fe5212e3          	bne	tp,t0,14cf4 <test_19+0x8>

00014d14 <test_20>:
   14d14:	01400e13          	li	t3,20
   14d18:	00000213          	li	tp,0
   14d1c:	00000093          	li	ra,0
   14d20:	00000013          	nop
   14d24:	00000013          	nop
   14d28:	00000113          	li	sp,0
   14d2c:	04209063          	bne	ra,sp,14d6c <fail>
   14d30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d34:	00200293          	li	t0,2
   14d38:	fe5212e3          	bne	tp,t0,14d1c <test_20+0x8>

00014d3c <test_21>:
   14d3c:	00100093          	li	ra,1
   14d40:	00009a63          	bnez	ra,14d54 <test_21+0x18>
   14d44:	00108093          	addi	ra,ra,1
   14d48:	00108093          	addi	ra,ra,1
   14d4c:	00108093          	addi	ra,ra,1
   14d50:	00108093          	addi	ra,ra,1
   14d54:	00108093          	addi	ra,ra,1
   14d58:	00108093          	addi	ra,ra,1
   14d5c:	00300e93          	li	t4,3
   14d60:	01500e13          	li	t3,21
   14d64:	01d09463          	bne	ra,t4,14d6c <fail>
   14d68:	05c01063          	bne	zero,t3,14da8 <pass>

00014d6c <fail>:
   14d6c:	0ff00513          	li	a0,255

00014d70 <.delay_fail>:
   14d70:	fff50513          	addi	a0,a0,-1
   14d74:	fe051ee3          	bnez	a0,14d70 <.delay_fail>
   14d78:	02000537          	lui	a0,0x2000
   14d7c:	04500593          	li	a1,69
   14d80:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14d84:	05200613          	li	a2,82
   14d88:	00c52023          	sw	a2,0(a0)
   14d8c:	00c52023          	sw	a2,0(a0)
   14d90:	04f00693          	li	a3,79
   14d94:	00d52023          	sw	a3,0(a0)
   14d98:	00c52023          	sw	a2,0(a0)
   14d9c:	02000713          	li	a4,32
   14da0:	00e52023          	sw	a4,0(a0)
   14da4:	b48fb06f          	j	100ec <bne_ret>

00014da8 <pass>:
   14da8:	0ff00513          	li	a0,255

00014dac <.delay_ok>:
   14dac:	fff50513          	addi	a0,a0,-1
   14db0:	fe051ee3          	bnez	a0,14dac <.delay_ok>
   14db4:	02000537          	lui	a0,0x2000
   14db8:	04f00593          	li	a1,79
   14dbc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   14dc0:	04b00613          	li	a2,75
   14dc4:	00c52023          	sw	a2,0(a0)
   14dc8:	02000713          	li	a4,32
   14dcc:	00e52023          	sw	a4,0(a0)
   14dd0:	b1cfb06f          	j	100ec <bne_ret>

00014dd4 <bgeu>:
   14dd4:	00008537          	lui	a0,0x8
   14dd8:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   14ddc:	00a00693          	li	a3,10
   14de0:	00100713          	li	a4,1

00014de4 <.delay_pr>:
   14de4:	fff50513          	addi	a0,a0,-1
   14de8:	fe051ee3          	bnez	a0,14de4 <.delay_pr>
   14dec:	00015537          	lui	a0,0x15
   14df0:	e1050513          	addi	a0,a0,-496 # 14e10 <.test_name>
   14df4:	02000637          	lui	a2,0x2000

00014df8 <.prname_next>:
   14df8:	00050583          	lb	a1,0(a0)
   14dfc:	00058e63          	beqz	a1,14e18 <.prname_done>
   14e00:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   14e04:	00150513          	addi	a0,a0,1
   14e08:	40e686b3          	sub	a3,a3,a4
   14e0c:	fedff06f          	j	14df8 <.prname_next>

00014e10 <.test_name>:
   14e10:	6762                	flw	fa4,24(sp)
   14e12:	7565                	lui	a0,0xffff9
   14e14:	0000                	unimp
	...

00014e18 <.prname_done>:
   14e18:	02e00593          	li	a1,46

00014e1c <.loop>:
   14e1c:	00b62023          	sw	a1,0(a2)
   14e20:	40e686b3          	sub	a3,a3,a4
   14e24:	00068463          	beqz	a3,14e2c <test_2>
   14e28:	ff5ff0ef          	jal	ra,14e1c <.loop>

00014e2c <test_2>:
   14e2c:	00200e13          	li	t3,2
   14e30:	00000093          	li	ra,0
   14e34:	00000113          	li	sp,0
   14e38:	0020f663          	bgeu	ra,sp,14e44 <test_2+0x18>
   14e3c:	35c01263          	bne	zero,t3,15180 <fail>
   14e40:	01c01663          	bne	zero,t3,14e4c <test_3>
   14e44:	fe20fee3          	bgeu	ra,sp,14e40 <test_2+0x14>
   14e48:	33c01c63          	bne	zero,t3,15180 <fail>

00014e4c <test_3>:
   14e4c:	00300e13          	li	t3,3
   14e50:	00100093          	li	ra,1
   14e54:	00100113          	li	sp,1
   14e58:	0020f663          	bgeu	ra,sp,14e64 <test_3+0x18>
   14e5c:	33c01263          	bne	zero,t3,15180 <fail>
   14e60:	01c01663          	bne	zero,t3,14e6c <test_4>
   14e64:	fe20fee3          	bgeu	ra,sp,14e60 <test_3+0x14>
   14e68:	31c01c63          	bne	zero,t3,15180 <fail>

00014e6c <test_4>:
   14e6c:	00400e13          	li	t3,4
   14e70:	fff00093          	li	ra,-1
   14e74:	fff00113          	li	sp,-1
   14e78:	0020f663          	bgeu	ra,sp,14e84 <test_4+0x18>
   14e7c:	31c01263          	bne	zero,t3,15180 <fail>
   14e80:	01c01663          	bne	zero,t3,14e8c <test_5>
   14e84:	fe20fee3          	bgeu	ra,sp,14e80 <test_4+0x14>
   14e88:	2fc01c63          	bne	zero,t3,15180 <fail>

00014e8c <test_5>:
   14e8c:	00500e13          	li	t3,5
   14e90:	00100093          	li	ra,1
   14e94:	00000113          	li	sp,0
   14e98:	0020f663          	bgeu	ra,sp,14ea4 <test_5+0x18>
   14e9c:	2fc01263          	bne	zero,t3,15180 <fail>
   14ea0:	01c01663          	bne	zero,t3,14eac <test_6>
   14ea4:	fe20fee3          	bgeu	ra,sp,14ea0 <test_5+0x14>
   14ea8:	2dc01c63          	bne	zero,t3,15180 <fail>

00014eac <test_6>:
   14eac:	00600e13          	li	t3,6
   14eb0:	fff00093          	li	ra,-1
   14eb4:	ffe00113          	li	sp,-2
   14eb8:	0020f663          	bgeu	ra,sp,14ec4 <test_6+0x18>
   14ebc:	2dc01263          	bne	zero,t3,15180 <fail>
   14ec0:	01c01663          	bne	zero,t3,14ecc <test_7>
   14ec4:	fe20fee3          	bgeu	ra,sp,14ec0 <test_6+0x14>
   14ec8:	2bc01c63          	bne	zero,t3,15180 <fail>

00014ecc <test_7>:
   14ecc:	00700e13          	li	t3,7
   14ed0:	fff00093          	li	ra,-1
   14ed4:	00000113          	li	sp,0
   14ed8:	0020f663          	bgeu	ra,sp,14ee4 <test_7+0x18>
   14edc:	2bc01263          	bne	zero,t3,15180 <fail>
   14ee0:	01c01663          	bne	zero,t3,14eec <test_8>
   14ee4:	fe20fee3          	bgeu	ra,sp,14ee0 <test_7+0x14>
   14ee8:	29c01c63          	bne	zero,t3,15180 <fail>

00014eec <test_8>:
   14eec:	00800e13          	li	t3,8
   14ef0:	00000093          	li	ra,0
   14ef4:	00100113          	li	sp,1
   14ef8:	0020f463          	bgeu	ra,sp,14f00 <test_8+0x14>
   14efc:	01c01463          	bne	zero,t3,14f04 <test_8+0x18>
   14f00:	29c01063          	bne	zero,t3,15180 <fail>
   14f04:	fe20fee3          	bgeu	ra,sp,14f00 <test_8+0x14>

00014f08 <test_9>:
   14f08:	00900e13          	li	t3,9
   14f0c:	ffe00093          	li	ra,-2
   14f10:	fff00113          	li	sp,-1
   14f14:	0020f463          	bgeu	ra,sp,14f1c <test_9+0x14>
   14f18:	01c01463          	bne	zero,t3,14f20 <test_9+0x18>
   14f1c:	27c01263          	bne	zero,t3,15180 <fail>
   14f20:	fe20fee3          	bgeu	ra,sp,14f1c <test_9+0x14>

00014f24 <test_10>:
   14f24:	00a00e13          	li	t3,10
   14f28:	00000093          	li	ra,0
   14f2c:	fff00113          	li	sp,-1
   14f30:	0020f463          	bgeu	ra,sp,14f38 <test_10+0x14>
   14f34:	01c01463          	bne	zero,t3,14f3c <test_10+0x18>
   14f38:	25c01463          	bne	zero,t3,15180 <fail>
   14f3c:	fe20fee3          	bgeu	ra,sp,14f38 <test_10+0x14>

00014f40 <test_11>:
   14f40:	00b00e13          	li	t3,11
   14f44:	800000b7          	lui	ra,0x80000
   14f48:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14f4c:	80000137          	lui	sp,0x80000
   14f50:	0020f463          	bgeu	ra,sp,14f58 <test_11+0x18>
   14f54:	01c01463          	bne	zero,t3,14f5c <test_11+0x1c>
   14f58:	23c01463          	bne	zero,t3,15180 <fail>
   14f5c:	fe20fee3          	bgeu	ra,sp,14f58 <test_11+0x18>

00014f60 <test_12>:
   14f60:	00c00e13          	li	t3,12
   14f64:	00000213          	li	tp,0
   14f68:	f00000b7          	lui	ra,0xf0000
   14f6c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14f70:	f0000137          	lui	sp,0xf0000
   14f74:	2020f663          	bgeu	ra,sp,15180 <fail>
   14f78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f7c:	00200293          	li	t0,2
   14f80:	fe5214e3          	bne	tp,t0,14f68 <test_12+0x8>

00014f84 <test_13>:
   14f84:	00d00e13          	li	t3,13
   14f88:	00000213          	li	tp,0
   14f8c:	f00000b7          	lui	ra,0xf0000
   14f90:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14f94:	f0000137          	lui	sp,0xf0000
   14f98:	00000013          	nop
   14f9c:	1e20f263          	bgeu	ra,sp,15180 <fail>
   14fa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14fa4:	00200293          	li	t0,2
   14fa8:	fe5212e3          	bne	tp,t0,14f8c <test_13+0x8>

00014fac <test_14>:
   14fac:	00e00e13          	li	t3,14
   14fb0:	00000213          	li	tp,0
   14fb4:	f00000b7          	lui	ra,0xf0000
   14fb8:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14fbc:	f0000137          	lui	sp,0xf0000
   14fc0:	00000013          	nop
   14fc4:	00000013          	nop
   14fc8:	1a20fc63          	bgeu	ra,sp,15180 <fail>
   14fcc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14fd0:	00200293          	li	t0,2
   14fd4:	fe5210e3          	bne	tp,t0,14fb4 <test_14+0x8>

00014fd8 <test_15>:
   14fd8:	00f00e13          	li	t3,15
   14fdc:	00000213          	li	tp,0
   14fe0:	f00000b7          	lui	ra,0xf0000
   14fe4:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14fe8:	00000013          	nop
   14fec:	f0000137          	lui	sp,0xf0000
   14ff0:	1820f863          	bgeu	ra,sp,15180 <fail>
   14ff4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ff8:	00200293          	li	t0,2
   14ffc:	fe5212e3          	bne	tp,t0,14fe0 <test_15+0x8>

00015000 <test_16>:
   15000:	01000e13          	li	t3,16
   15004:	00000213          	li	tp,0
   15008:	f00000b7          	lui	ra,0xf0000
   1500c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15010:	00000013          	nop
   15014:	f0000137          	lui	sp,0xf0000
   15018:	00000013          	nop
   1501c:	1620f263          	bgeu	ra,sp,15180 <fail>
   15020:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15024:	00200293          	li	t0,2
   15028:	fe5210e3          	bne	tp,t0,15008 <test_16+0x8>

0001502c <test_17>:
   1502c:	01100e13          	li	t3,17
   15030:	00000213          	li	tp,0
   15034:	f00000b7          	lui	ra,0xf0000
   15038:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   1503c:	00000013          	nop
   15040:	00000013          	nop
   15044:	f0000137          	lui	sp,0xf0000
   15048:	1220fc63          	bgeu	ra,sp,15180 <fail>
   1504c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15050:	00200293          	li	t0,2
   15054:	fe5210e3          	bne	tp,t0,15034 <test_17+0x8>

00015058 <test_18>:
   15058:	01200e13          	li	t3,18
   1505c:	00000213          	li	tp,0
   15060:	f00000b7          	lui	ra,0xf0000
   15064:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15068:	f0000137          	lui	sp,0xf0000
   1506c:	1020fa63          	bgeu	ra,sp,15180 <fail>
   15070:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15074:	00200293          	li	t0,2
   15078:	fe5214e3          	bne	tp,t0,15060 <test_18+0x8>

0001507c <test_19>:
   1507c:	01300e13          	li	t3,19
   15080:	00000213          	li	tp,0
   15084:	f00000b7          	lui	ra,0xf0000
   15088:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   1508c:	f0000137          	lui	sp,0xf0000
   15090:	00000013          	nop
   15094:	0e20f663          	bgeu	ra,sp,15180 <fail>
   15098:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1509c:	00200293          	li	t0,2
   150a0:	fe5212e3          	bne	tp,t0,15084 <test_19+0x8>

000150a4 <test_20>:
   150a4:	01400e13          	li	t3,20
   150a8:	00000213          	li	tp,0
   150ac:	f00000b7          	lui	ra,0xf0000
   150b0:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   150b4:	f0000137          	lui	sp,0xf0000
   150b8:	00000013          	nop
   150bc:	00000013          	nop
   150c0:	0c20f063          	bgeu	ra,sp,15180 <fail>
   150c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   150c8:	00200293          	li	t0,2
   150cc:	fe5210e3          	bne	tp,t0,150ac <test_20+0x8>

000150d0 <test_21>:
   150d0:	01500e13          	li	t3,21
   150d4:	00000213          	li	tp,0
   150d8:	f00000b7          	lui	ra,0xf0000
   150dc:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   150e0:	00000013          	nop
   150e4:	f0000137          	lui	sp,0xf0000
   150e8:	0820fc63          	bgeu	ra,sp,15180 <fail>
   150ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   150f0:	00200293          	li	t0,2
   150f4:	fe5212e3          	bne	tp,t0,150d8 <test_21+0x8>

000150f8 <test_22>:
   150f8:	01600e13          	li	t3,22
   150fc:	00000213          	li	tp,0
   15100:	f00000b7          	lui	ra,0xf0000
   15104:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15108:	00000013          	nop
   1510c:	f0000137          	lui	sp,0xf0000
   15110:	00000013          	nop
   15114:	0620f663          	bgeu	ra,sp,15180 <fail>
   15118:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1511c:	00200293          	li	t0,2
   15120:	fe5210e3          	bne	tp,t0,15100 <test_22+0x8>

00015124 <test_23>:
   15124:	01700e13          	li	t3,23
   15128:	00000213          	li	tp,0
   1512c:	f00000b7          	lui	ra,0xf0000
   15130:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15134:	00000013          	nop
   15138:	00000013          	nop
   1513c:	f0000137          	lui	sp,0xf0000
   15140:	0420f063          	bgeu	ra,sp,15180 <fail>
   15144:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15148:	00200293          	li	t0,2
   1514c:	fe5210e3          	bne	tp,t0,1512c <test_23+0x8>

00015150 <test_24>:
   15150:	00100093          	li	ra,1
   15154:	0000fa63          	bgeu	ra,zero,15168 <test_24+0x18>
   15158:	00108093          	addi	ra,ra,1
   1515c:	00108093          	addi	ra,ra,1
   15160:	00108093          	addi	ra,ra,1
   15164:	00108093          	addi	ra,ra,1
   15168:	00108093          	addi	ra,ra,1
   1516c:	00108093          	addi	ra,ra,1
   15170:	00300e93          	li	t4,3
   15174:	01800e13          	li	t3,24
   15178:	01d09463          	bne	ra,t4,15180 <fail>
   1517c:	05c01063          	bne	zero,t3,151bc <pass>

00015180 <fail>:
   15180:	0ff00513          	li	a0,255

00015184 <.delay_fail>:
   15184:	fff50513          	addi	a0,a0,-1 # ffff8fff <_edata+0x7fff8f8f>
   15188:	fe051ee3          	bnez	a0,15184 <.delay_fail>
   1518c:	02000537          	lui	a0,0x2000
   15190:	04500593          	li	a1,69
   15194:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   15198:	05200613          	li	a2,82
   1519c:	00c52023          	sw	a2,0(a0)
   151a0:	00c52023          	sw	a2,0(a0)
   151a4:	04f00693          	li	a3,79
   151a8:	00d52023          	sw	a3,0(a0)
   151ac:	00c52023          	sw	a2,0(a0)
   151b0:	02000713          	li	a4,32
   151b4:	00e52023          	sw	a4,0(a0)
   151b8:	f49fa06f          	j	10100 <bgeu_ret>

000151bc <pass>:
   151bc:	0ff00513          	li	a0,255

000151c0 <.delay_ok>:
   151c0:	fff50513          	addi	a0,a0,-1
   151c4:	fe051ee3          	bnez	a0,151c0 <.delay_ok>
   151c8:	02000537          	lui	a0,0x2000
   151cc:	04f00593          	li	a1,79
   151d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   151d4:	04b00613          	li	a2,75
   151d8:	00c52023          	sw	a2,0(a0)
   151dc:	02000713          	li	a4,32
   151e0:	00e52023          	sw	a4,0(a0)
   151e4:	f1dfa06f          	j	10100 <bgeu_ret>

000151e8 <mulhu>:
   151e8:	00008537          	lui	a0,0x8
   151ec:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   151f0:	00a00693          	li	a3,10
   151f4:	00100713          	li	a4,1

000151f8 <.delay_pr>:
   151f8:	fff50513          	addi	a0,a0,-1
   151fc:	fe051ee3          	bnez	a0,151f8 <.delay_pr>
   15200:	00015537          	lui	a0,0x15
   15204:	22450513          	addi	a0,a0,548 # 15224 <.test_name>
   15208:	02000637          	lui	a2,0x2000

0001520c <.prname_next>:
   1520c:	00050583          	lb	a1,0(a0)
   15210:	00058e63          	beqz	a1,1522c <.prname_done>
   15214:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   15218:	00150513          	addi	a0,a0,1
   1521c:	40e686b3          	sub	a3,a3,a4
   15220:	fedff06f          	j	1520c <.prname_next>

00015224 <.test_name>:
   15224:	756d                	lui	a0,0xffffb
   15226:	686c                	flw	fa1,84(s0)
   15228:	0075                	c.nop	29
	...

0001522c <.prname_done>:
   1522c:	02e00593          	li	a1,46

00015230 <.loop>:
   15230:	00b62023          	sw	a1,0(a2)
   15234:	40e686b3          	sub	a3,a3,a4
   15238:	00068463          	beqz	a3,15240 <test_2>
   1523c:	ff5ff0ef          	jal	ra,15230 <.loop>

00015240 <test_2>:
   15240:	00000093          	li	ra,0
   15244:	00000113          	li	sp,0
   15248:	0220b1b3          	mulhu	gp,ra,sp
   1524c:	00000e93          	li	t4,0
   15250:	00200e13          	li	t3,2
   15254:	4bd19a63          	bne	gp,t4,15708 <fail>

00015258 <test_3>:
   15258:	00100093          	li	ra,1
   1525c:	00100113          	li	sp,1
   15260:	0220b1b3          	mulhu	gp,ra,sp
   15264:	00000e93          	li	t4,0
   15268:	00300e13          	li	t3,3
   1526c:	49d19e63          	bne	gp,t4,15708 <fail>

00015270 <test_4>:
   15270:	00300093          	li	ra,3
   15274:	00700113          	li	sp,7
   15278:	0220b1b3          	mulhu	gp,ra,sp
   1527c:	00000e93          	li	t4,0
   15280:	00400e13          	li	t3,4
   15284:	49d19263          	bne	gp,t4,15708 <fail>

00015288 <test_5>:
   15288:	00000093          	li	ra,0
   1528c:	ffff8137          	lui	sp,0xffff8
   15290:	0220b1b3          	mulhu	gp,ra,sp
   15294:	00000e93          	li	t4,0
   15298:	00500e13          	li	t3,5
   1529c:	47d19663          	bne	gp,t4,15708 <fail>

000152a0 <test_6>:
   152a0:	800000b7          	lui	ra,0x80000
   152a4:	00000113          	li	sp,0
   152a8:	0220b1b3          	mulhu	gp,ra,sp
   152ac:	00000e93          	li	t4,0
   152b0:	00600e13          	li	t3,6
   152b4:	45d19a63          	bne	gp,t4,15708 <fail>

000152b8 <test_7>:
   152b8:	800000b7          	lui	ra,0x80000
   152bc:	ffff8137          	lui	sp,0xffff8
   152c0:	0220b1b3          	mulhu	gp,ra,sp
   152c4:	7fffceb7          	lui	t4,0x7fffc
   152c8:	00700e13          	li	t3,7
   152cc:	43d19e63          	bne	gp,t4,15708 <fail>

000152d0 <test_30>:
   152d0:	aaaab0b7          	lui	ra,0xaaaab
   152d4:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   152d8:	00030137          	lui	sp,0x30
   152dc:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15715>
   152e0:	0220b1b3          	mulhu	gp,ra,sp
   152e4:	00020eb7          	lui	t4,0x20
   152e8:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x5796>
   152ec:	01e00e13          	li	t3,30
   152f0:	41d19c63          	bne	gp,t4,15708 <fail>

000152f4 <test_31>:
   152f4:	000300b7          	lui	ra,0x30
   152f8:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15715>
   152fc:	aaaab137          	lui	sp,0xaaaab
   15300:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   15304:	0220b1b3          	mulhu	gp,ra,sp
   15308:	00020eb7          	lui	t4,0x20
   1530c:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x5796>
   15310:	01f00e13          	li	t3,31
   15314:	3fd19a63          	bne	gp,t4,15708 <fail>

00015318 <test_32>:
   15318:	ff0000b7          	lui	ra,0xff000
   1531c:	ff000137          	lui	sp,0xff000
   15320:	0220b1b3          	mulhu	gp,ra,sp
   15324:	fe010eb7          	lui	t4,0xfe010
   15328:	02000e13          	li	t3,32
   1532c:	3dd19e63          	bne	gp,t4,15708 <fail>

00015330 <test_33>:
   15330:	fff00093          	li	ra,-1
   15334:	fff00113          	li	sp,-1
   15338:	0220b1b3          	mulhu	gp,ra,sp
   1533c:	ffe00e93          	li	t4,-2
   15340:	02100e13          	li	t3,33
   15344:	3dd19263          	bne	gp,t4,15708 <fail>

00015348 <test_34>:
   15348:	fff00093          	li	ra,-1
   1534c:	00100113          	li	sp,1
   15350:	0220b1b3          	mulhu	gp,ra,sp
   15354:	00000e93          	li	t4,0
   15358:	02200e13          	li	t3,34
   1535c:	3bd19663          	bne	gp,t4,15708 <fail>

00015360 <test_35>:
   15360:	00100093          	li	ra,1
   15364:	fff00113          	li	sp,-1
   15368:	0220b1b3          	mulhu	gp,ra,sp
   1536c:	00000e93          	li	t4,0
   15370:	02300e13          	li	t3,35
   15374:	39d19a63          	bne	gp,t4,15708 <fail>

00015378 <test_8>:
   15378:	00d000b7          	lui	ra,0xd00
   1537c:	00b00137          	lui	sp,0xb00
   15380:	0220b0b3          	mulhu	ra,ra,sp
   15384:	00009eb7          	lui	t4,0x9
   15388:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1538c:	00800e13          	li	t3,8
   15390:	37d09c63          	bne	ra,t4,15708 <fail>

00015394 <test_9>:
   15394:	00e000b7          	lui	ra,0xe00
   15398:	00b00137          	lui	sp,0xb00
   1539c:	0220b133          	mulhu	sp,ra,sp
   153a0:	0000aeb7          	lui	t4,0xa
   153a4:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   153a8:	00900e13          	li	t3,9
   153ac:	35d11e63          	bne	sp,t4,15708 <fail>

000153b0 <test_10>:
   153b0:	00d000b7          	lui	ra,0xd00
   153b4:	0210b0b3          	mulhu	ra,ra,ra
   153b8:	0000beb7          	lui	t4,0xb
   153bc:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   153c0:	00a00e13          	li	t3,10
   153c4:	35d09263          	bne	ra,t4,15708 <fail>

000153c8 <test_11>:
   153c8:	00000213          	li	tp,0
   153cc:	00d000b7          	lui	ra,0xd00
   153d0:	00b00137          	lui	sp,0xb00
   153d4:	0220b1b3          	mulhu	gp,ra,sp
   153d8:	00018313          	mv	t1,gp
   153dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153e0:	00200293          	li	t0,2
   153e4:	fe5214e3          	bne	tp,t0,153cc <test_11+0x4>
   153e8:	00009eb7          	lui	t4,0x9
   153ec:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   153f0:	00b00e13          	li	t3,11
   153f4:	31d31a63          	bne	t1,t4,15708 <fail>

000153f8 <test_12>:
   153f8:	00000213          	li	tp,0
   153fc:	00e000b7          	lui	ra,0xe00
   15400:	00b00137          	lui	sp,0xb00
   15404:	0220b1b3          	mulhu	gp,ra,sp
   15408:	00000013          	nop
   1540c:	00018313          	mv	t1,gp
   15410:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15414:	00200293          	li	t0,2
   15418:	fe5212e3          	bne	tp,t0,153fc <test_12+0x4>
   1541c:	0000aeb7          	lui	t4,0xa
   15420:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15424:	00c00e13          	li	t3,12
   15428:	2fd31063          	bne	t1,t4,15708 <fail>

0001542c <test_13>:
   1542c:	00000213          	li	tp,0
   15430:	00f000b7          	lui	ra,0xf00
   15434:	00b00137          	lui	sp,0xb00
   15438:	0220b1b3          	mulhu	gp,ra,sp
   1543c:	00000013          	nop
   15440:	00000013          	nop
   15444:	00018313          	mv	t1,gp
   15448:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1544c:	00200293          	li	t0,2
   15450:	fe5210e3          	bne	tp,t0,15430 <test_13+0x4>
   15454:	0000aeb7          	lui	t4,0xa
   15458:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1545c:	00d00e13          	li	t3,13
   15460:	2bd31463          	bne	t1,t4,15708 <fail>

00015464 <test_14>:
   15464:	00000213          	li	tp,0
   15468:	00d000b7          	lui	ra,0xd00
   1546c:	00b00137          	lui	sp,0xb00
   15470:	0220b1b3          	mulhu	gp,ra,sp
   15474:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15478:	00200293          	li	t0,2
   1547c:	fe5216e3          	bne	tp,t0,15468 <test_14+0x4>
   15480:	00009eb7          	lui	t4,0x9
   15484:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15488:	00e00e13          	li	t3,14
   1548c:	27d19e63          	bne	gp,t4,15708 <fail>

00015490 <test_15>:
   15490:	00000213          	li	tp,0
   15494:	00e000b7          	lui	ra,0xe00
   15498:	00b00137          	lui	sp,0xb00
   1549c:	00000013          	nop
   154a0:	0220b1b3          	mulhu	gp,ra,sp
   154a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   154a8:	00200293          	li	t0,2
   154ac:	fe5214e3          	bne	tp,t0,15494 <test_15+0x4>
   154b0:	0000aeb7          	lui	t4,0xa
   154b4:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   154b8:	00f00e13          	li	t3,15
   154bc:	25d19663          	bne	gp,t4,15708 <fail>

000154c0 <test_16>:
   154c0:	00000213          	li	tp,0
   154c4:	00f000b7          	lui	ra,0xf00
   154c8:	00b00137          	lui	sp,0xb00
   154cc:	00000013          	nop
   154d0:	00000013          	nop
   154d4:	0220b1b3          	mulhu	gp,ra,sp
   154d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   154dc:	00200293          	li	t0,2
   154e0:	fe5212e3          	bne	tp,t0,154c4 <test_16+0x4>
   154e4:	0000aeb7          	lui	t4,0xa
   154e8:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   154ec:	01000e13          	li	t3,16
   154f0:	21d19c63          	bne	gp,t4,15708 <fail>

000154f4 <test_17>:
   154f4:	00000213          	li	tp,0
   154f8:	00d000b7          	lui	ra,0xd00
   154fc:	00000013          	nop
   15500:	00b00137          	lui	sp,0xb00
   15504:	0220b1b3          	mulhu	gp,ra,sp
   15508:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1550c:	00200293          	li	t0,2
   15510:	fe5214e3          	bne	tp,t0,154f8 <test_17+0x4>
   15514:	00009eb7          	lui	t4,0x9
   15518:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1551c:	01100e13          	li	t3,17
   15520:	1fd19463          	bne	gp,t4,15708 <fail>

00015524 <test_18>:
   15524:	00000213          	li	tp,0
   15528:	00e000b7          	lui	ra,0xe00
   1552c:	00000013          	nop
   15530:	00b00137          	lui	sp,0xb00
   15534:	00000013          	nop
   15538:	0220b1b3          	mulhu	gp,ra,sp
   1553c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15540:	00200293          	li	t0,2
   15544:	fe5212e3          	bne	tp,t0,15528 <test_18+0x4>
   15548:	0000aeb7          	lui	t4,0xa
   1554c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15550:	01200e13          	li	t3,18
   15554:	1bd19a63          	bne	gp,t4,15708 <fail>

00015558 <test_19>:
   15558:	00000213          	li	tp,0
   1555c:	00f000b7          	lui	ra,0xf00
   15560:	00000013          	nop
   15564:	00000013          	nop
   15568:	00b00137          	lui	sp,0xb00
   1556c:	0220b1b3          	mulhu	gp,ra,sp
   15570:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15574:	00200293          	li	t0,2
   15578:	fe5212e3          	bne	tp,t0,1555c <test_19+0x4>
   1557c:	0000aeb7          	lui	t4,0xa
   15580:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15584:	01300e13          	li	t3,19
   15588:	19d19063          	bne	gp,t4,15708 <fail>

0001558c <test_20>:
   1558c:	00000213          	li	tp,0
   15590:	00b00137          	lui	sp,0xb00
   15594:	00d000b7          	lui	ra,0xd00
   15598:	0220b1b3          	mulhu	gp,ra,sp
   1559c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   155a0:	00200293          	li	t0,2
   155a4:	fe5216e3          	bne	tp,t0,15590 <test_20+0x4>
   155a8:	00009eb7          	lui	t4,0x9
   155ac:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   155b0:	01400e13          	li	t3,20
   155b4:	15d19a63          	bne	gp,t4,15708 <fail>

000155b8 <test_21>:
   155b8:	00000213          	li	tp,0
   155bc:	00b00137          	lui	sp,0xb00
   155c0:	00e000b7          	lui	ra,0xe00
   155c4:	00000013          	nop
   155c8:	0220b1b3          	mulhu	gp,ra,sp
   155cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   155d0:	00200293          	li	t0,2
   155d4:	fe5214e3          	bne	tp,t0,155bc <test_21+0x4>
   155d8:	0000aeb7          	lui	t4,0xa
   155dc:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   155e0:	01500e13          	li	t3,21
   155e4:	13d19263          	bne	gp,t4,15708 <fail>

000155e8 <test_22>:
   155e8:	00000213          	li	tp,0
   155ec:	00b00137          	lui	sp,0xb00
   155f0:	00f000b7          	lui	ra,0xf00
   155f4:	00000013          	nop
   155f8:	00000013          	nop
   155fc:	0220b1b3          	mulhu	gp,ra,sp
   15600:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15604:	00200293          	li	t0,2
   15608:	fe5212e3          	bne	tp,t0,155ec <test_22+0x4>
   1560c:	0000aeb7          	lui	t4,0xa
   15610:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15614:	01600e13          	li	t3,22
   15618:	0fd19863          	bne	gp,t4,15708 <fail>

0001561c <test_23>:
   1561c:	00000213          	li	tp,0
   15620:	00b00137          	lui	sp,0xb00
   15624:	00000013          	nop
   15628:	00d000b7          	lui	ra,0xd00
   1562c:	0220b1b3          	mulhu	gp,ra,sp
   15630:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15634:	00200293          	li	t0,2
   15638:	fe5214e3          	bne	tp,t0,15620 <test_23+0x4>
   1563c:	00009eb7          	lui	t4,0x9
   15640:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15644:	01700e13          	li	t3,23
   15648:	0dd19063          	bne	gp,t4,15708 <fail>

0001564c <test_24>:
   1564c:	00000213          	li	tp,0
   15650:	00b00137          	lui	sp,0xb00
   15654:	00000013          	nop
   15658:	00e000b7          	lui	ra,0xe00
   1565c:	00000013          	nop
   15660:	0220b1b3          	mulhu	gp,ra,sp
   15664:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15668:	00200293          	li	t0,2
   1566c:	fe5212e3          	bne	tp,t0,15650 <test_24+0x4>
   15670:	0000aeb7          	lui	t4,0xa
   15674:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15678:	01800e13          	li	t3,24
   1567c:	09d19663          	bne	gp,t4,15708 <fail>

00015680 <test_25>:
   15680:	00000213          	li	tp,0
   15684:	00b00137          	lui	sp,0xb00
   15688:	00000013          	nop
   1568c:	00000013          	nop
   15690:	00f000b7          	lui	ra,0xf00
   15694:	0220b1b3          	mulhu	gp,ra,sp
   15698:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1569c:	00200293          	li	t0,2
   156a0:	fe5212e3          	bne	tp,t0,15684 <test_25+0x4>
   156a4:	0000aeb7          	lui	t4,0xa
   156a8:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   156ac:	01900e13          	li	t3,25
   156b0:	05d19c63          	bne	gp,t4,15708 <fail>

000156b4 <test_26>:
   156b4:	7c0000b7          	lui	ra,0x7c000
   156b8:	02103133          	mulhu	sp,zero,ra
   156bc:	00000e93          	li	t4,0
   156c0:	01a00e13          	li	t3,26
   156c4:	05d11263          	bne	sp,t4,15708 <fail>

000156c8 <test_27>:
   156c8:	800000b7          	lui	ra,0x80000
   156cc:	0200b133          	mulhu	sp,ra,zero
   156d0:	00000e93          	li	t4,0
   156d4:	01b00e13          	li	t3,27
   156d8:	03d11863          	bne	sp,t4,15708 <fail>

000156dc <test_28>:
   156dc:	020030b3          	mulhu	ra,zero,zero
   156e0:	00000e93          	li	t4,0
   156e4:	01c00e13          	li	t3,28
   156e8:	03d09063          	bne	ra,t4,15708 <fail>

000156ec <test_29>:
   156ec:	021000b7          	lui	ra,0x2100
   156f0:	02200137          	lui	sp,0x2200
   156f4:	0220b033          	mulhu	zero,ra,sp
   156f8:	00000e93          	li	t4,0
   156fc:	01d00e13          	li	t3,29
   15700:	01d01463          	bne	zero,t4,15708 <fail>
   15704:	05c01063          	bne	zero,t3,15744 <pass>

00015708 <fail>:
   15708:	0ff00513          	li	a0,255

0001570c <.delay_fail>:
   1570c:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   15710:	fe051ee3          	bnez	a0,1570c <.delay_fail>
   15714:	02000537          	lui	a0,0x2000
   15718:	04500593          	li	a1,69
   1571c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   15720:	05200613          	li	a2,82
   15724:	00c52023          	sw	a2,0(a0)
   15728:	00c52023          	sw	a2,0(a0)
   1572c:	04f00693          	li	a3,79
   15730:	00d52023          	sw	a3,0(a0)
   15734:	00c52023          	sw	a2,0(a0)
   15738:	02000713          	li	a4,32
   1573c:	00e52023          	sw	a4,0(a0)
   15740:	a45fa06f          	j	10184 <mulhu_ret>

00015744 <pass>:
   15744:	0ff00513          	li	a0,255

00015748 <.delay_ok>:
   15748:	fff50513          	addi	a0,a0,-1
   1574c:	fe051ee3          	bnez	a0,15748 <.delay_ok>
   15750:	02000537          	lui	a0,0x2000
   15754:	04f00593          	li	a1,79
   15758:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1575c:	04b00613          	li	a2,75
   15760:	00c52023          	sw	a2,0(a0)
   15764:	02000713          	li	a4,32
   15768:	00e52023          	sw	a4,0(a0)
   1576c:	a19fa06f          	j	10184 <mulhu_ret>

00015770 <slti>:
   15770:	00008537          	lui	a0,0x8
   15774:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   15778:	00a00693          	li	a3,10
   1577c:	00100713          	li	a4,1

00015780 <.delay_pr>:
   15780:	fff50513          	addi	a0,a0,-1
   15784:	fe051ee3          	bnez	a0,15780 <.delay_pr>
   15788:	00015537          	lui	a0,0x15
   1578c:	7ac50513          	addi	a0,a0,1964 # 157ac <.test_name>
   15790:	02000637          	lui	a2,0x2000

00015794 <.prname_next>:
   15794:	00050583          	lb	a1,0(a0)
   15798:	00058e63          	beqz	a1,157b4 <.prname_done>
   1579c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   157a0:	00150513          	addi	a0,a0,1
   157a4:	40e686b3          	sub	a3,a3,a4
   157a8:	fedff06f          	j	15794 <.prname_next>

000157ac <.test_name>:
   157ac:	69746c73          	csrrsi	s8,0x697,8
   157b0:	0000                	unimp
	...

000157b4 <.prname_done>:
   157b4:	02e00593          	li	a1,46

000157b8 <.loop>:
   157b8:	00b62023          	sw	a1,0(a2)
   157bc:	40e686b3          	sub	a3,a3,a4
   157c0:	00068463          	beqz	a3,157c8 <test_2>
   157c4:	ff5ff0ef          	jal	ra,157b8 <.loop>

000157c8 <test_2>:
   157c8:	00000093          	li	ra,0
   157cc:	0000a193          	slti	gp,ra,0
   157d0:	00000e93          	li	t4,0
   157d4:	00200e13          	li	t3,2
   157d8:	27d19263          	bne	gp,t4,15a3c <fail>

000157dc <test_3>:
   157dc:	00100093          	li	ra,1
   157e0:	0010a193          	slti	gp,ra,1
   157e4:	00000e93          	li	t4,0
   157e8:	00300e13          	li	t3,3
   157ec:	25d19863          	bne	gp,t4,15a3c <fail>

000157f0 <test_4>:
   157f0:	00300093          	li	ra,3
   157f4:	0070a193          	slti	gp,ra,7
   157f8:	00100e93          	li	t4,1
   157fc:	00400e13          	li	t3,4
   15800:	23d19e63          	bne	gp,t4,15a3c <fail>

00015804 <test_5>:
   15804:	00700093          	li	ra,7
   15808:	0030a193          	slti	gp,ra,3
   1580c:	00000e93          	li	t4,0
   15810:	00500e13          	li	t3,5
   15814:	23d19463          	bne	gp,t4,15a3c <fail>

00015818 <test_6>:
   15818:	00000093          	li	ra,0
   1581c:	8000a193          	slti	gp,ra,-2048
   15820:	00000e93          	li	t4,0
   15824:	00600e13          	li	t3,6
   15828:	21d19a63          	bne	gp,t4,15a3c <fail>

0001582c <test_7>:
   1582c:	800000b7          	lui	ra,0x80000
   15830:	0000a193          	slti	gp,ra,0
   15834:	00100e93          	li	t4,1
   15838:	00700e13          	li	t3,7
   1583c:	21d19063          	bne	gp,t4,15a3c <fail>

00015840 <test_8>:
   15840:	800000b7          	lui	ra,0x80000
   15844:	8000a193          	slti	gp,ra,-2048
   15848:	00100e93          	li	t4,1
   1584c:	00800e13          	li	t3,8
   15850:	1fd19663          	bne	gp,t4,15a3c <fail>

00015854 <test_9>:
   15854:	00000093          	li	ra,0
   15858:	7ff0a193          	slti	gp,ra,2047
   1585c:	00100e93          	li	t4,1
   15860:	00900e13          	li	t3,9
   15864:	1dd19c63          	bne	gp,t4,15a3c <fail>

00015868 <test_10>:
   15868:	800000b7          	lui	ra,0x80000
   1586c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15870:	0000a193          	slti	gp,ra,0
   15874:	00000e93          	li	t4,0
   15878:	00a00e13          	li	t3,10
   1587c:	1dd19063          	bne	gp,t4,15a3c <fail>

00015880 <test_11>:
   15880:	800000b7          	lui	ra,0x80000
   15884:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15888:	7ff0a193          	slti	gp,ra,2047
   1588c:	00000e93          	li	t4,0
   15890:	00b00e13          	li	t3,11
   15894:	1bd19463          	bne	gp,t4,15a3c <fail>

00015898 <test_12>:
   15898:	800000b7          	lui	ra,0x80000
   1589c:	7ff0a193          	slti	gp,ra,2047
   158a0:	00100e93          	li	t4,1
   158a4:	00c00e13          	li	t3,12
   158a8:	19d19a63          	bne	gp,t4,15a3c <fail>

000158ac <test_13>:
   158ac:	800000b7          	lui	ra,0x80000
   158b0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   158b4:	8000a193          	slti	gp,ra,-2048
   158b8:	00000e93          	li	t4,0
   158bc:	00d00e13          	li	t3,13
   158c0:	17d19e63          	bne	gp,t4,15a3c <fail>

000158c4 <test_14>:
   158c4:	00000093          	li	ra,0
   158c8:	fff0a193          	slti	gp,ra,-1
   158cc:	00000e93          	li	t4,0
   158d0:	00e00e13          	li	t3,14
   158d4:	17d19463          	bne	gp,t4,15a3c <fail>

000158d8 <test_15>:
   158d8:	fff00093          	li	ra,-1
   158dc:	0010a193          	slti	gp,ra,1
   158e0:	00100e93          	li	t4,1
   158e4:	00f00e13          	li	t3,15
   158e8:	15d19a63          	bne	gp,t4,15a3c <fail>

000158ec <test_16>:
   158ec:	fff00093          	li	ra,-1
   158f0:	fff0a193          	slti	gp,ra,-1
   158f4:	00000e93          	li	t4,0
   158f8:	01000e13          	li	t3,16
   158fc:	15d19063          	bne	gp,t4,15a3c <fail>

00015900 <test_17>:
   15900:	00b00093          	li	ra,11
   15904:	00d0b093          	sltiu	ra,ra,13
   15908:	00100e93          	li	t4,1
   1590c:	01100e13          	li	t3,17
   15910:	13d09663          	bne	ra,t4,15a3c <fail>

00015914 <test_18>:
   15914:	00000213          	li	tp,0
   15918:	00f00093          	li	ra,15
   1591c:	00a0a193          	slti	gp,ra,10
   15920:	00018313          	mv	t1,gp
   15924:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15928:	00200293          	li	t0,2
   1592c:	fe5216e3          	bne	tp,t0,15918 <test_18+0x4>
   15930:	00000e93          	li	t4,0
   15934:	01200e13          	li	t3,18
   15938:	11d31263          	bne	t1,t4,15a3c <fail>

0001593c <test_19>:
   1593c:	00000213          	li	tp,0
   15940:	00a00093          	li	ra,10
   15944:	0100a193          	slti	gp,ra,16
   15948:	00000013          	nop
   1594c:	00018313          	mv	t1,gp
   15950:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15954:	00200293          	li	t0,2
   15958:	fe5214e3          	bne	tp,t0,15940 <test_19+0x4>
   1595c:	00100e93          	li	t4,1
   15960:	01300e13          	li	t3,19
   15964:	0dd31c63          	bne	t1,t4,15a3c <fail>

00015968 <test_20>:
   15968:	00000213          	li	tp,0
   1596c:	01000093          	li	ra,16
   15970:	0090a193          	slti	gp,ra,9
   15974:	00000013          	nop
   15978:	00000013          	nop
   1597c:	00018313          	mv	t1,gp
   15980:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15984:	00200293          	li	t0,2
   15988:	fe5212e3          	bne	tp,t0,1596c <test_20+0x4>
   1598c:	00000e93          	li	t4,0
   15990:	01400e13          	li	t3,20
   15994:	0bd31463          	bne	t1,t4,15a3c <fail>

00015998 <test_21>:
   15998:	00000213          	li	tp,0
   1599c:	00b00093          	li	ra,11
   159a0:	00f0a193          	slti	gp,ra,15
   159a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   159a8:	00200293          	li	t0,2
   159ac:	fe5218e3          	bne	tp,t0,1599c <test_21+0x4>
   159b0:	00100e93          	li	t4,1
   159b4:	01500e13          	li	t3,21
   159b8:	09d19263          	bne	gp,t4,15a3c <fail>

000159bc <test_22>:
   159bc:	00000213          	li	tp,0
   159c0:	01100093          	li	ra,17
   159c4:	00000013          	nop
   159c8:	0080a193          	slti	gp,ra,8
   159cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   159d0:	00200293          	li	t0,2
   159d4:	fe5216e3          	bne	tp,t0,159c0 <test_22+0x4>
   159d8:	00000e93          	li	t4,0
   159dc:	01600e13          	li	t3,22
   159e0:	05d19e63          	bne	gp,t4,15a3c <fail>

000159e4 <test_23>:
   159e4:	00000213          	li	tp,0
   159e8:	00c00093          	li	ra,12
   159ec:	00000013          	nop
   159f0:	00000013          	nop
   159f4:	00e0a193          	slti	gp,ra,14
   159f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   159fc:	00200293          	li	t0,2
   15a00:	fe5214e3          	bne	tp,t0,159e8 <test_23+0x4>
   15a04:	00100e93          	li	t4,1
   15a08:	01700e13          	li	t3,23
   15a0c:	03d19863          	bne	gp,t4,15a3c <fail>

00015a10 <test_24>:
   15a10:	fff02093          	slti	ra,zero,-1
   15a14:	00000e93          	li	t4,0
   15a18:	01800e13          	li	t3,24
   15a1c:	03d09063          	bne	ra,t4,15a3c <fail>

00015a20 <test_25>:
   15a20:	00ff00b7          	lui	ra,0xff0
   15a24:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   15a28:	fff0a013          	slti	zero,ra,-1
   15a2c:	00000e93          	li	t4,0
   15a30:	01900e13          	li	t3,25
   15a34:	01d01463          	bne	zero,t4,15a3c <fail>
   15a38:	05c01063          	bne	zero,t3,15a78 <pass>

00015a3c <fail>:
   15a3c:	0ff00513          	li	a0,255

00015a40 <.delay_fail>:
   15a40:	fff50513          	addi	a0,a0,-1
   15a44:	fe051ee3          	bnez	a0,15a40 <.delay_fail>
   15a48:	02000537          	lui	a0,0x2000
   15a4c:	04500593          	li	a1,69
   15a50:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   15a54:	05200613          	li	a2,82
   15a58:	00c52023          	sw	a2,0(a0)
   15a5c:	00c52023          	sw	a2,0(a0)
   15a60:	04f00693          	li	a3,79
   15a64:	00d52023          	sw	a3,0(a0)
   15a68:	00c52023          	sw	a2,0(a0)
   15a6c:	02000713          	li	a4,32
   15a70:	00e52023          	sw	a4,0(a0)
   15a74:	ebcfa06f          	j	10130 <slti_ret>

00015a78 <pass>:
   15a78:	0ff00513          	li	a0,255

00015a7c <.delay_ok>:
   15a7c:	fff50513          	addi	a0,a0,-1
   15a80:	fe051ee3          	bnez	a0,15a7c <.delay_ok>
   15a84:	02000537          	lui	a0,0x2000
   15a88:	04f00593          	li	a1,79
   15a8c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   15a90:	04b00613          	li	a2,75
   15a94:	00c52023          	sw	a2,0(a0)
   15a98:	02000713          	li	a4,32
   15a9c:	00e52023          	sw	a4,0(a0)
   15aa0:	e90fa06f          	j	10130 <slti_ret>

00015aa4 <slt>:
   15aa4:	00008537          	lui	a0,0x8
   15aa8:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   15aac:	00a00693          	li	a3,10
   15ab0:	00100713          	li	a4,1

00015ab4 <.delay_pr>:
   15ab4:	fff50513          	addi	a0,a0,-1
   15ab8:	fe051ee3          	bnez	a0,15ab4 <.delay_pr>
   15abc:	00016537          	lui	a0,0x16
   15ac0:	ae050513          	addi	a0,a0,-1312 # 15ae0 <.test_name>
   15ac4:	02000637          	lui	a2,0x2000

00015ac8 <.prname_next>:
   15ac8:	00050583          	lb	a1,0(a0)
   15acc:	00058c63          	beqz	a1,15ae4 <.prname_done>
   15ad0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   15ad4:	00150513          	addi	a0,a0,1
   15ad8:	40e686b3          	sub	a3,a3,a4
   15adc:	fedff06f          	j	15ac8 <.prname_next>

00015ae0 <.test_name>:
   15ae0:	00746c73          	csrrsi	s8,0x7,8

00015ae4 <.prname_done>:
   15ae4:	02e00593          	li	a1,46

00015ae8 <.loop>:
   15ae8:	00b62023          	sw	a1,0(a2)
   15aec:	40e686b3          	sub	a3,a3,a4
   15af0:	00068463          	beqz	a3,15af8 <test_2>
   15af4:	ff5ff0ef          	jal	ra,15ae8 <.loop>

00015af8 <test_2>:
   15af8:	00000093          	li	ra,0
   15afc:	00000113          	li	sp,0
   15b00:	0020a1b3          	slt	gp,ra,sp
   15b04:	00000e93          	li	t4,0
   15b08:	00200e13          	li	t3,2
   15b0c:	4bd19a63          	bne	gp,t4,15fc0 <fail>

00015b10 <test_3>:
   15b10:	00100093          	li	ra,1
   15b14:	00100113          	li	sp,1
   15b18:	0020a1b3          	slt	gp,ra,sp
   15b1c:	00000e93          	li	t4,0
   15b20:	00300e13          	li	t3,3
   15b24:	49d19e63          	bne	gp,t4,15fc0 <fail>

00015b28 <test_4>:
   15b28:	00300093          	li	ra,3
   15b2c:	00700113          	li	sp,7
   15b30:	0020a1b3          	slt	gp,ra,sp
   15b34:	00100e93          	li	t4,1
   15b38:	00400e13          	li	t3,4
   15b3c:	49d19263          	bne	gp,t4,15fc0 <fail>

00015b40 <test_5>:
   15b40:	00700093          	li	ra,7
   15b44:	00300113          	li	sp,3
   15b48:	0020a1b3          	slt	gp,ra,sp
   15b4c:	00000e93          	li	t4,0
   15b50:	00500e13          	li	t3,5
   15b54:	47d19663          	bne	gp,t4,15fc0 <fail>

00015b58 <test_6>:
   15b58:	00000093          	li	ra,0
   15b5c:	ffff8137          	lui	sp,0xffff8
   15b60:	0020a1b3          	slt	gp,ra,sp
   15b64:	00000e93          	li	t4,0
   15b68:	00600e13          	li	t3,6
   15b6c:	45d19a63          	bne	gp,t4,15fc0 <fail>

00015b70 <test_7>:
   15b70:	800000b7          	lui	ra,0x80000
   15b74:	00000113          	li	sp,0
   15b78:	0020a1b3          	slt	gp,ra,sp
   15b7c:	00100e93          	li	t4,1
   15b80:	00700e13          	li	t3,7
   15b84:	43d19e63          	bne	gp,t4,15fc0 <fail>

00015b88 <test_8>:
   15b88:	800000b7          	lui	ra,0x80000
   15b8c:	ffff8137          	lui	sp,0xffff8
   15b90:	0020a1b3          	slt	gp,ra,sp
   15b94:	00100e93          	li	t4,1
   15b98:	00800e13          	li	t3,8
   15b9c:	43d19263          	bne	gp,t4,15fc0 <fail>

00015ba0 <test_9>:
   15ba0:	00000093          	li	ra,0
   15ba4:	00008137          	lui	sp,0x8
   15ba8:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15bac:	0020a1b3          	slt	gp,ra,sp
   15bb0:	00100e93          	li	t4,1
   15bb4:	00900e13          	li	t3,9
   15bb8:	41d19463          	bne	gp,t4,15fc0 <fail>

00015bbc <test_10>:
   15bbc:	800000b7          	lui	ra,0x80000
   15bc0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15bc4:	00000113          	li	sp,0
   15bc8:	0020a1b3          	slt	gp,ra,sp
   15bcc:	00000e93          	li	t4,0
   15bd0:	00a00e13          	li	t3,10
   15bd4:	3fd19663          	bne	gp,t4,15fc0 <fail>

00015bd8 <test_11>:
   15bd8:	800000b7          	lui	ra,0x80000
   15bdc:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15be0:	00008137          	lui	sp,0x8
   15be4:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15be8:	0020a1b3          	slt	gp,ra,sp
   15bec:	00000e93          	li	t4,0
   15bf0:	00b00e13          	li	t3,11
   15bf4:	3dd19663          	bne	gp,t4,15fc0 <fail>

00015bf8 <test_12>:
   15bf8:	800000b7          	lui	ra,0x80000
   15bfc:	00008137          	lui	sp,0x8
   15c00:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15c04:	0020a1b3          	slt	gp,ra,sp
   15c08:	00100e93          	li	t4,1
   15c0c:	00c00e13          	li	t3,12
   15c10:	3bd19863          	bne	gp,t4,15fc0 <fail>

00015c14 <test_13>:
   15c14:	800000b7          	lui	ra,0x80000
   15c18:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15c1c:	ffff8137          	lui	sp,0xffff8
   15c20:	0020a1b3          	slt	gp,ra,sp
   15c24:	00000e93          	li	t4,0
   15c28:	00d00e13          	li	t3,13
   15c2c:	39d19a63          	bne	gp,t4,15fc0 <fail>

00015c30 <test_14>:
   15c30:	00000093          	li	ra,0
   15c34:	fff00113          	li	sp,-1
   15c38:	0020a1b3          	slt	gp,ra,sp
   15c3c:	00000e93          	li	t4,0
   15c40:	00e00e13          	li	t3,14
   15c44:	37d19e63          	bne	gp,t4,15fc0 <fail>

00015c48 <test_15>:
   15c48:	fff00093          	li	ra,-1
   15c4c:	00100113          	li	sp,1
   15c50:	0020a1b3          	slt	gp,ra,sp
   15c54:	00100e93          	li	t4,1
   15c58:	00f00e13          	li	t3,15
   15c5c:	37d19263          	bne	gp,t4,15fc0 <fail>

00015c60 <test_16>:
   15c60:	fff00093          	li	ra,-1
   15c64:	fff00113          	li	sp,-1
   15c68:	0020a1b3          	slt	gp,ra,sp
   15c6c:	00000e93          	li	t4,0
   15c70:	01000e13          	li	t3,16
   15c74:	35d19663          	bne	gp,t4,15fc0 <fail>

00015c78 <test_17>:
   15c78:	00e00093          	li	ra,14
   15c7c:	00d00113          	li	sp,13
   15c80:	0020a0b3          	slt	ra,ra,sp
   15c84:	00000e93          	li	t4,0
   15c88:	01100e13          	li	t3,17
   15c8c:	33d09a63          	bne	ra,t4,15fc0 <fail>

00015c90 <test_18>:
   15c90:	00b00093          	li	ra,11
   15c94:	00d00113          	li	sp,13
   15c98:	0020a133          	slt	sp,ra,sp
   15c9c:	00100e93          	li	t4,1
   15ca0:	01200e13          	li	t3,18
   15ca4:	31d11e63          	bne	sp,t4,15fc0 <fail>

00015ca8 <test_19>:
   15ca8:	00d00093          	li	ra,13
   15cac:	0010a0b3          	slt	ra,ra,ra
   15cb0:	00000e93          	li	t4,0
   15cb4:	01300e13          	li	t3,19
   15cb8:	31d09463          	bne	ra,t4,15fc0 <fail>

00015cbc <test_20>:
   15cbc:	00000213          	li	tp,0
   15cc0:	00b00093          	li	ra,11
   15cc4:	00d00113          	li	sp,13
   15cc8:	0020a1b3          	slt	gp,ra,sp
   15ccc:	00018313          	mv	t1,gp
   15cd0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15cd4:	00200293          	li	t0,2
   15cd8:	fe5214e3          	bne	tp,t0,15cc0 <test_20+0x4>
   15cdc:	00100e93          	li	t4,1
   15ce0:	01400e13          	li	t3,20
   15ce4:	2dd31e63          	bne	t1,t4,15fc0 <fail>

00015ce8 <test_21>:
   15ce8:	00000213          	li	tp,0
   15cec:	00e00093          	li	ra,14
   15cf0:	00d00113          	li	sp,13
   15cf4:	0020a1b3          	slt	gp,ra,sp
   15cf8:	00000013          	nop
   15cfc:	00018313          	mv	t1,gp
   15d00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d04:	00200293          	li	t0,2
   15d08:	fe5212e3          	bne	tp,t0,15cec <test_21+0x4>
   15d0c:	00000e93          	li	t4,0
   15d10:	01500e13          	li	t3,21
   15d14:	2bd31663          	bne	t1,t4,15fc0 <fail>

00015d18 <test_22>:
   15d18:	00000213          	li	tp,0
   15d1c:	00c00093          	li	ra,12
   15d20:	00d00113          	li	sp,13
   15d24:	0020a1b3          	slt	gp,ra,sp
   15d28:	00000013          	nop
   15d2c:	00000013          	nop
   15d30:	00018313          	mv	t1,gp
   15d34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d38:	00200293          	li	t0,2
   15d3c:	fe5210e3          	bne	tp,t0,15d1c <test_22+0x4>
   15d40:	00100e93          	li	t4,1
   15d44:	01600e13          	li	t3,22
   15d48:	27d31c63          	bne	t1,t4,15fc0 <fail>

00015d4c <test_23>:
   15d4c:	00000213          	li	tp,0
   15d50:	00e00093          	li	ra,14
   15d54:	00d00113          	li	sp,13
   15d58:	0020a1b3          	slt	gp,ra,sp
   15d5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d60:	00200293          	li	t0,2
   15d64:	fe5216e3          	bne	tp,t0,15d50 <test_23+0x4>
   15d68:	00000e93          	li	t4,0
   15d6c:	01700e13          	li	t3,23
   15d70:	25d19863          	bne	gp,t4,15fc0 <fail>

00015d74 <test_24>:
   15d74:	00000213          	li	tp,0
   15d78:	00b00093          	li	ra,11
   15d7c:	00d00113          	li	sp,13
   15d80:	00000013          	nop
   15d84:	0020a1b3          	slt	gp,ra,sp
   15d88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d8c:	00200293          	li	t0,2
   15d90:	fe5214e3          	bne	tp,t0,15d78 <test_24+0x4>
   15d94:	00100e93          	li	t4,1
   15d98:	01800e13          	li	t3,24
   15d9c:	23d19263          	bne	gp,t4,15fc0 <fail>

00015da0 <test_25>:
   15da0:	00000213          	li	tp,0
   15da4:	00f00093          	li	ra,15
   15da8:	00d00113          	li	sp,13
   15dac:	00000013          	nop
   15db0:	00000013          	nop
   15db4:	0020a1b3          	slt	gp,ra,sp
   15db8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15dbc:	00200293          	li	t0,2
   15dc0:	fe5212e3          	bne	tp,t0,15da4 <test_25+0x4>
   15dc4:	00000e93          	li	t4,0
   15dc8:	01900e13          	li	t3,25
   15dcc:	1fd19a63          	bne	gp,t4,15fc0 <fail>

00015dd0 <test_26>:
   15dd0:	00000213          	li	tp,0
   15dd4:	00a00093          	li	ra,10
   15dd8:	00000013          	nop
   15ddc:	00d00113          	li	sp,13
   15de0:	0020a1b3          	slt	gp,ra,sp
   15de4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15de8:	00200293          	li	t0,2
   15dec:	fe5214e3          	bne	tp,t0,15dd4 <test_26+0x4>
   15df0:	00100e93          	li	t4,1
   15df4:	01a00e13          	li	t3,26
   15df8:	1dd19463          	bne	gp,t4,15fc0 <fail>

00015dfc <test_27>:
   15dfc:	00000213          	li	tp,0
   15e00:	01000093          	li	ra,16
   15e04:	00000013          	nop
   15e08:	00d00113          	li	sp,13
   15e0c:	00000013          	nop
   15e10:	0020a1b3          	slt	gp,ra,sp
   15e14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e18:	00200293          	li	t0,2
   15e1c:	fe5212e3          	bne	tp,t0,15e00 <test_27+0x4>
   15e20:	00000e93          	li	t4,0
   15e24:	01b00e13          	li	t3,27
   15e28:	19d19c63          	bne	gp,t4,15fc0 <fail>

00015e2c <test_28>:
   15e2c:	00000213          	li	tp,0
   15e30:	00900093          	li	ra,9
   15e34:	00000013          	nop
   15e38:	00000013          	nop
   15e3c:	00d00113          	li	sp,13
   15e40:	0020a1b3          	slt	gp,ra,sp
   15e44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e48:	00200293          	li	t0,2
   15e4c:	fe5212e3          	bne	tp,t0,15e30 <test_28+0x4>
   15e50:	00100e93          	li	t4,1
   15e54:	01c00e13          	li	t3,28
   15e58:	17d19463          	bne	gp,t4,15fc0 <fail>

00015e5c <test_29>:
   15e5c:	00000213          	li	tp,0
   15e60:	00d00113          	li	sp,13
   15e64:	01100093          	li	ra,17
   15e68:	0020a1b3          	slt	gp,ra,sp
   15e6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e70:	00200293          	li	t0,2
   15e74:	fe5216e3          	bne	tp,t0,15e60 <test_29+0x4>
   15e78:	00000e93          	li	t4,0
   15e7c:	01d00e13          	li	t3,29
   15e80:	15d19063          	bne	gp,t4,15fc0 <fail>

00015e84 <test_30>:
   15e84:	00000213          	li	tp,0
   15e88:	00d00113          	li	sp,13
   15e8c:	00800093          	li	ra,8
   15e90:	00000013          	nop
   15e94:	0020a1b3          	slt	gp,ra,sp
   15e98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e9c:	00200293          	li	t0,2
   15ea0:	fe5214e3          	bne	tp,t0,15e88 <test_30+0x4>
   15ea4:	00100e93          	li	t4,1
   15ea8:	01e00e13          	li	t3,30
   15eac:	11d19a63          	bne	gp,t4,15fc0 <fail>

00015eb0 <test_31>:
   15eb0:	00000213          	li	tp,0
   15eb4:	00d00113          	li	sp,13
   15eb8:	01200093          	li	ra,18
   15ebc:	00000013          	nop
   15ec0:	00000013          	nop
   15ec4:	0020a1b3          	slt	gp,ra,sp
   15ec8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ecc:	00200293          	li	t0,2
   15ed0:	fe5212e3          	bne	tp,t0,15eb4 <test_31+0x4>
   15ed4:	00000e93          	li	t4,0
   15ed8:	01f00e13          	li	t3,31
   15edc:	0fd19263          	bne	gp,t4,15fc0 <fail>

00015ee0 <test_32>:
   15ee0:	00000213          	li	tp,0
   15ee4:	00d00113          	li	sp,13
   15ee8:	00000013          	nop
   15eec:	00700093          	li	ra,7
   15ef0:	0020a1b3          	slt	gp,ra,sp
   15ef4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ef8:	00200293          	li	t0,2
   15efc:	fe5214e3          	bne	tp,t0,15ee4 <test_32+0x4>
   15f00:	00100e93          	li	t4,1
   15f04:	02000e13          	li	t3,32
   15f08:	0bd19c63          	bne	gp,t4,15fc0 <fail>

00015f0c <test_33>:
   15f0c:	00000213          	li	tp,0
   15f10:	00d00113          	li	sp,13
   15f14:	00000013          	nop
   15f18:	01300093          	li	ra,19
   15f1c:	00000013          	nop
   15f20:	0020a1b3          	slt	gp,ra,sp
   15f24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15f28:	00200293          	li	t0,2
   15f2c:	fe5212e3          	bne	tp,t0,15f10 <test_33+0x4>
   15f30:	00000e93          	li	t4,0
   15f34:	02100e13          	li	t3,33
   15f38:	09d19463          	bne	gp,t4,15fc0 <fail>

00015f3c <test_34>:
   15f3c:	00000213          	li	tp,0
   15f40:	00d00113          	li	sp,13
   15f44:	00000013          	nop
   15f48:	00000013          	nop
   15f4c:	00600093          	li	ra,6
   15f50:	0020a1b3          	slt	gp,ra,sp
   15f54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15f58:	00200293          	li	t0,2
   15f5c:	fe5212e3          	bne	tp,t0,15f40 <test_34+0x4>
   15f60:	00100e93          	li	t4,1
   15f64:	02200e13          	li	t3,34
   15f68:	05d19c63          	bne	gp,t4,15fc0 <fail>

00015f6c <test_35>:
   15f6c:	fff00093          	li	ra,-1
   15f70:	00102133          	sgtz	sp,ra
   15f74:	00000e93          	li	t4,0
   15f78:	02300e13          	li	t3,35
   15f7c:	05d11263          	bne	sp,t4,15fc0 <fail>

00015f80 <test_36>:
   15f80:	fff00093          	li	ra,-1
   15f84:	0000a133          	sltz	sp,ra
   15f88:	00100e93          	li	t4,1
   15f8c:	02400e13          	li	t3,36
   15f90:	03d11863          	bne	sp,t4,15fc0 <fail>

00015f94 <test_37>:
   15f94:	000020b3          	sltz	ra,zero
   15f98:	00000e93          	li	t4,0
   15f9c:	02500e13          	li	t3,37
   15fa0:	03d09063          	bne	ra,t4,15fc0 <fail>

00015fa4 <test_38>:
   15fa4:	01000093          	li	ra,16
   15fa8:	01e00113          	li	sp,30
   15fac:	0020a033          	slt	zero,ra,sp
   15fb0:	00000e93          	li	t4,0
   15fb4:	02600e13          	li	t3,38
   15fb8:	01d01463          	bne	zero,t4,15fc0 <fail>
   15fbc:	05c01063          	bne	zero,t3,15ffc <pass>

00015fc0 <fail>:
   15fc0:	0ff00513          	li	a0,255

00015fc4 <.delay_fail>:
   15fc4:	fff50513          	addi	a0,a0,-1
   15fc8:	fe051ee3          	bnez	a0,15fc4 <.delay_fail>
   15fcc:	02000537          	lui	a0,0x2000
   15fd0:	04500593          	li	a1,69
   15fd4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   15fd8:	05200613          	li	a2,82
   15fdc:	00c52023          	sw	a2,0(a0)
   15fe0:	00c52023          	sw	a2,0(a0)
   15fe4:	04f00693          	li	a3,79
   15fe8:	00d52023          	sw	a3,0(a0)
   15fec:	00c52023          	sw	a2,0(a0)
   15ff0:	02000713          	li	a4,32
   15ff4:	00e52023          	sw	a4,0(a0)
   15ff8:	968fa06f          	j	10160 <slt_ret>

00015ffc <pass>:
   15ffc:	0ff00513          	li	a0,255

00016000 <.delay_ok>:
   16000:	fff50513          	addi	a0,a0,-1
   16004:	fe051ee3          	bnez	a0,16000 <.delay_ok>
   16008:	02000537          	lui	a0,0x2000
   1600c:	04f00593          	li	a1,79
   16010:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   16014:	04b00613          	li	a2,75
   16018:	00c52023          	sw	a2,0(a0)
   1601c:	02000713          	li	a4,32
   16020:	00e52023          	sw	a4,0(a0)
   16024:	93cfa06f          	j	10160 <slt_ret>

00016028 <lbu>:
   16028:	00008537          	lui	a0,0x8
   1602c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   16030:	00a00693          	li	a3,10
   16034:	00100713          	li	a4,1

00016038 <.delay_pr>:
   16038:	fff50513          	addi	a0,a0,-1
   1603c:	fe051ee3          	bnez	a0,16038 <.delay_pr>
   16040:	00016537          	lui	a0,0x16
   16044:	06450513          	addi	a0,a0,100 # 16064 <.test_name>
   16048:	02000637          	lui	a2,0x2000

0001604c <.prname_next>:
   1604c:	00050583          	lb	a1,0(a0)
   16050:	00058c63          	beqz	a1,16068 <.prname_done>
   16054:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   16058:	00150513          	addi	a0,a0,1
   1605c:	40e686b3          	sub	a3,a3,a4
   16060:	fedff06f          	j	1604c <.prname_next>

00016064 <.test_name>:
   16064:	626c                	flw	fa1,68(a2)
   16066:	0075                	c.nop	29

00016068 <.prname_done>:
   16068:	02e00593          	li	a1,46

0001606c <.loop>:
   1606c:	00b62023          	sw	a1,0(a2)
   16070:	40e686b3          	sub	a3,a3,a4
   16074:	00068463          	beqz	a3,1607c <test_2>
   16078:	ff5ff0ef          	jal	ra,1606c <.loop>

0001607c <test_2>:
   1607c:	7ffea097          	auipc	ra,0x7ffea
   16080:	fc408093          	addi	ra,ra,-60 # 80000040 <tdat>
   16084:	0000c183          	lbu	gp,0(ra)
   16088:	0ff00e93          	li	t4,255
   1608c:	00200e13          	li	t3,2
   16090:	23d19c63          	bne	gp,t4,162c8 <fail>

00016094 <test_3>:
   16094:	7ffea097          	auipc	ra,0x7ffea
   16098:	fac08093          	addi	ra,ra,-84 # 80000040 <tdat>
   1609c:	0010c183          	lbu	gp,1(ra)
   160a0:	00000e93          	li	t4,0
   160a4:	00300e13          	li	t3,3
   160a8:	23d19063          	bne	gp,t4,162c8 <fail>

000160ac <test_4>:
   160ac:	7ffea097          	auipc	ra,0x7ffea
   160b0:	f9408093          	addi	ra,ra,-108 # 80000040 <tdat>
   160b4:	0020c183          	lbu	gp,2(ra)
   160b8:	0f000e93          	li	t4,240
   160bc:	00400e13          	li	t3,4
   160c0:	21d19463          	bne	gp,t4,162c8 <fail>

000160c4 <test_5>:
   160c4:	7ffea097          	auipc	ra,0x7ffea
   160c8:	f7c08093          	addi	ra,ra,-132 # 80000040 <tdat>
   160cc:	0030c183          	lbu	gp,3(ra)
   160d0:	00f00e93          	li	t4,15
   160d4:	00500e13          	li	t3,5
   160d8:	1fd19863          	bne	gp,t4,162c8 <fail>

000160dc <test_6>:
   160dc:	7ffea097          	auipc	ra,0x7ffea
   160e0:	f6708093          	addi	ra,ra,-153 # 80000043 <tdat4>
   160e4:	ffd0c183          	lbu	gp,-3(ra)
   160e8:	0ff00e93          	li	t4,255
   160ec:	00600e13          	li	t3,6
   160f0:	1dd19c63          	bne	gp,t4,162c8 <fail>

000160f4 <test_7>:
   160f4:	7ffea097          	auipc	ra,0x7ffea
   160f8:	f4f08093          	addi	ra,ra,-177 # 80000043 <tdat4>
   160fc:	ffe0c183          	lbu	gp,-2(ra)
   16100:	00000e93          	li	t4,0
   16104:	00700e13          	li	t3,7
   16108:	1dd19063          	bne	gp,t4,162c8 <fail>

0001610c <test_8>:
   1610c:	7ffea097          	auipc	ra,0x7ffea
   16110:	f3708093          	addi	ra,ra,-201 # 80000043 <tdat4>
   16114:	fff0c183          	lbu	gp,-1(ra)
   16118:	0f000e93          	li	t4,240
   1611c:	00800e13          	li	t3,8
   16120:	1bd19463          	bne	gp,t4,162c8 <fail>

00016124 <test_9>:
   16124:	7ffea097          	auipc	ra,0x7ffea
   16128:	f1f08093          	addi	ra,ra,-225 # 80000043 <tdat4>
   1612c:	0000c183          	lbu	gp,0(ra)
   16130:	00f00e93          	li	t4,15
   16134:	00900e13          	li	t3,9
   16138:	19d19863          	bne	gp,t4,162c8 <fail>

0001613c <test_10>:
   1613c:	7ffea097          	auipc	ra,0x7ffea
   16140:	f0408093          	addi	ra,ra,-252 # 80000040 <tdat>
   16144:	fe008093          	addi	ra,ra,-32
   16148:	0200c183          	lbu	gp,32(ra)
   1614c:	0ff00e93          	li	t4,255
   16150:	00a00e13          	li	t3,10
   16154:	17d19a63          	bne	gp,t4,162c8 <fail>

00016158 <test_11>:
   16158:	7ffea097          	auipc	ra,0x7ffea
   1615c:	ee808093          	addi	ra,ra,-280 # 80000040 <tdat>
   16160:	ffa08093          	addi	ra,ra,-6
   16164:	0070c183          	lbu	gp,7(ra)
   16168:	00000e93          	li	t4,0
   1616c:	00b00e13          	li	t3,11
   16170:	15d19c63          	bne	gp,t4,162c8 <fail>

00016174 <test_12>:
   16174:	00c00e13          	li	t3,12
   16178:	00000213          	li	tp,0
   1617c:	7ffea097          	auipc	ra,0x7ffea
   16180:	ec508093          	addi	ra,ra,-315 # 80000041 <tdat2>
   16184:	0010c183          	lbu	gp,1(ra)
   16188:	00018313          	mv	t1,gp
   1618c:	0f000e93          	li	t4,240
   16190:	13d31c63          	bne	t1,t4,162c8 <fail>
   16194:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16198:	00200293          	li	t0,2
   1619c:	fe5210e3          	bne	tp,t0,1617c <test_12+0x8>

000161a0 <test_13>:
   161a0:	00d00e13          	li	t3,13
   161a4:	00000213          	li	tp,0
   161a8:	7ffea097          	auipc	ra,0x7ffea
   161ac:	e9a08093          	addi	ra,ra,-358 # 80000042 <tdat3>
   161b0:	0010c183          	lbu	gp,1(ra)
   161b4:	00000013          	nop
   161b8:	00018313          	mv	t1,gp
   161bc:	00f00e93          	li	t4,15
   161c0:	11d31463          	bne	t1,t4,162c8 <fail>
   161c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161c8:	00200293          	li	t0,2
   161cc:	fc521ee3          	bne	tp,t0,161a8 <test_13+0x8>

000161d0 <test_14>:
   161d0:	00e00e13          	li	t3,14
   161d4:	00000213          	li	tp,0
   161d8:	7ffea097          	auipc	ra,0x7ffea
   161dc:	e6808093          	addi	ra,ra,-408 # 80000040 <tdat>
   161e0:	0010c183          	lbu	gp,1(ra)
   161e4:	00000013          	nop
   161e8:	00000013          	nop
   161ec:	00018313          	mv	t1,gp
   161f0:	00000e93          	li	t4,0
   161f4:	0dd31a63          	bne	t1,t4,162c8 <fail>
   161f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161fc:	00200293          	li	t0,2
   16200:	fc521ce3          	bne	tp,t0,161d8 <test_14+0x8>

00016204 <test_15>:
   16204:	00f00e13          	li	t3,15
   16208:	00000213          	li	tp,0
   1620c:	7ffea097          	auipc	ra,0x7ffea
   16210:	e3508093          	addi	ra,ra,-459 # 80000041 <tdat2>
   16214:	0010c183          	lbu	gp,1(ra)
   16218:	0f000e93          	li	t4,240
   1621c:	0bd19663          	bne	gp,t4,162c8 <fail>
   16220:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16224:	00200293          	li	t0,2
   16228:	fe5212e3          	bne	tp,t0,1620c <test_15+0x8>

0001622c <test_16>:
   1622c:	01000e13          	li	t3,16
   16230:	00000213          	li	tp,0
   16234:	7ffea097          	auipc	ra,0x7ffea
   16238:	e0e08093          	addi	ra,ra,-498 # 80000042 <tdat3>
   1623c:	00000013          	nop
   16240:	0010c183          	lbu	gp,1(ra)
   16244:	00f00e93          	li	t4,15
   16248:	09d19063          	bne	gp,t4,162c8 <fail>
   1624c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16250:	00200293          	li	t0,2
   16254:	fe5210e3          	bne	tp,t0,16234 <test_16+0x8>

00016258 <test_17>:
   16258:	01100e13          	li	t3,17
   1625c:	00000213          	li	tp,0
   16260:	7ffea097          	auipc	ra,0x7ffea
   16264:	de008093          	addi	ra,ra,-544 # 80000040 <tdat>
   16268:	00000013          	nop
   1626c:	00000013          	nop
   16270:	0010c183          	lbu	gp,1(ra)
   16274:	00000e93          	li	t4,0
   16278:	05d19863          	bne	gp,t4,162c8 <fail>
   1627c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16280:	00200293          	li	t0,2
   16284:	fc521ee3          	bne	tp,t0,16260 <test_17+0x8>

00016288 <test_18>:
   16288:	7ffea197          	auipc	gp,0x7ffea
   1628c:	db818193          	addi	gp,gp,-584 # 80000040 <tdat>
   16290:	0001c103          	lbu	sp,0(gp)
   16294:	00200113          	li	sp,2
   16298:	00200e93          	li	t4,2
   1629c:	01200e13          	li	t3,18
   162a0:	03d11463          	bne	sp,t4,162c8 <fail>

000162a4 <test_19>:
   162a4:	7ffea197          	auipc	gp,0x7ffea
   162a8:	d9c18193          	addi	gp,gp,-612 # 80000040 <tdat>
   162ac:	0001c103          	lbu	sp,0(gp)
   162b0:	00000013          	nop
   162b4:	00200113          	li	sp,2
   162b8:	00200e93          	li	t4,2
   162bc:	01300e13          	li	t3,19
   162c0:	01d11463          	bne	sp,t4,162c8 <fail>
   162c4:	05c01063          	bne	zero,t3,16304 <pass>

000162c8 <fail>:
   162c8:	0ff00513          	li	a0,255

000162cc <.delay_fail>:
   162cc:	fff50513          	addi	a0,a0,-1
   162d0:	fe051ee3          	bnez	a0,162cc <.delay_fail>
   162d4:	02000537          	lui	a0,0x2000
   162d8:	04500593          	li	a1,69
   162dc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   162e0:	05200613          	li	a2,82
   162e4:	00c52023          	sw	a2,0(a0)
   162e8:	00c52023          	sw	a2,0(a0)
   162ec:	04f00693          	li	a3,79
   162f0:	00d52023          	sw	a3,0(a0)
   162f4:	00c52023          	sw	a2,0(a0)
   162f8:	02000713          	li	a4,32
   162fc:	00e52023          	sw	a4,0(a0)
   16300:	e11f906f          	j	10110 <lbu_ret>

00016304 <pass>:
   16304:	0ff00513          	li	a0,255

00016308 <.delay_ok>:
   16308:	fff50513          	addi	a0,a0,-1
   1630c:	fe051ee3          	bnez	a0,16308 <.delay_ok>
   16310:	02000537          	lui	a0,0x2000
   16314:	04f00593          	li	a1,79
   16318:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1631c:	04b00613          	li	a2,75
   16320:	00c52023          	sw	a2,0(a0)
   16324:	02000713          	li	a4,32
   16328:	00e52023          	sw	a4,0(a0)
   1632c:	de5f906f          	j	10110 <lbu_ret>

00016330 <lb>:
   16330:	00008537          	lui	a0,0x8
   16334:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   16338:	00a00693          	li	a3,10
   1633c:	00100713          	li	a4,1

00016340 <.delay_pr>:
   16340:	fff50513          	addi	a0,a0,-1
   16344:	fe051ee3          	bnez	a0,16340 <.delay_pr>
   16348:	00016537          	lui	a0,0x16
   1634c:	36c50513          	addi	a0,a0,876 # 1636c <.test_name>
   16350:	02000637          	lui	a2,0x2000

00016354 <.prname_next>:
   16354:	00050583          	lb	a1,0(a0)
   16358:	00058c63          	beqz	a1,16370 <.prname_done>
   1635c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   16360:	00150513          	addi	a0,a0,1
   16364:	40e686b3          	sub	a3,a3,a4
   16368:	fedff06f          	j	16354 <.prname_next>

0001636c <.test_name>:
   1636c:	626c                	flw	fa1,68(a2)
	...

00016370 <.prname_done>:
   16370:	02e00593          	li	a1,46

00016374 <.loop>:
   16374:	00b62023          	sw	a1,0(a2)
   16378:	40e686b3          	sub	a3,a3,a4
   1637c:	00068463          	beqz	a3,16384 <test_2>
   16380:	ff5ff0ef          	jal	ra,16374 <.loop>

00016384 <test_2>:
   16384:	7ffea097          	auipc	ra,0x7ffea
   16388:	cc008093          	addi	ra,ra,-832 # 80000044 <tdat>
   1638c:	00008183          	lb	gp,0(ra)
   16390:	fff00e93          	li	t4,-1
   16394:	00200e13          	li	t3,2
   16398:	23d19c63          	bne	gp,t4,165d0 <fail>

0001639c <test_3>:
   1639c:	7ffea097          	auipc	ra,0x7ffea
   163a0:	ca808093          	addi	ra,ra,-856 # 80000044 <tdat>
   163a4:	00108183          	lb	gp,1(ra)
   163a8:	00000e93          	li	t4,0
   163ac:	00300e13          	li	t3,3
   163b0:	23d19063          	bne	gp,t4,165d0 <fail>

000163b4 <test_4>:
   163b4:	7ffea097          	auipc	ra,0x7ffea
   163b8:	c9008093          	addi	ra,ra,-880 # 80000044 <tdat>
   163bc:	00208183          	lb	gp,2(ra)
   163c0:	ff000e93          	li	t4,-16
   163c4:	00400e13          	li	t3,4
   163c8:	21d19463          	bne	gp,t4,165d0 <fail>

000163cc <test_5>:
   163cc:	7ffea097          	auipc	ra,0x7ffea
   163d0:	c7808093          	addi	ra,ra,-904 # 80000044 <tdat>
   163d4:	00308183          	lb	gp,3(ra)
   163d8:	00f00e93          	li	t4,15
   163dc:	00500e13          	li	t3,5
   163e0:	1fd19863          	bne	gp,t4,165d0 <fail>

000163e4 <test_6>:
   163e4:	7ffea097          	auipc	ra,0x7ffea
   163e8:	c6308093          	addi	ra,ra,-925 # 80000047 <tdat4>
   163ec:	ffd08183          	lb	gp,-3(ra)
   163f0:	fff00e93          	li	t4,-1
   163f4:	00600e13          	li	t3,6
   163f8:	1dd19c63          	bne	gp,t4,165d0 <fail>

000163fc <test_7>:
   163fc:	7ffea097          	auipc	ra,0x7ffea
   16400:	c4b08093          	addi	ra,ra,-949 # 80000047 <tdat4>
   16404:	ffe08183          	lb	gp,-2(ra)
   16408:	00000e93          	li	t4,0
   1640c:	00700e13          	li	t3,7
   16410:	1dd19063          	bne	gp,t4,165d0 <fail>

00016414 <test_8>:
   16414:	7ffea097          	auipc	ra,0x7ffea
   16418:	c3308093          	addi	ra,ra,-973 # 80000047 <tdat4>
   1641c:	fff08183          	lb	gp,-1(ra)
   16420:	ff000e93          	li	t4,-16
   16424:	00800e13          	li	t3,8
   16428:	1bd19463          	bne	gp,t4,165d0 <fail>

0001642c <test_9>:
   1642c:	7ffea097          	auipc	ra,0x7ffea
   16430:	c1b08093          	addi	ra,ra,-997 # 80000047 <tdat4>
   16434:	00008183          	lb	gp,0(ra)
   16438:	00f00e93          	li	t4,15
   1643c:	00900e13          	li	t3,9
   16440:	19d19863          	bne	gp,t4,165d0 <fail>

00016444 <test_10>:
   16444:	7ffea097          	auipc	ra,0x7ffea
   16448:	c0008093          	addi	ra,ra,-1024 # 80000044 <tdat>
   1644c:	fe008093          	addi	ra,ra,-32
   16450:	02008183          	lb	gp,32(ra)
   16454:	fff00e93          	li	t4,-1
   16458:	00a00e13          	li	t3,10
   1645c:	17d19a63          	bne	gp,t4,165d0 <fail>

00016460 <test_11>:
   16460:	7ffea097          	auipc	ra,0x7ffea
   16464:	be408093          	addi	ra,ra,-1052 # 80000044 <tdat>
   16468:	ffa08093          	addi	ra,ra,-6
   1646c:	00708183          	lb	gp,7(ra)
   16470:	00000e93          	li	t4,0
   16474:	00b00e13          	li	t3,11
   16478:	15d19c63          	bne	gp,t4,165d0 <fail>

0001647c <test_12>:
   1647c:	00c00e13          	li	t3,12
   16480:	00000213          	li	tp,0
   16484:	7ffea097          	auipc	ra,0x7ffea
   16488:	bc108093          	addi	ra,ra,-1087 # 80000045 <tdat2>
   1648c:	00108183          	lb	gp,1(ra)
   16490:	00018313          	mv	t1,gp
   16494:	ff000e93          	li	t4,-16
   16498:	13d31c63          	bne	t1,t4,165d0 <fail>
   1649c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164a0:	00200293          	li	t0,2
   164a4:	fe5210e3          	bne	tp,t0,16484 <test_12+0x8>

000164a8 <test_13>:
   164a8:	00d00e13          	li	t3,13
   164ac:	00000213          	li	tp,0
   164b0:	7ffea097          	auipc	ra,0x7ffea
   164b4:	b9608093          	addi	ra,ra,-1130 # 80000046 <tdat3>
   164b8:	00108183          	lb	gp,1(ra)
   164bc:	00000013          	nop
   164c0:	00018313          	mv	t1,gp
   164c4:	00f00e93          	li	t4,15
   164c8:	11d31463          	bne	t1,t4,165d0 <fail>
   164cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164d0:	00200293          	li	t0,2
   164d4:	fc521ee3          	bne	tp,t0,164b0 <test_13+0x8>

000164d8 <test_14>:
   164d8:	00e00e13          	li	t3,14
   164dc:	00000213          	li	tp,0
   164e0:	7ffea097          	auipc	ra,0x7ffea
   164e4:	b6408093          	addi	ra,ra,-1180 # 80000044 <tdat>
   164e8:	00108183          	lb	gp,1(ra)
   164ec:	00000013          	nop
   164f0:	00000013          	nop
   164f4:	00018313          	mv	t1,gp
   164f8:	00000e93          	li	t4,0
   164fc:	0dd31a63          	bne	t1,t4,165d0 <fail>
   16500:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16504:	00200293          	li	t0,2
   16508:	fc521ce3          	bne	tp,t0,164e0 <test_14+0x8>

0001650c <test_15>:
   1650c:	00f00e13          	li	t3,15
   16510:	00000213          	li	tp,0
   16514:	7ffea097          	auipc	ra,0x7ffea
   16518:	b3108093          	addi	ra,ra,-1231 # 80000045 <tdat2>
   1651c:	00108183          	lb	gp,1(ra)
   16520:	ff000e93          	li	t4,-16
   16524:	0bd19663          	bne	gp,t4,165d0 <fail>
   16528:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1652c:	00200293          	li	t0,2
   16530:	fe5212e3          	bne	tp,t0,16514 <test_15+0x8>

00016534 <test_16>:
   16534:	01000e13          	li	t3,16
   16538:	00000213          	li	tp,0
   1653c:	7ffea097          	auipc	ra,0x7ffea
   16540:	b0a08093          	addi	ra,ra,-1270 # 80000046 <tdat3>
   16544:	00000013          	nop
   16548:	00108183          	lb	gp,1(ra)
   1654c:	00f00e93          	li	t4,15
   16550:	09d19063          	bne	gp,t4,165d0 <fail>
   16554:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16558:	00200293          	li	t0,2
   1655c:	fe5210e3          	bne	tp,t0,1653c <test_16+0x8>

00016560 <test_17>:
   16560:	01100e13          	li	t3,17
   16564:	00000213          	li	tp,0
   16568:	7ffea097          	auipc	ra,0x7ffea
   1656c:	adc08093          	addi	ra,ra,-1316 # 80000044 <tdat>
   16570:	00000013          	nop
   16574:	00000013          	nop
   16578:	00108183          	lb	gp,1(ra)
   1657c:	00000e93          	li	t4,0
   16580:	05d19863          	bne	gp,t4,165d0 <fail>
   16584:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16588:	00200293          	li	t0,2
   1658c:	fc521ee3          	bne	tp,t0,16568 <test_17+0x8>

00016590 <test_18>:
   16590:	7ffea197          	auipc	gp,0x7ffea
   16594:	ab418193          	addi	gp,gp,-1356 # 80000044 <tdat>
   16598:	00018103          	lb	sp,0(gp)
   1659c:	00200113          	li	sp,2
   165a0:	00200e93          	li	t4,2
   165a4:	01200e13          	li	t3,18
   165a8:	03d11463          	bne	sp,t4,165d0 <fail>

000165ac <test_19>:
   165ac:	7ffea197          	auipc	gp,0x7ffea
   165b0:	a9818193          	addi	gp,gp,-1384 # 80000044 <tdat>
   165b4:	00018103          	lb	sp,0(gp)
   165b8:	00000013          	nop
   165bc:	00200113          	li	sp,2
   165c0:	00200e93          	li	t4,2
   165c4:	01300e13          	li	t3,19
   165c8:	01d11463          	bne	sp,t4,165d0 <fail>
   165cc:	05c01063          	bne	zero,t3,1660c <pass>

000165d0 <fail>:
   165d0:	0ff00513          	li	a0,255

000165d4 <.delay_fail>:
   165d4:	fff50513          	addi	a0,a0,-1
   165d8:	fe051ee3          	bnez	a0,165d4 <.delay_fail>
   165dc:	02000537          	lui	a0,0x2000
   165e0:	04500593          	li	a1,69
   165e4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   165e8:	05200613          	li	a2,82
   165ec:	00c52023          	sw	a2,0(a0)
   165f0:	00c52023          	sw	a2,0(a0)
   165f4:	04f00693          	li	a3,79
   165f8:	00d52023          	sw	a3,0(a0)
   165fc:	00c52023          	sw	a2,0(a0)
   16600:	02000713          	li	a4,32
   16604:	00e52023          	sw	a4,0(a0)
   16608:	afdf906f          	j	10104 <lb_ret>

0001660c <pass>:
   1660c:	0ff00513          	li	a0,255

00016610 <.delay_ok>:
   16610:	fff50513          	addi	a0,a0,-1
   16614:	fe051ee3          	bnez	a0,16610 <.delay_ok>
   16618:	02000537          	lui	a0,0x2000
   1661c:	04f00593          	li	a1,79
   16620:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   16624:	04b00613          	li	a2,75
   16628:	00c52023          	sw	a2,0(a0)
   1662c:	02000713          	li	a4,32
   16630:	00e52023          	sw	a4,0(a0)
   16634:	ad1f906f          	j	10104 <lb_ret>

00016638 <sh>:
   16638:	00008537          	lui	a0,0x8
   1663c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   16640:	00a00693          	li	a3,10
   16644:	00100713          	li	a4,1

00016648 <.delay_pr>:
   16648:	fff50513          	addi	a0,a0,-1
   1664c:	fe051ee3          	bnez	a0,16648 <.delay_pr>
   16650:	00016537          	lui	a0,0x16
   16654:	67450513          	addi	a0,a0,1652 # 16674 <.test_name>
   16658:	02000637          	lui	a2,0x2000

0001665c <.prname_next>:
   1665c:	00050583          	lb	a1,0(a0)
   16660:	00058c63          	beqz	a1,16678 <.prname_done>
   16664:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   16668:	00150513          	addi	a0,a0,1
   1666c:	40e686b3          	sub	a3,a3,a4
   16670:	fedff06f          	j	1665c <.prname_next>

00016674 <.test_name>:
   16674:	00006873          	csrrsi	a6,ustatus,0

00016678 <.prname_done>:
   16678:	02e00593          	li	a1,46

0001667c <.loop>:
   1667c:	00b62023          	sw	a1,0(a2)
   16680:	40e686b3          	sub	a3,a3,a4
   16684:	00068463          	beqz	a3,1668c <test_2>
   16688:	ff5ff0ef          	jal	ra,1667c <.loop>

0001668c <test_2>:
   1668c:	7ffea097          	auipc	ra,0x7ffea
   16690:	9bc08093          	addi	ra,ra,-1604 # 80000048 <tdat>
   16694:	0aa00113          	li	sp,170
   16698:	00209023          	sh	sp,0(ra)
   1669c:	00009183          	lh	gp,0(ra)
   166a0:	0aa00e93          	li	t4,170
   166a4:	00200e13          	li	t3,2
   166a8:	45d19e63          	bne	gp,t4,16b04 <fail>

000166ac <test_3>:
   166ac:	7ffea097          	auipc	ra,0x7ffea
   166b0:	99c08093          	addi	ra,ra,-1636 # 80000048 <tdat>
   166b4:	ffffb137          	lui	sp,0xffffb
   166b8:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   166bc:	00209123          	sh	sp,2(ra)
   166c0:	00209183          	lh	gp,2(ra)
   166c4:	ffffbeb7          	lui	t4,0xffffb
   166c8:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   166cc:	00300e13          	li	t3,3
   166d0:	43d19a63          	bne	gp,t4,16b04 <fail>

000166d4 <test_4>:
   166d4:	7ffea097          	auipc	ra,0x7ffea
   166d8:	97408093          	addi	ra,ra,-1676 # 80000048 <tdat>
   166dc:	beef1137          	lui	sp,0xbeef1
   166e0:	aa010113          	addi	sp,sp,-1376 # beef0aa0 <_edata+0x3eef0a30>
   166e4:	00209223          	sh	sp,4(ra)
   166e8:	0040a183          	lw	gp,4(ra)
   166ec:	beef1eb7          	lui	t4,0xbeef1
   166f0:	aa0e8e93          	addi	t4,t4,-1376 # beef0aa0 <_edata+0x3eef0a30>
   166f4:	00400e13          	li	t3,4
   166f8:	41d19663          	bne	gp,t4,16b04 <fail>

000166fc <test_5>:
   166fc:	7ffea097          	auipc	ra,0x7ffea
   16700:	94c08093          	addi	ra,ra,-1716 # 80000048 <tdat>
   16704:	ffffa137          	lui	sp,0xffffa
   16708:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   1670c:	00209323          	sh	sp,6(ra)
   16710:	00609183          	lh	gp,6(ra)
   16714:	ffffaeb7          	lui	t4,0xffffa
   16718:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   1671c:	00500e13          	li	t3,5
   16720:	3fd19263          	bne	gp,t4,16b04 <fail>

00016724 <test_6>:
   16724:	7ffea097          	auipc	ra,0x7ffea
   16728:	93208093          	addi	ra,ra,-1742 # 80000056 <tdat8>
   1672c:	0aa00113          	li	sp,170
   16730:	fe209d23          	sh	sp,-6(ra)
   16734:	ffa09183          	lh	gp,-6(ra)
   16738:	0aa00e93          	li	t4,170
   1673c:	00600e13          	li	t3,6
   16740:	3dd19263          	bne	gp,t4,16b04 <fail>

00016744 <test_7>:
   16744:	7ffea097          	auipc	ra,0x7ffea
   16748:	91208093          	addi	ra,ra,-1774 # 80000056 <tdat8>
   1674c:	ffffb137          	lui	sp,0xffffb
   16750:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   16754:	fe209e23          	sh	sp,-4(ra)
   16758:	ffc09183          	lh	gp,-4(ra)
   1675c:	ffffbeb7          	lui	t4,0xffffb
   16760:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   16764:	00700e13          	li	t3,7
   16768:	39d19e63          	bne	gp,t4,16b04 <fail>

0001676c <test_8>:
   1676c:	7ffea097          	auipc	ra,0x7ffea
   16770:	8ea08093          	addi	ra,ra,-1814 # 80000056 <tdat8>
   16774:	00001137          	lui	sp,0x1
   16778:	aa010113          	addi	sp,sp,-1376 # aa0 <_start-0xf560>
   1677c:	fe209f23          	sh	sp,-2(ra)
   16780:	ffe09183          	lh	gp,-2(ra)
   16784:	00001eb7          	lui	t4,0x1
   16788:	aa0e8e93          	addi	t4,t4,-1376 # aa0 <_start-0xf560>
   1678c:	00800e13          	li	t3,8
   16790:	37d19a63          	bne	gp,t4,16b04 <fail>

00016794 <test_9>:
   16794:	7ffea097          	auipc	ra,0x7ffea
   16798:	8c208093          	addi	ra,ra,-1854 # 80000056 <tdat8>
   1679c:	ffffa137          	lui	sp,0xffffa
   167a0:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   167a4:	00209023          	sh	sp,0(ra)
   167a8:	00009183          	lh	gp,0(ra)
   167ac:	ffffaeb7          	lui	t4,0xffffa
   167b0:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   167b4:	00900e13          	li	t3,9
   167b8:	35d19663          	bne	gp,t4,16b04 <fail>

000167bc <test_10>:
   167bc:	7ffea097          	auipc	ra,0x7ffea
   167c0:	89c08093          	addi	ra,ra,-1892 # 80000058 <tdat9>
   167c4:	12345137          	lui	sp,0x12345
   167c8:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232af10>
   167cc:	fe008213          	addi	tp,ra,-32
   167d0:	02221023          	sh	sp,32(tp) # 20 <_start-0xffe0>
   167d4:	00009183          	lh	gp,0(ra)
   167d8:	00005eb7          	lui	t4,0x5
   167dc:	678e8e93          	addi	t4,t4,1656 # 5678 <_start-0xa988>
   167e0:	00a00e13          	li	t3,10
   167e4:	33d19063          	bne	gp,t4,16b04 <fail>

000167e8 <test_11>:
   167e8:	7ffea097          	auipc	ra,0x7ffea
   167ec:	87008093          	addi	ra,ra,-1936 # 80000058 <tdat9>
   167f0:	00003137          	lui	sp,0x3
   167f4:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   167f8:	ffb08093          	addi	ra,ra,-5
   167fc:	002093a3          	sh	sp,7(ra)
   16800:	7ffea217          	auipc	tp,0x7ffea
   16804:	85a20213          	addi	tp,tp,-1958 # 8000005a <tdat10>
   16808:	00021183          	lh	gp,0(tp) # 0 <_start-0x10000>
   1680c:	00003eb7          	lui	t4,0x3
   16810:	098e8e93          	addi	t4,t4,152 # 3098 <_start-0xcf68>
   16814:	00b00e13          	li	t3,11
   16818:	2fd19663          	bne	gp,t4,16b04 <fail>

0001681c <test_12>:
   1681c:	00c00e13          	li	t3,12
   16820:	00000213          	li	tp,0
   16824:	ffffd0b7          	lui	ra,0xffffd
   16828:	cdd08093          	addi	ra,ra,-803 # ffffccdd <_edata+0x7fffcc6d>
   1682c:	7ffea117          	auipc	sp,0x7ffea
   16830:	81c10113          	addi	sp,sp,-2020 # 80000048 <tdat>
   16834:	00111023          	sh	ra,0(sp)
   16838:	00011183          	lh	gp,0(sp)
   1683c:	ffffdeb7          	lui	t4,0xffffd
   16840:	cdde8e93          	addi	t4,t4,-803 # ffffccdd <_edata+0x7fffcc6d>
   16844:	2dd19063          	bne	gp,t4,16b04 <fail>
   16848:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1684c:	00200293          	li	t0,2
   16850:	fc521ae3          	bne	tp,t0,16824 <test_12+0x8>

00016854 <test_13>:
   16854:	00d00e13          	li	t3,13
   16858:	00000213          	li	tp,0
   1685c:	ffffc0b7          	lui	ra,0xffffc
   16860:	ccd08093          	addi	ra,ra,-819 # ffffbccd <_edata+0x7fffbc5d>
   16864:	7ffe9117          	auipc	sp,0x7ffe9
   16868:	7e410113          	addi	sp,sp,2020 # 80000048 <tdat>
   1686c:	00000013          	nop
   16870:	00111123          	sh	ra,2(sp)
   16874:	00211183          	lh	gp,2(sp)
   16878:	ffffceb7          	lui	t4,0xffffc
   1687c:	ccde8e93          	addi	t4,t4,-819 # ffffbccd <_edata+0x7fffbc5d>
   16880:	29d19263          	bne	gp,t4,16b04 <fail>
   16884:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16888:	00200293          	li	t0,2
   1688c:	fc5218e3          	bne	tp,t0,1685c <test_13+0x8>

00016890 <test_14>:
   16890:	00e00e13          	li	t3,14
   16894:	00000213          	li	tp,0
   16898:	ffffc0b7          	lui	ra,0xffffc
   1689c:	bcc08093          	addi	ra,ra,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   168a0:	7ffe9117          	auipc	sp,0x7ffe9
   168a4:	7a810113          	addi	sp,sp,1960 # 80000048 <tdat>
   168a8:	00000013          	nop
   168ac:	00000013          	nop
   168b0:	00111223          	sh	ra,4(sp)
   168b4:	00411183          	lh	gp,4(sp)
   168b8:	ffffceb7          	lui	t4,0xffffc
   168bc:	bcce8e93          	addi	t4,t4,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   168c0:	25d19263          	bne	gp,t4,16b04 <fail>
   168c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   168c8:	00200293          	li	t0,2
   168cc:	fc5216e3          	bne	tp,t0,16898 <test_14+0x8>

000168d0 <test_15>:
   168d0:	00f00e13          	li	t3,15
   168d4:	00000213          	li	tp,0
   168d8:	ffffb0b7          	lui	ra,0xffffb
   168dc:	bbc08093          	addi	ra,ra,-1092 # ffffabbc <_edata+0x7fffab4c>
   168e0:	00000013          	nop
   168e4:	7ffe9117          	auipc	sp,0x7ffe9
   168e8:	76410113          	addi	sp,sp,1892 # 80000048 <tdat>
   168ec:	00111323          	sh	ra,6(sp)
   168f0:	00611183          	lh	gp,6(sp)
   168f4:	ffffbeb7          	lui	t4,0xffffb
   168f8:	bbce8e93          	addi	t4,t4,-1092 # ffffabbc <_edata+0x7fffab4c>
   168fc:	21d19463          	bne	gp,t4,16b04 <fail>
   16900:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16904:	00200293          	li	t0,2
   16908:	fc5218e3          	bne	tp,t0,168d8 <test_15+0x8>

0001690c <test_16>:
   1690c:	01000e13          	li	t3,16
   16910:	00000213          	li	tp,0
   16914:	ffffb0b7          	lui	ra,0xffffb
   16918:	abb08093          	addi	ra,ra,-1349 # ffffaabb <_edata+0x7fffaa4b>
   1691c:	00000013          	nop
   16920:	7ffe9117          	auipc	sp,0x7ffe9
   16924:	72810113          	addi	sp,sp,1832 # 80000048 <tdat>
   16928:	00000013          	nop
   1692c:	00111423          	sh	ra,8(sp)
   16930:	00811183          	lh	gp,8(sp)
   16934:	ffffbeb7          	lui	t4,0xffffb
   16938:	abbe8e93          	addi	t4,t4,-1349 # ffffaabb <_edata+0x7fffaa4b>
   1693c:	1dd19463          	bne	gp,t4,16b04 <fail>
   16940:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16944:	00200293          	li	t0,2
   16948:	fc5216e3          	bne	tp,t0,16914 <test_16+0x8>

0001694c <test_17>:
   1694c:	01100e13          	li	t3,17
   16950:	00000213          	li	tp,0
   16954:	ffffe0b7          	lui	ra,0xffffe
   16958:	aab08093          	addi	ra,ra,-1365 # ffffdaab <_edata+0x7fffda3b>
   1695c:	00000013          	nop
   16960:	00000013          	nop
   16964:	7ffe9117          	auipc	sp,0x7ffe9
   16968:	6e410113          	addi	sp,sp,1764 # 80000048 <tdat>
   1696c:	00111523          	sh	ra,10(sp)
   16970:	00a11183          	lh	gp,10(sp)
   16974:	ffffeeb7          	lui	t4,0xffffe
   16978:	aabe8e93          	addi	t4,t4,-1365 # ffffdaab <_edata+0x7fffda3b>
   1697c:	19d19463          	bne	gp,t4,16b04 <fail>
   16980:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16984:	00200293          	li	t0,2
   16988:	fc5216e3          	bne	tp,t0,16954 <test_17+0x8>

0001698c <test_18>:
   1698c:	01200e13          	li	t3,18
   16990:	00000213          	li	tp,0
   16994:	7ffe9117          	auipc	sp,0x7ffe9
   16998:	6b410113          	addi	sp,sp,1716 # 80000048 <tdat>
   1699c:	000020b7          	lui	ra,0x2
   169a0:	23308093          	addi	ra,ra,563 # 2233 <_start-0xddcd>
   169a4:	00111023          	sh	ra,0(sp)
   169a8:	00011183          	lh	gp,0(sp)
   169ac:	00002eb7          	lui	t4,0x2
   169b0:	233e8e93          	addi	t4,t4,563 # 2233 <_start-0xddcd>
   169b4:	15d19863          	bne	gp,t4,16b04 <fail>
   169b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   169bc:	00200293          	li	t0,2
   169c0:	fc521ae3          	bne	tp,t0,16994 <test_18+0x8>

000169c4 <test_19>:
   169c4:	01300e13          	li	t3,19
   169c8:	00000213          	li	tp,0
   169cc:	7ffe9117          	auipc	sp,0x7ffe9
   169d0:	67c10113          	addi	sp,sp,1660 # 80000048 <tdat>
   169d4:	000010b7          	lui	ra,0x1
   169d8:	22308093          	addi	ra,ra,547 # 1223 <_start-0xeddd>
   169dc:	00000013          	nop
   169e0:	00111123          	sh	ra,2(sp)
   169e4:	00211183          	lh	gp,2(sp)
   169e8:	00001eb7          	lui	t4,0x1
   169ec:	223e8e93          	addi	t4,t4,547 # 1223 <_start-0xeddd>
   169f0:	11d19a63          	bne	gp,t4,16b04 <fail>
   169f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   169f8:	00200293          	li	t0,2
   169fc:	fc5218e3          	bne	tp,t0,169cc <test_19+0x8>

00016a00 <test_20>:
   16a00:	01400e13          	li	t3,20
   16a04:	00000213          	li	tp,0
   16a08:	7ffe9117          	auipc	sp,0x7ffe9
   16a0c:	64010113          	addi	sp,sp,1600 # 80000048 <tdat>
   16a10:	000010b7          	lui	ra,0x1
   16a14:	12208093          	addi	ra,ra,290 # 1122 <_start-0xeede>
   16a18:	00000013          	nop
   16a1c:	00000013          	nop
   16a20:	00111223          	sh	ra,4(sp)
   16a24:	00411183          	lh	gp,4(sp)
   16a28:	00001eb7          	lui	t4,0x1
   16a2c:	122e8e93          	addi	t4,t4,290 # 1122 <_start-0xeede>
   16a30:	0dd19a63          	bne	gp,t4,16b04 <fail>
   16a34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16a38:	00200293          	li	t0,2
   16a3c:	fc5216e3          	bne	tp,t0,16a08 <test_20+0x8>

00016a40 <test_21>:
   16a40:	01500e13          	li	t3,21
   16a44:	00000213          	li	tp,0
   16a48:	7ffe9117          	auipc	sp,0x7ffe9
   16a4c:	60010113          	addi	sp,sp,1536 # 80000048 <tdat>
   16a50:	00000013          	nop
   16a54:	11200093          	li	ra,274
   16a58:	00111323          	sh	ra,6(sp)
   16a5c:	00611183          	lh	gp,6(sp)
   16a60:	11200e93          	li	t4,274
   16a64:	0bd19063          	bne	gp,t4,16b04 <fail>
   16a68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16a6c:	00200293          	li	t0,2
   16a70:	fc521ce3          	bne	tp,t0,16a48 <test_21+0x8>

00016a74 <test_22>:
   16a74:	01600e13          	li	t3,22
   16a78:	00000213          	li	tp,0
   16a7c:	7ffe9117          	auipc	sp,0x7ffe9
   16a80:	5cc10113          	addi	sp,sp,1484 # 80000048 <tdat>
   16a84:	00000013          	nop
   16a88:	01100093          	li	ra,17
   16a8c:	00000013          	nop
   16a90:	00111423          	sh	ra,8(sp)
   16a94:	00811183          	lh	gp,8(sp)
   16a98:	01100e93          	li	t4,17
   16a9c:	07d19463          	bne	gp,t4,16b04 <fail>
   16aa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16aa4:	00200293          	li	t0,2
   16aa8:	fc521ae3          	bne	tp,t0,16a7c <test_22+0x8>

00016aac <test_23>:
   16aac:	01700e13          	li	t3,23
   16ab0:	00000213          	li	tp,0
   16ab4:	7ffe9117          	auipc	sp,0x7ffe9
   16ab8:	59410113          	addi	sp,sp,1428 # 80000048 <tdat>
   16abc:	00000013          	nop
   16ac0:	00000013          	nop
   16ac4:	000030b7          	lui	ra,0x3
   16ac8:	00108093          	addi	ra,ra,1 # 3001 <_start-0xcfff>
   16acc:	00111523          	sh	ra,10(sp)
   16ad0:	00a11183          	lh	gp,10(sp)
   16ad4:	00003eb7          	lui	t4,0x3
   16ad8:	001e8e93          	addi	t4,t4,1 # 3001 <_start-0xcfff>
   16adc:	03d19463          	bne	gp,t4,16b04 <fail>
   16ae0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ae4:	00200293          	li	t0,2
   16ae8:	fc5216e3          	bne	tp,t0,16ab4 <test_23+0x8>
   16aec:	0000c537          	lui	a0,0xc
   16af0:	eef50513          	addi	a0,a0,-273 # beef <_start-0x4111>
   16af4:	7ffe9597          	auipc	a1,0x7ffe9
   16af8:	55458593          	addi	a1,a1,1364 # 80000048 <tdat>
   16afc:	00a59323          	sh	a0,6(a1)
   16b00:	05c01063          	bne	zero,t3,16b40 <pass>

00016b04 <fail>:
   16b04:	0ff00513          	li	a0,255

00016b08 <.delay_fail>:
   16b08:	fff50513          	addi	a0,a0,-1
   16b0c:	fe051ee3          	bnez	a0,16b08 <.delay_fail>
   16b10:	02000537          	lui	a0,0x2000
   16b14:	04500593          	li	a1,69
   16b18:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   16b1c:	05200613          	li	a2,82
   16b20:	00c52023          	sw	a2,0(a0)
   16b24:	00c52023          	sw	a2,0(a0)
   16b28:	04f00693          	li	a3,79
   16b2c:	00d52023          	sw	a3,0(a0)
   16b30:	00c52023          	sw	a2,0(a0)
   16b34:	02000713          	li	a4,32
   16b38:	00e52023          	sw	a4,0(a0)
   16b3c:	de4f906f          	j	10120 <sh_ret>

00016b40 <pass>:
   16b40:	0ff00513          	li	a0,255

00016b44 <.delay_ok>:
   16b44:	fff50513          	addi	a0,a0,-1
   16b48:	fe051ee3          	bnez	a0,16b44 <.delay_ok>
   16b4c:	02000537          	lui	a0,0x2000
   16b50:	04f00593          	li	a1,79
   16b54:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   16b58:	04b00613          	li	a2,75
   16b5c:	00c52023          	sw	a2,0(a0)
   16b60:	02000713          	li	a4,32
   16b64:	00e52023          	sw	a4,0(a0)
   16b68:	db8f906f          	j	10120 <sh_ret>

00016b6c <lui>:
   16b6c:	00008537          	lui	a0,0x8
   16b70:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   16b74:	00a00693          	li	a3,10
   16b78:	00100713          	li	a4,1

00016b7c <.delay_pr>:
   16b7c:	fff50513          	addi	a0,a0,-1
   16b80:	fe051ee3          	bnez	a0,16b7c <.delay_pr>
   16b84:	00017537          	lui	a0,0x17
   16b88:	ba850513          	addi	a0,a0,-1112 # 16ba8 <.test_name>
   16b8c:	02000637          	lui	a2,0x2000

00016b90 <.prname_next>:
   16b90:	00050583          	lb	a1,0(a0)
   16b94:	00058c63          	beqz	a1,16bac <.prname_done>
   16b98:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   16b9c:	00150513          	addi	a0,a0,1
   16ba0:	40e686b3          	sub	a3,a3,a4
   16ba4:	fedff06f          	j	16b90 <.prname_next>

00016ba8 <.test_name>:
   16ba8:	756c                	flw	fa1,108(a0)
   16baa:	0069                	c.nop	26

00016bac <.prname_done>:
   16bac:	02e00593          	li	a1,46

00016bb0 <.loop>:
   16bb0:	00b62023          	sw	a1,0(a2)
   16bb4:	40e686b3          	sub	a3,a3,a4
   16bb8:	00068463          	beqz	a3,16bc0 <test_2>
   16bbc:	ff5ff0ef          	jal	ra,16bb0 <.loop>

00016bc0 <test_2>:
   16bc0:	000000b7          	lui	ra,0x0
   16bc4:	00000e93          	li	t4,0
   16bc8:	00200e13          	li	t3,2
   16bcc:	05d09a63          	bne	ra,t4,16c20 <fail>

00016bd0 <test_3>:
   16bd0:	fffff0b7          	lui	ra,0xfffff
   16bd4:	4010d093          	srai	ra,ra,0x1
   16bd8:	80000e93          	li	t4,-2048
   16bdc:	00300e13          	li	t3,3
   16be0:	05d09063          	bne	ra,t4,16c20 <fail>

00016be4 <test_4>:
   16be4:	7ffff0b7          	lui	ra,0x7ffff
   16be8:	4140d093          	srai	ra,ra,0x14
   16bec:	7ff00e93          	li	t4,2047
   16bf0:	00400e13          	li	t3,4
   16bf4:	03d09663          	bne	ra,t4,16c20 <fail>

00016bf8 <test_5>:
   16bf8:	800000b7          	lui	ra,0x80000
   16bfc:	4140d093          	srai	ra,ra,0x14
   16c00:	80000e93          	li	t4,-2048
   16c04:	00500e13          	li	t3,5
   16c08:	01d09c63          	bne	ra,t4,16c20 <fail>

00016c0c <test_6>:
   16c0c:	80000037          	lui	zero,0x80000
   16c10:	00000e93          	li	t4,0
   16c14:	00600e13          	li	t3,6
   16c18:	01d01463          	bne	zero,t4,16c20 <fail>
   16c1c:	05c01063          	bne	zero,t3,16c5c <pass>

00016c20 <fail>:
   16c20:	0ff00513          	li	a0,255

00016c24 <.delay_fail>:
   16c24:	fff50513          	addi	a0,a0,-1
   16c28:	fe051ee3          	bnez	a0,16c24 <.delay_fail>
   16c2c:	02000537          	lui	a0,0x2000
   16c30:	04500593          	li	a1,69
   16c34:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   16c38:	05200613          	li	a2,82
   16c3c:	00c52023          	sw	a2,0(a0)
   16c40:	00c52023          	sw	a2,0(a0)
   16c44:	04f00693          	li	a3,79
   16c48:	00d52023          	sw	a3,0(a0)
   16c4c:	00c52023          	sw	a2,0(a0)
   16c50:	02000713          	li	a4,32
   16c54:	00e52023          	sw	a4,0(a0)
   16c58:	c78f906f          	j	100d0 <lui_ret>

00016c5c <pass>:
   16c5c:	0ff00513          	li	a0,255

00016c60 <.delay_ok>:
   16c60:	fff50513          	addi	a0,a0,-1
   16c64:	fe051ee3          	bnez	a0,16c60 <.delay_ok>
   16c68:	02000537          	lui	a0,0x2000
   16c6c:	04f00593          	li	a1,79
   16c70:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   16c74:	04b00613          	li	a2,75
   16c78:	00c52023          	sw	a2,0(a0)
   16c7c:	02000713          	li	a4,32
   16c80:	00e52023          	sw	a4,0(a0)
   16c84:	c4cf906f          	j	100d0 <lui_ret>

00016c88 <sb>:
   16c88:	00008537          	lui	a0,0x8
   16c8c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   16c90:	00a00693          	li	a3,10
   16c94:	00100713          	li	a4,1

00016c98 <.delay_pr>:
   16c98:	fff50513          	addi	a0,a0,-1
   16c9c:	fe051ee3          	bnez	a0,16c98 <.delay_pr>
   16ca0:	00017537          	lui	a0,0x17
   16ca4:	cc450513          	addi	a0,a0,-828 # 16cc4 <.test_name>
   16ca8:	02000637          	lui	a2,0x2000

00016cac <.prname_next>:
   16cac:	00050583          	lb	a1,0(a0)
   16cb0:	00058c63          	beqz	a1,16cc8 <.prname_done>
   16cb4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   16cb8:	00150513          	addi	a0,a0,1
   16cbc:	40e686b3          	sub	a3,a3,a4
   16cc0:	fedff06f          	j	16cac <.prname_next>

00016cc4 <.test_name>:
   16cc4:	00006273          	csrrsi	tp,ustatus,0

00016cc8 <.prname_done>:
   16cc8:	02e00593          	li	a1,46

00016ccc <.loop>:
   16ccc:	00b62023          	sw	a1,0(a2)
   16cd0:	40e686b3          	sub	a3,a3,a4
   16cd4:	00068463          	beqz	a3,16cdc <test_2>
   16cd8:	ff5ff0ef          	jal	ra,16ccc <.loop>

00016cdc <test_2>:
   16cdc:	7ffe9097          	auipc	ra,0x7ffe9
   16ce0:	38008093          	addi	ra,ra,896 # 8000005c <tdat>
   16ce4:	faa00113          	li	sp,-86
   16ce8:	00208023          	sb	sp,0(ra)
   16cec:	00008183          	lb	gp,0(ra)
   16cf0:	faa00e93          	li	t4,-86
   16cf4:	00200e13          	li	t3,2
   16cf8:	3dd19c63          	bne	gp,t4,170d0 <fail>

00016cfc <test_3>:
   16cfc:	7ffe9097          	auipc	ra,0x7ffe9
   16d00:	36008093          	addi	ra,ra,864 # 8000005c <tdat>
   16d04:	00000113          	li	sp,0
   16d08:	002080a3          	sb	sp,1(ra)
   16d0c:	00108183          	lb	gp,1(ra)
   16d10:	00000e93          	li	t4,0
   16d14:	00300e13          	li	t3,3
   16d18:	3bd19c63          	bne	gp,t4,170d0 <fail>

00016d1c <test_4>:
   16d1c:	7ffe9097          	auipc	ra,0x7ffe9
   16d20:	34008093          	addi	ra,ra,832 # 8000005c <tdat>
   16d24:	fffff137          	lui	sp,0xfffff
   16d28:	fa010113          	addi	sp,sp,-96 # ffffefa0 <_edata+0x7fffef30>
   16d2c:	00208123          	sb	sp,2(ra)
   16d30:	00209183          	lh	gp,2(ra)
   16d34:	fffffeb7          	lui	t4,0xfffff
   16d38:	fa0e8e93          	addi	t4,t4,-96 # ffffefa0 <_edata+0x7fffef30>
   16d3c:	00400e13          	li	t3,4
   16d40:	39d19863          	bne	gp,t4,170d0 <fail>

00016d44 <test_5>:
   16d44:	7ffe9097          	auipc	ra,0x7ffe9
   16d48:	31808093          	addi	ra,ra,792 # 8000005c <tdat>
   16d4c:	00a00113          	li	sp,10
   16d50:	002081a3          	sb	sp,3(ra)
   16d54:	00308183          	lb	gp,3(ra)
   16d58:	00a00e93          	li	t4,10
   16d5c:	00500e13          	li	t3,5
   16d60:	37d19863          	bne	gp,t4,170d0 <fail>

00016d64 <test_6>:
   16d64:	7ffe9097          	auipc	ra,0x7ffe9
   16d68:	2ff08093          	addi	ra,ra,767 # 80000063 <tdat8>
   16d6c:	faa00113          	li	sp,-86
   16d70:	fe208ea3          	sb	sp,-3(ra)
   16d74:	ffd08183          	lb	gp,-3(ra)
   16d78:	faa00e93          	li	t4,-86
   16d7c:	00600e13          	li	t3,6
   16d80:	35d19863          	bne	gp,t4,170d0 <fail>

00016d84 <test_7>:
   16d84:	7ffe9097          	auipc	ra,0x7ffe9
   16d88:	2df08093          	addi	ra,ra,735 # 80000063 <tdat8>
   16d8c:	00000113          	li	sp,0
   16d90:	fe208f23          	sb	sp,-2(ra)
   16d94:	ffe08183          	lb	gp,-2(ra)
   16d98:	00000e93          	li	t4,0
   16d9c:	00700e13          	li	t3,7
   16da0:	33d19863          	bne	gp,t4,170d0 <fail>

00016da4 <test_8>:
   16da4:	7ffe9097          	auipc	ra,0x7ffe9
   16da8:	2bf08093          	addi	ra,ra,703 # 80000063 <tdat8>
   16dac:	fa000113          	li	sp,-96
   16db0:	fe208fa3          	sb	sp,-1(ra)
   16db4:	fff08183          	lb	gp,-1(ra)
   16db8:	fa000e93          	li	t4,-96
   16dbc:	00800e13          	li	t3,8
   16dc0:	31d19863          	bne	gp,t4,170d0 <fail>

00016dc4 <test_9>:
   16dc4:	7ffe9097          	auipc	ra,0x7ffe9
   16dc8:	29f08093          	addi	ra,ra,671 # 80000063 <tdat8>
   16dcc:	00a00113          	li	sp,10
   16dd0:	00208023          	sb	sp,0(ra)
   16dd4:	00008183          	lb	gp,0(ra)
   16dd8:	00a00e93          	li	t4,10
   16ddc:	00900e13          	li	t3,9
   16de0:	2fd19863          	bne	gp,t4,170d0 <fail>

00016de4 <test_10>:
   16de4:	7ffe9097          	auipc	ra,0x7ffe9
   16de8:	28008093          	addi	ra,ra,640 # 80000064 <tdat9>
   16dec:	12345137          	lui	sp,0x12345
   16df0:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232af10>
   16df4:	fe008213          	addi	tp,ra,-32
   16df8:	02220023          	sb	sp,32(tp) # 20 <_start-0xffe0>
   16dfc:	00008183          	lb	gp,0(ra)
   16e00:	07800e93          	li	t4,120
   16e04:	00a00e13          	li	t3,10
   16e08:	2dd19463          	bne	gp,t4,170d0 <fail>

00016e0c <test_11>:
   16e0c:	7ffe9097          	auipc	ra,0x7ffe9
   16e10:	25808093          	addi	ra,ra,600 # 80000064 <tdat9>
   16e14:	00003137          	lui	sp,0x3
   16e18:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   16e1c:	ffa08093          	addi	ra,ra,-6
   16e20:	002083a3          	sb	sp,7(ra)
   16e24:	7ffe9217          	auipc	tp,0x7ffe9
   16e28:	24120213          	addi	tp,tp,577 # 80000065 <tdat10>
   16e2c:	00020183          	lb	gp,0(tp) # 0 <_start-0x10000>
   16e30:	f9800e93          	li	t4,-104
   16e34:	00b00e13          	li	t3,11
   16e38:	29d19c63          	bne	gp,t4,170d0 <fail>

00016e3c <test_12>:
   16e3c:	00c00e13          	li	t3,12
   16e40:	00000213          	li	tp,0
   16e44:	fdd00093          	li	ra,-35
   16e48:	7ffe9117          	auipc	sp,0x7ffe9
   16e4c:	21410113          	addi	sp,sp,532 # 8000005c <tdat>
   16e50:	00110023          	sb	ra,0(sp)
   16e54:	00010183          	lb	gp,0(sp)
   16e58:	fdd00e93          	li	t4,-35
   16e5c:	27d19a63          	bne	gp,t4,170d0 <fail>
   16e60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e64:	00200293          	li	t0,2
   16e68:	fc521ee3          	bne	tp,t0,16e44 <test_12+0x8>

00016e6c <test_13>:
   16e6c:	00d00e13          	li	t3,13
   16e70:	00000213          	li	tp,0
   16e74:	fcd00093          	li	ra,-51
   16e78:	7ffe9117          	auipc	sp,0x7ffe9
   16e7c:	1e410113          	addi	sp,sp,484 # 8000005c <tdat>
   16e80:	00000013          	nop
   16e84:	001100a3          	sb	ra,1(sp)
   16e88:	00110183          	lb	gp,1(sp)
   16e8c:	fcd00e93          	li	t4,-51
   16e90:	25d19063          	bne	gp,t4,170d0 <fail>
   16e94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e98:	00200293          	li	t0,2
   16e9c:	fc521ce3          	bne	tp,t0,16e74 <test_13+0x8>

00016ea0 <test_14>:
   16ea0:	00e00e13          	li	t3,14
   16ea4:	00000213          	li	tp,0
   16ea8:	fcc00093          	li	ra,-52
   16eac:	7ffe9117          	auipc	sp,0x7ffe9
   16eb0:	1b010113          	addi	sp,sp,432 # 8000005c <tdat>
   16eb4:	00000013          	nop
   16eb8:	00000013          	nop
   16ebc:	00110123          	sb	ra,2(sp)
   16ec0:	00210183          	lb	gp,2(sp)
   16ec4:	fcc00e93          	li	t4,-52
   16ec8:	21d19463          	bne	gp,t4,170d0 <fail>
   16ecc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ed0:	00200293          	li	t0,2
   16ed4:	fc521ae3          	bne	tp,t0,16ea8 <test_14+0x8>

00016ed8 <test_15>:
   16ed8:	00f00e13          	li	t3,15
   16edc:	00000213          	li	tp,0
   16ee0:	fbc00093          	li	ra,-68
   16ee4:	00000013          	nop
   16ee8:	7ffe9117          	auipc	sp,0x7ffe9
   16eec:	17410113          	addi	sp,sp,372 # 8000005c <tdat>
   16ef0:	001101a3          	sb	ra,3(sp)
   16ef4:	00310183          	lb	gp,3(sp)
   16ef8:	fbc00e93          	li	t4,-68
   16efc:	1dd19a63          	bne	gp,t4,170d0 <fail>
   16f00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f04:	00200293          	li	t0,2
   16f08:	fc521ce3          	bne	tp,t0,16ee0 <test_15+0x8>

00016f0c <test_16>:
   16f0c:	01000e13          	li	t3,16
   16f10:	00000213          	li	tp,0
   16f14:	fbb00093          	li	ra,-69
   16f18:	00000013          	nop
   16f1c:	7ffe9117          	auipc	sp,0x7ffe9
   16f20:	14010113          	addi	sp,sp,320 # 8000005c <tdat>
   16f24:	00000013          	nop
   16f28:	00110223          	sb	ra,4(sp)
   16f2c:	00410183          	lb	gp,4(sp)
   16f30:	fbb00e93          	li	t4,-69
   16f34:	19d19e63          	bne	gp,t4,170d0 <fail>
   16f38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f3c:	00200293          	li	t0,2
   16f40:	fc521ae3          	bne	tp,t0,16f14 <test_16+0x8>

00016f44 <test_17>:
   16f44:	01100e13          	li	t3,17
   16f48:	00000213          	li	tp,0
   16f4c:	fab00093          	li	ra,-85
   16f50:	00000013          	nop
   16f54:	00000013          	nop
   16f58:	7ffe9117          	auipc	sp,0x7ffe9
   16f5c:	10410113          	addi	sp,sp,260 # 8000005c <tdat>
   16f60:	001102a3          	sb	ra,5(sp)
   16f64:	00510183          	lb	gp,5(sp)
   16f68:	fab00e93          	li	t4,-85
   16f6c:	17d19263          	bne	gp,t4,170d0 <fail>
   16f70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f74:	00200293          	li	t0,2
   16f78:	fc521ae3          	bne	tp,t0,16f4c <test_17+0x8>

00016f7c <test_18>:
   16f7c:	01200e13          	li	t3,18
   16f80:	00000213          	li	tp,0
   16f84:	7ffe9117          	auipc	sp,0x7ffe9
   16f88:	0d810113          	addi	sp,sp,216 # 8000005c <tdat>
   16f8c:	03300093          	li	ra,51
   16f90:	00110023          	sb	ra,0(sp)
   16f94:	00010183          	lb	gp,0(sp)
   16f98:	03300e93          	li	t4,51
   16f9c:	13d19a63          	bne	gp,t4,170d0 <fail>
   16fa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16fa4:	00200293          	li	t0,2
   16fa8:	fc521ee3          	bne	tp,t0,16f84 <test_18+0x8>

00016fac <test_19>:
   16fac:	01300e13          	li	t3,19
   16fb0:	00000213          	li	tp,0
   16fb4:	7ffe9117          	auipc	sp,0x7ffe9
   16fb8:	0a810113          	addi	sp,sp,168 # 8000005c <tdat>
   16fbc:	02300093          	li	ra,35
   16fc0:	00000013          	nop
   16fc4:	001100a3          	sb	ra,1(sp)
   16fc8:	00110183          	lb	gp,1(sp)
   16fcc:	02300e93          	li	t4,35
   16fd0:	11d19063          	bne	gp,t4,170d0 <fail>
   16fd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16fd8:	00200293          	li	t0,2
   16fdc:	fc521ce3          	bne	tp,t0,16fb4 <test_19+0x8>

00016fe0 <test_20>:
   16fe0:	01400e13          	li	t3,20
   16fe4:	00000213          	li	tp,0
   16fe8:	7ffe9117          	auipc	sp,0x7ffe9
   16fec:	07410113          	addi	sp,sp,116 # 8000005c <tdat>
   16ff0:	02200093          	li	ra,34
   16ff4:	00000013          	nop
   16ff8:	00000013          	nop
   16ffc:	00110123          	sb	ra,2(sp)
   17000:	00210183          	lb	gp,2(sp)
   17004:	02200e93          	li	t4,34
   17008:	0dd19463          	bne	gp,t4,170d0 <fail>
   1700c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17010:	00200293          	li	t0,2
   17014:	fc521ae3          	bne	tp,t0,16fe8 <test_20+0x8>

00017018 <test_21>:
   17018:	01500e13          	li	t3,21
   1701c:	00000213          	li	tp,0
   17020:	7ffe9117          	auipc	sp,0x7ffe9
   17024:	03c10113          	addi	sp,sp,60 # 8000005c <tdat>
   17028:	00000013          	nop
   1702c:	01200093          	li	ra,18
   17030:	001101a3          	sb	ra,3(sp)
   17034:	00310183          	lb	gp,3(sp)
   17038:	01200e93          	li	t4,18
   1703c:	09d19a63          	bne	gp,t4,170d0 <fail>
   17040:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17044:	00200293          	li	t0,2
   17048:	fc521ce3          	bne	tp,t0,17020 <test_21+0x8>

0001704c <test_22>:
   1704c:	01600e13          	li	t3,22
   17050:	00000213          	li	tp,0
   17054:	7ffe9117          	auipc	sp,0x7ffe9
   17058:	00810113          	addi	sp,sp,8 # 8000005c <tdat>
   1705c:	00000013          	nop
   17060:	01100093          	li	ra,17
   17064:	00000013          	nop
   17068:	00110223          	sb	ra,4(sp)
   1706c:	00410183          	lb	gp,4(sp)
   17070:	01100e93          	li	t4,17
   17074:	05d19e63          	bne	gp,t4,170d0 <fail>
   17078:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1707c:	00200293          	li	t0,2
   17080:	fc521ae3          	bne	tp,t0,17054 <test_22+0x8>

00017084 <test_23>:
   17084:	01700e13          	li	t3,23
   17088:	00000213          	li	tp,0
   1708c:	7ffe9117          	auipc	sp,0x7ffe9
   17090:	fd010113          	addi	sp,sp,-48 # 8000005c <tdat>
   17094:	00000013          	nop
   17098:	00000013          	nop
   1709c:	00100093          	li	ra,1
   170a0:	001102a3          	sb	ra,5(sp)
   170a4:	00510183          	lb	gp,5(sp)
   170a8:	00100e93          	li	t4,1
   170ac:	03d19263          	bne	gp,t4,170d0 <fail>
   170b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   170b4:	00200293          	li	t0,2
   170b8:	fc521ae3          	bne	tp,t0,1708c <test_23+0x8>
   170bc:	0ef00513          	li	a0,239
   170c0:	7ffe9597          	auipc	a1,0x7ffe9
   170c4:	f9c58593          	addi	a1,a1,-100 # 8000005c <tdat>
   170c8:	00a581a3          	sb	a0,3(a1)
   170cc:	05c01063          	bne	zero,t3,1710c <pass>

000170d0 <fail>:
   170d0:	0ff00513          	li	a0,255

000170d4 <.delay_fail>:
   170d4:	fff50513          	addi	a0,a0,-1
   170d8:	fe051ee3          	bnez	a0,170d4 <.delay_fail>
   170dc:	02000537          	lui	a0,0x2000
   170e0:	04500593          	li	a1,69
   170e4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   170e8:	05200613          	li	a2,82
   170ec:	00c52023          	sw	a2,0(a0)
   170f0:	00c52023          	sw	a2,0(a0)
   170f4:	04f00693          	li	a3,79
   170f8:	00d52023          	sw	a3,0(a0)
   170fc:	00c52023          	sw	a2,0(a0)
   17100:	02000713          	li	a4,32
   17104:	00e52023          	sw	a4,0(a0)
   17108:	814f906f          	j	1011c <sb_ret>

0001710c <pass>:
   1710c:	0ff00513          	li	a0,255

00017110 <.delay_ok>:
   17110:	fff50513          	addi	a0,a0,-1
   17114:	fe051ee3          	bnez	a0,17110 <.delay_ok>
   17118:	02000537          	lui	a0,0x2000
   1711c:	04f00593          	li	a1,79
   17120:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   17124:	04b00613          	li	a2,75
   17128:	00c52023          	sw	a2,0(a0)
   1712c:	02000713          	li	a4,32
   17130:	00e52023          	sw	a4,0(a0)
   17134:	fe9f806f          	j	1011c <sb_ret>

00017138 <bltu>:
   17138:	00008537          	lui	a0,0x8
   1713c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   17140:	00a00693          	li	a3,10
   17144:	00100713          	li	a4,1

00017148 <.delay_pr>:
   17148:	fff50513          	addi	a0,a0,-1
   1714c:	fe051ee3          	bnez	a0,17148 <.delay_pr>
   17150:	00017537          	lui	a0,0x17
   17154:	17450513          	addi	a0,a0,372 # 17174 <.test_name>
   17158:	02000637          	lui	a2,0x2000

0001715c <.prname_next>:
   1715c:	00050583          	lb	a1,0(a0)
   17160:	00058e63          	beqz	a1,1717c <.prname_done>
   17164:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   17168:	00150513          	addi	a0,a0,1
   1716c:	40e686b3          	sub	a3,a3,a4
   17170:	fedff06f          	j	1715c <.prname_next>

00017174 <.test_name>:
   17174:	6c62                	flw	fs8,24(sp)
   17176:	7574                	flw	fa3,108(a0)
   17178:	0000                	unimp
	...

0001717c <.prname_done>:
   1717c:	02e00593          	li	a1,46

00017180 <.loop>:
   17180:	00b62023          	sw	a1,0(a2)
   17184:	40e686b3          	sub	a3,a3,a4
   17188:	00068463          	beqz	a3,17190 <test_2>
   1718c:	ff5ff0ef          	jal	ra,17180 <.loop>

00017190 <test_2>:
   17190:	00200e13          	li	t3,2
   17194:	00000093          	li	ra,0
   17198:	00100113          	li	sp,1
   1719c:	0020e663          	bltu	ra,sp,171a8 <test_2+0x18>
   171a0:	2fc01263          	bne	zero,t3,17484 <fail>
   171a4:	01c01663          	bne	zero,t3,171b0 <test_3>
   171a8:	fe20eee3          	bltu	ra,sp,171a4 <test_2+0x14>
   171ac:	2dc01c63          	bne	zero,t3,17484 <fail>

000171b0 <test_3>:
   171b0:	00300e13          	li	t3,3
   171b4:	ffe00093          	li	ra,-2
   171b8:	fff00113          	li	sp,-1
   171bc:	0020e663          	bltu	ra,sp,171c8 <test_3+0x18>
   171c0:	2dc01263          	bne	zero,t3,17484 <fail>
   171c4:	01c01663          	bne	zero,t3,171d0 <test_4>
   171c8:	fe20eee3          	bltu	ra,sp,171c4 <test_3+0x14>
   171cc:	2bc01c63          	bne	zero,t3,17484 <fail>

000171d0 <test_4>:
   171d0:	00400e13          	li	t3,4
   171d4:	00000093          	li	ra,0
   171d8:	fff00113          	li	sp,-1
   171dc:	0020e663          	bltu	ra,sp,171e8 <test_4+0x18>
   171e0:	2bc01263          	bne	zero,t3,17484 <fail>
   171e4:	01c01663          	bne	zero,t3,171f0 <test_5>
   171e8:	fe20eee3          	bltu	ra,sp,171e4 <test_4+0x14>
   171ec:	29c01c63          	bne	zero,t3,17484 <fail>

000171f0 <test_5>:
   171f0:	00500e13          	li	t3,5
   171f4:	00100093          	li	ra,1
   171f8:	00000113          	li	sp,0
   171fc:	0020e463          	bltu	ra,sp,17204 <test_5+0x14>
   17200:	01c01463          	bne	zero,t3,17208 <test_5+0x18>
   17204:	29c01063          	bne	zero,t3,17484 <fail>
   17208:	fe20eee3          	bltu	ra,sp,17204 <test_5+0x14>

0001720c <test_6>:
   1720c:	00600e13          	li	t3,6
   17210:	fff00093          	li	ra,-1
   17214:	ffe00113          	li	sp,-2
   17218:	0020e463          	bltu	ra,sp,17220 <test_6+0x14>
   1721c:	01c01463          	bne	zero,t3,17224 <test_6+0x18>
   17220:	27c01263          	bne	zero,t3,17484 <fail>
   17224:	fe20eee3          	bltu	ra,sp,17220 <test_6+0x14>

00017228 <test_7>:
   17228:	00700e13          	li	t3,7
   1722c:	fff00093          	li	ra,-1
   17230:	00000113          	li	sp,0
   17234:	0020e463          	bltu	ra,sp,1723c <test_7+0x14>
   17238:	01c01463          	bne	zero,t3,17240 <test_7+0x18>
   1723c:	25c01463          	bne	zero,t3,17484 <fail>
   17240:	fe20eee3          	bltu	ra,sp,1723c <test_7+0x14>

00017244 <test_8>:
   17244:	00800e13          	li	t3,8
   17248:	800000b7          	lui	ra,0x80000
   1724c:	80000137          	lui	sp,0x80000
   17250:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   17254:	0020e463          	bltu	ra,sp,1725c <test_8+0x18>
   17258:	01c01463          	bne	zero,t3,17260 <test_8+0x1c>
   1725c:	23c01463          	bne	zero,t3,17484 <fail>
   17260:	fe20eee3          	bltu	ra,sp,1725c <test_8+0x18>

00017264 <test_9>:
   17264:	00900e13          	li	t3,9
   17268:	00000213          	li	tp,0
   1726c:	f00000b7          	lui	ra,0xf0000
   17270:	f0000137          	lui	sp,0xf0000
   17274:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17278:	2020e663          	bltu	ra,sp,17484 <fail>
   1727c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17280:	00200293          	li	t0,2
   17284:	fe5214e3          	bne	tp,t0,1726c <test_9+0x8>

00017288 <test_10>:
   17288:	00a00e13          	li	t3,10
   1728c:	00000213          	li	tp,0
   17290:	f00000b7          	lui	ra,0xf0000
   17294:	f0000137          	lui	sp,0xf0000
   17298:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   1729c:	00000013          	nop
   172a0:	1e20e263          	bltu	ra,sp,17484 <fail>
   172a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172a8:	00200293          	li	t0,2
   172ac:	fe5212e3          	bne	tp,t0,17290 <test_10+0x8>

000172b0 <test_11>:
   172b0:	00b00e13          	li	t3,11
   172b4:	00000213          	li	tp,0
   172b8:	f00000b7          	lui	ra,0xf0000
   172bc:	f0000137          	lui	sp,0xf0000
   172c0:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   172c4:	00000013          	nop
   172c8:	00000013          	nop
   172cc:	1a20ec63          	bltu	ra,sp,17484 <fail>
   172d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172d4:	00200293          	li	t0,2
   172d8:	fe5210e3          	bne	tp,t0,172b8 <test_11+0x8>

000172dc <test_12>:
   172dc:	00c00e13          	li	t3,12
   172e0:	00000213          	li	tp,0
   172e4:	f00000b7          	lui	ra,0xf0000
   172e8:	00000013          	nop
   172ec:	f0000137          	lui	sp,0xf0000
   172f0:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   172f4:	1820e863          	bltu	ra,sp,17484 <fail>
   172f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172fc:	00200293          	li	t0,2
   17300:	fe5212e3          	bne	tp,t0,172e4 <test_12+0x8>

00017304 <test_13>:
   17304:	00d00e13          	li	t3,13
   17308:	00000213          	li	tp,0
   1730c:	f00000b7          	lui	ra,0xf0000
   17310:	00000013          	nop
   17314:	f0000137          	lui	sp,0xf0000
   17318:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   1731c:	00000013          	nop
   17320:	1620e263          	bltu	ra,sp,17484 <fail>
   17324:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17328:	00200293          	li	t0,2
   1732c:	fe5210e3          	bne	tp,t0,1730c <test_13+0x8>

00017330 <test_14>:
   17330:	00e00e13          	li	t3,14
   17334:	00000213          	li	tp,0
   17338:	f00000b7          	lui	ra,0xf0000
   1733c:	00000013          	nop
   17340:	00000013          	nop
   17344:	f0000137          	lui	sp,0xf0000
   17348:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   1734c:	1220ec63          	bltu	ra,sp,17484 <fail>
   17350:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17354:	00200293          	li	t0,2
   17358:	fe5210e3          	bne	tp,t0,17338 <test_14+0x8>

0001735c <test_15>:
   1735c:	00f00e13          	li	t3,15
   17360:	00000213          	li	tp,0
   17364:	f00000b7          	lui	ra,0xf0000
   17368:	f0000137          	lui	sp,0xf0000
   1736c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17370:	1020ea63          	bltu	ra,sp,17484 <fail>
   17374:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17378:	00200293          	li	t0,2
   1737c:	fe5214e3          	bne	tp,t0,17364 <test_15+0x8>

00017380 <test_16>:
   17380:	01000e13          	li	t3,16
   17384:	00000213          	li	tp,0
   17388:	f00000b7          	lui	ra,0xf0000
   1738c:	f0000137          	lui	sp,0xf0000
   17390:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17394:	00000013          	nop
   17398:	0e20e663          	bltu	ra,sp,17484 <fail>
   1739c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   173a0:	00200293          	li	t0,2
   173a4:	fe5212e3          	bne	tp,t0,17388 <test_16+0x8>

000173a8 <test_17>:
   173a8:	01100e13          	li	t3,17
   173ac:	00000213          	li	tp,0
   173b0:	f00000b7          	lui	ra,0xf0000
   173b4:	f0000137          	lui	sp,0xf0000
   173b8:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   173bc:	00000013          	nop
   173c0:	00000013          	nop
   173c4:	0c20e063          	bltu	ra,sp,17484 <fail>
   173c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   173cc:	00200293          	li	t0,2
   173d0:	fe5210e3          	bne	tp,t0,173b0 <test_17+0x8>

000173d4 <test_18>:
   173d4:	01200e13          	li	t3,18
   173d8:	00000213          	li	tp,0
   173dc:	f00000b7          	lui	ra,0xf0000
   173e0:	00000013          	nop
   173e4:	f0000137          	lui	sp,0xf0000
   173e8:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   173ec:	0820ec63          	bltu	ra,sp,17484 <fail>
   173f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   173f4:	00200293          	li	t0,2
   173f8:	fe5212e3          	bne	tp,t0,173dc <test_18+0x8>

000173fc <test_19>:
   173fc:	01300e13          	li	t3,19
   17400:	00000213          	li	tp,0
   17404:	f00000b7          	lui	ra,0xf0000
   17408:	00000013          	nop
   1740c:	f0000137          	lui	sp,0xf0000
   17410:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17414:	00000013          	nop
   17418:	0620e663          	bltu	ra,sp,17484 <fail>
   1741c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17420:	00200293          	li	t0,2
   17424:	fe5210e3          	bne	tp,t0,17404 <test_19+0x8>

00017428 <test_20>:
   17428:	01400e13          	li	t3,20
   1742c:	00000213          	li	tp,0
   17430:	f00000b7          	lui	ra,0xf0000
   17434:	00000013          	nop
   17438:	00000013          	nop
   1743c:	f0000137          	lui	sp,0xf0000
   17440:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17444:	0420e063          	bltu	ra,sp,17484 <fail>
   17448:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1744c:	00200293          	li	t0,2
   17450:	fe5210e3          	bne	tp,t0,17430 <test_20+0x8>

00017454 <test_21>:
   17454:	00100093          	li	ra,1
   17458:	00106a63          	bltu	zero,ra,1746c <test_21+0x18>
   1745c:	00108093          	addi	ra,ra,1 # f0000001 <_edata+0x6fffff91>
   17460:	00108093          	addi	ra,ra,1
   17464:	00108093          	addi	ra,ra,1
   17468:	00108093          	addi	ra,ra,1
   1746c:	00108093          	addi	ra,ra,1
   17470:	00108093          	addi	ra,ra,1
   17474:	00300e93          	li	t4,3
   17478:	01500e13          	li	t3,21
   1747c:	01d09463          	bne	ra,t4,17484 <fail>
   17480:	05c01063          	bne	zero,t3,174c0 <pass>

00017484 <fail>:
   17484:	0ff00513          	li	a0,255

00017488 <.delay_fail>:
   17488:	fff50513          	addi	a0,a0,-1
   1748c:	fe051ee3          	bnez	a0,17488 <.delay_fail>
   17490:	02000537          	lui	a0,0x2000
   17494:	04500593          	li	a1,69
   17498:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1749c:	05200613          	li	a2,82
   174a0:	00c52023          	sw	a2,0(a0)
   174a4:	00c52023          	sw	a2,0(a0)
   174a8:	04f00693          	li	a3,79
   174ac:	00d52023          	sw	a3,0(a0)
   174b0:	00c52023          	sw	a2,0(a0)
   174b4:	02000713          	li	a4,32
   174b8:	00e52023          	sw	a4,0(a0)
   174bc:	c3df806f          	j	100f8 <bltu_ret>

000174c0 <pass>:
   174c0:	0ff00513          	li	a0,255

000174c4 <.delay_ok>:
   174c4:	fff50513          	addi	a0,a0,-1
   174c8:	fe051ee3          	bnez	a0,174c4 <.delay_ok>
   174cc:	02000537          	lui	a0,0x2000
   174d0:	04f00593          	li	a1,79
   174d4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   174d8:	04b00613          	li	a2,75
   174dc:	00c52023          	sw	a2,0(a0)
   174e0:	02000713          	li	a4,32
   174e4:	00e52023          	sw	a4,0(a0)
   174e8:	c11f806f          	j	100f8 <bltu_ret>

000174ec <remu>:
   174ec:	00008537          	lui	a0,0x8
   174f0:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   174f4:	00a00693          	li	a3,10
   174f8:	00100713          	li	a4,1

000174fc <.delay_pr>:
   174fc:	fff50513          	addi	a0,a0,-1
   17500:	fe051ee3          	bnez	a0,174fc <.delay_pr>
   17504:	00017537          	lui	a0,0x17
   17508:	52850513          	addi	a0,a0,1320 # 17528 <.test_name>
   1750c:	02000637          	lui	a2,0x2000

00017510 <.prname_next>:
   17510:	00050583          	lb	a1,0(a0)
   17514:	00058e63          	beqz	a1,17530 <.prname_done>
   17518:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   1751c:	00150513          	addi	a0,a0,1
   17520:	40e686b3          	sub	a3,a3,a4
   17524:	fedff06f          	j	17510 <.prname_next>

00017528 <.test_name>:
   17528:	6572                	flw	fa0,28(sp)
   1752a:	756d                	lui	a0,0xffffb
   1752c:	0000                	unimp
	...

00017530 <.prname_done>:
   17530:	02e00593          	li	a1,46

00017534 <.loop>:
   17534:	00b62023          	sw	a1,0(a2)
   17538:	40e686b3          	sub	a3,a3,a4
   1753c:	00068463          	beqz	a3,17544 <test_2>
   17540:	ff5ff0ef          	jal	ra,17534 <.loop>

00017544 <test_2>:
   17544:	01400093          	li	ra,20
   17548:	00600113          	li	sp,6
   1754c:	0220f1b3          	remu	gp,ra,sp
   17550:	00200e93          	li	t4,2
   17554:	00200e13          	li	t3,2
   17558:	0dd19463          	bne	gp,t4,17620 <fail>

0001755c <test_3>:
   1755c:	fec00093          	li	ra,-20
   17560:	00600113          	li	sp,6
   17564:	0220f1b3          	remu	gp,ra,sp
   17568:	00200e93          	li	t4,2
   1756c:	00300e13          	li	t3,3
   17570:	0bd19863          	bne	gp,t4,17620 <fail>

00017574 <test_4>:
   17574:	01400093          	li	ra,20
   17578:	ffa00113          	li	sp,-6
   1757c:	0220f1b3          	remu	gp,ra,sp
   17580:	01400e93          	li	t4,20
   17584:	00400e13          	li	t3,4
   17588:	09d19c63          	bne	gp,t4,17620 <fail>

0001758c <test_5>:
   1758c:	fec00093          	li	ra,-20
   17590:	ffa00113          	li	sp,-6
   17594:	0220f1b3          	remu	gp,ra,sp
   17598:	fec00e93          	li	t4,-20
   1759c:	00500e13          	li	t3,5
   175a0:	09d19063          	bne	gp,t4,17620 <fail>

000175a4 <test_6>:
   175a4:	800000b7          	lui	ra,0x80000
   175a8:	00100113          	li	sp,1
   175ac:	0220f1b3          	remu	gp,ra,sp
   175b0:	00000e93          	li	t4,0
   175b4:	00600e13          	li	t3,6
   175b8:	07d19463          	bne	gp,t4,17620 <fail>

000175bc <test_7>:
   175bc:	800000b7          	lui	ra,0x80000
   175c0:	fff00113          	li	sp,-1
   175c4:	0220f1b3          	remu	gp,ra,sp
   175c8:	80000eb7          	lui	t4,0x80000
   175cc:	00700e13          	li	t3,7
   175d0:	05d19863          	bne	gp,t4,17620 <fail>

000175d4 <test_8>:
   175d4:	800000b7          	lui	ra,0x80000
   175d8:	00000113          	li	sp,0
   175dc:	0220f1b3          	remu	gp,ra,sp
   175e0:	80000eb7          	lui	t4,0x80000
   175e4:	00800e13          	li	t3,8
   175e8:	03d19c63          	bne	gp,t4,17620 <fail>

000175ec <test_9>:
   175ec:	00100093          	li	ra,1
   175f0:	00000113          	li	sp,0
   175f4:	0220f1b3          	remu	gp,ra,sp
   175f8:	00100e93          	li	t4,1
   175fc:	00900e13          	li	t3,9
   17600:	03d19063          	bne	gp,t4,17620 <fail>

00017604 <test_10>:
   17604:	00000093          	li	ra,0
   17608:	00000113          	li	sp,0
   1760c:	0220f1b3          	remu	gp,ra,sp
   17610:	00000e93          	li	t4,0
   17614:	00a00e13          	li	t3,10
   17618:	01d19463          	bne	gp,t4,17620 <fail>
   1761c:	05c01063          	bne	zero,t3,1765c <pass>

00017620 <fail>:
   17620:	0ff00513          	li	a0,255

00017624 <.delay_fail>:
   17624:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   17628:	fe051ee3          	bnez	a0,17624 <.delay_fail>
   1762c:	02000537          	lui	a0,0x2000
   17630:	04500593          	li	a1,69
   17634:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   17638:	05200613          	li	a2,82
   1763c:	00c52023          	sw	a2,0(a0)
   17640:	00c52023          	sw	a2,0(a0)
   17644:	04f00693          	li	a3,79
   17648:	00d52023          	sw	a3,0(a0)
   1764c:	00c52023          	sw	a2,0(a0)
   17650:	02000713          	li	a4,32
   17654:	00e52023          	sw	a4,0(a0)
   17658:	b45f806f          	j	1019c <remu_ret>

0001765c <pass>:
   1765c:	0ff00513          	li	a0,255

00017660 <.delay_ok>:
   17660:	fff50513          	addi	a0,a0,-1
   17664:	fe051ee3          	bnez	a0,17660 <.delay_ok>
   17668:	02000537          	lui	a0,0x2000
   1766c:	04f00593          	li	a1,79
   17670:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   17674:	04b00613          	li	a2,75
   17678:	00c52023          	sw	a2,0(a0)
   1767c:	02000713          	li	a4,32
   17680:	00e52023          	sw	a4,0(a0)
   17684:	b19f806f          	j	1019c <remu_ret>

00017688 <simple>:
   17688:	00008537          	lui	a0,0x8
   1768c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   17690:	00a00693          	li	a3,10
   17694:	00100713          	li	a4,1

00017698 <.delay_pr>:
   17698:	fff50513          	addi	a0,a0,-1
   1769c:	fe051ee3          	bnez	a0,17698 <.delay_pr>
   176a0:	00017537          	lui	a0,0x17
   176a4:	6c450513          	addi	a0,a0,1732 # 176c4 <.test_name>
   176a8:	02000637          	lui	a2,0x2000

000176ac <.prname_next>:
   176ac:	00050583          	lb	a1,0(a0)
   176b0:	00058e63          	beqz	a1,176cc <.prname_done>
   176b4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   176b8:	00150513          	addi	a0,a0,1
   176bc:	40e686b3          	sub	a3,a3,a4
   176c0:	fedff06f          	j	176ac <.prname_next>

000176c4 <.test_name>:
   176c4:	706d6973          	csrrsi	s2,0x706,26
   176c8:	656c                	flw	fa1,76(a0)
	...

000176cc <.prname_done>:
   176cc:	02e00593          	li	a1,46

000176d0 <.loop>:
   176d0:	00b62023          	sw	a1,0(a2)
   176d4:	40e686b3          	sub	a3,a3,a4
   176d8:	00068463          	beqz	a3,176e0 <.endloop>
   176dc:	ff5ff0ef          	jal	ra,176d0 <.loop>

000176e0 <.endloop>:
   176e0:	0ff00513          	li	a0,255

000176e4 <.delay_ok>:
   176e4:	fff50513          	addi	a0,a0,-1
   176e8:	fe051ee3          	bnez	a0,176e4 <.delay_ok>
   176ec:	02000537          	lui	a0,0x2000
   176f0:	04f00593          	li	a1,79
   176f4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   176f8:	04b00613          	li	a2,75
   176fc:	00c52023          	sw	a2,0(a0)
   17700:	02000713          	li	a4,32
   17704:	00e52023          	sw	a4,0(a0)
   17708:	a99f806f          	j	101a0 <simple_ret>

0001770c <slli>:
   1770c:	00008537          	lui	a0,0x8
   17710:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   17714:	00a00693          	li	a3,10
   17718:	00100713          	li	a4,1

0001771c <.delay_pr>:
   1771c:	fff50513          	addi	a0,a0,-1
   17720:	fe051ee3          	bnez	a0,1771c <.delay_pr>
   17724:	00017537          	lui	a0,0x17
   17728:	74850513          	addi	a0,a0,1864 # 17748 <.test_name>
   1772c:	02000637          	lui	a2,0x2000

00017730 <.prname_next>:
   17730:	00050583          	lb	a1,0(a0)
   17734:	00058e63          	beqz	a1,17750 <.prname_done>
   17738:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   1773c:	00150513          	addi	a0,a0,1
   17740:	40e686b3          	sub	a3,a3,a4
   17744:	fedff06f          	j	17730 <.prname_next>

00017748 <.test_name>:
   17748:	696c6c73          	csrrsi	s8,0x696,24
   1774c:	0000                	unimp
	...

00017750 <.prname_done>:
   17750:	02e00593          	li	a1,46

00017754 <.loop>:
   17754:	00b62023          	sw	a1,0(a2)
   17758:	40e686b3          	sub	a3,a3,a4
   1775c:	00068463          	beqz	a3,17764 <test_2>
   17760:	ff5ff0ef          	jal	ra,17754 <.loop>

00017764 <test_2>:
   17764:	00100093          	li	ra,1
   17768:	00009193          	slli	gp,ra,0x0
   1776c:	00100e93          	li	t4,1
   17770:	00200e13          	li	t3,2
   17774:	27d19a63          	bne	gp,t4,179e8 <fail>

00017778 <test_3>:
   17778:	00100093          	li	ra,1
   1777c:	00109193          	slli	gp,ra,0x1
   17780:	00200e93          	li	t4,2
   17784:	00300e13          	li	t3,3
   17788:	27d19063          	bne	gp,t4,179e8 <fail>

0001778c <test_4>:
   1778c:	00100093          	li	ra,1
   17790:	00709193          	slli	gp,ra,0x7
   17794:	08000e93          	li	t4,128
   17798:	00400e13          	li	t3,4
   1779c:	25d19663          	bne	gp,t4,179e8 <fail>

000177a0 <test_5>:
   177a0:	00100093          	li	ra,1
   177a4:	00e09193          	slli	gp,ra,0xe
   177a8:	00004eb7          	lui	t4,0x4
   177ac:	00500e13          	li	t3,5
   177b0:	23d19c63          	bne	gp,t4,179e8 <fail>

000177b4 <test_6>:
   177b4:	00100093          	li	ra,1
   177b8:	01f09193          	slli	gp,ra,0x1f
   177bc:	80000eb7          	lui	t4,0x80000
   177c0:	00600e13          	li	t3,6
   177c4:	23d19263          	bne	gp,t4,179e8 <fail>

000177c8 <test_7>:
   177c8:	fff00093          	li	ra,-1
   177cc:	00009193          	slli	gp,ra,0x0
   177d0:	fff00e93          	li	t4,-1
   177d4:	00700e13          	li	t3,7
   177d8:	21d19863          	bne	gp,t4,179e8 <fail>

000177dc <test_8>:
   177dc:	fff00093          	li	ra,-1
   177e0:	00109193          	slli	gp,ra,0x1
   177e4:	ffe00e93          	li	t4,-2
   177e8:	00800e13          	li	t3,8
   177ec:	1fd19e63          	bne	gp,t4,179e8 <fail>

000177f0 <test_9>:
   177f0:	fff00093          	li	ra,-1
   177f4:	00709193          	slli	gp,ra,0x7
   177f8:	f8000e93          	li	t4,-128
   177fc:	00900e13          	li	t3,9
   17800:	1fd19463          	bne	gp,t4,179e8 <fail>

00017804 <test_10>:
   17804:	fff00093          	li	ra,-1
   17808:	00e09193          	slli	gp,ra,0xe
   1780c:	ffffceb7          	lui	t4,0xffffc
   17810:	00a00e13          	li	t3,10
   17814:	1dd19a63          	bne	gp,t4,179e8 <fail>

00017818 <test_11>:
   17818:	fff00093          	li	ra,-1
   1781c:	01f09193          	slli	gp,ra,0x1f
   17820:	80000eb7          	lui	t4,0x80000
   17824:	00b00e13          	li	t3,11
   17828:	1dd19063          	bne	gp,t4,179e8 <fail>

0001782c <test_12>:
   1782c:	212120b7          	lui	ra,0x21212
   17830:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   17834:	00009193          	slli	gp,ra,0x0
   17838:	21212eb7          	lui	t4,0x21212
   1783c:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f79b9>
   17840:	00c00e13          	li	t3,12
   17844:	1bd19263          	bne	gp,t4,179e8 <fail>

00017848 <test_13>:
   17848:	212120b7          	lui	ra,0x21212
   1784c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   17850:	00109193          	slli	gp,ra,0x1
   17854:	42424eb7          	lui	t4,0x42424
   17858:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409ada>
   1785c:	00d00e13          	li	t3,13
   17860:	19d19463          	bne	gp,t4,179e8 <fail>

00017864 <test_14>:
   17864:	212120b7          	lui	ra,0x21212
   17868:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   1786c:	00709193          	slli	gp,ra,0x7
   17870:	90909eb7          	lui	t4,0x90909
   17874:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   17878:	00e00e13          	li	t3,14
   1787c:	17d19663          	bne	gp,t4,179e8 <fail>

00017880 <test_15>:
   17880:	212120b7          	lui	ra,0x21212
   17884:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   17888:	00e09193          	slli	gp,ra,0xe
   1788c:	48484eb7          	lui	t4,0x48484
   17890:	00f00e13          	li	t3,15
   17894:	15d19a63          	bne	gp,t4,179e8 <fail>

00017898 <test_16>:
   17898:	212120b7          	lui	ra,0x21212
   1789c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   178a0:	01f09193          	slli	gp,ra,0x1f
   178a4:	80000eb7          	lui	t4,0x80000
   178a8:	01000e13          	li	t3,16
   178ac:	13d19e63          	bne	gp,t4,179e8 <fail>

000178b0 <test_17>:
   178b0:	00100093          	li	ra,1
   178b4:	00709093          	slli	ra,ra,0x7
   178b8:	08000e93          	li	t4,128
   178bc:	01100e13          	li	t3,17
   178c0:	13d09463          	bne	ra,t4,179e8 <fail>

000178c4 <test_18>:
   178c4:	00000213          	li	tp,0
   178c8:	00100093          	li	ra,1
   178cc:	00709193          	slli	gp,ra,0x7
   178d0:	00018313          	mv	t1,gp
   178d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   178d8:	00200293          	li	t0,2
   178dc:	fe5216e3          	bne	tp,t0,178c8 <test_18+0x4>
   178e0:	08000e93          	li	t4,128
   178e4:	01200e13          	li	t3,18
   178e8:	11d31063          	bne	t1,t4,179e8 <fail>

000178ec <test_19>:
   178ec:	00000213          	li	tp,0
   178f0:	00100093          	li	ra,1
   178f4:	00e09193          	slli	gp,ra,0xe
   178f8:	00000013          	nop
   178fc:	00018313          	mv	t1,gp
   17900:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17904:	00200293          	li	t0,2
   17908:	fe5214e3          	bne	tp,t0,178f0 <test_19+0x4>
   1790c:	00004eb7          	lui	t4,0x4
   17910:	01300e13          	li	t3,19
   17914:	0dd31a63          	bne	t1,t4,179e8 <fail>

00017918 <test_20>:
   17918:	00000213          	li	tp,0
   1791c:	00100093          	li	ra,1
   17920:	01f09193          	slli	gp,ra,0x1f
   17924:	00000013          	nop
   17928:	00000013          	nop
   1792c:	00018313          	mv	t1,gp
   17930:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17934:	00200293          	li	t0,2
   17938:	fe5212e3          	bne	tp,t0,1791c <test_20+0x4>
   1793c:	80000eb7          	lui	t4,0x80000
   17940:	01400e13          	li	t3,20
   17944:	0bd31263          	bne	t1,t4,179e8 <fail>

00017948 <test_21>:
   17948:	00000213          	li	tp,0
   1794c:	00100093          	li	ra,1
   17950:	00709193          	slli	gp,ra,0x7
   17954:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17958:	00200293          	li	t0,2
   1795c:	fe5218e3          	bne	tp,t0,1794c <test_21+0x4>
   17960:	08000e93          	li	t4,128
   17964:	01500e13          	li	t3,21
   17968:	09d19063          	bne	gp,t4,179e8 <fail>

0001796c <test_22>:
   1796c:	00000213          	li	tp,0
   17970:	00100093          	li	ra,1
   17974:	00000013          	nop
   17978:	00e09193          	slli	gp,ra,0xe
   1797c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17980:	00200293          	li	t0,2
   17984:	fe5216e3          	bne	tp,t0,17970 <test_22+0x4>
   17988:	00004eb7          	lui	t4,0x4
   1798c:	01600e13          	li	t3,22
   17990:	05d19c63          	bne	gp,t4,179e8 <fail>

00017994 <test_23>:
   17994:	00000213          	li	tp,0
   17998:	00100093          	li	ra,1
   1799c:	00000013          	nop
   179a0:	00000013          	nop
   179a4:	01f09193          	slli	gp,ra,0x1f
   179a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   179ac:	00200293          	li	t0,2
   179b0:	fe5214e3          	bne	tp,t0,17998 <test_23+0x4>
   179b4:	80000eb7          	lui	t4,0x80000
   179b8:	01700e13          	li	t3,23
   179bc:	03d19663          	bne	gp,t4,179e8 <fail>

000179c0 <test_24>:
   179c0:	01f01093          	slli	ra,zero,0x1f
   179c4:	00000e93          	li	t4,0
   179c8:	01800e13          	li	t3,24
   179cc:	01d09e63          	bne	ra,t4,179e8 <fail>

000179d0 <test_25>:
   179d0:	02100093          	li	ra,33
   179d4:	01409013          	slli	zero,ra,0x14
   179d8:	00000e93          	li	t4,0
   179dc:	01900e13          	li	t3,25
   179e0:	01d01463          	bne	zero,t4,179e8 <fail>
   179e4:	05c01063          	bne	zero,t3,17a24 <pass>

000179e8 <fail>:
   179e8:	0ff00513          	li	a0,255

000179ec <.delay_fail>:
   179ec:	fff50513          	addi	a0,a0,-1
   179f0:	fe051ee3          	bnez	a0,179ec <.delay_fail>
   179f4:	02000537          	lui	a0,0x2000
   179f8:	04500593          	li	a1,69
   179fc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   17a00:	05200613          	li	a2,82
   17a04:	00c52023          	sw	a2,0(a0)
   17a08:	00c52023          	sw	a2,0(a0)
   17a0c:	04f00693          	li	a3,79
   17a10:	00d52023          	sw	a3,0(a0)
   17a14:	00c52023          	sw	a2,0(a0)
   17a18:	02000713          	li	a4,32
   17a1c:	00e52023          	sw	a4,0(a0)
   17a20:	f20f806f          	j	10140 <slli_ret>

00017a24 <pass>:
   17a24:	0ff00513          	li	a0,255

00017a28 <.delay_ok>:
   17a28:	fff50513          	addi	a0,a0,-1
   17a2c:	fe051ee3          	bnez	a0,17a28 <.delay_ok>
   17a30:	02000537          	lui	a0,0x2000
   17a34:	04f00593          	li	a1,79
   17a38:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   17a3c:	04b00613          	li	a2,75
   17a40:	00c52023          	sw	a2,0(a0)
   17a44:	02000713          	li	a4,32
   17a48:	00e52023          	sw	a4,0(a0)
   17a4c:	ef4f806f          	j	10140 <slli_ret>

00017a50 <and>:
   17a50:	00008537          	lui	a0,0x8
   17a54:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   17a58:	00a00693          	li	a3,10
   17a5c:	00100713          	li	a4,1

00017a60 <.delay_pr>:
   17a60:	fff50513          	addi	a0,a0,-1
   17a64:	fe051ee3          	bnez	a0,17a60 <.delay_pr>
   17a68:	00018537          	lui	a0,0x18
   17a6c:	a8c50513          	addi	a0,a0,-1396 # 17a8c <.test_name>
   17a70:	02000637          	lui	a2,0x2000

00017a74 <.prname_next>:
   17a74:	00050583          	lb	a1,0(a0)
   17a78:	00058c63          	beqz	a1,17a90 <.prname_done>
   17a7c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   17a80:	00150513          	addi	a0,a0,1
   17a84:	40e686b3          	sub	a3,a3,a4
   17a88:	fedff06f          	j	17a74 <.prname_next>

00017a8c <.test_name>:
   17a8c:	6e61                	lui	t3,0x18
   17a8e:	0064                	addi	s1,sp,12

00017a90 <.prname_done>:
   17a90:	02e00593          	li	a1,46

00017a94 <.loop>:
   17a94:	00b62023          	sw	a1,0(a2)
   17a98:	40e686b3          	sub	a3,a3,a4
   17a9c:	00068463          	beqz	a3,17aa4 <test_2>
   17aa0:	ff5ff0ef          	jal	ra,17a94 <.loop>

00017aa4 <test_2>:
   17aa4:	ff0100b7          	lui	ra,0xff010
   17aa8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17aac:	0f0f1137          	lui	sp,0xf0f1
   17ab0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17ab4:	0020f1b3          	and	gp,ra,sp
   17ab8:	0f001eb7          	lui	t4,0xf001
   17abc:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6798>
   17ac0:	00200e13          	li	t3,2
   17ac4:	49d19c63          	bne	gp,t4,17f5c <fail>

00017ac8 <test_3>:
   17ac8:	0ff010b7          	lui	ra,0xff01
   17acc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   17ad0:	f0f0f137          	lui	sp,0xf0f0f
   17ad4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17ad8:	0020f1b3          	and	gp,ra,sp
   17adc:	00f00eb7          	lui	t4,0xf00
   17ae0:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5988>
   17ae4:	00300e13          	li	t3,3
   17ae8:	47d19a63          	bne	gp,t4,17f5c <fail>

00017aec <test_4>:
   17aec:	00ff00b7          	lui	ra,0xff0
   17af0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   17af4:	0f0f1137          	lui	sp,0xf0f1
   17af8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17afc:	0020f1b3          	and	gp,ra,sp
   17b00:	000f0eb7          	lui	t4,0xf0
   17b04:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd58a7>
   17b08:	00400e13          	li	t3,4
   17b0c:	45d19863          	bne	gp,t4,17f5c <fail>

00017b10 <test_5>:
   17b10:	f00ff0b7          	lui	ra,0xf00ff
   17b14:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   17b18:	f0f0f137          	lui	sp,0xf0f0f
   17b1c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17b20:	0020f1b3          	and	gp,ra,sp
   17b24:	f000feb7          	lui	t4,0xf000f
   17b28:	00500e13          	li	t3,5
   17b2c:	43d19863          	bne	gp,t4,17f5c <fail>

00017b30 <test_6>:
   17b30:	ff0100b7          	lui	ra,0xff010
   17b34:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17b38:	0f0f1137          	lui	sp,0xf0f1
   17b3c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17b40:	0020f0b3          	and	ra,ra,sp
   17b44:	0f001eb7          	lui	t4,0xf001
   17b48:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6798>
   17b4c:	00600e13          	li	t3,6
   17b50:	41d09663          	bne	ra,t4,17f5c <fail>

00017b54 <test_7>:
   17b54:	0ff010b7          	lui	ra,0xff01
   17b58:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   17b5c:	f0f0f137          	lui	sp,0xf0f0f
   17b60:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17b64:	0020f133          	and	sp,ra,sp
   17b68:	00f00eb7          	lui	t4,0xf00
   17b6c:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5988>
   17b70:	00700e13          	li	t3,7
   17b74:	3fd11463          	bne	sp,t4,17f5c <fail>

00017b78 <test_8>:
   17b78:	ff0100b7          	lui	ra,0xff010
   17b7c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17b80:	0010f0b3          	and	ra,ra,ra
   17b84:	ff010eb7          	lui	t4,0xff010
   17b88:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   17b8c:	00800e13          	li	t3,8
   17b90:	3dd09663          	bne	ra,t4,17f5c <fail>

00017b94 <test_9>:
   17b94:	00000213          	li	tp,0
   17b98:	ff0100b7          	lui	ra,0xff010
   17b9c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17ba0:	0f0f1137          	lui	sp,0xf0f1
   17ba4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17ba8:	0020f1b3          	and	gp,ra,sp
   17bac:	00018313          	mv	t1,gp
   17bb0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bb4:	00200293          	li	t0,2
   17bb8:	fe5210e3          	bne	tp,t0,17b98 <test_9+0x4>
   17bbc:	0f001eb7          	lui	t4,0xf001
   17bc0:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6798>
   17bc4:	00900e13          	li	t3,9
   17bc8:	39d31a63          	bne	t1,t4,17f5c <fail>

00017bcc <test_10>:
   17bcc:	00000213          	li	tp,0
   17bd0:	0ff010b7          	lui	ra,0xff01
   17bd4:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   17bd8:	f0f0f137          	lui	sp,0xf0f0f
   17bdc:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17be0:	0020f1b3          	and	gp,ra,sp
   17be4:	00000013          	nop
   17be8:	00018313          	mv	t1,gp
   17bec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bf0:	00200293          	li	t0,2
   17bf4:	fc521ee3          	bne	tp,t0,17bd0 <test_10+0x4>
   17bf8:	00f00eb7          	lui	t4,0xf00
   17bfc:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5988>
   17c00:	00a00e13          	li	t3,10
   17c04:	35d31c63          	bne	t1,t4,17f5c <fail>

00017c08 <test_11>:
   17c08:	00000213          	li	tp,0
   17c0c:	00ff00b7          	lui	ra,0xff0
   17c10:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   17c14:	0f0f1137          	lui	sp,0xf0f1
   17c18:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17c1c:	0020f1b3          	and	gp,ra,sp
   17c20:	00000013          	nop
   17c24:	00000013          	nop
   17c28:	00018313          	mv	t1,gp
   17c2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c30:	00200293          	li	t0,2
   17c34:	fc521ce3          	bne	tp,t0,17c0c <test_11+0x4>
   17c38:	000f0eb7          	lui	t4,0xf0
   17c3c:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd58a7>
   17c40:	00b00e13          	li	t3,11
   17c44:	31d31c63          	bne	t1,t4,17f5c <fail>

00017c48 <test_12>:
   17c48:	00000213          	li	tp,0
   17c4c:	ff0100b7          	lui	ra,0xff010
   17c50:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17c54:	0f0f1137          	lui	sp,0xf0f1
   17c58:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17c5c:	0020f1b3          	and	gp,ra,sp
   17c60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c64:	00200293          	li	t0,2
   17c68:	fe5212e3          	bne	tp,t0,17c4c <test_12+0x4>
   17c6c:	0f001eb7          	lui	t4,0xf001
   17c70:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6798>
   17c74:	00c00e13          	li	t3,12
   17c78:	2fd19263          	bne	gp,t4,17f5c <fail>

00017c7c <test_13>:
   17c7c:	00000213          	li	tp,0
   17c80:	0ff010b7          	lui	ra,0xff01
   17c84:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   17c88:	f0f0f137          	lui	sp,0xf0f0f
   17c8c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17c90:	00000013          	nop
   17c94:	0020f1b3          	and	gp,ra,sp
   17c98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c9c:	00200293          	li	t0,2
   17ca0:	fe5210e3          	bne	tp,t0,17c80 <test_13+0x4>
   17ca4:	00f00eb7          	lui	t4,0xf00
   17ca8:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5988>
   17cac:	00d00e13          	li	t3,13
   17cb0:	2bd19663          	bne	gp,t4,17f5c <fail>

00017cb4 <test_14>:
   17cb4:	00000213          	li	tp,0
   17cb8:	00ff00b7          	lui	ra,0xff0
   17cbc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   17cc0:	0f0f1137          	lui	sp,0xf0f1
   17cc4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17cc8:	00000013          	nop
   17ccc:	00000013          	nop
   17cd0:	0020f1b3          	and	gp,ra,sp
   17cd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17cd8:	00200293          	li	t0,2
   17cdc:	fc521ee3          	bne	tp,t0,17cb8 <test_14+0x4>
   17ce0:	000f0eb7          	lui	t4,0xf0
   17ce4:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd58a7>
   17ce8:	00e00e13          	li	t3,14
   17cec:	27d19863          	bne	gp,t4,17f5c <fail>

00017cf0 <test_15>:
   17cf0:	00000213          	li	tp,0
   17cf4:	ff0100b7          	lui	ra,0xff010
   17cf8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17cfc:	00000013          	nop
   17d00:	0f0f1137          	lui	sp,0xf0f1
   17d04:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17d08:	0020f1b3          	and	gp,ra,sp
   17d0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d10:	00200293          	li	t0,2
   17d14:	fe5210e3          	bne	tp,t0,17cf4 <test_15+0x4>
   17d18:	0f001eb7          	lui	t4,0xf001
   17d1c:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6798>
   17d20:	00f00e13          	li	t3,15
   17d24:	23d19c63          	bne	gp,t4,17f5c <fail>

00017d28 <test_16>:
   17d28:	00000213          	li	tp,0
   17d2c:	0ff010b7          	lui	ra,0xff01
   17d30:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   17d34:	00000013          	nop
   17d38:	f0f0f137          	lui	sp,0xf0f0f
   17d3c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17d40:	00000013          	nop
   17d44:	0020f1b3          	and	gp,ra,sp
   17d48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d4c:	00200293          	li	t0,2
   17d50:	fc521ee3          	bne	tp,t0,17d2c <test_16+0x4>
   17d54:	00f00eb7          	lui	t4,0xf00
   17d58:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5988>
   17d5c:	01000e13          	li	t3,16
   17d60:	1fd19e63          	bne	gp,t4,17f5c <fail>

00017d64 <test_17>:
   17d64:	00000213          	li	tp,0
   17d68:	00ff00b7          	lui	ra,0xff0
   17d6c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   17d70:	00000013          	nop
   17d74:	00000013          	nop
   17d78:	0f0f1137          	lui	sp,0xf0f1
   17d7c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17d80:	0020f1b3          	and	gp,ra,sp
   17d84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d88:	00200293          	li	t0,2
   17d8c:	fc521ee3          	bne	tp,t0,17d68 <test_17+0x4>
   17d90:	000f0eb7          	lui	t4,0xf0
   17d94:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd58a7>
   17d98:	01100e13          	li	t3,17
   17d9c:	1dd19063          	bne	gp,t4,17f5c <fail>

00017da0 <test_18>:
   17da0:	00000213          	li	tp,0
   17da4:	0f0f1137          	lui	sp,0xf0f1
   17da8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17dac:	ff0100b7          	lui	ra,0xff010
   17db0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17db4:	0020f1b3          	and	gp,ra,sp
   17db8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17dbc:	00200293          	li	t0,2
   17dc0:	fe5212e3          	bne	tp,t0,17da4 <test_18+0x4>
   17dc4:	0f001eb7          	lui	t4,0xf001
   17dc8:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6798>
   17dcc:	01200e13          	li	t3,18
   17dd0:	19d19663          	bne	gp,t4,17f5c <fail>

00017dd4 <test_19>:
   17dd4:	00000213          	li	tp,0
   17dd8:	f0f0f137          	lui	sp,0xf0f0f
   17ddc:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17de0:	0ff010b7          	lui	ra,0xff01
   17de4:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   17de8:	00000013          	nop
   17dec:	0020f1b3          	and	gp,ra,sp
   17df0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17df4:	00200293          	li	t0,2
   17df8:	fe5210e3          	bne	tp,t0,17dd8 <test_19+0x4>
   17dfc:	00f00eb7          	lui	t4,0xf00
   17e00:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5988>
   17e04:	01300e13          	li	t3,19
   17e08:	15d19a63          	bne	gp,t4,17f5c <fail>

00017e0c <test_20>:
   17e0c:	00000213          	li	tp,0
   17e10:	0f0f1137          	lui	sp,0xf0f1
   17e14:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17e18:	00ff00b7          	lui	ra,0xff0
   17e1c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   17e20:	00000013          	nop
   17e24:	00000013          	nop
   17e28:	0020f1b3          	and	gp,ra,sp
   17e2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17e30:	00200293          	li	t0,2
   17e34:	fc521ee3          	bne	tp,t0,17e10 <test_20+0x4>
   17e38:	000f0eb7          	lui	t4,0xf0
   17e3c:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd58a7>
   17e40:	01400e13          	li	t3,20
   17e44:	11d19c63          	bne	gp,t4,17f5c <fail>

00017e48 <test_21>:
   17e48:	00000213          	li	tp,0
   17e4c:	0f0f1137          	lui	sp,0xf0f1
   17e50:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17e54:	00000013          	nop
   17e58:	ff0100b7          	lui	ra,0xff010
   17e5c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17e60:	0020f1b3          	and	gp,ra,sp
   17e64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17e68:	00200293          	li	t0,2
   17e6c:	fe5210e3          	bne	tp,t0,17e4c <test_21+0x4>
   17e70:	0f001eb7          	lui	t4,0xf001
   17e74:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6798>
   17e78:	01500e13          	li	t3,21
   17e7c:	0fd19063          	bne	gp,t4,17f5c <fail>

00017e80 <test_22>:
   17e80:	00000213          	li	tp,0
   17e84:	f0f0f137          	lui	sp,0xf0f0f
   17e88:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17e8c:	00000013          	nop
   17e90:	0ff010b7          	lui	ra,0xff01
   17e94:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   17e98:	00000013          	nop
   17e9c:	0020f1b3          	and	gp,ra,sp
   17ea0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17ea4:	00200293          	li	t0,2
   17ea8:	fc521ee3          	bne	tp,t0,17e84 <test_22+0x4>
   17eac:	00f00eb7          	lui	t4,0xf00
   17eb0:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5988>
   17eb4:	01600e13          	li	t3,22
   17eb8:	0bd19263          	bne	gp,t4,17f5c <fail>

00017ebc <test_23>:
   17ebc:	00000213          	li	tp,0
   17ec0:	0f0f1137          	lui	sp,0xf0f1
   17ec4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d67a7>
   17ec8:	00000013          	nop
   17ecc:	00000013          	nop
   17ed0:	00ff00b7          	lui	ra,0xff0
   17ed4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   17ed8:	0020f1b3          	and	gp,ra,sp
   17edc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17ee0:	00200293          	li	t0,2
   17ee4:	fc521ee3          	bne	tp,t0,17ec0 <test_23+0x4>
   17ee8:	000f0eb7          	lui	t4,0xf0
   17eec:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd58a7>
   17ef0:	01700e13          	li	t3,23
   17ef4:	07d19463          	bne	gp,t4,17f5c <fail>

00017ef8 <test_24>:
   17ef8:	ff0100b7          	lui	ra,0xff010
   17efc:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17f00:	00107133          	and	sp,zero,ra
   17f04:	00000e93          	li	t4,0
   17f08:	01800e13          	li	t3,24
   17f0c:	05d11863          	bne	sp,t4,17f5c <fail>

00017f10 <test_25>:
   17f10:	00ff00b7          	lui	ra,0xff0
   17f14:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   17f18:	0000f133          	and	sp,ra,zero
   17f1c:	00000e93          	li	t4,0
   17f20:	01900e13          	li	t3,25
   17f24:	03d11c63          	bne	sp,t4,17f5c <fail>

00017f28 <test_26>:
   17f28:	000070b3          	and	ra,zero,zero
   17f2c:	00000e93          	li	t4,0
   17f30:	01a00e13          	li	t3,26
   17f34:	03d09463          	bne	ra,t4,17f5c <fail>

00017f38 <test_27>:
   17f38:	111110b7          	lui	ra,0x11111
   17f3c:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f69a9>
   17f40:	22222137          	lui	sp,0x22222
   17f44:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207aba>
   17f48:	0020f033          	and	zero,ra,sp
   17f4c:	00000e93          	li	t4,0
   17f50:	01b00e13          	li	t3,27
   17f54:	01d01463          	bne	zero,t4,17f5c <fail>
   17f58:	05c01063          	bne	zero,t3,17f98 <pass>

00017f5c <fail>:
   17f5c:	0ff00513          	li	a0,255

00017f60 <.delay_fail>:
   17f60:	fff50513          	addi	a0,a0,-1
   17f64:	fe051ee3          	bnez	a0,17f60 <.delay_fail>
   17f68:	02000537          	lui	a0,0x2000
   17f6c:	04500593          	li	a1,69
   17f70:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   17f74:	05200613          	li	a2,82
   17f78:	00c52023          	sw	a2,0(a0)
   17f7c:	00c52023          	sw	a2,0(a0)
   17f80:	04f00693          	li	a3,79
   17f84:	00d52023          	sw	a3,0(a0)
   17f88:	00c52023          	sw	a2,0(a0)
   17f8c:	02000713          	li	a4,32
   17f90:	00e52023          	sw	a4,0(a0)
   17f94:	9e4f806f          	j	10178 <and_ret>

00017f98 <pass>:
   17f98:	0ff00513          	li	a0,255

00017f9c <.delay_ok>:
   17f9c:	fff50513          	addi	a0,a0,-1
   17fa0:	fe051ee3          	bnez	a0,17f9c <.delay_ok>
   17fa4:	02000537          	lui	a0,0x2000
   17fa8:	04f00593          	li	a1,79
   17fac:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   17fb0:	04b00613          	li	a2,75
   17fb4:	00c52023          	sw	a2,0(a0)
   17fb8:	02000713          	li	a4,32
   17fbc:	00e52023          	sw	a4,0(a0)
   17fc0:	9b8f806f          	j	10178 <and_ret>

00017fc4 <ori>:
   17fc4:	00008537          	lui	a0,0x8
   17fc8:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   17fcc:	00a00693          	li	a3,10
   17fd0:	00100713          	li	a4,1

00017fd4 <.delay_pr>:
   17fd4:	fff50513          	addi	a0,a0,-1
   17fd8:	fe051ee3          	bnez	a0,17fd4 <.delay_pr>
   17fdc:	00018537          	lui	a0,0x18
   17fe0:	00050513          	mv	a0,a0
   17fe4:	02000637          	lui	a2,0x2000

00017fe8 <.prname_next>:
   17fe8:	00050583          	lb	a1,0(a0) # 18000 <.test_name>
   17fec:	00058c63          	beqz	a1,18004 <.prname_done>
   17ff0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   17ff4:	00150513          	addi	a0,a0,1
   17ff8:	40e686b3          	sub	a3,a3,a4
   17ffc:	fedff06f          	j	17fe8 <.prname_next>

00018000 <.test_name>:
   18000:	0069726f          	jal	tp,af006 <_etext+0x9489e>

00018004 <.prname_done>:
   18004:	02e00593          	li	a1,46

00018008 <.loop>:
   18008:	00b62023          	sw	a1,0(a2)
   1800c:	40e686b3          	sub	a3,a3,a4
   18010:	00068463          	beqz	a3,18018 <test_2>
   18014:	ff5ff0ef          	jal	ra,18008 <.loop>

00018018 <test_2>:
   18018:	ff0100b7          	lui	ra,0xff010
   1801c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   18020:	f0f0e193          	ori	gp,ra,-241
   18024:	f0f00e93          	li	t4,-241
   18028:	00200e13          	li	t3,2
   1802c:	1dd19463          	bne	gp,t4,181f4 <fail>

00018030 <test_3>:
   18030:	0ff010b7          	lui	ra,0xff01
   18034:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   18038:	0f00e193          	ori	gp,ra,240
   1803c:	0ff01eb7          	lui	t4,0xff01
   18040:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   18044:	00300e13          	li	t3,3
   18048:	1bd19663          	bne	gp,t4,181f4 <fail>

0001804c <test_4>:
   1804c:	00ff00b7          	lui	ra,0xff0
   18050:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   18054:	70f0e193          	ori	gp,ra,1807
   18058:	00ff0eb7          	lui	t4,0xff0
   1805c:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd6097>
   18060:	00400e13          	li	t3,4
   18064:	19d19863          	bne	gp,t4,181f4 <fail>

00018068 <test_5>:
   18068:	f00ff0b7          	lui	ra,0xf00ff
   1806c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   18070:	0f00e193          	ori	gp,ra,240
   18074:	f00ffeb7          	lui	t4,0xf00ff
   18078:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   1807c:	00500e13          	li	t3,5
   18080:	17d19a63          	bne	gp,t4,181f4 <fail>

00018084 <test_6>:
   18084:	ff0100b7          	lui	ra,0xff010
   18088:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1808c:	0f00e093          	ori	ra,ra,240
   18090:	ff010eb7          	lui	t4,0xff010
   18094:	ff0e8e93          	addi	t4,t4,-16 # ff00fff0 <_edata+0x7f00ff80>
   18098:	00600e13          	li	t3,6
   1809c:	15d09c63          	bne	ra,t4,181f4 <fail>

000180a0 <test_7>:
   180a0:	00000213          	li	tp,0
   180a4:	0ff010b7          	lui	ra,0xff01
   180a8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   180ac:	0f00e193          	ori	gp,ra,240
   180b0:	00018313          	mv	t1,gp
   180b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   180b8:	00200293          	li	t0,2
   180bc:	fe5214e3          	bne	tp,t0,180a4 <test_7+0x4>
   180c0:	0ff01eb7          	lui	t4,0xff01
   180c4:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   180c8:	00700e13          	li	t3,7
   180cc:	13d31463          	bne	t1,t4,181f4 <fail>

000180d0 <test_8>:
   180d0:	00000213          	li	tp,0
   180d4:	00ff00b7          	lui	ra,0xff0
   180d8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   180dc:	70f0e193          	ori	gp,ra,1807
   180e0:	00000013          	nop
   180e4:	00018313          	mv	t1,gp
   180e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   180ec:	00200293          	li	t0,2
   180f0:	fe5212e3          	bne	tp,t0,180d4 <test_8+0x4>
   180f4:	00ff0eb7          	lui	t4,0xff0
   180f8:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd6097>
   180fc:	00800e13          	li	t3,8
   18100:	0fd31a63          	bne	t1,t4,181f4 <fail>

00018104 <test_9>:
   18104:	00000213          	li	tp,0
   18108:	f00ff0b7          	lui	ra,0xf00ff
   1810c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   18110:	0f00e193          	ori	gp,ra,240
   18114:	00000013          	nop
   18118:	00000013          	nop
   1811c:	00018313          	mv	t1,gp
   18120:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18124:	00200293          	li	t0,2
   18128:	fe5210e3          	bne	tp,t0,18108 <test_9+0x4>
   1812c:	f00ffeb7          	lui	t4,0xf00ff
   18130:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   18134:	00900e13          	li	t3,9
   18138:	0bd31e63          	bne	t1,t4,181f4 <fail>

0001813c <test_10>:
   1813c:	00000213          	li	tp,0
   18140:	0ff010b7          	lui	ra,0xff01
   18144:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   18148:	0f00e193          	ori	gp,ra,240
   1814c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18150:	00200293          	li	t0,2
   18154:	fe5216e3          	bne	tp,t0,18140 <test_10+0x4>
   18158:	0ff01eb7          	lui	t4,0xff01
   1815c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6888>
   18160:	00a00e13          	li	t3,10
   18164:	09d19863          	bne	gp,t4,181f4 <fail>

00018168 <test_11>:
   18168:	00000213          	li	tp,0
   1816c:	00ff00b7          	lui	ra,0xff0
   18170:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   18174:	00000013          	nop
   18178:	f0f0e193          	ori	gp,ra,-241
   1817c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18180:	00200293          	li	t0,2
   18184:	fe5214e3          	bne	tp,t0,1816c <test_11+0x4>
   18188:	fff00e93          	li	t4,-1
   1818c:	00b00e13          	li	t3,11
   18190:	07d19263          	bne	gp,t4,181f4 <fail>

00018194 <test_12>:
   18194:	00000213          	li	tp,0
   18198:	f00ff0b7          	lui	ra,0xf00ff
   1819c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   181a0:	00000013          	nop
   181a4:	00000013          	nop
   181a8:	0f00e193          	ori	gp,ra,240
   181ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   181b0:	00200293          	li	t0,2
   181b4:	fe5212e3          	bne	tp,t0,18198 <test_12+0x4>
   181b8:	f00ffeb7          	lui	t4,0xf00ff
   181bc:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   181c0:	00c00e13          	li	t3,12
   181c4:	03d19863          	bne	gp,t4,181f4 <fail>

000181c8 <test_13>:
   181c8:	0f006093          	ori	ra,zero,240
   181cc:	0f000e93          	li	t4,240
   181d0:	00d00e13          	li	t3,13
   181d4:	03d09063          	bne	ra,t4,181f4 <fail>

000181d8 <test_14>:
   181d8:	00ff00b7          	lui	ra,0xff0
   181dc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   181e0:	70f0e013          	ori	zero,ra,1807
   181e4:	00000e93          	li	t4,0
   181e8:	00e00e13          	li	t3,14
   181ec:	01d01463          	bne	zero,t4,181f4 <fail>
   181f0:	05c01063          	bne	zero,t3,18230 <pass>

000181f4 <fail>:
   181f4:	0ff00513          	li	a0,255

000181f8 <.delay_fail>:
   181f8:	fff50513          	addi	a0,a0,-1
   181fc:	fe051ee3          	bnez	a0,181f8 <.delay_fail>
   18200:	02000537          	lui	a0,0x2000
   18204:	04500593          	li	a1,69
   18208:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1820c:	05200613          	li	a2,82
   18210:	00c52023          	sw	a2,0(a0)
   18214:	00c52023          	sw	a2,0(a0)
   18218:	04f00693          	li	a3,79
   1821c:	00d52023          	sw	a3,0(a0)
   18220:	00c52023          	sw	a2,0(a0)
   18224:	02000713          	li	a4,32
   18228:	00e52023          	sw	a4,0(a0)
   1822c:	f0df706f          	j	10138 <ori_ret>

00018230 <pass>:
   18230:	0ff00513          	li	a0,255

00018234 <.delay_ok>:
   18234:	fff50513          	addi	a0,a0,-1
   18238:	fe051ee3          	bnez	a0,18234 <.delay_ok>
   1823c:	02000537          	lui	a0,0x2000
   18240:	04f00593          	li	a1,79
   18244:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   18248:	04b00613          	li	a2,75
   1824c:	00c52023          	sw	a2,0(a0)
   18250:	02000713          	li	a4,32
   18254:	00e52023          	sw	a4,0(a0)
   18258:	ee1f706f          	j	10138 <ori_ret>

0001825c <lhu>:
   1825c:	00008537          	lui	a0,0x8
   18260:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   18264:	00a00693          	li	a3,10
   18268:	00100713          	li	a4,1

0001826c <.delay_pr>:
   1826c:	fff50513          	addi	a0,a0,-1
   18270:	fe051ee3          	bnez	a0,1826c <.delay_pr>
   18274:	00018537          	lui	a0,0x18
   18278:	29850513          	addi	a0,a0,664 # 18298 <.test_name>
   1827c:	02000637          	lui	a2,0x2000

00018280 <.prname_next>:
   18280:	00050583          	lb	a1,0(a0)
   18284:	00058c63          	beqz	a1,1829c <.prname_done>
   18288:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   1828c:	00150513          	addi	a0,a0,1
   18290:	40e686b3          	sub	a3,a3,a4
   18294:	fedff06f          	j	18280 <.prname_next>

00018298 <.test_name>:
   18298:	686c                	flw	fa1,84(s0)
   1829a:	0075                	c.nop	29

0001829c <.prname_done>:
   1829c:	02e00593          	li	a1,46

000182a0 <.loop>:
   182a0:	00b62023          	sw	a1,0(a2)
   182a4:	40e686b3          	sub	a3,a3,a4
   182a8:	00068463          	beqz	a3,182b0 <test_2>
   182ac:	ff5ff0ef          	jal	ra,182a0 <.loop>

000182b0 <test_2>:
   182b0:	7ffe8097          	auipc	ra,0x7ffe8
   182b4:	db808093          	addi	ra,ra,-584 # 80000068 <tdat>
   182b8:	0000d183          	lhu	gp,0(ra)
   182bc:	0ff00e93          	li	t4,255
   182c0:	00200e13          	li	t3,2
   182c4:	27d19663          	bne	gp,t4,18530 <fail>

000182c8 <test_3>:
   182c8:	7ffe8097          	auipc	ra,0x7ffe8
   182cc:	da008093          	addi	ra,ra,-608 # 80000068 <tdat>
   182d0:	0020d183          	lhu	gp,2(ra)
   182d4:	00010eb7          	lui	t4,0x10
   182d8:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   182dc:	00300e13          	li	t3,3
   182e0:	25d19863          	bne	gp,t4,18530 <fail>

000182e4 <test_4>:
   182e4:	7ffe8097          	auipc	ra,0x7ffe8
   182e8:	d8408093          	addi	ra,ra,-636 # 80000068 <tdat>
   182ec:	0040d183          	lhu	gp,4(ra)
   182f0:	00001eb7          	lui	t4,0x1
   182f4:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   182f8:	00400e13          	li	t3,4
   182fc:	23d19a63          	bne	gp,t4,18530 <fail>

00018300 <test_5>:
   18300:	7ffe8097          	auipc	ra,0x7ffe8
   18304:	d6808093          	addi	ra,ra,-664 # 80000068 <tdat>
   18308:	0060d183          	lhu	gp,6(ra)
   1830c:	0000feb7          	lui	t4,0xf
   18310:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   18314:	00500e13          	li	t3,5
   18318:	21d19c63          	bne	gp,t4,18530 <fail>

0001831c <test_6>:
   1831c:	7ffe8097          	auipc	ra,0x7ffe8
   18320:	d5208093          	addi	ra,ra,-686 # 8000006e <tdat4>
   18324:	ffa0d183          	lhu	gp,-6(ra)
   18328:	0ff00e93          	li	t4,255
   1832c:	00600e13          	li	t3,6
   18330:	21d19063          	bne	gp,t4,18530 <fail>

00018334 <test_7>:
   18334:	7ffe8097          	auipc	ra,0x7ffe8
   18338:	d3a08093          	addi	ra,ra,-710 # 8000006e <tdat4>
   1833c:	ffc0d183          	lhu	gp,-4(ra)
   18340:	00010eb7          	lui	t4,0x10
   18344:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   18348:	00700e13          	li	t3,7
   1834c:	1fd19263          	bne	gp,t4,18530 <fail>

00018350 <test_8>:
   18350:	7ffe8097          	auipc	ra,0x7ffe8
   18354:	d1e08093          	addi	ra,ra,-738 # 8000006e <tdat4>
   18358:	ffe0d183          	lhu	gp,-2(ra)
   1835c:	00001eb7          	lui	t4,0x1
   18360:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   18364:	00800e13          	li	t3,8
   18368:	1dd19463          	bne	gp,t4,18530 <fail>

0001836c <test_9>:
   1836c:	7ffe8097          	auipc	ra,0x7ffe8
   18370:	d0208093          	addi	ra,ra,-766 # 8000006e <tdat4>
   18374:	0000d183          	lhu	gp,0(ra)
   18378:	0000feb7          	lui	t4,0xf
   1837c:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   18380:	00900e13          	li	t3,9
   18384:	1bd19663          	bne	gp,t4,18530 <fail>

00018388 <test_10>:
   18388:	7ffe8097          	auipc	ra,0x7ffe8
   1838c:	ce008093          	addi	ra,ra,-800 # 80000068 <tdat>
   18390:	fe008093          	addi	ra,ra,-32
   18394:	0200d183          	lhu	gp,32(ra)
   18398:	0ff00e93          	li	t4,255
   1839c:	00a00e13          	li	t3,10
   183a0:	19d19863          	bne	gp,t4,18530 <fail>

000183a4 <test_11>:
   183a4:	7ffe8097          	auipc	ra,0x7ffe8
   183a8:	cc408093          	addi	ra,ra,-828 # 80000068 <tdat>
   183ac:	ffb08093          	addi	ra,ra,-5
   183b0:	0070d183          	lhu	gp,7(ra)
   183b4:	00010eb7          	lui	t4,0x10
   183b8:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   183bc:	00b00e13          	li	t3,11
   183c0:	17d19863          	bne	gp,t4,18530 <fail>

000183c4 <test_12>:
   183c4:	00c00e13          	li	t3,12
   183c8:	00000213          	li	tp,0
   183cc:	7ffe8097          	auipc	ra,0x7ffe8
   183d0:	c9e08093          	addi	ra,ra,-866 # 8000006a <tdat2>
   183d4:	0020d183          	lhu	gp,2(ra)
   183d8:	00018313          	mv	t1,gp
   183dc:	00001eb7          	lui	t4,0x1
   183e0:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   183e4:	15d31663          	bne	t1,t4,18530 <fail>
   183e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   183ec:	00200293          	li	t0,2
   183f0:	fc521ee3          	bne	tp,t0,183cc <test_12+0x8>

000183f4 <test_13>:
   183f4:	00d00e13          	li	t3,13
   183f8:	00000213          	li	tp,0
   183fc:	7ffe8097          	auipc	ra,0x7ffe8
   18400:	c7008093          	addi	ra,ra,-912 # 8000006c <tdat3>
   18404:	0020d183          	lhu	gp,2(ra)
   18408:	00000013          	nop
   1840c:	00018313          	mv	t1,gp
   18410:	0000feb7          	lui	t4,0xf
   18414:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   18418:	11d31c63          	bne	t1,t4,18530 <fail>
   1841c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18420:	00200293          	li	t0,2
   18424:	fc521ce3          	bne	tp,t0,183fc <test_13+0x8>

00018428 <test_14>:
   18428:	00e00e13          	li	t3,14
   1842c:	00000213          	li	tp,0
   18430:	7ffe8097          	auipc	ra,0x7ffe8
   18434:	c3808093          	addi	ra,ra,-968 # 80000068 <tdat>
   18438:	0020d183          	lhu	gp,2(ra)
   1843c:	00000013          	nop
   18440:	00000013          	nop
   18444:	00018313          	mv	t1,gp
   18448:	00010eb7          	lui	t4,0x10
   1844c:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   18450:	0fd31063          	bne	t1,t4,18530 <fail>
   18454:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18458:	00200293          	li	t0,2
   1845c:	fc521ae3          	bne	tp,t0,18430 <test_14+0x8>

00018460 <test_15>:
   18460:	00f00e13          	li	t3,15
   18464:	00000213          	li	tp,0
   18468:	7ffe8097          	auipc	ra,0x7ffe8
   1846c:	c0208093          	addi	ra,ra,-1022 # 8000006a <tdat2>
   18470:	0020d183          	lhu	gp,2(ra)
   18474:	00001eb7          	lui	t4,0x1
   18478:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   1847c:	0bd19a63          	bne	gp,t4,18530 <fail>
   18480:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18484:	00200293          	li	t0,2
   18488:	fe5210e3          	bne	tp,t0,18468 <test_15+0x8>

0001848c <test_16>:
   1848c:	01000e13          	li	t3,16
   18490:	00000213          	li	tp,0
   18494:	7ffe8097          	auipc	ra,0x7ffe8
   18498:	bd808093          	addi	ra,ra,-1064 # 8000006c <tdat3>
   1849c:	00000013          	nop
   184a0:	0020d183          	lhu	gp,2(ra)
   184a4:	0000feb7          	lui	t4,0xf
   184a8:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   184ac:	09d19263          	bne	gp,t4,18530 <fail>
   184b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   184b4:	00200293          	li	t0,2
   184b8:	fc521ee3          	bne	tp,t0,18494 <test_16+0x8>

000184bc <test_17>:
   184bc:	01100e13          	li	t3,17
   184c0:	00000213          	li	tp,0
   184c4:	7ffe8097          	auipc	ra,0x7ffe8
   184c8:	ba408093          	addi	ra,ra,-1116 # 80000068 <tdat>
   184cc:	00000013          	nop
   184d0:	00000013          	nop
   184d4:	0020d183          	lhu	gp,2(ra)
   184d8:	00010eb7          	lui	t4,0x10
   184dc:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   184e0:	05d19863          	bne	gp,t4,18530 <fail>
   184e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   184e8:	00200293          	li	t0,2
   184ec:	fc521ce3          	bne	tp,t0,184c4 <test_17+0x8>

000184f0 <test_18>:
   184f0:	7ffe8197          	auipc	gp,0x7ffe8
   184f4:	b7818193          	addi	gp,gp,-1160 # 80000068 <tdat>
   184f8:	0001d103          	lhu	sp,0(gp)
   184fc:	00200113          	li	sp,2
   18500:	00200e93          	li	t4,2
   18504:	01200e13          	li	t3,18
   18508:	03d11463          	bne	sp,t4,18530 <fail>

0001850c <test_19>:
   1850c:	7ffe8197          	auipc	gp,0x7ffe8
   18510:	b5c18193          	addi	gp,gp,-1188 # 80000068 <tdat>
   18514:	0001d103          	lhu	sp,0(gp)
   18518:	00000013          	nop
   1851c:	00200113          	li	sp,2
   18520:	00200e93          	li	t4,2
   18524:	01300e13          	li	t3,19
   18528:	01d11463          	bne	sp,t4,18530 <fail>
   1852c:	05c01063          	bne	zero,t3,1856c <pass>

00018530 <fail>:
   18530:	0ff00513          	li	a0,255

00018534 <.delay_fail>:
   18534:	fff50513          	addi	a0,a0,-1
   18538:	fe051ee3          	bnez	a0,18534 <.delay_fail>
   1853c:	02000537          	lui	a0,0x2000
   18540:	04500593          	li	a1,69
   18544:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   18548:	05200613          	li	a2,82
   1854c:	00c52023          	sw	a2,0(a0)
   18550:	00c52023          	sw	a2,0(a0)
   18554:	04f00693          	li	a3,79
   18558:	00d52023          	sw	a3,0(a0)
   1855c:	00c52023          	sw	a2,0(a0)
   18560:	02000713          	li	a4,32
   18564:	00e52023          	sw	a4,0(a0)
   18568:	bb1f706f          	j	10118 <lhu_ret>

0001856c <pass>:
   1856c:	0ff00513          	li	a0,255

00018570 <.delay_ok>:
   18570:	fff50513          	addi	a0,a0,-1
   18574:	fe051ee3          	bnez	a0,18570 <.delay_ok>
   18578:	02000537          	lui	a0,0x2000
   1857c:	04f00593          	li	a1,79
   18580:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   18584:	04b00613          	li	a2,75
   18588:	00c52023          	sw	a2,0(a0)
   1858c:	02000713          	li	a4,32
   18590:	00e52023          	sw	a4,0(a0)
   18594:	b85f706f          	j	10118 <lhu_ret>

00018598 <srl>:
   18598:	00008537          	lui	a0,0x8
   1859c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   185a0:	00a00693          	li	a3,10
   185a4:	00100713          	li	a4,1

000185a8 <.delay_pr>:
   185a8:	fff50513          	addi	a0,a0,-1
   185ac:	fe051ee3          	bnez	a0,185a8 <.delay_pr>
   185b0:	00018537          	lui	a0,0x18
   185b4:	5d450513          	addi	a0,a0,1492 # 185d4 <.test_name>
   185b8:	02000637          	lui	a2,0x2000

000185bc <.prname_next>:
   185bc:	00050583          	lb	a1,0(a0)
   185c0:	00058c63          	beqz	a1,185d8 <.prname_done>
   185c4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   185c8:	00150513          	addi	a0,a0,1
   185cc:	40e686b3          	sub	a3,a3,a4
   185d0:	fedff06f          	j	185bc <.prname_next>

000185d4 <.test_name>:
   185d4:	006c7273          	csrrci	tp,0x6,24

000185d8 <.prname_done>:
   185d8:	02e00593          	li	a1,46

000185dc <.loop>:
   185dc:	00b62023          	sw	a1,0(a2)
   185e0:	40e686b3          	sub	a3,a3,a4
   185e4:	00068463          	beqz	a3,185ec <test_2>
   185e8:	ff5ff0ef          	jal	ra,185dc <.loop>

000185ec <test_2>:
   185ec:	ffff80b7          	lui	ra,0xffff8
   185f0:	00000113          	li	sp,0
   185f4:	0020d1b3          	srl	gp,ra,sp
   185f8:	ffff8eb7          	lui	t4,0xffff8
   185fc:	00200e13          	li	t3,2
   18600:	5bd19463          	bne	gp,t4,18ba8 <fail>

00018604 <test_3>:
   18604:	ffff80b7          	lui	ra,0xffff8
   18608:	00100113          	li	sp,1
   1860c:	0020d1b3          	srl	gp,ra,sp
   18610:	7fffceb7          	lui	t4,0x7fffc
   18614:	00300e13          	li	t3,3
   18618:	59d19863          	bne	gp,t4,18ba8 <fail>

0001861c <test_4>:
   1861c:	ffff80b7          	lui	ra,0xffff8
   18620:	00700113          	li	sp,7
   18624:	0020d1b3          	srl	gp,ra,sp
   18628:	02000eb7          	lui	t4,0x2000
   1862c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5798>
   18630:	00400e13          	li	t3,4
   18634:	57d19a63          	bne	gp,t4,18ba8 <fail>

00018638 <test_5>:
   18638:	ffff80b7          	lui	ra,0xffff8
   1863c:	00e00113          	li	sp,14
   18640:	0020d1b3          	srl	gp,ra,sp
   18644:	00040eb7          	lui	t4,0x40
   18648:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25896>
   1864c:	00500e13          	li	t3,5
   18650:	55d19c63          	bne	gp,t4,18ba8 <fail>

00018654 <test_6>:
   18654:	ffff80b7          	lui	ra,0xffff8
   18658:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   1865c:	00f00113          	li	sp,15
   18660:	0020d1b3          	srl	gp,ra,sp
   18664:	00020eb7          	lui	t4,0x20
   18668:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   1866c:	00600e13          	li	t3,6
   18670:	53d19c63          	bne	gp,t4,18ba8 <fail>

00018674 <test_7>:
   18674:	fff00093          	li	ra,-1
   18678:	00000113          	li	sp,0
   1867c:	0020d1b3          	srl	gp,ra,sp
   18680:	fff00e93          	li	t4,-1
   18684:	00700e13          	li	t3,7
   18688:	53d19063          	bne	gp,t4,18ba8 <fail>

0001868c <test_8>:
   1868c:	fff00093          	li	ra,-1
   18690:	00100113          	li	sp,1
   18694:	0020d1b3          	srl	gp,ra,sp
   18698:	80000eb7          	lui	t4,0x80000
   1869c:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   186a0:	00800e13          	li	t3,8
   186a4:	51d19263          	bne	gp,t4,18ba8 <fail>

000186a8 <test_9>:
   186a8:	fff00093          	li	ra,-1
   186ac:	00700113          	li	sp,7
   186b0:	0020d1b3          	srl	gp,ra,sp
   186b4:	02000eb7          	lui	t4,0x2000
   186b8:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe5897>
   186bc:	00900e13          	li	t3,9
   186c0:	4fd19463          	bne	gp,t4,18ba8 <fail>

000186c4 <test_10>:
   186c4:	fff00093          	li	ra,-1
   186c8:	00e00113          	li	sp,14
   186cc:	0020d1b3          	srl	gp,ra,sp
   186d0:	00040eb7          	lui	t4,0x40
   186d4:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x25897>
   186d8:	00a00e13          	li	t3,10
   186dc:	4dd19663          	bne	gp,t4,18ba8 <fail>

000186e0 <test_11>:
   186e0:	fff00093          	li	ra,-1
   186e4:	01f00113          	li	sp,31
   186e8:	0020d1b3          	srl	gp,ra,sp
   186ec:	00100e93          	li	t4,1
   186f0:	00b00e13          	li	t3,11
   186f4:	4bd19a63          	bne	gp,t4,18ba8 <fail>

000186f8 <test_12>:
   186f8:	212120b7          	lui	ra,0x21212
   186fc:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   18700:	00000113          	li	sp,0
   18704:	0020d1b3          	srl	gp,ra,sp
   18708:	21212eb7          	lui	t4,0x21212
   1870c:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f79b9>
   18710:	00c00e13          	li	t3,12
   18714:	49d19a63          	bne	gp,t4,18ba8 <fail>

00018718 <test_13>:
   18718:	212120b7          	lui	ra,0x21212
   1871c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   18720:	00100113          	li	sp,1
   18724:	0020d1b3          	srl	gp,ra,sp
   18728:	10909eb7          	lui	t4,0x10909
   1872c:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108ee928>
   18730:	00d00e13          	li	t3,13
   18734:	47d19a63          	bne	gp,t4,18ba8 <fail>

00018738 <test_14>:
   18738:	212120b7          	lui	ra,0x21212
   1873c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   18740:	00700113          	li	sp,7
   18744:	0020d1b3          	srl	gp,ra,sp
   18748:	00424eb7          	lui	t4,0x424
   1874c:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409ada>
   18750:	00e00e13          	li	t3,14
   18754:	45d19a63          	bne	gp,t4,18ba8 <fail>

00018758 <test_15>:
   18758:	212120b7          	lui	ra,0x21212
   1875c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   18760:	00e00113          	li	sp,14
   18764:	0020d1b3          	srl	gp,ra,sp
   18768:	00008eb7          	lui	t4,0x8
   1876c:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   18770:	00f00e13          	li	t3,15
   18774:	43d19a63          	bne	gp,t4,18ba8 <fail>

00018778 <test_16>:
   18778:	212120b7          	lui	ra,0x21212
   1877c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   18780:	01f00113          	li	sp,31
   18784:	0020d1b3          	srl	gp,ra,sp
   18788:	00000e93          	li	t4,0
   1878c:	01000e13          	li	t3,16
   18790:	41d19c63          	bne	gp,t4,18ba8 <fail>

00018794 <test_17>:
   18794:	212120b7          	lui	ra,0x21212
   18798:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   1879c:	fe000113          	li	sp,-32
   187a0:	0020d1b3          	srl	gp,ra,sp
   187a4:	21212eb7          	lui	t4,0x21212
   187a8:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f79b9>
   187ac:	01100e13          	li	t3,17
   187b0:	3fd19c63          	bne	gp,t4,18ba8 <fail>

000187b4 <test_18>:
   187b4:	212120b7          	lui	ra,0x21212
   187b8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   187bc:	fe100113          	li	sp,-31
   187c0:	0020d1b3          	srl	gp,ra,sp
   187c4:	10909eb7          	lui	t4,0x10909
   187c8:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108ee928>
   187cc:	01200e13          	li	t3,18
   187d0:	3dd19c63          	bne	gp,t4,18ba8 <fail>

000187d4 <test_19>:
   187d4:	212120b7          	lui	ra,0x21212
   187d8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   187dc:	fe700113          	li	sp,-25
   187e0:	0020d1b3          	srl	gp,ra,sp
   187e4:	00424eb7          	lui	t4,0x424
   187e8:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409ada>
   187ec:	01300e13          	li	t3,19
   187f0:	3bd19c63          	bne	gp,t4,18ba8 <fail>

000187f4 <test_20>:
   187f4:	212120b7          	lui	ra,0x21212
   187f8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   187fc:	fee00113          	li	sp,-18
   18800:	0020d1b3          	srl	gp,ra,sp
   18804:	00008eb7          	lui	t4,0x8
   18808:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   1880c:	01400e13          	li	t3,20
   18810:	39d19c63          	bne	gp,t4,18ba8 <fail>

00018814 <test_21>:
   18814:	212120b7          	lui	ra,0x21212
   18818:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f79b9>
   1881c:	fff00113          	li	sp,-1
   18820:	0020d1b3          	srl	gp,ra,sp
   18824:	00000e93          	li	t4,0
   18828:	01500e13          	li	t3,21
   1882c:	37d19e63          	bne	gp,t4,18ba8 <fail>

00018830 <test_22>:
   18830:	ffff80b7          	lui	ra,0xffff8
   18834:	00100113          	li	sp,1
   18838:	0020d0b3          	srl	ra,ra,sp
   1883c:	7fffceb7          	lui	t4,0x7fffc
   18840:	01600e13          	li	t3,22
   18844:	37d09263          	bne	ra,t4,18ba8 <fail>

00018848 <test_23>:
   18848:	ffff80b7          	lui	ra,0xffff8
   1884c:	00e00113          	li	sp,14
   18850:	0020d133          	srl	sp,ra,sp
   18854:	00040eb7          	lui	t4,0x40
   18858:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25896>
   1885c:	01700e13          	li	t3,23
   18860:	35d11463          	bne	sp,t4,18ba8 <fail>

00018864 <test_24>:
   18864:	00700093          	li	ra,7
   18868:	0010d0b3          	srl	ra,ra,ra
   1886c:	00000e93          	li	t4,0
   18870:	01800e13          	li	t3,24
   18874:	33d09a63          	bne	ra,t4,18ba8 <fail>

00018878 <test_25>:
   18878:	00000213          	li	tp,0
   1887c:	ffff80b7          	lui	ra,0xffff8
   18880:	00100113          	li	sp,1
   18884:	0020d1b3          	srl	gp,ra,sp
   18888:	00018313          	mv	t1,gp
   1888c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18890:	00200293          	li	t0,2
   18894:	fe5214e3          	bne	tp,t0,1887c <test_25+0x4>
   18898:	7fffceb7          	lui	t4,0x7fffc
   1889c:	01900e13          	li	t3,25
   188a0:	31d31463          	bne	t1,t4,18ba8 <fail>

000188a4 <test_26>:
   188a4:	00000213          	li	tp,0
   188a8:	ffff80b7          	lui	ra,0xffff8
   188ac:	00e00113          	li	sp,14
   188b0:	0020d1b3          	srl	gp,ra,sp
   188b4:	00000013          	nop
   188b8:	00018313          	mv	t1,gp
   188bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188c0:	00200293          	li	t0,2
   188c4:	fe5212e3          	bne	tp,t0,188a8 <test_26+0x4>
   188c8:	00040eb7          	lui	t4,0x40
   188cc:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25896>
   188d0:	01a00e13          	li	t3,26
   188d4:	2dd31a63          	bne	t1,t4,18ba8 <fail>

000188d8 <test_27>:
   188d8:	00000213          	li	tp,0
   188dc:	ffff80b7          	lui	ra,0xffff8
   188e0:	00f00113          	li	sp,15
   188e4:	0020d1b3          	srl	gp,ra,sp
   188e8:	00000013          	nop
   188ec:	00000013          	nop
   188f0:	00018313          	mv	t1,gp
   188f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188f8:	00200293          	li	t0,2
   188fc:	fe5210e3          	bne	tp,t0,188dc <test_27+0x4>
   18900:	00020eb7          	lui	t4,0x20
   18904:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   18908:	01b00e13          	li	t3,27
   1890c:	29d31e63          	bne	t1,t4,18ba8 <fail>

00018910 <test_28>:
   18910:	00000213          	li	tp,0
   18914:	ffff80b7          	lui	ra,0xffff8
   18918:	00100113          	li	sp,1
   1891c:	0020d1b3          	srl	gp,ra,sp
   18920:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18924:	00200293          	li	t0,2
   18928:	fe5216e3          	bne	tp,t0,18914 <test_28+0x4>
   1892c:	7fffceb7          	lui	t4,0x7fffc
   18930:	01c00e13          	li	t3,28
   18934:	27d19a63          	bne	gp,t4,18ba8 <fail>

00018938 <test_29>:
   18938:	00000213          	li	tp,0
   1893c:	ffff80b7          	lui	ra,0xffff8
   18940:	00700113          	li	sp,7
   18944:	00000013          	nop
   18948:	0020d1b3          	srl	gp,ra,sp
   1894c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18950:	00200293          	li	t0,2
   18954:	fe5214e3          	bne	tp,t0,1893c <test_29+0x4>
   18958:	02000eb7          	lui	t4,0x2000
   1895c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5798>
   18960:	01d00e13          	li	t3,29
   18964:	25d19263          	bne	gp,t4,18ba8 <fail>

00018968 <test_30>:
   18968:	00000213          	li	tp,0
   1896c:	ffff80b7          	lui	ra,0xffff8
   18970:	00f00113          	li	sp,15
   18974:	00000013          	nop
   18978:	00000013          	nop
   1897c:	0020d1b3          	srl	gp,ra,sp
   18980:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18984:	00200293          	li	t0,2
   18988:	fe5212e3          	bne	tp,t0,1896c <test_30+0x4>
   1898c:	00020eb7          	lui	t4,0x20
   18990:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   18994:	01e00e13          	li	t3,30
   18998:	21d19863          	bne	gp,t4,18ba8 <fail>

0001899c <test_31>:
   1899c:	00000213          	li	tp,0
   189a0:	ffff80b7          	lui	ra,0xffff8
   189a4:	00000013          	nop
   189a8:	00100113          	li	sp,1
   189ac:	0020d1b3          	srl	gp,ra,sp
   189b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189b4:	00200293          	li	t0,2
   189b8:	fe5214e3          	bne	tp,t0,189a0 <test_31+0x4>
   189bc:	7fffceb7          	lui	t4,0x7fffc
   189c0:	01f00e13          	li	t3,31
   189c4:	1fd19263          	bne	gp,t4,18ba8 <fail>

000189c8 <test_32>:
   189c8:	00000213          	li	tp,0
   189cc:	ffff80b7          	lui	ra,0xffff8
   189d0:	00000013          	nop
   189d4:	00700113          	li	sp,7
   189d8:	00000013          	nop
   189dc:	0020d1b3          	srl	gp,ra,sp
   189e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189e4:	00200293          	li	t0,2
   189e8:	fe5212e3          	bne	tp,t0,189cc <test_32+0x4>
   189ec:	02000eb7          	lui	t4,0x2000
   189f0:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5798>
   189f4:	02000e13          	li	t3,32
   189f8:	1bd19863          	bne	gp,t4,18ba8 <fail>

000189fc <test_33>:
   189fc:	00000213          	li	tp,0
   18a00:	ffff80b7          	lui	ra,0xffff8
   18a04:	00000013          	nop
   18a08:	00000013          	nop
   18a0c:	00f00113          	li	sp,15
   18a10:	0020d1b3          	srl	gp,ra,sp
   18a14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a18:	00200293          	li	t0,2
   18a1c:	fe5212e3          	bne	tp,t0,18a00 <test_33+0x4>
   18a20:	00020eb7          	lui	t4,0x20
   18a24:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   18a28:	02100e13          	li	t3,33
   18a2c:	17d19e63          	bne	gp,t4,18ba8 <fail>

00018a30 <test_34>:
   18a30:	00000213          	li	tp,0
   18a34:	00100113          	li	sp,1
   18a38:	ffff80b7          	lui	ra,0xffff8
   18a3c:	0020d1b3          	srl	gp,ra,sp
   18a40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a44:	00200293          	li	t0,2
   18a48:	fe5216e3          	bne	tp,t0,18a34 <test_34+0x4>
   18a4c:	7fffceb7          	lui	t4,0x7fffc
   18a50:	02200e13          	li	t3,34
   18a54:	15d19a63          	bne	gp,t4,18ba8 <fail>

00018a58 <test_35>:
   18a58:	00000213          	li	tp,0
   18a5c:	00700113          	li	sp,7
   18a60:	ffff80b7          	lui	ra,0xffff8
   18a64:	00000013          	nop
   18a68:	0020d1b3          	srl	gp,ra,sp
   18a6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a70:	00200293          	li	t0,2
   18a74:	fe5214e3          	bne	tp,t0,18a5c <test_35+0x4>
   18a78:	02000eb7          	lui	t4,0x2000
   18a7c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5798>
   18a80:	02300e13          	li	t3,35
   18a84:	13d19263          	bne	gp,t4,18ba8 <fail>

00018a88 <test_36>:
   18a88:	00000213          	li	tp,0
   18a8c:	00f00113          	li	sp,15
   18a90:	ffff80b7          	lui	ra,0xffff8
   18a94:	00000013          	nop
   18a98:	00000013          	nop
   18a9c:	0020d1b3          	srl	gp,ra,sp
   18aa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18aa4:	00200293          	li	t0,2
   18aa8:	fe5212e3          	bne	tp,t0,18a8c <test_36+0x4>
   18aac:	00020eb7          	lui	t4,0x20
   18ab0:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   18ab4:	02400e13          	li	t3,36
   18ab8:	0fd19863          	bne	gp,t4,18ba8 <fail>

00018abc <test_37>:
   18abc:	00000213          	li	tp,0
   18ac0:	00100113          	li	sp,1
   18ac4:	00000013          	nop
   18ac8:	ffff80b7          	lui	ra,0xffff8
   18acc:	0020d1b3          	srl	gp,ra,sp
   18ad0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ad4:	00200293          	li	t0,2
   18ad8:	fe5214e3          	bne	tp,t0,18ac0 <test_37+0x4>
   18adc:	7fffceb7          	lui	t4,0x7fffc
   18ae0:	02500e13          	li	t3,37
   18ae4:	0dd19263          	bne	gp,t4,18ba8 <fail>

00018ae8 <test_38>:
   18ae8:	00000213          	li	tp,0
   18aec:	00700113          	li	sp,7
   18af0:	00000013          	nop
   18af4:	ffff80b7          	lui	ra,0xffff8
   18af8:	00000013          	nop
   18afc:	0020d1b3          	srl	gp,ra,sp
   18b00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18b04:	00200293          	li	t0,2
   18b08:	fe5212e3          	bne	tp,t0,18aec <test_38+0x4>
   18b0c:	02000eb7          	lui	t4,0x2000
   18b10:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5798>
   18b14:	02600e13          	li	t3,38
   18b18:	09d19863          	bne	gp,t4,18ba8 <fail>

00018b1c <test_39>:
   18b1c:	00000213          	li	tp,0
   18b20:	00f00113          	li	sp,15
   18b24:	00000013          	nop
   18b28:	00000013          	nop
   18b2c:	ffff80b7          	lui	ra,0xffff8
   18b30:	0020d1b3          	srl	gp,ra,sp
   18b34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18b38:	00200293          	li	t0,2
   18b3c:	fe5212e3          	bne	tp,t0,18b20 <test_39+0x4>
   18b40:	00020eb7          	lui	t4,0x20
   18b44:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5897>
   18b48:	02700e13          	li	t3,39
   18b4c:	05d19e63          	bne	gp,t4,18ba8 <fail>

00018b50 <test_40>:
   18b50:	00f00093          	li	ra,15
   18b54:	00105133          	srl	sp,zero,ra
   18b58:	00000e93          	li	t4,0
   18b5c:	02800e13          	li	t3,40
   18b60:	05d11463          	bne	sp,t4,18ba8 <fail>

00018b64 <test_41>:
   18b64:	02000093          	li	ra,32
   18b68:	0000d133          	srl	sp,ra,zero
   18b6c:	02000e93          	li	t4,32
   18b70:	02900e13          	li	t3,41
   18b74:	03d11a63          	bne	sp,t4,18ba8 <fail>

00018b78 <test_42>:
   18b78:	000050b3          	srl	ra,zero,zero
   18b7c:	00000e93          	li	t4,0
   18b80:	02a00e13          	li	t3,42
   18b84:	03d09263          	bne	ra,t4,18ba8 <fail>

00018b88 <test_43>:
   18b88:	40000093          	li	ra,1024
   18b8c:	00001137          	lui	sp,0x1
   18b90:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   18b94:	0020d033          	srl	zero,ra,sp
   18b98:	00000e93          	li	t4,0
   18b9c:	02b00e13          	li	t3,43
   18ba0:	01d01463          	bne	zero,t4,18ba8 <fail>
   18ba4:	05c01063          	bne	zero,t3,18be4 <pass>

00018ba8 <fail>:
   18ba8:	0ff00513          	li	a0,255

00018bac <.delay_fail>:
   18bac:	fff50513          	addi	a0,a0,-1
   18bb0:	fe051ee3          	bnez	a0,18bac <.delay_fail>
   18bb4:	02000537          	lui	a0,0x2000
   18bb8:	04500593          	li	a1,69
   18bbc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   18bc0:	05200613          	li	a2,82
   18bc4:	00c52023          	sw	a2,0(a0)
   18bc8:	00c52023          	sw	a2,0(a0)
   18bcc:	04f00693          	li	a3,79
   18bd0:	00d52023          	sw	a3,0(a0)
   18bd4:	00c52023          	sw	a2,0(a0)
   18bd8:	02000713          	li	a4,32
   18bdc:	00e52023          	sw	a4,0(a0)
   18be0:	d88f706f          	j	10168 <srl_ret>

00018be4 <pass>:
   18be4:	0ff00513          	li	a0,255

00018be8 <.delay_ok>:
   18be8:	fff50513          	addi	a0,a0,-1
   18bec:	fe051ee3          	bnez	a0,18be8 <.delay_ok>
   18bf0:	02000537          	lui	a0,0x2000
   18bf4:	04f00593          	li	a1,79
   18bf8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   18bfc:	04b00613          	li	a2,75
   18c00:	00c52023          	sw	a2,0(a0)
   18c04:	02000713          	li	a4,32
   18c08:	00e52023          	sw	a4,0(a0)
   18c0c:	d5cf706f          	j	10168 <srl_ret>

00018c10 <jal>:
   18c10:	00008537          	lui	a0,0x8
   18c14:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   18c18:	00a00693          	li	a3,10
   18c1c:	00100713          	li	a4,1

00018c20 <.delay_pr>:
   18c20:	fff50513          	addi	a0,a0,-1
   18c24:	fe051ee3          	bnez	a0,18c20 <.delay_pr>
   18c28:	00019537          	lui	a0,0x19
   18c2c:	c4c50513          	addi	a0,a0,-948 # 18c4c <.test_name>
   18c30:	02000637          	lui	a2,0x2000

00018c34 <.prname_next>:
   18c34:	00050583          	lb	a1,0(a0)
   18c38:	00058c63          	beqz	a1,18c50 <.prname_done>
   18c3c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   18c40:	00150513          	addi	a0,a0,1
   18c44:	40e686b3          	sub	a3,a3,a4
   18c48:	fedff06f          	j	18c34 <.prname_next>

00018c4c <.test_name>:
   18c4c:	616a                	flw	ft2,152(sp)
   18c4e:	006c                	addi	a1,sp,12

00018c50 <.prname_done>:
   18c50:	02e00593          	li	a1,46

00018c54 <.loop>:
   18c54:	00b62023          	sw	a1,0(a2)
   18c58:	40e686b3          	sub	a3,a3,a4
   18c5c:	00068463          	beqz	a3,18c64 <test_2>
   18c60:	ff5ff0ef          	jal	ra,18c54 <.loop>

00018c64 <test_2>:
   18c64:	00200e13          	li	t3,2
   18c68:	00000093          	li	ra,0

00018c6c <linkaddr_2>:
   18c6c:	010000ef          	jal	ra,18c7c <target_2>
   18c70:	00000013          	nop
   18c74:	00000013          	nop
   18c78:	0440006f          	j	18cbc <fail>

00018c7c <target_2>:
   18c7c:	00000117          	auipc	sp,0x0
   18c80:	ff010113          	addi	sp,sp,-16 # 18c6c <linkaddr_2>
   18c84:	00410113          	addi	sp,sp,4
   18c88:	02111a63          	bne	sp,ra,18cbc <fail>

00018c8c <test_3>:
   18c8c:	00100113          	li	sp,1
   18c90:	014000ef          	jal	ra,18ca4 <test_3+0x18>
   18c94:	00110113          	addi	sp,sp,1
   18c98:	00110113          	addi	sp,sp,1
   18c9c:	00110113          	addi	sp,sp,1
   18ca0:	00110113          	addi	sp,sp,1
   18ca4:	00110113          	addi	sp,sp,1
   18ca8:	00110113          	addi	sp,sp,1
   18cac:	00300e93          	li	t4,3
   18cb0:	00300e13          	li	t3,3
   18cb4:	01d11463          	bne	sp,t4,18cbc <fail>
   18cb8:	05c01063          	bne	zero,t3,18cf8 <pass>

00018cbc <fail>:
   18cbc:	0ff00513          	li	a0,255

00018cc0 <.delay_fail>:
   18cc0:	fff50513          	addi	a0,a0,-1
   18cc4:	fe051ee3          	bnez	a0,18cc0 <.delay_fail>
   18cc8:	02000537          	lui	a0,0x2000
   18ccc:	04500593          	li	a1,69
   18cd0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   18cd4:	05200613          	li	a2,82
   18cd8:	00c52023          	sw	a2,0(a0)
   18cdc:	00c52023          	sw	a2,0(a0)
   18ce0:	04f00693          	li	a3,79
   18ce4:	00d52023          	sw	a3,0(a0)
   18ce8:	00c52023          	sw	a2,0(a0)
   18cec:	02000713          	li	a4,32
   18cf0:	00e52023          	sw	a4,0(a0)
   18cf4:	be8f706f          	j	100dc <jal_ret>

00018cf8 <pass>:
   18cf8:	0ff00513          	li	a0,255

00018cfc <.delay_ok>:
   18cfc:	fff50513          	addi	a0,a0,-1
   18d00:	fe051ee3          	bnez	a0,18cfc <.delay_ok>
   18d04:	02000537          	lui	a0,0x2000
   18d08:	04f00593          	li	a1,79
   18d0c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   18d10:	04b00613          	li	a2,75
   18d14:	00c52023          	sw	a2,0(a0)
   18d18:	02000713          	li	a4,32
   18d1c:	00e52023          	sw	a4,0(a0)
   18d20:	bbcf706f          	j	100dc <jal_ret>

00018d24 <add>:
   18d24:	00008537          	lui	a0,0x8
   18d28:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   18d2c:	00a00693          	li	a3,10
   18d30:	00100713          	li	a4,1

00018d34 <.delay_pr>:
   18d34:	fff50513          	addi	a0,a0,-1
   18d38:	fe051ee3          	bnez	a0,18d34 <.delay_pr>
   18d3c:	00019537          	lui	a0,0x19
   18d40:	d6050513          	addi	a0,a0,-672 # 18d60 <.test_name>
   18d44:	02000637          	lui	a2,0x2000

00018d48 <.prname_next>:
   18d48:	00050583          	lb	a1,0(a0)
   18d4c:	00058c63          	beqz	a1,18d64 <.prname_done>
   18d50:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   18d54:	00150513          	addi	a0,a0,1
   18d58:	40e686b3          	sub	a3,a3,a4
   18d5c:	fedff06f          	j	18d48 <.prname_next>

00018d60 <.test_name>:
   18d60:	6461                	lui	s0,0x18
   18d62:	0064                	addi	s1,sp,12

00018d64 <.prname_done>:
   18d64:	02e00593          	li	a1,46

00018d68 <.loop>:
   18d68:	00b62023          	sw	a1,0(a2)
   18d6c:	40e686b3          	sub	a3,a3,a4
   18d70:	00068463          	beqz	a3,18d78 <test_2>
   18d74:	ff5ff0ef          	jal	ra,18d68 <.loop>

00018d78 <test_2>:
   18d78:	00000093          	li	ra,0
   18d7c:	00000113          	li	sp,0
   18d80:	002081b3          	add	gp,ra,sp
   18d84:	00000e93          	li	t4,0
   18d88:	00200e13          	li	t3,2
   18d8c:	4dd19663          	bne	gp,t4,19258 <fail>

00018d90 <test_3>:
   18d90:	00100093          	li	ra,1
   18d94:	00100113          	li	sp,1
   18d98:	002081b3          	add	gp,ra,sp
   18d9c:	00200e93          	li	t4,2
   18da0:	00300e13          	li	t3,3
   18da4:	4bd19a63          	bne	gp,t4,19258 <fail>

00018da8 <test_4>:
   18da8:	00300093          	li	ra,3
   18dac:	00700113          	li	sp,7
   18db0:	002081b3          	add	gp,ra,sp
   18db4:	00a00e93          	li	t4,10
   18db8:	00400e13          	li	t3,4
   18dbc:	49d19e63          	bne	gp,t4,19258 <fail>

00018dc0 <test_5>:
   18dc0:	00000093          	li	ra,0
   18dc4:	ffff8137          	lui	sp,0xffff8
   18dc8:	002081b3          	add	gp,ra,sp
   18dcc:	ffff8eb7          	lui	t4,0xffff8
   18dd0:	00500e13          	li	t3,5
   18dd4:	49d19263          	bne	gp,t4,19258 <fail>

00018dd8 <test_6>:
   18dd8:	800000b7          	lui	ra,0x80000
   18ddc:	00000113          	li	sp,0
   18de0:	002081b3          	add	gp,ra,sp
   18de4:	80000eb7          	lui	t4,0x80000
   18de8:	00600e13          	li	t3,6
   18dec:	47d19663          	bne	gp,t4,19258 <fail>

00018df0 <test_7>:
   18df0:	800000b7          	lui	ra,0x80000
   18df4:	ffff8137          	lui	sp,0xffff8
   18df8:	002081b3          	add	gp,ra,sp
   18dfc:	7fff8eb7          	lui	t4,0x7fff8
   18e00:	00700e13          	li	t3,7
   18e04:	45d19a63          	bne	gp,t4,19258 <fail>

00018e08 <test_8>:
   18e08:	00000093          	li	ra,0
   18e0c:	00008137          	lui	sp,0x8
   18e10:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18e14:	002081b3          	add	gp,ra,sp
   18e18:	00008eb7          	lui	t4,0x8
   18e1c:	fffe8e93          	addi	t4,t4,-1 # 7fff <_start-0x8001>
   18e20:	00800e13          	li	t3,8
   18e24:	43d19a63          	bne	gp,t4,19258 <fail>

00018e28 <test_9>:
   18e28:	800000b7          	lui	ra,0x80000
   18e2c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18e30:	00000113          	li	sp,0
   18e34:	002081b3          	add	gp,ra,sp
   18e38:	80000eb7          	lui	t4,0x80000
   18e3c:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   18e40:	00900e13          	li	t3,9
   18e44:	41d19a63          	bne	gp,t4,19258 <fail>

00018e48 <test_10>:
   18e48:	800000b7          	lui	ra,0x80000
   18e4c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18e50:	00008137          	lui	sp,0x8
   18e54:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18e58:	002081b3          	add	gp,ra,sp
   18e5c:	80008eb7          	lui	t4,0x80008
   18e60:	ffee8e93          	addi	t4,t4,-2 # 80007ffe <_edata+0x7f8e>
   18e64:	00a00e13          	li	t3,10
   18e68:	3fd19863          	bne	gp,t4,19258 <fail>

00018e6c <test_11>:
   18e6c:	800000b7          	lui	ra,0x80000
   18e70:	00008137          	lui	sp,0x8
   18e74:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18e78:	002081b3          	add	gp,ra,sp
   18e7c:	80008eb7          	lui	t4,0x80008
   18e80:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   18e84:	00b00e13          	li	t3,11
   18e88:	3dd19863          	bne	gp,t4,19258 <fail>

00018e8c <test_12>:
   18e8c:	800000b7          	lui	ra,0x80000
   18e90:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18e94:	ffff8137          	lui	sp,0xffff8
   18e98:	002081b3          	add	gp,ra,sp
   18e9c:	7fff8eb7          	lui	t4,0x7fff8
   18ea0:	fffe8e93          	addi	t4,t4,-1 # 7fff7fff <_etext+0x7ffdd897>
   18ea4:	00c00e13          	li	t3,12
   18ea8:	3bd19863          	bne	gp,t4,19258 <fail>

00018eac <test_13>:
   18eac:	00000093          	li	ra,0
   18eb0:	fff00113          	li	sp,-1
   18eb4:	002081b3          	add	gp,ra,sp
   18eb8:	fff00e93          	li	t4,-1
   18ebc:	00d00e13          	li	t3,13
   18ec0:	39d19c63          	bne	gp,t4,19258 <fail>

00018ec4 <test_14>:
   18ec4:	fff00093          	li	ra,-1
   18ec8:	00100113          	li	sp,1
   18ecc:	002081b3          	add	gp,ra,sp
   18ed0:	00000e93          	li	t4,0
   18ed4:	00e00e13          	li	t3,14
   18ed8:	39d19063          	bne	gp,t4,19258 <fail>

00018edc <test_15>:
   18edc:	fff00093          	li	ra,-1
   18ee0:	fff00113          	li	sp,-1
   18ee4:	002081b3          	add	gp,ra,sp
   18ee8:	ffe00e93          	li	t4,-2
   18eec:	00f00e13          	li	t3,15
   18ef0:	37d19463          	bne	gp,t4,19258 <fail>

00018ef4 <test_16>:
   18ef4:	00100093          	li	ra,1
   18ef8:	80000137          	lui	sp,0x80000
   18efc:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   18f00:	002081b3          	add	gp,ra,sp
   18f04:	80000eb7          	lui	t4,0x80000
   18f08:	01000e13          	li	t3,16
   18f0c:	35d19663          	bne	gp,t4,19258 <fail>

00018f10 <test_17>:
   18f10:	00d00093          	li	ra,13
   18f14:	00b00113          	li	sp,11
   18f18:	002080b3          	add	ra,ra,sp
   18f1c:	01800e93          	li	t4,24
   18f20:	01100e13          	li	t3,17
   18f24:	33d09a63          	bne	ra,t4,19258 <fail>

00018f28 <test_18>:
   18f28:	00e00093          	li	ra,14
   18f2c:	00b00113          	li	sp,11
   18f30:	00208133          	add	sp,ra,sp
   18f34:	01900e93          	li	t4,25
   18f38:	01200e13          	li	t3,18
   18f3c:	31d11e63          	bne	sp,t4,19258 <fail>

00018f40 <test_19>:
   18f40:	00d00093          	li	ra,13
   18f44:	001080b3          	add	ra,ra,ra
   18f48:	01a00e93          	li	t4,26
   18f4c:	01300e13          	li	t3,19
   18f50:	31d09463          	bne	ra,t4,19258 <fail>

00018f54 <test_20>:
   18f54:	00000213          	li	tp,0
   18f58:	00d00093          	li	ra,13
   18f5c:	00b00113          	li	sp,11
   18f60:	002081b3          	add	gp,ra,sp
   18f64:	00018313          	mv	t1,gp
   18f68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f6c:	00200293          	li	t0,2
   18f70:	fe5214e3          	bne	tp,t0,18f58 <test_20+0x4>
   18f74:	01800e93          	li	t4,24
   18f78:	01400e13          	li	t3,20
   18f7c:	2dd31e63          	bne	t1,t4,19258 <fail>

00018f80 <test_21>:
   18f80:	00000213          	li	tp,0
   18f84:	00e00093          	li	ra,14
   18f88:	00b00113          	li	sp,11
   18f8c:	002081b3          	add	gp,ra,sp
   18f90:	00000013          	nop
   18f94:	00018313          	mv	t1,gp
   18f98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f9c:	00200293          	li	t0,2
   18fa0:	fe5212e3          	bne	tp,t0,18f84 <test_21+0x4>
   18fa4:	01900e93          	li	t4,25
   18fa8:	01500e13          	li	t3,21
   18fac:	2bd31663          	bne	t1,t4,19258 <fail>

00018fb0 <test_22>:
   18fb0:	00000213          	li	tp,0
   18fb4:	00f00093          	li	ra,15
   18fb8:	00b00113          	li	sp,11
   18fbc:	002081b3          	add	gp,ra,sp
   18fc0:	00000013          	nop
   18fc4:	00000013          	nop
   18fc8:	00018313          	mv	t1,gp
   18fcc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18fd0:	00200293          	li	t0,2
   18fd4:	fe5210e3          	bne	tp,t0,18fb4 <test_22+0x4>
   18fd8:	01a00e93          	li	t4,26
   18fdc:	01600e13          	li	t3,22
   18fe0:	27d31c63          	bne	t1,t4,19258 <fail>

00018fe4 <test_23>:
   18fe4:	00000213          	li	tp,0
   18fe8:	00d00093          	li	ra,13
   18fec:	00b00113          	li	sp,11
   18ff0:	002081b3          	add	gp,ra,sp
   18ff4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ff8:	00200293          	li	t0,2
   18ffc:	fe5216e3          	bne	tp,t0,18fe8 <test_23+0x4>
   19000:	01800e93          	li	t4,24
   19004:	01700e13          	li	t3,23
   19008:	25d19863          	bne	gp,t4,19258 <fail>

0001900c <test_24>:
   1900c:	00000213          	li	tp,0
   19010:	00e00093          	li	ra,14
   19014:	00b00113          	li	sp,11
   19018:	00000013          	nop
   1901c:	002081b3          	add	gp,ra,sp
   19020:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19024:	00200293          	li	t0,2
   19028:	fe5214e3          	bne	tp,t0,19010 <test_24+0x4>
   1902c:	01900e93          	li	t4,25
   19030:	01800e13          	li	t3,24
   19034:	23d19263          	bne	gp,t4,19258 <fail>

00019038 <test_25>:
   19038:	00000213          	li	tp,0
   1903c:	00f00093          	li	ra,15
   19040:	00b00113          	li	sp,11
   19044:	00000013          	nop
   19048:	00000013          	nop
   1904c:	002081b3          	add	gp,ra,sp
   19050:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19054:	00200293          	li	t0,2
   19058:	fe5212e3          	bne	tp,t0,1903c <test_25+0x4>
   1905c:	01a00e93          	li	t4,26
   19060:	01900e13          	li	t3,25
   19064:	1fd19a63          	bne	gp,t4,19258 <fail>

00019068 <test_26>:
   19068:	00000213          	li	tp,0
   1906c:	00d00093          	li	ra,13
   19070:	00000013          	nop
   19074:	00b00113          	li	sp,11
   19078:	002081b3          	add	gp,ra,sp
   1907c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19080:	00200293          	li	t0,2
   19084:	fe5214e3          	bne	tp,t0,1906c <test_26+0x4>
   19088:	01800e93          	li	t4,24
   1908c:	01a00e13          	li	t3,26
   19090:	1dd19463          	bne	gp,t4,19258 <fail>

00019094 <test_27>:
   19094:	00000213          	li	tp,0
   19098:	00e00093          	li	ra,14
   1909c:	00000013          	nop
   190a0:	00b00113          	li	sp,11
   190a4:	00000013          	nop
   190a8:	002081b3          	add	gp,ra,sp
   190ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   190b0:	00200293          	li	t0,2
   190b4:	fe5212e3          	bne	tp,t0,19098 <test_27+0x4>
   190b8:	01900e93          	li	t4,25
   190bc:	01b00e13          	li	t3,27
   190c0:	19d19c63          	bne	gp,t4,19258 <fail>

000190c4 <test_28>:
   190c4:	00000213          	li	tp,0
   190c8:	00f00093          	li	ra,15
   190cc:	00000013          	nop
   190d0:	00000013          	nop
   190d4:	00b00113          	li	sp,11
   190d8:	002081b3          	add	gp,ra,sp
   190dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   190e0:	00200293          	li	t0,2
   190e4:	fe5212e3          	bne	tp,t0,190c8 <test_28+0x4>
   190e8:	01a00e93          	li	t4,26
   190ec:	01c00e13          	li	t3,28
   190f0:	17d19463          	bne	gp,t4,19258 <fail>

000190f4 <test_29>:
   190f4:	00000213          	li	tp,0
   190f8:	00b00113          	li	sp,11
   190fc:	00d00093          	li	ra,13
   19100:	002081b3          	add	gp,ra,sp
   19104:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19108:	00200293          	li	t0,2
   1910c:	fe5216e3          	bne	tp,t0,190f8 <test_29+0x4>
   19110:	01800e93          	li	t4,24
   19114:	01d00e13          	li	t3,29
   19118:	15d19063          	bne	gp,t4,19258 <fail>

0001911c <test_30>:
   1911c:	00000213          	li	tp,0
   19120:	00b00113          	li	sp,11
   19124:	00e00093          	li	ra,14
   19128:	00000013          	nop
   1912c:	002081b3          	add	gp,ra,sp
   19130:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19134:	00200293          	li	t0,2
   19138:	fe5214e3          	bne	tp,t0,19120 <test_30+0x4>
   1913c:	01900e93          	li	t4,25
   19140:	01e00e13          	li	t3,30
   19144:	11d19a63          	bne	gp,t4,19258 <fail>

00019148 <test_31>:
   19148:	00000213          	li	tp,0
   1914c:	00b00113          	li	sp,11
   19150:	00f00093          	li	ra,15
   19154:	00000013          	nop
   19158:	00000013          	nop
   1915c:	002081b3          	add	gp,ra,sp
   19160:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19164:	00200293          	li	t0,2
   19168:	fe5212e3          	bne	tp,t0,1914c <test_31+0x4>
   1916c:	01a00e93          	li	t4,26
   19170:	01f00e13          	li	t3,31
   19174:	0fd19263          	bne	gp,t4,19258 <fail>

00019178 <test_32>:
   19178:	00000213          	li	tp,0
   1917c:	00b00113          	li	sp,11
   19180:	00000013          	nop
   19184:	00d00093          	li	ra,13
   19188:	002081b3          	add	gp,ra,sp
   1918c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19190:	00200293          	li	t0,2
   19194:	fe5214e3          	bne	tp,t0,1917c <test_32+0x4>
   19198:	01800e93          	li	t4,24
   1919c:	02000e13          	li	t3,32
   191a0:	0bd19c63          	bne	gp,t4,19258 <fail>

000191a4 <test_33>:
   191a4:	00000213          	li	tp,0
   191a8:	00b00113          	li	sp,11
   191ac:	00000013          	nop
   191b0:	00e00093          	li	ra,14
   191b4:	00000013          	nop
   191b8:	002081b3          	add	gp,ra,sp
   191bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   191c0:	00200293          	li	t0,2
   191c4:	fe5212e3          	bne	tp,t0,191a8 <test_33+0x4>
   191c8:	01900e93          	li	t4,25
   191cc:	02100e13          	li	t3,33
   191d0:	09d19463          	bne	gp,t4,19258 <fail>

000191d4 <test_34>:
   191d4:	00000213          	li	tp,0
   191d8:	00b00113          	li	sp,11
   191dc:	00000013          	nop
   191e0:	00000013          	nop
   191e4:	00f00093          	li	ra,15
   191e8:	002081b3          	add	gp,ra,sp
   191ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   191f0:	00200293          	li	t0,2
   191f4:	fe5212e3          	bne	tp,t0,191d8 <test_34+0x4>
   191f8:	01a00e93          	li	t4,26
   191fc:	02200e13          	li	t3,34
   19200:	05d19c63          	bne	gp,t4,19258 <fail>

00019204 <test_35>:
   19204:	00f00093          	li	ra,15
   19208:	00100133          	add	sp,zero,ra
   1920c:	00f00e93          	li	t4,15
   19210:	02300e13          	li	t3,35
   19214:	05d11263          	bne	sp,t4,19258 <fail>

00019218 <test_36>:
   19218:	02000093          	li	ra,32
   1921c:	00008133          	add	sp,ra,zero
   19220:	02000e93          	li	t4,32
   19224:	02400e13          	li	t3,36
   19228:	03d11863          	bne	sp,t4,19258 <fail>

0001922c <test_37>:
   1922c:	000000b3          	add	ra,zero,zero
   19230:	00000e93          	li	t4,0
   19234:	02500e13          	li	t3,37
   19238:	03d09063          	bne	ra,t4,19258 <fail>

0001923c <test_38>:
   1923c:	01000093          	li	ra,16
   19240:	01e00113          	li	sp,30
   19244:	00208033          	add	zero,ra,sp
   19248:	00000e93          	li	t4,0
   1924c:	02600e13          	li	t3,38
   19250:	01d01463          	bne	zero,t4,19258 <fail>
   19254:	05c01063          	bne	zero,t3,19294 <pass>

00019258 <fail>:
   19258:	0ff00513          	li	a0,255

0001925c <.delay_fail>:
   1925c:	fff50513          	addi	a0,a0,-1
   19260:	fe051ee3          	bnez	a0,1925c <.delay_fail>
   19264:	02000537          	lui	a0,0x2000
   19268:	04500593          	li	a1,69
   1926c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   19270:	05200613          	li	a2,82
   19274:	00c52023          	sw	a2,0(a0)
   19278:	00c52023          	sw	a2,0(a0)
   1927c:	04f00693          	li	a3,79
   19280:	00d52023          	sw	a3,0(a0)
   19284:	00c52023          	sw	a2,0(a0)
   19288:	02000713          	li	a4,32
   1928c:	00e52023          	sw	a4,0(a0)
   19290:	ec1f606f          	j	10150 <add_ret>

00019294 <pass>:
   19294:	0ff00513          	li	a0,255

00019298 <.delay_ok>:
   19298:	fff50513          	addi	a0,a0,-1
   1929c:	fe051ee3          	bnez	a0,19298 <.delay_ok>
   192a0:	02000537          	lui	a0,0x2000
   192a4:	04f00593          	li	a1,79
   192a8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   192ac:	04b00613          	li	a2,75
   192b0:	00c52023          	sw	a2,0(a0)
   192b4:	02000713          	li	a4,32
   192b8:	00e52023          	sw	a4,0(a0)
   192bc:	e95f606f          	j	10150 <add_ret>

000192c0 <andi>:
   192c0:	00008537          	lui	a0,0x8
   192c4:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   192c8:	00a00693          	li	a3,10
   192cc:	00100713          	li	a4,1

000192d0 <.delay_pr>:
   192d0:	fff50513          	addi	a0,a0,-1
   192d4:	fe051ee3          	bnez	a0,192d0 <.delay_pr>
   192d8:	00019537          	lui	a0,0x19
   192dc:	2fc50513          	addi	a0,a0,764 # 192fc <.test_name>
   192e0:	02000637          	lui	a2,0x2000

000192e4 <.prname_next>:
   192e4:	00050583          	lb	a1,0(a0)
   192e8:	00058e63          	beqz	a1,19304 <.prname_done>
   192ec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   192f0:	00150513          	addi	a0,a0,1
   192f4:	40e686b3          	sub	a3,a3,a4
   192f8:	fedff06f          	j	192e4 <.prname_next>

000192fc <.test_name>:
   192fc:	6e61                	lui	t3,0x18
   192fe:	6964                	flw	fs1,84(a0)
   19300:	0000                	unimp
	...

00019304 <.prname_done>:
   19304:	02e00593          	li	a1,46

00019308 <.loop>:
   19308:	00b62023          	sw	a1,0(a2)
   1930c:	40e686b3          	sub	a3,a3,a4
   19310:	00068463          	beqz	a3,19318 <test_2>
   19314:	ff5ff0ef          	jal	ra,19308 <.loop>

00019318 <test_2>:
   19318:	ff0100b7          	lui	ra,0xff010
   1931c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   19320:	f0f0f193          	andi	gp,ra,-241
   19324:	ff010eb7          	lui	t4,0xff010
   19328:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   1932c:	00200e13          	li	t3,2
   19330:	1bd19463          	bne	gp,t4,194d8 <fail>

00019334 <test_3>:
   19334:	0ff010b7          	lui	ra,0xff01
   19338:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   1933c:	0f00f193          	andi	gp,ra,240
   19340:	0f000e93          	li	t4,240
   19344:	00300e13          	li	t3,3
   19348:	19d19863          	bne	gp,t4,194d8 <fail>

0001934c <test_4>:
   1934c:	00ff00b7          	lui	ra,0xff0
   19350:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   19354:	70f0f193          	andi	gp,ra,1807
   19358:	00f00e93          	li	t4,15
   1935c:	00400e13          	li	t3,4
   19360:	17d19c63          	bne	gp,t4,194d8 <fail>

00019364 <test_5>:
   19364:	f00ff0b7          	lui	ra,0xf00ff
   19368:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   1936c:	0f00f193          	andi	gp,ra,240
   19370:	00000e93          	li	t4,0
   19374:	00500e13          	li	t3,5
   19378:	17d19063          	bne	gp,t4,194d8 <fail>

0001937c <test_6>:
   1937c:	ff0100b7          	lui	ra,0xff010
   19380:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   19384:	0f00f093          	andi	ra,ra,240
   19388:	00000e93          	li	t4,0
   1938c:	00600e13          	li	t3,6
   19390:	15d09463          	bne	ra,t4,194d8 <fail>

00019394 <test_7>:
   19394:	00000213          	li	tp,0
   19398:	0ff010b7          	lui	ra,0xff01
   1939c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   193a0:	70f0f193          	andi	gp,ra,1807
   193a4:	00018313          	mv	t1,gp
   193a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   193ac:	00200293          	li	t0,2
   193b0:	fe5214e3          	bne	tp,t0,19398 <test_7+0x4>
   193b4:	70000e93          	li	t4,1792
   193b8:	00700e13          	li	t3,7
   193bc:	11d31e63          	bne	t1,t4,194d8 <fail>

000193c0 <test_8>:
   193c0:	00000213          	li	tp,0
   193c4:	00ff00b7          	lui	ra,0xff0
   193c8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   193cc:	0f00f193          	andi	gp,ra,240
   193d0:	00000013          	nop
   193d4:	00018313          	mv	t1,gp
   193d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   193dc:	00200293          	li	t0,2
   193e0:	fe5212e3          	bne	tp,t0,193c4 <test_8+0x4>
   193e4:	0f000e93          	li	t4,240
   193e8:	00800e13          	li	t3,8
   193ec:	0fd31663          	bne	t1,t4,194d8 <fail>

000193f0 <test_9>:
   193f0:	00000213          	li	tp,0
   193f4:	f00ff0b7          	lui	ra,0xf00ff
   193f8:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   193fc:	f0f0f193          	andi	gp,ra,-241
   19400:	00000013          	nop
   19404:	00000013          	nop
   19408:	00018313          	mv	t1,gp
   1940c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19410:	00200293          	li	t0,2
   19414:	fe5210e3          	bne	tp,t0,193f4 <test_9+0x4>
   19418:	f00ffeb7          	lui	t4,0xf00ff
   1941c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   19420:	00900e13          	li	t3,9
   19424:	0bd31a63          	bne	t1,t4,194d8 <fail>

00019428 <test_10>:
   19428:	00000213          	li	tp,0
   1942c:	0ff010b7          	lui	ra,0xff01
   19430:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   19434:	70f0f193          	andi	gp,ra,1807
   19438:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1943c:	00200293          	li	t0,2
   19440:	fe5216e3          	bne	tp,t0,1942c <test_10+0x4>
   19444:	70000e93          	li	t4,1792
   19448:	00a00e13          	li	t3,10
   1944c:	09d19663          	bne	gp,t4,194d8 <fail>

00019450 <test_11>:
   19450:	00000213          	li	tp,0
   19454:	00ff00b7          	lui	ra,0xff0
   19458:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   1945c:	00000013          	nop
   19460:	0f00f193          	andi	gp,ra,240
   19464:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19468:	00200293          	li	t0,2
   1946c:	fe5214e3          	bne	tp,t0,19454 <test_11+0x4>
   19470:	0f000e93          	li	t4,240
   19474:	00b00e13          	li	t3,11
   19478:	07d19063          	bne	gp,t4,194d8 <fail>

0001947c <test_12>:
   1947c:	00000213          	li	tp,0
   19480:	f00ff0b7          	lui	ra,0xf00ff
   19484:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19488:	00000013          	nop
   1948c:	00000013          	nop
   19490:	70f0f193          	andi	gp,ra,1807
   19494:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19498:	00200293          	li	t0,2
   1949c:	fe5212e3          	bne	tp,t0,19480 <test_12+0x4>
   194a0:	00f00e93          	li	t4,15
   194a4:	00c00e13          	li	t3,12
   194a8:	03d19863          	bne	gp,t4,194d8 <fail>

000194ac <test_13>:
   194ac:	0f007093          	andi	ra,zero,240
   194b0:	00000e93          	li	t4,0
   194b4:	00d00e13          	li	t3,13
   194b8:	03d09063          	bne	ra,t4,194d8 <fail>

000194bc <test_14>:
   194bc:	00ff00b7          	lui	ra,0xff0
   194c0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   194c4:	70f0f013          	andi	zero,ra,1807
   194c8:	00000e93          	li	t4,0
   194cc:	00e00e13          	li	t3,14
   194d0:	01d01463          	bne	zero,t4,194d8 <fail>
   194d4:	05c01063          	bne	zero,t3,19514 <pass>

000194d8 <fail>:
   194d8:	0ff00513          	li	a0,255

000194dc <.delay_fail>:
   194dc:	fff50513          	addi	a0,a0,-1
   194e0:	fe051ee3          	bnez	a0,194dc <.delay_fail>
   194e4:	02000537          	lui	a0,0x2000
   194e8:	04500593          	li	a1,69
   194ec:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   194f0:	05200613          	li	a2,82
   194f4:	00c52023          	sw	a2,0(a0)
   194f8:	00c52023          	sw	a2,0(a0)
   194fc:	04f00693          	li	a3,79
   19500:	00d52023          	sw	a3,0(a0)
   19504:	00c52023          	sw	a2,0(a0)
   19508:	02000713          	li	a4,32
   1950c:	00e52023          	sw	a4,0(a0)
   19510:	c2df606f          	j	1013c <andi_ret>

00019514 <pass>:
   19514:	0ff00513          	li	a0,255

00019518 <.delay_ok>:
   19518:	fff50513          	addi	a0,a0,-1
   1951c:	fe051ee3          	bnez	a0,19518 <.delay_ok>
   19520:	02000537          	lui	a0,0x2000
   19524:	04f00593          	li	a1,79
   19528:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1952c:	04b00613          	li	a2,75
   19530:	00c52023          	sw	a2,0(a0)
   19534:	02000713          	li	a4,32
   19538:	00e52023          	sw	a4,0(a0)
   1953c:	c01f606f          	j	1013c <andi_ret>

00019540 <j>:
   19540:	00008537          	lui	a0,0x8
   19544:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   19548:	00a00693          	li	a3,10
   1954c:	00100713          	li	a4,1

00019550 <.delay_pr>:
   19550:	fff50513          	addi	a0,a0,-1
   19554:	fe051ee3          	bnez	a0,19550 <.delay_pr>
   19558:	00019537          	lui	a0,0x19
   1955c:	57c50513          	addi	a0,a0,1404 # 1957c <.test_name>
   19560:	02000637          	lui	a2,0x2000

00019564 <.prname_next>:
   19564:	00050583          	lb	a1,0(a0)
   19568:	00058c63          	beqz	a1,19580 <.prname_done>
   1956c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   19570:	00150513          	addi	a0,a0,1
   19574:	40e686b3          	sub	a3,a3,a4
   19578:	fedff06f          	j	19564 <.prname_next>

0001957c <.test_name>:
   1957c:	006a                	c.slli	zero,0x1a
	...

00019580 <.prname_done>:
   19580:	02e00593          	li	a1,46

00019584 <.loop>:
   19584:	00b62023          	sw	a1,0(a2)
   19588:	40e686b3          	sub	a3,a3,a4
   1958c:	00068463          	beqz	a3,19594 <.endloop>
   19590:	ff5ff0ef          	jal	ra,19584 <.loop>

00019594 <.endloop>:
   19594:	00200e13          	li	t3,2
   19598:	0080006f          	j	195a0 <test_2>
   1959c:	0340006f          	j	195d0 <fail>

000195a0 <test_2>:
   195a0:	00100093          	li	ra,1
   195a4:	0140006f          	j	195b8 <test_2+0x18>
   195a8:	00108093          	addi	ra,ra,1
   195ac:	00108093          	addi	ra,ra,1
   195b0:	00108093          	addi	ra,ra,1
   195b4:	00108093          	addi	ra,ra,1
   195b8:	00108093          	addi	ra,ra,1
   195bc:	00108093          	addi	ra,ra,1
   195c0:	00300e93          	li	t4,3
   195c4:	00300e13          	li	t3,3
   195c8:	01d09463          	bne	ra,t4,195d0 <fail>
   195cc:	05c01063          	bne	zero,t3,1960c <pass>

000195d0 <fail>:
   195d0:	0ff00513          	li	a0,255

000195d4 <.delay_fail>:
   195d4:	fff50513          	addi	a0,a0,-1
   195d8:	fe051ee3          	bnez	a0,195d4 <.delay_fail>
   195dc:	02000537          	lui	a0,0x2000
   195e0:	04500593          	li	a1,69
   195e4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   195e8:	05200613          	li	a2,82
   195ec:	00c52023          	sw	a2,0(a0)
   195f0:	00c52023          	sw	a2,0(a0)
   195f4:	04f00693          	li	a3,79
   195f8:	00d52023          	sw	a3,0(a0)
   195fc:	00c52023          	sw	a2,0(a0)
   19600:	02000713          	li	a4,32
   19604:	00e52023          	sw	a4,0(a0)
   19608:	ad1f606f          	j	100d8 <j_ret>

0001960c <pass>:
   1960c:	0ff00513          	li	a0,255

00019610 <.delay_ok>:
   19610:	fff50513          	addi	a0,a0,-1
   19614:	fe051ee3          	bnez	a0,19610 <.delay_ok>
   19618:	02000537          	lui	a0,0x2000
   1961c:	04f00593          	li	a1,79
   19620:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   19624:	04b00613          	li	a2,75
   19628:	00c52023          	sw	a2,0(a0)
   1962c:	02000713          	li	a4,32
   19630:	00e52023          	sw	a4,0(a0)
   19634:	aa5f606f          	j	100d8 <j_ret>

00019638 <xori>:
   19638:	00008537          	lui	a0,0x8
   1963c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   19640:	00a00693          	li	a3,10
   19644:	00100713          	li	a4,1

00019648 <.delay_pr>:
   19648:	fff50513          	addi	a0,a0,-1
   1964c:	fe051ee3          	bnez	a0,19648 <.delay_pr>
   19650:	00019537          	lui	a0,0x19
   19654:	67450513          	addi	a0,a0,1652 # 19674 <.test_name>
   19658:	02000637          	lui	a2,0x2000

0001965c <.prname_next>:
   1965c:	00050583          	lb	a1,0(a0)
   19660:	00058e63          	beqz	a1,1967c <.prname_done>
   19664:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   19668:	00150513          	addi	a0,a0,1
   1966c:	40e686b3          	sub	a3,a3,a4
   19670:	fedff06f          	j	1965c <.prname_next>

00019674 <.test_name>:
   19674:	6f78                	flw	fa4,92(a4)
   19676:	6972                	flw	fs2,28(sp)
   19678:	0000                	unimp
	...

0001967c <.prname_done>:
   1967c:	02e00593          	li	a1,46

00019680 <.loop>:
   19680:	00b62023          	sw	a1,0(a2)
   19684:	40e686b3          	sub	a3,a3,a4
   19688:	00068463          	beqz	a3,19690 <test_2>
   1968c:	ff5ff0ef          	jal	ra,19680 <.loop>

00019690 <test_2>:
   19690:	00ff10b7          	lui	ra,0xff1
   19694:	f0008093          	addi	ra,ra,-256 # ff0f00 <_etext+0xfd6798>
   19698:	f0f0c193          	xori	gp,ra,-241
   1969c:	ff00feb7          	lui	t4,0xff00f
   196a0:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   196a4:	00200e13          	li	t3,2
   196a8:	1dd19663          	bne	gp,t4,19874 <fail>

000196ac <test_3>:
   196ac:	0ff010b7          	lui	ra,0xff01
   196b0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   196b4:	0f00c193          	xori	gp,ra,240
   196b8:	0ff01eb7          	lui	t4,0xff01
   196bc:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee6798>
   196c0:	00300e13          	li	t3,3
   196c4:	1bd19863          	bne	gp,t4,19874 <fail>

000196c8 <test_4>:
   196c8:	00ff10b7          	lui	ra,0xff1
   196cc:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd6197>
   196d0:	70f0c193          	xori	gp,ra,1807
   196d4:	00ff1eb7          	lui	t4,0xff1
   196d8:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd6888>
   196dc:	00400e13          	li	t3,4
   196e0:	19d19a63          	bne	gp,t4,19874 <fail>

000196e4 <test_5>:
   196e4:	f00ff0b7          	lui	ra,0xf00ff
   196e8:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   196ec:	0f00c193          	xori	gp,ra,240
   196f0:	f00ffeb7          	lui	t4,0xf00ff
   196f4:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   196f8:	00500e13          	li	t3,5
   196fc:	17d19c63          	bne	gp,t4,19874 <fail>

00019700 <test_6>:
   19700:	ff00f0b7          	lui	ra,0xff00f
   19704:	70008093          	addi	ra,ra,1792 # ff00f700 <_edata+0x7f00f690>
   19708:	70f0c093          	xori	ra,ra,1807
   1970c:	ff00feb7          	lui	t4,0xff00f
   19710:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   19714:	00600e13          	li	t3,6
   19718:	15d09e63          	bne	ra,t4,19874 <fail>

0001971c <test_7>:
   1971c:	00000213          	li	tp,0
   19720:	0ff010b7          	lui	ra,0xff01
   19724:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   19728:	0f00c193          	xori	gp,ra,240
   1972c:	00018313          	mv	t1,gp
   19730:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19734:	00200293          	li	t0,2
   19738:	fe5214e3          	bne	tp,t0,19720 <test_7+0x4>
   1973c:	0ff01eb7          	lui	t4,0xff01
   19740:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee6798>
   19744:	00700e13          	li	t3,7
   19748:	13d31663          	bne	t1,t4,19874 <fail>

0001974c <test_8>:
   1974c:	00000213          	li	tp,0
   19750:	00ff10b7          	lui	ra,0xff1
   19754:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd6197>
   19758:	70f0c193          	xori	gp,ra,1807
   1975c:	00000013          	nop
   19760:	00018313          	mv	t1,gp
   19764:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19768:	00200293          	li	t0,2
   1976c:	fe5212e3          	bne	tp,t0,19750 <test_8+0x4>
   19770:	00ff1eb7          	lui	t4,0xff1
   19774:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd6888>
   19778:	00800e13          	li	t3,8
   1977c:	0fd31c63          	bne	t1,t4,19874 <fail>

00019780 <test_9>:
   19780:	00000213          	li	tp,0
   19784:	f00ff0b7          	lui	ra,0xf00ff
   19788:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   1978c:	0f00c193          	xori	gp,ra,240
   19790:	00000013          	nop
   19794:	00000013          	nop
   19798:	00018313          	mv	t1,gp
   1979c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   197a0:	00200293          	li	t0,2
   197a4:	fe5210e3          	bne	tp,t0,19784 <test_9+0x4>
   197a8:	f00ffeb7          	lui	t4,0xf00ff
   197ac:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   197b0:	00900e13          	li	t3,9
   197b4:	0dd31063          	bne	t1,t4,19874 <fail>

000197b8 <test_10>:
   197b8:	00000213          	li	tp,0
   197bc:	0ff010b7          	lui	ra,0xff01
   197c0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6888>
   197c4:	0f00c193          	xori	gp,ra,240
   197c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   197cc:	00200293          	li	t0,2
   197d0:	fe5216e3          	bne	tp,t0,197bc <test_10+0x4>
   197d4:	0ff01eb7          	lui	t4,0xff01
   197d8:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee6798>
   197dc:	00a00e13          	li	t3,10
   197e0:	09d19a63          	bne	gp,t4,19874 <fail>

000197e4 <test_11>:
   197e4:	00000213          	li	tp,0
   197e8:	00ff10b7          	lui	ra,0xff1
   197ec:	fff08093          	addi	ra,ra,-1 # ff0fff <_etext+0xfd6897>
   197f0:	00000013          	nop
   197f4:	00f0c193          	xori	gp,ra,15
   197f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   197fc:	00200293          	li	t0,2
   19800:	fe5214e3          	bne	tp,t0,197e8 <test_11+0x4>
   19804:	00ff1eb7          	lui	t4,0xff1
   19808:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd6888>
   1980c:	00b00e13          	li	t3,11
   19810:	07d19263          	bne	gp,t4,19874 <fail>

00019814 <test_12>:
   19814:	00000213          	li	tp,0
   19818:	f00ff0b7          	lui	ra,0xf00ff
   1981c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19820:	00000013          	nop
   19824:	00000013          	nop
   19828:	0f00c193          	xori	gp,ra,240
   1982c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19830:	00200293          	li	t0,2
   19834:	fe5212e3          	bne	tp,t0,19818 <test_12+0x4>
   19838:	f00ffeb7          	lui	t4,0xf00ff
   1983c:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   19840:	00c00e13          	li	t3,12
   19844:	03d19863          	bne	gp,t4,19874 <fail>

00019848 <test_13>:
   19848:	0f004093          	xori	ra,zero,240
   1984c:	0f000e93          	li	t4,240
   19850:	00d00e13          	li	t3,13
   19854:	03d09063          	bne	ra,t4,19874 <fail>

00019858 <test_14>:
   19858:	00ff00b7          	lui	ra,0xff0
   1985c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5997>
   19860:	70f0c013          	xori	zero,ra,1807
   19864:	00000e93          	li	t4,0
   19868:	00e00e13          	li	t3,14
   1986c:	01d01463          	bne	zero,t4,19874 <fail>
   19870:	05c01063          	bne	zero,t3,198b0 <pass>

00019874 <fail>:
   19874:	0ff00513          	li	a0,255

00019878 <.delay_fail>:
   19878:	fff50513          	addi	a0,a0,-1
   1987c:	fe051ee3          	bnez	a0,19878 <.delay_fail>
   19880:	02000537          	lui	a0,0x2000
   19884:	04500593          	li	a1,69
   19888:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1988c:	05200613          	li	a2,82
   19890:	00c52023          	sw	a2,0(a0)
   19894:	00c52023          	sw	a2,0(a0)
   19898:	04f00693          	li	a3,79
   1989c:	00d52023          	sw	a3,0(a0)
   198a0:	00c52023          	sw	a2,0(a0)
   198a4:	02000713          	li	a4,32
   198a8:	00e52023          	sw	a4,0(a0)
   198ac:	889f606f          	j	10134 <xori_ret>

000198b0 <pass>:
   198b0:	0ff00513          	li	a0,255

000198b4 <.delay_ok>:
   198b4:	fff50513          	addi	a0,a0,-1
   198b8:	fe051ee3          	bnez	a0,198b4 <.delay_ok>
   198bc:	02000537          	lui	a0,0x2000
   198c0:	04f00593          	li	a1,79
   198c4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   198c8:	04b00613          	li	a2,75
   198cc:	00c52023          	sw	a2,0(a0)
   198d0:	02000713          	li	a4,32
   198d4:	00e52023          	sw	a4,0(a0)
   198d8:	85df606f          	j	10134 <xori_ret>

000198dc <blt>:
   198dc:	00008537          	lui	a0,0x8
   198e0:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   198e4:	00a00693          	li	a3,10
   198e8:	00100713          	li	a4,1

000198ec <.delay_pr>:
   198ec:	fff50513          	addi	a0,a0,-1
   198f0:	fe051ee3          	bnez	a0,198ec <.delay_pr>
   198f4:	0001a537          	lui	a0,0x1a
   198f8:	91850513          	addi	a0,a0,-1768 # 19918 <.test_name>
   198fc:	02000637          	lui	a2,0x2000

00019900 <.prname_next>:
   19900:	00050583          	lb	a1,0(a0)
   19904:	00058c63          	beqz	a1,1991c <.prname_done>
   19908:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   1990c:	00150513          	addi	a0,a0,1
   19910:	40e686b3          	sub	a3,a3,a4
   19914:	fedff06f          	j	19900 <.prname_next>

00019918 <.test_name>:
   19918:	6c62                	flw	fs8,24(sp)
   1991a:	0074                	addi	a3,sp,12

0001991c <.prname_done>:
   1991c:	02e00593          	li	a1,46

00019920 <.loop>:
   19920:	00b62023          	sw	a1,0(a2)
   19924:	40e686b3          	sub	a3,a3,a4
   19928:	00068463          	beqz	a3,19930 <test_2>
   1992c:	ff5ff0ef          	jal	ra,19920 <.loop>

00019930 <test_2>:
   19930:	00200e13          	li	t3,2
   19934:	00000093          	li	ra,0
   19938:	00100113          	li	sp,1
   1993c:	0020c663          	blt	ra,sp,19948 <test_2+0x18>
   19940:	2bc01863          	bne	zero,t3,19bf0 <fail>
   19944:	01c01663          	bne	zero,t3,19950 <test_3>
   19948:	fe20cee3          	blt	ra,sp,19944 <test_2+0x14>
   1994c:	2bc01263          	bne	zero,t3,19bf0 <fail>

00019950 <test_3>:
   19950:	00300e13          	li	t3,3
   19954:	fff00093          	li	ra,-1
   19958:	00100113          	li	sp,1
   1995c:	0020c663          	blt	ra,sp,19968 <test_3+0x18>
   19960:	29c01863          	bne	zero,t3,19bf0 <fail>
   19964:	01c01663          	bne	zero,t3,19970 <test_4>
   19968:	fe20cee3          	blt	ra,sp,19964 <test_3+0x14>
   1996c:	29c01263          	bne	zero,t3,19bf0 <fail>

00019970 <test_4>:
   19970:	00400e13          	li	t3,4
   19974:	ffe00093          	li	ra,-2
   19978:	fff00113          	li	sp,-1
   1997c:	0020c663          	blt	ra,sp,19988 <test_4+0x18>
   19980:	27c01863          	bne	zero,t3,19bf0 <fail>
   19984:	01c01663          	bne	zero,t3,19990 <test_5>
   19988:	fe20cee3          	blt	ra,sp,19984 <test_4+0x14>
   1998c:	27c01263          	bne	zero,t3,19bf0 <fail>

00019990 <test_5>:
   19990:	00500e13          	li	t3,5
   19994:	00100093          	li	ra,1
   19998:	00000113          	li	sp,0
   1999c:	0020c463          	blt	ra,sp,199a4 <test_5+0x14>
   199a0:	01c01463          	bne	zero,t3,199a8 <test_5+0x18>
   199a4:	25c01663          	bne	zero,t3,19bf0 <fail>
   199a8:	fe20cee3          	blt	ra,sp,199a4 <test_5+0x14>

000199ac <test_6>:
   199ac:	00600e13          	li	t3,6
   199b0:	00100093          	li	ra,1
   199b4:	fff00113          	li	sp,-1
   199b8:	0020c463          	blt	ra,sp,199c0 <test_6+0x14>
   199bc:	01c01463          	bne	zero,t3,199c4 <test_6+0x18>
   199c0:	23c01863          	bne	zero,t3,19bf0 <fail>
   199c4:	fe20cee3          	blt	ra,sp,199c0 <test_6+0x14>

000199c8 <test_7>:
   199c8:	00700e13          	li	t3,7
   199cc:	fff00093          	li	ra,-1
   199d0:	ffe00113          	li	sp,-2
   199d4:	0020c463          	blt	ra,sp,199dc <test_7+0x14>
   199d8:	01c01463          	bne	zero,t3,199e0 <test_7+0x18>
   199dc:	21c01a63          	bne	zero,t3,19bf0 <fail>
   199e0:	fe20cee3          	blt	ra,sp,199dc <test_7+0x14>

000199e4 <test_8>:
   199e4:	00800e13          	li	t3,8
   199e8:	00100093          	li	ra,1
   199ec:	ffe00113          	li	sp,-2
   199f0:	0020c463          	blt	ra,sp,199f8 <test_8+0x14>
   199f4:	01c01463          	bne	zero,t3,199fc <test_8+0x18>
   199f8:	1fc01c63          	bne	zero,t3,19bf0 <fail>
   199fc:	fe20cee3          	blt	ra,sp,199f8 <test_8+0x14>

00019a00 <test_9>:
   19a00:	00900e13          	li	t3,9
   19a04:	00000213          	li	tp,0
   19a08:	00000093          	li	ra,0
   19a0c:	fff00113          	li	sp,-1
   19a10:	1e20c063          	blt	ra,sp,19bf0 <fail>
   19a14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a18:	00200293          	li	t0,2
   19a1c:	fe5216e3          	bne	tp,t0,19a08 <test_9+0x8>

00019a20 <test_10>:
   19a20:	00a00e13          	li	t3,10
   19a24:	00000213          	li	tp,0
   19a28:	00000093          	li	ra,0
   19a2c:	fff00113          	li	sp,-1
   19a30:	00000013          	nop
   19a34:	1a20ce63          	blt	ra,sp,19bf0 <fail>
   19a38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a3c:	00200293          	li	t0,2
   19a40:	fe5214e3          	bne	tp,t0,19a28 <test_10+0x8>

00019a44 <test_11>:
   19a44:	00b00e13          	li	t3,11
   19a48:	00000213          	li	tp,0
   19a4c:	00000093          	li	ra,0
   19a50:	fff00113          	li	sp,-1
   19a54:	00000013          	nop
   19a58:	00000013          	nop
   19a5c:	1820ca63          	blt	ra,sp,19bf0 <fail>
   19a60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a64:	00200293          	li	t0,2
   19a68:	fe5212e3          	bne	tp,t0,19a4c <test_11+0x8>

00019a6c <test_12>:
   19a6c:	00c00e13          	li	t3,12
   19a70:	00000213          	li	tp,0
   19a74:	00000093          	li	ra,0
   19a78:	00000013          	nop
   19a7c:	fff00113          	li	sp,-1
   19a80:	1620c863          	blt	ra,sp,19bf0 <fail>
   19a84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a88:	00200293          	li	t0,2
   19a8c:	fe5214e3          	bne	tp,t0,19a74 <test_12+0x8>

00019a90 <test_13>:
   19a90:	00d00e13          	li	t3,13
   19a94:	00000213          	li	tp,0
   19a98:	00000093          	li	ra,0
   19a9c:	00000013          	nop
   19aa0:	fff00113          	li	sp,-1
   19aa4:	00000013          	nop
   19aa8:	1420c463          	blt	ra,sp,19bf0 <fail>
   19aac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ab0:	00200293          	li	t0,2
   19ab4:	fe5212e3          	bne	tp,t0,19a98 <test_13+0x8>

00019ab8 <test_14>:
   19ab8:	00e00e13          	li	t3,14
   19abc:	00000213          	li	tp,0
   19ac0:	00000093          	li	ra,0
   19ac4:	00000013          	nop
   19ac8:	00000013          	nop
   19acc:	fff00113          	li	sp,-1
   19ad0:	1220c063          	blt	ra,sp,19bf0 <fail>
   19ad4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ad8:	00200293          	li	t0,2
   19adc:	fe5212e3          	bne	tp,t0,19ac0 <test_14+0x8>

00019ae0 <test_15>:
   19ae0:	00f00e13          	li	t3,15
   19ae4:	00000213          	li	tp,0
   19ae8:	00000093          	li	ra,0
   19aec:	fff00113          	li	sp,-1
   19af0:	1020c063          	blt	ra,sp,19bf0 <fail>
   19af4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19af8:	00200293          	li	t0,2
   19afc:	fe5216e3          	bne	tp,t0,19ae8 <test_15+0x8>

00019b00 <test_16>:
   19b00:	01000e13          	li	t3,16
   19b04:	00000213          	li	tp,0
   19b08:	00000093          	li	ra,0
   19b0c:	fff00113          	li	sp,-1
   19b10:	00000013          	nop
   19b14:	0c20ce63          	blt	ra,sp,19bf0 <fail>
   19b18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19b1c:	00200293          	li	t0,2
   19b20:	fe5214e3          	bne	tp,t0,19b08 <test_16+0x8>

00019b24 <test_17>:
   19b24:	01100e13          	li	t3,17
   19b28:	00000213          	li	tp,0
   19b2c:	00000093          	li	ra,0
   19b30:	fff00113          	li	sp,-1
   19b34:	00000013          	nop
   19b38:	00000013          	nop
   19b3c:	0a20ca63          	blt	ra,sp,19bf0 <fail>
   19b40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19b44:	00200293          	li	t0,2
   19b48:	fe5212e3          	bne	tp,t0,19b2c <test_17+0x8>

00019b4c <test_18>:
   19b4c:	01200e13          	li	t3,18
   19b50:	00000213          	li	tp,0
   19b54:	00000093          	li	ra,0
   19b58:	00000013          	nop
   19b5c:	fff00113          	li	sp,-1
   19b60:	0820c863          	blt	ra,sp,19bf0 <fail>
   19b64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19b68:	00200293          	li	t0,2
   19b6c:	fe5214e3          	bne	tp,t0,19b54 <test_18+0x8>

00019b70 <test_19>:
   19b70:	01300e13          	li	t3,19
   19b74:	00000213          	li	tp,0
   19b78:	00000093          	li	ra,0
   19b7c:	00000013          	nop
   19b80:	fff00113          	li	sp,-1
   19b84:	00000013          	nop
   19b88:	0620c463          	blt	ra,sp,19bf0 <fail>
   19b8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19b90:	00200293          	li	t0,2
   19b94:	fe5212e3          	bne	tp,t0,19b78 <test_19+0x8>

00019b98 <test_20>:
   19b98:	01400e13          	li	t3,20
   19b9c:	00000213          	li	tp,0
   19ba0:	00000093          	li	ra,0
   19ba4:	00000013          	nop
   19ba8:	00000013          	nop
   19bac:	fff00113          	li	sp,-1
   19bb0:	0420c063          	blt	ra,sp,19bf0 <fail>
   19bb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19bb8:	00200293          	li	t0,2
   19bbc:	fe5212e3          	bne	tp,t0,19ba0 <test_20+0x8>

00019bc0 <test_21>:
   19bc0:	00100093          	li	ra,1
   19bc4:	00104a63          	bgtz	ra,19bd8 <test_21+0x18>
   19bc8:	00108093          	addi	ra,ra,1
   19bcc:	00108093          	addi	ra,ra,1
   19bd0:	00108093          	addi	ra,ra,1
   19bd4:	00108093          	addi	ra,ra,1
   19bd8:	00108093          	addi	ra,ra,1
   19bdc:	00108093          	addi	ra,ra,1
   19be0:	00300e93          	li	t4,3
   19be4:	01500e13          	li	t3,21
   19be8:	01d09463          	bne	ra,t4,19bf0 <fail>
   19bec:	05c01063          	bne	zero,t3,19c2c <pass>

00019bf0 <fail>:
   19bf0:	0ff00513          	li	a0,255

00019bf4 <.delay_fail>:
   19bf4:	fff50513          	addi	a0,a0,-1
   19bf8:	fe051ee3          	bnez	a0,19bf4 <.delay_fail>
   19bfc:	02000537          	lui	a0,0x2000
   19c00:	04500593          	li	a1,69
   19c04:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   19c08:	05200613          	li	a2,82
   19c0c:	00c52023          	sw	a2,0(a0)
   19c10:	00c52023          	sw	a2,0(a0)
   19c14:	04f00693          	li	a3,79
   19c18:	00d52023          	sw	a3,0(a0)
   19c1c:	00c52023          	sw	a2,0(a0)
   19c20:	02000713          	li	a4,32
   19c24:	00e52023          	sw	a4,0(a0)
   19c28:	cc8f606f          	j	100f0 <blt_ret>

00019c2c <pass>:
   19c2c:	0ff00513          	li	a0,255

00019c30 <.delay_ok>:
   19c30:	fff50513          	addi	a0,a0,-1
   19c34:	fe051ee3          	bnez	a0,19c30 <.delay_ok>
   19c38:	02000537          	lui	a0,0x2000
   19c3c:	04f00593          	li	a1,79
   19c40:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   19c44:	04b00613          	li	a2,75
   19c48:	00c52023          	sw	a2,0(a0)
   19c4c:	02000713          	li	a4,32
   19c50:	00e52023          	sw	a4,0(a0)
   19c54:	c9cf606f          	j	100f0 <blt_ret>

00019c58 <mulh>:
   19c58:	00008537          	lui	a0,0x8
   19c5c:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   19c60:	00a00693          	li	a3,10
   19c64:	00100713          	li	a4,1

00019c68 <.delay_pr>:
   19c68:	fff50513          	addi	a0,a0,-1
   19c6c:	fe051ee3          	bnez	a0,19c68 <.delay_pr>
   19c70:	0001a537          	lui	a0,0x1a
   19c74:	c9450513          	addi	a0,a0,-876 # 19c94 <.test_name>
   19c78:	02000637          	lui	a2,0x2000

00019c7c <.prname_next>:
   19c7c:	00050583          	lb	a1,0(a0)
   19c80:	00058e63          	beqz	a1,19c9c <.prname_done>
   19c84:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   19c88:	00150513          	addi	a0,a0,1
   19c8c:	40e686b3          	sub	a3,a3,a4
   19c90:	fedff06f          	j	19c7c <.prname_next>

00019c94 <.test_name>:
   19c94:	756d                	lui	a0,0xffffb
   19c96:	686c                	flw	fa1,84(s0)
   19c98:	0000                	unimp
	...

00019c9c <.prname_done>:
   19c9c:	02e00593          	li	a1,46

00019ca0 <.loop>:
   19ca0:	00b62023          	sw	a1,0(a2)
   19ca4:	40e686b3          	sub	a3,a3,a4
   19ca8:	00068463          	beqz	a3,19cb0 <test_2>
   19cac:	ff5ff0ef          	jal	ra,19ca0 <.loop>

00019cb0 <test_2>:
   19cb0:	00000093          	li	ra,0
   19cb4:	00000113          	li	sp,0
   19cb8:	022091b3          	mulh	gp,ra,sp
   19cbc:	00000e93          	li	t4,0
   19cc0:	00200e13          	li	t3,2
   19cc4:	4bd19a63          	bne	gp,t4,1a178 <fail>

00019cc8 <test_3>:
   19cc8:	00100093          	li	ra,1
   19ccc:	00100113          	li	sp,1
   19cd0:	022091b3          	mulh	gp,ra,sp
   19cd4:	00000e93          	li	t4,0
   19cd8:	00300e13          	li	t3,3
   19cdc:	49d19e63          	bne	gp,t4,1a178 <fail>

00019ce0 <test_4>:
   19ce0:	00300093          	li	ra,3
   19ce4:	00700113          	li	sp,7
   19ce8:	022091b3          	mulh	gp,ra,sp
   19cec:	00000e93          	li	t4,0
   19cf0:	00400e13          	li	t3,4
   19cf4:	49d19263          	bne	gp,t4,1a178 <fail>

00019cf8 <test_5>:
   19cf8:	00000093          	li	ra,0
   19cfc:	ffff8137          	lui	sp,0xffff8
   19d00:	022091b3          	mulh	gp,ra,sp
   19d04:	00000e93          	li	t4,0
   19d08:	00500e13          	li	t3,5
   19d0c:	47d19663          	bne	gp,t4,1a178 <fail>

00019d10 <test_6>:
   19d10:	800000b7          	lui	ra,0x80000
   19d14:	00000113          	li	sp,0
   19d18:	022091b3          	mulh	gp,ra,sp
   19d1c:	00000e93          	li	t4,0
   19d20:	00600e13          	li	t3,6
   19d24:	45d19a63          	bne	gp,t4,1a178 <fail>

00019d28 <test_7>:
   19d28:	800000b7          	lui	ra,0x80000
   19d2c:	00000113          	li	sp,0
   19d30:	022091b3          	mulh	gp,ra,sp
   19d34:	00000e93          	li	t4,0
   19d38:	00700e13          	li	t3,7
   19d3c:	43d19e63          	bne	gp,t4,1a178 <fail>

00019d40 <test_30>:
   19d40:	aaaab0b7          	lui	ra,0xaaaab
   19d44:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19d48:	00030137          	lui	sp,0x30
   19d4c:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15715>
   19d50:	022091b3          	mulh	gp,ra,sp
   19d54:	ffff0eb7          	lui	t4,0xffff0
   19d58:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19d5c:	01e00e13          	li	t3,30
   19d60:	41d19c63          	bne	gp,t4,1a178 <fail>

00019d64 <test_31>:
   19d64:	000300b7          	lui	ra,0x30
   19d68:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15715>
   19d6c:	aaaab137          	lui	sp,0xaaaab
   19d70:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19d74:	022091b3          	mulh	gp,ra,sp
   19d78:	ffff0eb7          	lui	t4,0xffff0
   19d7c:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19d80:	01f00e13          	li	t3,31
   19d84:	3fd19a63          	bne	gp,t4,1a178 <fail>

00019d88 <test_32>:
   19d88:	ff0000b7          	lui	ra,0xff000
   19d8c:	ff000137          	lui	sp,0xff000
   19d90:	022091b3          	mulh	gp,ra,sp
   19d94:	00010eb7          	lui	t4,0x10
   19d98:	02000e13          	li	t3,32
   19d9c:	3dd19e63          	bne	gp,t4,1a178 <fail>

00019da0 <test_33>:
   19da0:	fff00093          	li	ra,-1
   19da4:	fff00113          	li	sp,-1
   19da8:	022091b3          	mulh	gp,ra,sp
   19dac:	00000e93          	li	t4,0
   19db0:	02100e13          	li	t3,33
   19db4:	3dd19263          	bne	gp,t4,1a178 <fail>

00019db8 <test_34>:
   19db8:	fff00093          	li	ra,-1
   19dbc:	00100113          	li	sp,1
   19dc0:	022091b3          	mulh	gp,ra,sp
   19dc4:	fff00e93          	li	t4,-1
   19dc8:	02200e13          	li	t3,34
   19dcc:	3bd19663          	bne	gp,t4,1a178 <fail>

00019dd0 <test_35>:
   19dd0:	00100093          	li	ra,1
   19dd4:	fff00113          	li	sp,-1
   19dd8:	022091b3          	mulh	gp,ra,sp
   19ddc:	fff00e93          	li	t4,-1
   19de0:	02300e13          	li	t3,35
   19de4:	39d19a63          	bne	gp,t4,1a178 <fail>

00019de8 <test_8>:
   19de8:	00d000b7          	lui	ra,0xd00
   19dec:	00b00137          	lui	sp,0xb00
   19df0:	022090b3          	mulh	ra,ra,sp
   19df4:	00009eb7          	lui	t4,0x9
   19df8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19dfc:	00800e13          	li	t3,8
   19e00:	37d09c63          	bne	ra,t4,1a178 <fail>

00019e04 <test_9>:
   19e04:	00e000b7          	lui	ra,0xe00
   19e08:	00b00137          	lui	sp,0xb00
   19e0c:	02209133          	mulh	sp,ra,sp
   19e10:	0000aeb7          	lui	t4,0xa
   19e14:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19e18:	00900e13          	li	t3,9
   19e1c:	35d11e63          	bne	sp,t4,1a178 <fail>

00019e20 <test_10>:
   19e20:	00d000b7          	lui	ra,0xd00
   19e24:	021090b3          	mulh	ra,ra,ra
   19e28:	0000beb7          	lui	t4,0xb
   19e2c:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   19e30:	00a00e13          	li	t3,10
   19e34:	35d09263          	bne	ra,t4,1a178 <fail>

00019e38 <test_11>:
   19e38:	00000213          	li	tp,0
   19e3c:	00d000b7          	lui	ra,0xd00
   19e40:	00b00137          	lui	sp,0xb00
   19e44:	022091b3          	mulh	gp,ra,sp
   19e48:	00018313          	mv	t1,gp
   19e4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e50:	00200293          	li	t0,2
   19e54:	fe5214e3          	bne	tp,t0,19e3c <test_11+0x4>
   19e58:	00009eb7          	lui	t4,0x9
   19e5c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19e60:	00b00e13          	li	t3,11
   19e64:	31d31a63          	bne	t1,t4,1a178 <fail>

00019e68 <test_12>:
   19e68:	00000213          	li	tp,0
   19e6c:	00e000b7          	lui	ra,0xe00
   19e70:	00b00137          	lui	sp,0xb00
   19e74:	022091b3          	mulh	gp,ra,sp
   19e78:	00000013          	nop
   19e7c:	00018313          	mv	t1,gp
   19e80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e84:	00200293          	li	t0,2
   19e88:	fe5212e3          	bne	tp,t0,19e6c <test_12+0x4>
   19e8c:	0000aeb7          	lui	t4,0xa
   19e90:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19e94:	00c00e13          	li	t3,12
   19e98:	2fd31063          	bne	t1,t4,1a178 <fail>

00019e9c <test_13>:
   19e9c:	00000213          	li	tp,0
   19ea0:	00f000b7          	lui	ra,0xf00
   19ea4:	00b00137          	lui	sp,0xb00
   19ea8:	022091b3          	mulh	gp,ra,sp
   19eac:	00000013          	nop
   19eb0:	00000013          	nop
   19eb4:	00018313          	mv	t1,gp
   19eb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ebc:	00200293          	li	t0,2
   19ec0:	fe5210e3          	bne	tp,t0,19ea0 <test_13+0x4>
   19ec4:	0000aeb7          	lui	t4,0xa
   19ec8:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19ecc:	00d00e13          	li	t3,13
   19ed0:	2bd31463          	bne	t1,t4,1a178 <fail>

00019ed4 <test_14>:
   19ed4:	00000213          	li	tp,0
   19ed8:	00d000b7          	lui	ra,0xd00
   19edc:	00b00137          	lui	sp,0xb00
   19ee0:	022091b3          	mulh	gp,ra,sp
   19ee4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ee8:	00200293          	li	t0,2
   19eec:	fe5216e3          	bne	tp,t0,19ed8 <test_14+0x4>
   19ef0:	00009eb7          	lui	t4,0x9
   19ef4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19ef8:	00e00e13          	li	t3,14
   19efc:	27d19e63          	bne	gp,t4,1a178 <fail>

00019f00 <test_15>:
   19f00:	00000213          	li	tp,0
   19f04:	00e000b7          	lui	ra,0xe00
   19f08:	00b00137          	lui	sp,0xb00
   19f0c:	00000013          	nop
   19f10:	022091b3          	mulh	gp,ra,sp
   19f14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f18:	00200293          	li	t0,2
   19f1c:	fe5214e3          	bne	tp,t0,19f04 <test_15+0x4>
   19f20:	0000aeb7          	lui	t4,0xa
   19f24:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19f28:	00f00e13          	li	t3,15
   19f2c:	25d19663          	bne	gp,t4,1a178 <fail>

00019f30 <test_16>:
   19f30:	00000213          	li	tp,0
   19f34:	00f000b7          	lui	ra,0xf00
   19f38:	00b00137          	lui	sp,0xb00
   19f3c:	00000013          	nop
   19f40:	00000013          	nop
   19f44:	022091b3          	mulh	gp,ra,sp
   19f48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f4c:	00200293          	li	t0,2
   19f50:	fe5212e3          	bne	tp,t0,19f34 <test_16+0x4>
   19f54:	0000aeb7          	lui	t4,0xa
   19f58:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19f5c:	01000e13          	li	t3,16
   19f60:	21d19c63          	bne	gp,t4,1a178 <fail>

00019f64 <test_17>:
   19f64:	00000213          	li	tp,0
   19f68:	00d000b7          	lui	ra,0xd00
   19f6c:	00000013          	nop
   19f70:	00b00137          	lui	sp,0xb00
   19f74:	022091b3          	mulh	gp,ra,sp
   19f78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f7c:	00200293          	li	t0,2
   19f80:	fe5214e3          	bne	tp,t0,19f68 <test_17+0x4>
   19f84:	00009eb7          	lui	t4,0x9
   19f88:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19f8c:	01100e13          	li	t3,17
   19f90:	1fd19463          	bne	gp,t4,1a178 <fail>

00019f94 <test_18>:
   19f94:	00000213          	li	tp,0
   19f98:	00e000b7          	lui	ra,0xe00
   19f9c:	00000013          	nop
   19fa0:	00b00137          	lui	sp,0xb00
   19fa4:	00000013          	nop
   19fa8:	022091b3          	mulh	gp,ra,sp
   19fac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19fb0:	00200293          	li	t0,2
   19fb4:	fe5212e3          	bne	tp,t0,19f98 <test_18+0x4>
   19fb8:	0000aeb7          	lui	t4,0xa
   19fbc:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19fc0:	01200e13          	li	t3,18
   19fc4:	1bd19a63          	bne	gp,t4,1a178 <fail>

00019fc8 <test_19>:
   19fc8:	00000213          	li	tp,0
   19fcc:	00f000b7          	lui	ra,0xf00
   19fd0:	00000013          	nop
   19fd4:	00000013          	nop
   19fd8:	00b00137          	lui	sp,0xb00
   19fdc:	022091b3          	mulh	gp,ra,sp
   19fe0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19fe4:	00200293          	li	t0,2
   19fe8:	fe5212e3          	bne	tp,t0,19fcc <test_19+0x4>
   19fec:	0000aeb7          	lui	t4,0xa
   19ff0:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19ff4:	01300e13          	li	t3,19
   19ff8:	19d19063          	bne	gp,t4,1a178 <fail>

00019ffc <test_20>:
   19ffc:	00000213          	li	tp,0
   1a000:	00b00137          	lui	sp,0xb00
   1a004:	00d000b7          	lui	ra,0xd00
   1a008:	022091b3          	mulh	gp,ra,sp
   1a00c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a010:	00200293          	li	t0,2
   1a014:	fe5216e3          	bne	tp,t0,1a000 <test_20+0x4>
   1a018:	00009eb7          	lui	t4,0x9
   1a01c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a020:	01400e13          	li	t3,20
   1a024:	15d19a63          	bne	gp,t4,1a178 <fail>

0001a028 <test_21>:
   1a028:	00000213          	li	tp,0
   1a02c:	00b00137          	lui	sp,0xb00
   1a030:	00e000b7          	lui	ra,0xe00
   1a034:	00000013          	nop
   1a038:	022091b3          	mulh	gp,ra,sp
   1a03c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a040:	00200293          	li	t0,2
   1a044:	fe5214e3          	bne	tp,t0,1a02c <test_21+0x4>
   1a048:	0000aeb7          	lui	t4,0xa
   1a04c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a050:	01500e13          	li	t3,21
   1a054:	13d19263          	bne	gp,t4,1a178 <fail>

0001a058 <test_22>:
   1a058:	00000213          	li	tp,0
   1a05c:	00b00137          	lui	sp,0xb00
   1a060:	00f000b7          	lui	ra,0xf00
   1a064:	00000013          	nop
   1a068:	00000013          	nop
   1a06c:	022091b3          	mulh	gp,ra,sp
   1a070:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a074:	00200293          	li	t0,2
   1a078:	fe5212e3          	bne	tp,t0,1a05c <test_22+0x4>
   1a07c:	0000aeb7          	lui	t4,0xa
   1a080:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a084:	01600e13          	li	t3,22
   1a088:	0fd19863          	bne	gp,t4,1a178 <fail>

0001a08c <test_23>:
   1a08c:	00000213          	li	tp,0
   1a090:	00b00137          	lui	sp,0xb00
   1a094:	00000013          	nop
   1a098:	00d000b7          	lui	ra,0xd00
   1a09c:	022091b3          	mulh	gp,ra,sp
   1a0a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a0a4:	00200293          	li	t0,2
   1a0a8:	fe5214e3          	bne	tp,t0,1a090 <test_23+0x4>
   1a0ac:	00009eb7          	lui	t4,0x9
   1a0b0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a0b4:	01700e13          	li	t3,23
   1a0b8:	0dd19063          	bne	gp,t4,1a178 <fail>

0001a0bc <test_24>:
   1a0bc:	00000213          	li	tp,0
   1a0c0:	00b00137          	lui	sp,0xb00
   1a0c4:	00000013          	nop
   1a0c8:	00e000b7          	lui	ra,0xe00
   1a0cc:	00000013          	nop
   1a0d0:	022091b3          	mulh	gp,ra,sp
   1a0d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a0d8:	00200293          	li	t0,2
   1a0dc:	fe5212e3          	bne	tp,t0,1a0c0 <test_24+0x4>
   1a0e0:	0000aeb7          	lui	t4,0xa
   1a0e4:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a0e8:	01800e13          	li	t3,24
   1a0ec:	09d19663          	bne	gp,t4,1a178 <fail>

0001a0f0 <test_25>:
   1a0f0:	00000213          	li	tp,0
   1a0f4:	00b00137          	lui	sp,0xb00
   1a0f8:	00000013          	nop
   1a0fc:	00000013          	nop
   1a100:	00f000b7          	lui	ra,0xf00
   1a104:	022091b3          	mulh	gp,ra,sp
   1a108:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a10c:	00200293          	li	t0,2
   1a110:	fe5212e3          	bne	tp,t0,1a0f4 <test_25+0x4>
   1a114:	0000aeb7          	lui	t4,0xa
   1a118:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a11c:	01900e13          	li	t3,25
   1a120:	05d19c63          	bne	gp,t4,1a178 <fail>

0001a124 <test_26>:
   1a124:	7c0000b7          	lui	ra,0x7c000
   1a128:	02101133          	mulh	sp,zero,ra
   1a12c:	00000e93          	li	t4,0
   1a130:	01a00e13          	li	t3,26
   1a134:	05d11263          	bne	sp,t4,1a178 <fail>

0001a138 <test_27>:
   1a138:	800000b7          	lui	ra,0x80000
   1a13c:	02009133          	mulh	sp,ra,zero
   1a140:	00000e93          	li	t4,0
   1a144:	01b00e13          	li	t3,27
   1a148:	03d11863          	bne	sp,t4,1a178 <fail>

0001a14c <test_28>:
   1a14c:	020010b3          	mulh	ra,zero,zero
   1a150:	00000e93          	li	t4,0
   1a154:	01c00e13          	li	t3,28
   1a158:	03d09063          	bne	ra,t4,1a178 <fail>

0001a15c <test_29>:
   1a15c:	021000b7          	lui	ra,0x2100
   1a160:	02200137          	lui	sp,0x2200
   1a164:	02209033          	mulh	zero,ra,sp
   1a168:	00000e93          	li	t4,0
   1a16c:	01d00e13          	li	t3,29
   1a170:	01d01463          	bne	zero,t4,1a178 <fail>
   1a174:	05c01063          	bne	zero,t3,1a1b4 <pass>

0001a178 <fail>:
   1a178:	0ff00513          	li	a0,255

0001a17c <.delay_fail>:
   1a17c:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1a180:	fe051ee3          	bnez	a0,1a17c <.delay_fail>
   1a184:	02000537          	lui	a0,0x2000
   1a188:	04500593          	li	a1,69
   1a18c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1a190:	05200613          	li	a2,82
   1a194:	00c52023          	sw	a2,0(a0)
   1a198:	00c52023          	sw	a2,0(a0)
   1a19c:	04f00693          	li	a3,79
   1a1a0:	00d52023          	sw	a3,0(a0)
   1a1a4:	00c52023          	sw	a2,0(a0)
   1a1a8:	02000713          	li	a4,32
   1a1ac:	00e52023          	sw	a4,0(a0)
   1a1b0:	fcdf506f          	j	1017c <mulh_ret>

0001a1b4 <pass>:
   1a1b4:	0ff00513          	li	a0,255

0001a1b8 <.delay_ok>:
   1a1b8:	fff50513          	addi	a0,a0,-1
   1a1bc:	fe051ee3          	bnez	a0,1a1b8 <.delay_ok>
   1a1c0:	02000537          	lui	a0,0x2000
   1a1c4:	04f00593          	li	a1,79
   1a1c8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1a1cc:	04b00613          	li	a2,75
   1a1d0:	00c52023          	sw	a2,0(a0)
   1a1d4:	02000713          	li	a4,32
   1a1d8:	00e52023          	sw	a4,0(a0)
   1a1dc:	fa1f506f          	j	1017c <mulh_ret>

0001a1e0 <mulhsu>:
   1a1e0:	00008537          	lui	a0,0x8
   1a1e4:	fff50513          	addi	a0,a0,-1 # 7fff <_start-0x8001>
   1a1e8:	00a00693          	li	a3,10
   1a1ec:	00100713          	li	a4,1

0001a1f0 <.delay_pr>:
   1a1f0:	fff50513          	addi	a0,a0,-1
   1a1f4:	fe051ee3          	bnez	a0,1a1f0 <.delay_pr>
   1a1f8:	0001a537          	lui	a0,0x1a
   1a1fc:	21c50513          	addi	a0,a0,540 # 1a21c <.test_name>
   1a200:	02000637          	lui	a2,0x2000

0001a204 <.prname_next>:
   1a204:	00050583          	lb	a1,0(a0)
   1a208:	00058e63          	beqz	a1,1a224 <.prname_done>
   1a20c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5898>
   1a210:	00150513          	addi	a0,a0,1
   1a214:	40e686b3          	sub	a3,a3,a4
   1a218:	fedff06f          	j	1a204 <.prname_next>

0001a21c <.test_name>:
   1a21c:	756d                	lui	a0,0xffffb
   1a21e:	686c                	flw	fa1,84(s0)
   1a220:	00007573          	csrrci	a0,ustatus,0

0001a224 <.prname_done>:
   1a224:	02e00593          	li	a1,46

0001a228 <.loop>:
   1a228:	00b62023          	sw	a1,0(a2)
   1a22c:	40e686b3          	sub	a3,a3,a4
   1a230:	00068463          	beqz	a3,1a238 <test_2>
   1a234:	ff5ff0ef          	jal	ra,1a228 <.loop>

0001a238 <test_2>:
   1a238:	00000093          	li	ra,0
   1a23c:	00000113          	li	sp,0
   1a240:	0220a1b3          	mulhsu	gp,ra,sp
   1a244:	00000e93          	li	t4,0
   1a248:	00200e13          	li	t3,2
   1a24c:	4bd19a63          	bne	gp,t4,1a700 <fail>

0001a250 <test_3>:
   1a250:	00100093          	li	ra,1
   1a254:	00100113          	li	sp,1
   1a258:	0220a1b3          	mulhsu	gp,ra,sp
   1a25c:	00000e93          	li	t4,0
   1a260:	00300e13          	li	t3,3
   1a264:	49d19e63          	bne	gp,t4,1a700 <fail>

0001a268 <test_4>:
   1a268:	00300093          	li	ra,3
   1a26c:	00700113          	li	sp,7
   1a270:	0220a1b3          	mulhsu	gp,ra,sp
   1a274:	00000e93          	li	t4,0
   1a278:	00400e13          	li	t3,4
   1a27c:	49d19263          	bne	gp,t4,1a700 <fail>

0001a280 <test_5>:
   1a280:	00000093          	li	ra,0
   1a284:	ffff8137          	lui	sp,0xffff8
   1a288:	0220a1b3          	mulhsu	gp,ra,sp
   1a28c:	00000e93          	li	t4,0
   1a290:	00500e13          	li	t3,5
   1a294:	47d19663          	bne	gp,t4,1a700 <fail>

0001a298 <test_6>:
   1a298:	800000b7          	lui	ra,0x80000
   1a29c:	00000113          	li	sp,0
   1a2a0:	0220a1b3          	mulhsu	gp,ra,sp
   1a2a4:	00000e93          	li	t4,0
   1a2a8:	00600e13          	li	t3,6
   1a2ac:	45d19a63          	bne	gp,t4,1a700 <fail>

0001a2b0 <test_7>:
   1a2b0:	800000b7          	lui	ra,0x80000
   1a2b4:	ffff8137          	lui	sp,0xffff8
   1a2b8:	0220a1b3          	mulhsu	gp,ra,sp
   1a2bc:	80004eb7          	lui	t4,0x80004
   1a2c0:	00700e13          	li	t3,7
   1a2c4:	43d19e63          	bne	gp,t4,1a700 <fail>

0001a2c8 <test_30>:
   1a2c8:	aaaab0b7          	lui	ra,0xaaaab
   1a2cc:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a2d0:	00030137          	lui	sp,0x30
   1a2d4:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15715>
   1a2d8:	0220a1b3          	mulhsu	gp,ra,sp
   1a2dc:	ffff0eb7          	lui	t4,0xffff0
   1a2e0:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   1a2e4:	01e00e13          	li	t3,30
   1a2e8:	41d19c63          	bne	gp,t4,1a700 <fail>

0001a2ec <test_31>:
   1a2ec:	000300b7          	lui	ra,0x30
   1a2f0:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15715>
   1a2f4:	aaaab137          	lui	sp,0xaaaab
   1a2f8:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a2fc:	0220a1b3          	mulhsu	gp,ra,sp
   1a300:	00020eb7          	lui	t4,0x20
   1a304:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x5796>
   1a308:	01f00e13          	li	t3,31
   1a30c:	3fd19a63          	bne	gp,t4,1a700 <fail>

0001a310 <test_32>:
   1a310:	ff0000b7          	lui	ra,0xff000
   1a314:	ff000137          	lui	sp,0xff000
   1a318:	0220a1b3          	mulhsu	gp,ra,sp
   1a31c:	ff010eb7          	lui	t4,0xff010
   1a320:	02000e13          	li	t3,32
   1a324:	3dd19e63          	bne	gp,t4,1a700 <fail>

0001a328 <test_33>:
   1a328:	fff00093          	li	ra,-1
   1a32c:	fff00113          	li	sp,-1
   1a330:	0220a1b3          	mulhsu	gp,ra,sp
   1a334:	fff00e93          	li	t4,-1
   1a338:	02100e13          	li	t3,33
   1a33c:	3dd19263          	bne	gp,t4,1a700 <fail>

0001a340 <test_34>:
   1a340:	fff00093          	li	ra,-1
   1a344:	00100113          	li	sp,1
   1a348:	0220a1b3          	mulhsu	gp,ra,sp
   1a34c:	fff00e93          	li	t4,-1
   1a350:	02200e13          	li	t3,34
   1a354:	3bd19663          	bne	gp,t4,1a700 <fail>

0001a358 <test_35>:
   1a358:	00100093          	li	ra,1
   1a35c:	fff00113          	li	sp,-1
   1a360:	0220a1b3          	mulhsu	gp,ra,sp
   1a364:	00000e93          	li	t4,0
   1a368:	02300e13          	li	t3,35
   1a36c:	39d19a63          	bne	gp,t4,1a700 <fail>

0001a370 <test_8>:
   1a370:	00d000b7          	lui	ra,0xd00
   1a374:	00b00137          	lui	sp,0xb00
   1a378:	0220a0b3          	mulhsu	ra,ra,sp
   1a37c:	00009eb7          	lui	t4,0x9
   1a380:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a384:	00800e13          	li	t3,8
   1a388:	37d09c63          	bne	ra,t4,1a700 <fail>

0001a38c <test_9>:
   1a38c:	00e000b7          	lui	ra,0xe00
   1a390:	00b00137          	lui	sp,0xb00
   1a394:	0220a133          	mulhsu	sp,ra,sp
   1a398:	0000aeb7          	lui	t4,0xa
   1a39c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a3a0:	00900e13          	li	t3,9
   1a3a4:	35d11e63          	bne	sp,t4,1a700 <fail>

0001a3a8 <test_10>:
   1a3a8:	00d000b7          	lui	ra,0xd00
   1a3ac:	0210a0b3          	mulhsu	ra,ra,ra
   1a3b0:	0000beb7          	lui	t4,0xb
   1a3b4:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   1a3b8:	00a00e13          	li	t3,10
   1a3bc:	35d09263          	bne	ra,t4,1a700 <fail>

0001a3c0 <test_11>:
   1a3c0:	00000213          	li	tp,0
   1a3c4:	00d000b7          	lui	ra,0xd00
   1a3c8:	00b00137          	lui	sp,0xb00
   1a3cc:	0220a1b3          	mulhsu	gp,ra,sp
   1a3d0:	00018313          	mv	t1,gp
   1a3d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a3d8:	00200293          	li	t0,2
   1a3dc:	fe5214e3          	bne	tp,t0,1a3c4 <test_11+0x4>
   1a3e0:	00009eb7          	lui	t4,0x9
   1a3e4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a3e8:	00b00e13          	li	t3,11
   1a3ec:	31d31a63          	bne	t1,t4,1a700 <fail>

0001a3f0 <test_12>:
   1a3f0:	00000213          	li	tp,0
   1a3f4:	00e000b7          	lui	ra,0xe00
   1a3f8:	00b00137          	lui	sp,0xb00
   1a3fc:	0220a1b3          	mulhsu	gp,ra,sp
   1a400:	00000013          	nop
   1a404:	00018313          	mv	t1,gp
   1a408:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a40c:	00200293          	li	t0,2
   1a410:	fe5212e3          	bne	tp,t0,1a3f4 <test_12+0x4>
   1a414:	0000aeb7          	lui	t4,0xa
   1a418:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a41c:	00c00e13          	li	t3,12
   1a420:	2fd31063          	bne	t1,t4,1a700 <fail>

0001a424 <test_13>:
   1a424:	00000213          	li	tp,0
   1a428:	00f000b7          	lui	ra,0xf00
   1a42c:	00b00137          	lui	sp,0xb00
   1a430:	0220a1b3          	mulhsu	gp,ra,sp
   1a434:	00000013          	nop
   1a438:	00000013          	nop
   1a43c:	00018313          	mv	t1,gp
   1a440:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a444:	00200293          	li	t0,2
   1a448:	fe5210e3          	bne	tp,t0,1a428 <test_13+0x4>
   1a44c:	0000aeb7          	lui	t4,0xa
   1a450:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a454:	00d00e13          	li	t3,13
   1a458:	2bd31463          	bne	t1,t4,1a700 <fail>

0001a45c <test_14>:
   1a45c:	00000213          	li	tp,0
   1a460:	00d000b7          	lui	ra,0xd00
   1a464:	00b00137          	lui	sp,0xb00
   1a468:	0220a1b3          	mulhsu	gp,ra,sp
   1a46c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a470:	00200293          	li	t0,2
   1a474:	fe5216e3          	bne	tp,t0,1a460 <test_14+0x4>
   1a478:	00009eb7          	lui	t4,0x9
   1a47c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a480:	00e00e13          	li	t3,14
   1a484:	27d19e63          	bne	gp,t4,1a700 <fail>

0001a488 <test_15>:
   1a488:	00000213          	li	tp,0
   1a48c:	00e000b7          	lui	ra,0xe00
   1a490:	00b00137          	lui	sp,0xb00
   1a494:	00000013          	nop
   1a498:	0220a1b3          	mulhsu	gp,ra,sp
   1a49c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4a0:	00200293          	li	t0,2
   1a4a4:	fe5214e3          	bne	tp,t0,1a48c <test_15+0x4>
   1a4a8:	0000aeb7          	lui	t4,0xa
   1a4ac:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a4b0:	00f00e13          	li	t3,15
   1a4b4:	25d19663          	bne	gp,t4,1a700 <fail>

0001a4b8 <test_16>:
   1a4b8:	00000213          	li	tp,0
   1a4bc:	00f000b7          	lui	ra,0xf00
   1a4c0:	00b00137          	lui	sp,0xb00
   1a4c4:	00000013          	nop
   1a4c8:	00000013          	nop
   1a4cc:	0220a1b3          	mulhsu	gp,ra,sp
   1a4d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4d4:	00200293          	li	t0,2
   1a4d8:	fe5212e3          	bne	tp,t0,1a4bc <test_16+0x4>
   1a4dc:	0000aeb7          	lui	t4,0xa
   1a4e0:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a4e4:	01000e13          	li	t3,16
   1a4e8:	21d19c63          	bne	gp,t4,1a700 <fail>

0001a4ec <test_17>:
   1a4ec:	00000213          	li	tp,0
   1a4f0:	00d000b7          	lui	ra,0xd00
   1a4f4:	00000013          	nop
   1a4f8:	00b00137          	lui	sp,0xb00
   1a4fc:	0220a1b3          	mulhsu	gp,ra,sp
   1a500:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a504:	00200293          	li	t0,2
   1a508:	fe5214e3          	bne	tp,t0,1a4f0 <test_17+0x4>
   1a50c:	00009eb7          	lui	t4,0x9
   1a510:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a514:	01100e13          	li	t3,17
   1a518:	1fd19463          	bne	gp,t4,1a700 <fail>

0001a51c <test_18>:
   1a51c:	00000213          	li	tp,0
   1a520:	00e000b7          	lui	ra,0xe00
   1a524:	00000013          	nop
   1a528:	00b00137          	lui	sp,0xb00
   1a52c:	00000013          	nop
   1a530:	0220a1b3          	mulhsu	gp,ra,sp
   1a534:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a538:	00200293          	li	t0,2
   1a53c:	fe5212e3          	bne	tp,t0,1a520 <test_18+0x4>
   1a540:	0000aeb7          	lui	t4,0xa
   1a544:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a548:	01200e13          	li	t3,18
   1a54c:	1bd19a63          	bne	gp,t4,1a700 <fail>

0001a550 <test_19>:
   1a550:	00000213          	li	tp,0
   1a554:	00f000b7          	lui	ra,0xf00
   1a558:	00000013          	nop
   1a55c:	00000013          	nop
   1a560:	00b00137          	lui	sp,0xb00
   1a564:	0220a1b3          	mulhsu	gp,ra,sp
   1a568:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a56c:	00200293          	li	t0,2
   1a570:	fe5212e3          	bne	tp,t0,1a554 <test_19+0x4>
   1a574:	0000aeb7          	lui	t4,0xa
   1a578:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a57c:	01300e13          	li	t3,19
   1a580:	19d19063          	bne	gp,t4,1a700 <fail>

0001a584 <test_20>:
   1a584:	00000213          	li	tp,0
   1a588:	00b00137          	lui	sp,0xb00
   1a58c:	00d000b7          	lui	ra,0xd00
   1a590:	0220a1b3          	mulhsu	gp,ra,sp
   1a594:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a598:	00200293          	li	t0,2
   1a59c:	fe5216e3          	bne	tp,t0,1a588 <test_20+0x4>
   1a5a0:	00009eb7          	lui	t4,0x9
   1a5a4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a5a8:	01400e13          	li	t3,20
   1a5ac:	15d19a63          	bne	gp,t4,1a700 <fail>

0001a5b0 <test_21>:
   1a5b0:	00000213          	li	tp,0
   1a5b4:	00b00137          	lui	sp,0xb00
   1a5b8:	00e000b7          	lui	ra,0xe00
   1a5bc:	00000013          	nop
   1a5c0:	0220a1b3          	mulhsu	gp,ra,sp
   1a5c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a5c8:	00200293          	li	t0,2
   1a5cc:	fe5214e3          	bne	tp,t0,1a5b4 <test_21+0x4>
   1a5d0:	0000aeb7          	lui	t4,0xa
   1a5d4:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a5d8:	01500e13          	li	t3,21
   1a5dc:	13d19263          	bne	gp,t4,1a700 <fail>

0001a5e0 <test_22>:
   1a5e0:	00000213          	li	tp,0
   1a5e4:	00b00137          	lui	sp,0xb00
   1a5e8:	00f000b7          	lui	ra,0xf00
   1a5ec:	00000013          	nop
   1a5f0:	00000013          	nop
   1a5f4:	0220a1b3          	mulhsu	gp,ra,sp
   1a5f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a5fc:	00200293          	li	t0,2
   1a600:	fe5212e3          	bne	tp,t0,1a5e4 <test_22+0x4>
   1a604:	0000aeb7          	lui	t4,0xa
   1a608:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a60c:	01600e13          	li	t3,22
   1a610:	0fd19863          	bne	gp,t4,1a700 <fail>

0001a614 <test_23>:
   1a614:	00000213          	li	tp,0
   1a618:	00b00137          	lui	sp,0xb00
   1a61c:	00000013          	nop
   1a620:	00d000b7          	lui	ra,0xd00
   1a624:	0220a1b3          	mulhsu	gp,ra,sp
   1a628:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a62c:	00200293          	li	t0,2
   1a630:	fe5214e3          	bne	tp,t0,1a618 <test_23+0x4>
   1a634:	00009eb7          	lui	t4,0x9
   1a638:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a63c:	01700e13          	li	t3,23
   1a640:	0dd19063          	bne	gp,t4,1a700 <fail>

0001a644 <test_24>:
   1a644:	00000213          	li	tp,0
   1a648:	00b00137          	lui	sp,0xb00
   1a64c:	00000013          	nop
   1a650:	00e000b7          	lui	ra,0xe00
   1a654:	00000013          	nop
   1a658:	0220a1b3          	mulhsu	gp,ra,sp
   1a65c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a660:	00200293          	li	t0,2
   1a664:	fe5212e3          	bne	tp,t0,1a648 <test_24+0x4>
   1a668:	0000aeb7          	lui	t4,0xa
   1a66c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a670:	01800e13          	li	t3,24
   1a674:	09d19663          	bne	gp,t4,1a700 <fail>

0001a678 <test_25>:
   1a678:	00000213          	li	tp,0
   1a67c:	00b00137          	lui	sp,0xb00
   1a680:	00000013          	nop
   1a684:	00000013          	nop
   1a688:	00f000b7          	lui	ra,0xf00
   1a68c:	0220a1b3          	mulhsu	gp,ra,sp
   1a690:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a694:	00200293          	li	t0,2
   1a698:	fe5212e3          	bne	tp,t0,1a67c <test_25+0x4>
   1a69c:	0000aeb7          	lui	t4,0xa
   1a6a0:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a6a4:	01900e13          	li	t3,25
   1a6a8:	05d19c63          	bne	gp,t4,1a700 <fail>

0001a6ac <test_26>:
   1a6ac:	7c0000b7          	lui	ra,0x7c000
   1a6b0:	02102133          	mulhsu	sp,zero,ra
   1a6b4:	00000e93          	li	t4,0
   1a6b8:	01a00e13          	li	t3,26
   1a6bc:	05d11263          	bne	sp,t4,1a700 <fail>

0001a6c0 <test_27>:
   1a6c0:	800000b7          	lui	ra,0x80000
   1a6c4:	0200a133          	mulhsu	sp,ra,zero
   1a6c8:	00000e93          	li	t4,0
   1a6cc:	01b00e13          	li	t3,27
   1a6d0:	03d11863          	bne	sp,t4,1a700 <fail>

0001a6d4 <test_28>:
   1a6d4:	020020b3          	mulhsu	ra,zero,zero
   1a6d8:	00000e93          	li	t4,0
   1a6dc:	01c00e13          	li	t3,28
   1a6e0:	03d09063          	bne	ra,t4,1a700 <fail>

0001a6e4 <test_29>:
   1a6e4:	021000b7          	lui	ra,0x2100
   1a6e8:	02200137          	lui	sp,0x2200
   1a6ec:	0220a033          	mulhsu	zero,ra,sp
   1a6f0:	00000e93          	li	t4,0
   1a6f4:	01d00e13          	li	t3,29
   1a6f8:	01d01463          	bne	zero,t4,1a700 <fail>
   1a6fc:	05c01063          	bne	zero,t3,1a73c <pass>

0001a700 <fail>:
   1a700:	0ff00513          	li	a0,255

0001a704 <.delay_fail>:
   1a704:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1a708:	fe051ee3          	bnez	a0,1a704 <.delay_fail>
   1a70c:	02000537          	lui	a0,0x2000
   1a710:	04500593          	li	a1,69
   1a714:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1a718:	05200613          	li	a2,82
   1a71c:	00c52023          	sw	a2,0(a0)
   1a720:	00c52023          	sw	a2,0(a0)
   1a724:	04f00693          	li	a3,79
   1a728:	00d52023          	sw	a3,0(a0)
   1a72c:	00c52023          	sw	a2,0(a0)
   1a730:	02000713          	li	a4,32
   1a734:	00e52023          	sw	a4,0(a0)
   1a738:	a49f506f          	j	10180 <mulhsu_ret>

0001a73c <pass>:
   1a73c:	0ff00513          	li	a0,255

0001a740 <.delay_ok>:
   1a740:	fff50513          	addi	a0,a0,-1
   1a744:	fe051ee3          	bnez	a0,1a740 <.delay_ok>
   1a748:	02000537          	lui	a0,0x2000
   1a74c:	04f00593          	li	a1,79
   1a750:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5898>
   1a754:	04b00613          	li	a2,75
   1a758:	00c52023          	sw	a2,0(a0)
   1a75c:	02000713          	li	a4,32
   1a760:	00e52023          	sw	a4,0(a0)
   1a764:	a1df506f          	j	10180 <mulhsu_ret>
