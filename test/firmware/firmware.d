
firmware/firmware.elf:     file format elf32-littleriscv


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
   10080:	de850513          	addi	a0,a0,-536 # 19e64 <_etext>
   10084:	000f0597          	auipc	a1,0xf0
   10088:	f7c58593          	addi	a1,a1,-132 # 100000 <_ram_start>
   1008c:	000f0617          	auipc	a2,0xf0
   10090:	fe460613          	addi	a2,a2,-28 # 100070 <_edata>
   10094:	00c5dc63          	bge	a1,a2,100ac <end_init_data>

00010098 <loop_init_data>:
   10098:	00052683          	lw	a3,0(a0)
   1009c:	00d5a023          	sw	a3,0(a1)
   100a0:	00450513          	addi	a0,a0,4
   100a4:	00458593          	addi	a1,a1,4
   100a8:	fec5c8e3          	blt	a1,a2,10098 <loop_init_data>

000100ac <end_init_data>:
   100ac:	000f0517          	auipc	a0,0xf0
   100b0:	fc450513          	addi	a0,a0,-60 # 100070 <_edata>
   100b4:	000f0597          	auipc	a1,0xf0
   100b8:	fbc58593          	addi	a1,a1,-68 # 100070 <_edata>
   100bc:	00b55863          	bge	a0,a1,100cc <end_init_bss>

000100c0 <loop_init_bss>:
   100c0:	00052023          	sw	zero,0(a0)
   100c4:	00450513          	addi	a0,a0,4
   100c8:	feb54ce3          	blt	a0,a1,100c0 <loop_init_bss>

000100cc <end_init_bss>:
   100cc:	4cd060ef          	jal	ra,16d98 <lui>

000100d0 <lui_ret>:
   100d0:	510040ef          	jal	ra,145e0 <auipc>

000100d4 <auipc_ret>:
   100d4:	259080ef          	jal	ra,18b2c <j>

000100d8 <j_ret>:
   100d8:	495070ef          	jal	ra,17d6c <jal>

000100dc <jal_ret>:
   100dc:	145040ef          	jal	ra,14a20 <jalr>

000100e0 <jalr_ret>:
   100e0:	268030ef          	jal	ra,13348 <beq>

000100e4 <beq_ret>:
   100e4:	2f5040ef          	jal	ra,14bd8 <bne>

000100e8 <bne_ret>:
   100e8:	709080ef          	jal	ra,18ff0 <blt>

000100ec <blt_ret>:
   100ec:	331080ef          	jal	ra,18c1c <bge>

000100f0 <bge_ret>:
   100f0:	604020ef          	jal	ra,126f4 <bltu>

000100f4 <bltu_ret>:
   100f4:	0f8050ef          	jal	ra,151ec <bgeu>

000100f8 <bgeu_ret>:
   100f8:	46d010ef          	jal	ra,11d64 <lb>

000100fc <lb_ret>:
   100fc:	769010ef          	jal	ra,12064 <lh>

00010100 <lh_ret>:
   10100:	19c040ef          	jal	ra,1429c <lw>

00010104 <lw_ret>:
   10104:	660060ef          	jal	ra,16764 <lbu>

00010108 <lbu_ret>:
   10108:	15d060ef          	jal	ra,16a64 <lhu>

0001010c <lhu_ret>:
   1010c:	300080ef          	jal	ra,1840c <sb>

00010110 <sb_ret>:
   10110:	395000ef          	jal	ra,10ca4 <sh>

00010114 <sh_ret>:
   10114:	451030ef          	jal	ra,13d64 <sw>

00010118 <sw_ret>:
   10118:	5c8040ef          	jal	ra,146e0 <addi>

0001011c <addi_ret>:
   1011c:	701020ef          	jal	ra,1301c <slti>

00010120 <slti_ret>:
   10120:	631040ef          	jal	ra,14f50 <xori>

00010124 <xori_ret>:
   10124:	1b9070ef          	jal	ra,17adc <ori>

00010128 <ori_ret>:
   10128:	78c080ef          	jal	ra,188b4 <andi>

0001012c <andi_ret>:
   1012c:	590030ef          	jal	ra,136bc <slli>

00010130 <slli_ret>:
   10130:	0c9030ef          	jal	ra,139f8 <srli>

00010134 <srli_ret>:
   10134:	250020ef          	jal	ra,12384 <srai>

00010138 <srai_ret>:
   10138:	541070ef          	jal	ra,17e78 <add>

0001013c <add_ret>:
   1013c:	094010ef          	jal	ra,111d0 <sub>

00010140 <sub_ret>:
   10140:	604010ef          	jal	ra,11744 <sll>

00010144 <sll_ret>:
   10144:	0a4060ef          	jal	ra,161e8 <slt>

00010148 <slt_ret>:
   10148:	5e8000ef          	jal	ra,10730 <xor>

0001014c <xor_ret>:
   1014c:	22d050ef          	jal	ra,15b78 <srl>

00010150 <srl_ret>:
   10150:	5d1060ef          	jal	ra,16f20 <sra>

00010154 <sra_ret>:
   10154:	064000ef          	jal	ra,101b8 <or>

00010158 <or_ret>:
   10158:	418070ef          	jal	ra,17570 <and>

0001015c <and_ret>:
   1015c:	208090ef          	jal	ra,19364 <mulh>

00010160 <mulh_ret>:
   10160:	784090ef          	jal	ra,198e4 <mulhsu>

00010164 <mulhsu_ret>:
   10164:	494050ef          	jal	ra,155f8 <mulhu>

00010168 <mulhu_ret>:
   10168:	139020ef          	jal	ra,12aa0 <mul>

0001016c <mul_ret>:
   1016c:	541060ef          	jal	ra,16eac <simple>

00010170 <simple_ret>:
   10170:	00010137          	lui	sp,0x10
   10174:	deadc1b7          	lui	gp,0xdeadc
   10178:	eef18193          	addi	gp,gp,-273 # deadbeef <_edata+0xde9dbe7f>
   1017c:	00018213          	mv	tp,gp

00010180 <done>:
   10180:	02000537          	lui	a0,0x2000
   10184:	04400593          	li	a1,68
   10188:	04f00613          	li	a2,79
   1018c:	04e00693          	li	a3,78
   10190:	04500713          	li	a4,69
   10194:	00d00793          	li	a5,13
   10198:	00a00813          	li	a6,10
   1019c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   101a0:	00c52023          	sw	a2,0(a0)
   101a4:	00d52023          	sw	a3,0(a0)
   101a8:	00e52023          	sw	a4,0(a0)
   101ac:	00f52023          	sw	a5,0(a0)
   101b0:	01052023          	sw	a6,0(a0)

000101b4 <loop>:
   101b4:	0000006f          	j	101b4 <loop>

000101b8 <or>:
   101b8:	0ff00513          	li	a0,255

000101bc <.delay_pr>:
   101bc:	fff50513          	addi	a0,a0,-1
   101c0:	fe051ee3          	bnez	a0,101bc <.delay_pr>
   101c4:	00010537          	lui	a0,0x10
   101c8:	1e450513          	addi	a0,a0,484 # 101e4 <.test_name>
   101cc:	02000637          	lui	a2,0x2000

000101d0 <.prname_next>:
   101d0:	00050583          	lb	a1,0(a0)
   101d4:	00058a63          	beqz	a1,101e8 <.prname_done>
   101d8:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   101dc:	00150513          	addi	a0,a0,1
   101e0:	ff1ff06f          	j	101d0 <.prname_next>

000101e4 <.test_name>:
   101e4:	0000726f          	jal	tp,171e4 <test_24+0x8>

000101e8 <.prname_done>:
   101e8:	02e00593          	li	a1,46
   101ec:	00b62023          	sw	a1,0(a2)
   101f0:	00b62023          	sw	a1,0(a2)

000101f4 <test_2>:
   101f4:	ff0100b7          	lui	ra,0xff010
   101f8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   101fc:	0f0f1137          	lui	sp,0xf0f1
   10200:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10204:	0020e1b3          	or	gp,ra,sp
   10208:	ff100eb7          	lui	t4,0xff100
   1020c:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   10210:	00200e13          	li	t3,2
   10214:	4bd19263          	bne	gp,t4,106b8 <fail>

00010218 <test_3>:
   10218:	0ff010b7          	lui	ra,0xff01
   1021c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   10220:	f0f0f137          	lui	sp,0xf0f0f
   10224:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10228:	0020e1b3          	or	gp,ra,sp
   1022c:	fff10eb7          	lui	t4,0xfff10
   10230:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0xffe0ff80>
   10234:	00300e13          	li	t3,3
   10238:	49d19063          	bne	gp,t4,106b8 <fail>

0001023c <test_4>:
   1023c:	00ff00b7          	lui	ra,0xff0
   10240:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10244:	0f0f1137          	lui	sp,0xf0f1
   10248:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1024c:	0020e1b3          	or	gp,ra,sp
   10250:	0fff1eb7          	lui	t4,0xfff1
   10254:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_edata+0xfef0f8f>
   10258:	00400e13          	li	t3,4
   1025c:	45d19e63          	bne	gp,t4,106b8 <fail>

00010260 <test_5>:
   10260:	f00ff0b7          	lui	ra,0xf00ff
   10264:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   10268:	f0f0f137          	lui	sp,0xf0f0f
   1026c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10270:	0020e1b3          	or	gp,ra,sp
   10274:	f0fffeb7          	lui	t4,0xf0fff
   10278:	0ffe8e93          	addi	t4,t4,255 # f0fff0ff <_edata+0xf0eff08f>
   1027c:	00500e13          	li	t3,5
   10280:	43d19c63          	bne	gp,t4,106b8 <fail>

00010284 <test_6>:
   10284:	ff0100b7          	lui	ra,0xff010
   10288:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   1028c:	0f0f1137          	lui	sp,0xf0f1
   10290:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10294:	0020e0b3          	or	ra,ra,sp
   10298:	ff100eb7          	lui	t4,0xff100
   1029c:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   102a0:	00600e13          	li	t3,6
   102a4:	41d09a63          	bne	ra,t4,106b8 <fail>

000102a8 <test_7>:
   102a8:	ff0100b7          	lui	ra,0xff010
   102ac:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   102b0:	0f0f1137          	lui	sp,0xf0f1
   102b4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   102b8:	0020e133          	or	sp,ra,sp
   102bc:	ff100eb7          	lui	t4,0xff100
   102c0:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   102c4:	00700e13          	li	t3,7
   102c8:	3fd11863          	bne	sp,t4,106b8 <fail>

000102cc <test_8>:
   102cc:	ff0100b7          	lui	ra,0xff010
   102d0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   102d4:	0010e0b3          	or	ra,ra,ra
   102d8:	ff010eb7          	lui	t4,0xff010
   102dc:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   102e0:	00800e13          	li	t3,8
   102e4:	3dd09a63          	bne	ra,t4,106b8 <fail>

000102e8 <test_9>:
   102e8:	00000213          	li	tp,0
   102ec:	ff0100b7          	lui	ra,0xff010
   102f0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   102f4:	0f0f1137          	lui	sp,0xf0f1
   102f8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   102fc:	0020e1b3          	or	gp,ra,sp
   10300:	00018313          	mv	t1,gp
   10304:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10308:	00200293          	li	t0,2
   1030c:	fe5210e3          	bne	tp,t0,102ec <test_9+0x4>
   10310:	ff100eb7          	lui	t4,0xff100
   10314:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   10318:	00900e13          	li	t3,9
   1031c:	39d31e63          	bne	t1,t4,106b8 <fail>

00010320 <test_10>:
   10320:	00000213          	li	tp,0
   10324:	0ff010b7          	lui	ra,0xff01
   10328:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   1032c:	f0f0f137          	lui	sp,0xf0f0f
   10330:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10334:	0020e1b3          	or	gp,ra,sp
   10338:	00000013          	nop
   1033c:	00018313          	mv	t1,gp
   10340:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10344:	00200293          	li	t0,2
   10348:	fc521ee3          	bne	tp,t0,10324 <test_10+0x4>
   1034c:	fff10eb7          	lui	t4,0xfff10
   10350:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0xffe0ff80>
   10354:	00a00e13          	li	t3,10
   10358:	37d31063          	bne	t1,t4,106b8 <fail>

0001035c <test_11>:
   1035c:	00000213          	li	tp,0
   10360:	00ff00b7          	lui	ra,0xff0
   10364:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10368:	0f0f1137          	lui	sp,0xf0f1
   1036c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10370:	0020e1b3          	or	gp,ra,sp
   10374:	00000013          	nop
   10378:	00000013          	nop
   1037c:	00018313          	mv	t1,gp
   10380:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10384:	00200293          	li	t0,2
   10388:	fc521ce3          	bne	tp,t0,10360 <test_11+0x4>
   1038c:	0fff1eb7          	lui	t4,0xfff1
   10390:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_edata+0xfef0f8f>
   10394:	00b00e13          	li	t3,11
   10398:	33d31063          	bne	t1,t4,106b8 <fail>

0001039c <test_12>:
   1039c:	00000213          	li	tp,0
   103a0:	ff0100b7          	lui	ra,0xff010
   103a4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   103a8:	0f0f1137          	lui	sp,0xf0f1
   103ac:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   103b0:	0020e1b3          	or	gp,ra,sp
   103b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   103b8:	00200293          	li	t0,2
   103bc:	fe5212e3          	bne	tp,t0,103a0 <test_12+0x4>
   103c0:	ff100eb7          	lui	t4,0xff100
   103c4:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   103c8:	00c00e13          	li	t3,12
   103cc:	2fd19663          	bne	gp,t4,106b8 <fail>

000103d0 <test_13>:
   103d0:	00000213          	li	tp,0
   103d4:	0ff010b7          	lui	ra,0xff01
   103d8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   103dc:	f0f0f137          	lui	sp,0xf0f0f
   103e0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   103e4:	00000013          	nop
   103e8:	0020e1b3          	or	gp,ra,sp
   103ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   103f0:	00200293          	li	t0,2
   103f4:	fe5210e3          	bne	tp,t0,103d4 <test_13+0x4>
   103f8:	fff10eb7          	lui	t4,0xfff10
   103fc:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0xffe0ff80>
   10400:	00d00e13          	li	t3,13
   10404:	2bd19a63          	bne	gp,t4,106b8 <fail>

00010408 <test_14>:
   10408:	00000213          	li	tp,0
   1040c:	00ff00b7          	lui	ra,0xff0
   10410:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10414:	0f0f1137          	lui	sp,0xf0f1
   10418:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1041c:	00000013          	nop
   10420:	00000013          	nop
   10424:	0020e1b3          	or	gp,ra,sp
   10428:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1042c:	00200293          	li	t0,2
   10430:	fc521ee3          	bne	tp,t0,1040c <test_14+0x4>
   10434:	0fff1eb7          	lui	t4,0xfff1
   10438:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_edata+0xfef0f8f>
   1043c:	00e00e13          	li	t3,14
   10440:	27d19c63          	bne	gp,t4,106b8 <fail>

00010444 <test_15>:
   10444:	00000213          	li	tp,0
   10448:	ff0100b7          	lui	ra,0xff010
   1044c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10450:	00000013          	nop
   10454:	0f0f1137          	lui	sp,0xf0f1
   10458:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1045c:	0020e1b3          	or	gp,ra,sp
   10460:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10464:	00200293          	li	t0,2
   10468:	fe5210e3          	bne	tp,t0,10448 <test_15+0x4>
   1046c:	ff100eb7          	lui	t4,0xff100
   10470:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   10474:	00f00e13          	li	t3,15
   10478:	25d19063          	bne	gp,t4,106b8 <fail>

0001047c <test_16>:
   1047c:	00000213          	li	tp,0
   10480:	0ff010b7          	lui	ra,0xff01
   10484:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   10488:	00000013          	nop
   1048c:	f0f0f137          	lui	sp,0xf0f0f
   10490:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10494:	00000013          	nop
   10498:	0020e1b3          	or	gp,ra,sp
   1049c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   104a0:	00200293          	li	t0,2
   104a4:	fc521ee3          	bne	tp,t0,10480 <test_16+0x4>
   104a8:	fff10eb7          	lui	t4,0xfff10
   104ac:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0xffe0ff80>
   104b0:	01000e13          	li	t3,16
   104b4:	21d19263          	bne	gp,t4,106b8 <fail>

000104b8 <test_17>:
   104b8:	00000213          	li	tp,0
   104bc:	00ff00b7          	lui	ra,0xff0
   104c0:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   104c4:	00000013          	nop
   104c8:	00000013          	nop
   104cc:	0f0f1137          	lui	sp,0xf0f1
   104d0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   104d4:	0020e1b3          	or	gp,ra,sp
   104d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   104dc:	00200293          	li	t0,2
   104e0:	fc521ee3          	bne	tp,t0,104bc <test_17+0x4>
   104e4:	0fff1eb7          	lui	t4,0xfff1
   104e8:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_edata+0xfef0f8f>
   104ec:	01100e13          	li	t3,17
   104f0:	1dd19463          	bne	gp,t4,106b8 <fail>

000104f4 <test_18>:
   104f4:	00000213          	li	tp,0
   104f8:	0f0f1137          	lui	sp,0xf0f1
   104fc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10500:	ff0100b7          	lui	ra,0xff010
   10504:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10508:	0020e1b3          	or	gp,ra,sp
   1050c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10510:	00200293          	li	t0,2
   10514:	fe5212e3          	bne	tp,t0,104f8 <test_18+0x4>
   10518:	ff100eb7          	lui	t4,0xff100
   1051c:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   10520:	01200e13          	li	t3,18
   10524:	19d19a63          	bne	gp,t4,106b8 <fail>

00010528 <test_19>:
   10528:	00000213          	li	tp,0
   1052c:	f0f0f137          	lui	sp,0xf0f0f
   10530:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10534:	0ff010b7          	lui	ra,0xff01
   10538:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   1053c:	00000013          	nop
   10540:	0020e1b3          	or	gp,ra,sp
   10544:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10548:	00200293          	li	t0,2
   1054c:	fe5210e3          	bne	tp,t0,1052c <test_19+0x4>
   10550:	fff10eb7          	lui	t4,0xfff10
   10554:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0xffe0ff80>
   10558:	01300e13          	li	t3,19
   1055c:	15d19e63          	bne	gp,t4,106b8 <fail>

00010560 <test_20>:
   10560:	00000213          	li	tp,0
   10564:	0f0f1137          	lui	sp,0xf0f1
   10568:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1056c:	00ff00b7          	lui	ra,0xff0
   10570:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10574:	00000013          	nop
   10578:	00000013          	nop
   1057c:	0020e1b3          	or	gp,ra,sp
   10580:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10584:	00200293          	li	t0,2
   10588:	fc521ee3          	bne	tp,t0,10564 <test_20+0x4>
   1058c:	0fff1eb7          	lui	t4,0xfff1
   10590:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_edata+0xfef0f8f>
   10594:	01400e13          	li	t3,20
   10598:	13d19063          	bne	gp,t4,106b8 <fail>

0001059c <test_21>:
   1059c:	00000213          	li	tp,0
   105a0:	0f0f1137          	lui	sp,0xf0f1
   105a4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   105a8:	00000013          	nop
   105ac:	ff0100b7          	lui	ra,0xff010
   105b0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   105b4:	0020e1b3          	or	gp,ra,sp
   105b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   105bc:	00200293          	li	t0,2
   105c0:	fe5210e3          	bne	tp,t0,105a0 <test_21+0x4>
   105c4:	ff100eb7          	lui	t4,0xff100
   105c8:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0xfefffe9f>
   105cc:	01500e13          	li	t3,21
   105d0:	0fd19463          	bne	gp,t4,106b8 <fail>

000105d4 <test_22>:
   105d4:	00000213          	li	tp,0
   105d8:	f0f0f137          	lui	sp,0xf0f0f
   105dc:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   105e0:	00000013          	nop
   105e4:	0ff010b7          	lui	ra,0xff01
   105e8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   105ec:	00000013          	nop
   105f0:	0020e1b3          	or	gp,ra,sp
   105f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   105f8:	00200293          	li	t0,2
   105fc:	fc521ee3          	bne	tp,t0,105d8 <test_22+0x4>
   10600:	fff10eb7          	lui	t4,0xfff10
   10604:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0xffe0ff80>
   10608:	01600e13          	li	t3,22
   1060c:	0bd19663          	bne	gp,t4,106b8 <fail>

00010610 <test_23>:
   10610:	00000213          	li	tp,0
   10614:	0f0f1137          	lui	sp,0xf0f1
   10618:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1061c:	00000013          	nop
   10620:	00000013          	nop
   10624:	00ff00b7          	lui	ra,0xff0
   10628:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   1062c:	0020e1b3          	or	gp,ra,sp
   10630:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10634:	00200293          	li	t0,2
   10638:	fc521ee3          	bne	tp,t0,10614 <test_23+0x4>
   1063c:	0fff1eb7          	lui	t4,0xfff1
   10640:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_edata+0xfef0f8f>
   10644:	01700e13          	li	t3,23
   10648:	07d19863          	bne	gp,t4,106b8 <fail>

0001064c <test_24>:
   1064c:	ff0100b7          	lui	ra,0xff010
   10650:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10654:	00106133          	or	sp,zero,ra
   10658:	ff010eb7          	lui	t4,0xff010
   1065c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   10660:	01800e13          	li	t3,24
   10664:	05d11a63          	bne	sp,t4,106b8 <fail>

00010668 <test_25>:
   10668:	00ff00b7          	lui	ra,0xff0
   1066c:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10670:	0000e133          	or	sp,ra,zero
   10674:	00ff0eb7          	lui	t4,0xff0
   10678:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_edata+0xef008f>
   1067c:	01900e13          	li	t3,25
   10680:	03d11c63          	bne	sp,t4,106b8 <fail>

00010684 <test_26>:
   10684:	000060b3          	or	ra,zero,zero
   10688:	00000e93          	li	t4,0
   1068c:	01a00e13          	li	t3,26
   10690:	03d09463          	bne	ra,t4,106b8 <fail>

00010694 <test_27>:
   10694:	111110b7          	lui	ra,0x11111
   10698:	11108093          	addi	ra,ra,273 # 11111111 <_edata+0x110110a1>
   1069c:	22222137          	lui	sp,0x22222
   106a0:	22210113          	addi	sp,sp,546 # 22222222 <_edata+0x221221b2>
   106a4:	0020e033          	or	zero,ra,sp
   106a8:	00000e93          	li	t4,0
   106ac:	01b00e13          	li	t3,27
   106b0:	01d01463          	bne	zero,t4,106b8 <fail>
   106b4:	05c01463          	bne	zero,t3,106fc <pass>

000106b8 <fail>:
   106b8:	0ff00513          	li	a0,255

000106bc <.delay_fail>:
   106bc:	fff50513          	addi	a0,a0,-1
   106c0:	fe051ee3          	bnez	a0,106bc <.delay_fail>
   106c4:	02000537          	lui	a0,0x2000
   106c8:	04500593          	li	a1,69
   106cc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   106d0:	05200613          	li	a2,82
   106d4:	00c52023          	sw	a2,0(a0)
   106d8:	00c52023          	sw	a2,0(a0)
   106dc:	04f00693          	li	a3,79
   106e0:	00d52023          	sw	a3,0(a0)
   106e4:	00c52023          	sw	a2,0(a0)
   106e8:	00d00713          	li	a4,13
   106ec:	00e52023          	sw	a4,0(a0)
   106f0:	00a00793          	li	a5,10
   106f4:	00f52023          	sw	a5,0(a0)
   106f8:	a61ff06f          	j	10158 <or_ret>

000106fc <pass>:
   106fc:	0ff00513          	li	a0,255

00010700 <.delay_ok>:
   10700:	fff50513          	addi	a0,a0,-1
   10704:	fe051ee3          	bnez	a0,10700 <.delay_ok>
   10708:	02000537          	lui	a0,0x2000
   1070c:	04f00593          	li	a1,79
   10710:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   10714:	04b00613          	li	a2,75
   10718:	00c52023          	sw	a2,0(a0)
   1071c:	00d00693          	li	a3,13
   10720:	00d52023          	sw	a3,0(a0)
   10724:	00a00713          	li	a4,10
   10728:	00e52023          	sw	a4,0(a0)
   1072c:	a2dff06f          	j	10158 <or_ret>

00010730 <xor>:
   10730:	0ff00513          	li	a0,255

00010734 <.delay_pr>:
   10734:	fff50513          	addi	a0,a0,-1
   10738:	fe051ee3          	bnez	a0,10734 <.delay_pr>
   1073c:	00010537          	lui	a0,0x10
   10740:	75c50513          	addi	a0,a0,1884 # 1075c <.test_name>
   10744:	02000637          	lui	a2,0x2000

00010748 <.prname_next>:
   10748:	00050583          	lb	a1,0(a0)
   1074c:	00058a63          	beqz	a1,10760 <.prname_done>
   10750:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   10754:	00150513          	addi	a0,a0,1
   10758:	ff1ff06f          	j	10748 <.prname_next>

0001075c <.test_name>:
   1075c:	6f78                	flw	fa4,92(a4)
   1075e:	0072                	c.slli	zero,0x1c

00010760 <.prname_done>:
   10760:	02e00593          	li	a1,46
   10764:	00b62023          	sw	a1,0(a2)
   10768:	00b62023          	sw	a1,0(a2)

0001076c <test_2>:
   1076c:	ff0100b7          	lui	ra,0xff010
   10770:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10774:	0f0f1137          	lui	sp,0xf0f1
   10778:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1077c:	0020c1b3          	xor	gp,ra,sp
   10780:	f00ffeb7          	lui	t4,0xf00ff
   10784:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   10788:	00200e13          	li	t3,2
   1078c:	4bd19063          	bne	gp,t4,10c2c <fail>

00010790 <test_3>:
   10790:	0ff010b7          	lui	ra,0xff01
   10794:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   10798:	f0f0f137          	lui	sp,0xf0f0f
   1079c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   107a0:	0020c1b3          	xor	gp,ra,sp
   107a4:	ff010eb7          	lui	t4,0xff010
   107a8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   107ac:	00300e13          	li	t3,3
   107b0:	47d19e63          	bne	gp,t4,10c2c <fail>

000107b4 <test_4>:
   107b4:	00ff00b7          	lui	ra,0xff0
   107b8:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   107bc:	0f0f1137          	lui	sp,0xf0f1
   107c0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   107c4:	0020c1b3          	xor	gp,ra,sp
   107c8:	0ff01eb7          	lui	t4,0xff01
   107cc:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   107d0:	00400e13          	li	t3,4
   107d4:	45d19c63          	bne	gp,t4,10c2c <fail>

000107d8 <test_5>:
   107d8:	f00ff0b7          	lui	ra,0xf00ff
   107dc:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   107e0:	f0f0f137          	lui	sp,0xf0f0f
   107e4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   107e8:	0020c1b3          	xor	gp,ra,sp
   107ec:	00ff0eb7          	lui	t4,0xff0
   107f0:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_edata+0xef008f>
   107f4:	00500e13          	li	t3,5
   107f8:	43d19a63          	bne	gp,t4,10c2c <fail>

000107fc <test_6>:
   107fc:	ff0100b7          	lui	ra,0xff010
   10800:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10804:	0f0f1137          	lui	sp,0xf0f1
   10808:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1080c:	0020c0b3          	xor	ra,ra,sp
   10810:	f00ffeb7          	lui	t4,0xf00ff
   10814:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   10818:	00600e13          	li	t3,6
   1081c:	41d09863          	bne	ra,t4,10c2c <fail>

00010820 <test_7>:
   10820:	ff0100b7          	lui	ra,0xff010
   10824:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10828:	0f0f1137          	lui	sp,0xf0f1
   1082c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10830:	0020c133          	xor	sp,ra,sp
   10834:	f00ffeb7          	lui	t4,0xf00ff
   10838:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   1083c:	00700e13          	li	t3,7
   10840:	3fd11663          	bne	sp,t4,10c2c <fail>

00010844 <test_8>:
   10844:	ff0100b7          	lui	ra,0xff010
   10848:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   1084c:	0010c0b3          	xor	ra,ra,ra
   10850:	00000e93          	li	t4,0
   10854:	00800e13          	li	t3,8
   10858:	3dd09a63          	bne	ra,t4,10c2c <fail>

0001085c <test_9>:
   1085c:	00000213          	li	tp,0
   10860:	ff0100b7          	lui	ra,0xff010
   10864:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10868:	0f0f1137          	lui	sp,0xf0f1
   1086c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10870:	0020c1b3          	xor	gp,ra,sp
   10874:	00018313          	mv	t1,gp
   10878:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1087c:	00200293          	li	t0,2
   10880:	fe5210e3          	bne	tp,t0,10860 <test_9+0x4>
   10884:	f00ffeb7          	lui	t4,0xf00ff
   10888:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   1088c:	00900e13          	li	t3,9
   10890:	39d31e63          	bne	t1,t4,10c2c <fail>

00010894 <test_10>:
   10894:	00000213          	li	tp,0
   10898:	0ff010b7          	lui	ra,0xff01
   1089c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   108a0:	f0f0f137          	lui	sp,0xf0f0f
   108a4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   108a8:	0020c1b3          	xor	gp,ra,sp
   108ac:	00000013          	nop
   108b0:	00018313          	mv	t1,gp
   108b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   108b8:	00200293          	li	t0,2
   108bc:	fc521ee3          	bne	tp,t0,10898 <test_10+0x4>
   108c0:	ff010eb7          	lui	t4,0xff010
   108c4:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   108c8:	00a00e13          	li	t3,10
   108cc:	37d31063          	bne	t1,t4,10c2c <fail>

000108d0 <test_11>:
   108d0:	00000213          	li	tp,0
   108d4:	00ff00b7          	lui	ra,0xff0
   108d8:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   108dc:	0f0f1137          	lui	sp,0xf0f1
   108e0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   108e4:	0020c1b3          	xor	gp,ra,sp
   108e8:	00000013          	nop
   108ec:	00000013          	nop
   108f0:	00018313          	mv	t1,gp
   108f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   108f8:	00200293          	li	t0,2
   108fc:	fc521ce3          	bne	tp,t0,108d4 <test_11+0x4>
   10900:	0ff01eb7          	lui	t4,0xff01
   10904:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   10908:	00b00e13          	li	t3,11
   1090c:	33d31063          	bne	t1,t4,10c2c <fail>

00010910 <test_12>:
   10910:	00000213          	li	tp,0
   10914:	ff0100b7          	lui	ra,0xff010
   10918:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   1091c:	0f0f1137          	lui	sp,0xf0f1
   10920:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10924:	0020c1b3          	xor	gp,ra,sp
   10928:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1092c:	00200293          	li	t0,2
   10930:	fe5212e3          	bne	tp,t0,10914 <test_12+0x4>
   10934:	f00ffeb7          	lui	t4,0xf00ff
   10938:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   1093c:	00c00e13          	li	t3,12
   10940:	2fd19663          	bne	gp,t4,10c2c <fail>

00010944 <test_13>:
   10944:	00000213          	li	tp,0
   10948:	0ff010b7          	lui	ra,0xff01
   1094c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   10950:	f0f0f137          	lui	sp,0xf0f0f
   10954:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10958:	00000013          	nop
   1095c:	0020c1b3          	xor	gp,ra,sp
   10960:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10964:	00200293          	li	t0,2
   10968:	fe5210e3          	bne	tp,t0,10948 <test_13+0x4>
   1096c:	ff010eb7          	lui	t4,0xff010
   10970:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   10974:	00d00e13          	li	t3,13
   10978:	2bd19a63          	bne	gp,t4,10c2c <fail>

0001097c <test_14>:
   1097c:	00000213          	li	tp,0
   10980:	00ff00b7          	lui	ra,0xff0
   10984:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10988:	0f0f1137          	lui	sp,0xf0f1
   1098c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10990:	00000013          	nop
   10994:	00000013          	nop
   10998:	0020c1b3          	xor	gp,ra,sp
   1099c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   109a0:	00200293          	li	t0,2
   109a4:	fc521ee3          	bne	tp,t0,10980 <test_14+0x4>
   109a8:	0ff01eb7          	lui	t4,0xff01
   109ac:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   109b0:	00e00e13          	li	t3,14
   109b4:	27d19c63          	bne	gp,t4,10c2c <fail>

000109b8 <test_15>:
   109b8:	00000213          	li	tp,0
   109bc:	ff0100b7          	lui	ra,0xff010
   109c0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   109c4:	00000013          	nop
   109c8:	0f0f1137          	lui	sp,0xf0f1
   109cc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   109d0:	0020c1b3          	xor	gp,ra,sp
   109d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   109d8:	00200293          	li	t0,2
   109dc:	fe5210e3          	bne	tp,t0,109bc <test_15+0x4>
   109e0:	f00ffeb7          	lui	t4,0xf00ff
   109e4:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   109e8:	00f00e13          	li	t3,15
   109ec:	25d19063          	bne	gp,t4,10c2c <fail>

000109f0 <test_16>:
   109f0:	00000213          	li	tp,0
   109f4:	0ff010b7          	lui	ra,0xff01
   109f8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   109fc:	00000013          	nop
   10a00:	f0f0f137          	lui	sp,0xf0f0f
   10a04:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10a08:	00000013          	nop
   10a0c:	0020c1b3          	xor	gp,ra,sp
   10a10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a14:	00200293          	li	t0,2
   10a18:	fc521ee3          	bne	tp,t0,109f4 <test_16+0x4>
   10a1c:	ff010eb7          	lui	t4,0xff010
   10a20:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   10a24:	01000e13          	li	t3,16
   10a28:	21d19263          	bne	gp,t4,10c2c <fail>

00010a2c <test_17>:
   10a2c:	00000213          	li	tp,0
   10a30:	00ff00b7          	lui	ra,0xff0
   10a34:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10a38:	00000013          	nop
   10a3c:	00000013          	nop
   10a40:	0f0f1137          	lui	sp,0xf0f1
   10a44:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10a48:	0020c1b3          	xor	gp,ra,sp
   10a4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a50:	00200293          	li	t0,2
   10a54:	fc521ee3          	bne	tp,t0,10a30 <test_17+0x4>
   10a58:	0ff01eb7          	lui	t4,0xff01
   10a5c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   10a60:	01100e13          	li	t3,17
   10a64:	1dd19463          	bne	gp,t4,10c2c <fail>

00010a68 <test_18>:
   10a68:	00000213          	li	tp,0
   10a6c:	0f0f1137          	lui	sp,0xf0f1
   10a70:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10a74:	ff0100b7          	lui	ra,0xff010
   10a78:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10a7c:	0020c1b3          	xor	gp,ra,sp
   10a80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a84:	00200293          	li	t0,2
   10a88:	fe5212e3          	bne	tp,t0,10a6c <test_18+0x4>
   10a8c:	f00ffeb7          	lui	t4,0xf00ff
   10a90:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   10a94:	01200e13          	li	t3,18
   10a98:	19d19a63          	bne	gp,t4,10c2c <fail>

00010a9c <test_19>:
   10a9c:	00000213          	li	tp,0
   10aa0:	f0f0f137          	lui	sp,0xf0f0f
   10aa4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10aa8:	0ff010b7          	lui	ra,0xff01
   10aac:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   10ab0:	00000013          	nop
   10ab4:	0020c1b3          	xor	gp,ra,sp
   10ab8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10abc:	00200293          	li	t0,2
   10ac0:	fe5210e3          	bne	tp,t0,10aa0 <test_19+0x4>
   10ac4:	ff010eb7          	lui	t4,0xff010
   10ac8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   10acc:	01300e13          	li	t3,19
   10ad0:	15d19e63          	bne	gp,t4,10c2c <fail>

00010ad4 <test_20>:
   10ad4:	00000213          	li	tp,0
   10ad8:	0f0f1137          	lui	sp,0xf0f1
   10adc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10ae0:	00ff00b7          	lui	ra,0xff0
   10ae4:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10ae8:	00000013          	nop
   10aec:	00000013          	nop
   10af0:	0020c1b3          	xor	gp,ra,sp
   10af4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10af8:	00200293          	li	t0,2
   10afc:	fc521ee3          	bne	tp,t0,10ad8 <test_20+0x4>
   10b00:	0ff01eb7          	lui	t4,0xff01
   10b04:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   10b08:	01400e13          	li	t3,20
   10b0c:	13d19063          	bne	gp,t4,10c2c <fail>

00010b10 <test_21>:
   10b10:	00000213          	li	tp,0
   10b14:	0f0f1137          	lui	sp,0xf0f1
   10b18:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10b1c:	00000013          	nop
   10b20:	ff0100b7          	lui	ra,0xff010
   10b24:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10b28:	0020c1b3          	xor	gp,ra,sp
   10b2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b30:	00200293          	li	t0,2
   10b34:	fe5210e3          	bne	tp,t0,10b14 <test_21+0x4>
   10b38:	f00ffeb7          	lui	t4,0xf00ff
   10b3c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   10b40:	01500e13          	li	t3,21
   10b44:	0fd19463          	bne	gp,t4,10c2c <fail>

00010b48 <test_22>:
   10b48:	00000213          	li	tp,0
   10b4c:	f0f0f137          	lui	sp,0xf0f0f
   10b50:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   10b54:	00000013          	nop
   10b58:	0ff010b7          	lui	ra,0xff01
   10b5c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   10b60:	00000013          	nop
   10b64:	0020c1b3          	xor	gp,ra,sp
   10b68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b6c:	00200293          	li	t0,2
   10b70:	fc521ee3          	bne	tp,t0,10b4c <test_22+0x4>
   10b74:	ff010eb7          	lui	t4,0xff010
   10b78:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   10b7c:	01600e13          	li	t3,22
   10b80:	0bd19663          	bne	gp,t4,10c2c <fail>

00010b84 <test_23>:
   10b84:	00000213          	li	tp,0
   10b88:	0f0f1137          	lui	sp,0xf0f1
   10b8c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   10b90:	00000013          	nop
   10b94:	00000013          	nop
   10b98:	00ff00b7          	lui	ra,0xff0
   10b9c:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10ba0:	0020c1b3          	xor	gp,ra,sp
   10ba4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10ba8:	00200293          	li	t0,2
   10bac:	fc521ee3          	bne	tp,t0,10b88 <test_23+0x4>
   10bb0:	0ff01eb7          	lui	t4,0xff01
   10bb4:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   10bb8:	01700e13          	li	t3,23
   10bbc:	07d19863          	bne	gp,t4,10c2c <fail>

00010bc0 <test_24>:
   10bc0:	ff0100b7          	lui	ra,0xff010
   10bc4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   10bc8:	00104133          	xor	sp,zero,ra
   10bcc:	ff010eb7          	lui	t4,0xff010
   10bd0:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   10bd4:	01800e13          	li	t3,24
   10bd8:	05d11a63          	bne	sp,t4,10c2c <fail>

00010bdc <test_25>:
   10bdc:	00ff00b7          	lui	ra,0xff0
   10be0:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   10be4:	0000c133          	xor	sp,ra,zero
   10be8:	00ff0eb7          	lui	t4,0xff0
   10bec:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_edata+0xef008f>
   10bf0:	01900e13          	li	t3,25
   10bf4:	03d11c63          	bne	sp,t4,10c2c <fail>

00010bf8 <test_26>:
   10bf8:	000040b3          	xor	ra,zero,zero
   10bfc:	00000e93          	li	t4,0
   10c00:	01a00e13          	li	t3,26
   10c04:	03d09463          	bne	ra,t4,10c2c <fail>

00010c08 <test_27>:
   10c08:	111110b7          	lui	ra,0x11111
   10c0c:	11108093          	addi	ra,ra,273 # 11111111 <_edata+0x110110a1>
   10c10:	22222137          	lui	sp,0x22222
   10c14:	22210113          	addi	sp,sp,546 # 22222222 <_edata+0x221221b2>
   10c18:	0020c033          	xor	zero,ra,sp
   10c1c:	00000e93          	li	t4,0
   10c20:	01b00e13          	li	t3,27
   10c24:	01d01463          	bne	zero,t4,10c2c <fail>
   10c28:	05c01463          	bne	zero,t3,10c70 <pass>

00010c2c <fail>:
   10c2c:	0ff00513          	li	a0,255

00010c30 <.delay_fail>:
   10c30:	fff50513          	addi	a0,a0,-1
   10c34:	fe051ee3          	bnez	a0,10c30 <.delay_fail>
   10c38:	02000537          	lui	a0,0x2000
   10c3c:	04500593          	li	a1,69
   10c40:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   10c44:	05200613          	li	a2,82
   10c48:	00c52023          	sw	a2,0(a0)
   10c4c:	00c52023          	sw	a2,0(a0)
   10c50:	04f00693          	li	a3,79
   10c54:	00d52023          	sw	a3,0(a0)
   10c58:	00c52023          	sw	a2,0(a0)
   10c5c:	00d00713          	li	a4,13
   10c60:	00e52023          	sw	a4,0(a0)
   10c64:	00a00793          	li	a5,10
   10c68:	00f52023          	sw	a5,0(a0)
   10c6c:	ce0ff06f          	j	1014c <xor_ret>

00010c70 <pass>:
   10c70:	0ff00513          	li	a0,255

00010c74 <.delay_ok>:
   10c74:	fff50513          	addi	a0,a0,-1
   10c78:	fe051ee3          	bnez	a0,10c74 <.delay_ok>
   10c7c:	02000537          	lui	a0,0x2000
   10c80:	04f00593          	li	a1,79
   10c84:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   10c88:	04b00613          	li	a2,75
   10c8c:	00c52023          	sw	a2,0(a0)
   10c90:	00d00693          	li	a3,13
   10c94:	00d52023          	sw	a3,0(a0)
   10c98:	00a00713          	li	a4,10
   10c9c:	00e52023          	sw	a4,0(a0)
   10ca0:	cacff06f          	j	1014c <xor_ret>

00010ca4 <sh>:
   10ca4:	0ff00513          	li	a0,255

00010ca8 <.delay_pr>:
   10ca8:	fff50513          	addi	a0,a0,-1
   10cac:	fe051ee3          	bnez	a0,10ca8 <.delay_pr>
   10cb0:	00011537          	lui	a0,0x11
   10cb4:	cd050513          	addi	a0,a0,-816 # 10cd0 <.test_name>
   10cb8:	02000637          	lui	a2,0x2000

00010cbc <.prname_next>:
   10cbc:	00050583          	lb	a1,0(a0)
   10cc0:	00058a63          	beqz	a1,10cd4 <.prname_done>
   10cc4:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   10cc8:	00150513          	addi	a0,a0,1
   10ccc:	ff1ff06f          	j	10cbc <.prname_next>

00010cd0 <.test_name>:
   10cd0:	00006873          	csrrsi	a6,ustatus,0

00010cd4 <.prname_done>:
   10cd4:	02e00593          	li	a1,46
   10cd8:	00b62023          	sw	a1,0(a2)
   10cdc:	00b62023          	sw	a1,0(a2)

00010ce0 <test_2>:
   10ce0:	000ef097          	auipc	ra,0xef
   10ce4:	32008093          	addi	ra,ra,800 # 100000 <_ram_start>
   10ce8:	0aa00113          	li	sp,170
   10cec:	00209023          	sh	sp,0(ra)
   10cf0:	00009183          	lh	gp,0(ra)
   10cf4:	0aa00e93          	li	t4,170
   10cf8:	00200e13          	li	t3,2
   10cfc:	45d19e63          	bne	gp,t4,11158 <fail>

00010d00 <test_3>:
   10d00:	000ef097          	auipc	ra,0xef
   10d04:	30008093          	addi	ra,ra,768 # 100000 <_ram_start>
   10d08:	ffffb137          	lui	sp,0xffffb
   10d0c:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0xffefa990>
   10d10:	00209123          	sh	sp,2(ra)
   10d14:	00209183          	lh	gp,2(ra)
   10d18:	ffffbeb7          	lui	t4,0xffffb
   10d1c:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0xffefa990>
   10d20:	00300e13          	li	t3,3
   10d24:	43d19a63          	bne	gp,t4,11158 <fail>

00010d28 <test_4>:
   10d28:	000ef097          	auipc	ra,0xef
   10d2c:	2d808093          	addi	ra,ra,728 # 100000 <_ram_start>
   10d30:	beef1137          	lui	sp,0xbeef1
   10d34:	aa010113          	addi	sp,sp,-1376 # beef0aa0 <_edata+0xbedf0a30>
   10d38:	00209223          	sh	sp,4(ra)
   10d3c:	0040a183          	lw	gp,4(ra)
   10d40:	beef1eb7          	lui	t4,0xbeef1
   10d44:	aa0e8e93          	addi	t4,t4,-1376 # beef0aa0 <_edata+0xbedf0a30>
   10d48:	00400e13          	li	t3,4
   10d4c:	41d19663          	bne	gp,t4,11158 <fail>

00010d50 <test_5>:
   10d50:	000ef097          	auipc	ra,0xef
   10d54:	2b008093          	addi	ra,ra,688 # 100000 <_ram_start>
   10d58:	ffffa137          	lui	sp,0xffffa
   10d5c:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0xffef9f9a>
   10d60:	00209323          	sh	sp,6(ra)
   10d64:	00609183          	lh	gp,6(ra)
   10d68:	ffffaeb7          	lui	t4,0xffffa
   10d6c:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0xffef9f9a>
   10d70:	00500e13          	li	t3,5
   10d74:	3fd19263          	bne	gp,t4,11158 <fail>

00010d78 <test_6>:
   10d78:	000ef097          	auipc	ra,0xef
   10d7c:	29608093          	addi	ra,ra,662 # 10000e <tdat8>
   10d80:	0aa00113          	li	sp,170
   10d84:	fe209d23          	sh	sp,-6(ra)
   10d88:	ffa09183          	lh	gp,-6(ra)
   10d8c:	0aa00e93          	li	t4,170
   10d90:	00600e13          	li	t3,6
   10d94:	3dd19263          	bne	gp,t4,11158 <fail>

00010d98 <test_7>:
   10d98:	000ef097          	auipc	ra,0xef
   10d9c:	27608093          	addi	ra,ra,630 # 10000e <tdat8>
   10da0:	ffffb137          	lui	sp,0xffffb
   10da4:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0xffefa990>
   10da8:	fe209e23          	sh	sp,-4(ra)
   10dac:	ffc09183          	lh	gp,-4(ra)
   10db0:	ffffbeb7          	lui	t4,0xffffb
   10db4:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0xffefa990>
   10db8:	00700e13          	li	t3,7
   10dbc:	39d19e63          	bne	gp,t4,11158 <fail>

00010dc0 <test_8>:
   10dc0:	000ef097          	auipc	ra,0xef
   10dc4:	24e08093          	addi	ra,ra,590 # 10000e <tdat8>
   10dc8:	00001137          	lui	sp,0x1
   10dcc:	aa010113          	addi	sp,sp,-1376 # aa0 <_start-0xf560>
   10dd0:	fe209f23          	sh	sp,-2(ra)
   10dd4:	ffe09183          	lh	gp,-2(ra)
   10dd8:	00001eb7          	lui	t4,0x1
   10ddc:	aa0e8e93          	addi	t4,t4,-1376 # aa0 <_start-0xf560>
   10de0:	00800e13          	li	t3,8
   10de4:	37d19a63          	bne	gp,t4,11158 <fail>

00010de8 <test_9>:
   10de8:	000ef097          	auipc	ra,0xef
   10dec:	22608093          	addi	ra,ra,550 # 10000e <tdat8>
   10df0:	ffffa137          	lui	sp,0xffffa
   10df4:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0xffef9f9a>
   10df8:	00209023          	sh	sp,0(ra)
   10dfc:	00009183          	lh	gp,0(ra)
   10e00:	ffffaeb7          	lui	t4,0xffffa
   10e04:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0xffef9f9a>
   10e08:	00900e13          	li	t3,9
   10e0c:	35d19663          	bne	gp,t4,11158 <fail>

00010e10 <test_10>:
   10e10:	000ef097          	auipc	ra,0xef
   10e14:	20008093          	addi	ra,ra,512 # 100010 <tdat9>
   10e18:	12345137          	lui	sp,0x12345
   10e1c:	67810113          	addi	sp,sp,1656 # 12345678 <_edata+0x12245608>
   10e20:	fe008213          	addi	tp,ra,-32
   10e24:	02221023          	sh	sp,32(tp) # 20 <_start-0xffe0>
   10e28:	00009183          	lh	gp,0(ra)
   10e2c:	00005eb7          	lui	t4,0x5
   10e30:	678e8e93          	addi	t4,t4,1656 # 5678 <_start-0xa988>
   10e34:	00a00e13          	li	t3,10
   10e38:	33d19063          	bne	gp,t4,11158 <fail>

00010e3c <test_11>:
   10e3c:	000ef097          	auipc	ra,0xef
   10e40:	1d408093          	addi	ra,ra,468 # 100010 <tdat9>
   10e44:	00003137          	lui	sp,0x3
   10e48:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   10e4c:	ffb08093          	addi	ra,ra,-5
   10e50:	002093a3          	sh	sp,7(ra)
   10e54:	000ef217          	auipc	tp,0xef
   10e58:	1be20213          	addi	tp,tp,446 # 100012 <tdat10>
   10e5c:	00021183          	lh	gp,0(tp) # 0 <_start-0x10000>
   10e60:	00003eb7          	lui	t4,0x3
   10e64:	098e8e93          	addi	t4,t4,152 # 3098 <_start-0xcf68>
   10e68:	00b00e13          	li	t3,11
   10e6c:	2fd19663          	bne	gp,t4,11158 <fail>

00010e70 <test_12>:
   10e70:	00c00e13          	li	t3,12
   10e74:	00000213          	li	tp,0
   10e78:	ffffd0b7          	lui	ra,0xffffd
   10e7c:	cdd08093          	addi	ra,ra,-803 # ffffccdd <_edata+0xffefcc6d>
   10e80:	000ef117          	auipc	sp,0xef
   10e84:	18010113          	addi	sp,sp,384 # 100000 <_ram_start>
   10e88:	00111023          	sh	ra,0(sp)
   10e8c:	00011183          	lh	gp,0(sp)
   10e90:	ffffdeb7          	lui	t4,0xffffd
   10e94:	cdde8e93          	addi	t4,t4,-803 # ffffccdd <_edata+0xffefcc6d>
   10e98:	2dd19063          	bne	gp,t4,11158 <fail>
   10e9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10ea0:	00200293          	li	t0,2
   10ea4:	fc521ae3          	bne	tp,t0,10e78 <test_12+0x8>

00010ea8 <test_13>:
   10ea8:	00d00e13          	li	t3,13
   10eac:	00000213          	li	tp,0
   10eb0:	ffffc0b7          	lui	ra,0xffffc
   10eb4:	ccd08093          	addi	ra,ra,-819 # ffffbccd <_edata+0xffefbc5d>
   10eb8:	000ef117          	auipc	sp,0xef
   10ebc:	14810113          	addi	sp,sp,328 # 100000 <_ram_start>
   10ec0:	00000013          	nop
   10ec4:	00111123          	sh	ra,2(sp)
   10ec8:	00211183          	lh	gp,2(sp)
   10ecc:	ffffceb7          	lui	t4,0xffffc
   10ed0:	ccde8e93          	addi	t4,t4,-819 # ffffbccd <_edata+0xffefbc5d>
   10ed4:	29d19263          	bne	gp,t4,11158 <fail>
   10ed8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10edc:	00200293          	li	t0,2
   10ee0:	fc5218e3          	bne	tp,t0,10eb0 <test_13+0x8>

00010ee4 <test_14>:
   10ee4:	00e00e13          	li	t3,14
   10ee8:	00000213          	li	tp,0
   10eec:	ffffc0b7          	lui	ra,0xffffc
   10ef0:	bcc08093          	addi	ra,ra,-1076 # ffffbbcc <_edata+0xffefbb5c>
   10ef4:	000ef117          	auipc	sp,0xef
   10ef8:	10c10113          	addi	sp,sp,268 # 100000 <_ram_start>
   10efc:	00000013          	nop
   10f00:	00000013          	nop
   10f04:	00111223          	sh	ra,4(sp)
   10f08:	00411183          	lh	gp,4(sp)
   10f0c:	ffffceb7          	lui	t4,0xffffc
   10f10:	bcce8e93          	addi	t4,t4,-1076 # ffffbbcc <_edata+0xffefbb5c>
   10f14:	25d19263          	bne	gp,t4,11158 <fail>
   10f18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f1c:	00200293          	li	t0,2
   10f20:	fc5216e3          	bne	tp,t0,10eec <test_14+0x8>

00010f24 <test_15>:
   10f24:	00f00e13          	li	t3,15
   10f28:	00000213          	li	tp,0
   10f2c:	ffffb0b7          	lui	ra,0xffffb
   10f30:	bbc08093          	addi	ra,ra,-1092 # ffffabbc <_edata+0xffefab4c>
   10f34:	00000013          	nop
   10f38:	000ef117          	auipc	sp,0xef
   10f3c:	0c810113          	addi	sp,sp,200 # 100000 <_ram_start>
   10f40:	00111323          	sh	ra,6(sp)
   10f44:	00611183          	lh	gp,6(sp)
   10f48:	ffffbeb7          	lui	t4,0xffffb
   10f4c:	bbce8e93          	addi	t4,t4,-1092 # ffffabbc <_edata+0xffefab4c>
   10f50:	21d19463          	bne	gp,t4,11158 <fail>
   10f54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f58:	00200293          	li	t0,2
   10f5c:	fc5218e3          	bne	tp,t0,10f2c <test_15+0x8>

00010f60 <test_16>:
   10f60:	01000e13          	li	t3,16
   10f64:	00000213          	li	tp,0
   10f68:	ffffb0b7          	lui	ra,0xffffb
   10f6c:	abb08093          	addi	ra,ra,-1349 # ffffaabb <_edata+0xffefaa4b>
   10f70:	00000013          	nop
   10f74:	000ef117          	auipc	sp,0xef
   10f78:	08c10113          	addi	sp,sp,140 # 100000 <_ram_start>
   10f7c:	00000013          	nop
   10f80:	00111423          	sh	ra,8(sp)
   10f84:	00811183          	lh	gp,8(sp)
   10f88:	ffffbeb7          	lui	t4,0xffffb
   10f8c:	abbe8e93          	addi	t4,t4,-1349 # ffffaabb <_edata+0xffefaa4b>
   10f90:	1dd19463          	bne	gp,t4,11158 <fail>
   10f94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f98:	00200293          	li	t0,2
   10f9c:	fc5216e3          	bne	tp,t0,10f68 <test_16+0x8>

00010fa0 <test_17>:
   10fa0:	01100e13          	li	t3,17
   10fa4:	00000213          	li	tp,0
   10fa8:	ffffe0b7          	lui	ra,0xffffe
   10fac:	aab08093          	addi	ra,ra,-1365 # ffffdaab <_edata+0xffefda3b>
   10fb0:	00000013          	nop
   10fb4:	00000013          	nop
   10fb8:	000ef117          	auipc	sp,0xef
   10fbc:	04810113          	addi	sp,sp,72 # 100000 <_ram_start>
   10fc0:	00111523          	sh	ra,10(sp)
   10fc4:	00a11183          	lh	gp,10(sp)
   10fc8:	ffffeeb7          	lui	t4,0xffffe
   10fcc:	aabe8e93          	addi	t4,t4,-1365 # ffffdaab <_edata+0xffefda3b>
   10fd0:	19d19463          	bne	gp,t4,11158 <fail>
   10fd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10fd8:	00200293          	li	t0,2
   10fdc:	fc5216e3          	bne	tp,t0,10fa8 <test_17+0x8>

00010fe0 <test_18>:
   10fe0:	01200e13          	li	t3,18
   10fe4:	00000213          	li	tp,0
   10fe8:	000ef117          	auipc	sp,0xef
   10fec:	01810113          	addi	sp,sp,24 # 100000 <_ram_start>
   10ff0:	000020b7          	lui	ra,0x2
   10ff4:	23308093          	addi	ra,ra,563 # 2233 <_start-0xddcd>
   10ff8:	00111023          	sh	ra,0(sp)
   10ffc:	00011183          	lh	gp,0(sp)
   11000:	00002eb7          	lui	t4,0x2
   11004:	233e8e93          	addi	t4,t4,563 # 2233 <_start-0xddcd>
   11008:	15d19863          	bne	gp,t4,11158 <fail>
   1100c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11010:	00200293          	li	t0,2
   11014:	fc521ae3          	bne	tp,t0,10fe8 <test_18+0x8>

00011018 <test_19>:
   11018:	01300e13          	li	t3,19
   1101c:	00000213          	li	tp,0
   11020:	000ef117          	auipc	sp,0xef
   11024:	fe010113          	addi	sp,sp,-32 # 100000 <_ram_start>
   11028:	000010b7          	lui	ra,0x1
   1102c:	22308093          	addi	ra,ra,547 # 1223 <_start-0xeddd>
   11030:	00000013          	nop
   11034:	00111123          	sh	ra,2(sp)
   11038:	00211183          	lh	gp,2(sp)
   1103c:	00001eb7          	lui	t4,0x1
   11040:	223e8e93          	addi	t4,t4,547 # 1223 <_start-0xeddd>
   11044:	11d19a63          	bne	gp,t4,11158 <fail>
   11048:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1104c:	00200293          	li	t0,2
   11050:	fc5218e3          	bne	tp,t0,11020 <test_19+0x8>

00011054 <test_20>:
   11054:	01400e13          	li	t3,20
   11058:	00000213          	li	tp,0
   1105c:	000ef117          	auipc	sp,0xef
   11060:	fa410113          	addi	sp,sp,-92 # 100000 <_ram_start>
   11064:	000010b7          	lui	ra,0x1
   11068:	12208093          	addi	ra,ra,290 # 1122 <_start-0xeede>
   1106c:	00000013          	nop
   11070:	00000013          	nop
   11074:	00111223          	sh	ra,4(sp)
   11078:	00411183          	lh	gp,4(sp)
   1107c:	00001eb7          	lui	t4,0x1
   11080:	122e8e93          	addi	t4,t4,290 # 1122 <_start-0xeede>
   11084:	0dd19a63          	bne	gp,t4,11158 <fail>
   11088:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1108c:	00200293          	li	t0,2
   11090:	fc5216e3          	bne	tp,t0,1105c <test_20+0x8>

00011094 <test_21>:
   11094:	01500e13          	li	t3,21
   11098:	00000213          	li	tp,0
   1109c:	000ef117          	auipc	sp,0xef
   110a0:	f6410113          	addi	sp,sp,-156 # 100000 <_ram_start>
   110a4:	00000013          	nop
   110a8:	11200093          	li	ra,274
   110ac:	00111323          	sh	ra,6(sp)
   110b0:	00611183          	lh	gp,6(sp)
   110b4:	11200e93          	li	t4,274
   110b8:	0bd19063          	bne	gp,t4,11158 <fail>
   110bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110c0:	00200293          	li	t0,2
   110c4:	fc521ce3          	bne	tp,t0,1109c <test_21+0x8>

000110c8 <test_22>:
   110c8:	01600e13          	li	t3,22
   110cc:	00000213          	li	tp,0
   110d0:	000ef117          	auipc	sp,0xef
   110d4:	f3010113          	addi	sp,sp,-208 # 100000 <_ram_start>
   110d8:	00000013          	nop
   110dc:	01100093          	li	ra,17
   110e0:	00000013          	nop
   110e4:	00111423          	sh	ra,8(sp)
   110e8:	00811183          	lh	gp,8(sp)
   110ec:	01100e93          	li	t4,17
   110f0:	07d19463          	bne	gp,t4,11158 <fail>
   110f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110f8:	00200293          	li	t0,2
   110fc:	fc521ae3          	bne	tp,t0,110d0 <test_22+0x8>

00011100 <test_23>:
   11100:	01700e13          	li	t3,23
   11104:	00000213          	li	tp,0
   11108:	000ef117          	auipc	sp,0xef
   1110c:	ef810113          	addi	sp,sp,-264 # 100000 <_ram_start>
   11110:	00000013          	nop
   11114:	00000013          	nop
   11118:	000030b7          	lui	ra,0x3
   1111c:	00108093          	addi	ra,ra,1 # 3001 <_start-0xcfff>
   11120:	00111523          	sh	ra,10(sp)
   11124:	00a11183          	lh	gp,10(sp)
   11128:	00003eb7          	lui	t4,0x3
   1112c:	001e8e93          	addi	t4,t4,1 # 3001 <_start-0xcfff>
   11130:	03d19463          	bne	gp,t4,11158 <fail>
   11134:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11138:	00200293          	li	t0,2
   1113c:	fc5216e3          	bne	tp,t0,11108 <test_23+0x8>
   11140:	0000c537          	lui	a0,0xc
   11144:	eef50513          	addi	a0,a0,-273 # beef <_start-0x4111>
   11148:	000ef597          	auipc	a1,0xef
   1114c:	eb858593          	addi	a1,a1,-328 # 100000 <_ram_start>
   11150:	00a59323          	sh	a0,6(a1)
   11154:	05c01463          	bne	zero,t3,1119c <pass>

00011158 <fail>:
   11158:	0ff00513          	li	a0,255

0001115c <.delay_fail>:
   1115c:	fff50513          	addi	a0,a0,-1
   11160:	fe051ee3          	bnez	a0,1115c <.delay_fail>
   11164:	02000537          	lui	a0,0x2000
   11168:	04500593          	li	a1,69
   1116c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   11170:	05200613          	li	a2,82
   11174:	00c52023          	sw	a2,0(a0)
   11178:	00c52023          	sw	a2,0(a0)
   1117c:	04f00693          	li	a3,79
   11180:	00d52023          	sw	a3,0(a0)
   11184:	00c52023          	sw	a2,0(a0)
   11188:	00d00713          	li	a4,13
   1118c:	00e52023          	sw	a4,0(a0)
   11190:	00a00793          	li	a5,10
   11194:	00f52023          	sw	a5,0(a0)
   11198:	f7dfe06f          	j	10114 <sh_ret>

0001119c <pass>:
   1119c:	0ff00513          	li	a0,255

000111a0 <.delay_ok>:
   111a0:	fff50513          	addi	a0,a0,-1
   111a4:	fe051ee3          	bnez	a0,111a0 <.delay_ok>
   111a8:	02000537          	lui	a0,0x2000
   111ac:	04f00593          	li	a1,79
   111b0:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   111b4:	04b00613          	li	a2,75
   111b8:	00c52023          	sw	a2,0(a0)
   111bc:	00d00693          	li	a3,13
   111c0:	00d52023          	sw	a3,0(a0)
   111c4:	00a00713          	li	a4,10
   111c8:	00e52023          	sw	a4,0(a0)
   111cc:	f49fe06f          	j	10114 <sh_ret>

000111d0 <sub>:
   111d0:	0ff00513          	li	a0,255

000111d4 <.delay_pr>:
   111d4:	fff50513          	addi	a0,a0,-1
   111d8:	fe051ee3          	bnez	a0,111d4 <.delay_pr>
   111dc:	00011537          	lui	a0,0x11
   111e0:	1fc50513          	addi	a0,a0,508 # 111fc <.test_name>
   111e4:	02000637          	lui	a2,0x2000

000111e8 <.prname_next>:
   111e8:	00050583          	lb	a1,0(a0)
   111ec:	00058a63          	beqz	a1,11200 <.prname_done>
   111f0:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   111f4:	00150513          	addi	a0,a0,1
   111f8:	ff1ff06f          	j	111e8 <.prname_next>

000111fc <.test_name>:
   111fc:	00627573          	csrrci	a0,0x6,4

00011200 <.prname_done>:
   11200:	02e00593          	li	a1,46
   11204:	00b62023          	sw	a1,0(a2)
   11208:	00b62023          	sw	a1,0(a2)

0001120c <test_2>:
   1120c:	00000093          	li	ra,0
   11210:	00000113          	li	sp,0
   11214:	402081b3          	sub	gp,ra,sp
   11218:	00000e93          	li	t4,0
   1121c:	00200e13          	li	t3,2
   11220:	4bd19663          	bne	gp,t4,116cc <fail>

00011224 <test_3>:
   11224:	00100093          	li	ra,1
   11228:	00100113          	li	sp,1
   1122c:	402081b3          	sub	gp,ra,sp
   11230:	00000e93          	li	t4,0
   11234:	00300e13          	li	t3,3
   11238:	49d19a63          	bne	gp,t4,116cc <fail>

0001123c <test_4>:
   1123c:	00300093          	li	ra,3
   11240:	00700113          	li	sp,7
   11244:	402081b3          	sub	gp,ra,sp
   11248:	ffc00e93          	li	t4,-4
   1124c:	00400e13          	li	t3,4
   11250:	47d19e63          	bne	gp,t4,116cc <fail>

00011254 <test_5>:
   11254:	00000093          	li	ra,0
   11258:	ffff8137          	lui	sp,0xffff8
   1125c:	402081b3          	sub	gp,ra,sp
   11260:	00008eb7          	lui	t4,0x8
   11264:	00500e13          	li	t3,5
   11268:	47d19263          	bne	gp,t4,116cc <fail>

0001126c <test_6>:
   1126c:	800000b7          	lui	ra,0x80000
   11270:	00000113          	li	sp,0
   11274:	402081b3          	sub	gp,ra,sp
   11278:	80000eb7          	lui	t4,0x80000
   1127c:	00600e13          	li	t3,6
   11280:	45d19663          	bne	gp,t4,116cc <fail>

00011284 <test_7>:
   11284:	800000b7          	lui	ra,0x80000
   11288:	ffff8137          	lui	sp,0xffff8
   1128c:	402081b3          	sub	gp,ra,sp
   11290:	80008eb7          	lui	t4,0x80008
   11294:	00700e13          	li	t3,7
   11298:	43d19a63          	bne	gp,t4,116cc <fail>

0001129c <test_8>:
   1129c:	00000093          	li	ra,0
   112a0:	00008137          	lui	sp,0x8
   112a4:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   112a8:	402081b3          	sub	gp,ra,sp
   112ac:	ffff8eb7          	lui	t4,0xffff8
   112b0:	001e8e93          	addi	t4,t4,1 # ffff8001 <_edata+0xffef7f91>
   112b4:	00800e13          	li	t3,8
   112b8:	41d19a63          	bne	gp,t4,116cc <fail>

000112bc <test_9>:
   112bc:	800000b7          	lui	ra,0x80000
   112c0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   112c4:	00000113          	li	sp,0
   112c8:	402081b3          	sub	gp,ra,sp
   112cc:	80000eb7          	lui	t4,0x80000
   112d0:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0x7fefff8f>
   112d4:	00900e13          	li	t3,9
   112d8:	3fd19a63          	bne	gp,t4,116cc <fail>

000112dc <test_10>:
   112dc:	800000b7          	lui	ra,0x80000
   112e0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   112e4:	00008137          	lui	sp,0x8
   112e8:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   112ec:	402081b3          	sub	gp,ra,sp
   112f0:	7fff8eb7          	lui	t4,0x7fff8
   112f4:	00a00e13          	li	t3,10
   112f8:	3dd19a63          	bne	gp,t4,116cc <fail>

000112fc <test_11>:
   112fc:	800000b7          	lui	ra,0x80000
   11300:	00008137          	lui	sp,0x8
   11304:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11308:	402081b3          	sub	gp,ra,sp
   1130c:	7fff8eb7          	lui	t4,0x7fff8
   11310:	001e8e93          	addi	t4,t4,1 # 7fff8001 <_edata+0x7fef7f91>
   11314:	00b00e13          	li	t3,11
   11318:	3bd19a63          	bne	gp,t4,116cc <fail>

0001131c <test_12>:
   1131c:	800000b7          	lui	ra,0x80000
   11320:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   11324:	ffff8137          	lui	sp,0xffff8
   11328:	402081b3          	sub	gp,ra,sp
   1132c:	80008eb7          	lui	t4,0x80008
   11330:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7ff07f8f>
   11334:	00c00e13          	li	t3,12
   11338:	39d19a63          	bne	gp,t4,116cc <fail>

0001133c <test_13>:
   1133c:	00000093          	li	ra,0
   11340:	fff00113          	li	sp,-1
   11344:	402081b3          	sub	gp,ra,sp
   11348:	00100e93          	li	t4,1
   1134c:	00d00e13          	li	t3,13
   11350:	37d19e63          	bne	gp,t4,116cc <fail>

00011354 <test_14>:
   11354:	fff00093          	li	ra,-1
   11358:	00100113          	li	sp,1
   1135c:	402081b3          	sub	gp,ra,sp
   11360:	ffe00e93          	li	t4,-2
   11364:	00e00e13          	li	t3,14
   11368:	37d19263          	bne	gp,t4,116cc <fail>

0001136c <test_15>:
   1136c:	fff00093          	li	ra,-1
   11370:	fff00113          	li	sp,-1
   11374:	402081b3          	sub	gp,ra,sp
   11378:	00000e93          	li	t4,0
   1137c:	00f00e13          	li	t3,15
   11380:	35d19663          	bne	gp,t4,116cc <fail>

00011384 <test_16>:
   11384:	00d00093          	li	ra,13
   11388:	00b00113          	li	sp,11
   1138c:	402080b3          	sub	ra,ra,sp
   11390:	00200e93          	li	t4,2
   11394:	01000e13          	li	t3,16
   11398:	33d09a63          	bne	ra,t4,116cc <fail>

0001139c <test_17>:
   1139c:	00e00093          	li	ra,14
   113a0:	00b00113          	li	sp,11
   113a4:	40208133          	sub	sp,ra,sp
   113a8:	00300e93          	li	t4,3
   113ac:	01100e13          	li	t3,17
   113b0:	31d11e63          	bne	sp,t4,116cc <fail>

000113b4 <test_18>:
   113b4:	00d00093          	li	ra,13
   113b8:	401080b3          	sub	ra,ra,ra
   113bc:	00000e93          	li	t4,0
   113c0:	01200e13          	li	t3,18
   113c4:	31d09463          	bne	ra,t4,116cc <fail>

000113c8 <test_19>:
   113c8:	00000213          	li	tp,0
   113cc:	00d00093          	li	ra,13
   113d0:	00b00113          	li	sp,11
   113d4:	402081b3          	sub	gp,ra,sp
   113d8:	00018313          	mv	t1,gp
   113dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   113e0:	00200293          	li	t0,2
   113e4:	fe5214e3          	bne	tp,t0,113cc <test_19+0x4>
   113e8:	00200e93          	li	t4,2
   113ec:	01300e13          	li	t3,19
   113f0:	2dd31e63          	bne	t1,t4,116cc <fail>

000113f4 <test_20>:
   113f4:	00000213          	li	tp,0
   113f8:	00e00093          	li	ra,14
   113fc:	00b00113          	li	sp,11
   11400:	402081b3          	sub	gp,ra,sp
   11404:	00000013          	nop
   11408:	00018313          	mv	t1,gp
   1140c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11410:	00200293          	li	t0,2
   11414:	fe5212e3          	bne	tp,t0,113f8 <test_20+0x4>
   11418:	00300e93          	li	t4,3
   1141c:	01400e13          	li	t3,20
   11420:	2bd31663          	bne	t1,t4,116cc <fail>

00011424 <test_21>:
   11424:	00000213          	li	tp,0
   11428:	00f00093          	li	ra,15
   1142c:	00b00113          	li	sp,11
   11430:	402081b3          	sub	gp,ra,sp
   11434:	00000013          	nop
   11438:	00000013          	nop
   1143c:	00018313          	mv	t1,gp
   11440:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11444:	00200293          	li	t0,2
   11448:	fe5210e3          	bne	tp,t0,11428 <test_21+0x4>
   1144c:	00400e93          	li	t4,4
   11450:	01500e13          	li	t3,21
   11454:	27d31c63          	bne	t1,t4,116cc <fail>

00011458 <test_22>:
   11458:	00000213          	li	tp,0
   1145c:	00d00093          	li	ra,13
   11460:	00b00113          	li	sp,11
   11464:	402081b3          	sub	gp,ra,sp
   11468:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1146c:	00200293          	li	t0,2
   11470:	fe5216e3          	bne	tp,t0,1145c <test_22+0x4>
   11474:	00200e93          	li	t4,2
   11478:	01600e13          	li	t3,22
   1147c:	25d19863          	bne	gp,t4,116cc <fail>

00011480 <test_23>:
   11480:	00000213          	li	tp,0
   11484:	00e00093          	li	ra,14
   11488:	00b00113          	li	sp,11
   1148c:	00000013          	nop
   11490:	402081b3          	sub	gp,ra,sp
   11494:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11498:	00200293          	li	t0,2
   1149c:	fe5214e3          	bne	tp,t0,11484 <test_23+0x4>
   114a0:	00300e93          	li	t4,3
   114a4:	01700e13          	li	t3,23
   114a8:	23d19263          	bne	gp,t4,116cc <fail>

000114ac <test_24>:
   114ac:	00000213          	li	tp,0
   114b0:	00f00093          	li	ra,15
   114b4:	00b00113          	li	sp,11
   114b8:	00000013          	nop
   114bc:	00000013          	nop
   114c0:	402081b3          	sub	gp,ra,sp
   114c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   114c8:	00200293          	li	t0,2
   114cc:	fe5212e3          	bne	tp,t0,114b0 <test_24+0x4>
   114d0:	00400e93          	li	t4,4
   114d4:	01800e13          	li	t3,24
   114d8:	1fd19a63          	bne	gp,t4,116cc <fail>

000114dc <test_25>:
   114dc:	00000213          	li	tp,0
   114e0:	00d00093          	li	ra,13
   114e4:	00000013          	nop
   114e8:	00b00113          	li	sp,11
   114ec:	402081b3          	sub	gp,ra,sp
   114f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   114f4:	00200293          	li	t0,2
   114f8:	fe5214e3          	bne	tp,t0,114e0 <test_25+0x4>
   114fc:	00200e93          	li	t4,2
   11500:	01900e13          	li	t3,25
   11504:	1dd19463          	bne	gp,t4,116cc <fail>

00011508 <test_26>:
   11508:	00000213          	li	tp,0
   1150c:	00e00093          	li	ra,14
   11510:	00000013          	nop
   11514:	00b00113          	li	sp,11
   11518:	00000013          	nop
   1151c:	402081b3          	sub	gp,ra,sp
   11520:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11524:	00200293          	li	t0,2
   11528:	fe5212e3          	bne	tp,t0,1150c <test_26+0x4>
   1152c:	00300e93          	li	t4,3
   11530:	01a00e13          	li	t3,26
   11534:	19d19c63          	bne	gp,t4,116cc <fail>

00011538 <test_27>:
   11538:	00000213          	li	tp,0
   1153c:	00f00093          	li	ra,15
   11540:	00000013          	nop
   11544:	00000013          	nop
   11548:	00b00113          	li	sp,11
   1154c:	402081b3          	sub	gp,ra,sp
   11550:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11554:	00200293          	li	t0,2
   11558:	fe5212e3          	bne	tp,t0,1153c <test_27+0x4>
   1155c:	00400e93          	li	t4,4
   11560:	01b00e13          	li	t3,27
   11564:	17d19463          	bne	gp,t4,116cc <fail>

00011568 <test_28>:
   11568:	00000213          	li	tp,0
   1156c:	00b00113          	li	sp,11
   11570:	00d00093          	li	ra,13
   11574:	402081b3          	sub	gp,ra,sp
   11578:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1157c:	00200293          	li	t0,2
   11580:	fe5216e3          	bne	tp,t0,1156c <test_28+0x4>
   11584:	00200e93          	li	t4,2
   11588:	01c00e13          	li	t3,28
   1158c:	15d19063          	bne	gp,t4,116cc <fail>

00011590 <test_29>:
   11590:	00000213          	li	tp,0
   11594:	00b00113          	li	sp,11
   11598:	00e00093          	li	ra,14
   1159c:	00000013          	nop
   115a0:	402081b3          	sub	gp,ra,sp
   115a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   115a8:	00200293          	li	t0,2
   115ac:	fe5214e3          	bne	tp,t0,11594 <test_29+0x4>
   115b0:	00300e93          	li	t4,3
   115b4:	01d00e13          	li	t3,29
   115b8:	11d19a63          	bne	gp,t4,116cc <fail>

000115bc <test_30>:
   115bc:	00000213          	li	tp,0
   115c0:	00b00113          	li	sp,11
   115c4:	00f00093          	li	ra,15
   115c8:	00000013          	nop
   115cc:	00000013          	nop
   115d0:	402081b3          	sub	gp,ra,sp
   115d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   115d8:	00200293          	li	t0,2
   115dc:	fe5212e3          	bne	tp,t0,115c0 <test_30+0x4>
   115e0:	00400e93          	li	t4,4
   115e4:	01e00e13          	li	t3,30
   115e8:	0fd19263          	bne	gp,t4,116cc <fail>

000115ec <test_31>:
   115ec:	00000213          	li	tp,0
   115f0:	00b00113          	li	sp,11
   115f4:	00000013          	nop
   115f8:	00d00093          	li	ra,13
   115fc:	402081b3          	sub	gp,ra,sp
   11600:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11604:	00200293          	li	t0,2
   11608:	fe5214e3          	bne	tp,t0,115f0 <test_31+0x4>
   1160c:	00200e93          	li	t4,2
   11610:	01f00e13          	li	t3,31
   11614:	0bd19c63          	bne	gp,t4,116cc <fail>

00011618 <test_32>:
   11618:	00000213          	li	tp,0
   1161c:	00b00113          	li	sp,11
   11620:	00000013          	nop
   11624:	00e00093          	li	ra,14
   11628:	00000013          	nop
   1162c:	402081b3          	sub	gp,ra,sp
   11630:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11634:	00200293          	li	t0,2
   11638:	fe5212e3          	bne	tp,t0,1161c <test_32+0x4>
   1163c:	00300e93          	li	t4,3
   11640:	02000e13          	li	t3,32
   11644:	09d19463          	bne	gp,t4,116cc <fail>

00011648 <test_33>:
   11648:	00000213          	li	tp,0
   1164c:	00b00113          	li	sp,11
   11650:	00000013          	nop
   11654:	00000013          	nop
   11658:	00f00093          	li	ra,15
   1165c:	402081b3          	sub	gp,ra,sp
   11660:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11664:	00200293          	li	t0,2
   11668:	fe5212e3          	bne	tp,t0,1164c <test_33+0x4>
   1166c:	00400e93          	li	t4,4
   11670:	02100e13          	li	t3,33
   11674:	05d19c63          	bne	gp,t4,116cc <fail>

00011678 <test_34>:
   11678:	ff100093          	li	ra,-15
   1167c:	40100133          	neg	sp,ra
   11680:	00f00e93          	li	t4,15
   11684:	02200e13          	li	t3,34
   11688:	05d11263          	bne	sp,t4,116cc <fail>

0001168c <test_35>:
   1168c:	02000093          	li	ra,32
   11690:	40008133          	sub	sp,ra,zero
   11694:	02000e93          	li	t4,32
   11698:	02300e13          	li	t3,35
   1169c:	03d11863          	bne	sp,t4,116cc <fail>

000116a0 <test_36>:
   116a0:	400000b3          	neg	ra,zero
   116a4:	00000e93          	li	t4,0
   116a8:	02400e13          	li	t3,36
   116ac:	03d09063          	bne	ra,t4,116cc <fail>

000116b0 <test_37>:
   116b0:	01000093          	li	ra,16
   116b4:	01e00113          	li	sp,30
   116b8:	40208033          	sub	zero,ra,sp
   116bc:	00000e93          	li	t4,0
   116c0:	02500e13          	li	t3,37
   116c4:	01d01463          	bne	zero,t4,116cc <fail>
   116c8:	05c01463          	bne	zero,t3,11710 <pass>

000116cc <fail>:
   116cc:	0ff00513          	li	a0,255

000116d0 <.delay_fail>:
   116d0:	fff50513          	addi	a0,a0,-1
   116d4:	fe051ee3          	bnez	a0,116d0 <.delay_fail>
   116d8:	02000537          	lui	a0,0x2000
   116dc:	04500593          	li	a1,69
   116e0:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   116e4:	05200613          	li	a2,82
   116e8:	00c52023          	sw	a2,0(a0)
   116ec:	00c52023          	sw	a2,0(a0)
   116f0:	04f00693          	li	a3,79
   116f4:	00d52023          	sw	a3,0(a0)
   116f8:	00c52023          	sw	a2,0(a0)
   116fc:	00d00713          	li	a4,13
   11700:	00e52023          	sw	a4,0(a0)
   11704:	00a00793          	li	a5,10
   11708:	00f52023          	sw	a5,0(a0)
   1170c:	a35fe06f          	j	10140 <sub_ret>

00011710 <pass>:
   11710:	0ff00513          	li	a0,255

00011714 <.delay_ok>:
   11714:	fff50513          	addi	a0,a0,-1
   11718:	fe051ee3          	bnez	a0,11714 <.delay_ok>
   1171c:	02000537          	lui	a0,0x2000
   11720:	04f00593          	li	a1,79
   11724:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   11728:	04b00613          	li	a2,75
   1172c:	00c52023          	sw	a2,0(a0)
   11730:	00d00693          	li	a3,13
   11734:	00d52023          	sw	a3,0(a0)
   11738:	00a00713          	li	a4,10
   1173c:	00e52023          	sw	a4,0(a0)
   11740:	a01fe06f          	j	10140 <sub_ret>

00011744 <sll>:
   11744:	0ff00513          	li	a0,255

00011748 <.delay_pr>:
   11748:	fff50513          	addi	a0,a0,-1
   1174c:	fe051ee3          	bnez	a0,11748 <.delay_pr>
   11750:	00011537          	lui	a0,0x11
   11754:	77050513          	addi	a0,a0,1904 # 11770 <.test_name>
   11758:	02000637          	lui	a2,0x2000

0001175c <.prname_next>:
   1175c:	00050583          	lb	a1,0(a0)
   11760:	00058a63          	beqz	a1,11774 <.prname_done>
   11764:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   11768:	00150513          	addi	a0,a0,1
   1176c:	ff1ff06f          	j	1175c <.prname_next>

00011770 <.test_name>:
   11770:	006c6c73          	csrrsi	s8,0x6,24

00011774 <.prname_done>:
   11774:	02e00593          	li	a1,46
   11778:	00b62023          	sw	a1,0(a2)
   1177c:	00b62023          	sw	a1,0(a2)

00011780 <test_2>:
   11780:	00100093          	li	ra,1
   11784:	00000113          	li	sp,0
   11788:	002091b3          	sll	gp,ra,sp
   1178c:	00100e93          	li	t4,1
   11790:	00200e13          	li	t3,2
   11794:	55d19c63          	bne	gp,t4,11cec <fail>

00011798 <test_3>:
   11798:	00100093          	li	ra,1
   1179c:	00100113          	li	sp,1
   117a0:	002091b3          	sll	gp,ra,sp
   117a4:	00200e93          	li	t4,2
   117a8:	00300e13          	li	t3,3
   117ac:	55d19063          	bne	gp,t4,11cec <fail>

000117b0 <test_4>:
   117b0:	00100093          	li	ra,1
   117b4:	00700113          	li	sp,7
   117b8:	002091b3          	sll	gp,ra,sp
   117bc:	08000e93          	li	t4,128
   117c0:	00400e13          	li	t3,4
   117c4:	53d19463          	bne	gp,t4,11cec <fail>

000117c8 <test_5>:
   117c8:	00100093          	li	ra,1
   117cc:	00e00113          	li	sp,14
   117d0:	002091b3          	sll	gp,ra,sp
   117d4:	00004eb7          	lui	t4,0x4
   117d8:	00500e13          	li	t3,5
   117dc:	51d19863          	bne	gp,t4,11cec <fail>

000117e0 <test_6>:
   117e0:	00100093          	li	ra,1
   117e4:	01f00113          	li	sp,31
   117e8:	002091b3          	sll	gp,ra,sp
   117ec:	80000eb7          	lui	t4,0x80000
   117f0:	00600e13          	li	t3,6
   117f4:	4fd19c63          	bne	gp,t4,11cec <fail>

000117f8 <test_7>:
   117f8:	fff00093          	li	ra,-1
   117fc:	00000113          	li	sp,0
   11800:	002091b3          	sll	gp,ra,sp
   11804:	fff00e93          	li	t4,-1
   11808:	00700e13          	li	t3,7
   1180c:	4fd19063          	bne	gp,t4,11cec <fail>

00011810 <test_8>:
   11810:	fff00093          	li	ra,-1
   11814:	00100113          	li	sp,1
   11818:	002091b3          	sll	gp,ra,sp
   1181c:	ffe00e93          	li	t4,-2
   11820:	00800e13          	li	t3,8
   11824:	4dd19463          	bne	gp,t4,11cec <fail>

00011828 <test_9>:
   11828:	fff00093          	li	ra,-1
   1182c:	00700113          	li	sp,7
   11830:	002091b3          	sll	gp,ra,sp
   11834:	f8000e93          	li	t4,-128
   11838:	00900e13          	li	t3,9
   1183c:	4bd19863          	bne	gp,t4,11cec <fail>

00011840 <test_10>:
   11840:	fff00093          	li	ra,-1
   11844:	00e00113          	li	sp,14
   11848:	002091b3          	sll	gp,ra,sp
   1184c:	ffffceb7          	lui	t4,0xffffc
   11850:	00a00e13          	li	t3,10
   11854:	49d19c63          	bne	gp,t4,11cec <fail>

00011858 <test_11>:
   11858:	fff00093          	li	ra,-1
   1185c:	01f00113          	li	sp,31
   11860:	002091b3          	sll	gp,ra,sp
   11864:	80000eb7          	lui	t4,0x80000
   11868:	00b00e13          	li	t3,11
   1186c:	49d19063          	bne	gp,t4,11cec <fail>

00011870 <test_12>:
   11870:	212120b7          	lui	ra,0x21212
   11874:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   11878:	00000113          	li	sp,0
   1187c:	002091b3          	sll	gp,ra,sp
   11880:	21212eb7          	lui	t4,0x21212
   11884:	121e8e93          	addi	t4,t4,289 # 21212121 <_edata+0x211120b1>
   11888:	00c00e13          	li	t3,12
   1188c:	47d19063          	bne	gp,t4,11cec <fail>

00011890 <test_13>:
   11890:	212120b7          	lui	ra,0x21212
   11894:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   11898:	00100113          	li	sp,1
   1189c:	002091b3          	sll	gp,ra,sp
   118a0:	42424eb7          	lui	t4,0x42424
   118a4:	242e8e93          	addi	t4,t4,578 # 42424242 <_edata+0x423241d2>
   118a8:	00d00e13          	li	t3,13
   118ac:	45d19063          	bne	gp,t4,11cec <fail>

000118b0 <test_14>:
   118b0:	212120b7          	lui	ra,0x21212
   118b4:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   118b8:	00700113          	li	sp,7
   118bc:	002091b3          	sll	gp,ra,sp
   118c0:	90909eb7          	lui	t4,0x90909
   118c4:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x90809010>
   118c8:	00e00e13          	li	t3,14
   118cc:	43d19063          	bne	gp,t4,11cec <fail>

000118d0 <test_15>:
   118d0:	212120b7          	lui	ra,0x21212
   118d4:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   118d8:	00e00113          	li	sp,14
   118dc:	002091b3          	sll	gp,ra,sp
   118e0:	48484eb7          	lui	t4,0x48484
   118e4:	00f00e13          	li	t3,15
   118e8:	41d19263          	bne	gp,t4,11cec <fail>

000118ec <test_16>:
   118ec:	212120b7          	lui	ra,0x21212
   118f0:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   118f4:	01f00113          	li	sp,31
   118f8:	002091b3          	sll	gp,ra,sp
   118fc:	80000eb7          	lui	t4,0x80000
   11900:	01000e13          	li	t3,16
   11904:	3fd19463          	bne	gp,t4,11cec <fail>

00011908 <test_17>:
   11908:	212120b7          	lui	ra,0x21212
   1190c:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   11910:	fe000113          	li	sp,-32
   11914:	002091b3          	sll	gp,ra,sp
   11918:	21212eb7          	lui	t4,0x21212
   1191c:	121e8e93          	addi	t4,t4,289 # 21212121 <_edata+0x211120b1>
   11920:	01100e13          	li	t3,17
   11924:	3dd19463          	bne	gp,t4,11cec <fail>

00011928 <test_18>:
   11928:	212120b7          	lui	ra,0x21212
   1192c:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   11930:	fe100113          	li	sp,-31
   11934:	002091b3          	sll	gp,ra,sp
   11938:	42424eb7          	lui	t4,0x42424
   1193c:	242e8e93          	addi	t4,t4,578 # 42424242 <_edata+0x423241d2>
   11940:	01200e13          	li	t3,18
   11944:	3bd19463          	bne	gp,t4,11cec <fail>

00011948 <test_19>:
   11948:	212120b7          	lui	ra,0x21212
   1194c:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   11950:	fe700113          	li	sp,-25
   11954:	002091b3          	sll	gp,ra,sp
   11958:	90909eb7          	lui	t4,0x90909
   1195c:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x90809010>
   11960:	01300e13          	li	t3,19
   11964:	39d19463          	bne	gp,t4,11cec <fail>

00011968 <test_20>:
   11968:	212120b7          	lui	ra,0x21212
   1196c:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   11970:	fee00113          	li	sp,-18
   11974:	002091b3          	sll	gp,ra,sp
   11978:	48484eb7          	lui	t4,0x48484
   1197c:	01400e13          	li	t3,20
   11980:	37d19663          	bne	gp,t4,11cec <fail>

00011984 <test_21>:
   11984:	212120b7          	lui	ra,0x21212
   11988:	12008093          	addi	ra,ra,288 # 21212120 <_edata+0x211120b0>
   1198c:	fff00113          	li	sp,-1
   11990:	002091b3          	sll	gp,ra,sp
   11994:	00000e93          	li	t4,0
   11998:	01500e13          	li	t3,21
   1199c:	35d19863          	bne	gp,t4,11cec <fail>

000119a0 <test_22>:
   119a0:	00100093          	li	ra,1
   119a4:	00700113          	li	sp,7
   119a8:	002090b3          	sll	ra,ra,sp
   119ac:	08000e93          	li	t4,128
   119b0:	01600e13          	li	t3,22
   119b4:	33d09c63          	bne	ra,t4,11cec <fail>

000119b8 <test_23>:
   119b8:	00100093          	li	ra,1
   119bc:	00e00113          	li	sp,14
   119c0:	00209133          	sll	sp,ra,sp
   119c4:	00004eb7          	lui	t4,0x4
   119c8:	01700e13          	li	t3,23
   119cc:	33d11063          	bne	sp,t4,11cec <fail>

000119d0 <test_24>:
   119d0:	00300093          	li	ra,3
   119d4:	001090b3          	sll	ra,ra,ra
   119d8:	01800e93          	li	t4,24
   119dc:	01800e13          	li	t3,24
   119e0:	31d09663          	bne	ra,t4,11cec <fail>

000119e4 <test_25>:
   119e4:	00000213          	li	tp,0
   119e8:	00100093          	li	ra,1
   119ec:	00700113          	li	sp,7
   119f0:	002091b3          	sll	gp,ra,sp
   119f4:	00018313          	mv	t1,gp
   119f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   119fc:	00200293          	li	t0,2
   11a00:	fe5214e3          	bne	tp,t0,119e8 <test_25+0x4>
   11a04:	08000e93          	li	t4,128
   11a08:	01900e13          	li	t3,25
   11a0c:	2fd31063          	bne	t1,t4,11cec <fail>

00011a10 <test_26>:
   11a10:	00000213          	li	tp,0
   11a14:	00100093          	li	ra,1
   11a18:	00e00113          	li	sp,14
   11a1c:	002091b3          	sll	gp,ra,sp
   11a20:	00000013          	nop
   11a24:	00018313          	mv	t1,gp
   11a28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a2c:	00200293          	li	t0,2
   11a30:	fe5212e3          	bne	tp,t0,11a14 <test_26+0x4>
   11a34:	00004eb7          	lui	t4,0x4
   11a38:	01a00e13          	li	t3,26
   11a3c:	2bd31863          	bne	t1,t4,11cec <fail>

00011a40 <test_27>:
   11a40:	00000213          	li	tp,0
   11a44:	00100093          	li	ra,1
   11a48:	01f00113          	li	sp,31
   11a4c:	002091b3          	sll	gp,ra,sp
   11a50:	00000013          	nop
   11a54:	00000013          	nop
   11a58:	00018313          	mv	t1,gp
   11a5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a60:	00200293          	li	t0,2
   11a64:	fe5210e3          	bne	tp,t0,11a44 <test_27+0x4>
   11a68:	80000eb7          	lui	t4,0x80000
   11a6c:	01b00e13          	li	t3,27
   11a70:	27d31e63          	bne	t1,t4,11cec <fail>

00011a74 <test_28>:
   11a74:	00000213          	li	tp,0
   11a78:	00100093          	li	ra,1
   11a7c:	00700113          	li	sp,7
   11a80:	002091b3          	sll	gp,ra,sp
   11a84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a88:	00200293          	li	t0,2
   11a8c:	fe5216e3          	bne	tp,t0,11a78 <test_28+0x4>
   11a90:	08000e93          	li	t4,128
   11a94:	01c00e13          	li	t3,28
   11a98:	25d19a63          	bne	gp,t4,11cec <fail>

00011a9c <test_29>:
   11a9c:	00000213          	li	tp,0
   11aa0:	00100093          	li	ra,1
   11aa4:	00e00113          	li	sp,14
   11aa8:	00000013          	nop
   11aac:	002091b3          	sll	gp,ra,sp
   11ab0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ab4:	00200293          	li	t0,2
   11ab8:	fe5214e3          	bne	tp,t0,11aa0 <test_29+0x4>
   11abc:	00004eb7          	lui	t4,0x4
   11ac0:	01d00e13          	li	t3,29
   11ac4:	23d19463          	bne	gp,t4,11cec <fail>

00011ac8 <test_30>:
   11ac8:	00000213          	li	tp,0
   11acc:	00100093          	li	ra,1
   11ad0:	01f00113          	li	sp,31
   11ad4:	00000013          	nop
   11ad8:	00000013          	nop
   11adc:	002091b3          	sll	gp,ra,sp
   11ae0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ae4:	00200293          	li	t0,2
   11ae8:	fe5212e3          	bne	tp,t0,11acc <test_30+0x4>
   11aec:	80000eb7          	lui	t4,0x80000
   11af0:	01e00e13          	li	t3,30
   11af4:	1fd19c63          	bne	gp,t4,11cec <fail>

00011af8 <test_31>:
   11af8:	00000213          	li	tp,0
   11afc:	00100093          	li	ra,1
   11b00:	00000013          	nop
   11b04:	00700113          	li	sp,7
   11b08:	002091b3          	sll	gp,ra,sp
   11b0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11b10:	00200293          	li	t0,2
   11b14:	fe5214e3          	bne	tp,t0,11afc <test_31+0x4>
   11b18:	08000e93          	li	t4,128
   11b1c:	01f00e13          	li	t3,31
   11b20:	1dd19663          	bne	gp,t4,11cec <fail>

00011b24 <test_32>:
   11b24:	00000213          	li	tp,0
   11b28:	00100093          	li	ra,1
   11b2c:	00000013          	nop
   11b30:	00e00113          	li	sp,14
   11b34:	00000013          	nop
   11b38:	002091b3          	sll	gp,ra,sp
   11b3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11b40:	00200293          	li	t0,2
   11b44:	fe5212e3          	bne	tp,t0,11b28 <test_32+0x4>
   11b48:	00004eb7          	lui	t4,0x4
   11b4c:	02000e13          	li	t3,32
   11b50:	19d19e63          	bne	gp,t4,11cec <fail>

00011b54 <test_33>:
   11b54:	00000213          	li	tp,0
   11b58:	00100093          	li	ra,1
   11b5c:	00000013          	nop
   11b60:	00000013          	nop
   11b64:	01f00113          	li	sp,31
   11b68:	002091b3          	sll	gp,ra,sp
   11b6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11b70:	00200293          	li	t0,2
   11b74:	fe5212e3          	bne	tp,t0,11b58 <test_33+0x4>
   11b78:	80000eb7          	lui	t4,0x80000
   11b7c:	02100e13          	li	t3,33
   11b80:	17d19663          	bne	gp,t4,11cec <fail>

00011b84 <test_34>:
   11b84:	00000213          	li	tp,0
   11b88:	00700113          	li	sp,7
   11b8c:	00100093          	li	ra,1
   11b90:	002091b3          	sll	gp,ra,sp
   11b94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11b98:	00200293          	li	t0,2
   11b9c:	fe5216e3          	bne	tp,t0,11b88 <test_34+0x4>
   11ba0:	08000e93          	li	t4,128
   11ba4:	02200e13          	li	t3,34
   11ba8:	15d19263          	bne	gp,t4,11cec <fail>

00011bac <test_35>:
   11bac:	00000213          	li	tp,0
   11bb0:	00e00113          	li	sp,14
   11bb4:	00100093          	li	ra,1
   11bb8:	00000013          	nop
   11bbc:	002091b3          	sll	gp,ra,sp
   11bc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11bc4:	00200293          	li	t0,2
   11bc8:	fe5214e3          	bne	tp,t0,11bb0 <test_35+0x4>
   11bcc:	00004eb7          	lui	t4,0x4
   11bd0:	02300e13          	li	t3,35
   11bd4:	11d19c63          	bne	gp,t4,11cec <fail>

00011bd8 <test_36>:
   11bd8:	00000213          	li	tp,0
   11bdc:	01f00113          	li	sp,31
   11be0:	00100093          	li	ra,1
   11be4:	00000013          	nop
   11be8:	00000013          	nop
   11bec:	002091b3          	sll	gp,ra,sp
   11bf0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11bf4:	00200293          	li	t0,2
   11bf8:	fe5212e3          	bne	tp,t0,11bdc <test_36+0x4>
   11bfc:	80000eb7          	lui	t4,0x80000
   11c00:	02400e13          	li	t3,36
   11c04:	0fd19463          	bne	gp,t4,11cec <fail>

00011c08 <test_37>:
   11c08:	00000213          	li	tp,0
   11c0c:	00700113          	li	sp,7
   11c10:	00000013          	nop
   11c14:	00100093          	li	ra,1
   11c18:	002091b3          	sll	gp,ra,sp
   11c1c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c20:	00200293          	li	t0,2
   11c24:	fe5214e3          	bne	tp,t0,11c0c <test_37+0x4>
   11c28:	08000e93          	li	t4,128
   11c2c:	02500e13          	li	t3,37
   11c30:	0bd19e63          	bne	gp,t4,11cec <fail>

00011c34 <test_38>:
   11c34:	00000213          	li	tp,0
   11c38:	00e00113          	li	sp,14
   11c3c:	00000013          	nop
   11c40:	00100093          	li	ra,1
   11c44:	00000013          	nop
   11c48:	002091b3          	sll	gp,ra,sp
   11c4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c50:	00200293          	li	t0,2
   11c54:	fe5212e3          	bne	tp,t0,11c38 <test_38+0x4>
   11c58:	00004eb7          	lui	t4,0x4
   11c5c:	02600e13          	li	t3,38
   11c60:	09d19663          	bne	gp,t4,11cec <fail>

00011c64 <test_39>:
   11c64:	00000213          	li	tp,0
   11c68:	01f00113          	li	sp,31
   11c6c:	00000013          	nop
   11c70:	00000013          	nop
   11c74:	00100093          	li	ra,1
   11c78:	002091b3          	sll	gp,ra,sp
   11c7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c80:	00200293          	li	t0,2
   11c84:	fe5212e3          	bne	tp,t0,11c68 <test_39+0x4>
   11c88:	80000eb7          	lui	t4,0x80000
   11c8c:	02700e13          	li	t3,39
   11c90:	05d19e63          	bne	gp,t4,11cec <fail>

00011c94 <test_40>:
   11c94:	00f00093          	li	ra,15
   11c98:	00101133          	sll	sp,zero,ra
   11c9c:	00000e93          	li	t4,0
   11ca0:	02800e13          	li	t3,40
   11ca4:	05d11463          	bne	sp,t4,11cec <fail>

00011ca8 <test_41>:
   11ca8:	02000093          	li	ra,32
   11cac:	00009133          	sll	sp,ra,zero
   11cb0:	02000e93          	li	t4,32
   11cb4:	02900e13          	li	t3,41
   11cb8:	03d11a63          	bne	sp,t4,11cec <fail>

00011cbc <test_42>:
   11cbc:	000010b3          	sll	ra,zero,zero
   11cc0:	00000e93          	li	t4,0
   11cc4:	02a00e13          	li	t3,42
   11cc8:	03d09263          	bne	ra,t4,11cec <fail>

00011ccc <test_43>:
   11ccc:	40000093          	li	ra,1024
   11cd0:	00001137          	lui	sp,0x1
   11cd4:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   11cd8:	00209033          	sll	zero,ra,sp
   11cdc:	00000e93          	li	t4,0
   11ce0:	02b00e13          	li	t3,43
   11ce4:	01d01463          	bne	zero,t4,11cec <fail>
   11ce8:	05c01463          	bne	zero,t3,11d30 <pass>

00011cec <fail>:
   11cec:	0ff00513          	li	a0,255

00011cf0 <.delay_fail>:
   11cf0:	fff50513          	addi	a0,a0,-1
   11cf4:	fe051ee3          	bnez	a0,11cf0 <.delay_fail>
   11cf8:	02000537          	lui	a0,0x2000
   11cfc:	04500593          	li	a1,69
   11d00:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   11d04:	05200613          	li	a2,82
   11d08:	00c52023          	sw	a2,0(a0)
   11d0c:	00c52023          	sw	a2,0(a0)
   11d10:	04f00693          	li	a3,79
   11d14:	00d52023          	sw	a3,0(a0)
   11d18:	00c52023          	sw	a2,0(a0)
   11d1c:	00d00713          	li	a4,13
   11d20:	00e52023          	sw	a4,0(a0)
   11d24:	00a00793          	li	a5,10
   11d28:	00f52023          	sw	a5,0(a0)
   11d2c:	c18fe06f          	j	10144 <sll_ret>

00011d30 <pass>:
   11d30:	0ff00513          	li	a0,255

00011d34 <.delay_ok>:
   11d34:	fff50513          	addi	a0,a0,-1
   11d38:	fe051ee3          	bnez	a0,11d34 <.delay_ok>
   11d3c:	02000537          	lui	a0,0x2000
   11d40:	04f00593          	li	a1,79
   11d44:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   11d48:	04b00613          	li	a2,75
   11d4c:	00c52023          	sw	a2,0(a0)
   11d50:	00d00693          	li	a3,13
   11d54:	00d52023          	sw	a3,0(a0)
   11d58:	00a00713          	li	a4,10
   11d5c:	00e52023          	sw	a4,0(a0)
   11d60:	be4fe06f          	j	10144 <sll_ret>

00011d64 <lb>:
   11d64:	0ff00513          	li	a0,255

00011d68 <.delay_pr>:
   11d68:	fff50513          	addi	a0,a0,-1
   11d6c:	fe051ee3          	bnez	a0,11d68 <.delay_pr>
   11d70:	00012537          	lui	a0,0x12
   11d74:	d9050513          	addi	a0,a0,-624 # 11d90 <.test_name>
   11d78:	02000637          	lui	a2,0x2000

00011d7c <.prname_next>:
   11d7c:	00050583          	lb	a1,0(a0)
   11d80:	00058a63          	beqz	a1,11d94 <.prname_done>
   11d84:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   11d88:	00150513          	addi	a0,a0,1
   11d8c:	ff1ff06f          	j	11d7c <.prname_next>

00011d90 <.test_name>:
   11d90:	626c                	flw	fa1,68(a2)
	...

00011d94 <.prname_done>:
   11d94:	02e00593          	li	a1,46
   11d98:	00b62023          	sw	a1,0(a2)
   11d9c:	00b62023          	sw	a1,0(a2)

00011da0 <test_2>:
   11da0:	000ee097          	auipc	ra,0xee
   11da4:	27408093          	addi	ra,ra,628 # 100014 <tdat>
   11da8:	00008183          	lb	gp,0(ra)
   11dac:	fff00e93          	li	t4,-1
   11db0:	00200e13          	li	t3,2
   11db4:	23d19c63          	bne	gp,t4,11fec <fail>

00011db8 <test_3>:
   11db8:	000ee097          	auipc	ra,0xee
   11dbc:	25c08093          	addi	ra,ra,604 # 100014 <tdat>
   11dc0:	00108183          	lb	gp,1(ra)
   11dc4:	00000e93          	li	t4,0
   11dc8:	00300e13          	li	t3,3
   11dcc:	23d19063          	bne	gp,t4,11fec <fail>

00011dd0 <test_4>:
   11dd0:	000ee097          	auipc	ra,0xee
   11dd4:	24408093          	addi	ra,ra,580 # 100014 <tdat>
   11dd8:	00208183          	lb	gp,2(ra)
   11ddc:	ff000e93          	li	t4,-16
   11de0:	00400e13          	li	t3,4
   11de4:	21d19463          	bne	gp,t4,11fec <fail>

00011de8 <test_5>:
   11de8:	000ee097          	auipc	ra,0xee
   11dec:	22c08093          	addi	ra,ra,556 # 100014 <tdat>
   11df0:	00308183          	lb	gp,3(ra)
   11df4:	00f00e93          	li	t4,15
   11df8:	00500e13          	li	t3,5
   11dfc:	1fd19863          	bne	gp,t4,11fec <fail>

00011e00 <test_6>:
   11e00:	000ee097          	auipc	ra,0xee
   11e04:	21708093          	addi	ra,ra,535 # 100017 <tdat4>
   11e08:	ffd08183          	lb	gp,-3(ra)
   11e0c:	fff00e93          	li	t4,-1
   11e10:	00600e13          	li	t3,6
   11e14:	1dd19c63          	bne	gp,t4,11fec <fail>

00011e18 <test_7>:
   11e18:	000ee097          	auipc	ra,0xee
   11e1c:	1ff08093          	addi	ra,ra,511 # 100017 <tdat4>
   11e20:	ffe08183          	lb	gp,-2(ra)
   11e24:	00000e93          	li	t4,0
   11e28:	00700e13          	li	t3,7
   11e2c:	1dd19063          	bne	gp,t4,11fec <fail>

00011e30 <test_8>:
   11e30:	000ee097          	auipc	ra,0xee
   11e34:	1e708093          	addi	ra,ra,487 # 100017 <tdat4>
   11e38:	fff08183          	lb	gp,-1(ra)
   11e3c:	ff000e93          	li	t4,-16
   11e40:	00800e13          	li	t3,8
   11e44:	1bd19463          	bne	gp,t4,11fec <fail>

00011e48 <test_9>:
   11e48:	000ee097          	auipc	ra,0xee
   11e4c:	1cf08093          	addi	ra,ra,463 # 100017 <tdat4>
   11e50:	00008183          	lb	gp,0(ra)
   11e54:	00f00e93          	li	t4,15
   11e58:	00900e13          	li	t3,9
   11e5c:	19d19863          	bne	gp,t4,11fec <fail>

00011e60 <test_10>:
   11e60:	000ee097          	auipc	ra,0xee
   11e64:	1b408093          	addi	ra,ra,436 # 100014 <tdat>
   11e68:	fe008093          	addi	ra,ra,-32
   11e6c:	02008183          	lb	gp,32(ra)
   11e70:	fff00e93          	li	t4,-1
   11e74:	00a00e13          	li	t3,10
   11e78:	17d19a63          	bne	gp,t4,11fec <fail>

00011e7c <test_11>:
   11e7c:	000ee097          	auipc	ra,0xee
   11e80:	19808093          	addi	ra,ra,408 # 100014 <tdat>
   11e84:	ffa08093          	addi	ra,ra,-6
   11e88:	00708183          	lb	gp,7(ra)
   11e8c:	00000e93          	li	t4,0
   11e90:	00b00e13          	li	t3,11
   11e94:	15d19c63          	bne	gp,t4,11fec <fail>

00011e98 <test_12>:
   11e98:	00c00e13          	li	t3,12
   11e9c:	00000213          	li	tp,0
   11ea0:	000ee097          	auipc	ra,0xee
   11ea4:	17508093          	addi	ra,ra,373 # 100015 <tdat2>
   11ea8:	00108183          	lb	gp,1(ra)
   11eac:	00018313          	mv	t1,gp
   11eb0:	ff000e93          	li	t4,-16
   11eb4:	13d31c63          	bne	t1,t4,11fec <fail>
   11eb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ebc:	00200293          	li	t0,2
   11ec0:	fe5210e3          	bne	tp,t0,11ea0 <test_12+0x8>

00011ec4 <test_13>:
   11ec4:	00d00e13          	li	t3,13
   11ec8:	00000213          	li	tp,0
   11ecc:	000ee097          	auipc	ra,0xee
   11ed0:	14a08093          	addi	ra,ra,330 # 100016 <tdat3>
   11ed4:	00108183          	lb	gp,1(ra)
   11ed8:	00000013          	nop
   11edc:	00018313          	mv	t1,gp
   11ee0:	00f00e93          	li	t4,15
   11ee4:	11d31463          	bne	t1,t4,11fec <fail>
   11ee8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11eec:	00200293          	li	t0,2
   11ef0:	fc521ee3          	bne	tp,t0,11ecc <test_13+0x8>

00011ef4 <test_14>:
   11ef4:	00e00e13          	li	t3,14
   11ef8:	00000213          	li	tp,0
   11efc:	000ee097          	auipc	ra,0xee
   11f00:	11808093          	addi	ra,ra,280 # 100014 <tdat>
   11f04:	00108183          	lb	gp,1(ra)
   11f08:	00000013          	nop
   11f0c:	00000013          	nop
   11f10:	00018313          	mv	t1,gp
   11f14:	00000e93          	li	t4,0
   11f18:	0dd31a63          	bne	t1,t4,11fec <fail>
   11f1c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11f20:	00200293          	li	t0,2
   11f24:	fc521ce3          	bne	tp,t0,11efc <test_14+0x8>

00011f28 <test_15>:
   11f28:	00f00e13          	li	t3,15
   11f2c:	00000213          	li	tp,0
   11f30:	000ee097          	auipc	ra,0xee
   11f34:	0e508093          	addi	ra,ra,229 # 100015 <tdat2>
   11f38:	00108183          	lb	gp,1(ra)
   11f3c:	ff000e93          	li	t4,-16
   11f40:	0bd19663          	bne	gp,t4,11fec <fail>
   11f44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11f48:	00200293          	li	t0,2
   11f4c:	fe5212e3          	bne	tp,t0,11f30 <test_15+0x8>

00011f50 <test_16>:
   11f50:	01000e13          	li	t3,16
   11f54:	00000213          	li	tp,0
   11f58:	000ee097          	auipc	ra,0xee
   11f5c:	0be08093          	addi	ra,ra,190 # 100016 <tdat3>
   11f60:	00000013          	nop
   11f64:	00108183          	lb	gp,1(ra)
   11f68:	00f00e93          	li	t4,15
   11f6c:	09d19063          	bne	gp,t4,11fec <fail>
   11f70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11f74:	00200293          	li	t0,2
   11f78:	fe5210e3          	bne	tp,t0,11f58 <test_16+0x8>

00011f7c <test_17>:
   11f7c:	01100e13          	li	t3,17
   11f80:	00000213          	li	tp,0
   11f84:	000ee097          	auipc	ra,0xee
   11f88:	09008093          	addi	ra,ra,144 # 100014 <tdat>
   11f8c:	00000013          	nop
   11f90:	00000013          	nop
   11f94:	00108183          	lb	gp,1(ra)
   11f98:	00000e93          	li	t4,0
   11f9c:	05d19863          	bne	gp,t4,11fec <fail>
   11fa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11fa4:	00200293          	li	t0,2
   11fa8:	fc521ee3          	bne	tp,t0,11f84 <test_17+0x8>

00011fac <test_18>:
   11fac:	000ee197          	auipc	gp,0xee
   11fb0:	06818193          	addi	gp,gp,104 # 100014 <tdat>
   11fb4:	00018103          	lb	sp,0(gp)
   11fb8:	00200113          	li	sp,2
   11fbc:	00200e93          	li	t4,2
   11fc0:	01200e13          	li	t3,18
   11fc4:	03d11463          	bne	sp,t4,11fec <fail>

00011fc8 <test_19>:
   11fc8:	000ee197          	auipc	gp,0xee
   11fcc:	04c18193          	addi	gp,gp,76 # 100014 <tdat>
   11fd0:	00018103          	lb	sp,0(gp)
   11fd4:	00000013          	nop
   11fd8:	00200113          	li	sp,2
   11fdc:	00200e93          	li	t4,2
   11fe0:	01300e13          	li	t3,19
   11fe4:	01d11463          	bne	sp,t4,11fec <fail>
   11fe8:	05c01463          	bne	zero,t3,12030 <pass>

00011fec <fail>:
   11fec:	0ff00513          	li	a0,255

00011ff0 <.delay_fail>:
   11ff0:	fff50513          	addi	a0,a0,-1
   11ff4:	fe051ee3          	bnez	a0,11ff0 <.delay_fail>
   11ff8:	02000537          	lui	a0,0x2000
   11ffc:	04500593          	li	a1,69
   12000:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12004:	05200613          	li	a2,82
   12008:	00c52023          	sw	a2,0(a0)
   1200c:	00c52023          	sw	a2,0(a0)
   12010:	04f00693          	li	a3,79
   12014:	00d52023          	sw	a3,0(a0)
   12018:	00c52023          	sw	a2,0(a0)
   1201c:	00d00713          	li	a4,13
   12020:	00e52023          	sw	a4,0(a0)
   12024:	00a00793          	li	a5,10
   12028:	00f52023          	sw	a5,0(a0)
   1202c:	8d0fe06f          	j	100fc <lb_ret>

00012030 <pass>:
   12030:	0ff00513          	li	a0,255

00012034 <.delay_ok>:
   12034:	fff50513          	addi	a0,a0,-1
   12038:	fe051ee3          	bnez	a0,12034 <.delay_ok>
   1203c:	02000537          	lui	a0,0x2000
   12040:	04f00593          	li	a1,79
   12044:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12048:	04b00613          	li	a2,75
   1204c:	00c52023          	sw	a2,0(a0)
   12050:	00d00693          	li	a3,13
   12054:	00d52023          	sw	a3,0(a0)
   12058:	00a00713          	li	a4,10
   1205c:	00e52023          	sw	a4,0(a0)
   12060:	89cfe06f          	j	100fc <lb_ret>

00012064 <lh>:
   12064:	0ff00513          	li	a0,255

00012068 <.delay_pr>:
   12068:	fff50513          	addi	a0,a0,-1
   1206c:	fe051ee3          	bnez	a0,12068 <.delay_pr>
   12070:	00012537          	lui	a0,0x12
   12074:	09050513          	addi	a0,a0,144 # 12090 <.test_name>
   12078:	02000637          	lui	a2,0x2000

0001207c <.prname_next>:
   1207c:	00050583          	lb	a1,0(a0)
   12080:	00058a63          	beqz	a1,12094 <.prname_done>
   12084:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   12088:	00150513          	addi	a0,a0,1
   1208c:	ff1ff06f          	j	1207c <.prname_next>

00012090 <.test_name>:
   12090:	686c                	flw	fa1,84(s0)
	...

00012094 <.prname_done>:
   12094:	02e00593          	li	a1,46
   12098:	00b62023          	sw	a1,0(a2)
   1209c:	00b62023          	sw	a1,0(a2)

000120a0 <test_2>:
   120a0:	000ee097          	auipc	ra,0xee
   120a4:	f7808093          	addi	ra,ra,-136 # 100018 <tdat>
   120a8:	00009183          	lh	gp,0(ra)
   120ac:	0ff00e93          	li	t4,255
   120b0:	00200e13          	li	t3,2
   120b4:	25d19c63          	bne	gp,t4,1230c <fail>

000120b8 <test_3>:
   120b8:	000ee097          	auipc	ra,0xee
   120bc:	f6008093          	addi	ra,ra,-160 # 100018 <tdat>
   120c0:	00209183          	lh	gp,2(ra)
   120c4:	f0000e93          	li	t4,-256
   120c8:	00300e13          	li	t3,3
   120cc:	25d19063          	bne	gp,t4,1230c <fail>

000120d0 <test_4>:
   120d0:	000ee097          	auipc	ra,0xee
   120d4:	f4808093          	addi	ra,ra,-184 # 100018 <tdat>
   120d8:	00409183          	lh	gp,4(ra)
   120dc:	00001eb7          	lui	t4,0x1
   120e0:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   120e4:	00400e13          	li	t3,4
   120e8:	23d19263          	bne	gp,t4,1230c <fail>

000120ec <test_5>:
   120ec:	000ee097          	auipc	ra,0xee
   120f0:	f2c08093          	addi	ra,ra,-212 # 100018 <tdat>
   120f4:	00609183          	lh	gp,6(ra)
   120f8:	fffffeb7          	lui	t4,0xfffff
   120fc:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0xffefef9f>
   12100:	00500e13          	li	t3,5
   12104:	21d19463          	bne	gp,t4,1230c <fail>

00012108 <test_6>:
   12108:	000ee097          	auipc	ra,0xee
   1210c:	f1608093          	addi	ra,ra,-234 # 10001e <tdat4>
   12110:	ffa09183          	lh	gp,-6(ra)
   12114:	0ff00e93          	li	t4,255
   12118:	00600e13          	li	t3,6
   1211c:	1fd19863          	bne	gp,t4,1230c <fail>

00012120 <test_7>:
   12120:	000ee097          	auipc	ra,0xee
   12124:	efe08093          	addi	ra,ra,-258 # 10001e <tdat4>
   12128:	ffc09183          	lh	gp,-4(ra)
   1212c:	f0000e93          	li	t4,-256
   12130:	00700e13          	li	t3,7
   12134:	1dd19c63          	bne	gp,t4,1230c <fail>

00012138 <test_8>:
   12138:	000ee097          	auipc	ra,0xee
   1213c:	ee608093          	addi	ra,ra,-282 # 10001e <tdat4>
   12140:	ffe09183          	lh	gp,-2(ra)
   12144:	00001eb7          	lui	t4,0x1
   12148:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   1214c:	00800e13          	li	t3,8
   12150:	1bd19e63          	bne	gp,t4,1230c <fail>

00012154 <test_9>:
   12154:	000ee097          	auipc	ra,0xee
   12158:	eca08093          	addi	ra,ra,-310 # 10001e <tdat4>
   1215c:	00009183          	lh	gp,0(ra)
   12160:	fffffeb7          	lui	t4,0xfffff
   12164:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0xffefef9f>
   12168:	00900e13          	li	t3,9
   1216c:	1bd19063          	bne	gp,t4,1230c <fail>

00012170 <test_10>:
   12170:	000ee097          	auipc	ra,0xee
   12174:	ea808093          	addi	ra,ra,-344 # 100018 <tdat>
   12178:	fe008093          	addi	ra,ra,-32
   1217c:	02009183          	lh	gp,32(ra)
   12180:	0ff00e93          	li	t4,255
   12184:	00a00e13          	li	t3,10
   12188:	19d19263          	bne	gp,t4,1230c <fail>

0001218c <test_11>:
   1218c:	000ee097          	auipc	ra,0xee
   12190:	e8c08093          	addi	ra,ra,-372 # 100018 <tdat>
   12194:	ffb08093          	addi	ra,ra,-5
   12198:	00709183          	lh	gp,7(ra)
   1219c:	f0000e93          	li	t4,-256
   121a0:	00b00e13          	li	t3,11
   121a4:	17d19463          	bne	gp,t4,1230c <fail>

000121a8 <test_12>:
   121a8:	00c00e13          	li	t3,12
   121ac:	00000213          	li	tp,0
   121b0:	000ee097          	auipc	ra,0xee
   121b4:	e6a08093          	addi	ra,ra,-406 # 10001a <tdat2>
   121b8:	00209183          	lh	gp,2(ra)
   121bc:	00018313          	mv	t1,gp
   121c0:	00001eb7          	lui	t4,0x1
   121c4:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   121c8:	15d31263          	bne	t1,t4,1230c <fail>
   121cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121d0:	00200293          	li	t0,2
   121d4:	fc521ee3          	bne	tp,t0,121b0 <test_12+0x8>

000121d8 <test_13>:
   121d8:	00d00e13          	li	t3,13
   121dc:	00000213          	li	tp,0
   121e0:	000ee097          	auipc	ra,0xee
   121e4:	e3c08093          	addi	ra,ra,-452 # 10001c <tdat3>
   121e8:	00209183          	lh	gp,2(ra)
   121ec:	00000013          	nop
   121f0:	00018313          	mv	t1,gp
   121f4:	fffffeb7          	lui	t4,0xfffff
   121f8:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0xffefef9f>
   121fc:	11d31863          	bne	t1,t4,1230c <fail>
   12200:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12204:	00200293          	li	t0,2
   12208:	fc521ce3          	bne	tp,t0,121e0 <test_13+0x8>

0001220c <test_14>:
   1220c:	00e00e13          	li	t3,14
   12210:	00000213          	li	tp,0
   12214:	000ee097          	auipc	ra,0xee
   12218:	e0408093          	addi	ra,ra,-508 # 100018 <tdat>
   1221c:	00209183          	lh	gp,2(ra)
   12220:	00000013          	nop
   12224:	00000013          	nop
   12228:	00018313          	mv	t1,gp
   1222c:	f0000e93          	li	t4,-256
   12230:	0dd31e63          	bne	t1,t4,1230c <fail>
   12234:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12238:	00200293          	li	t0,2
   1223c:	fc521ce3          	bne	tp,t0,12214 <test_14+0x8>

00012240 <test_15>:
   12240:	00f00e13          	li	t3,15
   12244:	00000213          	li	tp,0
   12248:	000ee097          	auipc	ra,0xee
   1224c:	dd208093          	addi	ra,ra,-558 # 10001a <tdat2>
   12250:	00209183          	lh	gp,2(ra)
   12254:	00001eb7          	lui	t4,0x1
   12258:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   1225c:	0bd19863          	bne	gp,t4,1230c <fail>
   12260:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12264:	00200293          	li	t0,2
   12268:	fe5210e3          	bne	tp,t0,12248 <test_15+0x8>

0001226c <test_16>:
   1226c:	01000e13          	li	t3,16
   12270:	00000213          	li	tp,0
   12274:	000ee097          	auipc	ra,0xee
   12278:	da808093          	addi	ra,ra,-600 # 10001c <tdat3>
   1227c:	00000013          	nop
   12280:	00209183          	lh	gp,2(ra)
   12284:	fffffeb7          	lui	t4,0xfffff
   12288:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0xffefef9f>
   1228c:	09d19063          	bne	gp,t4,1230c <fail>
   12290:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12294:	00200293          	li	t0,2
   12298:	fc521ee3          	bne	tp,t0,12274 <test_16+0x8>

0001229c <test_17>:
   1229c:	01100e13          	li	t3,17
   122a0:	00000213          	li	tp,0
   122a4:	000ee097          	auipc	ra,0xee
   122a8:	d7408093          	addi	ra,ra,-652 # 100018 <tdat>
   122ac:	00000013          	nop
   122b0:	00000013          	nop
   122b4:	00209183          	lh	gp,2(ra)
   122b8:	f0000e93          	li	t4,-256
   122bc:	05d19863          	bne	gp,t4,1230c <fail>
   122c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   122c4:	00200293          	li	t0,2
   122c8:	fc521ee3          	bne	tp,t0,122a4 <test_17+0x8>

000122cc <test_18>:
   122cc:	000ee197          	auipc	gp,0xee
   122d0:	d4c18193          	addi	gp,gp,-692 # 100018 <tdat>
   122d4:	00019103          	lh	sp,0(gp)
   122d8:	00200113          	li	sp,2
   122dc:	00200e93          	li	t4,2
   122e0:	01200e13          	li	t3,18
   122e4:	03d11463          	bne	sp,t4,1230c <fail>

000122e8 <test_19>:
   122e8:	000ee197          	auipc	gp,0xee
   122ec:	d3018193          	addi	gp,gp,-720 # 100018 <tdat>
   122f0:	00019103          	lh	sp,0(gp)
   122f4:	00000013          	nop
   122f8:	00200113          	li	sp,2
   122fc:	00200e93          	li	t4,2
   12300:	01300e13          	li	t3,19
   12304:	01d11463          	bne	sp,t4,1230c <fail>
   12308:	05c01463          	bne	zero,t3,12350 <pass>

0001230c <fail>:
   1230c:	0ff00513          	li	a0,255

00012310 <.delay_fail>:
   12310:	fff50513          	addi	a0,a0,-1
   12314:	fe051ee3          	bnez	a0,12310 <.delay_fail>
   12318:	02000537          	lui	a0,0x2000
   1231c:	04500593          	li	a1,69
   12320:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12324:	05200613          	li	a2,82
   12328:	00c52023          	sw	a2,0(a0)
   1232c:	00c52023          	sw	a2,0(a0)
   12330:	04f00693          	li	a3,79
   12334:	00d52023          	sw	a3,0(a0)
   12338:	00c52023          	sw	a2,0(a0)
   1233c:	00d00713          	li	a4,13
   12340:	00e52023          	sw	a4,0(a0)
   12344:	00a00793          	li	a5,10
   12348:	00f52023          	sw	a5,0(a0)
   1234c:	db5fd06f          	j	10100 <lh_ret>

00012350 <pass>:
   12350:	0ff00513          	li	a0,255

00012354 <.delay_ok>:
   12354:	fff50513          	addi	a0,a0,-1
   12358:	fe051ee3          	bnez	a0,12354 <.delay_ok>
   1235c:	02000537          	lui	a0,0x2000
   12360:	04f00593          	li	a1,79
   12364:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12368:	04b00613          	li	a2,75
   1236c:	00c52023          	sw	a2,0(a0)
   12370:	00d00693          	li	a3,13
   12374:	00d52023          	sw	a3,0(a0)
   12378:	00a00713          	li	a4,10
   1237c:	00e52023          	sw	a4,0(a0)
   12380:	d81fd06f          	j	10100 <lh_ret>

00012384 <srai>:
   12384:	0ff00513          	li	a0,255

00012388 <.delay_pr>:
   12388:	fff50513          	addi	a0,a0,-1
   1238c:	fe051ee3          	bnez	a0,12388 <.delay_pr>
   12390:	00012537          	lui	a0,0x12
   12394:	3b050513          	addi	a0,a0,944 # 123b0 <.test_name>
   12398:	02000637          	lui	a2,0x2000

0001239c <.prname_next>:
   1239c:	00050583          	lb	a1,0(a0)
   123a0:	00058c63          	beqz	a1,123b8 <.prname_done>
   123a4:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   123a8:	00150513          	addi	a0,a0,1
   123ac:	ff1ff06f          	j	1239c <.prname_next>

000123b0 <.test_name>:
   123b0:	69617273          	csrrci	tp,0x696,2
   123b4:	0000                	unimp
	...

000123b8 <.prname_done>:
   123b8:	02e00593          	li	a1,46
   123bc:	00b62023          	sw	a1,0(a2)
   123c0:	00b62023          	sw	a1,0(a2)

000123c4 <test_2>:
   123c4:	00000093          	li	ra,0
   123c8:	4000d193          	srai	gp,ra,0x0
   123cc:	00000e93          	li	t4,0
   123d0:	00200e13          	li	t3,2
   123d4:	2bd19463          	bne	gp,t4,1267c <fail>

000123d8 <test_3>:
   123d8:	800000b7          	lui	ra,0x80000
   123dc:	4010d193          	srai	gp,ra,0x1
   123e0:	c0000eb7          	lui	t4,0xc0000
   123e4:	00300e13          	li	t3,3
   123e8:	29d19a63          	bne	gp,t4,1267c <fail>

000123ec <test_4>:
   123ec:	800000b7          	lui	ra,0x80000
   123f0:	4070d193          	srai	gp,ra,0x7
   123f4:	ff000eb7          	lui	t4,0xff000
   123f8:	00400e13          	li	t3,4
   123fc:	29d19063          	bne	gp,t4,1267c <fail>

00012400 <test_5>:
   12400:	800000b7          	lui	ra,0x80000
   12404:	40e0d193          	srai	gp,ra,0xe
   12408:	fffe0eb7          	lui	t4,0xfffe0
   1240c:	00500e13          	li	t3,5
   12410:	27d19663          	bne	gp,t4,1267c <fail>

00012414 <test_6>:
   12414:	800000b7          	lui	ra,0x80000
   12418:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0x7fefff91>
   1241c:	41f0d193          	srai	gp,ra,0x1f
   12420:	fff00e93          	li	t4,-1
   12424:	00600e13          	li	t3,6
   12428:	25d19a63          	bne	gp,t4,1267c <fail>

0001242c <test_7>:
   1242c:	800000b7          	lui	ra,0x80000
   12430:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   12434:	4000d193          	srai	gp,ra,0x0
   12438:	80000eb7          	lui	t4,0x80000
   1243c:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0x7fefff8f>
   12440:	00700e13          	li	t3,7
   12444:	23d19c63          	bne	gp,t4,1267c <fail>

00012448 <test_8>:
   12448:	800000b7          	lui	ra,0x80000
   1244c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   12450:	4010d193          	srai	gp,ra,0x1
   12454:	40000eb7          	lui	t4,0x40000
   12458:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_edata+0x3fefff8f>
   1245c:	00800e13          	li	t3,8
   12460:	21d19e63          	bne	gp,t4,1267c <fail>

00012464 <test_9>:
   12464:	800000b7          	lui	ra,0x80000
   12468:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   1246c:	4070d193          	srai	gp,ra,0x7
   12470:	01000eb7          	lui	t4,0x1000
   12474:	fffe8e93          	addi	t4,t4,-1 # ffffff <_edata+0xefff8f>
   12478:	00900e13          	li	t3,9
   1247c:	21d19063          	bne	gp,t4,1267c <fail>

00012480 <test_10>:
   12480:	800000b7          	lui	ra,0x80000
   12484:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   12488:	40e0d193          	srai	gp,ra,0xe
   1248c:	00020eb7          	lui	t4,0x20
   12490:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   12494:	00a00e13          	li	t3,10
   12498:	1fd19263          	bne	gp,t4,1267c <fail>

0001249c <test_11>:
   1249c:	800000b7          	lui	ra,0x80000
   124a0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   124a4:	41f0d193          	srai	gp,ra,0x1f
   124a8:	00000e93          	li	t4,0
   124ac:	00b00e13          	li	t3,11
   124b0:	1dd19663          	bne	gp,t4,1267c <fail>

000124b4 <test_12>:
   124b4:	818180b7          	lui	ra,0x81818
   124b8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   124bc:	4000d193          	srai	gp,ra,0x0
   124c0:	81818eb7          	lui	t4,0x81818
   124c4:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x81718111>
   124c8:	00c00e13          	li	t3,12
   124cc:	1bd19863          	bne	gp,t4,1267c <fail>

000124d0 <test_13>:
   124d0:	818180b7          	lui	ra,0x81818
   124d4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   124d8:	4010d193          	srai	gp,ra,0x1
   124dc:	c0c0ceb7          	lui	t4,0xc0c0c
   124e0:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0xc0b0c050>
   124e4:	00d00e13          	li	t3,13
   124e8:	19d19a63          	bne	gp,t4,1267c <fail>

000124ec <test_14>:
   124ec:	818180b7          	lui	ra,0x81818
   124f0:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   124f4:	4070d193          	srai	gp,ra,0x7
   124f8:	ff030eb7          	lui	t4,0xff030
   124fc:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0xfef30293>
   12500:	00e00e13          	li	t3,14
   12504:	17d19c63          	bne	gp,t4,1267c <fail>

00012508 <test_15>:
   12508:	818180b7          	lui	ra,0x81818
   1250c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   12510:	40e0d193          	srai	gp,ra,0xe
   12514:	fffe0eb7          	lui	t4,0xfffe0
   12518:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0xffee0596>
   1251c:	00f00e13          	li	t3,15
   12520:	15d19e63          	bne	gp,t4,1267c <fail>

00012524 <test_16>:
   12524:	818180b7          	lui	ra,0x81818
   12528:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   1252c:	41f0d193          	srai	gp,ra,0x1f
   12530:	fff00e93          	li	t4,-1
   12534:	01000e13          	li	t3,16
   12538:	15d19263          	bne	gp,t4,1267c <fail>

0001253c <test_17>:
   1253c:	800000b7          	lui	ra,0x80000
   12540:	4070d093          	srai	ra,ra,0x7
   12544:	ff000eb7          	lui	t4,0xff000
   12548:	01100e13          	li	t3,17
   1254c:	13d09863          	bne	ra,t4,1267c <fail>

00012550 <test_18>:
   12550:	00000213          	li	tp,0
   12554:	800000b7          	lui	ra,0x80000
   12558:	4070d193          	srai	gp,ra,0x7
   1255c:	00018313          	mv	t1,gp
   12560:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12564:	00200293          	li	t0,2
   12568:	fe5216e3          	bne	tp,t0,12554 <test_18+0x4>
   1256c:	ff000eb7          	lui	t4,0xff000
   12570:	01200e13          	li	t3,18
   12574:	11d31463          	bne	t1,t4,1267c <fail>

00012578 <test_19>:
   12578:	00000213          	li	tp,0
   1257c:	800000b7          	lui	ra,0x80000
   12580:	40e0d193          	srai	gp,ra,0xe
   12584:	00000013          	nop
   12588:	00018313          	mv	t1,gp
   1258c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12590:	00200293          	li	t0,2
   12594:	fe5214e3          	bne	tp,t0,1257c <test_19+0x4>
   12598:	fffe0eb7          	lui	t4,0xfffe0
   1259c:	01300e13          	li	t3,19
   125a0:	0dd31e63          	bne	t1,t4,1267c <fail>

000125a4 <test_20>:
   125a4:	00000213          	li	tp,0
   125a8:	800000b7          	lui	ra,0x80000
   125ac:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0x7fefff91>
   125b0:	41f0d193          	srai	gp,ra,0x1f
   125b4:	00000013          	nop
   125b8:	00000013          	nop
   125bc:	00018313          	mv	t1,gp
   125c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   125c4:	00200293          	li	t0,2
   125c8:	fe5210e3          	bne	tp,t0,125a8 <test_20+0x4>
   125cc:	fff00e93          	li	t4,-1
   125d0:	01400e13          	li	t3,20
   125d4:	0bd31463          	bne	t1,t4,1267c <fail>

000125d8 <test_21>:
   125d8:	00000213          	li	tp,0
   125dc:	800000b7          	lui	ra,0x80000
   125e0:	4070d193          	srai	gp,ra,0x7
   125e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   125e8:	00200293          	li	t0,2
   125ec:	fe5218e3          	bne	tp,t0,125dc <test_21+0x4>
   125f0:	ff000eb7          	lui	t4,0xff000
   125f4:	01500e13          	li	t3,21
   125f8:	09d19263          	bne	gp,t4,1267c <fail>

000125fc <test_22>:
   125fc:	00000213          	li	tp,0
   12600:	800000b7          	lui	ra,0x80000
   12604:	00000013          	nop
   12608:	40e0d193          	srai	gp,ra,0xe
   1260c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12610:	00200293          	li	t0,2
   12614:	fe5216e3          	bne	tp,t0,12600 <test_22+0x4>
   12618:	fffe0eb7          	lui	t4,0xfffe0
   1261c:	01600e13          	li	t3,22
   12620:	05d19e63          	bne	gp,t4,1267c <fail>

00012624 <test_23>:
   12624:	00000213          	li	tp,0
   12628:	800000b7          	lui	ra,0x80000
   1262c:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0x7fefff91>
   12630:	00000013          	nop
   12634:	00000013          	nop
   12638:	41f0d193          	srai	gp,ra,0x1f
   1263c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12640:	00200293          	li	t0,2
   12644:	fe5212e3          	bne	tp,t0,12628 <test_23+0x4>
   12648:	fff00e93          	li	t4,-1
   1264c:	01700e13          	li	t3,23
   12650:	03d19663          	bne	gp,t4,1267c <fail>

00012654 <test_24>:
   12654:	41f05093          	srai	ra,zero,0x1f
   12658:	00000e93          	li	t4,0
   1265c:	01800e13          	li	t3,24
   12660:	01d09e63          	bne	ra,t4,1267c <fail>

00012664 <test_25>:
   12664:	02100093          	li	ra,33
   12668:	4140d013          	srai	zero,ra,0x14
   1266c:	00000e93          	li	t4,0
   12670:	01900e13          	li	t3,25
   12674:	01d01463          	bne	zero,t4,1267c <fail>
   12678:	05c01463          	bne	zero,t3,126c0 <pass>

0001267c <fail>:
   1267c:	0ff00513          	li	a0,255

00012680 <.delay_fail>:
   12680:	fff50513          	addi	a0,a0,-1
   12684:	fe051ee3          	bnez	a0,12680 <.delay_fail>
   12688:	02000537          	lui	a0,0x2000
   1268c:	04500593          	li	a1,69
   12690:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12694:	05200613          	li	a2,82
   12698:	00c52023          	sw	a2,0(a0)
   1269c:	00c52023          	sw	a2,0(a0)
   126a0:	04f00693          	li	a3,79
   126a4:	00d52023          	sw	a3,0(a0)
   126a8:	00c52023          	sw	a2,0(a0)
   126ac:	00d00713          	li	a4,13
   126b0:	00e52023          	sw	a4,0(a0)
   126b4:	00a00793          	li	a5,10
   126b8:	00f52023          	sw	a5,0(a0)
   126bc:	a7dfd06f          	j	10138 <srai_ret>

000126c0 <pass>:
   126c0:	0ff00513          	li	a0,255

000126c4 <.delay_ok>:
   126c4:	fff50513          	addi	a0,a0,-1
   126c8:	fe051ee3          	bnez	a0,126c4 <.delay_ok>
   126cc:	02000537          	lui	a0,0x2000
   126d0:	04f00593          	li	a1,79
   126d4:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   126d8:	04b00613          	li	a2,75
   126dc:	00c52023          	sw	a2,0(a0)
   126e0:	00d00693          	li	a3,13
   126e4:	00d52023          	sw	a3,0(a0)
   126e8:	00a00713          	li	a4,10
   126ec:	00e52023          	sw	a4,0(a0)
   126f0:	a49fd06f          	j	10138 <srai_ret>

000126f4 <bltu>:
   126f4:	0ff00513          	li	a0,255

000126f8 <.delay_pr>:
   126f8:	fff50513          	addi	a0,a0,-1
   126fc:	fe051ee3          	bnez	a0,126f8 <.delay_pr>
   12700:	00012537          	lui	a0,0x12
   12704:	72050513          	addi	a0,a0,1824 # 12720 <.test_name>
   12708:	02000637          	lui	a2,0x2000

0001270c <.prname_next>:
   1270c:	00050583          	lb	a1,0(a0)
   12710:	00058c63          	beqz	a1,12728 <.prname_done>
   12714:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   12718:	00150513          	addi	a0,a0,1
   1271c:	ff1ff06f          	j	1270c <.prname_next>

00012720 <.test_name>:
   12720:	6c62                	flw	fs8,24(sp)
   12722:	7574                	flw	fa3,108(a0)
   12724:	0000                	unimp
	...

00012728 <.prname_done>:
   12728:	02e00593          	li	a1,46
   1272c:	00b62023          	sw	a1,0(a2)
   12730:	00b62023          	sw	a1,0(a2)

00012734 <test_2>:
   12734:	00200e13          	li	t3,2
   12738:	00000093          	li	ra,0
   1273c:	00100113          	li	sp,1
   12740:	0020e663          	bltu	ra,sp,1274c <test_2+0x18>
   12744:	2fc01263          	bne	zero,t3,12a28 <fail>
   12748:	01c01663          	bne	zero,t3,12754 <test_3>
   1274c:	fe20eee3          	bltu	ra,sp,12748 <test_2+0x14>
   12750:	2dc01c63          	bne	zero,t3,12a28 <fail>

00012754 <test_3>:
   12754:	00300e13          	li	t3,3
   12758:	ffe00093          	li	ra,-2
   1275c:	fff00113          	li	sp,-1
   12760:	0020e663          	bltu	ra,sp,1276c <test_3+0x18>
   12764:	2dc01263          	bne	zero,t3,12a28 <fail>
   12768:	01c01663          	bne	zero,t3,12774 <test_4>
   1276c:	fe20eee3          	bltu	ra,sp,12768 <test_3+0x14>
   12770:	2bc01c63          	bne	zero,t3,12a28 <fail>

00012774 <test_4>:
   12774:	00400e13          	li	t3,4
   12778:	00000093          	li	ra,0
   1277c:	fff00113          	li	sp,-1
   12780:	0020e663          	bltu	ra,sp,1278c <test_4+0x18>
   12784:	2bc01263          	bne	zero,t3,12a28 <fail>
   12788:	01c01663          	bne	zero,t3,12794 <test_5>
   1278c:	fe20eee3          	bltu	ra,sp,12788 <test_4+0x14>
   12790:	29c01c63          	bne	zero,t3,12a28 <fail>

00012794 <test_5>:
   12794:	00500e13          	li	t3,5
   12798:	00100093          	li	ra,1
   1279c:	00000113          	li	sp,0
   127a0:	0020e463          	bltu	ra,sp,127a8 <test_5+0x14>
   127a4:	01c01463          	bne	zero,t3,127ac <test_5+0x18>
   127a8:	29c01063          	bne	zero,t3,12a28 <fail>
   127ac:	fe20eee3          	bltu	ra,sp,127a8 <test_5+0x14>

000127b0 <test_6>:
   127b0:	00600e13          	li	t3,6
   127b4:	fff00093          	li	ra,-1
   127b8:	ffe00113          	li	sp,-2
   127bc:	0020e463          	bltu	ra,sp,127c4 <test_6+0x14>
   127c0:	01c01463          	bne	zero,t3,127c8 <test_6+0x18>
   127c4:	27c01263          	bne	zero,t3,12a28 <fail>
   127c8:	fe20eee3          	bltu	ra,sp,127c4 <test_6+0x14>

000127cc <test_7>:
   127cc:	00700e13          	li	t3,7
   127d0:	fff00093          	li	ra,-1
   127d4:	00000113          	li	sp,0
   127d8:	0020e463          	bltu	ra,sp,127e0 <test_7+0x14>
   127dc:	01c01463          	bne	zero,t3,127e4 <test_7+0x18>
   127e0:	25c01463          	bne	zero,t3,12a28 <fail>
   127e4:	fe20eee3          	bltu	ra,sp,127e0 <test_7+0x14>

000127e8 <test_8>:
   127e8:	00800e13          	li	t3,8
   127ec:	800000b7          	lui	ra,0x80000
   127f0:	80000137          	lui	sp,0x80000
   127f4:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0x7fefff8f>
   127f8:	0020e463          	bltu	ra,sp,12800 <test_8+0x18>
   127fc:	01c01463          	bne	zero,t3,12804 <test_8+0x1c>
   12800:	23c01463          	bne	zero,t3,12a28 <fail>
   12804:	fe20eee3          	bltu	ra,sp,12800 <test_8+0x18>

00012808 <test_9>:
   12808:	00900e13          	li	t3,9
   1280c:	00000213          	li	tp,0
   12810:	f00000b7          	lui	ra,0xf0000
   12814:	f0000137          	lui	sp,0xf0000
   12818:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   1281c:	2020e663          	bltu	ra,sp,12a28 <fail>
   12820:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12824:	00200293          	li	t0,2
   12828:	fe5214e3          	bne	tp,t0,12810 <test_9+0x8>

0001282c <test_10>:
   1282c:	00a00e13          	li	t3,10
   12830:	00000213          	li	tp,0
   12834:	f00000b7          	lui	ra,0xf0000
   12838:	f0000137          	lui	sp,0xf0000
   1283c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   12840:	00000013          	nop
   12844:	1e20e263          	bltu	ra,sp,12a28 <fail>
   12848:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1284c:	00200293          	li	t0,2
   12850:	fe5212e3          	bne	tp,t0,12834 <test_10+0x8>

00012854 <test_11>:
   12854:	00b00e13          	li	t3,11
   12858:	00000213          	li	tp,0
   1285c:	f00000b7          	lui	ra,0xf0000
   12860:	f0000137          	lui	sp,0xf0000
   12864:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   12868:	00000013          	nop
   1286c:	00000013          	nop
   12870:	1a20ec63          	bltu	ra,sp,12a28 <fail>
   12874:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12878:	00200293          	li	t0,2
   1287c:	fe5210e3          	bne	tp,t0,1285c <test_11+0x8>

00012880 <test_12>:
   12880:	00c00e13          	li	t3,12
   12884:	00000213          	li	tp,0
   12888:	f00000b7          	lui	ra,0xf0000
   1288c:	00000013          	nop
   12890:	f0000137          	lui	sp,0xf0000
   12894:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   12898:	1820e863          	bltu	ra,sp,12a28 <fail>
   1289c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   128a0:	00200293          	li	t0,2
   128a4:	fe5212e3          	bne	tp,t0,12888 <test_12+0x8>

000128a8 <test_13>:
   128a8:	00d00e13          	li	t3,13
   128ac:	00000213          	li	tp,0
   128b0:	f00000b7          	lui	ra,0xf0000
   128b4:	00000013          	nop
   128b8:	f0000137          	lui	sp,0xf0000
   128bc:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   128c0:	00000013          	nop
   128c4:	1620e263          	bltu	ra,sp,12a28 <fail>
   128c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   128cc:	00200293          	li	t0,2
   128d0:	fe5210e3          	bne	tp,t0,128b0 <test_13+0x8>

000128d4 <test_14>:
   128d4:	00e00e13          	li	t3,14
   128d8:	00000213          	li	tp,0
   128dc:	f00000b7          	lui	ra,0xf0000
   128e0:	00000013          	nop
   128e4:	00000013          	nop
   128e8:	f0000137          	lui	sp,0xf0000
   128ec:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   128f0:	1220ec63          	bltu	ra,sp,12a28 <fail>
   128f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   128f8:	00200293          	li	t0,2
   128fc:	fe5210e3          	bne	tp,t0,128dc <test_14+0x8>

00012900 <test_15>:
   12900:	00f00e13          	li	t3,15
   12904:	00000213          	li	tp,0
   12908:	f00000b7          	lui	ra,0xf0000
   1290c:	f0000137          	lui	sp,0xf0000
   12910:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   12914:	1020ea63          	bltu	ra,sp,12a28 <fail>
   12918:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1291c:	00200293          	li	t0,2
   12920:	fe5214e3          	bne	tp,t0,12908 <test_15+0x8>

00012924 <test_16>:
   12924:	01000e13          	li	t3,16
   12928:	00000213          	li	tp,0
   1292c:	f00000b7          	lui	ra,0xf0000
   12930:	f0000137          	lui	sp,0xf0000
   12934:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   12938:	00000013          	nop
   1293c:	0e20e663          	bltu	ra,sp,12a28 <fail>
   12940:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12944:	00200293          	li	t0,2
   12948:	fe5212e3          	bne	tp,t0,1292c <test_16+0x8>

0001294c <test_17>:
   1294c:	01100e13          	li	t3,17
   12950:	00000213          	li	tp,0
   12954:	f00000b7          	lui	ra,0xf0000
   12958:	f0000137          	lui	sp,0xf0000
   1295c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   12960:	00000013          	nop
   12964:	00000013          	nop
   12968:	0c20e063          	bltu	ra,sp,12a28 <fail>
   1296c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12970:	00200293          	li	t0,2
   12974:	fe5210e3          	bne	tp,t0,12954 <test_17+0x8>

00012978 <test_18>:
   12978:	01200e13          	li	t3,18
   1297c:	00000213          	li	tp,0
   12980:	f00000b7          	lui	ra,0xf0000
   12984:	00000013          	nop
   12988:	f0000137          	lui	sp,0xf0000
   1298c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   12990:	0820ec63          	bltu	ra,sp,12a28 <fail>
   12994:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12998:	00200293          	li	t0,2
   1299c:	fe5212e3          	bne	tp,t0,12980 <test_18+0x8>

000129a0 <test_19>:
   129a0:	01300e13          	li	t3,19
   129a4:	00000213          	li	tp,0
   129a8:	f00000b7          	lui	ra,0xf0000
   129ac:	00000013          	nop
   129b0:	f0000137          	lui	sp,0xf0000
   129b4:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   129b8:	00000013          	nop
   129bc:	0620e663          	bltu	ra,sp,12a28 <fail>
   129c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   129c4:	00200293          	li	t0,2
   129c8:	fe5210e3          	bne	tp,t0,129a8 <test_19+0x8>

000129cc <test_20>:
   129cc:	01400e13          	li	t3,20
   129d0:	00000213          	li	tp,0
   129d4:	f00000b7          	lui	ra,0xf0000
   129d8:	00000013          	nop
   129dc:	00000013          	nop
   129e0:	f0000137          	lui	sp,0xf0000
   129e4:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0xefefff8f>
   129e8:	0420e063          	bltu	ra,sp,12a28 <fail>
   129ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   129f0:	00200293          	li	t0,2
   129f4:	fe5210e3          	bne	tp,t0,129d4 <test_20+0x8>

000129f8 <test_21>:
   129f8:	00100093          	li	ra,1
   129fc:	00106a63          	bltu	zero,ra,12a10 <test_21+0x18>
   12a00:	00108093          	addi	ra,ra,1 # f0000001 <_edata+0xefefff91>
   12a04:	00108093          	addi	ra,ra,1
   12a08:	00108093          	addi	ra,ra,1
   12a0c:	00108093          	addi	ra,ra,1
   12a10:	00108093          	addi	ra,ra,1
   12a14:	00108093          	addi	ra,ra,1
   12a18:	00300e93          	li	t4,3
   12a1c:	01500e13          	li	t3,21
   12a20:	01d09463          	bne	ra,t4,12a28 <fail>
   12a24:	05c01463          	bne	zero,t3,12a6c <pass>

00012a28 <fail>:
   12a28:	0ff00513          	li	a0,255

00012a2c <.delay_fail>:
   12a2c:	fff50513          	addi	a0,a0,-1
   12a30:	fe051ee3          	bnez	a0,12a2c <.delay_fail>
   12a34:	02000537          	lui	a0,0x2000
   12a38:	04500593          	li	a1,69
   12a3c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12a40:	05200613          	li	a2,82
   12a44:	00c52023          	sw	a2,0(a0)
   12a48:	00c52023          	sw	a2,0(a0)
   12a4c:	04f00693          	li	a3,79
   12a50:	00d52023          	sw	a3,0(a0)
   12a54:	00c52023          	sw	a2,0(a0)
   12a58:	00d00713          	li	a4,13
   12a5c:	00e52023          	sw	a4,0(a0)
   12a60:	00a00793          	li	a5,10
   12a64:	00f52023          	sw	a5,0(a0)
   12a68:	e8cfd06f          	j	100f4 <bltu_ret>

00012a6c <pass>:
   12a6c:	0ff00513          	li	a0,255

00012a70 <.delay_ok>:
   12a70:	fff50513          	addi	a0,a0,-1
   12a74:	fe051ee3          	bnez	a0,12a70 <.delay_ok>
   12a78:	02000537          	lui	a0,0x2000
   12a7c:	04f00593          	li	a1,79
   12a80:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12a84:	04b00613          	li	a2,75
   12a88:	00c52023          	sw	a2,0(a0)
   12a8c:	00d00693          	li	a3,13
   12a90:	00d52023          	sw	a3,0(a0)
   12a94:	00a00713          	li	a4,10
   12a98:	00e52023          	sw	a4,0(a0)
   12a9c:	e58fd06f          	j	100f4 <bltu_ret>

00012aa0 <mul>:
   12aa0:	0ff00513          	li	a0,255

00012aa4 <.delay_pr>:
   12aa4:	fff50513          	addi	a0,a0,-1
   12aa8:	fe051ee3          	bnez	a0,12aa4 <.delay_pr>
   12aac:	00013537          	lui	a0,0x13
   12ab0:	acc50513          	addi	a0,a0,-1332 # 12acc <.test_name>
   12ab4:	02000637          	lui	a2,0x2000

00012ab8 <.prname_next>:
   12ab8:	00050583          	lb	a1,0(a0)
   12abc:	00058a63          	beqz	a1,12ad0 <.prname_done>
   12ac0:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   12ac4:	00150513          	addi	a0,a0,1
   12ac8:	ff1ff06f          	j	12ab8 <.prname_next>

00012acc <.test_name>:
   12acc:	756d                	lui	a0,0xffffb
   12ace:	006c                	addi	a1,sp,12

00012ad0 <.prname_done>:
   12ad0:	02e00593          	li	a1,46
   12ad4:	00b62023          	sw	a1,0(a2)
   12ad8:	00b62023          	sw	a1,0(a2)

00012adc <test_32>:
   12adc:	000080b7          	lui	ra,0x8
   12ae0:	e0008093          	addi	ra,ra,-512 # 7e00 <_start-0x8200>
   12ae4:	b6db7137          	lui	sp,0xb6db7
   12ae8:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0xb6cb6d47>
   12aec:	022081b3          	mul	gp,ra,sp
   12af0:	00001eb7          	lui	t4,0x1
   12af4:	200e8e93          	addi	t4,t4,512 # 1200 <_start-0xee00>
   12af8:	02000e13          	li	t3,32
   12afc:	4bd19463          	bne	gp,t4,12fa4 <fail>

00012b00 <test_33>:
   12b00:	000080b7          	lui	ra,0x8
   12b04:	fc008093          	addi	ra,ra,-64 # 7fc0 <_start-0x8040>
   12b08:	b6db7137          	lui	sp,0xb6db7
   12b0c:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0xb6cb6d47>
   12b10:	022081b3          	mul	gp,ra,sp
   12b14:	00001eb7          	lui	t4,0x1
   12b18:	240e8e93          	addi	t4,t4,576 # 1240 <_start-0xedc0>
   12b1c:	02100e13          	li	t3,33
   12b20:	49d19263          	bne	gp,t4,12fa4 <fail>

00012b24 <test_2>:
   12b24:	00000093          	li	ra,0
   12b28:	00000113          	li	sp,0
   12b2c:	022081b3          	mul	gp,ra,sp
   12b30:	00000e93          	li	t4,0
   12b34:	00200e13          	li	t3,2
   12b38:	47d19663          	bne	gp,t4,12fa4 <fail>

00012b3c <test_3>:
   12b3c:	00100093          	li	ra,1
   12b40:	00100113          	li	sp,1
   12b44:	022081b3          	mul	gp,ra,sp
   12b48:	00100e93          	li	t4,1
   12b4c:	00300e13          	li	t3,3
   12b50:	45d19a63          	bne	gp,t4,12fa4 <fail>

00012b54 <test_4>:
   12b54:	00300093          	li	ra,3
   12b58:	00700113          	li	sp,7
   12b5c:	022081b3          	mul	gp,ra,sp
   12b60:	01500e93          	li	t4,21
   12b64:	00400e13          	li	t3,4
   12b68:	43d19e63          	bne	gp,t4,12fa4 <fail>

00012b6c <test_5>:
   12b6c:	00000093          	li	ra,0
   12b70:	ffff8137          	lui	sp,0xffff8
   12b74:	022081b3          	mul	gp,ra,sp
   12b78:	00000e93          	li	t4,0
   12b7c:	00500e13          	li	t3,5
   12b80:	43d19263          	bne	gp,t4,12fa4 <fail>

00012b84 <test_6>:
   12b84:	800000b7          	lui	ra,0x80000
   12b88:	00000113          	li	sp,0
   12b8c:	022081b3          	mul	gp,ra,sp
   12b90:	00000e93          	li	t4,0
   12b94:	00600e13          	li	t3,6
   12b98:	41d19663          	bne	gp,t4,12fa4 <fail>

00012b9c <test_7>:
   12b9c:	800000b7          	lui	ra,0x80000
   12ba0:	ffff8137          	lui	sp,0xffff8
   12ba4:	022081b3          	mul	gp,ra,sp
   12ba8:	00000e93          	li	t4,0
   12bac:	00700e13          	li	t3,7
   12bb0:	3fd19a63          	bne	gp,t4,12fa4 <fail>

00012bb4 <test_30>:
   12bb4:	aaaab0b7          	lui	ra,0xaaaab
   12bb8:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   12bbc:	00030137          	lui	sp,0x30
   12bc0:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x16019>
   12bc4:	022081b3          	mul	gp,ra,sp
   12bc8:	00010eb7          	lui	t4,0x10
   12bcc:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12bd0:	01e00e13          	li	t3,30
   12bd4:	3dd19863          	bne	gp,t4,12fa4 <fail>

00012bd8 <test_31>:
   12bd8:	000300b7          	lui	ra,0x30
   12bdc:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x16019>
   12be0:	aaaab137          	lui	sp,0xaaaab
   12be4:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   12be8:	022081b3          	mul	gp,ra,sp
   12bec:	00010eb7          	lui	t4,0x10
   12bf0:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12bf4:	01f00e13          	li	t3,31
   12bf8:	3bd19663          	bne	gp,t4,12fa4 <fail>

00012bfc <test_34>:
   12bfc:	ff0000b7          	lui	ra,0xff000
   12c00:	ff000137          	lui	sp,0xff000
   12c04:	022081b3          	mul	gp,ra,sp
   12c08:	00000e93          	li	t4,0
   12c0c:	02200e13          	li	t3,34
   12c10:	39d19a63          	bne	gp,t4,12fa4 <fail>

00012c14 <test_35>:
   12c14:	fff00093          	li	ra,-1
   12c18:	fff00113          	li	sp,-1
   12c1c:	022081b3          	mul	gp,ra,sp
   12c20:	00100e93          	li	t4,1
   12c24:	02300e13          	li	t3,35
   12c28:	37d19e63          	bne	gp,t4,12fa4 <fail>

00012c2c <test_36>:
   12c2c:	fff00093          	li	ra,-1
   12c30:	00100113          	li	sp,1
   12c34:	022081b3          	mul	gp,ra,sp
   12c38:	fff00e93          	li	t4,-1
   12c3c:	02400e13          	li	t3,36
   12c40:	37d19263          	bne	gp,t4,12fa4 <fail>

00012c44 <test_37>:
   12c44:	00100093          	li	ra,1
   12c48:	fff00113          	li	sp,-1
   12c4c:	022081b3          	mul	gp,ra,sp
   12c50:	fff00e93          	li	t4,-1
   12c54:	02500e13          	li	t3,37
   12c58:	35d19663          	bne	gp,t4,12fa4 <fail>

00012c5c <test_8>:
   12c5c:	00d00093          	li	ra,13
   12c60:	00b00113          	li	sp,11
   12c64:	022080b3          	mul	ra,ra,sp
   12c68:	08f00e93          	li	t4,143
   12c6c:	00800e13          	li	t3,8
   12c70:	33d09a63          	bne	ra,t4,12fa4 <fail>

00012c74 <test_9>:
   12c74:	00e00093          	li	ra,14
   12c78:	00b00113          	li	sp,11
   12c7c:	02208133          	mul	sp,ra,sp
   12c80:	09a00e93          	li	t4,154
   12c84:	00900e13          	li	t3,9
   12c88:	31d11e63          	bne	sp,t4,12fa4 <fail>

00012c8c <test_10>:
   12c8c:	00d00093          	li	ra,13
   12c90:	021080b3          	mul	ra,ra,ra
   12c94:	0a900e93          	li	t4,169
   12c98:	00a00e13          	li	t3,10
   12c9c:	31d09463          	bne	ra,t4,12fa4 <fail>

00012ca0 <test_11>:
   12ca0:	00000213          	li	tp,0
   12ca4:	00d00093          	li	ra,13
   12ca8:	00b00113          	li	sp,11
   12cac:	022081b3          	mul	gp,ra,sp
   12cb0:	00018313          	mv	t1,gp
   12cb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12cb8:	00200293          	li	t0,2
   12cbc:	fe5214e3          	bne	tp,t0,12ca4 <test_11+0x4>
   12cc0:	08f00e93          	li	t4,143
   12cc4:	00b00e13          	li	t3,11
   12cc8:	2dd31e63          	bne	t1,t4,12fa4 <fail>

00012ccc <test_12>:
   12ccc:	00000213          	li	tp,0
   12cd0:	00e00093          	li	ra,14
   12cd4:	00b00113          	li	sp,11
   12cd8:	022081b3          	mul	gp,ra,sp
   12cdc:	00000013          	nop
   12ce0:	00018313          	mv	t1,gp
   12ce4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12ce8:	00200293          	li	t0,2
   12cec:	fe5212e3          	bne	tp,t0,12cd0 <test_12+0x4>
   12cf0:	09a00e93          	li	t4,154
   12cf4:	00c00e13          	li	t3,12
   12cf8:	2bd31663          	bne	t1,t4,12fa4 <fail>

00012cfc <test_13>:
   12cfc:	00000213          	li	tp,0
   12d00:	00f00093          	li	ra,15
   12d04:	00b00113          	li	sp,11
   12d08:	022081b3          	mul	gp,ra,sp
   12d0c:	00000013          	nop
   12d10:	00000013          	nop
   12d14:	00018313          	mv	t1,gp
   12d18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d1c:	00200293          	li	t0,2
   12d20:	fe5210e3          	bne	tp,t0,12d00 <test_13+0x4>
   12d24:	0a500e93          	li	t4,165
   12d28:	00d00e13          	li	t3,13
   12d2c:	27d31c63          	bne	t1,t4,12fa4 <fail>

00012d30 <test_14>:
   12d30:	00000213          	li	tp,0
   12d34:	00d00093          	li	ra,13
   12d38:	00b00113          	li	sp,11
   12d3c:	022081b3          	mul	gp,ra,sp
   12d40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d44:	00200293          	li	t0,2
   12d48:	fe5216e3          	bne	tp,t0,12d34 <test_14+0x4>
   12d4c:	08f00e93          	li	t4,143
   12d50:	00e00e13          	li	t3,14
   12d54:	25d19863          	bne	gp,t4,12fa4 <fail>

00012d58 <test_15>:
   12d58:	00000213          	li	tp,0
   12d5c:	00e00093          	li	ra,14
   12d60:	00b00113          	li	sp,11
   12d64:	00000013          	nop
   12d68:	022081b3          	mul	gp,ra,sp
   12d6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d70:	00200293          	li	t0,2
   12d74:	fe5214e3          	bne	tp,t0,12d5c <test_15+0x4>
   12d78:	09a00e93          	li	t4,154
   12d7c:	00f00e13          	li	t3,15
   12d80:	23d19263          	bne	gp,t4,12fa4 <fail>

00012d84 <test_16>:
   12d84:	00000213          	li	tp,0
   12d88:	00f00093          	li	ra,15
   12d8c:	00b00113          	li	sp,11
   12d90:	00000013          	nop
   12d94:	00000013          	nop
   12d98:	022081b3          	mul	gp,ra,sp
   12d9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12da0:	00200293          	li	t0,2
   12da4:	fe5212e3          	bne	tp,t0,12d88 <test_16+0x4>
   12da8:	0a500e93          	li	t4,165
   12dac:	01000e13          	li	t3,16
   12db0:	1fd19a63          	bne	gp,t4,12fa4 <fail>

00012db4 <test_17>:
   12db4:	00000213          	li	tp,0
   12db8:	00d00093          	li	ra,13
   12dbc:	00000013          	nop
   12dc0:	00b00113          	li	sp,11
   12dc4:	022081b3          	mul	gp,ra,sp
   12dc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12dcc:	00200293          	li	t0,2
   12dd0:	fe5214e3          	bne	tp,t0,12db8 <test_17+0x4>
   12dd4:	08f00e93          	li	t4,143
   12dd8:	01100e13          	li	t3,17
   12ddc:	1dd19463          	bne	gp,t4,12fa4 <fail>

00012de0 <test_18>:
   12de0:	00000213          	li	tp,0
   12de4:	00e00093          	li	ra,14
   12de8:	00000013          	nop
   12dec:	00b00113          	li	sp,11
   12df0:	00000013          	nop
   12df4:	022081b3          	mul	gp,ra,sp
   12df8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12dfc:	00200293          	li	t0,2
   12e00:	fe5212e3          	bne	tp,t0,12de4 <test_18+0x4>
   12e04:	09a00e93          	li	t4,154
   12e08:	01200e13          	li	t3,18
   12e0c:	19d19c63          	bne	gp,t4,12fa4 <fail>

00012e10 <test_19>:
   12e10:	00000213          	li	tp,0
   12e14:	00f00093          	li	ra,15
   12e18:	00000013          	nop
   12e1c:	00000013          	nop
   12e20:	00b00113          	li	sp,11
   12e24:	022081b3          	mul	gp,ra,sp
   12e28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e2c:	00200293          	li	t0,2
   12e30:	fe5212e3          	bne	tp,t0,12e14 <test_19+0x4>
   12e34:	0a500e93          	li	t4,165
   12e38:	01300e13          	li	t3,19
   12e3c:	17d19463          	bne	gp,t4,12fa4 <fail>

00012e40 <test_20>:
   12e40:	00000213          	li	tp,0
   12e44:	00b00113          	li	sp,11
   12e48:	00d00093          	li	ra,13
   12e4c:	022081b3          	mul	gp,ra,sp
   12e50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e54:	00200293          	li	t0,2
   12e58:	fe5216e3          	bne	tp,t0,12e44 <test_20+0x4>
   12e5c:	08f00e93          	li	t4,143
   12e60:	01400e13          	li	t3,20
   12e64:	15d19063          	bne	gp,t4,12fa4 <fail>

00012e68 <test_21>:
   12e68:	00000213          	li	tp,0
   12e6c:	00b00113          	li	sp,11
   12e70:	00e00093          	li	ra,14
   12e74:	00000013          	nop
   12e78:	022081b3          	mul	gp,ra,sp
   12e7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e80:	00200293          	li	t0,2
   12e84:	fe5214e3          	bne	tp,t0,12e6c <test_21+0x4>
   12e88:	09a00e93          	li	t4,154
   12e8c:	01500e13          	li	t3,21
   12e90:	11d19a63          	bne	gp,t4,12fa4 <fail>

00012e94 <test_22>:
   12e94:	00000213          	li	tp,0
   12e98:	00b00113          	li	sp,11
   12e9c:	00f00093          	li	ra,15
   12ea0:	00000013          	nop
   12ea4:	00000013          	nop
   12ea8:	022081b3          	mul	gp,ra,sp
   12eac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12eb0:	00200293          	li	t0,2
   12eb4:	fe5212e3          	bne	tp,t0,12e98 <test_22+0x4>
   12eb8:	0a500e93          	li	t4,165
   12ebc:	01600e13          	li	t3,22
   12ec0:	0fd19263          	bne	gp,t4,12fa4 <fail>

00012ec4 <test_23>:
   12ec4:	00000213          	li	tp,0
   12ec8:	00b00113          	li	sp,11
   12ecc:	00000013          	nop
   12ed0:	00d00093          	li	ra,13
   12ed4:	022081b3          	mul	gp,ra,sp
   12ed8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12edc:	00200293          	li	t0,2
   12ee0:	fe5214e3          	bne	tp,t0,12ec8 <test_23+0x4>
   12ee4:	08f00e93          	li	t4,143
   12ee8:	01700e13          	li	t3,23
   12eec:	0bd19c63          	bne	gp,t4,12fa4 <fail>

00012ef0 <test_24>:
   12ef0:	00000213          	li	tp,0
   12ef4:	00b00113          	li	sp,11
   12ef8:	00000013          	nop
   12efc:	00e00093          	li	ra,14
   12f00:	00000013          	nop
   12f04:	022081b3          	mul	gp,ra,sp
   12f08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12f0c:	00200293          	li	t0,2
   12f10:	fe5212e3          	bne	tp,t0,12ef4 <test_24+0x4>
   12f14:	09a00e93          	li	t4,154
   12f18:	01800e13          	li	t3,24
   12f1c:	09d19463          	bne	gp,t4,12fa4 <fail>

00012f20 <test_25>:
   12f20:	00000213          	li	tp,0
   12f24:	00b00113          	li	sp,11
   12f28:	00000013          	nop
   12f2c:	00000013          	nop
   12f30:	00f00093          	li	ra,15
   12f34:	022081b3          	mul	gp,ra,sp
   12f38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12f3c:	00200293          	li	t0,2
   12f40:	fe5212e3          	bne	tp,t0,12f24 <test_25+0x4>
   12f44:	0a500e93          	li	t4,165
   12f48:	01900e13          	li	t3,25
   12f4c:	05d19c63          	bne	gp,t4,12fa4 <fail>

00012f50 <test_26>:
   12f50:	01f00093          	li	ra,31
   12f54:	02100133          	mul	sp,zero,ra
   12f58:	00000e93          	li	t4,0
   12f5c:	01a00e13          	li	t3,26
   12f60:	05d11263          	bne	sp,t4,12fa4 <fail>

00012f64 <test_27>:
   12f64:	02000093          	li	ra,32
   12f68:	02008133          	mul	sp,ra,zero
   12f6c:	00000e93          	li	t4,0
   12f70:	01b00e13          	li	t3,27
   12f74:	03d11863          	bne	sp,t4,12fa4 <fail>

00012f78 <test_28>:
   12f78:	020000b3          	mul	ra,zero,zero
   12f7c:	00000e93          	li	t4,0
   12f80:	01c00e13          	li	t3,28
   12f84:	03d09063          	bne	ra,t4,12fa4 <fail>

00012f88 <test_29>:
   12f88:	02100093          	li	ra,33
   12f8c:	02200113          	li	sp,34
   12f90:	02208033          	mul	zero,ra,sp
   12f94:	00000e93          	li	t4,0
   12f98:	01d00e13          	li	t3,29
   12f9c:	01d01463          	bne	zero,t4,12fa4 <fail>
   12fa0:	05c01463          	bne	zero,t3,12fe8 <pass>

00012fa4 <fail>:
   12fa4:	0ff00513          	li	a0,255

00012fa8 <.delay_fail>:
   12fa8:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0xffefaf8f>
   12fac:	fe051ee3          	bnez	a0,12fa8 <.delay_fail>
   12fb0:	02000537          	lui	a0,0x2000
   12fb4:	04500593          	li	a1,69
   12fb8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   12fbc:	05200613          	li	a2,82
   12fc0:	00c52023          	sw	a2,0(a0)
   12fc4:	00c52023          	sw	a2,0(a0)
   12fc8:	04f00693          	li	a3,79
   12fcc:	00d52023          	sw	a3,0(a0)
   12fd0:	00c52023          	sw	a2,0(a0)
   12fd4:	00d00713          	li	a4,13
   12fd8:	00e52023          	sw	a4,0(a0)
   12fdc:	00a00793          	li	a5,10
   12fe0:	00f52023          	sw	a5,0(a0)
   12fe4:	988fd06f          	j	1016c <mul_ret>

00012fe8 <pass>:
   12fe8:	0ff00513          	li	a0,255

00012fec <.delay_ok>:
   12fec:	fff50513          	addi	a0,a0,-1
   12ff0:	fe051ee3          	bnez	a0,12fec <.delay_ok>
   12ff4:	02000537          	lui	a0,0x2000
   12ff8:	04f00593          	li	a1,79
   12ffc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   13000:	04b00613          	li	a2,75
   13004:	00c52023          	sw	a2,0(a0)
   13008:	00d00693          	li	a3,13
   1300c:	00d52023          	sw	a3,0(a0)
   13010:	00a00713          	li	a4,10
   13014:	00e52023          	sw	a4,0(a0)
   13018:	954fd06f          	j	1016c <mul_ret>

0001301c <slti>:
   1301c:	0ff00513          	li	a0,255

00013020 <.delay_pr>:
   13020:	fff50513          	addi	a0,a0,-1
   13024:	fe051ee3          	bnez	a0,13020 <.delay_pr>
   13028:	00013537          	lui	a0,0x13
   1302c:	04850513          	addi	a0,a0,72 # 13048 <.test_name>
   13030:	02000637          	lui	a2,0x2000

00013034 <.prname_next>:
   13034:	00050583          	lb	a1,0(a0)
   13038:	00058c63          	beqz	a1,13050 <.prname_done>
   1303c:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   13040:	00150513          	addi	a0,a0,1
   13044:	ff1ff06f          	j	13034 <.prname_next>

00013048 <.test_name>:
   13048:	69746c73          	csrrsi	s8,0x697,8
   1304c:	0000                	unimp
	...

00013050 <.prname_done>:
   13050:	02e00593          	li	a1,46
   13054:	00b62023          	sw	a1,0(a2)
   13058:	00b62023          	sw	a1,0(a2)

0001305c <test_2>:
   1305c:	00000093          	li	ra,0
   13060:	0000a193          	slti	gp,ra,0
   13064:	00000e93          	li	t4,0
   13068:	00200e13          	li	t3,2
   1306c:	27d19263          	bne	gp,t4,132d0 <fail>

00013070 <test_3>:
   13070:	00100093          	li	ra,1
   13074:	0010a193          	slti	gp,ra,1
   13078:	00000e93          	li	t4,0
   1307c:	00300e13          	li	t3,3
   13080:	25d19863          	bne	gp,t4,132d0 <fail>

00013084 <test_4>:
   13084:	00300093          	li	ra,3
   13088:	0070a193          	slti	gp,ra,7
   1308c:	00100e93          	li	t4,1
   13090:	00400e13          	li	t3,4
   13094:	23d19e63          	bne	gp,t4,132d0 <fail>

00013098 <test_5>:
   13098:	00700093          	li	ra,7
   1309c:	0030a193          	slti	gp,ra,3
   130a0:	00000e93          	li	t4,0
   130a4:	00500e13          	li	t3,5
   130a8:	23d19463          	bne	gp,t4,132d0 <fail>

000130ac <test_6>:
   130ac:	00000093          	li	ra,0
   130b0:	8000a193          	slti	gp,ra,-2048
   130b4:	00000e93          	li	t4,0
   130b8:	00600e13          	li	t3,6
   130bc:	21d19a63          	bne	gp,t4,132d0 <fail>

000130c0 <test_7>:
   130c0:	800000b7          	lui	ra,0x80000
   130c4:	0000a193          	slti	gp,ra,0
   130c8:	00100e93          	li	t4,1
   130cc:	00700e13          	li	t3,7
   130d0:	21d19063          	bne	gp,t4,132d0 <fail>

000130d4 <test_8>:
   130d4:	800000b7          	lui	ra,0x80000
   130d8:	8000a193          	slti	gp,ra,-2048
   130dc:	00100e93          	li	t4,1
   130e0:	00800e13          	li	t3,8
   130e4:	1fd19663          	bne	gp,t4,132d0 <fail>

000130e8 <test_9>:
   130e8:	00000093          	li	ra,0
   130ec:	7ff0a193          	slti	gp,ra,2047
   130f0:	00100e93          	li	t4,1
   130f4:	00900e13          	li	t3,9
   130f8:	1dd19c63          	bne	gp,t4,132d0 <fail>

000130fc <test_10>:
   130fc:	800000b7          	lui	ra,0x80000
   13100:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   13104:	0000a193          	slti	gp,ra,0
   13108:	00000e93          	li	t4,0
   1310c:	00a00e13          	li	t3,10
   13110:	1dd19063          	bne	gp,t4,132d0 <fail>

00013114 <test_11>:
   13114:	800000b7          	lui	ra,0x80000
   13118:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   1311c:	7ff0a193          	slti	gp,ra,2047
   13120:	00000e93          	li	t4,0
   13124:	00b00e13          	li	t3,11
   13128:	1bd19463          	bne	gp,t4,132d0 <fail>

0001312c <test_12>:
   1312c:	800000b7          	lui	ra,0x80000
   13130:	7ff0a193          	slti	gp,ra,2047
   13134:	00100e93          	li	t4,1
   13138:	00c00e13          	li	t3,12
   1313c:	19d19a63          	bne	gp,t4,132d0 <fail>

00013140 <test_13>:
   13140:	800000b7          	lui	ra,0x80000
   13144:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   13148:	8000a193          	slti	gp,ra,-2048
   1314c:	00000e93          	li	t4,0
   13150:	00d00e13          	li	t3,13
   13154:	17d19e63          	bne	gp,t4,132d0 <fail>

00013158 <test_14>:
   13158:	00000093          	li	ra,0
   1315c:	fff0a193          	slti	gp,ra,-1
   13160:	00000e93          	li	t4,0
   13164:	00e00e13          	li	t3,14
   13168:	17d19463          	bne	gp,t4,132d0 <fail>

0001316c <test_15>:
   1316c:	fff00093          	li	ra,-1
   13170:	0010a193          	slti	gp,ra,1
   13174:	00100e93          	li	t4,1
   13178:	00f00e13          	li	t3,15
   1317c:	15d19a63          	bne	gp,t4,132d0 <fail>

00013180 <test_16>:
   13180:	fff00093          	li	ra,-1
   13184:	fff0a193          	slti	gp,ra,-1
   13188:	00000e93          	li	t4,0
   1318c:	01000e13          	li	t3,16
   13190:	15d19063          	bne	gp,t4,132d0 <fail>

00013194 <test_17>:
   13194:	00b00093          	li	ra,11
   13198:	00d0b093          	sltiu	ra,ra,13
   1319c:	00100e93          	li	t4,1
   131a0:	01100e13          	li	t3,17
   131a4:	13d09663          	bne	ra,t4,132d0 <fail>

000131a8 <test_18>:
   131a8:	00000213          	li	tp,0
   131ac:	00f00093          	li	ra,15
   131b0:	00a0a193          	slti	gp,ra,10
   131b4:	00018313          	mv	t1,gp
   131b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   131bc:	00200293          	li	t0,2
   131c0:	fe5216e3          	bne	tp,t0,131ac <test_18+0x4>
   131c4:	00000e93          	li	t4,0
   131c8:	01200e13          	li	t3,18
   131cc:	11d31263          	bne	t1,t4,132d0 <fail>

000131d0 <test_19>:
   131d0:	00000213          	li	tp,0
   131d4:	00a00093          	li	ra,10
   131d8:	0100a193          	slti	gp,ra,16
   131dc:	00000013          	nop
   131e0:	00018313          	mv	t1,gp
   131e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   131e8:	00200293          	li	t0,2
   131ec:	fe5214e3          	bne	tp,t0,131d4 <test_19+0x4>
   131f0:	00100e93          	li	t4,1
   131f4:	01300e13          	li	t3,19
   131f8:	0dd31c63          	bne	t1,t4,132d0 <fail>

000131fc <test_20>:
   131fc:	00000213          	li	tp,0
   13200:	01000093          	li	ra,16
   13204:	0090a193          	slti	gp,ra,9
   13208:	00000013          	nop
   1320c:	00000013          	nop
   13210:	00018313          	mv	t1,gp
   13214:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13218:	00200293          	li	t0,2
   1321c:	fe5212e3          	bne	tp,t0,13200 <test_20+0x4>
   13220:	00000e93          	li	t4,0
   13224:	01400e13          	li	t3,20
   13228:	0bd31463          	bne	t1,t4,132d0 <fail>

0001322c <test_21>:
   1322c:	00000213          	li	tp,0
   13230:	00b00093          	li	ra,11
   13234:	00f0a193          	slti	gp,ra,15
   13238:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1323c:	00200293          	li	t0,2
   13240:	fe5218e3          	bne	tp,t0,13230 <test_21+0x4>
   13244:	00100e93          	li	t4,1
   13248:	01500e13          	li	t3,21
   1324c:	09d19263          	bne	gp,t4,132d0 <fail>

00013250 <test_22>:
   13250:	00000213          	li	tp,0
   13254:	01100093          	li	ra,17
   13258:	00000013          	nop
   1325c:	0080a193          	slti	gp,ra,8
   13260:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13264:	00200293          	li	t0,2
   13268:	fe5216e3          	bne	tp,t0,13254 <test_22+0x4>
   1326c:	00000e93          	li	t4,0
   13270:	01600e13          	li	t3,22
   13274:	05d19e63          	bne	gp,t4,132d0 <fail>

00013278 <test_23>:
   13278:	00000213          	li	tp,0
   1327c:	00c00093          	li	ra,12
   13280:	00000013          	nop
   13284:	00000013          	nop
   13288:	00e0a193          	slti	gp,ra,14
   1328c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13290:	00200293          	li	t0,2
   13294:	fe5214e3          	bne	tp,t0,1327c <test_23+0x4>
   13298:	00100e93          	li	t4,1
   1329c:	01700e13          	li	t3,23
   132a0:	03d19863          	bne	gp,t4,132d0 <fail>

000132a4 <test_24>:
   132a4:	fff02093          	slti	ra,zero,-1
   132a8:	00000e93          	li	t4,0
   132ac:	01800e13          	li	t3,24
   132b0:	03d09063          	bne	ra,t4,132d0 <fail>

000132b4 <test_25>:
   132b4:	00ff00b7          	lui	ra,0xff0
   132b8:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   132bc:	fff0a013          	slti	zero,ra,-1
   132c0:	00000e93          	li	t4,0
   132c4:	01900e13          	li	t3,25
   132c8:	01d01463          	bne	zero,t4,132d0 <fail>
   132cc:	05c01463          	bne	zero,t3,13314 <pass>

000132d0 <fail>:
   132d0:	0ff00513          	li	a0,255

000132d4 <.delay_fail>:
   132d4:	fff50513          	addi	a0,a0,-1
   132d8:	fe051ee3          	bnez	a0,132d4 <.delay_fail>
   132dc:	02000537          	lui	a0,0x2000
   132e0:	04500593          	li	a1,69
   132e4:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   132e8:	05200613          	li	a2,82
   132ec:	00c52023          	sw	a2,0(a0)
   132f0:	00c52023          	sw	a2,0(a0)
   132f4:	04f00693          	li	a3,79
   132f8:	00d52023          	sw	a3,0(a0)
   132fc:	00c52023          	sw	a2,0(a0)
   13300:	00d00713          	li	a4,13
   13304:	00e52023          	sw	a4,0(a0)
   13308:	00a00793          	li	a5,10
   1330c:	00f52023          	sw	a5,0(a0)
   13310:	e11fc06f          	j	10120 <slti_ret>

00013314 <pass>:
   13314:	0ff00513          	li	a0,255

00013318 <.delay_ok>:
   13318:	fff50513          	addi	a0,a0,-1
   1331c:	fe051ee3          	bnez	a0,13318 <.delay_ok>
   13320:	02000537          	lui	a0,0x2000
   13324:	04f00593          	li	a1,79
   13328:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   1332c:	04b00613          	li	a2,75
   13330:	00c52023          	sw	a2,0(a0)
   13334:	00d00693          	li	a3,13
   13338:	00d52023          	sw	a3,0(a0)
   1333c:	00a00713          	li	a4,10
   13340:	00e52023          	sw	a4,0(a0)
   13344:	dddfc06f          	j	10120 <slti_ret>

00013348 <beq>:
   13348:	0ff00513          	li	a0,255

0001334c <.delay_pr>:
   1334c:	fff50513          	addi	a0,a0,-1
   13350:	fe051ee3          	bnez	a0,1334c <.delay_pr>
   13354:	00013537          	lui	a0,0x13
   13358:	37450513          	addi	a0,a0,884 # 13374 <.test_name>
   1335c:	02000637          	lui	a2,0x2000

00013360 <.prname_next>:
   13360:	00050583          	lb	a1,0(a0)
   13364:	00058a63          	beqz	a1,13378 <.prname_done>
   13368:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   1336c:	00150513          	addi	a0,a0,1
   13370:	ff1ff06f          	j	13360 <.prname_next>

00013374 <.test_name>:
   13374:	6562                	flw	fa0,24(sp)
   13376:	0071                	c.nop	28

00013378 <.prname_done>:
   13378:	02e00593          	li	a1,46
   1337c:	00b62023          	sw	a1,0(a2)
   13380:	00b62023          	sw	a1,0(a2)

00013384 <test_2>:
   13384:	00200e13          	li	t3,2
   13388:	00000093          	li	ra,0
   1338c:	00000113          	li	sp,0
   13390:	00208663          	beq	ra,sp,1339c <test_2+0x18>
   13394:	2bc01863          	bne	zero,t3,13644 <fail>
   13398:	01c01663          	bne	zero,t3,133a4 <test_3>
   1339c:	fe208ee3          	beq	ra,sp,13398 <test_2+0x14>
   133a0:	2bc01263          	bne	zero,t3,13644 <fail>

000133a4 <test_3>:
   133a4:	00300e13          	li	t3,3
   133a8:	00100093          	li	ra,1
   133ac:	00100113          	li	sp,1
   133b0:	00208663          	beq	ra,sp,133bc <test_3+0x18>
   133b4:	29c01863          	bne	zero,t3,13644 <fail>
   133b8:	01c01663          	bne	zero,t3,133c4 <test_4>
   133bc:	fe208ee3          	beq	ra,sp,133b8 <test_3+0x14>
   133c0:	29c01263          	bne	zero,t3,13644 <fail>

000133c4 <test_4>:
   133c4:	00400e13          	li	t3,4
   133c8:	fff00093          	li	ra,-1
   133cc:	fff00113          	li	sp,-1
   133d0:	00208663          	beq	ra,sp,133dc <test_4+0x18>
   133d4:	27c01863          	bne	zero,t3,13644 <fail>
   133d8:	01c01663          	bne	zero,t3,133e4 <test_5>
   133dc:	fe208ee3          	beq	ra,sp,133d8 <test_4+0x14>
   133e0:	27c01263          	bne	zero,t3,13644 <fail>

000133e4 <test_5>:
   133e4:	00500e13          	li	t3,5
   133e8:	00000093          	li	ra,0
   133ec:	00100113          	li	sp,1
   133f0:	00208463          	beq	ra,sp,133f8 <test_5+0x14>
   133f4:	01c01463          	bne	zero,t3,133fc <test_5+0x18>
   133f8:	25c01663          	bne	zero,t3,13644 <fail>
   133fc:	fe208ee3          	beq	ra,sp,133f8 <test_5+0x14>

00013400 <test_6>:
   13400:	00600e13          	li	t3,6
   13404:	00100093          	li	ra,1
   13408:	00000113          	li	sp,0
   1340c:	00208463          	beq	ra,sp,13414 <test_6+0x14>
   13410:	01c01463          	bne	zero,t3,13418 <test_6+0x18>
   13414:	23c01863          	bne	zero,t3,13644 <fail>
   13418:	fe208ee3          	beq	ra,sp,13414 <test_6+0x14>

0001341c <test_7>:
   1341c:	00700e13          	li	t3,7
   13420:	fff00093          	li	ra,-1
   13424:	00100113          	li	sp,1
   13428:	00208463          	beq	ra,sp,13430 <test_7+0x14>
   1342c:	01c01463          	bne	zero,t3,13434 <test_7+0x18>
   13430:	21c01a63          	bne	zero,t3,13644 <fail>
   13434:	fe208ee3          	beq	ra,sp,13430 <test_7+0x14>

00013438 <test_8>:
   13438:	00800e13          	li	t3,8
   1343c:	00100093          	li	ra,1
   13440:	fff00113          	li	sp,-1
   13444:	00208463          	beq	ra,sp,1344c <test_8+0x14>
   13448:	01c01463          	bne	zero,t3,13450 <test_8+0x18>
   1344c:	1fc01c63          	bne	zero,t3,13644 <fail>
   13450:	fe208ee3          	beq	ra,sp,1344c <test_8+0x14>

00013454 <test_9>:
   13454:	00900e13          	li	t3,9
   13458:	00000213          	li	tp,0
   1345c:	00000093          	li	ra,0
   13460:	fff00113          	li	sp,-1
   13464:	1e208063          	beq	ra,sp,13644 <fail>
   13468:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1346c:	00200293          	li	t0,2
   13470:	fe5216e3          	bne	tp,t0,1345c <test_9+0x8>

00013474 <test_10>:
   13474:	00a00e13          	li	t3,10
   13478:	00000213          	li	tp,0
   1347c:	00000093          	li	ra,0
   13480:	fff00113          	li	sp,-1
   13484:	00000013          	nop
   13488:	1a208e63          	beq	ra,sp,13644 <fail>
   1348c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13490:	00200293          	li	t0,2
   13494:	fe5214e3          	bne	tp,t0,1347c <test_10+0x8>

00013498 <test_11>:
   13498:	00b00e13          	li	t3,11
   1349c:	00000213          	li	tp,0
   134a0:	00000093          	li	ra,0
   134a4:	fff00113          	li	sp,-1
   134a8:	00000013          	nop
   134ac:	00000013          	nop
   134b0:	18208a63          	beq	ra,sp,13644 <fail>
   134b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   134b8:	00200293          	li	t0,2
   134bc:	fe5212e3          	bne	tp,t0,134a0 <test_11+0x8>

000134c0 <test_12>:
   134c0:	00c00e13          	li	t3,12
   134c4:	00000213          	li	tp,0
   134c8:	00000093          	li	ra,0
   134cc:	00000013          	nop
   134d0:	fff00113          	li	sp,-1
   134d4:	16208863          	beq	ra,sp,13644 <fail>
   134d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   134dc:	00200293          	li	t0,2
   134e0:	fe5214e3          	bne	tp,t0,134c8 <test_12+0x8>

000134e4 <test_13>:
   134e4:	00d00e13          	li	t3,13
   134e8:	00000213          	li	tp,0
   134ec:	00000093          	li	ra,0
   134f0:	00000013          	nop
   134f4:	fff00113          	li	sp,-1
   134f8:	00000013          	nop
   134fc:	14208463          	beq	ra,sp,13644 <fail>
   13500:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13504:	00200293          	li	t0,2
   13508:	fe5212e3          	bne	tp,t0,134ec <test_13+0x8>

0001350c <test_14>:
   1350c:	00e00e13          	li	t3,14
   13510:	00000213          	li	tp,0
   13514:	00000093          	li	ra,0
   13518:	00000013          	nop
   1351c:	00000013          	nop
   13520:	fff00113          	li	sp,-1
   13524:	12208063          	beq	ra,sp,13644 <fail>
   13528:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1352c:	00200293          	li	t0,2
   13530:	fe5212e3          	bne	tp,t0,13514 <test_14+0x8>

00013534 <test_15>:
   13534:	00f00e13          	li	t3,15
   13538:	00000213          	li	tp,0
   1353c:	00000093          	li	ra,0
   13540:	fff00113          	li	sp,-1
   13544:	10208063          	beq	ra,sp,13644 <fail>
   13548:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1354c:	00200293          	li	t0,2
   13550:	fe5216e3          	bne	tp,t0,1353c <test_15+0x8>

00013554 <test_16>:
   13554:	01000e13          	li	t3,16
   13558:	00000213          	li	tp,0
   1355c:	00000093          	li	ra,0
   13560:	fff00113          	li	sp,-1
   13564:	00000013          	nop
   13568:	0c208e63          	beq	ra,sp,13644 <fail>
   1356c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13570:	00200293          	li	t0,2
   13574:	fe5214e3          	bne	tp,t0,1355c <test_16+0x8>

00013578 <test_17>:
   13578:	01100e13          	li	t3,17
   1357c:	00000213          	li	tp,0
   13580:	00000093          	li	ra,0
   13584:	fff00113          	li	sp,-1
   13588:	00000013          	nop
   1358c:	00000013          	nop
   13590:	0a208a63          	beq	ra,sp,13644 <fail>
   13594:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13598:	00200293          	li	t0,2
   1359c:	fe5212e3          	bne	tp,t0,13580 <test_17+0x8>

000135a0 <test_18>:
   135a0:	01200e13          	li	t3,18
   135a4:	00000213          	li	tp,0
   135a8:	00000093          	li	ra,0
   135ac:	00000013          	nop
   135b0:	fff00113          	li	sp,-1
   135b4:	08208863          	beq	ra,sp,13644 <fail>
   135b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   135bc:	00200293          	li	t0,2
   135c0:	fe5214e3          	bne	tp,t0,135a8 <test_18+0x8>

000135c4 <test_19>:
   135c4:	01300e13          	li	t3,19
   135c8:	00000213          	li	tp,0
   135cc:	00000093          	li	ra,0
   135d0:	00000013          	nop
   135d4:	fff00113          	li	sp,-1
   135d8:	00000013          	nop
   135dc:	06208463          	beq	ra,sp,13644 <fail>
   135e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   135e4:	00200293          	li	t0,2
   135e8:	fe5212e3          	bne	tp,t0,135cc <test_19+0x8>

000135ec <test_20>:
   135ec:	01400e13          	li	t3,20
   135f0:	00000213          	li	tp,0
   135f4:	00000093          	li	ra,0
   135f8:	00000013          	nop
   135fc:	00000013          	nop
   13600:	fff00113          	li	sp,-1
   13604:	04208063          	beq	ra,sp,13644 <fail>
   13608:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1360c:	00200293          	li	t0,2
   13610:	fe5212e3          	bne	tp,t0,135f4 <test_20+0x8>

00013614 <test_21>:
   13614:	00100093          	li	ra,1
   13618:	00000a63          	beqz	zero,1362c <test_21+0x18>
   1361c:	00108093          	addi	ra,ra,1
   13620:	00108093          	addi	ra,ra,1
   13624:	00108093          	addi	ra,ra,1
   13628:	00108093          	addi	ra,ra,1
   1362c:	00108093          	addi	ra,ra,1
   13630:	00108093          	addi	ra,ra,1
   13634:	00300e93          	li	t4,3
   13638:	01500e13          	li	t3,21
   1363c:	01d09463          	bne	ra,t4,13644 <fail>
   13640:	05c01463          	bne	zero,t3,13688 <pass>

00013644 <fail>:
   13644:	0ff00513          	li	a0,255

00013648 <.delay_fail>:
   13648:	fff50513          	addi	a0,a0,-1
   1364c:	fe051ee3          	bnez	a0,13648 <.delay_fail>
   13650:	02000537          	lui	a0,0x2000
   13654:	04500593          	li	a1,69
   13658:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   1365c:	05200613          	li	a2,82
   13660:	00c52023          	sw	a2,0(a0)
   13664:	00c52023          	sw	a2,0(a0)
   13668:	04f00693          	li	a3,79
   1366c:	00d52023          	sw	a3,0(a0)
   13670:	00c52023          	sw	a2,0(a0)
   13674:	00d00713          	li	a4,13
   13678:	00e52023          	sw	a4,0(a0)
   1367c:	00a00793          	li	a5,10
   13680:	00f52023          	sw	a5,0(a0)
   13684:	a61fc06f          	j	100e4 <beq_ret>

00013688 <pass>:
   13688:	0ff00513          	li	a0,255

0001368c <.delay_ok>:
   1368c:	fff50513          	addi	a0,a0,-1
   13690:	fe051ee3          	bnez	a0,1368c <.delay_ok>
   13694:	02000537          	lui	a0,0x2000
   13698:	04f00593          	li	a1,79
   1369c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   136a0:	04b00613          	li	a2,75
   136a4:	00c52023          	sw	a2,0(a0)
   136a8:	00d00693          	li	a3,13
   136ac:	00d52023          	sw	a3,0(a0)
   136b0:	00a00713          	li	a4,10
   136b4:	00e52023          	sw	a4,0(a0)
   136b8:	a2dfc06f          	j	100e4 <beq_ret>

000136bc <slli>:
   136bc:	0ff00513          	li	a0,255

000136c0 <.delay_pr>:
   136c0:	fff50513          	addi	a0,a0,-1
   136c4:	fe051ee3          	bnez	a0,136c0 <.delay_pr>
   136c8:	00013537          	lui	a0,0x13
   136cc:	6e850513          	addi	a0,a0,1768 # 136e8 <.test_name>
   136d0:	02000637          	lui	a2,0x2000

000136d4 <.prname_next>:
   136d4:	00050583          	lb	a1,0(a0)
   136d8:	00058c63          	beqz	a1,136f0 <.prname_done>
   136dc:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   136e0:	00150513          	addi	a0,a0,1
   136e4:	ff1ff06f          	j	136d4 <.prname_next>

000136e8 <.test_name>:
   136e8:	696c6c73          	csrrsi	s8,0x696,24
   136ec:	0000                	unimp
	...

000136f0 <.prname_done>:
   136f0:	02e00593          	li	a1,46
   136f4:	00b62023          	sw	a1,0(a2)
   136f8:	00b62023          	sw	a1,0(a2)

000136fc <test_2>:
   136fc:	00100093          	li	ra,1
   13700:	00009193          	slli	gp,ra,0x0
   13704:	00100e93          	li	t4,1
   13708:	00200e13          	li	t3,2
   1370c:	27d19a63          	bne	gp,t4,13980 <fail>

00013710 <test_3>:
   13710:	00100093          	li	ra,1
   13714:	00109193          	slli	gp,ra,0x1
   13718:	00200e93          	li	t4,2
   1371c:	00300e13          	li	t3,3
   13720:	27d19063          	bne	gp,t4,13980 <fail>

00013724 <test_4>:
   13724:	00100093          	li	ra,1
   13728:	00709193          	slli	gp,ra,0x7
   1372c:	08000e93          	li	t4,128
   13730:	00400e13          	li	t3,4
   13734:	25d19663          	bne	gp,t4,13980 <fail>

00013738 <test_5>:
   13738:	00100093          	li	ra,1
   1373c:	00e09193          	slli	gp,ra,0xe
   13740:	00004eb7          	lui	t4,0x4
   13744:	00500e13          	li	t3,5
   13748:	23d19c63          	bne	gp,t4,13980 <fail>

0001374c <test_6>:
   1374c:	00100093          	li	ra,1
   13750:	01f09193          	slli	gp,ra,0x1f
   13754:	80000eb7          	lui	t4,0x80000
   13758:	00600e13          	li	t3,6
   1375c:	23d19263          	bne	gp,t4,13980 <fail>

00013760 <test_7>:
   13760:	fff00093          	li	ra,-1
   13764:	00009193          	slli	gp,ra,0x0
   13768:	fff00e93          	li	t4,-1
   1376c:	00700e13          	li	t3,7
   13770:	21d19863          	bne	gp,t4,13980 <fail>

00013774 <test_8>:
   13774:	fff00093          	li	ra,-1
   13778:	00109193          	slli	gp,ra,0x1
   1377c:	ffe00e93          	li	t4,-2
   13780:	00800e13          	li	t3,8
   13784:	1fd19e63          	bne	gp,t4,13980 <fail>

00013788 <test_9>:
   13788:	fff00093          	li	ra,-1
   1378c:	00709193          	slli	gp,ra,0x7
   13790:	f8000e93          	li	t4,-128
   13794:	00900e13          	li	t3,9
   13798:	1fd19463          	bne	gp,t4,13980 <fail>

0001379c <test_10>:
   1379c:	fff00093          	li	ra,-1
   137a0:	00e09193          	slli	gp,ra,0xe
   137a4:	ffffceb7          	lui	t4,0xffffc
   137a8:	00a00e13          	li	t3,10
   137ac:	1dd19a63          	bne	gp,t4,13980 <fail>

000137b0 <test_11>:
   137b0:	fff00093          	li	ra,-1
   137b4:	01f09193          	slli	gp,ra,0x1f
   137b8:	80000eb7          	lui	t4,0x80000
   137bc:	00b00e13          	li	t3,11
   137c0:	1dd19063          	bne	gp,t4,13980 <fail>

000137c4 <test_12>:
   137c4:	212120b7          	lui	ra,0x21212
   137c8:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   137cc:	00009193          	slli	gp,ra,0x0
   137d0:	21212eb7          	lui	t4,0x21212
   137d4:	121e8e93          	addi	t4,t4,289 # 21212121 <_edata+0x211120b1>
   137d8:	00c00e13          	li	t3,12
   137dc:	1bd19263          	bne	gp,t4,13980 <fail>

000137e0 <test_13>:
   137e0:	212120b7          	lui	ra,0x21212
   137e4:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   137e8:	00109193          	slli	gp,ra,0x1
   137ec:	42424eb7          	lui	t4,0x42424
   137f0:	242e8e93          	addi	t4,t4,578 # 42424242 <_edata+0x423241d2>
   137f4:	00d00e13          	li	t3,13
   137f8:	19d19463          	bne	gp,t4,13980 <fail>

000137fc <test_14>:
   137fc:	212120b7          	lui	ra,0x21212
   13800:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13804:	00709193          	slli	gp,ra,0x7
   13808:	90909eb7          	lui	t4,0x90909
   1380c:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x90809010>
   13810:	00e00e13          	li	t3,14
   13814:	17d19663          	bne	gp,t4,13980 <fail>

00013818 <test_15>:
   13818:	212120b7          	lui	ra,0x21212
   1381c:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13820:	00e09193          	slli	gp,ra,0xe
   13824:	48484eb7          	lui	t4,0x48484
   13828:	00f00e13          	li	t3,15
   1382c:	15d19a63          	bne	gp,t4,13980 <fail>

00013830 <test_16>:
   13830:	212120b7          	lui	ra,0x21212
   13834:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13838:	01f09193          	slli	gp,ra,0x1f
   1383c:	80000eb7          	lui	t4,0x80000
   13840:	01000e13          	li	t3,16
   13844:	13d19e63          	bne	gp,t4,13980 <fail>

00013848 <test_17>:
   13848:	00100093          	li	ra,1
   1384c:	00709093          	slli	ra,ra,0x7
   13850:	08000e93          	li	t4,128
   13854:	01100e13          	li	t3,17
   13858:	13d09463          	bne	ra,t4,13980 <fail>

0001385c <test_18>:
   1385c:	00000213          	li	tp,0
   13860:	00100093          	li	ra,1
   13864:	00709193          	slli	gp,ra,0x7
   13868:	00018313          	mv	t1,gp
   1386c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13870:	00200293          	li	t0,2
   13874:	fe5216e3          	bne	tp,t0,13860 <test_18+0x4>
   13878:	08000e93          	li	t4,128
   1387c:	01200e13          	li	t3,18
   13880:	11d31063          	bne	t1,t4,13980 <fail>

00013884 <test_19>:
   13884:	00000213          	li	tp,0
   13888:	00100093          	li	ra,1
   1388c:	00e09193          	slli	gp,ra,0xe
   13890:	00000013          	nop
   13894:	00018313          	mv	t1,gp
   13898:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1389c:	00200293          	li	t0,2
   138a0:	fe5214e3          	bne	tp,t0,13888 <test_19+0x4>
   138a4:	00004eb7          	lui	t4,0x4
   138a8:	01300e13          	li	t3,19
   138ac:	0dd31a63          	bne	t1,t4,13980 <fail>

000138b0 <test_20>:
   138b0:	00000213          	li	tp,0
   138b4:	00100093          	li	ra,1
   138b8:	01f09193          	slli	gp,ra,0x1f
   138bc:	00000013          	nop
   138c0:	00000013          	nop
   138c4:	00018313          	mv	t1,gp
   138c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138cc:	00200293          	li	t0,2
   138d0:	fe5212e3          	bne	tp,t0,138b4 <test_20+0x4>
   138d4:	80000eb7          	lui	t4,0x80000
   138d8:	01400e13          	li	t3,20
   138dc:	0bd31263          	bne	t1,t4,13980 <fail>

000138e0 <test_21>:
   138e0:	00000213          	li	tp,0
   138e4:	00100093          	li	ra,1
   138e8:	00709193          	slli	gp,ra,0x7
   138ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138f0:	00200293          	li	t0,2
   138f4:	fe5218e3          	bne	tp,t0,138e4 <test_21+0x4>
   138f8:	08000e93          	li	t4,128
   138fc:	01500e13          	li	t3,21
   13900:	09d19063          	bne	gp,t4,13980 <fail>

00013904 <test_22>:
   13904:	00000213          	li	tp,0
   13908:	00100093          	li	ra,1
   1390c:	00000013          	nop
   13910:	00e09193          	slli	gp,ra,0xe
   13914:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13918:	00200293          	li	t0,2
   1391c:	fe5216e3          	bne	tp,t0,13908 <test_22+0x4>
   13920:	00004eb7          	lui	t4,0x4
   13924:	01600e13          	li	t3,22
   13928:	05d19c63          	bne	gp,t4,13980 <fail>

0001392c <test_23>:
   1392c:	00000213          	li	tp,0
   13930:	00100093          	li	ra,1
   13934:	00000013          	nop
   13938:	00000013          	nop
   1393c:	01f09193          	slli	gp,ra,0x1f
   13940:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13944:	00200293          	li	t0,2
   13948:	fe5214e3          	bne	tp,t0,13930 <test_23+0x4>
   1394c:	80000eb7          	lui	t4,0x80000
   13950:	01700e13          	li	t3,23
   13954:	03d19663          	bne	gp,t4,13980 <fail>

00013958 <test_24>:
   13958:	01f01093          	slli	ra,zero,0x1f
   1395c:	00000e93          	li	t4,0
   13960:	01800e13          	li	t3,24
   13964:	01d09e63          	bne	ra,t4,13980 <fail>

00013968 <test_25>:
   13968:	02100093          	li	ra,33
   1396c:	01409013          	slli	zero,ra,0x14
   13970:	00000e93          	li	t4,0
   13974:	01900e13          	li	t3,25
   13978:	01d01463          	bne	zero,t4,13980 <fail>
   1397c:	05c01463          	bne	zero,t3,139c4 <pass>

00013980 <fail>:
   13980:	0ff00513          	li	a0,255

00013984 <.delay_fail>:
   13984:	fff50513          	addi	a0,a0,-1
   13988:	fe051ee3          	bnez	a0,13984 <.delay_fail>
   1398c:	02000537          	lui	a0,0x2000
   13990:	04500593          	li	a1,69
   13994:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   13998:	05200613          	li	a2,82
   1399c:	00c52023          	sw	a2,0(a0)
   139a0:	00c52023          	sw	a2,0(a0)
   139a4:	04f00693          	li	a3,79
   139a8:	00d52023          	sw	a3,0(a0)
   139ac:	00c52023          	sw	a2,0(a0)
   139b0:	00d00713          	li	a4,13
   139b4:	00e52023          	sw	a4,0(a0)
   139b8:	00a00793          	li	a5,10
   139bc:	00f52023          	sw	a5,0(a0)
   139c0:	f70fc06f          	j	10130 <slli_ret>

000139c4 <pass>:
   139c4:	0ff00513          	li	a0,255

000139c8 <.delay_ok>:
   139c8:	fff50513          	addi	a0,a0,-1
   139cc:	fe051ee3          	bnez	a0,139c8 <.delay_ok>
   139d0:	02000537          	lui	a0,0x2000
   139d4:	04f00593          	li	a1,79
   139d8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   139dc:	04b00613          	li	a2,75
   139e0:	00c52023          	sw	a2,0(a0)
   139e4:	00d00693          	li	a3,13
   139e8:	00d52023          	sw	a3,0(a0)
   139ec:	00a00713          	li	a4,10
   139f0:	00e52023          	sw	a4,0(a0)
   139f4:	f3cfc06f          	j	10130 <slli_ret>

000139f8 <srli>:
   139f8:	0ff00513          	li	a0,255

000139fc <.delay_pr>:
   139fc:	fff50513          	addi	a0,a0,-1
   13a00:	fe051ee3          	bnez	a0,139fc <.delay_pr>
   13a04:	00014537          	lui	a0,0x14
   13a08:	a2450513          	addi	a0,a0,-1500 # 13a24 <.test_name>
   13a0c:	02000637          	lui	a2,0x2000

00013a10 <.prname_next>:
   13a10:	00050583          	lb	a1,0(a0)
   13a14:	00058c63          	beqz	a1,13a2c <.prname_done>
   13a18:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   13a1c:	00150513          	addi	a0,a0,1
   13a20:	ff1ff06f          	j	13a10 <.prname_next>

00013a24 <.test_name>:
   13a24:	696c7273          	csrrci	tp,0x696,24
   13a28:	0000                	unimp
	...

00013a2c <.prname_done>:
   13a2c:	02e00593          	li	a1,46
   13a30:	00b62023          	sw	a1,0(a2)
   13a34:	00b62023          	sw	a1,0(a2)

00013a38 <test_2>:
   13a38:	ffff80b7          	lui	ra,0xffff8
   13a3c:	0000d193          	srli	gp,ra,0x0
   13a40:	ffff8eb7          	lui	t4,0xffff8
   13a44:	00200e13          	li	t3,2
   13a48:	2bd19263          	bne	gp,t4,13cec <fail>

00013a4c <test_3>:
   13a4c:	ffff80b7          	lui	ra,0xffff8
   13a50:	0010d193          	srli	gp,ra,0x1
   13a54:	7fffceb7          	lui	t4,0x7fffc
   13a58:	00300e13          	li	t3,3
   13a5c:	29d19863          	bne	gp,t4,13cec <fail>

00013a60 <test_4>:
   13a60:	ffff80b7          	lui	ra,0xffff8
   13a64:	0070d193          	srli	gp,ra,0x7
   13a68:	02000eb7          	lui	t4,0x2000
   13a6c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_edata+0x1effe90>
   13a70:	00400e13          	li	t3,4
   13a74:	27d19c63          	bne	gp,t4,13cec <fail>

00013a78 <test_5>:
   13a78:	ffff80b7          	lui	ra,0xffff8
   13a7c:	00e0d193          	srli	gp,ra,0xe
   13a80:	00040eb7          	lui	t4,0x40
   13a84:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x2619a>
   13a88:	00500e13          	li	t3,5
   13a8c:	27d19063          	bne	gp,t4,13cec <fail>

00013a90 <test_6>:
   13a90:	ffff80b7          	lui	ra,0xffff8
   13a94:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0xffef7f91>
   13a98:	00f0d193          	srli	gp,ra,0xf
   13a9c:	00020eb7          	lui	t4,0x20
   13aa0:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   13aa4:	00600e13          	li	t3,6
   13aa8:	25d19263          	bne	gp,t4,13cec <fail>

00013aac <test_7>:
   13aac:	fff00093          	li	ra,-1
   13ab0:	0000d193          	srli	gp,ra,0x0
   13ab4:	fff00e93          	li	t4,-1
   13ab8:	00700e13          	li	t3,7
   13abc:	23d19863          	bne	gp,t4,13cec <fail>

00013ac0 <test_8>:
   13ac0:	fff00093          	li	ra,-1
   13ac4:	0010d193          	srli	gp,ra,0x1
   13ac8:	80000eb7          	lui	t4,0x80000
   13acc:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0x7fefff8f>
   13ad0:	00800e13          	li	t3,8
   13ad4:	21d19c63          	bne	gp,t4,13cec <fail>

00013ad8 <test_9>:
   13ad8:	fff00093          	li	ra,-1
   13adc:	0070d193          	srli	gp,ra,0x7
   13ae0:	02000eb7          	lui	t4,0x2000
   13ae4:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_edata+0x1efff8f>
   13ae8:	00900e13          	li	t3,9
   13aec:	21d19063          	bne	gp,t4,13cec <fail>

00013af0 <test_10>:
   13af0:	fff00093          	li	ra,-1
   13af4:	00e0d193          	srli	gp,ra,0xe
   13af8:	00040eb7          	lui	t4,0x40
   13afc:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x2619b>
   13b00:	00a00e13          	li	t3,10
   13b04:	1fd19463          	bne	gp,t4,13cec <fail>

00013b08 <test_11>:
   13b08:	fff00093          	li	ra,-1
   13b0c:	01f0d193          	srli	gp,ra,0x1f
   13b10:	00100e93          	li	t4,1
   13b14:	00b00e13          	li	t3,11
   13b18:	1dd19a63          	bne	gp,t4,13cec <fail>

00013b1c <test_12>:
   13b1c:	212120b7          	lui	ra,0x21212
   13b20:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13b24:	0000d193          	srli	gp,ra,0x0
   13b28:	21212eb7          	lui	t4,0x21212
   13b2c:	121e8e93          	addi	t4,t4,289 # 21212121 <_edata+0x211120b1>
   13b30:	00c00e13          	li	t3,12
   13b34:	1bd19c63          	bne	gp,t4,13cec <fail>

00013b38 <test_13>:
   13b38:	212120b7          	lui	ra,0x21212
   13b3c:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13b40:	0010d193          	srli	gp,ra,0x1
   13b44:	10909eb7          	lui	t4,0x10909
   13b48:	090e8e93          	addi	t4,t4,144 # 10909090 <_edata+0x10809020>
   13b4c:	00d00e13          	li	t3,13
   13b50:	19d19e63          	bne	gp,t4,13cec <fail>

00013b54 <test_14>:
   13b54:	212120b7          	lui	ra,0x21212
   13b58:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13b5c:	0070d193          	srli	gp,ra,0x7
   13b60:	00424eb7          	lui	t4,0x424
   13b64:	242e8e93          	addi	t4,t4,578 # 424242 <_edata+0x3241d2>
   13b68:	00e00e13          	li	t3,14
   13b6c:	19d19063          	bne	gp,t4,13cec <fail>

00013b70 <test_15>:
   13b70:	212120b7          	lui	ra,0x21212
   13b74:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13b78:	00e0d193          	srli	gp,ra,0xe
   13b7c:	00008eb7          	lui	t4,0x8
   13b80:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   13b84:	00f00e13          	li	t3,15
   13b88:	17d19263          	bne	gp,t4,13cec <fail>

00013b8c <test_16>:
   13b8c:	212120b7          	lui	ra,0x21212
   13b90:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   13b94:	01f0d193          	srli	gp,ra,0x1f
   13b98:	00000e93          	li	t4,0
   13b9c:	01000e13          	li	t3,16
   13ba0:	15d19663          	bne	gp,t4,13cec <fail>

00013ba4 <test_21>:
   13ba4:	ffff80b7          	lui	ra,0xffff8
   13ba8:	0010d093          	srli	ra,ra,0x1
   13bac:	7fffceb7          	lui	t4,0x7fffc
   13bb0:	01500e13          	li	t3,21
   13bb4:	13d09c63          	bne	ra,t4,13cec <fail>

00013bb8 <test_22>:
   13bb8:	00000213          	li	tp,0
   13bbc:	ffff80b7          	lui	ra,0xffff8
   13bc0:	0010d193          	srli	gp,ra,0x1
   13bc4:	00018313          	mv	t1,gp
   13bc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13bcc:	00200293          	li	t0,2
   13bd0:	fe5216e3          	bne	tp,t0,13bbc <test_22+0x4>
   13bd4:	7fffceb7          	lui	t4,0x7fffc
   13bd8:	01600e13          	li	t3,22
   13bdc:	11d31863          	bne	t1,t4,13cec <fail>

00013be0 <test_23>:
   13be0:	00000213          	li	tp,0
   13be4:	ffff80b7          	lui	ra,0xffff8
   13be8:	00e0d193          	srli	gp,ra,0xe
   13bec:	00000013          	nop
   13bf0:	00018313          	mv	t1,gp
   13bf4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13bf8:	00200293          	li	t0,2
   13bfc:	fe5214e3          	bne	tp,t0,13be4 <test_23+0x4>
   13c00:	00040eb7          	lui	t4,0x40
   13c04:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x2619a>
   13c08:	01700e13          	li	t3,23
   13c0c:	0fd31063          	bne	t1,t4,13cec <fail>

00013c10 <test_24>:
   13c10:	00000213          	li	tp,0
   13c14:	ffff80b7          	lui	ra,0xffff8
   13c18:	00f0d193          	srli	gp,ra,0xf
   13c1c:	00000013          	nop
   13c20:	00000013          	nop
   13c24:	00018313          	mv	t1,gp
   13c28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c2c:	00200293          	li	t0,2
   13c30:	fe5212e3          	bne	tp,t0,13c14 <test_24+0x4>
   13c34:	00020eb7          	lui	t4,0x20
   13c38:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   13c3c:	01800e13          	li	t3,24
   13c40:	0bd31663          	bne	t1,t4,13cec <fail>

00013c44 <test_25>:
   13c44:	00000213          	li	tp,0
   13c48:	ffff80b7          	lui	ra,0xffff8
   13c4c:	0010d193          	srli	gp,ra,0x1
   13c50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c54:	00200293          	li	t0,2
   13c58:	fe5218e3          	bne	tp,t0,13c48 <test_25+0x4>
   13c5c:	7fffceb7          	lui	t4,0x7fffc
   13c60:	01900e13          	li	t3,25
   13c64:	09d19463          	bne	gp,t4,13cec <fail>

00013c68 <test_26>:
   13c68:	00000213          	li	tp,0
   13c6c:	ffff80b7          	lui	ra,0xffff8
   13c70:	00000013          	nop
   13c74:	00e0d193          	srli	gp,ra,0xe
   13c78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c7c:	00200293          	li	t0,2
   13c80:	fe5216e3          	bne	tp,t0,13c6c <test_26+0x4>
   13c84:	00040eb7          	lui	t4,0x40
   13c88:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x2619a>
   13c8c:	01a00e13          	li	t3,26
   13c90:	05d19e63          	bne	gp,t4,13cec <fail>

00013c94 <test_27>:
   13c94:	00000213          	li	tp,0
   13c98:	ffff80b7          	lui	ra,0xffff8
   13c9c:	00000013          	nop
   13ca0:	00000013          	nop
   13ca4:	00f0d193          	srli	gp,ra,0xf
   13ca8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13cac:	00200293          	li	t0,2
   13cb0:	fe5214e3          	bne	tp,t0,13c98 <test_27+0x4>
   13cb4:	00020eb7          	lui	t4,0x20
   13cb8:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   13cbc:	01b00e13          	li	t3,27
   13cc0:	03d19663          	bne	gp,t4,13cec <fail>

00013cc4 <test_28>:
   13cc4:	01f05093          	srli	ra,zero,0x1f
   13cc8:	00000e93          	li	t4,0
   13ccc:	01c00e13          	li	t3,28
   13cd0:	01d09e63          	bne	ra,t4,13cec <fail>

00013cd4 <test_29>:
   13cd4:	02100093          	li	ra,33
   13cd8:	0140d013          	srli	zero,ra,0x14
   13cdc:	00000e93          	li	t4,0
   13ce0:	01d00e13          	li	t3,29
   13ce4:	01d01463          	bne	zero,t4,13cec <fail>
   13ce8:	05c01463          	bne	zero,t3,13d30 <pass>

00013cec <fail>:
   13cec:	0ff00513          	li	a0,255

00013cf0 <.delay_fail>:
   13cf0:	fff50513          	addi	a0,a0,-1
   13cf4:	fe051ee3          	bnez	a0,13cf0 <.delay_fail>
   13cf8:	02000537          	lui	a0,0x2000
   13cfc:	04500593          	li	a1,69
   13d00:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   13d04:	05200613          	li	a2,82
   13d08:	00c52023          	sw	a2,0(a0)
   13d0c:	00c52023          	sw	a2,0(a0)
   13d10:	04f00693          	li	a3,79
   13d14:	00d52023          	sw	a3,0(a0)
   13d18:	00c52023          	sw	a2,0(a0)
   13d1c:	00d00713          	li	a4,13
   13d20:	00e52023          	sw	a4,0(a0)
   13d24:	00a00793          	li	a5,10
   13d28:	00f52023          	sw	a5,0(a0)
   13d2c:	c08fc06f          	j	10134 <srli_ret>

00013d30 <pass>:
   13d30:	0ff00513          	li	a0,255

00013d34 <.delay_ok>:
   13d34:	fff50513          	addi	a0,a0,-1
   13d38:	fe051ee3          	bnez	a0,13d34 <.delay_ok>
   13d3c:	02000537          	lui	a0,0x2000
   13d40:	04f00593          	li	a1,79
   13d44:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   13d48:	04b00613          	li	a2,75
   13d4c:	00c52023          	sw	a2,0(a0)
   13d50:	00d00693          	li	a3,13
   13d54:	00d52023          	sw	a3,0(a0)
   13d58:	00a00713          	li	a4,10
   13d5c:	00e52023          	sw	a4,0(a0)
   13d60:	bd4fc06f          	j	10134 <srli_ret>

00013d64 <sw>:
   13d64:	0ff00513          	li	a0,255

00013d68 <.delay_pr>:
   13d68:	fff50513          	addi	a0,a0,-1
   13d6c:	fe051ee3          	bnez	a0,13d68 <.delay_pr>
   13d70:	00014537          	lui	a0,0x14
   13d74:	d9050513          	addi	a0,a0,-624 # 13d90 <.test_name>
   13d78:	02000637          	lui	a2,0x2000

00013d7c <.prname_next>:
   13d7c:	00050583          	lb	a1,0(a0)
   13d80:	00058a63          	beqz	a1,13d94 <.prname_done>
   13d84:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   13d88:	00150513          	addi	a0,a0,1
   13d8c:	ff1ff06f          	j	13d7c <.prname_next>

00013d90 <.test_name>:
   13d90:	00007773          	csrrci	a4,ustatus,0

00013d94 <.prname_done>:
   13d94:	02e00593          	li	a1,46
   13d98:	00b62023          	sw	a1,0(a2)
   13d9c:	00b62023          	sw	a1,0(a2)

00013da0 <test_2>:
   13da0:	000ec097          	auipc	ra,0xec
   13da4:	28008093          	addi	ra,ra,640 # 100020 <tdat>
   13da8:	00aa0137          	lui	sp,0xaa0
   13dac:	0aa10113          	addi	sp,sp,170 # aa00aa <_edata+0x9a003a>
   13db0:	0020a023          	sw	sp,0(ra)
   13db4:	0000a183          	lw	gp,0(ra)
   13db8:	00aa0eb7          	lui	t4,0xaa0
   13dbc:	0aae8e93          	addi	t4,t4,170 # aa00aa <_edata+0x9a003a>
   13dc0:	00200e13          	li	t3,2
   13dc4:	47d19063          	bne	gp,t4,14224 <fail>

00013dc8 <test_3>:
   13dc8:	000ec097          	auipc	ra,0xec
   13dcc:	25808093          	addi	ra,ra,600 # 100020 <tdat>
   13dd0:	aa00b137          	lui	sp,0xaa00b
   13dd4:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0xa9f0a990>
   13dd8:	0020a223          	sw	sp,4(ra)
   13ddc:	0040a183          	lw	gp,4(ra)
   13de0:	aa00beb7          	lui	t4,0xaa00b
   13de4:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0xa9f0a990>
   13de8:	00300e13          	li	t3,3
   13dec:	43d19c63          	bne	gp,t4,14224 <fail>

00013df0 <test_4>:
   13df0:	000ec097          	auipc	ra,0xec
   13df4:	23008093          	addi	ra,ra,560 # 100020 <tdat>
   13df8:	0aa01137          	lui	sp,0xaa01
   13dfc:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_edata+0xa900a30>
   13e00:	0020a423          	sw	sp,8(ra)
   13e04:	0080a183          	lw	gp,8(ra)
   13e08:	0aa01eb7          	lui	t4,0xaa01
   13e0c:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_edata+0xa900a30>
   13e10:	00400e13          	li	t3,4
   13e14:	41d19863          	bne	gp,t4,14224 <fail>

00013e18 <test_5>:
   13e18:	000ec097          	auipc	ra,0xec
   13e1c:	20808093          	addi	ra,ra,520 # 100020 <tdat>
   13e20:	a00aa137          	lui	sp,0xa00aa
   13e24:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x9ffa9f9a>
   13e28:	0020a623          	sw	sp,12(ra)
   13e2c:	00c0a183          	lw	gp,12(ra)
   13e30:	a00aaeb7          	lui	t4,0xa00aa
   13e34:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x9ffa9f9a>
   13e38:	00500e13          	li	t3,5
   13e3c:	3fd19463          	bne	gp,t4,14224 <fail>

00013e40 <test_6>:
   13e40:	000ec097          	auipc	ra,0xec
   13e44:	1fc08093          	addi	ra,ra,508 # 10003c <tdat8>
   13e48:	00aa0137          	lui	sp,0xaa0
   13e4c:	0aa10113          	addi	sp,sp,170 # aa00aa <_edata+0x9a003a>
   13e50:	fe20aa23          	sw	sp,-12(ra)
   13e54:	ff40a183          	lw	gp,-12(ra)
   13e58:	00aa0eb7          	lui	t4,0xaa0
   13e5c:	0aae8e93          	addi	t4,t4,170 # aa00aa <_edata+0x9a003a>
   13e60:	00600e13          	li	t3,6
   13e64:	3dd19063          	bne	gp,t4,14224 <fail>

00013e68 <test_7>:
   13e68:	000ec097          	auipc	ra,0xec
   13e6c:	1d408093          	addi	ra,ra,468 # 10003c <tdat8>
   13e70:	aa00b137          	lui	sp,0xaa00b
   13e74:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0xa9f0a990>
   13e78:	fe20ac23          	sw	sp,-8(ra)
   13e7c:	ff80a183          	lw	gp,-8(ra)
   13e80:	aa00beb7          	lui	t4,0xaa00b
   13e84:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0xa9f0a990>
   13e88:	00700e13          	li	t3,7
   13e8c:	39d19c63          	bne	gp,t4,14224 <fail>

00013e90 <test_8>:
   13e90:	000ec097          	auipc	ra,0xec
   13e94:	1ac08093          	addi	ra,ra,428 # 10003c <tdat8>
   13e98:	0aa01137          	lui	sp,0xaa01
   13e9c:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_edata+0xa900a30>
   13ea0:	fe20ae23          	sw	sp,-4(ra)
   13ea4:	ffc0a183          	lw	gp,-4(ra)
   13ea8:	0aa01eb7          	lui	t4,0xaa01
   13eac:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_edata+0xa900a30>
   13eb0:	00800e13          	li	t3,8
   13eb4:	37d19863          	bne	gp,t4,14224 <fail>

00013eb8 <test_9>:
   13eb8:	000ec097          	auipc	ra,0xec
   13ebc:	18408093          	addi	ra,ra,388 # 10003c <tdat8>
   13ec0:	a00aa137          	lui	sp,0xa00aa
   13ec4:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x9ffa9f9a>
   13ec8:	0020a023          	sw	sp,0(ra)
   13ecc:	0000a183          	lw	gp,0(ra)
   13ed0:	a00aaeb7          	lui	t4,0xa00aa
   13ed4:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x9ffa9f9a>
   13ed8:	00900e13          	li	t3,9
   13edc:	35d19463          	bne	gp,t4,14224 <fail>

00013ee0 <test_10>:
   13ee0:	000ec097          	auipc	ra,0xec
   13ee4:	16008093          	addi	ra,ra,352 # 100040 <tdat9>
   13ee8:	12345137          	lui	sp,0x12345
   13eec:	67810113          	addi	sp,sp,1656 # 12345678 <_edata+0x12245608>
   13ef0:	fe008213          	addi	tp,ra,-32
   13ef4:	02222023          	sw	sp,32(tp) # 20 <_start-0xffe0>
   13ef8:	0000a183          	lw	gp,0(ra)
   13efc:	12345eb7          	lui	t4,0x12345
   13f00:	678e8e93          	addi	t4,t4,1656 # 12345678 <_edata+0x12245608>
   13f04:	00a00e13          	li	t3,10
   13f08:	31d19e63          	bne	gp,t4,14224 <fail>

00013f0c <test_11>:
   13f0c:	000ec097          	auipc	ra,0xec
   13f10:	13408093          	addi	ra,ra,308 # 100040 <tdat9>
   13f14:	58213137          	lui	sp,0x58213
   13f18:	09810113          	addi	sp,sp,152 # 58213098 <_edata+0x58113028>
   13f1c:	ffd08093          	addi	ra,ra,-3
   13f20:	0020a3a3          	sw	sp,7(ra)
   13f24:	000ec217          	auipc	tp,0xec
   13f28:	12020213          	addi	tp,tp,288 # 100044 <tdat10>
   13f2c:	00022183          	lw	gp,0(tp) # 0 <_start-0x10000>
   13f30:	58213eb7          	lui	t4,0x58213
   13f34:	098e8e93          	addi	t4,t4,152 # 58213098 <_edata+0x58113028>
   13f38:	00b00e13          	li	t3,11
   13f3c:	2fd19463          	bne	gp,t4,14224 <fail>

00013f40 <test_12>:
   13f40:	00c00e13          	li	t3,12
   13f44:	00000213          	li	tp,0
   13f48:	aabbd0b7          	lui	ra,0xaabbd
   13f4c:	cdd08093          	addi	ra,ra,-803 # aabbccdd <_edata+0xaaabcc6d>
   13f50:	000ec117          	auipc	sp,0xec
   13f54:	0d010113          	addi	sp,sp,208 # 100020 <tdat>
   13f58:	00112023          	sw	ra,0(sp)
   13f5c:	00012183          	lw	gp,0(sp)
   13f60:	aabbdeb7          	lui	t4,0xaabbd
   13f64:	cdde8e93          	addi	t4,t4,-803 # aabbccdd <_edata+0xaaabcc6d>
   13f68:	2bd19e63          	bne	gp,t4,14224 <fail>
   13f6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f70:	00200293          	li	t0,2
   13f74:	fc521ae3          	bne	tp,t0,13f48 <test_12+0x8>

00013f78 <test_13>:
   13f78:	00d00e13          	li	t3,13
   13f7c:	00000213          	li	tp,0
   13f80:	daabc0b7          	lui	ra,0xdaabc
   13f84:	ccd08093          	addi	ra,ra,-819 # daabbccd <_edata+0xda9bbc5d>
   13f88:	000ec117          	auipc	sp,0xec
   13f8c:	09810113          	addi	sp,sp,152 # 100020 <tdat>
   13f90:	00000013          	nop
   13f94:	00112223          	sw	ra,4(sp)
   13f98:	00412183          	lw	gp,4(sp)
   13f9c:	daabceb7          	lui	t4,0xdaabc
   13fa0:	ccde8e93          	addi	t4,t4,-819 # daabbccd <_edata+0xda9bbc5d>
   13fa4:	29d19063          	bne	gp,t4,14224 <fail>
   13fa8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13fac:	00200293          	li	t0,2
   13fb0:	fc5218e3          	bne	tp,t0,13f80 <test_13+0x8>

00013fb4 <test_14>:
   13fb4:	00e00e13          	li	t3,14
   13fb8:	00000213          	li	tp,0
   13fbc:	ddaac0b7          	lui	ra,0xddaac
   13fc0:	bcc08093          	addi	ra,ra,-1076 # ddaabbcc <_edata+0xdd9abb5c>
   13fc4:	000ec117          	auipc	sp,0xec
   13fc8:	05c10113          	addi	sp,sp,92 # 100020 <tdat>
   13fcc:	00000013          	nop
   13fd0:	00000013          	nop
   13fd4:	00112423          	sw	ra,8(sp)
   13fd8:	00812183          	lw	gp,8(sp)
   13fdc:	ddaaceb7          	lui	t4,0xddaac
   13fe0:	bcce8e93          	addi	t4,t4,-1076 # ddaabbcc <_edata+0xdd9abb5c>
   13fe4:	25d19063          	bne	gp,t4,14224 <fail>
   13fe8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13fec:	00200293          	li	t0,2
   13ff0:	fc5216e3          	bne	tp,t0,13fbc <test_14+0x8>

00013ff4 <test_15>:
   13ff4:	00f00e13          	li	t3,15
   13ff8:	00000213          	li	tp,0
   13ffc:	cddab0b7          	lui	ra,0xcddab
   14000:	bbc08093          	addi	ra,ra,-1092 # cddaabbc <_edata+0xcdcaab4c>
   14004:	00000013          	nop
   14008:	000ec117          	auipc	sp,0xec
   1400c:	01810113          	addi	sp,sp,24 # 100020 <tdat>
   14010:	00112623          	sw	ra,12(sp)
   14014:	00c12183          	lw	gp,12(sp)
   14018:	cddabeb7          	lui	t4,0xcddab
   1401c:	bbce8e93          	addi	t4,t4,-1092 # cddaabbc <_edata+0xcdcaab4c>
   14020:	21d19263          	bne	gp,t4,14224 <fail>
   14024:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14028:	00200293          	li	t0,2
   1402c:	fc5218e3          	bne	tp,t0,13ffc <test_15+0x8>

00014030 <test_16>:
   14030:	01000e13          	li	t3,16
   14034:	00000213          	li	tp,0
   14038:	ccddb0b7          	lui	ra,0xccddb
   1403c:	abb08093          	addi	ra,ra,-1349 # ccddaabb <_edata+0xcccdaa4b>
   14040:	00000013          	nop
   14044:	000ec117          	auipc	sp,0xec
   14048:	fdc10113          	addi	sp,sp,-36 # 100020 <tdat>
   1404c:	00000013          	nop
   14050:	00112823          	sw	ra,16(sp)
   14054:	01012183          	lw	gp,16(sp)
   14058:	ccddbeb7          	lui	t4,0xccddb
   1405c:	abbe8e93          	addi	t4,t4,-1349 # ccddaabb <_edata+0xcccdaa4b>
   14060:	1dd19263          	bne	gp,t4,14224 <fail>
   14064:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14068:	00200293          	li	t0,2
   1406c:	fc5216e3          	bne	tp,t0,14038 <test_16+0x8>

00014070 <test_17>:
   14070:	01100e13          	li	t3,17
   14074:	00000213          	li	tp,0
   14078:	bccde0b7          	lui	ra,0xbccde
   1407c:	aab08093          	addi	ra,ra,-1365 # bccddaab <_edata+0xbcbdda3b>
   14080:	00000013          	nop
   14084:	00000013          	nop
   14088:	000ec117          	auipc	sp,0xec
   1408c:	f9810113          	addi	sp,sp,-104 # 100020 <tdat>
   14090:	00112a23          	sw	ra,20(sp)
   14094:	01412183          	lw	gp,20(sp)
   14098:	bccdeeb7          	lui	t4,0xbccde
   1409c:	aabe8e93          	addi	t4,t4,-1365 # bccddaab <_edata+0xbcbdda3b>
   140a0:	19d19263          	bne	gp,t4,14224 <fail>
   140a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   140a8:	00200293          	li	t0,2
   140ac:	fc5216e3          	bne	tp,t0,14078 <test_17+0x8>

000140b0 <test_18>:
   140b0:	01200e13          	li	t3,18
   140b4:	00000213          	li	tp,0
   140b8:	000ec117          	auipc	sp,0xec
   140bc:	f6810113          	addi	sp,sp,-152 # 100020 <tdat>
   140c0:	001120b7          	lui	ra,0x112
   140c4:	23308093          	addi	ra,ra,563 # 112233 <_edata+0x121c3>
   140c8:	00112023          	sw	ra,0(sp)
   140cc:	00012183          	lw	gp,0(sp)
   140d0:	00112eb7          	lui	t4,0x112
   140d4:	233e8e93          	addi	t4,t4,563 # 112233 <_edata+0x121c3>
   140d8:	15d19663          	bne	gp,t4,14224 <fail>
   140dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   140e0:	00200293          	li	t0,2
   140e4:	fc521ae3          	bne	tp,t0,140b8 <test_18+0x8>

000140e8 <test_19>:
   140e8:	01300e13          	li	t3,19
   140ec:	00000213          	li	tp,0
   140f0:	000ec117          	auipc	sp,0xec
   140f4:	f3010113          	addi	sp,sp,-208 # 100020 <tdat>
   140f8:	300110b7          	lui	ra,0x30011
   140fc:	22308093          	addi	ra,ra,547 # 30011223 <_edata+0x2ff111b3>
   14100:	00000013          	nop
   14104:	00112223          	sw	ra,4(sp)
   14108:	00412183          	lw	gp,4(sp)
   1410c:	30011eb7          	lui	t4,0x30011
   14110:	223e8e93          	addi	t4,t4,547 # 30011223 <_edata+0x2ff111b3>
   14114:	11d19863          	bne	gp,t4,14224 <fail>
   14118:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1411c:	00200293          	li	t0,2
   14120:	fc5218e3          	bne	tp,t0,140f0 <test_19+0x8>

00014124 <test_20>:
   14124:	01400e13          	li	t3,20
   14128:	00000213          	li	tp,0
   1412c:	000ec117          	auipc	sp,0xec
   14130:	ef410113          	addi	sp,sp,-268 # 100020 <tdat>
   14134:	330010b7          	lui	ra,0x33001
   14138:	12208093          	addi	ra,ra,290 # 33001122 <_edata+0x32f010b2>
   1413c:	00000013          	nop
   14140:	00000013          	nop
   14144:	00112423          	sw	ra,8(sp)
   14148:	00812183          	lw	gp,8(sp)
   1414c:	33001eb7          	lui	t4,0x33001
   14150:	122e8e93          	addi	t4,t4,290 # 33001122 <_edata+0x32f010b2>
   14154:	0dd19863          	bne	gp,t4,14224 <fail>
   14158:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1415c:	00200293          	li	t0,2
   14160:	fc5216e3          	bne	tp,t0,1412c <test_20+0x8>

00014164 <test_21>:
   14164:	01500e13          	li	t3,21
   14168:	00000213          	li	tp,0
   1416c:	000ec117          	auipc	sp,0xec
   14170:	eb410113          	addi	sp,sp,-332 # 100020 <tdat>
   14174:	00000013          	nop
   14178:	233000b7          	lui	ra,0x23300
   1417c:	11208093          	addi	ra,ra,274 # 23300112 <_edata+0x232000a2>
   14180:	00112623          	sw	ra,12(sp)
   14184:	00c12183          	lw	gp,12(sp)
   14188:	23300eb7          	lui	t4,0x23300
   1418c:	112e8e93          	addi	t4,t4,274 # 23300112 <_edata+0x232000a2>
   14190:	09d19a63          	bne	gp,t4,14224 <fail>
   14194:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14198:	00200293          	li	t0,2
   1419c:	fc5218e3          	bne	tp,t0,1416c <test_21+0x8>

000141a0 <test_22>:
   141a0:	01600e13          	li	t3,22
   141a4:	00000213          	li	tp,0
   141a8:	000ec117          	auipc	sp,0xec
   141ac:	e7810113          	addi	sp,sp,-392 # 100020 <tdat>
   141b0:	00000013          	nop
   141b4:	223300b7          	lui	ra,0x22330
   141b8:	01108093          	addi	ra,ra,17 # 22330011 <_edata+0x2222ffa1>
   141bc:	00000013          	nop
   141c0:	00112823          	sw	ra,16(sp)
   141c4:	01012183          	lw	gp,16(sp)
   141c8:	22330eb7          	lui	t4,0x22330
   141cc:	011e8e93          	addi	t4,t4,17 # 22330011 <_edata+0x2222ffa1>
   141d0:	05d19a63          	bne	gp,t4,14224 <fail>
   141d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   141d8:	00200293          	li	t0,2
   141dc:	fc5216e3          	bne	tp,t0,141a8 <test_22+0x8>

000141e0 <test_23>:
   141e0:	01700e13          	li	t3,23
   141e4:	00000213          	li	tp,0
   141e8:	000ec117          	auipc	sp,0xec
   141ec:	e3810113          	addi	sp,sp,-456 # 100020 <tdat>
   141f0:	00000013          	nop
   141f4:	00000013          	nop
   141f8:	122330b7          	lui	ra,0x12233
   141fc:	00108093          	addi	ra,ra,1 # 12233001 <_edata+0x12132f91>
   14200:	00112a23          	sw	ra,20(sp)
   14204:	01412183          	lw	gp,20(sp)
   14208:	12233eb7          	lui	t4,0x12233
   1420c:	001e8e93          	addi	t4,t4,1 # 12233001 <_edata+0x12132f91>
   14210:	01d19a63          	bne	gp,t4,14224 <fail>
   14214:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14218:	00200293          	li	t0,2
   1421c:	fc5216e3          	bne	tp,t0,141e8 <test_23+0x8>
   14220:	05c01463          	bne	zero,t3,14268 <pass>

00014224 <fail>:
   14224:	0ff00513          	li	a0,255

00014228 <.delay_fail>:
   14228:	fff50513          	addi	a0,a0,-1
   1422c:	fe051ee3          	bnez	a0,14228 <.delay_fail>
   14230:	02000537          	lui	a0,0x2000
   14234:	04500593          	li	a1,69
   14238:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   1423c:	05200613          	li	a2,82
   14240:	00c52023          	sw	a2,0(a0)
   14244:	00c52023          	sw	a2,0(a0)
   14248:	04f00693          	li	a3,79
   1424c:	00d52023          	sw	a3,0(a0)
   14250:	00c52023          	sw	a2,0(a0)
   14254:	00d00713          	li	a4,13
   14258:	00e52023          	sw	a4,0(a0)
   1425c:	00a00793          	li	a5,10
   14260:	00f52023          	sw	a5,0(a0)
   14264:	eb5fb06f          	j	10118 <sw_ret>

00014268 <pass>:
   14268:	0ff00513          	li	a0,255

0001426c <.delay_ok>:
   1426c:	fff50513          	addi	a0,a0,-1
   14270:	fe051ee3          	bnez	a0,1426c <.delay_ok>
   14274:	02000537          	lui	a0,0x2000
   14278:	04f00593          	li	a1,79
   1427c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   14280:	04b00613          	li	a2,75
   14284:	00c52023          	sw	a2,0(a0)
   14288:	00d00693          	li	a3,13
   1428c:	00d52023          	sw	a3,0(a0)
   14290:	00a00713          	li	a4,10
   14294:	00e52023          	sw	a4,0(a0)
   14298:	e81fb06f          	j	10118 <sw_ret>

0001429c <lw>:
   1429c:	0ff00513          	li	a0,255

000142a0 <.delay_pr>:
   142a0:	fff50513          	addi	a0,a0,-1
   142a4:	fe051ee3          	bnez	a0,142a0 <.delay_pr>
   142a8:	00014537          	lui	a0,0x14
   142ac:	2c850513          	addi	a0,a0,712 # 142c8 <.test_name>
   142b0:	02000637          	lui	a2,0x2000

000142b4 <.prname_next>:
   142b4:	00050583          	lb	a1,0(a0)
   142b8:	00058a63          	beqz	a1,142cc <.prname_done>
   142bc:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   142c0:	00150513          	addi	a0,a0,1
   142c4:	ff1ff06f          	j	142b4 <.prname_next>

000142c8 <.test_name>:
   142c8:	776c                	flw	fa1,108(a4)
	...

000142cc <.prname_done>:
   142cc:	02e00593          	li	a1,46
   142d0:	00b62023          	sw	a1,0(a2)
   142d4:	00b62023          	sw	a1,0(a2)

000142d8 <test_2>:
   142d8:	000ec097          	auipc	ra,0xec
   142dc:	d7008093          	addi	ra,ra,-656 # 100048 <tdat>
   142e0:	0000a183          	lw	gp,0(ra)
   142e4:	00ff0eb7          	lui	t4,0xff0
   142e8:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_edata+0xef008f>
   142ec:	00200e13          	li	t3,2
   142f0:	27d19a63          	bne	gp,t4,14564 <fail>

000142f4 <test_3>:
   142f4:	000ec097          	auipc	ra,0xec
   142f8:	d5408093          	addi	ra,ra,-684 # 100048 <tdat>
   142fc:	0040a183          	lw	gp,4(ra)
   14300:	ff010eb7          	lui	t4,0xff010
   14304:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   14308:	00300e13          	li	t3,3
   1430c:	25d19c63          	bne	gp,t4,14564 <fail>

00014310 <test_4>:
   14310:	000ec097          	auipc	ra,0xec
   14314:	d3808093          	addi	ra,ra,-712 # 100048 <tdat>
   14318:	0080a183          	lw	gp,8(ra)
   1431c:	0ff01eb7          	lui	t4,0xff01
   14320:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   14324:	00400e13          	li	t3,4
   14328:	23d19e63          	bne	gp,t4,14564 <fail>

0001432c <test_5>:
   1432c:	000ec097          	auipc	ra,0xec
   14330:	d1c08093          	addi	ra,ra,-740 # 100048 <tdat>
   14334:	00c0a183          	lw	gp,12(ra)
   14338:	f00ffeb7          	lui	t4,0xf00ff
   1433c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   14340:	00500e13          	li	t3,5
   14344:	23d19063          	bne	gp,t4,14564 <fail>

00014348 <test_6>:
   14348:	000ec097          	auipc	ra,0xec
   1434c:	d0c08093          	addi	ra,ra,-756 # 100054 <tdat4>
   14350:	ff40a183          	lw	gp,-12(ra)
   14354:	00ff0eb7          	lui	t4,0xff0
   14358:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_edata+0xef008f>
   1435c:	00600e13          	li	t3,6
   14360:	21d19263          	bne	gp,t4,14564 <fail>

00014364 <test_7>:
   14364:	000ec097          	auipc	ra,0xec
   14368:	cf008093          	addi	ra,ra,-784 # 100054 <tdat4>
   1436c:	ff80a183          	lw	gp,-8(ra)
   14370:	ff010eb7          	lui	t4,0xff010
   14374:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   14378:	00700e13          	li	t3,7
   1437c:	1fd19463          	bne	gp,t4,14564 <fail>

00014380 <test_8>:
   14380:	000ec097          	auipc	ra,0xec
   14384:	cd408093          	addi	ra,ra,-812 # 100054 <tdat4>
   14388:	ffc0a183          	lw	gp,-4(ra)
   1438c:	0ff01eb7          	lui	t4,0xff01
   14390:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   14394:	00800e13          	li	t3,8
   14398:	1dd19663          	bne	gp,t4,14564 <fail>

0001439c <test_9>:
   1439c:	000ec097          	auipc	ra,0xec
   143a0:	cb808093          	addi	ra,ra,-840 # 100054 <tdat4>
   143a4:	0000a183          	lw	gp,0(ra)
   143a8:	f00ffeb7          	lui	t4,0xf00ff
   143ac:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   143b0:	00900e13          	li	t3,9
   143b4:	1bd19863          	bne	gp,t4,14564 <fail>

000143b8 <test_10>:
   143b8:	000ec097          	auipc	ra,0xec
   143bc:	c9008093          	addi	ra,ra,-880 # 100048 <tdat>
   143c0:	fe008093          	addi	ra,ra,-32
   143c4:	0200a183          	lw	gp,32(ra)
   143c8:	00ff0eb7          	lui	t4,0xff0
   143cc:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_edata+0xef008f>
   143d0:	00a00e13          	li	t3,10
   143d4:	19d19863          	bne	gp,t4,14564 <fail>

000143d8 <test_11>:
   143d8:	000ec097          	auipc	ra,0xec
   143dc:	c7008093          	addi	ra,ra,-912 # 100048 <tdat>
   143e0:	ffd08093          	addi	ra,ra,-3
   143e4:	0070a183          	lw	gp,7(ra)
   143e8:	ff010eb7          	lui	t4,0xff010
   143ec:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   143f0:	00b00e13          	li	t3,11
   143f4:	17d19863          	bne	gp,t4,14564 <fail>

000143f8 <test_12>:
   143f8:	00c00e13          	li	t3,12
   143fc:	00000213          	li	tp,0
   14400:	000ec097          	auipc	ra,0xec
   14404:	c4c08093          	addi	ra,ra,-948 # 10004c <tdat2>
   14408:	0040a183          	lw	gp,4(ra)
   1440c:	00018313          	mv	t1,gp
   14410:	0ff01eb7          	lui	t4,0xff01
   14414:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   14418:	15d31663          	bne	t1,t4,14564 <fail>
   1441c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14420:	00200293          	li	t0,2
   14424:	fc521ee3          	bne	tp,t0,14400 <test_12+0x8>

00014428 <test_13>:
   14428:	00d00e13          	li	t3,13
   1442c:	00000213          	li	tp,0
   14430:	000ec097          	auipc	ra,0xec
   14434:	c2008093          	addi	ra,ra,-992 # 100050 <tdat3>
   14438:	0040a183          	lw	gp,4(ra)
   1443c:	00000013          	nop
   14440:	00018313          	mv	t1,gp
   14444:	f00ffeb7          	lui	t4,0xf00ff
   14448:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   1444c:	11d31c63          	bne	t1,t4,14564 <fail>
   14450:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14454:	00200293          	li	t0,2
   14458:	fc521ce3          	bne	tp,t0,14430 <test_13+0x8>

0001445c <test_14>:
   1445c:	00e00e13          	li	t3,14
   14460:	00000213          	li	tp,0
   14464:	000ec097          	auipc	ra,0xec
   14468:	be408093          	addi	ra,ra,-1052 # 100048 <tdat>
   1446c:	0040a183          	lw	gp,4(ra)
   14470:	00000013          	nop
   14474:	00000013          	nop
   14478:	00018313          	mv	t1,gp
   1447c:	ff010eb7          	lui	t4,0xff010
   14480:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   14484:	0fd31063          	bne	t1,t4,14564 <fail>
   14488:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1448c:	00200293          	li	t0,2
   14490:	fc521ae3          	bne	tp,t0,14464 <test_14+0x8>

00014494 <test_15>:
   14494:	00f00e13          	li	t3,15
   14498:	00000213          	li	tp,0
   1449c:	000ec097          	auipc	ra,0xec
   144a0:	bb008093          	addi	ra,ra,-1104 # 10004c <tdat2>
   144a4:	0040a183          	lw	gp,4(ra)
   144a8:	0ff01eb7          	lui	t4,0xff01
   144ac:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   144b0:	0bd19a63          	bne	gp,t4,14564 <fail>
   144b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   144b8:	00200293          	li	t0,2
   144bc:	fe5210e3          	bne	tp,t0,1449c <test_15+0x8>

000144c0 <test_16>:
   144c0:	01000e13          	li	t3,16
   144c4:	00000213          	li	tp,0
   144c8:	000ec097          	auipc	ra,0xec
   144cc:	b8808093          	addi	ra,ra,-1144 # 100050 <tdat3>
   144d0:	00000013          	nop
   144d4:	0040a183          	lw	gp,4(ra)
   144d8:	f00ffeb7          	lui	t4,0xf00ff
   144dc:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   144e0:	09d19263          	bne	gp,t4,14564 <fail>
   144e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   144e8:	00200293          	li	t0,2
   144ec:	fc521ee3          	bne	tp,t0,144c8 <test_16+0x8>

000144f0 <test_17>:
   144f0:	01100e13          	li	t3,17
   144f4:	00000213          	li	tp,0
   144f8:	000ec097          	auipc	ra,0xec
   144fc:	b5008093          	addi	ra,ra,-1200 # 100048 <tdat>
   14500:	00000013          	nop
   14504:	00000013          	nop
   14508:	0040a183          	lw	gp,4(ra)
   1450c:	ff010eb7          	lui	t4,0xff010
   14510:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   14514:	05d19863          	bne	gp,t4,14564 <fail>
   14518:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1451c:	00200293          	li	t0,2
   14520:	fc521ce3          	bne	tp,t0,144f8 <test_17+0x8>

00014524 <test_18>:
   14524:	000ec197          	auipc	gp,0xec
   14528:	b2418193          	addi	gp,gp,-1244 # 100048 <tdat>
   1452c:	0001a103          	lw	sp,0(gp)
   14530:	00200113          	li	sp,2
   14534:	00200e93          	li	t4,2
   14538:	01200e13          	li	t3,18
   1453c:	03d11463          	bne	sp,t4,14564 <fail>

00014540 <test_19>:
   14540:	000ec197          	auipc	gp,0xec
   14544:	b0818193          	addi	gp,gp,-1272 # 100048 <tdat>
   14548:	0001a103          	lw	sp,0(gp)
   1454c:	00000013          	nop
   14550:	00200113          	li	sp,2
   14554:	00200e93          	li	t4,2
   14558:	01300e13          	li	t3,19
   1455c:	01d11463          	bne	sp,t4,14564 <fail>
   14560:	05c01463          	bne	zero,t3,145a8 <pass>

00014564 <fail>:
   14564:	0ff00513          	li	a0,255

00014568 <.delay_fail>:
   14568:	fff50513          	addi	a0,a0,-1
   1456c:	fe051ee3          	bnez	a0,14568 <.delay_fail>
   14570:	02000537          	lui	a0,0x2000
   14574:	04500593          	li	a1,69
   14578:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   1457c:	05200613          	li	a2,82
   14580:	00c52023          	sw	a2,0(a0)
   14584:	00c52023          	sw	a2,0(a0)
   14588:	04f00693          	li	a3,79
   1458c:	00d52023          	sw	a3,0(a0)
   14590:	00c52023          	sw	a2,0(a0)
   14594:	00d00713          	li	a4,13
   14598:	00e52023          	sw	a4,0(a0)
   1459c:	00a00793          	li	a5,10
   145a0:	00f52023          	sw	a5,0(a0)
   145a4:	b61fb06f          	j	10104 <lw_ret>

000145a8 <pass>:
   145a8:	0ff00513          	li	a0,255

000145ac <.delay_ok>:
   145ac:	fff50513          	addi	a0,a0,-1
   145b0:	fe051ee3          	bnez	a0,145ac <.delay_ok>
   145b4:	02000537          	lui	a0,0x2000
   145b8:	04f00593          	li	a1,79
   145bc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   145c0:	04b00613          	li	a2,75
   145c4:	00c52023          	sw	a2,0(a0)
   145c8:	00d00693          	li	a3,13
   145cc:	00d52023          	sw	a3,0(a0)
   145d0:	00a00713          	li	a4,10
   145d4:	00e52023          	sw	a4,0(a0)
   145d8:	b2dfb06f          	j	10104 <lw_ret>
   145dc:	0000                	unimp
	...

000145e0 <auipc>:
   145e0:	0ff00513          	li	a0,255

000145e4 <.delay_pr>:
   145e4:	fff50513          	addi	a0,a0,-1
   145e8:	fe051ee3          	bnez	a0,145e4 <.delay_pr>
   145ec:	00014537          	lui	a0,0x14
   145f0:	60c50513          	addi	a0,a0,1548 # 1460c <.test_name>
   145f4:	02000637          	lui	a2,0x2000

000145f8 <.prname_next>:
   145f8:	00050583          	lb	a1,0(a0)
   145fc:	00058c63          	beqz	a1,14614 <.prname_done>
   14600:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   14604:	00150513          	addi	a0,a0,1
   14608:	ff1ff06f          	j	145f8 <.prname_next>

0001460c <.test_name>:
   1460c:	7561                	lui	a0,0xffff8
   1460e:	7069                	c.lui	zero,0xffffa
   14610:	00000063          	beqz	zero,14610 <.test_name+0x4>

00014614 <.prname_done>:
   14614:	02e00593          	li	a1,46
   14618:	00b62023          	sw	a1,0(a2)
   1461c:	00b62023          	sw	a1,0(a2)

00014620 <test_2>:
   14620:	00002517          	auipc	a0,0x2
   14624:	71c50513          	addi	a0,a0,1820 # 16d3c <.delay_fail+0x18>
   14628:	004005ef          	jal	a1,1462c <test_2+0xc>
   1462c:	40b50533          	sub	a0,a0,a1
   14630:	00002eb7          	lui	t4,0x2
   14634:	710e8e93          	addi	t4,t4,1808 # 2710 <_start-0xd8f0>
   14638:	00200e13          	li	t3,2
   1463c:	03d51463          	bne	a0,t4,14664 <fail>

00014640 <test_3>:
   14640:	ffffe517          	auipc	a0,0xffffe
   14644:	8fc50513          	addi	a0,a0,-1796 # 11f3c <test_15+0x14>
   14648:	004005ef          	jal	a1,1464c <test_3+0xc>
   1464c:	40b50533          	sub	a0,a0,a1
   14650:	ffffeeb7          	lui	t4,0xffffe
   14654:	8f0e8e93          	addi	t4,t4,-1808 # ffffd8f0 <_edata+0xffefd880>
   14658:	00300e13          	li	t3,3
   1465c:	01d51463          	bne	a0,t4,14664 <fail>
   14660:	05c01463          	bne	zero,t3,146a8 <pass>

00014664 <fail>:
   14664:	0ff00513          	li	a0,255

00014668 <.delay_fail>:
   14668:	fff50513          	addi	a0,a0,-1
   1466c:	fe051ee3          	bnez	a0,14668 <.delay_fail>
   14670:	02000537          	lui	a0,0x2000
   14674:	04500593          	li	a1,69
   14678:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   1467c:	05200613          	li	a2,82
   14680:	00c52023          	sw	a2,0(a0)
   14684:	00c52023          	sw	a2,0(a0)
   14688:	04f00693          	li	a3,79
   1468c:	00d52023          	sw	a3,0(a0)
   14690:	00c52023          	sw	a2,0(a0)
   14694:	00d00713          	li	a4,13
   14698:	00e52023          	sw	a4,0(a0)
   1469c:	00a00793          	li	a5,10
   146a0:	00f52023          	sw	a5,0(a0)
   146a4:	a31fb06f          	j	100d4 <auipc_ret>

000146a8 <pass>:
   146a8:	0ff00513          	li	a0,255

000146ac <.delay_ok>:
   146ac:	fff50513          	addi	a0,a0,-1
   146b0:	fe051ee3          	bnez	a0,146ac <.delay_ok>
   146b4:	02000537          	lui	a0,0x2000
   146b8:	04f00593          	li	a1,79
   146bc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   146c0:	04b00613          	li	a2,75
   146c4:	00c52023          	sw	a2,0(a0)
   146c8:	00d00693          	li	a3,13
   146cc:	00d52023          	sw	a3,0(a0)
   146d0:	00a00713          	li	a4,10
   146d4:	00e52023          	sw	a4,0(a0)
   146d8:	9fdfb06f          	j	100d4 <auipc_ret>
   146dc:	0000                	unimp
	...

000146e0 <addi>:
   146e0:	0ff00513          	li	a0,255

000146e4 <.delay_pr>:
   146e4:	fff50513          	addi	a0,a0,-1
   146e8:	fe051ee3          	bnez	a0,146e4 <.delay_pr>
   146ec:	00014537          	lui	a0,0x14
   146f0:	70c50513          	addi	a0,a0,1804 # 1470c <.test_name>
   146f4:	02000637          	lui	a2,0x2000

000146f8 <.prname_next>:
   146f8:	00050583          	lb	a1,0(a0)
   146fc:	00058c63          	beqz	a1,14714 <.prname_done>
   14700:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   14704:	00150513          	addi	a0,a0,1
   14708:	ff1ff06f          	j	146f8 <.prname_next>

0001470c <.test_name>:
   1470c:	6461                	lui	s0,0x18
   1470e:	6964                	flw	fs1,84(a0)
   14710:	0000                	unimp
	...

00014714 <.prname_done>:
   14714:	02e00593          	li	a1,46
   14718:	00b62023          	sw	a1,0(a2)
   1471c:	00b62023          	sw	a1,0(a2)

00014720 <test_2>:
   14720:	00000093          	li	ra,0
   14724:	00008193          	mv	gp,ra
   14728:	00000e93          	li	t4,0
   1472c:	00200e13          	li	t3,2
   14730:	27d19c63          	bne	gp,t4,149a8 <fail>

00014734 <test_3>:
   14734:	00100093          	li	ra,1
   14738:	00108193          	addi	gp,ra,1
   1473c:	00200e93          	li	t4,2
   14740:	00300e13          	li	t3,3
   14744:	27d19263          	bne	gp,t4,149a8 <fail>

00014748 <test_4>:
   14748:	00300093          	li	ra,3
   1474c:	00708193          	addi	gp,ra,7
   14750:	00a00e93          	li	t4,10
   14754:	00400e13          	li	t3,4
   14758:	25d19863          	bne	gp,t4,149a8 <fail>

0001475c <test_5>:
   1475c:	00000093          	li	ra,0
   14760:	80008193          	addi	gp,ra,-2048
   14764:	80000e93          	li	t4,-2048
   14768:	00500e13          	li	t3,5
   1476c:	23d19e63          	bne	gp,t4,149a8 <fail>

00014770 <test_6>:
   14770:	800000b7          	lui	ra,0x80000
   14774:	00008193          	mv	gp,ra
   14778:	80000eb7          	lui	t4,0x80000
   1477c:	00600e13          	li	t3,6
   14780:	23d19463          	bne	gp,t4,149a8 <fail>

00014784 <test_7>:
   14784:	800000b7          	lui	ra,0x80000
   14788:	80008193          	addi	gp,ra,-2048 # 7ffff800 <_edata+0x7feff790>
   1478c:	80000eb7          	lui	t4,0x80000
   14790:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_edata+0x7feff790>
   14794:	00700e13          	li	t3,7
   14798:	21d19863          	bne	gp,t4,149a8 <fail>

0001479c <test_8>:
   1479c:	00000093          	li	ra,0
   147a0:	7ff08193          	addi	gp,ra,2047
   147a4:	7ff00e93          	li	t4,2047
   147a8:	00800e13          	li	t3,8
   147ac:	1fd19e63          	bne	gp,t4,149a8 <fail>

000147b0 <test_9>:
   147b0:	800000b7          	lui	ra,0x80000
   147b4:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   147b8:	00008193          	mv	gp,ra
   147bc:	80000eb7          	lui	t4,0x80000
   147c0:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0x7fefff8f>
   147c4:	00900e13          	li	t3,9
   147c8:	1fd19063          	bne	gp,t4,149a8 <fail>

000147cc <test_10>:
   147cc:	800000b7          	lui	ra,0x80000
   147d0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   147d4:	7ff08193          	addi	gp,ra,2047
   147d8:	80000eb7          	lui	t4,0x80000
   147dc:	7fee8e93          	addi	t4,t4,2046 # 800007fe <_edata+0x7ff0078e>
   147e0:	00a00e13          	li	t3,10
   147e4:	1dd19263          	bne	gp,t4,149a8 <fail>

000147e8 <test_11>:
   147e8:	800000b7          	lui	ra,0x80000
   147ec:	7ff08193          	addi	gp,ra,2047 # 800007ff <_edata+0x7ff0078f>
   147f0:	80000eb7          	lui	t4,0x80000
   147f4:	7ffe8e93          	addi	t4,t4,2047 # 800007ff <_edata+0x7ff0078f>
   147f8:	00b00e13          	li	t3,11
   147fc:	1bd19663          	bne	gp,t4,149a8 <fail>

00014800 <test_12>:
   14800:	800000b7          	lui	ra,0x80000
   14804:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   14808:	80008193          	addi	gp,ra,-2048
   1480c:	7ffffeb7          	lui	t4,0x7ffff
   14810:	7ffe8e93          	addi	t4,t4,2047 # 7ffff7ff <_edata+0x7feff78f>
   14814:	00c00e13          	li	t3,12
   14818:	19d19863          	bne	gp,t4,149a8 <fail>

0001481c <test_13>:
   1481c:	00000093          	li	ra,0
   14820:	fff08193          	addi	gp,ra,-1
   14824:	fff00e93          	li	t4,-1
   14828:	00d00e13          	li	t3,13
   1482c:	17d19e63          	bne	gp,t4,149a8 <fail>

00014830 <test_14>:
   14830:	fff00093          	li	ra,-1
   14834:	00108193          	addi	gp,ra,1
   14838:	00000e93          	li	t4,0
   1483c:	00e00e13          	li	t3,14
   14840:	17d19463          	bne	gp,t4,149a8 <fail>

00014844 <test_15>:
   14844:	fff00093          	li	ra,-1
   14848:	fff08193          	addi	gp,ra,-1
   1484c:	ffe00e93          	li	t4,-2
   14850:	00f00e13          	li	t3,15
   14854:	15d19a63          	bne	gp,t4,149a8 <fail>

00014858 <test_16>:
   14858:	800000b7          	lui	ra,0x80000
   1485c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   14860:	00108193          	addi	gp,ra,1
   14864:	80000eb7          	lui	t4,0x80000
   14868:	01000e13          	li	t3,16
   1486c:	13d19e63          	bne	gp,t4,149a8 <fail>

00014870 <test_17>:
   14870:	00d00093          	li	ra,13
   14874:	00b08093          	addi	ra,ra,11
   14878:	01800e93          	li	t4,24
   1487c:	01100e13          	li	t3,17
   14880:	13d09463          	bne	ra,t4,149a8 <fail>

00014884 <test_18>:
   14884:	00000213          	li	tp,0
   14888:	00d00093          	li	ra,13
   1488c:	00b08193          	addi	gp,ra,11
   14890:	00018313          	mv	t1,gp
   14894:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14898:	00200293          	li	t0,2
   1489c:	fe5216e3          	bne	tp,t0,14888 <test_18+0x4>
   148a0:	01800e93          	li	t4,24
   148a4:	01200e13          	li	t3,18
   148a8:	11d31063          	bne	t1,t4,149a8 <fail>

000148ac <test_19>:
   148ac:	00000213          	li	tp,0
   148b0:	00d00093          	li	ra,13
   148b4:	00a08193          	addi	gp,ra,10
   148b8:	00000013          	nop
   148bc:	00018313          	mv	t1,gp
   148c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   148c4:	00200293          	li	t0,2
   148c8:	fe5214e3          	bne	tp,t0,148b0 <test_19+0x4>
   148cc:	01700e93          	li	t4,23
   148d0:	01300e13          	li	t3,19
   148d4:	0dd31a63          	bne	t1,t4,149a8 <fail>

000148d8 <test_20>:
   148d8:	00000213          	li	tp,0
   148dc:	00d00093          	li	ra,13
   148e0:	00908193          	addi	gp,ra,9
   148e4:	00000013          	nop
   148e8:	00000013          	nop
   148ec:	00018313          	mv	t1,gp
   148f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   148f4:	00200293          	li	t0,2
   148f8:	fe5212e3          	bne	tp,t0,148dc <test_20+0x4>
   148fc:	01600e93          	li	t4,22
   14900:	01400e13          	li	t3,20
   14904:	0bd31263          	bne	t1,t4,149a8 <fail>

00014908 <test_21>:
   14908:	00000213          	li	tp,0
   1490c:	00d00093          	li	ra,13
   14910:	00b08193          	addi	gp,ra,11
   14914:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14918:	00200293          	li	t0,2
   1491c:	fe5218e3          	bne	tp,t0,1490c <test_21+0x4>
   14920:	01800e93          	li	t4,24
   14924:	01500e13          	li	t3,21
   14928:	09d19063          	bne	gp,t4,149a8 <fail>

0001492c <test_22>:
   1492c:	00000213          	li	tp,0
   14930:	00d00093          	li	ra,13
   14934:	00000013          	nop
   14938:	00a08193          	addi	gp,ra,10
   1493c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14940:	00200293          	li	t0,2
   14944:	fe5216e3          	bne	tp,t0,14930 <test_22+0x4>
   14948:	01700e93          	li	t4,23
   1494c:	01600e13          	li	t3,22
   14950:	05d19c63          	bne	gp,t4,149a8 <fail>

00014954 <test_23>:
   14954:	00000213          	li	tp,0
   14958:	00d00093          	li	ra,13
   1495c:	00000013          	nop
   14960:	00000013          	nop
   14964:	00908193          	addi	gp,ra,9
   14968:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1496c:	00200293          	li	t0,2
   14970:	fe5214e3          	bne	tp,t0,14958 <test_23+0x4>
   14974:	01600e93          	li	t4,22
   14978:	01700e13          	li	t3,23
   1497c:	03d19663          	bne	gp,t4,149a8 <fail>

00014980 <test_24>:
   14980:	02000093          	li	ra,32
   14984:	02000e93          	li	t4,32
   14988:	01800e13          	li	t3,24
   1498c:	01d09e63          	bne	ra,t4,149a8 <fail>

00014990 <test_25>:
   14990:	02100093          	li	ra,33
   14994:	03208013          	addi	zero,ra,50
   14998:	00000e93          	li	t4,0
   1499c:	01900e13          	li	t3,25
   149a0:	01d01463          	bne	zero,t4,149a8 <fail>
   149a4:	05c01463          	bne	zero,t3,149ec <pass>

000149a8 <fail>:
   149a8:	0ff00513          	li	a0,255

000149ac <.delay_fail>:
   149ac:	fff50513          	addi	a0,a0,-1
   149b0:	fe051ee3          	bnez	a0,149ac <.delay_fail>
   149b4:	02000537          	lui	a0,0x2000
   149b8:	04500593          	li	a1,69
   149bc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   149c0:	05200613          	li	a2,82
   149c4:	00c52023          	sw	a2,0(a0)
   149c8:	00c52023          	sw	a2,0(a0)
   149cc:	04f00693          	li	a3,79
   149d0:	00d52023          	sw	a3,0(a0)
   149d4:	00c52023          	sw	a2,0(a0)
   149d8:	00d00713          	li	a4,13
   149dc:	00e52023          	sw	a4,0(a0)
   149e0:	00a00793          	li	a5,10
   149e4:	00f52023          	sw	a5,0(a0)
   149e8:	f34fb06f          	j	1011c <addi_ret>

000149ec <pass>:
   149ec:	0ff00513          	li	a0,255

000149f0 <.delay_ok>:
   149f0:	fff50513          	addi	a0,a0,-1
   149f4:	fe051ee3          	bnez	a0,149f0 <.delay_ok>
   149f8:	02000537          	lui	a0,0x2000
   149fc:	04f00593          	li	a1,79
   14a00:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   14a04:	04b00613          	li	a2,75
   14a08:	00c52023          	sw	a2,0(a0)
   14a0c:	00d00693          	li	a3,13
   14a10:	00d52023          	sw	a3,0(a0)
   14a14:	00a00713          	li	a4,10
   14a18:	00e52023          	sw	a4,0(a0)
   14a1c:	f00fb06f          	j	1011c <addi_ret>

00014a20 <jalr>:
   14a20:	0ff00513          	li	a0,255

00014a24 <.delay_pr>:
   14a24:	fff50513          	addi	a0,a0,-1
   14a28:	fe051ee3          	bnez	a0,14a24 <.delay_pr>
   14a2c:	00015537          	lui	a0,0x15
   14a30:	a4c50513          	addi	a0,a0,-1460 # 14a4c <.test_name>
   14a34:	02000637          	lui	a2,0x2000

00014a38 <.prname_next>:
   14a38:	00050583          	lb	a1,0(a0)
   14a3c:	00058c63          	beqz	a1,14a54 <.prname_done>
   14a40:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   14a44:	00150513          	addi	a0,a0,1
   14a48:	ff1ff06f          	j	14a38 <.prname_next>

00014a4c <.test_name>:
   14a4c:	616a                	flw	ft2,152(sp)
   14a4e:	726c                	flw	fa1,100(a2)
   14a50:	0000                	unimp
	...

00014a54 <.prname_done>:
   14a54:	02e00593          	li	a1,46
   14a58:	00b62023          	sw	a1,0(a2)
   14a5c:	00b62023          	sw	a1,0(a2)

00014a60 <test_2>:
   14a60:	00200e13          	li	t3,2
   14a64:	00000f93          	li	t6,0
   14a68:	00000117          	auipc	sp,0x0
   14a6c:	01810113          	addi	sp,sp,24 # 14a80 <target_2>

00014a70 <linkaddr_2>:
   14a70:	000109e7          	jalr	s3,sp
   14a74:	00000013          	nop
   14a78:	00000013          	nop
   14a7c:	0e40006f          	j	14b60 <fail>

00014a80 <target_2>:
   14a80:	00000097          	auipc	ra,0x0
   14a84:	ff008093          	addi	ra,ra,-16 # 14a70 <linkaddr_2>
   14a88:	00408093          	addi	ra,ra,4
   14a8c:	0d309a63          	bne	ra,s3,14b60 <fail>

00014a90 <test_3>:
   14a90:	00300e13          	li	t3,3
   14a94:	00000f93          	li	t6,0
   14a98:	00000197          	auipc	gp,0x0
   14a9c:	01418193          	addi	gp,gp,20 # 14aac <target_3>

00014aa0 <linkaddr_3>:
   14aa0:	00018067          	jr	gp
   14aa4:	00000013          	nop
   14aa8:	0b80006f          	j	14b60 <fail>

00014aac <target_3>:
   14aac:	0a0f9a63          	bnez	t6,14b60 <fail>

00014ab0 <test_4>:
   14ab0:	00400e13          	li	t3,4
   14ab4:	00000213          	li	tp,0
   14ab8:	00000317          	auipc	t1,0x0
   14abc:	01030313          	addi	t1,t1,16 # 14ac8 <test_4+0x18>
   14ac0:	000309e7          	jalr	s3,t1
   14ac4:	09c01e63          	bne	zero,t3,14b60 <fail>
   14ac8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14acc:	00200293          	li	t0,2
   14ad0:	fe5214e3          	bne	tp,t0,14ab8 <test_4+0x8>

00014ad4 <test_5>:
   14ad4:	00500e13          	li	t3,5
   14ad8:	00000213          	li	tp,0
   14adc:	00000317          	auipc	t1,0x0
   14ae0:	01430313          	addi	t1,t1,20 # 14af0 <test_5+0x1c>
   14ae4:	00000013          	nop
   14ae8:	000309e7          	jalr	s3,t1
   14aec:	07c01a63          	bne	zero,t3,14b60 <fail>
   14af0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14af4:	00200293          	li	t0,2
   14af8:	fe5212e3          	bne	tp,t0,14adc <test_5+0x8>

00014afc <test_6>:
   14afc:	00600e13          	li	t3,6
   14b00:	00000213          	li	tp,0
   14b04:	00000317          	auipc	t1,0x0
   14b08:	01830313          	addi	t1,t1,24 # 14b1c <test_6+0x20>
   14b0c:	00000013          	nop
   14b10:	00000013          	nop
   14b14:	000309e7          	jalr	s3,t1
   14b18:	05c01463          	bne	zero,t3,14b60 <fail>
   14b1c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14b20:	00200293          	li	t0,2
   14b24:	fe5210e3          	bne	tp,t0,14b04 <test_6+0x8>

00014b28 <test_7>:
   14b28:	00100093          	li	ra,1
   14b2c:	00000117          	auipc	sp,0x0
   14b30:	01c10113          	addi	sp,sp,28 # 14b48 <test_7+0x20>
   14b34:	ffc109e7          	jalr	s3,-4(sp)
   14b38:	00108093          	addi	ra,ra,1
   14b3c:	00108093          	addi	ra,ra,1
   14b40:	00108093          	addi	ra,ra,1
   14b44:	00108093          	addi	ra,ra,1
   14b48:	00108093          	addi	ra,ra,1
   14b4c:	00108093          	addi	ra,ra,1
   14b50:	00400e93          	li	t4,4
   14b54:	00700e13          	li	t3,7
   14b58:	01d09463          	bne	ra,t4,14b60 <fail>
   14b5c:	05c01463          	bne	zero,t3,14ba4 <pass>

00014b60 <fail>:
   14b60:	0ff00513          	li	a0,255

00014b64 <.delay_fail>:
   14b64:	fff50513          	addi	a0,a0,-1
   14b68:	fe051ee3          	bnez	a0,14b64 <.delay_fail>
   14b6c:	02000537          	lui	a0,0x2000
   14b70:	04500593          	li	a1,69
   14b74:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   14b78:	05200613          	li	a2,82
   14b7c:	00c52023          	sw	a2,0(a0)
   14b80:	00c52023          	sw	a2,0(a0)
   14b84:	04f00693          	li	a3,79
   14b88:	00d52023          	sw	a3,0(a0)
   14b8c:	00c52023          	sw	a2,0(a0)
   14b90:	00d00713          	li	a4,13
   14b94:	00e52023          	sw	a4,0(a0)
   14b98:	00a00793          	li	a5,10
   14b9c:	00f52023          	sw	a5,0(a0)
   14ba0:	d40fb06f          	j	100e0 <jalr_ret>

00014ba4 <pass>:
   14ba4:	0ff00513          	li	a0,255

00014ba8 <.delay_ok>:
   14ba8:	fff50513          	addi	a0,a0,-1
   14bac:	fe051ee3          	bnez	a0,14ba8 <.delay_ok>
   14bb0:	02000537          	lui	a0,0x2000
   14bb4:	04f00593          	li	a1,79
   14bb8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   14bbc:	04b00613          	li	a2,75
   14bc0:	00c52023          	sw	a2,0(a0)
   14bc4:	00d00693          	li	a3,13
   14bc8:	00d52023          	sw	a3,0(a0)
   14bcc:	00a00713          	li	a4,10
   14bd0:	00e52023          	sw	a4,0(a0)
   14bd4:	d0cfb06f          	j	100e0 <jalr_ret>

00014bd8 <bne>:
   14bd8:	0ff00513          	li	a0,255

00014bdc <.delay_pr>:
   14bdc:	fff50513          	addi	a0,a0,-1
   14be0:	fe051ee3          	bnez	a0,14bdc <.delay_pr>
   14be4:	00015537          	lui	a0,0x15
   14be8:	c0450513          	addi	a0,a0,-1020 # 14c04 <.test_name>
   14bec:	02000637          	lui	a2,0x2000

00014bf0 <.prname_next>:
   14bf0:	00050583          	lb	a1,0(a0)
   14bf4:	00058a63          	beqz	a1,14c08 <.prname_done>
   14bf8:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   14bfc:	00150513          	addi	a0,a0,1
   14c00:	ff1ff06f          	j	14bf0 <.prname_next>

00014c04 <.test_name>:
   14c04:	6e62                	flw	ft8,24(sp)
   14c06:	0065                	c.nop	25

00014c08 <.prname_done>:
   14c08:	02e00593          	li	a1,46
   14c0c:	00b62023          	sw	a1,0(a2)
   14c10:	00b62023          	sw	a1,0(a2)

00014c14 <test_2>:
   14c14:	00200e13          	li	t3,2
   14c18:	00000093          	li	ra,0
   14c1c:	00100113          	li	sp,1
   14c20:	00209663          	bne	ra,sp,14c2c <test_2+0x18>
   14c24:	2bc01a63          	bne	zero,t3,14ed8 <fail>
   14c28:	01c01663          	bne	zero,t3,14c34 <test_3>
   14c2c:	fe209ee3          	bne	ra,sp,14c28 <test_2+0x14>
   14c30:	2bc01463          	bne	zero,t3,14ed8 <fail>

00014c34 <test_3>:
   14c34:	00300e13          	li	t3,3
   14c38:	00100093          	li	ra,1
   14c3c:	00000113          	li	sp,0
   14c40:	00209663          	bne	ra,sp,14c4c <test_3+0x18>
   14c44:	29c01a63          	bne	zero,t3,14ed8 <fail>
   14c48:	01c01663          	bne	zero,t3,14c54 <test_4>
   14c4c:	fe209ee3          	bne	ra,sp,14c48 <test_3+0x14>
   14c50:	29c01463          	bne	zero,t3,14ed8 <fail>

00014c54 <test_4>:
   14c54:	00400e13          	li	t3,4
   14c58:	fff00093          	li	ra,-1
   14c5c:	00100113          	li	sp,1
   14c60:	00209663          	bne	ra,sp,14c6c <test_4+0x18>
   14c64:	27c01a63          	bne	zero,t3,14ed8 <fail>
   14c68:	01c01663          	bne	zero,t3,14c74 <test_5>
   14c6c:	fe209ee3          	bne	ra,sp,14c68 <test_4+0x14>
   14c70:	27c01463          	bne	zero,t3,14ed8 <fail>

00014c74 <test_5>:
   14c74:	00500e13          	li	t3,5
   14c78:	00100093          	li	ra,1
   14c7c:	fff00113          	li	sp,-1
   14c80:	00209663          	bne	ra,sp,14c8c <test_5+0x18>
   14c84:	25c01a63          	bne	zero,t3,14ed8 <fail>
   14c88:	01c01663          	bne	zero,t3,14c94 <test_6>
   14c8c:	fe209ee3          	bne	ra,sp,14c88 <test_5+0x14>
   14c90:	25c01463          	bne	zero,t3,14ed8 <fail>

00014c94 <test_6>:
   14c94:	00600e13          	li	t3,6
   14c98:	00000093          	li	ra,0
   14c9c:	00000113          	li	sp,0
   14ca0:	00209463          	bne	ra,sp,14ca8 <test_6+0x14>
   14ca4:	01c01463          	bne	zero,t3,14cac <test_6+0x18>
   14ca8:	23c01863          	bne	zero,t3,14ed8 <fail>
   14cac:	fe209ee3          	bne	ra,sp,14ca8 <test_6+0x14>

00014cb0 <test_7>:
   14cb0:	00700e13          	li	t3,7
   14cb4:	00100093          	li	ra,1
   14cb8:	00100113          	li	sp,1
   14cbc:	00209463          	bne	ra,sp,14cc4 <test_7+0x14>
   14cc0:	01c01463          	bne	zero,t3,14cc8 <test_7+0x18>
   14cc4:	21c01a63          	bne	zero,t3,14ed8 <fail>
   14cc8:	fe209ee3          	bne	ra,sp,14cc4 <test_7+0x14>

00014ccc <test_8>:
   14ccc:	00800e13          	li	t3,8
   14cd0:	fff00093          	li	ra,-1
   14cd4:	fff00113          	li	sp,-1
   14cd8:	00209463          	bne	ra,sp,14ce0 <test_8+0x14>
   14cdc:	01c01463          	bne	zero,t3,14ce4 <test_8+0x18>
   14ce0:	1fc01c63          	bne	zero,t3,14ed8 <fail>
   14ce4:	fe209ee3          	bne	ra,sp,14ce0 <test_8+0x14>

00014ce8 <test_9>:
   14ce8:	00900e13          	li	t3,9
   14cec:	00000213          	li	tp,0
   14cf0:	00000093          	li	ra,0
   14cf4:	00000113          	li	sp,0
   14cf8:	1e209063          	bne	ra,sp,14ed8 <fail>
   14cfc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d00:	00200293          	li	t0,2
   14d04:	fe5216e3          	bne	tp,t0,14cf0 <test_9+0x8>

00014d08 <test_10>:
   14d08:	00a00e13          	li	t3,10
   14d0c:	00000213          	li	tp,0
   14d10:	00000093          	li	ra,0
   14d14:	00000113          	li	sp,0
   14d18:	00000013          	nop
   14d1c:	1a209e63          	bne	ra,sp,14ed8 <fail>
   14d20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d24:	00200293          	li	t0,2
   14d28:	fe5214e3          	bne	tp,t0,14d10 <test_10+0x8>

00014d2c <test_11>:
   14d2c:	00b00e13          	li	t3,11
   14d30:	00000213          	li	tp,0
   14d34:	00000093          	li	ra,0
   14d38:	00000113          	li	sp,0
   14d3c:	00000013          	nop
   14d40:	00000013          	nop
   14d44:	18209a63          	bne	ra,sp,14ed8 <fail>
   14d48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d4c:	00200293          	li	t0,2
   14d50:	fe5212e3          	bne	tp,t0,14d34 <test_11+0x8>

00014d54 <test_12>:
   14d54:	00c00e13          	li	t3,12
   14d58:	00000213          	li	tp,0
   14d5c:	00000093          	li	ra,0
   14d60:	00000013          	nop
   14d64:	00000113          	li	sp,0
   14d68:	16209863          	bne	ra,sp,14ed8 <fail>
   14d6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d70:	00200293          	li	t0,2
   14d74:	fe5214e3          	bne	tp,t0,14d5c <test_12+0x8>

00014d78 <test_13>:
   14d78:	00d00e13          	li	t3,13
   14d7c:	00000213          	li	tp,0
   14d80:	00000093          	li	ra,0
   14d84:	00000013          	nop
   14d88:	00000113          	li	sp,0
   14d8c:	00000013          	nop
   14d90:	14209463          	bne	ra,sp,14ed8 <fail>
   14d94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d98:	00200293          	li	t0,2
   14d9c:	fe5212e3          	bne	tp,t0,14d80 <test_13+0x8>

00014da0 <test_14>:
   14da0:	00e00e13          	li	t3,14
   14da4:	00000213          	li	tp,0
   14da8:	00000093          	li	ra,0
   14dac:	00000013          	nop
   14db0:	00000013          	nop
   14db4:	00000113          	li	sp,0
   14db8:	12209063          	bne	ra,sp,14ed8 <fail>
   14dbc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14dc0:	00200293          	li	t0,2
   14dc4:	fe5212e3          	bne	tp,t0,14da8 <test_14+0x8>

00014dc8 <test_15>:
   14dc8:	00f00e13          	li	t3,15
   14dcc:	00000213          	li	tp,0
   14dd0:	00000093          	li	ra,0
   14dd4:	00000113          	li	sp,0
   14dd8:	10209063          	bne	ra,sp,14ed8 <fail>
   14ddc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14de0:	00200293          	li	t0,2
   14de4:	fe5216e3          	bne	tp,t0,14dd0 <test_15+0x8>

00014de8 <test_16>:
   14de8:	01000e13          	li	t3,16
   14dec:	00000213          	li	tp,0
   14df0:	00000093          	li	ra,0
   14df4:	00000113          	li	sp,0
   14df8:	00000013          	nop
   14dfc:	0c209e63          	bne	ra,sp,14ed8 <fail>
   14e00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e04:	00200293          	li	t0,2
   14e08:	fe5214e3          	bne	tp,t0,14df0 <test_16+0x8>

00014e0c <test_17>:
   14e0c:	01100e13          	li	t3,17
   14e10:	00000213          	li	tp,0
   14e14:	00000093          	li	ra,0
   14e18:	00000113          	li	sp,0
   14e1c:	00000013          	nop
   14e20:	00000013          	nop
   14e24:	0a209a63          	bne	ra,sp,14ed8 <fail>
   14e28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e2c:	00200293          	li	t0,2
   14e30:	fe5212e3          	bne	tp,t0,14e14 <test_17+0x8>

00014e34 <test_18>:
   14e34:	01200e13          	li	t3,18
   14e38:	00000213          	li	tp,0
   14e3c:	00000093          	li	ra,0
   14e40:	00000013          	nop
   14e44:	00000113          	li	sp,0
   14e48:	08209863          	bne	ra,sp,14ed8 <fail>
   14e4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e50:	00200293          	li	t0,2
   14e54:	fe5214e3          	bne	tp,t0,14e3c <test_18+0x8>

00014e58 <test_19>:
   14e58:	01300e13          	li	t3,19
   14e5c:	00000213          	li	tp,0
   14e60:	00000093          	li	ra,0
   14e64:	00000013          	nop
   14e68:	00000113          	li	sp,0
   14e6c:	00000013          	nop
   14e70:	06209463          	bne	ra,sp,14ed8 <fail>
   14e74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e78:	00200293          	li	t0,2
   14e7c:	fe5212e3          	bne	tp,t0,14e60 <test_19+0x8>

00014e80 <test_20>:
   14e80:	01400e13          	li	t3,20
   14e84:	00000213          	li	tp,0
   14e88:	00000093          	li	ra,0
   14e8c:	00000013          	nop
   14e90:	00000013          	nop
   14e94:	00000113          	li	sp,0
   14e98:	04209063          	bne	ra,sp,14ed8 <fail>
   14e9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ea0:	00200293          	li	t0,2
   14ea4:	fe5212e3          	bne	tp,t0,14e88 <test_20+0x8>

00014ea8 <test_21>:
   14ea8:	00100093          	li	ra,1
   14eac:	00009a63          	bnez	ra,14ec0 <test_21+0x18>
   14eb0:	00108093          	addi	ra,ra,1
   14eb4:	00108093          	addi	ra,ra,1
   14eb8:	00108093          	addi	ra,ra,1
   14ebc:	00108093          	addi	ra,ra,1
   14ec0:	00108093          	addi	ra,ra,1
   14ec4:	00108093          	addi	ra,ra,1
   14ec8:	00300e93          	li	t4,3
   14ecc:	01500e13          	li	t3,21
   14ed0:	01d09463          	bne	ra,t4,14ed8 <fail>
   14ed4:	05c01463          	bne	zero,t3,14f1c <pass>

00014ed8 <fail>:
   14ed8:	0ff00513          	li	a0,255

00014edc <.delay_fail>:
   14edc:	fff50513          	addi	a0,a0,-1
   14ee0:	fe051ee3          	bnez	a0,14edc <.delay_fail>
   14ee4:	02000537          	lui	a0,0x2000
   14ee8:	04500593          	li	a1,69
   14eec:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   14ef0:	05200613          	li	a2,82
   14ef4:	00c52023          	sw	a2,0(a0)
   14ef8:	00c52023          	sw	a2,0(a0)
   14efc:	04f00693          	li	a3,79
   14f00:	00d52023          	sw	a3,0(a0)
   14f04:	00c52023          	sw	a2,0(a0)
   14f08:	00d00713          	li	a4,13
   14f0c:	00e52023          	sw	a4,0(a0)
   14f10:	00a00793          	li	a5,10
   14f14:	00f52023          	sw	a5,0(a0)
   14f18:	9d0fb06f          	j	100e8 <bne_ret>

00014f1c <pass>:
   14f1c:	0ff00513          	li	a0,255

00014f20 <.delay_ok>:
   14f20:	fff50513          	addi	a0,a0,-1
   14f24:	fe051ee3          	bnez	a0,14f20 <.delay_ok>
   14f28:	02000537          	lui	a0,0x2000
   14f2c:	04f00593          	li	a1,79
   14f30:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   14f34:	04b00613          	li	a2,75
   14f38:	00c52023          	sw	a2,0(a0)
   14f3c:	00d00693          	li	a3,13
   14f40:	00d52023          	sw	a3,0(a0)
   14f44:	00a00713          	li	a4,10
   14f48:	00e52023          	sw	a4,0(a0)
   14f4c:	99cfb06f          	j	100e8 <bne_ret>

00014f50 <xori>:
   14f50:	0ff00513          	li	a0,255

00014f54 <.delay_pr>:
   14f54:	fff50513          	addi	a0,a0,-1
   14f58:	fe051ee3          	bnez	a0,14f54 <.delay_pr>
   14f5c:	00015537          	lui	a0,0x15
   14f60:	f7c50513          	addi	a0,a0,-132 # 14f7c <.test_name>
   14f64:	02000637          	lui	a2,0x2000

00014f68 <.prname_next>:
   14f68:	00050583          	lb	a1,0(a0)
   14f6c:	00058c63          	beqz	a1,14f84 <.prname_done>
   14f70:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   14f74:	00150513          	addi	a0,a0,1
   14f78:	ff1ff06f          	j	14f68 <.prname_next>

00014f7c <.test_name>:
   14f7c:	6f78                	flw	fa4,92(a4)
   14f7e:	6972                	flw	fs2,28(sp)
   14f80:	0000                	unimp
	...

00014f84 <.prname_done>:
   14f84:	02e00593          	li	a1,46
   14f88:	00b62023          	sw	a1,0(a2)
   14f8c:	00b62023          	sw	a1,0(a2)

00014f90 <test_2>:
   14f90:	00ff10b7          	lui	ra,0xff1
   14f94:	f0008093          	addi	ra,ra,-256 # ff0f00 <_edata+0xef0e90>
   14f98:	f0f0c193          	xori	gp,ra,-241
   14f9c:	ff00feb7          	lui	t4,0xff00f
   14fa0:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0xfef0ef9f>
   14fa4:	00200e13          	li	t3,2
   14fa8:	1dd19663          	bne	gp,t4,15174 <fail>

00014fac <test_3>:
   14fac:	0ff010b7          	lui	ra,0xff01
   14fb0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   14fb4:	0f00c193          	xori	gp,ra,240
   14fb8:	0ff01eb7          	lui	t4,0xff01
   14fbc:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_edata+0xfe00e90>
   14fc0:	00300e13          	li	t3,3
   14fc4:	1bd19863          	bne	gp,t4,15174 <fail>

00014fc8 <test_4>:
   14fc8:	00ff10b7          	lui	ra,0xff1
   14fcc:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_edata+0xef088f>
   14fd0:	70f0c193          	xori	gp,ra,1807
   14fd4:	00ff1eb7          	lui	t4,0xff1
   14fd8:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_edata+0xef0f80>
   14fdc:	00400e13          	li	t3,4
   14fe0:	19d19a63          	bne	gp,t4,15174 <fail>

00014fe4 <test_5>:
   14fe4:	f00ff0b7          	lui	ra,0xf00ff
   14fe8:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   14fec:	0f00c193          	xori	gp,ra,240
   14ff0:	f00ffeb7          	lui	t4,0xf00ff
   14ff4:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0xeffff08f>
   14ff8:	00500e13          	li	t3,5
   14ffc:	17d19c63          	bne	gp,t4,15174 <fail>

00015000 <test_6>:
   15000:	ff00f0b7          	lui	ra,0xff00f
   15004:	70008093          	addi	ra,ra,1792 # ff00f700 <_edata+0xfef0f690>
   15008:	70f0c093          	xori	ra,ra,1807
   1500c:	ff00feb7          	lui	t4,0xff00f
   15010:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0xfef0ef9f>
   15014:	00600e13          	li	t3,6
   15018:	15d09e63          	bne	ra,t4,15174 <fail>

0001501c <test_7>:
   1501c:	00000213          	li	tp,0
   15020:	0ff010b7          	lui	ra,0xff01
   15024:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   15028:	0f00c193          	xori	gp,ra,240
   1502c:	00018313          	mv	t1,gp
   15030:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15034:	00200293          	li	t0,2
   15038:	fe5214e3          	bne	tp,t0,15020 <test_7+0x4>
   1503c:	0ff01eb7          	lui	t4,0xff01
   15040:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_edata+0xfe00e90>
   15044:	00700e13          	li	t3,7
   15048:	13d31663          	bne	t1,t4,15174 <fail>

0001504c <test_8>:
   1504c:	00000213          	li	tp,0
   15050:	00ff10b7          	lui	ra,0xff1
   15054:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_edata+0xef088f>
   15058:	70f0c193          	xori	gp,ra,1807
   1505c:	00000013          	nop
   15060:	00018313          	mv	t1,gp
   15064:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15068:	00200293          	li	t0,2
   1506c:	fe5212e3          	bne	tp,t0,15050 <test_8+0x4>
   15070:	00ff1eb7          	lui	t4,0xff1
   15074:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_edata+0xef0f80>
   15078:	00800e13          	li	t3,8
   1507c:	0fd31c63          	bne	t1,t4,15174 <fail>

00015080 <test_9>:
   15080:	00000213          	li	tp,0
   15084:	f00ff0b7          	lui	ra,0xf00ff
   15088:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   1508c:	0f00c193          	xori	gp,ra,240
   15090:	00000013          	nop
   15094:	00000013          	nop
   15098:	00018313          	mv	t1,gp
   1509c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   150a0:	00200293          	li	t0,2
   150a4:	fe5210e3          	bne	tp,t0,15084 <test_9+0x4>
   150a8:	f00ffeb7          	lui	t4,0xf00ff
   150ac:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0xeffff08f>
   150b0:	00900e13          	li	t3,9
   150b4:	0dd31063          	bne	t1,t4,15174 <fail>

000150b8 <test_10>:
   150b8:	00000213          	li	tp,0
   150bc:	0ff010b7          	lui	ra,0xff01
   150c0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   150c4:	0f00c193          	xori	gp,ra,240
   150c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   150cc:	00200293          	li	t0,2
   150d0:	fe5216e3          	bne	tp,t0,150bc <test_10+0x4>
   150d4:	0ff01eb7          	lui	t4,0xff01
   150d8:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_edata+0xfe00e90>
   150dc:	00a00e13          	li	t3,10
   150e0:	09d19a63          	bne	gp,t4,15174 <fail>

000150e4 <test_11>:
   150e4:	00000213          	li	tp,0
   150e8:	00ff10b7          	lui	ra,0xff1
   150ec:	fff08093          	addi	ra,ra,-1 # ff0fff <_edata+0xef0f8f>
   150f0:	00000013          	nop
   150f4:	00f0c193          	xori	gp,ra,15
   150f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   150fc:	00200293          	li	t0,2
   15100:	fe5214e3          	bne	tp,t0,150e8 <test_11+0x4>
   15104:	00ff1eb7          	lui	t4,0xff1
   15108:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_edata+0xef0f80>
   1510c:	00b00e13          	li	t3,11
   15110:	07d19263          	bne	gp,t4,15174 <fail>

00015114 <test_12>:
   15114:	00000213          	li	tp,0
   15118:	f00ff0b7          	lui	ra,0xf00ff
   1511c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   15120:	00000013          	nop
   15124:	00000013          	nop
   15128:	0f00c193          	xori	gp,ra,240
   1512c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15130:	00200293          	li	t0,2
   15134:	fe5212e3          	bne	tp,t0,15118 <test_12+0x4>
   15138:	f00ffeb7          	lui	t4,0xf00ff
   1513c:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0xeffff08f>
   15140:	00c00e13          	li	t3,12
   15144:	03d19863          	bne	gp,t4,15174 <fail>

00015148 <test_13>:
   15148:	0f004093          	xori	ra,zero,240
   1514c:	0f000e93          	li	t4,240
   15150:	00d00e13          	li	t3,13
   15154:	03d09063          	bne	ra,t4,15174 <fail>

00015158 <test_14>:
   15158:	00ff00b7          	lui	ra,0xff0
   1515c:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   15160:	70f0c013          	xori	zero,ra,1807
   15164:	00000e93          	li	t4,0
   15168:	00e00e13          	li	t3,14
   1516c:	01d01463          	bne	zero,t4,15174 <fail>
   15170:	05c01463          	bne	zero,t3,151b8 <pass>

00015174 <fail>:
   15174:	0ff00513          	li	a0,255

00015178 <.delay_fail>:
   15178:	fff50513          	addi	a0,a0,-1
   1517c:	fe051ee3          	bnez	a0,15178 <.delay_fail>
   15180:	02000537          	lui	a0,0x2000
   15184:	04500593          	li	a1,69
   15188:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   1518c:	05200613          	li	a2,82
   15190:	00c52023          	sw	a2,0(a0)
   15194:	00c52023          	sw	a2,0(a0)
   15198:	04f00693          	li	a3,79
   1519c:	00d52023          	sw	a3,0(a0)
   151a0:	00c52023          	sw	a2,0(a0)
   151a4:	00d00713          	li	a4,13
   151a8:	00e52023          	sw	a4,0(a0)
   151ac:	00a00793          	li	a5,10
   151b0:	00f52023          	sw	a5,0(a0)
   151b4:	f71fa06f          	j	10124 <xori_ret>

000151b8 <pass>:
   151b8:	0ff00513          	li	a0,255

000151bc <.delay_ok>:
   151bc:	fff50513          	addi	a0,a0,-1
   151c0:	fe051ee3          	bnez	a0,151bc <.delay_ok>
   151c4:	02000537          	lui	a0,0x2000
   151c8:	04f00593          	li	a1,79
   151cc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   151d0:	04b00613          	li	a2,75
   151d4:	00c52023          	sw	a2,0(a0)
   151d8:	00d00693          	li	a3,13
   151dc:	00d52023          	sw	a3,0(a0)
   151e0:	00a00713          	li	a4,10
   151e4:	00e52023          	sw	a4,0(a0)
   151e8:	f3dfa06f          	j	10124 <xori_ret>

000151ec <bgeu>:
   151ec:	0ff00513          	li	a0,255

000151f0 <.delay_pr>:
   151f0:	fff50513          	addi	a0,a0,-1
   151f4:	fe051ee3          	bnez	a0,151f0 <.delay_pr>
   151f8:	00015537          	lui	a0,0x15
   151fc:	21850513          	addi	a0,a0,536 # 15218 <.test_name>
   15200:	02000637          	lui	a2,0x2000

00015204 <.prname_next>:
   15204:	00050583          	lb	a1,0(a0)
   15208:	00058c63          	beqz	a1,15220 <.prname_done>
   1520c:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   15210:	00150513          	addi	a0,a0,1
   15214:	ff1ff06f          	j	15204 <.prname_next>

00015218 <.test_name>:
   15218:	6762                	flw	fa4,24(sp)
   1521a:	7565                	lui	a0,0xffff9
   1521c:	0000                	unimp
	...

00015220 <.prname_done>:
   15220:	02e00593          	li	a1,46
   15224:	00b62023          	sw	a1,0(a2)
   15228:	00b62023          	sw	a1,0(a2)

0001522c <test_2>:
   1522c:	00200e13          	li	t3,2
   15230:	00000093          	li	ra,0
   15234:	00000113          	li	sp,0
   15238:	0020f663          	bgeu	ra,sp,15244 <test_2+0x18>
   1523c:	35c01263          	bne	zero,t3,15580 <fail>
   15240:	01c01663          	bne	zero,t3,1524c <test_3>
   15244:	fe20fee3          	bgeu	ra,sp,15240 <test_2+0x14>
   15248:	33c01c63          	bne	zero,t3,15580 <fail>

0001524c <test_3>:
   1524c:	00300e13          	li	t3,3
   15250:	00100093          	li	ra,1
   15254:	00100113          	li	sp,1
   15258:	0020f663          	bgeu	ra,sp,15264 <test_3+0x18>
   1525c:	33c01263          	bne	zero,t3,15580 <fail>
   15260:	01c01663          	bne	zero,t3,1526c <test_4>
   15264:	fe20fee3          	bgeu	ra,sp,15260 <test_3+0x14>
   15268:	31c01c63          	bne	zero,t3,15580 <fail>

0001526c <test_4>:
   1526c:	00400e13          	li	t3,4
   15270:	fff00093          	li	ra,-1
   15274:	fff00113          	li	sp,-1
   15278:	0020f663          	bgeu	ra,sp,15284 <test_4+0x18>
   1527c:	31c01263          	bne	zero,t3,15580 <fail>
   15280:	01c01663          	bne	zero,t3,1528c <test_5>
   15284:	fe20fee3          	bgeu	ra,sp,15280 <test_4+0x14>
   15288:	2fc01c63          	bne	zero,t3,15580 <fail>

0001528c <test_5>:
   1528c:	00500e13          	li	t3,5
   15290:	00100093          	li	ra,1
   15294:	00000113          	li	sp,0
   15298:	0020f663          	bgeu	ra,sp,152a4 <test_5+0x18>
   1529c:	2fc01263          	bne	zero,t3,15580 <fail>
   152a0:	01c01663          	bne	zero,t3,152ac <test_6>
   152a4:	fe20fee3          	bgeu	ra,sp,152a0 <test_5+0x14>
   152a8:	2dc01c63          	bne	zero,t3,15580 <fail>

000152ac <test_6>:
   152ac:	00600e13          	li	t3,6
   152b0:	fff00093          	li	ra,-1
   152b4:	ffe00113          	li	sp,-2
   152b8:	0020f663          	bgeu	ra,sp,152c4 <test_6+0x18>
   152bc:	2dc01263          	bne	zero,t3,15580 <fail>
   152c0:	01c01663          	bne	zero,t3,152cc <test_7>
   152c4:	fe20fee3          	bgeu	ra,sp,152c0 <test_6+0x14>
   152c8:	2bc01c63          	bne	zero,t3,15580 <fail>

000152cc <test_7>:
   152cc:	00700e13          	li	t3,7
   152d0:	fff00093          	li	ra,-1
   152d4:	00000113          	li	sp,0
   152d8:	0020f663          	bgeu	ra,sp,152e4 <test_7+0x18>
   152dc:	2bc01263          	bne	zero,t3,15580 <fail>
   152e0:	01c01663          	bne	zero,t3,152ec <test_8>
   152e4:	fe20fee3          	bgeu	ra,sp,152e0 <test_7+0x14>
   152e8:	29c01c63          	bne	zero,t3,15580 <fail>

000152ec <test_8>:
   152ec:	00800e13          	li	t3,8
   152f0:	00000093          	li	ra,0
   152f4:	00100113          	li	sp,1
   152f8:	0020f463          	bgeu	ra,sp,15300 <test_8+0x14>
   152fc:	01c01463          	bne	zero,t3,15304 <test_8+0x18>
   15300:	29c01063          	bne	zero,t3,15580 <fail>
   15304:	fe20fee3          	bgeu	ra,sp,15300 <test_8+0x14>

00015308 <test_9>:
   15308:	00900e13          	li	t3,9
   1530c:	ffe00093          	li	ra,-2
   15310:	fff00113          	li	sp,-1
   15314:	0020f463          	bgeu	ra,sp,1531c <test_9+0x14>
   15318:	01c01463          	bne	zero,t3,15320 <test_9+0x18>
   1531c:	27c01263          	bne	zero,t3,15580 <fail>
   15320:	fe20fee3          	bgeu	ra,sp,1531c <test_9+0x14>

00015324 <test_10>:
   15324:	00a00e13          	li	t3,10
   15328:	00000093          	li	ra,0
   1532c:	fff00113          	li	sp,-1
   15330:	0020f463          	bgeu	ra,sp,15338 <test_10+0x14>
   15334:	01c01463          	bne	zero,t3,1533c <test_10+0x18>
   15338:	25c01463          	bne	zero,t3,15580 <fail>
   1533c:	fe20fee3          	bgeu	ra,sp,15338 <test_10+0x14>

00015340 <test_11>:
   15340:	00b00e13          	li	t3,11
   15344:	800000b7          	lui	ra,0x80000
   15348:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   1534c:	80000137          	lui	sp,0x80000
   15350:	0020f463          	bgeu	ra,sp,15358 <test_11+0x18>
   15354:	01c01463          	bne	zero,t3,1535c <test_11+0x1c>
   15358:	23c01463          	bne	zero,t3,15580 <fail>
   1535c:	fe20fee3          	bgeu	ra,sp,15358 <test_11+0x18>

00015360 <test_12>:
   15360:	00c00e13          	li	t3,12
   15364:	00000213          	li	tp,0
   15368:	f00000b7          	lui	ra,0xf0000
   1536c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   15370:	f0000137          	lui	sp,0xf0000
   15374:	2020f663          	bgeu	ra,sp,15580 <fail>
   15378:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1537c:	00200293          	li	t0,2
   15380:	fe5214e3          	bne	tp,t0,15368 <test_12+0x8>

00015384 <test_13>:
   15384:	00d00e13          	li	t3,13
   15388:	00000213          	li	tp,0
   1538c:	f00000b7          	lui	ra,0xf0000
   15390:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   15394:	f0000137          	lui	sp,0xf0000
   15398:	00000013          	nop
   1539c:	1e20f263          	bgeu	ra,sp,15580 <fail>
   153a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153a4:	00200293          	li	t0,2
   153a8:	fe5212e3          	bne	tp,t0,1538c <test_13+0x8>

000153ac <test_14>:
   153ac:	00e00e13          	li	t3,14
   153b0:	00000213          	li	tp,0
   153b4:	f00000b7          	lui	ra,0xf0000
   153b8:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   153bc:	f0000137          	lui	sp,0xf0000
   153c0:	00000013          	nop
   153c4:	00000013          	nop
   153c8:	1a20fc63          	bgeu	ra,sp,15580 <fail>
   153cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153d0:	00200293          	li	t0,2
   153d4:	fe5210e3          	bne	tp,t0,153b4 <test_14+0x8>

000153d8 <test_15>:
   153d8:	00f00e13          	li	t3,15
   153dc:	00000213          	li	tp,0
   153e0:	f00000b7          	lui	ra,0xf0000
   153e4:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   153e8:	00000013          	nop
   153ec:	f0000137          	lui	sp,0xf0000
   153f0:	1820f863          	bgeu	ra,sp,15580 <fail>
   153f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153f8:	00200293          	li	t0,2
   153fc:	fe5212e3          	bne	tp,t0,153e0 <test_15+0x8>

00015400 <test_16>:
   15400:	01000e13          	li	t3,16
   15404:	00000213          	li	tp,0
   15408:	f00000b7          	lui	ra,0xf0000
   1540c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   15410:	00000013          	nop
   15414:	f0000137          	lui	sp,0xf0000
   15418:	00000013          	nop
   1541c:	1620f263          	bgeu	ra,sp,15580 <fail>
   15420:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15424:	00200293          	li	t0,2
   15428:	fe5210e3          	bne	tp,t0,15408 <test_16+0x8>

0001542c <test_17>:
   1542c:	01100e13          	li	t3,17
   15430:	00000213          	li	tp,0
   15434:	f00000b7          	lui	ra,0xf0000
   15438:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   1543c:	00000013          	nop
   15440:	00000013          	nop
   15444:	f0000137          	lui	sp,0xf0000
   15448:	1220fc63          	bgeu	ra,sp,15580 <fail>
   1544c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15450:	00200293          	li	t0,2
   15454:	fe5210e3          	bne	tp,t0,15434 <test_17+0x8>

00015458 <test_18>:
   15458:	01200e13          	li	t3,18
   1545c:	00000213          	li	tp,0
   15460:	f00000b7          	lui	ra,0xf0000
   15464:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   15468:	f0000137          	lui	sp,0xf0000
   1546c:	1020fa63          	bgeu	ra,sp,15580 <fail>
   15470:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15474:	00200293          	li	t0,2
   15478:	fe5214e3          	bne	tp,t0,15460 <test_18+0x8>

0001547c <test_19>:
   1547c:	01300e13          	li	t3,19
   15480:	00000213          	li	tp,0
   15484:	f00000b7          	lui	ra,0xf0000
   15488:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   1548c:	f0000137          	lui	sp,0xf0000
   15490:	00000013          	nop
   15494:	0e20f663          	bgeu	ra,sp,15580 <fail>
   15498:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1549c:	00200293          	li	t0,2
   154a0:	fe5212e3          	bne	tp,t0,15484 <test_19+0x8>

000154a4 <test_20>:
   154a4:	01400e13          	li	t3,20
   154a8:	00000213          	li	tp,0
   154ac:	f00000b7          	lui	ra,0xf0000
   154b0:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   154b4:	f0000137          	lui	sp,0xf0000
   154b8:	00000013          	nop
   154bc:	00000013          	nop
   154c0:	0c20f063          	bgeu	ra,sp,15580 <fail>
   154c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   154c8:	00200293          	li	t0,2
   154cc:	fe5210e3          	bne	tp,t0,154ac <test_20+0x8>

000154d0 <test_21>:
   154d0:	01500e13          	li	t3,21
   154d4:	00000213          	li	tp,0
   154d8:	f00000b7          	lui	ra,0xf0000
   154dc:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   154e0:	00000013          	nop
   154e4:	f0000137          	lui	sp,0xf0000
   154e8:	0820fc63          	bgeu	ra,sp,15580 <fail>
   154ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   154f0:	00200293          	li	t0,2
   154f4:	fe5212e3          	bne	tp,t0,154d8 <test_21+0x8>

000154f8 <test_22>:
   154f8:	01600e13          	li	t3,22
   154fc:	00000213          	li	tp,0
   15500:	f00000b7          	lui	ra,0xf0000
   15504:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   15508:	00000013          	nop
   1550c:	f0000137          	lui	sp,0xf0000
   15510:	00000013          	nop
   15514:	0620f663          	bgeu	ra,sp,15580 <fail>
   15518:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1551c:	00200293          	li	t0,2
   15520:	fe5210e3          	bne	tp,t0,15500 <test_22+0x8>

00015524 <test_23>:
   15524:	01700e13          	li	t3,23
   15528:	00000213          	li	tp,0
   1552c:	f00000b7          	lui	ra,0xf0000
   15530:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0xefefff8f>
   15534:	00000013          	nop
   15538:	00000013          	nop
   1553c:	f0000137          	lui	sp,0xf0000
   15540:	0420f063          	bgeu	ra,sp,15580 <fail>
   15544:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15548:	00200293          	li	t0,2
   1554c:	fe5210e3          	bne	tp,t0,1552c <test_23+0x8>

00015550 <test_24>:
   15550:	00100093          	li	ra,1
   15554:	0000fa63          	bgeu	ra,zero,15568 <test_24+0x18>
   15558:	00108093          	addi	ra,ra,1
   1555c:	00108093          	addi	ra,ra,1
   15560:	00108093          	addi	ra,ra,1
   15564:	00108093          	addi	ra,ra,1
   15568:	00108093          	addi	ra,ra,1
   1556c:	00108093          	addi	ra,ra,1
   15570:	00300e93          	li	t4,3
   15574:	01800e13          	li	t3,24
   15578:	01d09463          	bne	ra,t4,15580 <fail>
   1557c:	05c01463          	bne	zero,t3,155c4 <pass>

00015580 <fail>:
   15580:	0ff00513          	li	a0,255

00015584 <.delay_fail>:
   15584:	fff50513          	addi	a0,a0,-1 # ffff8fff <_edata+0xffef8f8f>
   15588:	fe051ee3          	bnez	a0,15584 <.delay_fail>
   1558c:	02000537          	lui	a0,0x2000
   15590:	04500593          	li	a1,69
   15594:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   15598:	05200613          	li	a2,82
   1559c:	00c52023          	sw	a2,0(a0)
   155a0:	00c52023          	sw	a2,0(a0)
   155a4:	04f00693          	li	a3,79
   155a8:	00d52023          	sw	a3,0(a0)
   155ac:	00c52023          	sw	a2,0(a0)
   155b0:	00d00713          	li	a4,13
   155b4:	00e52023          	sw	a4,0(a0)
   155b8:	00a00793          	li	a5,10
   155bc:	00f52023          	sw	a5,0(a0)
   155c0:	b39fa06f          	j	100f8 <bgeu_ret>

000155c4 <pass>:
   155c4:	0ff00513          	li	a0,255

000155c8 <.delay_ok>:
   155c8:	fff50513          	addi	a0,a0,-1
   155cc:	fe051ee3          	bnez	a0,155c8 <.delay_ok>
   155d0:	02000537          	lui	a0,0x2000
   155d4:	04f00593          	li	a1,79
   155d8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   155dc:	04b00613          	li	a2,75
   155e0:	00c52023          	sw	a2,0(a0)
   155e4:	00d00693          	li	a3,13
   155e8:	00d52023          	sw	a3,0(a0)
   155ec:	00a00713          	li	a4,10
   155f0:	00e52023          	sw	a4,0(a0)
   155f4:	b05fa06f          	j	100f8 <bgeu_ret>

000155f8 <mulhu>:
   155f8:	0ff00513          	li	a0,255

000155fc <.delay_pr>:
   155fc:	fff50513          	addi	a0,a0,-1
   15600:	fe051ee3          	bnez	a0,155fc <.delay_pr>
   15604:	00015537          	lui	a0,0x15
   15608:	62450513          	addi	a0,a0,1572 # 15624 <.test_name>
   1560c:	02000637          	lui	a2,0x2000

00015610 <.prname_next>:
   15610:	00050583          	lb	a1,0(a0)
   15614:	00058c63          	beqz	a1,1562c <.prname_done>
   15618:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   1561c:	00150513          	addi	a0,a0,1
   15620:	ff1ff06f          	j	15610 <.prname_next>

00015624 <.test_name>:
   15624:	756d                	lui	a0,0xffffb
   15626:	686c                	flw	fa1,84(s0)
   15628:	0075                	c.nop	29
	...

0001562c <.prname_done>:
   1562c:	02e00593          	li	a1,46
   15630:	00b62023          	sw	a1,0(a2)
   15634:	00b62023          	sw	a1,0(a2)

00015638 <test_2>:
   15638:	00000093          	li	ra,0
   1563c:	00000113          	li	sp,0
   15640:	0220b1b3          	mulhu	gp,ra,sp
   15644:	00000e93          	li	t4,0
   15648:	00200e13          	li	t3,2
   1564c:	4bd19a63          	bne	gp,t4,15b00 <fail>

00015650 <test_3>:
   15650:	00100093          	li	ra,1
   15654:	00100113          	li	sp,1
   15658:	0220b1b3          	mulhu	gp,ra,sp
   1565c:	00000e93          	li	t4,0
   15660:	00300e13          	li	t3,3
   15664:	49d19e63          	bne	gp,t4,15b00 <fail>

00015668 <test_4>:
   15668:	00300093          	li	ra,3
   1566c:	00700113          	li	sp,7
   15670:	0220b1b3          	mulhu	gp,ra,sp
   15674:	00000e93          	li	t4,0
   15678:	00400e13          	li	t3,4
   1567c:	49d19263          	bne	gp,t4,15b00 <fail>

00015680 <test_5>:
   15680:	00000093          	li	ra,0
   15684:	ffff8137          	lui	sp,0xffff8
   15688:	0220b1b3          	mulhu	gp,ra,sp
   1568c:	00000e93          	li	t4,0
   15690:	00500e13          	li	t3,5
   15694:	47d19663          	bne	gp,t4,15b00 <fail>

00015698 <test_6>:
   15698:	800000b7          	lui	ra,0x80000
   1569c:	00000113          	li	sp,0
   156a0:	0220b1b3          	mulhu	gp,ra,sp
   156a4:	00000e93          	li	t4,0
   156a8:	00600e13          	li	t3,6
   156ac:	45d19a63          	bne	gp,t4,15b00 <fail>

000156b0 <test_7>:
   156b0:	800000b7          	lui	ra,0x80000
   156b4:	ffff8137          	lui	sp,0xffff8
   156b8:	0220b1b3          	mulhu	gp,ra,sp
   156bc:	7fffceb7          	lui	t4,0x7fffc
   156c0:	00700e13          	li	t3,7
   156c4:	43d19e63          	bne	gp,t4,15b00 <fail>

000156c8 <test_30>:
   156c8:	aaaab0b7          	lui	ra,0xaaaab
   156cc:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   156d0:	00030137          	lui	sp,0x30
   156d4:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x16019>
   156d8:	0220b1b3          	mulhu	gp,ra,sp
   156dc:	00020eb7          	lui	t4,0x20
   156e0:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x609a>
   156e4:	01e00e13          	li	t3,30
   156e8:	41d19c63          	bne	gp,t4,15b00 <fail>

000156ec <test_31>:
   156ec:	000300b7          	lui	ra,0x30
   156f0:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x16019>
   156f4:	aaaab137          	lui	sp,0xaaaab
   156f8:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   156fc:	0220b1b3          	mulhu	gp,ra,sp
   15700:	00020eb7          	lui	t4,0x20
   15704:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x609a>
   15708:	01f00e13          	li	t3,31
   1570c:	3fd19a63          	bne	gp,t4,15b00 <fail>

00015710 <test_32>:
   15710:	ff0000b7          	lui	ra,0xff000
   15714:	ff000137          	lui	sp,0xff000
   15718:	0220b1b3          	mulhu	gp,ra,sp
   1571c:	fe010eb7          	lui	t4,0xfe010
   15720:	02000e13          	li	t3,32
   15724:	3dd19e63          	bne	gp,t4,15b00 <fail>

00015728 <test_33>:
   15728:	fff00093          	li	ra,-1
   1572c:	fff00113          	li	sp,-1
   15730:	0220b1b3          	mulhu	gp,ra,sp
   15734:	ffe00e93          	li	t4,-2
   15738:	02100e13          	li	t3,33
   1573c:	3dd19263          	bne	gp,t4,15b00 <fail>

00015740 <test_34>:
   15740:	fff00093          	li	ra,-1
   15744:	00100113          	li	sp,1
   15748:	0220b1b3          	mulhu	gp,ra,sp
   1574c:	00000e93          	li	t4,0
   15750:	02200e13          	li	t3,34
   15754:	3bd19663          	bne	gp,t4,15b00 <fail>

00015758 <test_35>:
   15758:	00100093          	li	ra,1
   1575c:	fff00113          	li	sp,-1
   15760:	0220b1b3          	mulhu	gp,ra,sp
   15764:	00000e93          	li	t4,0
   15768:	02300e13          	li	t3,35
   1576c:	39d19a63          	bne	gp,t4,15b00 <fail>

00015770 <test_8>:
   15770:	00d000b7          	lui	ra,0xd00
   15774:	00b00137          	lui	sp,0xb00
   15778:	0220b0b3          	mulhu	ra,ra,sp
   1577c:	00009eb7          	lui	t4,0x9
   15780:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15784:	00800e13          	li	t3,8
   15788:	37d09c63          	bne	ra,t4,15b00 <fail>

0001578c <test_9>:
   1578c:	00e000b7          	lui	ra,0xe00
   15790:	00b00137          	lui	sp,0xb00
   15794:	0220b133          	mulhu	sp,ra,sp
   15798:	0000aeb7          	lui	t4,0xa
   1579c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   157a0:	00900e13          	li	t3,9
   157a4:	35d11e63          	bne	sp,t4,15b00 <fail>

000157a8 <test_10>:
   157a8:	00d000b7          	lui	ra,0xd00
   157ac:	0210b0b3          	mulhu	ra,ra,ra
   157b0:	0000beb7          	lui	t4,0xb
   157b4:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   157b8:	00a00e13          	li	t3,10
   157bc:	35d09263          	bne	ra,t4,15b00 <fail>

000157c0 <test_11>:
   157c0:	00000213          	li	tp,0
   157c4:	00d000b7          	lui	ra,0xd00
   157c8:	00b00137          	lui	sp,0xb00
   157cc:	0220b1b3          	mulhu	gp,ra,sp
   157d0:	00018313          	mv	t1,gp
   157d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   157d8:	00200293          	li	t0,2
   157dc:	fe5214e3          	bne	tp,t0,157c4 <test_11+0x4>
   157e0:	00009eb7          	lui	t4,0x9
   157e4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   157e8:	00b00e13          	li	t3,11
   157ec:	31d31a63          	bne	t1,t4,15b00 <fail>

000157f0 <test_12>:
   157f0:	00000213          	li	tp,0
   157f4:	00e000b7          	lui	ra,0xe00
   157f8:	00b00137          	lui	sp,0xb00
   157fc:	0220b1b3          	mulhu	gp,ra,sp
   15800:	00000013          	nop
   15804:	00018313          	mv	t1,gp
   15808:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1580c:	00200293          	li	t0,2
   15810:	fe5212e3          	bne	tp,t0,157f4 <test_12+0x4>
   15814:	0000aeb7          	lui	t4,0xa
   15818:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1581c:	00c00e13          	li	t3,12
   15820:	2fd31063          	bne	t1,t4,15b00 <fail>

00015824 <test_13>:
   15824:	00000213          	li	tp,0
   15828:	00f000b7          	lui	ra,0xf00
   1582c:	00b00137          	lui	sp,0xb00
   15830:	0220b1b3          	mulhu	gp,ra,sp
   15834:	00000013          	nop
   15838:	00000013          	nop
   1583c:	00018313          	mv	t1,gp
   15840:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15844:	00200293          	li	t0,2
   15848:	fe5210e3          	bne	tp,t0,15828 <test_13+0x4>
   1584c:	0000aeb7          	lui	t4,0xa
   15850:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15854:	00d00e13          	li	t3,13
   15858:	2bd31463          	bne	t1,t4,15b00 <fail>

0001585c <test_14>:
   1585c:	00000213          	li	tp,0
   15860:	00d000b7          	lui	ra,0xd00
   15864:	00b00137          	lui	sp,0xb00
   15868:	0220b1b3          	mulhu	gp,ra,sp
   1586c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15870:	00200293          	li	t0,2
   15874:	fe5216e3          	bne	tp,t0,15860 <test_14+0x4>
   15878:	00009eb7          	lui	t4,0x9
   1587c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15880:	00e00e13          	li	t3,14
   15884:	27d19e63          	bne	gp,t4,15b00 <fail>

00015888 <test_15>:
   15888:	00000213          	li	tp,0
   1588c:	00e000b7          	lui	ra,0xe00
   15890:	00b00137          	lui	sp,0xb00
   15894:	00000013          	nop
   15898:	0220b1b3          	mulhu	gp,ra,sp
   1589c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   158a0:	00200293          	li	t0,2
   158a4:	fe5214e3          	bne	tp,t0,1588c <test_15+0x4>
   158a8:	0000aeb7          	lui	t4,0xa
   158ac:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   158b0:	00f00e13          	li	t3,15
   158b4:	25d19663          	bne	gp,t4,15b00 <fail>

000158b8 <test_16>:
   158b8:	00000213          	li	tp,0
   158bc:	00f000b7          	lui	ra,0xf00
   158c0:	00b00137          	lui	sp,0xb00
   158c4:	00000013          	nop
   158c8:	00000013          	nop
   158cc:	0220b1b3          	mulhu	gp,ra,sp
   158d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   158d4:	00200293          	li	t0,2
   158d8:	fe5212e3          	bne	tp,t0,158bc <test_16+0x4>
   158dc:	0000aeb7          	lui	t4,0xa
   158e0:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   158e4:	01000e13          	li	t3,16
   158e8:	21d19c63          	bne	gp,t4,15b00 <fail>

000158ec <test_17>:
   158ec:	00000213          	li	tp,0
   158f0:	00d000b7          	lui	ra,0xd00
   158f4:	00000013          	nop
   158f8:	00b00137          	lui	sp,0xb00
   158fc:	0220b1b3          	mulhu	gp,ra,sp
   15900:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15904:	00200293          	li	t0,2
   15908:	fe5214e3          	bne	tp,t0,158f0 <test_17+0x4>
   1590c:	00009eb7          	lui	t4,0x9
   15910:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15914:	01100e13          	li	t3,17
   15918:	1fd19463          	bne	gp,t4,15b00 <fail>

0001591c <test_18>:
   1591c:	00000213          	li	tp,0
   15920:	00e000b7          	lui	ra,0xe00
   15924:	00000013          	nop
   15928:	00b00137          	lui	sp,0xb00
   1592c:	00000013          	nop
   15930:	0220b1b3          	mulhu	gp,ra,sp
   15934:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15938:	00200293          	li	t0,2
   1593c:	fe5212e3          	bne	tp,t0,15920 <test_18+0x4>
   15940:	0000aeb7          	lui	t4,0xa
   15944:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15948:	01200e13          	li	t3,18
   1594c:	1bd19a63          	bne	gp,t4,15b00 <fail>

00015950 <test_19>:
   15950:	00000213          	li	tp,0
   15954:	00f000b7          	lui	ra,0xf00
   15958:	00000013          	nop
   1595c:	00000013          	nop
   15960:	00b00137          	lui	sp,0xb00
   15964:	0220b1b3          	mulhu	gp,ra,sp
   15968:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1596c:	00200293          	li	t0,2
   15970:	fe5212e3          	bne	tp,t0,15954 <test_19+0x4>
   15974:	0000aeb7          	lui	t4,0xa
   15978:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1597c:	01300e13          	li	t3,19
   15980:	19d19063          	bne	gp,t4,15b00 <fail>

00015984 <test_20>:
   15984:	00000213          	li	tp,0
   15988:	00b00137          	lui	sp,0xb00
   1598c:	00d000b7          	lui	ra,0xd00
   15990:	0220b1b3          	mulhu	gp,ra,sp
   15994:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15998:	00200293          	li	t0,2
   1599c:	fe5216e3          	bne	tp,t0,15988 <test_20+0x4>
   159a0:	00009eb7          	lui	t4,0x9
   159a4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   159a8:	01400e13          	li	t3,20
   159ac:	15d19a63          	bne	gp,t4,15b00 <fail>

000159b0 <test_21>:
   159b0:	00000213          	li	tp,0
   159b4:	00b00137          	lui	sp,0xb00
   159b8:	00e000b7          	lui	ra,0xe00
   159bc:	00000013          	nop
   159c0:	0220b1b3          	mulhu	gp,ra,sp
   159c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   159c8:	00200293          	li	t0,2
   159cc:	fe5214e3          	bne	tp,t0,159b4 <test_21+0x4>
   159d0:	0000aeb7          	lui	t4,0xa
   159d4:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   159d8:	01500e13          	li	t3,21
   159dc:	13d19263          	bne	gp,t4,15b00 <fail>

000159e0 <test_22>:
   159e0:	00000213          	li	tp,0
   159e4:	00b00137          	lui	sp,0xb00
   159e8:	00f000b7          	lui	ra,0xf00
   159ec:	00000013          	nop
   159f0:	00000013          	nop
   159f4:	0220b1b3          	mulhu	gp,ra,sp
   159f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   159fc:	00200293          	li	t0,2
   15a00:	fe5212e3          	bne	tp,t0,159e4 <test_22+0x4>
   15a04:	0000aeb7          	lui	t4,0xa
   15a08:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15a0c:	01600e13          	li	t3,22
   15a10:	0fd19863          	bne	gp,t4,15b00 <fail>

00015a14 <test_23>:
   15a14:	00000213          	li	tp,0
   15a18:	00b00137          	lui	sp,0xb00
   15a1c:	00000013          	nop
   15a20:	00d000b7          	lui	ra,0xd00
   15a24:	0220b1b3          	mulhu	gp,ra,sp
   15a28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15a2c:	00200293          	li	t0,2
   15a30:	fe5214e3          	bne	tp,t0,15a18 <test_23+0x4>
   15a34:	00009eb7          	lui	t4,0x9
   15a38:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15a3c:	01700e13          	li	t3,23
   15a40:	0dd19063          	bne	gp,t4,15b00 <fail>

00015a44 <test_24>:
   15a44:	00000213          	li	tp,0
   15a48:	00b00137          	lui	sp,0xb00
   15a4c:	00000013          	nop
   15a50:	00e000b7          	lui	ra,0xe00
   15a54:	00000013          	nop
   15a58:	0220b1b3          	mulhu	gp,ra,sp
   15a5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15a60:	00200293          	li	t0,2
   15a64:	fe5212e3          	bne	tp,t0,15a48 <test_24+0x4>
   15a68:	0000aeb7          	lui	t4,0xa
   15a6c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15a70:	01800e13          	li	t3,24
   15a74:	09d19663          	bne	gp,t4,15b00 <fail>

00015a78 <test_25>:
   15a78:	00000213          	li	tp,0
   15a7c:	00b00137          	lui	sp,0xb00
   15a80:	00000013          	nop
   15a84:	00000013          	nop
   15a88:	00f000b7          	lui	ra,0xf00
   15a8c:	0220b1b3          	mulhu	gp,ra,sp
   15a90:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15a94:	00200293          	li	t0,2
   15a98:	fe5212e3          	bne	tp,t0,15a7c <test_25+0x4>
   15a9c:	0000aeb7          	lui	t4,0xa
   15aa0:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15aa4:	01900e13          	li	t3,25
   15aa8:	05d19c63          	bne	gp,t4,15b00 <fail>

00015aac <test_26>:
   15aac:	7c0000b7          	lui	ra,0x7c000
   15ab0:	02103133          	mulhu	sp,zero,ra
   15ab4:	00000e93          	li	t4,0
   15ab8:	01a00e13          	li	t3,26
   15abc:	05d11263          	bne	sp,t4,15b00 <fail>

00015ac0 <test_27>:
   15ac0:	800000b7          	lui	ra,0x80000
   15ac4:	0200b133          	mulhu	sp,ra,zero
   15ac8:	00000e93          	li	t4,0
   15acc:	01b00e13          	li	t3,27
   15ad0:	03d11863          	bne	sp,t4,15b00 <fail>

00015ad4 <test_28>:
   15ad4:	020030b3          	mulhu	ra,zero,zero
   15ad8:	00000e93          	li	t4,0
   15adc:	01c00e13          	li	t3,28
   15ae0:	03d09063          	bne	ra,t4,15b00 <fail>

00015ae4 <test_29>:
   15ae4:	021000b7          	lui	ra,0x2100
   15ae8:	02200137          	lui	sp,0x2200
   15aec:	0220b033          	mulhu	zero,ra,sp
   15af0:	00000e93          	li	t4,0
   15af4:	01d00e13          	li	t3,29
   15af8:	01d01463          	bne	zero,t4,15b00 <fail>
   15afc:	05c01463          	bne	zero,t3,15b44 <pass>

00015b00 <fail>:
   15b00:	0ff00513          	li	a0,255

00015b04 <.delay_fail>:
   15b04:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0xffefaf8f>
   15b08:	fe051ee3          	bnez	a0,15b04 <.delay_fail>
   15b0c:	02000537          	lui	a0,0x2000
   15b10:	04500593          	li	a1,69
   15b14:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   15b18:	05200613          	li	a2,82
   15b1c:	00c52023          	sw	a2,0(a0)
   15b20:	00c52023          	sw	a2,0(a0)
   15b24:	04f00693          	li	a3,79
   15b28:	00d52023          	sw	a3,0(a0)
   15b2c:	00c52023          	sw	a2,0(a0)
   15b30:	00d00713          	li	a4,13
   15b34:	00e52023          	sw	a4,0(a0)
   15b38:	00a00793          	li	a5,10
   15b3c:	00f52023          	sw	a5,0(a0)
   15b40:	e28fa06f          	j	10168 <mulhu_ret>

00015b44 <pass>:
   15b44:	0ff00513          	li	a0,255

00015b48 <.delay_ok>:
   15b48:	fff50513          	addi	a0,a0,-1
   15b4c:	fe051ee3          	bnez	a0,15b48 <.delay_ok>
   15b50:	02000537          	lui	a0,0x2000
   15b54:	04f00593          	li	a1,79
   15b58:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   15b5c:	04b00613          	li	a2,75
   15b60:	00c52023          	sw	a2,0(a0)
   15b64:	00d00693          	li	a3,13
   15b68:	00d52023          	sw	a3,0(a0)
   15b6c:	00a00713          	li	a4,10
   15b70:	00e52023          	sw	a4,0(a0)
   15b74:	df4fa06f          	j	10168 <mulhu_ret>

00015b78 <srl>:
   15b78:	0ff00513          	li	a0,255

00015b7c <.delay_pr>:
   15b7c:	fff50513          	addi	a0,a0,-1
   15b80:	fe051ee3          	bnez	a0,15b7c <.delay_pr>
   15b84:	00016537          	lui	a0,0x16
   15b88:	ba450513          	addi	a0,a0,-1116 # 15ba4 <.test_name>
   15b8c:	02000637          	lui	a2,0x2000

00015b90 <.prname_next>:
   15b90:	00050583          	lb	a1,0(a0)
   15b94:	00058a63          	beqz	a1,15ba8 <.prname_done>
   15b98:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   15b9c:	00150513          	addi	a0,a0,1
   15ba0:	ff1ff06f          	j	15b90 <.prname_next>

00015ba4 <.test_name>:
   15ba4:	006c7273          	csrrci	tp,0x6,24

00015ba8 <.prname_done>:
   15ba8:	02e00593          	li	a1,46
   15bac:	00b62023          	sw	a1,0(a2)
   15bb0:	00b62023          	sw	a1,0(a2)

00015bb4 <test_2>:
   15bb4:	ffff80b7          	lui	ra,0xffff8
   15bb8:	00000113          	li	sp,0
   15bbc:	0020d1b3          	srl	gp,ra,sp
   15bc0:	ffff8eb7          	lui	t4,0xffff8
   15bc4:	00200e13          	li	t3,2
   15bc8:	5bd19463          	bne	gp,t4,16170 <fail>

00015bcc <test_3>:
   15bcc:	ffff80b7          	lui	ra,0xffff8
   15bd0:	00100113          	li	sp,1
   15bd4:	0020d1b3          	srl	gp,ra,sp
   15bd8:	7fffceb7          	lui	t4,0x7fffc
   15bdc:	00300e13          	li	t3,3
   15be0:	59d19863          	bne	gp,t4,16170 <fail>

00015be4 <test_4>:
   15be4:	ffff80b7          	lui	ra,0xffff8
   15be8:	00700113          	li	sp,7
   15bec:	0020d1b3          	srl	gp,ra,sp
   15bf0:	02000eb7          	lui	t4,0x2000
   15bf4:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_edata+0x1effe90>
   15bf8:	00400e13          	li	t3,4
   15bfc:	57d19a63          	bne	gp,t4,16170 <fail>

00015c00 <test_5>:
   15c00:	ffff80b7          	lui	ra,0xffff8
   15c04:	00e00113          	li	sp,14
   15c08:	0020d1b3          	srl	gp,ra,sp
   15c0c:	00040eb7          	lui	t4,0x40
   15c10:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x2619a>
   15c14:	00500e13          	li	t3,5
   15c18:	55d19c63          	bne	gp,t4,16170 <fail>

00015c1c <test_6>:
   15c1c:	ffff80b7          	lui	ra,0xffff8
   15c20:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0xffef7f91>
   15c24:	00f00113          	li	sp,15
   15c28:	0020d1b3          	srl	gp,ra,sp
   15c2c:	00020eb7          	lui	t4,0x20
   15c30:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   15c34:	00600e13          	li	t3,6
   15c38:	53d19c63          	bne	gp,t4,16170 <fail>

00015c3c <test_7>:
   15c3c:	fff00093          	li	ra,-1
   15c40:	00000113          	li	sp,0
   15c44:	0020d1b3          	srl	gp,ra,sp
   15c48:	fff00e93          	li	t4,-1
   15c4c:	00700e13          	li	t3,7
   15c50:	53d19063          	bne	gp,t4,16170 <fail>

00015c54 <test_8>:
   15c54:	fff00093          	li	ra,-1
   15c58:	00100113          	li	sp,1
   15c5c:	0020d1b3          	srl	gp,ra,sp
   15c60:	80000eb7          	lui	t4,0x80000
   15c64:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0x7fefff8f>
   15c68:	00800e13          	li	t3,8
   15c6c:	51d19263          	bne	gp,t4,16170 <fail>

00015c70 <test_9>:
   15c70:	fff00093          	li	ra,-1
   15c74:	00700113          	li	sp,7
   15c78:	0020d1b3          	srl	gp,ra,sp
   15c7c:	02000eb7          	lui	t4,0x2000
   15c80:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_edata+0x1efff8f>
   15c84:	00900e13          	li	t3,9
   15c88:	4fd19463          	bne	gp,t4,16170 <fail>

00015c8c <test_10>:
   15c8c:	fff00093          	li	ra,-1
   15c90:	00e00113          	li	sp,14
   15c94:	0020d1b3          	srl	gp,ra,sp
   15c98:	00040eb7          	lui	t4,0x40
   15c9c:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x2619b>
   15ca0:	00a00e13          	li	t3,10
   15ca4:	4dd19663          	bne	gp,t4,16170 <fail>

00015ca8 <test_11>:
   15ca8:	fff00093          	li	ra,-1
   15cac:	01f00113          	li	sp,31
   15cb0:	0020d1b3          	srl	gp,ra,sp
   15cb4:	00100e93          	li	t4,1
   15cb8:	00b00e13          	li	t3,11
   15cbc:	4bd19a63          	bne	gp,t4,16170 <fail>

00015cc0 <test_12>:
   15cc0:	212120b7          	lui	ra,0x21212
   15cc4:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15cc8:	00000113          	li	sp,0
   15ccc:	0020d1b3          	srl	gp,ra,sp
   15cd0:	21212eb7          	lui	t4,0x21212
   15cd4:	121e8e93          	addi	t4,t4,289 # 21212121 <_edata+0x211120b1>
   15cd8:	00c00e13          	li	t3,12
   15cdc:	49d19a63          	bne	gp,t4,16170 <fail>

00015ce0 <test_13>:
   15ce0:	212120b7          	lui	ra,0x21212
   15ce4:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15ce8:	00100113          	li	sp,1
   15cec:	0020d1b3          	srl	gp,ra,sp
   15cf0:	10909eb7          	lui	t4,0x10909
   15cf4:	090e8e93          	addi	t4,t4,144 # 10909090 <_edata+0x10809020>
   15cf8:	00d00e13          	li	t3,13
   15cfc:	47d19a63          	bne	gp,t4,16170 <fail>

00015d00 <test_14>:
   15d00:	212120b7          	lui	ra,0x21212
   15d04:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15d08:	00700113          	li	sp,7
   15d0c:	0020d1b3          	srl	gp,ra,sp
   15d10:	00424eb7          	lui	t4,0x424
   15d14:	242e8e93          	addi	t4,t4,578 # 424242 <_edata+0x3241d2>
   15d18:	00e00e13          	li	t3,14
   15d1c:	45d19a63          	bne	gp,t4,16170 <fail>

00015d20 <test_15>:
   15d20:	212120b7          	lui	ra,0x21212
   15d24:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15d28:	00e00113          	li	sp,14
   15d2c:	0020d1b3          	srl	gp,ra,sp
   15d30:	00008eb7          	lui	t4,0x8
   15d34:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   15d38:	00f00e13          	li	t3,15
   15d3c:	43d19a63          	bne	gp,t4,16170 <fail>

00015d40 <test_16>:
   15d40:	212120b7          	lui	ra,0x21212
   15d44:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15d48:	01f00113          	li	sp,31
   15d4c:	0020d1b3          	srl	gp,ra,sp
   15d50:	00000e93          	li	t4,0
   15d54:	01000e13          	li	t3,16
   15d58:	41d19c63          	bne	gp,t4,16170 <fail>

00015d5c <test_17>:
   15d5c:	212120b7          	lui	ra,0x21212
   15d60:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15d64:	fe000113          	li	sp,-32
   15d68:	0020d1b3          	srl	gp,ra,sp
   15d6c:	21212eb7          	lui	t4,0x21212
   15d70:	121e8e93          	addi	t4,t4,289 # 21212121 <_edata+0x211120b1>
   15d74:	01100e13          	li	t3,17
   15d78:	3fd19c63          	bne	gp,t4,16170 <fail>

00015d7c <test_18>:
   15d7c:	212120b7          	lui	ra,0x21212
   15d80:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15d84:	fe100113          	li	sp,-31
   15d88:	0020d1b3          	srl	gp,ra,sp
   15d8c:	10909eb7          	lui	t4,0x10909
   15d90:	090e8e93          	addi	t4,t4,144 # 10909090 <_edata+0x10809020>
   15d94:	01200e13          	li	t3,18
   15d98:	3dd19c63          	bne	gp,t4,16170 <fail>

00015d9c <test_19>:
   15d9c:	212120b7          	lui	ra,0x21212
   15da0:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15da4:	fe700113          	li	sp,-25
   15da8:	0020d1b3          	srl	gp,ra,sp
   15dac:	00424eb7          	lui	t4,0x424
   15db0:	242e8e93          	addi	t4,t4,578 # 424242 <_edata+0x3241d2>
   15db4:	01300e13          	li	t3,19
   15db8:	3bd19c63          	bne	gp,t4,16170 <fail>

00015dbc <test_20>:
   15dbc:	212120b7          	lui	ra,0x21212
   15dc0:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15dc4:	fee00113          	li	sp,-18
   15dc8:	0020d1b3          	srl	gp,ra,sp
   15dcc:	00008eb7          	lui	t4,0x8
   15dd0:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   15dd4:	01400e13          	li	t3,20
   15dd8:	39d19c63          	bne	gp,t4,16170 <fail>

00015ddc <test_21>:
   15ddc:	212120b7          	lui	ra,0x21212
   15de0:	12108093          	addi	ra,ra,289 # 21212121 <_edata+0x211120b1>
   15de4:	fff00113          	li	sp,-1
   15de8:	0020d1b3          	srl	gp,ra,sp
   15dec:	00000e93          	li	t4,0
   15df0:	01500e13          	li	t3,21
   15df4:	37d19e63          	bne	gp,t4,16170 <fail>

00015df8 <test_22>:
   15df8:	ffff80b7          	lui	ra,0xffff8
   15dfc:	00100113          	li	sp,1
   15e00:	0020d0b3          	srl	ra,ra,sp
   15e04:	7fffceb7          	lui	t4,0x7fffc
   15e08:	01600e13          	li	t3,22
   15e0c:	37d09263          	bne	ra,t4,16170 <fail>

00015e10 <test_23>:
   15e10:	ffff80b7          	lui	ra,0xffff8
   15e14:	00e00113          	li	sp,14
   15e18:	0020d133          	srl	sp,ra,sp
   15e1c:	00040eb7          	lui	t4,0x40
   15e20:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x2619a>
   15e24:	01700e13          	li	t3,23
   15e28:	35d11463          	bne	sp,t4,16170 <fail>

00015e2c <test_24>:
   15e2c:	00700093          	li	ra,7
   15e30:	0010d0b3          	srl	ra,ra,ra
   15e34:	00000e93          	li	t4,0
   15e38:	01800e13          	li	t3,24
   15e3c:	33d09a63          	bne	ra,t4,16170 <fail>

00015e40 <test_25>:
   15e40:	00000213          	li	tp,0
   15e44:	ffff80b7          	lui	ra,0xffff8
   15e48:	00100113          	li	sp,1
   15e4c:	0020d1b3          	srl	gp,ra,sp
   15e50:	00018313          	mv	t1,gp
   15e54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e58:	00200293          	li	t0,2
   15e5c:	fe5214e3          	bne	tp,t0,15e44 <test_25+0x4>
   15e60:	7fffceb7          	lui	t4,0x7fffc
   15e64:	01900e13          	li	t3,25
   15e68:	31d31463          	bne	t1,t4,16170 <fail>

00015e6c <test_26>:
   15e6c:	00000213          	li	tp,0
   15e70:	ffff80b7          	lui	ra,0xffff8
   15e74:	00e00113          	li	sp,14
   15e78:	0020d1b3          	srl	gp,ra,sp
   15e7c:	00000013          	nop
   15e80:	00018313          	mv	t1,gp
   15e84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e88:	00200293          	li	t0,2
   15e8c:	fe5212e3          	bne	tp,t0,15e70 <test_26+0x4>
   15e90:	00040eb7          	lui	t4,0x40
   15e94:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x2619a>
   15e98:	01a00e13          	li	t3,26
   15e9c:	2dd31a63          	bne	t1,t4,16170 <fail>

00015ea0 <test_27>:
   15ea0:	00000213          	li	tp,0
   15ea4:	ffff80b7          	lui	ra,0xffff8
   15ea8:	00f00113          	li	sp,15
   15eac:	0020d1b3          	srl	gp,ra,sp
   15eb0:	00000013          	nop
   15eb4:	00000013          	nop
   15eb8:	00018313          	mv	t1,gp
   15ebc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ec0:	00200293          	li	t0,2
   15ec4:	fe5210e3          	bne	tp,t0,15ea4 <test_27+0x4>
   15ec8:	00020eb7          	lui	t4,0x20
   15ecc:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   15ed0:	01b00e13          	li	t3,27
   15ed4:	29d31e63          	bne	t1,t4,16170 <fail>

00015ed8 <test_28>:
   15ed8:	00000213          	li	tp,0
   15edc:	ffff80b7          	lui	ra,0xffff8
   15ee0:	00100113          	li	sp,1
   15ee4:	0020d1b3          	srl	gp,ra,sp
   15ee8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15eec:	00200293          	li	t0,2
   15ef0:	fe5216e3          	bne	tp,t0,15edc <test_28+0x4>
   15ef4:	7fffceb7          	lui	t4,0x7fffc
   15ef8:	01c00e13          	li	t3,28
   15efc:	27d19a63          	bne	gp,t4,16170 <fail>

00015f00 <test_29>:
   15f00:	00000213          	li	tp,0
   15f04:	ffff80b7          	lui	ra,0xffff8
   15f08:	00700113          	li	sp,7
   15f0c:	00000013          	nop
   15f10:	0020d1b3          	srl	gp,ra,sp
   15f14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15f18:	00200293          	li	t0,2
   15f1c:	fe5214e3          	bne	tp,t0,15f04 <test_29+0x4>
   15f20:	02000eb7          	lui	t4,0x2000
   15f24:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_edata+0x1effe90>
   15f28:	01d00e13          	li	t3,29
   15f2c:	25d19263          	bne	gp,t4,16170 <fail>

00015f30 <test_30>:
   15f30:	00000213          	li	tp,0
   15f34:	ffff80b7          	lui	ra,0xffff8
   15f38:	00f00113          	li	sp,15
   15f3c:	00000013          	nop
   15f40:	00000013          	nop
   15f44:	0020d1b3          	srl	gp,ra,sp
   15f48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15f4c:	00200293          	li	t0,2
   15f50:	fe5212e3          	bne	tp,t0,15f34 <test_30+0x4>
   15f54:	00020eb7          	lui	t4,0x20
   15f58:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   15f5c:	01e00e13          	li	t3,30
   15f60:	21d19863          	bne	gp,t4,16170 <fail>

00015f64 <test_31>:
   15f64:	00000213          	li	tp,0
   15f68:	ffff80b7          	lui	ra,0xffff8
   15f6c:	00000013          	nop
   15f70:	00100113          	li	sp,1
   15f74:	0020d1b3          	srl	gp,ra,sp
   15f78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15f7c:	00200293          	li	t0,2
   15f80:	fe5214e3          	bne	tp,t0,15f68 <test_31+0x4>
   15f84:	7fffceb7          	lui	t4,0x7fffc
   15f88:	01f00e13          	li	t3,31
   15f8c:	1fd19263          	bne	gp,t4,16170 <fail>

00015f90 <test_32>:
   15f90:	00000213          	li	tp,0
   15f94:	ffff80b7          	lui	ra,0xffff8
   15f98:	00000013          	nop
   15f9c:	00700113          	li	sp,7
   15fa0:	00000013          	nop
   15fa4:	0020d1b3          	srl	gp,ra,sp
   15fa8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15fac:	00200293          	li	t0,2
   15fb0:	fe5212e3          	bne	tp,t0,15f94 <test_32+0x4>
   15fb4:	02000eb7          	lui	t4,0x2000
   15fb8:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_edata+0x1effe90>
   15fbc:	02000e13          	li	t3,32
   15fc0:	1bd19863          	bne	gp,t4,16170 <fail>

00015fc4 <test_33>:
   15fc4:	00000213          	li	tp,0
   15fc8:	ffff80b7          	lui	ra,0xffff8
   15fcc:	00000013          	nop
   15fd0:	00000013          	nop
   15fd4:	00f00113          	li	sp,15
   15fd8:	0020d1b3          	srl	gp,ra,sp
   15fdc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15fe0:	00200293          	li	t0,2
   15fe4:	fe5212e3          	bne	tp,t0,15fc8 <test_33+0x4>
   15fe8:	00020eb7          	lui	t4,0x20
   15fec:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   15ff0:	02100e13          	li	t3,33
   15ff4:	17d19e63          	bne	gp,t4,16170 <fail>

00015ff8 <test_34>:
   15ff8:	00000213          	li	tp,0
   15ffc:	00100113          	li	sp,1
   16000:	ffff80b7          	lui	ra,0xffff8
   16004:	0020d1b3          	srl	gp,ra,sp
   16008:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1600c:	00200293          	li	t0,2
   16010:	fe5216e3          	bne	tp,t0,15ffc <test_34+0x4>
   16014:	7fffceb7          	lui	t4,0x7fffc
   16018:	02200e13          	li	t3,34
   1601c:	15d19a63          	bne	gp,t4,16170 <fail>

00016020 <test_35>:
   16020:	00000213          	li	tp,0
   16024:	00700113          	li	sp,7
   16028:	ffff80b7          	lui	ra,0xffff8
   1602c:	00000013          	nop
   16030:	0020d1b3          	srl	gp,ra,sp
   16034:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16038:	00200293          	li	t0,2
   1603c:	fe5214e3          	bne	tp,t0,16024 <test_35+0x4>
   16040:	02000eb7          	lui	t4,0x2000
   16044:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_edata+0x1effe90>
   16048:	02300e13          	li	t3,35
   1604c:	13d19263          	bne	gp,t4,16170 <fail>

00016050 <test_36>:
   16050:	00000213          	li	tp,0
   16054:	00f00113          	li	sp,15
   16058:	ffff80b7          	lui	ra,0xffff8
   1605c:	00000013          	nop
   16060:	00000013          	nop
   16064:	0020d1b3          	srl	gp,ra,sp
   16068:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1606c:	00200293          	li	t0,2
   16070:	fe5212e3          	bne	tp,t0,16054 <test_36+0x4>
   16074:	00020eb7          	lui	t4,0x20
   16078:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   1607c:	02400e13          	li	t3,36
   16080:	0fd19863          	bne	gp,t4,16170 <fail>

00016084 <test_37>:
   16084:	00000213          	li	tp,0
   16088:	00100113          	li	sp,1
   1608c:	00000013          	nop
   16090:	ffff80b7          	lui	ra,0xffff8
   16094:	0020d1b3          	srl	gp,ra,sp
   16098:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1609c:	00200293          	li	t0,2
   160a0:	fe5214e3          	bne	tp,t0,16088 <test_37+0x4>
   160a4:	7fffceb7          	lui	t4,0x7fffc
   160a8:	02500e13          	li	t3,37
   160ac:	0dd19263          	bne	gp,t4,16170 <fail>

000160b0 <test_38>:
   160b0:	00000213          	li	tp,0
   160b4:	00700113          	li	sp,7
   160b8:	00000013          	nop
   160bc:	ffff80b7          	lui	ra,0xffff8
   160c0:	00000013          	nop
   160c4:	0020d1b3          	srl	gp,ra,sp
   160c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   160cc:	00200293          	li	t0,2
   160d0:	fe5212e3          	bne	tp,t0,160b4 <test_38+0x4>
   160d4:	02000eb7          	lui	t4,0x2000
   160d8:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_edata+0x1effe90>
   160dc:	02600e13          	li	t3,38
   160e0:	09d19863          	bne	gp,t4,16170 <fail>

000160e4 <test_39>:
   160e4:	00000213          	li	tp,0
   160e8:	00f00113          	li	sp,15
   160ec:	00000013          	nop
   160f0:	00000013          	nop
   160f4:	ffff80b7          	lui	ra,0xffff8
   160f8:	0020d1b3          	srl	gp,ra,sp
   160fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16100:	00200293          	li	t0,2
   16104:	fe5212e3          	bne	tp,t0,160e8 <test_39+0x4>
   16108:	00020eb7          	lui	t4,0x20
   1610c:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   16110:	02700e13          	li	t3,39
   16114:	05d19e63          	bne	gp,t4,16170 <fail>

00016118 <test_40>:
   16118:	00f00093          	li	ra,15
   1611c:	00105133          	srl	sp,zero,ra
   16120:	00000e93          	li	t4,0
   16124:	02800e13          	li	t3,40
   16128:	05d11463          	bne	sp,t4,16170 <fail>

0001612c <test_41>:
   1612c:	02000093          	li	ra,32
   16130:	0000d133          	srl	sp,ra,zero
   16134:	02000e93          	li	t4,32
   16138:	02900e13          	li	t3,41
   1613c:	03d11a63          	bne	sp,t4,16170 <fail>

00016140 <test_42>:
   16140:	000050b3          	srl	ra,zero,zero
   16144:	00000e93          	li	t4,0
   16148:	02a00e13          	li	t3,42
   1614c:	03d09263          	bne	ra,t4,16170 <fail>

00016150 <test_43>:
   16150:	40000093          	li	ra,1024
   16154:	00001137          	lui	sp,0x1
   16158:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   1615c:	0020d033          	srl	zero,ra,sp
   16160:	00000e93          	li	t4,0
   16164:	02b00e13          	li	t3,43
   16168:	01d01463          	bne	zero,t4,16170 <fail>
   1616c:	05c01463          	bne	zero,t3,161b4 <pass>

00016170 <fail>:
   16170:	0ff00513          	li	a0,255

00016174 <.delay_fail>:
   16174:	fff50513          	addi	a0,a0,-1
   16178:	fe051ee3          	bnez	a0,16174 <.delay_fail>
   1617c:	02000537          	lui	a0,0x2000
   16180:	04500593          	li	a1,69
   16184:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16188:	05200613          	li	a2,82
   1618c:	00c52023          	sw	a2,0(a0)
   16190:	00c52023          	sw	a2,0(a0)
   16194:	04f00693          	li	a3,79
   16198:	00d52023          	sw	a3,0(a0)
   1619c:	00c52023          	sw	a2,0(a0)
   161a0:	00d00713          	li	a4,13
   161a4:	00e52023          	sw	a4,0(a0)
   161a8:	00a00793          	li	a5,10
   161ac:	00f52023          	sw	a5,0(a0)
   161b0:	fa1f906f          	j	10150 <srl_ret>

000161b4 <pass>:
   161b4:	0ff00513          	li	a0,255

000161b8 <.delay_ok>:
   161b8:	fff50513          	addi	a0,a0,-1
   161bc:	fe051ee3          	bnez	a0,161b8 <.delay_ok>
   161c0:	02000537          	lui	a0,0x2000
   161c4:	04f00593          	li	a1,79
   161c8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   161cc:	04b00613          	li	a2,75
   161d0:	00c52023          	sw	a2,0(a0)
   161d4:	00d00693          	li	a3,13
   161d8:	00d52023          	sw	a3,0(a0)
   161dc:	00a00713          	li	a4,10
   161e0:	00e52023          	sw	a4,0(a0)
   161e4:	f6df906f          	j	10150 <srl_ret>

000161e8 <slt>:
   161e8:	0ff00513          	li	a0,255

000161ec <.delay_pr>:
   161ec:	fff50513          	addi	a0,a0,-1
   161f0:	fe051ee3          	bnez	a0,161ec <.delay_pr>
   161f4:	00016537          	lui	a0,0x16
   161f8:	21450513          	addi	a0,a0,532 # 16214 <.test_name>
   161fc:	02000637          	lui	a2,0x2000

00016200 <.prname_next>:
   16200:	00050583          	lb	a1,0(a0)
   16204:	00058a63          	beqz	a1,16218 <.prname_done>
   16208:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   1620c:	00150513          	addi	a0,a0,1
   16210:	ff1ff06f          	j	16200 <.prname_next>

00016214 <.test_name>:
   16214:	00746c73          	csrrsi	s8,0x7,8

00016218 <.prname_done>:
   16218:	02e00593          	li	a1,46
   1621c:	00b62023          	sw	a1,0(a2)
   16220:	00b62023          	sw	a1,0(a2)

00016224 <test_2>:
   16224:	00000093          	li	ra,0
   16228:	00000113          	li	sp,0
   1622c:	0020a1b3          	slt	gp,ra,sp
   16230:	00000e93          	li	t4,0
   16234:	00200e13          	li	t3,2
   16238:	4bd19a63          	bne	gp,t4,166ec <fail>

0001623c <test_3>:
   1623c:	00100093          	li	ra,1
   16240:	00100113          	li	sp,1
   16244:	0020a1b3          	slt	gp,ra,sp
   16248:	00000e93          	li	t4,0
   1624c:	00300e13          	li	t3,3
   16250:	49d19e63          	bne	gp,t4,166ec <fail>

00016254 <test_4>:
   16254:	00300093          	li	ra,3
   16258:	00700113          	li	sp,7
   1625c:	0020a1b3          	slt	gp,ra,sp
   16260:	00100e93          	li	t4,1
   16264:	00400e13          	li	t3,4
   16268:	49d19263          	bne	gp,t4,166ec <fail>

0001626c <test_5>:
   1626c:	00700093          	li	ra,7
   16270:	00300113          	li	sp,3
   16274:	0020a1b3          	slt	gp,ra,sp
   16278:	00000e93          	li	t4,0
   1627c:	00500e13          	li	t3,5
   16280:	47d19663          	bne	gp,t4,166ec <fail>

00016284 <test_6>:
   16284:	00000093          	li	ra,0
   16288:	ffff8137          	lui	sp,0xffff8
   1628c:	0020a1b3          	slt	gp,ra,sp
   16290:	00000e93          	li	t4,0
   16294:	00600e13          	li	t3,6
   16298:	45d19a63          	bne	gp,t4,166ec <fail>

0001629c <test_7>:
   1629c:	800000b7          	lui	ra,0x80000
   162a0:	00000113          	li	sp,0
   162a4:	0020a1b3          	slt	gp,ra,sp
   162a8:	00100e93          	li	t4,1
   162ac:	00700e13          	li	t3,7
   162b0:	43d19e63          	bne	gp,t4,166ec <fail>

000162b4 <test_8>:
   162b4:	800000b7          	lui	ra,0x80000
   162b8:	ffff8137          	lui	sp,0xffff8
   162bc:	0020a1b3          	slt	gp,ra,sp
   162c0:	00100e93          	li	t4,1
   162c4:	00800e13          	li	t3,8
   162c8:	43d19263          	bne	gp,t4,166ec <fail>

000162cc <test_9>:
   162cc:	00000093          	li	ra,0
   162d0:	00008137          	lui	sp,0x8
   162d4:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   162d8:	0020a1b3          	slt	gp,ra,sp
   162dc:	00100e93          	li	t4,1
   162e0:	00900e13          	li	t3,9
   162e4:	41d19463          	bne	gp,t4,166ec <fail>

000162e8 <test_10>:
   162e8:	800000b7          	lui	ra,0x80000
   162ec:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   162f0:	00000113          	li	sp,0
   162f4:	0020a1b3          	slt	gp,ra,sp
   162f8:	00000e93          	li	t4,0
   162fc:	00a00e13          	li	t3,10
   16300:	3fd19663          	bne	gp,t4,166ec <fail>

00016304 <test_11>:
   16304:	800000b7          	lui	ra,0x80000
   16308:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   1630c:	00008137          	lui	sp,0x8
   16310:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   16314:	0020a1b3          	slt	gp,ra,sp
   16318:	00000e93          	li	t4,0
   1631c:	00b00e13          	li	t3,11
   16320:	3dd19663          	bne	gp,t4,166ec <fail>

00016324 <test_12>:
   16324:	800000b7          	lui	ra,0x80000
   16328:	00008137          	lui	sp,0x8
   1632c:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   16330:	0020a1b3          	slt	gp,ra,sp
   16334:	00100e93          	li	t4,1
   16338:	00c00e13          	li	t3,12
   1633c:	3bd19863          	bne	gp,t4,166ec <fail>

00016340 <test_13>:
   16340:	800000b7          	lui	ra,0x80000
   16344:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   16348:	ffff8137          	lui	sp,0xffff8
   1634c:	0020a1b3          	slt	gp,ra,sp
   16350:	00000e93          	li	t4,0
   16354:	00d00e13          	li	t3,13
   16358:	39d19a63          	bne	gp,t4,166ec <fail>

0001635c <test_14>:
   1635c:	00000093          	li	ra,0
   16360:	fff00113          	li	sp,-1
   16364:	0020a1b3          	slt	gp,ra,sp
   16368:	00000e93          	li	t4,0
   1636c:	00e00e13          	li	t3,14
   16370:	37d19e63          	bne	gp,t4,166ec <fail>

00016374 <test_15>:
   16374:	fff00093          	li	ra,-1
   16378:	00100113          	li	sp,1
   1637c:	0020a1b3          	slt	gp,ra,sp
   16380:	00100e93          	li	t4,1
   16384:	00f00e13          	li	t3,15
   16388:	37d19263          	bne	gp,t4,166ec <fail>

0001638c <test_16>:
   1638c:	fff00093          	li	ra,-1
   16390:	fff00113          	li	sp,-1
   16394:	0020a1b3          	slt	gp,ra,sp
   16398:	00000e93          	li	t4,0
   1639c:	01000e13          	li	t3,16
   163a0:	35d19663          	bne	gp,t4,166ec <fail>

000163a4 <test_17>:
   163a4:	00e00093          	li	ra,14
   163a8:	00d00113          	li	sp,13
   163ac:	0020a0b3          	slt	ra,ra,sp
   163b0:	00000e93          	li	t4,0
   163b4:	01100e13          	li	t3,17
   163b8:	33d09a63          	bne	ra,t4,166ec <fail>

000163bc <test_18>:
   163bc:	00b00093          	li	ra,11
   163c0:	00d00113          	li	sp,13
   163c4:	0020a133          	slt	sp,ra,sp
   163c8:	00100e93          	li	t4,1
   163cc:	01200e13          	li	t3,18
   163d0:	31d11e63          	bne	sp,t4,166ec <fail>

000163d4 <test_19>:
   163d4:	00d00093          	li	ra,13
   163d8:	0010a0b3          	slt	ra,ra,ra
   163dc:	00000e93          	li	t4,0
   163e0:	01300e13          	li	t3,19
   163e4:	31d09463          	bne	ra,t4,166ec <fail>

000163e8 <test_20>:
   163e8:	00000213          	li	tp,0
   163ec:	00b00093          	li	ra,11
   163f0:	00d00113          	li	sp,13
   163f4:	0020a1b3          	slt	gp,ra,sp
   163f8:	00018313          	mv	t1,gp
   163fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16400:	00200293          	li	t0,2
   16404:	fe5214e3          	bne	tp,t0,163ec <test_20+0x4>
   16408:	00100e93          	li	t4,1
   1640c:	01400e13          	li	t3,20
   16410:	2dd31e63          	bne	t1,t4,166ec <fail>

00016414 <test_21>:
   16414:	00000213          	li	tp,0
   16418:	00e00093          	li	ra,14
   1641c:	00d00113          	li	sp,13
   16420:	0020a1b3          	slt	gp,ra,sp
   16424:	00000013          	nop
   16428:	00018313          	mv	t1,gp
   1642c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16430:	00200293          	li	t0,2
   16434:	fe5212e3          	bne	tp,t0,16418 <test_21+0x4>
   16438:	00000e93          	li	t4,0
   1643c:	01500e13          	li	t3,21
   16440:	2bd31663          	bne	t1,t4,166ec <fail>

00016444 <test_22>:
   16444:	00000213          	li	tp,0
   16448:	00c00093          	li	ra,12
   1644c:	00d00113          	li	sp,13
   16450:	0020a1b3          	slt	gp,ra,sp
   16454:	00000013          	nop
   16458:	00000013          	nop
   1645c:	00018313          	mv	t1,gp
   16460:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16464:	00200293          	li	t0,2
   16468:	fe5210e3          	bne	tp,t0,16448 <test_22+0x4>
   1646c:	00100e93          	li	t4,1
   16470:	01600e13          	li	t3,22
   16474:	27d31c63          	bne	t1,t4,166ec <fail>

00016478 <test_23>:
   16478:	00000213          	li	tp,0
   1647c:	00e00093          	li	ra,14
   16480:	00d00113          	li	sp,13
   16484:	0020a1b3          	slt	gp,ra,sp
   16488:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1648c:	00200293          	li	t0,2
   16490:	fe5216e3          	bne	tp,t0,1647c <test_23+0x4>
   16494:	00000e93          	li	t4,0
   16498:	01700e13          	li	t3,23
   1649c:	25d19863          	bne	gp,t4,166ec <fail>

000164a0 <test_24>:
   164a0:	00000213          	li	tp,0
   164a4:	00b00093          	li	ra,11
   164a8:	00d00113          	li	sp,13
   164ac:	00000013          	nop
   164b0:	0020a1b3          	slt	gp,ra,sp
   164b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164b8:	00200293          	li	t0,2
   164bc:	fe5214e3          	bne	tp,t0,164a4 <test_24+0x4>
   164c0:	00100e93          	li	t4,1
   164c4:	01800e13          	li	t3,24
   164c8:	23d19263          	bne	gp,t4,166ec <fail>

000164cc <test_25>:
   164cc:	00000213          	li	tp,0
   164d0:	00f00093          	li	ra,15
   164d4:	00d00113          	li	sp,13
   164d8:	00000013          	nop
   164dc:	00000013          	nop
   164e0:	0020a1b3          	slt	gp,ra,sp
   164e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164e8:	00200293          	li	t0,2
   164ec:	fe5212e3          	bne	tp,t0,164d0 <test_25+0x4>
   164f0:	00000e93          	li	t4,0
   164f4:	01900e13          	li	t3,25
   164f8:	1fd19a63          	bne	gp,t4,166ec <fail>

000164fc <test_26>:
   164fc:	00000213          	li	tp,0
   16500:	00a00093          	li	ra,10
   16504:	00000013          	nop
   16508:	00d00113          	li	sp,13
   1650c:	0020a1b3          	slt	gp,ra,sp
   16510:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16514:	00200293          	li	t0,2
   16518:	fe5214e3          	bne	tp,t0,16500 <test_26+0x4>
   1651c:	00100e93          	li	t4,1
   16520:	01a00e13          	li	t3,26
   16524:	1dd19463          	bne	gp,t4,166ec <fail>

00016528 <test_27>:
   16528:	00000213          	li	tp,0
   1652c:	01000093          	li	ra,16
   16530:	00000013          	nop
   16534:	00d00113          	li	sp,13
   16538:	00000013          	nop
   1653c:	0020a1b3          	slt	gp,ra,sp
   16540:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16544:	00200293          	li	t0,2
   16548:	fe5212e3          	bne	tp,t0,1652c <test_27+0x4>
   1654c:	00000e93          	li	t4,0
   16550:	01b00e13          	li	t3,27
   16554:	19d19c63          	bne	gp,t4,166ec <fail>

00016558 <test_28>:
   16558:	00000213          	li	tp,0
   1655c:	00900093          	li	ra,9
   16560:	00000013          	nop
   16564:	00000013          	nop
   16568:	00d00113          	li	sp,13
   1656c:	0020a1b3          	slt	gp,ra,sp
   16570:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16574:	00200293          	li	t0,2
   16578:	fe5212e3          	bne	tp,t0,1655c <test_28+0x4>
   1657c:	00100e93          	li	t4,1
   16580:	01c00e13          	li	t3,28
   16584:	17d19463          	bne	gp,t4,166ec <fail>

00016588 <test_29>:
   16588:	00000213          	li	tp,0
   1658c:	00d00113          	li	sp,13
   16590:	01100093          	li	ra,17
   16594:	0020a1b3          	slt	gp,ra,sp
   16598:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1659c:	00200293          	li	t0,2
   165a0:	fe5216e3          	bne	tp,t0,1658c <test_29+0x4>
   165a4:	00000e93          	li	t4,0
   165a8:	01d00e13          	li	t3,29
   165ac:	15d19063          	bne	gp,t4,166ec <fail>

000165b0 <test_30>:
   165b0:	00000213          	li	tp,0
   165b4:	00d00113          	li	sp,13
   165b8:	00800093          	li	ra,8
   165bc:	00000013          	nop
   165c0:	0020a1b3          	slt	gp,ra,sp
   165c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   165c8:	00200293          	li	t0,2
   165cc:	fe5214e3          	bne	tp,t0,165b4 <test_30+0x4>
   165d0:	00100e93          	li	t4,1
   165d4:	01e00e13          	li	t3,30
   165d8:	11d19a63          	bne	gp,t4,166ec <fail>

000165dc <test_31>:
   165dc:	00000213          	li	tp,0
   165e0:	00d00113          	li	sp,13
   165e4:	01200093          	li	ra,18
   165e8:	00000013          	nop
   165ec:	00000013          	nop
   165f0:	0020a1b3          	slt	gp,ra,sp
   165f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   165f8:	00200293          	li	t0,2
   165fc:	fe5212e3          	bne	tp,t0,165e0 <test_31+0x4>
   16600:	00000e93          	li	t4,0
   16604:	01f00e13          	li	t3,31
   16608:	0fd19263          	bne	gp,t4,166ec <fail>

0001660c <test_32>:
   1660c:	00000213          	li	tp,0
   16610:	00d00113          	li	sp,13
   16614:	00000013          	nop
   16618:	00700093          	li	ra,7
   1661c:	0020a1b3          	slt	gp,ra,sp
   16620:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16624:	00200293          	li	t0,2
   16628:	fe5214e3          	bne	tp,t0,16610 <test_32+0x4>
   1662c:	00100e93          	li	t4,1
   16630:	02000e13          	li	t3,32
   16634:	0bd19c63          	bne	gp,t4,166ec <fail>

00016638 <test_33>:
   16638:	00000213          	li	tp,0
   1663c:	00d00113          	li	sp,13
   16640:	00000013          	nop
   16644:	01300093          	li	ra,19
   16648:	00000013          	nop
   1664c:	0020a1b3          	slt	gp,ra,sp
   16650:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16654:	00200293          	li	t0,2
   16658:	fe5212e3          	bne	tp,t0,1663c <test_33+0x4>
   1665c:	00000e93          	li	t4,0
   16660:	02100e13          	li	t3,33
   16664:	09d19463          	bne	gp,t4,166ec <fail>

00016668 <test_34>:
   16668:	00000213          	li	tp,0
   1666c:	00d00113          	li	sp,13
   16670:	00000013          	nop
   16674:	00000013          	nop
   16678:	00600093          	li	ra,6
   1667c:	0020a1b3          	slt	gp,ra,sp
   16680:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16684:	00200293          	li	t0,2
   16688:	fe5212e3          	bne	tp,t0,1666c <test_34+0x4>
   1668c:	00100e93          	li	t4,1
   16690:	02200e13          	li	t3,34
   16694:	05d19c63          	bne	gp,t4,166ec <fail>

00016698 <test_35>:
   16698:	fff00093          	li	ra,-1
   1669c:	00102133          	sgtz	sp,ra
   166a0:	00000e93          	li	t4,0
   166a4:	02300e13          	li	t3,35
   166a8:	05d11263          	bne	sp,t4,166ec <fail>

000166ac <test_36>:
   166ac:	fff00093          	li	ra,-1
   166b0:	0000a133          	sltz	sp,ra
   166b4:	00100e93          	li	t4,1
   166b8:	02400e13          	li	t3,36
   166bc:	03d11863          	bne	sp,t4,166ec <fail>

000166c0 <test_37>:
   166c0:	000020b3          	sltz	ra,zero
   166c4:	00000e93          	li	t4,0
   166c8:	02500e13          	li	t3,37
   166cc:	03d09063          	bne	ra,t4,166ec <fail>

000166d0 <test_38>:
   166d0:	01000093          	li	ra,16
   166d4:	01e00113          	li	sp,30
   166d8:	0020a033          	slt	zero,ra,sp
   166dc:	00000e93          	li	t4,0
   166e0:	02600e13          	li	t3,38
   166e4:	01d01463          	bne	zero,t4,166ec <fail>
   166e8:	05c01463          	bne	zero,t3,16730 <pass>

000166ec <fail>:
   166ec:	0ff00513          	li	a0,255

000166f0 <.delay_fail>:
   166f0:	fff50513          	addi	a0,a0,-1
   166f4:	fe051ee3          	bnez	a0,166f0 <.delay_fail>
   166f8:	02000537          	lui	a0,0x2000
   166fc:	04500593          	li	a1,69
   16700:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16704:	05200613          	li	a2,82
   16708:	00c52023          	sw	a2,0(a0)
   1670c:	00c52023          	sw	a2,0(a0)
   16710:	04f00693          	li	a3,79
   16714:	00d52023          	sw	a3,0(a0)
   16718:	00c52023          	sw	a2,0(a0)
   1671c:	00d00713          	li	a4,13
   16720:	00e52023          	sw	a4,0(a0)
   16724:	00a00793          	li	a5,10
   16728:	00f52023          	sw	a5,0(a0)
   1672c:	a1df906f          	j	10148 <slt_ret>

00016730 <pass>:
   16730:	0ff00513          	li	a0,255

00016734 <.delay_ok>:
   16734:	fff50513          	addi	a0,a0,-1
   16738:	fe051ee3          	bnez	a0,16734 <.delay_ok>
   1673c:	02000537          	lui	a0,0x2000
   16740:	04f00593          	li	a1,79
   16744:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16748:	04b00613          	li	a2,75
   1674c:	00c52023          	sw	a2,0(a0)
   16750:	00d00693          	li	a3,13
   16754:	00d52023          	sw	a3,0(a0)
   16758:	00a00713          	li	a4,10
   1675c:	00e52023          	sw	a4,0(a0)
   16760:	9e9f906f          	j	10148 <slt_ret>

00016764 <lbu>:
   16764:	0ff00513          	li	a0,255

00016768 <.delay_pr>:
   16768:	fff50513          	addi	a0,a0,-1
   1676c:	fe051ee3          	bnez	a0,16768 <.delay_pr>
   16770:	00016537          	lui	a0,0x16
   16774:	79050513          	addi	a0,a0,1936 # 16790 <.test_name>
   16778:	02000637          	lui	a2,0x2000

0001677c <.prname_next>:
   1677c:	00050583          	lb	a1,0(a0)
   16780:	00058a63          	beqz	a1,16794 <.prname_done>
   16784:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   16788:	00150513          	addi	a0,a0,1
   1678c:	ff1ff06f          	j	1677c <.prname_next>

00016790 <.test_name>:
   16790:	626c                	flw	fa1,68(a2)
   16792:	0075                	c.nop	29

00016794 <.prname_done>:
   16794:	02e00593          	li	a1,46
   16798:	00b62023          	sw	a1,0(a2)
   1679c:	00b62023          	sw	a1,0(a2)

000167a0 <test_2>:
   167a0:	000ea097          	auipc	ra,0xea
   167a4:	8b808093          	addi	ra,ra,-1864 # 100058 <tdat>
   167a8:	0000c183          	lbu	gp,0(ra)
   167ac:	0ff00e93          	li	t4,255
   167b0:	00200e13          	li	t3,2
   167b4:	23d19c63          	bne	gp,t4,169ec <fail>

000167b8 <test_3>:
   167b8:	000ea097          	auipc	ra,0xea
   167bc:	8a008093          	addi	ra,ra,-1888 # 100058 <tdat>
   167c0:	0010c183          	lbu	gp,1(ra)
   167c4:	00000e93          	li	t4,0
   167c8:	00300e13          	li	t3,3
   167cc:	23d19063          	bne	gp,t4,169ec <fail>

000167d0 <test_4>:
   167d0:	000ea097          	auipc	ra,0xea
   167d4:	88808093          	addi	ra,ra,-1912 # 100058 <tdat>
   167d8:	0020c183          	lbu	gp,2(ra)
   167dc:	0f000e93          	li	t4,240
   167e0:	00400e13          	li	t3,4
   167e4:	21d19463          	bne	gp,t4,169ec <fail>

000167e8 <test_5>:
   167e8:	000ea097          	auipc	ra,0xea
   167ec:	87008093          	addi	ra,ra,-1936 # 100058 <tdat>
   167f0:	0030c183          	lbu	gp,3(ra)
   167f4:	00f00e93          	li	t4,15
   167f8:	00500e13          	li	t3,5
   167fc:	1fd19863          	bne	gp,t4,169ec <fail>

00016800 <test_6>:
   16800:	000ea097          	auipc	ra,0xea
   16804:	85b08093          	addi	ra,ra,-1957 # 10005b <tdat4>
   16808:	ffd0c183          	lbu	gp,-3(ra)
   1680c:	0ff00e93          	li	t4,255
   16810:	00600e13          	li	t3,6
   16814:	1dd19c63          	bne	gp,t4,169ec <fail>

00016818 <test_7>:
   16818:	000ea097          	auipc	ra,0xea
   1681c:	84308093          	addi	ra,ra,-1981 # 10005b <tdat4>
   16820:	ffe0c183          	lbu	gp,-2(ra)
   16824:	00000e93          	li	t4,0
   16828:	00700e13          	li	t3,7
   1682c:	1dd19063          	bne	gp,t4,169ec <fail>

00016830 <test_8>:
   16830:	000ea097          	auipc	ra,0xea
   16834:	82b08093          	addi	ra,ra,-2005 # 10005b <tdat4>
   16838:	fff0c183          	lbu	gp,-1(ra)
   1683c:	0f000e93          	li	t4,240
   16840:	00800e13          	li	t3,8
   16844:	1bd19463          	bne	gp,t4,169ec <fail>

00016848 <test_9>:
   16848:	000ea097          	auipc	ra,0xea
   1684c:	81308093          	addi	ra,ra,-2029 # 10005b <tdat4>
   16850:	0000c183          	lbu	gp,0(ra)
   16854:	00f00e93          	li	t4,15
   16858:	00900e13          	li	t3,9
   1685c:	19d19863          	bne	gp,t4,169ec <fail>

00016860 <test_10>:
   16860:	000e9097          	auipc	ra,0xe9
   16864:	7f808093          	addi	ra,ra,2040 # 100058 <tdat>
   16868:	fe008093          	addi	ra,ra,-32
   1686c:	0200c183          	lbu	gp,32(ra)
   16870:	0ff00e93          	li	t4,255
   16874:	00a00e13          	li	t3,10
   16878:	17d19a63          	bne	gp,t4,169ec <fail>

0001687c <test_11>:
   1687c:	000e9097          	auipc	ra,0xe9
   16880:	7dc08093          	addi	ra,ra,2012 # 100058 <tdat>
   16884:	ffa08093          	addi	ra,ra,-6
   16888:	0070c183          	lbu	gp,7(ra)
   1688c:	00000e93          	li	t4,0
   16890:	00b00e13          	li	t3,11
   16894:	15d19c63          	bne	gp,t4,169ec <fail>

00016898 <test_12>:
   16898:	00c00e13          	li	t3,12
   1689c:	00000213          	li	tp,0
   168a0:	000e9097          	auipc	ra,0xe9
   168a4:	7b908093          	addi	ra,ra,1977 # 100059 <tdat2>
   168a8:	0010c183          	lbu	gp,1(ra)
   168ac:	00018313          	mv	t1,gp
   168b0:	0f000e93          	li	t4,240
   168b4:	13d31c63          	bne	t1,t4,169ec <fail>
   168b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   168bc:	00200293          	li	t0,2
   168c0:	fe5210e3          	bne	tp,t0,168a0 <test_12+0x8>

000168c4 <test_13>:
   168c4:	00d00e13          	li	t3,13
   168c8:	00000213          	li	tp,0
   168cc:	000e9097          	auipc	ra,0xe9
   168d0:	78e08093          	addi	ra,ra,1934 # 10005a <tdat3>
   168d4:	0010c183          	lbu	gp,1(ra)
   168d8:	00000013          	nop
   168dc:	00018313          	mv	t1,gp
   168e0:	00f00e93          	li	t4,15
   168e4:	11d31463          	bne	t1,t4,169ec <fail>
   168e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   168ec:	00200293          	li	t0,2
   168f0:	fc521ee3          	bne	tp,t0,168cc <test_13+0x8>

000168f4 <test_14>:
   168f4:	00e00e13          	li	t3,14
   168f8:	00000213          	li	tp,0
   168fc:	000e9097          	auipc	ra,0xe9
   16900:	75c08093          	addi	ra,ra,1884 # 100058 <tdat>
   16904:	0010c183          	lbu	gp,1(ra)
   16908:	00000013          	nop
   1690c:	00000013          	nop
   16910:	00018313          	mv	t1,gp
   16914:	00000e93          	li	t4,0
   16918:	0dd31a63          	bne	t1,t4,169ec <fail>
   1691c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16920:	00200293          	li	t0,2
   16924:	fc521ce3          	bne	tp,t0,168fc <test_14+0x8>

00016928 <test_15>:
   16928:	00f00e13          	li	t3,15
   1692c:	00000213          	li	tp,0
   16930:	000e9097          	auipc	ra,0xe9
   16934:	72908093          	addi	ra,ra,1833 # 100059 <tdat2>
   16938:	0010c183          	lbu	gp,1(ra)
   1693c:	0f000e93          	li	t4,240
   16940:	0bd19663          	bne	gp,t4,169ec <fail>
   16944:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16948:	00200293          	li	t0,2
   1694c:	fe5212e3          	bne	tp,t0,16930 <test_15+0x8>

00016950 <test_16>:
   16950:	01000e13          	li	t3,16
   16954:	00000213          	li	tp,0
   16958:	000e9097          	auipc	ra,0xe9
   1695c:	70208093          	addi	ra,ra,1794 # 10005a <tdat3>
   16960:	00000013          	nop
   16964:	0010c183          	lbu	gp,1(ra)
   16968:	00f00e93          	li	t4,15
   1696c:	09d19063          	bne	gp,t4,169ec <fail>
   16970:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16974:	00200293          	li	t0,2
   16978:	fe5210e3          	bne	tp,t0,16958 <test_16+0x8>

0001697c <test_17>:
   1697c:	01100e13          	li	t3,17
   16980:	00000213          	li	tp,0
   16984:	000e9097          	auipc	ra,0xe9
   16988:	6d408093          	addi	ra,ra,1748 # 100058 <tdat>
   1698c:	00000013          	nop
   16990:	00000013          	nop
   16994:	0010c183          	lbu	gp,1(ra)
   16998:	00000e93          	li	t4,0
   1699c:	05d19863          	bne	gp,t4,169ec <fail>
   169a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   169a4:	00200293          	li	t0,2
   169a8:	fc521ee3          	bne	tp,t0,16984 <test_17+0x8>

000169ac <test_18>:
   169ac:	000e9197          	auipc	gp,0xe9
   169b0:	6ac18193          	addi	gp,gp,1708 # 100058 <tdat>
   169b4:	0001c103          	lbu	sp,0(gp)
   169b8:	00200113          	li	sp,2
   169bc:	00200e93          	li	t4,2
   169c0:	01200e13          	li	t3,18
   169c4:	03d11463          	bne	sp,t4,169ec <fail>

000169c8 <test_19>:
   169c8:	000e9197          	auipc	gp,0xe9
   169cc:	69018193          	addi	gp,gp,1680 # 100058 <tdat>
   169d0:	0001c103          	lbu	sp,0(gp)
   169d4:	00000013          	nop
   169d8:	00200113          	li	sp,2
   169dc:	00200e93          	li	t4,2
   169e0:	01300e13          	li	t3,19
   169e4:	01d11463          	bne	sp,t4,169ec <fail>
   169e8:	05c01463          	bne	zero,t3,16a30 <pass>

000169ec <fail>:
   169ec:	0ff00513          	li	a0,255

000169f0 <.delay_fail>:
   169f0:	fff50513          	addi	a0,a0,-1
   169f4:	fe051ee3          	bnez	a0,169f0 <.delay_fail>
   169f8:	02000537          	lui	a0,0x2000
   169fc:	04500593          	li	a1,69
   16a00:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16a04:	05200613          	li	a2,82
   16a08:	00c52023          	sw	a2,0(a0)
   16a0c:	00c52023          	sw	a2,0(a0)
   16a10:	04f00693          	li	a3,79
   16a14:	00d52023          	sw	a3,0(a0)
   16a18:	00c52023          	sw	a2,0(a0)
   16a1c:	00d00713          	li	a4,13
   16a20:	00e52023          	sw	a4,0(a0)
   16a24:	00a00793          	li	a5,10
   16a28:	00f52023          	sw	a5,0(a0)
   16a2c:	edcf906f          	j	10108 <lbu_ret>

00016a30 <pass>:
   16a30:	0ff00513          	li	a0,255

00016a34 <.delay_ok>:
   16a34:	fff50513          	addi	a0,a0,-1
   16a38:	fe051ee3          	bnez	a0,16a34 <.delay_ok>
   16a3c:	02000537          	lui	a0,0x2000
   16a40:	04f00593          	li	a1,79
   16a44:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16a48:	04b00613          	li	a2,75
   16a4c:	00c52023          	sw	a2,0(a0)
   16a50:	00d00693          	li	a3,13
   16a54:	00d52023          	sw	a3,0(a0)
   16a58:	00a00713          	li	a4,10
   16a5c:	00e52023          	sw	a4,0(a0)
   16a60:	ea8f906f          	j	10108 <lbu_ret>

00016a64 <lhu>:
   16a64:	0ff00513          	li	a0,255

00016a68 <.delay_pr>:
   16a68:	fff50513          	addi	a0,a0,-1
   16a6c:	fe051ee3          	bnez	a0,16a68 <.delay_pr>
   16a70:	00017537          	lui	a0,0x17
   16a74:	a9050513          	addi	a0,a0,-1392 # 16a90 <.test_name>
   16a78:	02000637          	lui	a2,0x2000

00016a7c <.prname_next>:
   16a7c:	00050583          	lb	a1,0(a0)
   16a80:	00058a63          	beqz	a1,16a94 <.prname_done>
   16a84:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   16a88:	00150513          	addi	a0,a0,1
   16a8c:	ff1ff06f          	j	16a7c <.prname_next>

00016a90 <.test_name>:
   16a90:	686c                	flw	fa1,84(s0)
   16a92:	0075                	c.nop	29

00016a94 <.prname_done>:
   16a94:	02e00593          	li	a1,46
   16a98:	00b62023          	sw	a1,0(a2)
   16a9c:	00b62023          	sw	a1,0(a2)

00016aa0 <test_2>:
   16aa0:	000e9097          	auipc	ra,0xe9
   16aa4:	5bc08093          	addi	ra,ra,1468 # 10005c <tdat>
   16aa8:	0000d183          	lhu	gp,0(ra)
   16aac:	0ff00e93          	li	t4,255
   16ab0:	00200e13          	li	t3,2
   16ab4:	27d19663          	bne	gp,t4,16d20 <fail>

00016ab8 <test_3>:
   16ab8:	000e9097          	auipc	ra,0xe9
   16abc:	5a408093          	addi	ra,ra,1444 # 10005c <tdat>
   16ac0:	0020d183          	lhu	gp,2(ra)
   16ac4:	00010eb7          	lui	t4,0x10
   16ac8:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   16acc:	00300e13          	li	t3,3
   16ad0:	25d19863          	bne	gp,t4,16d20 <fail>

00016ad4 <test_4>:
   16ad4:	000e9097          	auipc	ra,0xe9
   16ad8:	58808093          	addi	ra,ra,1416 # 10005c <tdat>
   16adc:	0040d183          	lhu	gp,4(ra)
   16ae0:	00001eb7          	lui	t4,0x1
   16ae4:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   16ae8:	00400e13          	li	t3,4
   16aec:	23d19a63          	bne	gp,t4,16d20 <fail>

00016af0 <test_5>:
   16af0:	000e9097          	auipc	ra,0xe9
   16af4:	56c08093          	addi	ra,ra,1388 # 10005c <tdat>
   16af8:	0060d183          	lhu	gp,6(ra)
   16afc:	0000feb7          	lui	t4,0xf
   16b00:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   16b04:	00500e13          	li	t3,5
   16b08:	21d19c63          	bne	gp,t4,16d20 <fail>

00016b0c <test_6>:
   16b0c:	000e9097          	auipc	ra,0xe9
   16b10:	55608093          	addi	ra,ra,1366 # 100062 <tdat4>
   16b14:	ffa0d183          	lhu	gp,-6(ra)
   16b18:	0ff00e93          	li	t4,255
   16b1c:	00600e13          	li	t3,6
   16b20:	21d19063          	bne	gp,t4,16d20 <fail>

00016b24 <test_7>:
   16b24:	000e9097          	auipc	ra,0xe9
   16b28:	53e08093          	addi	ra,ra,1342 # 100062 <tdat4>
   16b2c:	ffc0d183          	lhu	gp,-4(ra)
   16b30:	00010eb7          	lui	t4,0x10
   16b34:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   16b38:	00700e13          	li	t3,7
   16b3c:	1fd19263          	bne	gp,t4,16d20 <fail>

00016b40 <test_8>:
   16b40:	000e9097          	auipc	ra,0xe9
   16b44:	52208093          	addi	ra,ra,1314 # 100062 <tdat4>
   16b48:	ffe0d183          	lhu	gp,-2(ra)
   16b4c:	00001eb7          	lui	t4,0x1
   16b50:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   16b54:	00800e13          	li	t3,8
   16b58:	1dd19463          	bne	gp,t4,16d20 <fail>

00016b5c <test_9>:
   16b5c:	000e9097          	auipc	ra,0xe9
   16b60:	50608093          	addi	ra,ra,1286 # 100062 <tdat4>
   16b64:	0000d183          	lhu	gp,0(ra)
   16b68:	0000feb7          	lui	t4,0xf
   16b6c:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   16b70:	00900e13          	li	t3,9
   16b74:	1bd19663          	bne	gp,t4,16d20 <fail>

00016b78 <test_10>:
   16b78:	000e9097          	auipc	ra,0xe9
   16b7c:	4e408093          	addi	ra,ra,1252 # 10005c <tdat>
   16b80:	fe008093          	addi	ra,ra,-32
   16b84:	0200d183          	lhu	gp,32(ra)
   16b88:	0ff00e93          	li	t4,255
   16b8c:	00a00e13          	li	t3,10
   16b90:	19d19863          	bne	gp,t4,16d20 <fail>

00016b94 <test_11>:
   16b94:	000e9097          	auipc	ra,0xe9
   16b98:	4c808093          	addi	ra,ra,1224 # 10005c <tdat>
   16b9c:	ffb08093          	addi	ra,ra,-5
   16ba0:	0070d183          	lhu	gp,7(ra)
   16ba4:	00010eb7          	lui	t4,0x10
   16ba8:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   16bac:	00b00e13          	li	t3,11
   16bb0:	17d19863          	bne	gp,t4,16d20 <fail>

00016bb4 <test_12>:
   16bb4:	00c00e13          	li	t3,12
   16bb8:	00000213          	li	tp,0
   16bbc:	000e9097          	auipc	ra,0xe9
   16bc0:	4a208093          	addi	ra,ra,1186 # 10005e <tdat2>
   16bc4:	0020d183          	lhu	gp,2(ra)
   16bc8:	00018313          	mv	t1,gp
   16bcc:	00001eb7          	lui	t4,0x1
   16bd0:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   16bd4:	15d31663          	bne	t1,t4,16d20 <fail>
   16bd8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16bdc:	00200293          	li	t0,2
   16be0:	fc521ee3          	bne	tp,t0,16bbc <test_12+0x8>

00016be4 <test_13>:
   16be4:	00d00e13          	li	t3,13
   16be8:	00000213          	li	tp,0
   16bec:	000e9097          	auipc	ra,0xe9
   16bf0:	47408093          	addi	ra,ra,1140 # 100060 <tdat3>
   16bf4:	0020d183          	lhu	gp,2(ra)
   16bf8:	00000013          	nop
   16bfc:	00018313          	mv	t1,gp
   16c00:	0000feb7          	lui	t4,0xf
   16c04:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   16c08:	11d31c63          	bne	t1,t4,16d20 <fail>
   16c0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16c10:	00200293          	li	t0,2
   16c14:	fc521ce3          	bne	tp,t0,16bec <test_13+0x8>

00016c18 <test_14>:
   16c18:	00e00e13          	li	t3,14
   16c1c:	00000213          	li	tp,0
   16c20:	000e9097          	auipc	ra,0xe9
   16c24:	43c08093          	addi	ra,ra,1084 # 10005c <tdat>
   16c28:	0020d183          	lhu	gp,2(ra)
   16c2c:	00000013          	nop
   16c30:	00000013          	nop
   16c34:	00018313          	mv	t1,gp
   16c38:	00010eb7          	lui	t4,0x10
   16c3c:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   16c40:	0fd31063          	bne	t1,t4,16d20 <fail>
   16c44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16c48:	00200293          	li	t0,2
   16c4c:	fc521ae3          	bne	tp,t0,16c20 <test_14+0x8>

00016c50 <test_15>:
   16c50:	00f00e13          	li	t3,15
   16c54:	00000213          	li	tp,0
   16c58:	000e9097          	auipc	ra,0xe9
   16c5c:	40608093          	addi	ra,ra,1030 # 10005e <tdat2>
   16c60:	0020d183          	lhu	gp,2(ra)
   16c64:	00001eb7          	lui	t4,0x1
   16c68:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   16c6c:	0bd19a63          	bne	gp,t4,16d20 <fail>
   16c70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16c74:	00200293          	li	t0,2
   16c78:	fe5210e3          	bne	tp,t0,16c58 <test_15+0x8>

00016c7c <test_16>:
   16c7c:	01000e13          	li	t3,16
   16c80:	00000213          	li	tp,0
   16c84:	000e9097          	auipc	ra,0xe9
   16c88:	3dc08093          	addi	ra,ra,988 # 100060 <tdat3>
   16c8c:	00000013          	nop
   16c90:	0020d183          	lhu	gp,2(ra)
   16c94:	0000feb7          	lui	t4,0xf
   16c98:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   16c9c:	09d19263          	bne	gp,t4,16d20 <fail>
   16ca0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ca4:	00200293          	li	t0,2
   16ca8:	fc521ee3          	bne	tp,t0,16c84 <test_16+0x8>

00016cac <test_17>:
   16cac:	01100e13          	li	t3,17
   16cb0:	00000213          	li	tp,0
   16cb4:	000e9097          	auipc	ra,0xe9
   16cb8:	3a808093          	addi	ra,ra,936 # 10005c <tdat>
   16cbc:	00000013          	nop
   16cc0:	00000013          	nop
   16cc4:	0020d183          	lhu	gp,2(ra)
   16cc8:	00010eb7          	lui	t4,0x10
   16ccc:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   16cd0:	05d19863          	bne	gp,t4,16d20 <fail>
   16cd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16cd8:	00200293          	li	t0,2
   16cdc:	fc521ce3          	bne	tp,t0,16cb4 <test_17+0x8>

00016ce0 <test_18>:
   16ce0:	000e9197          	auipc	gp,0xe9
   16ce4:	37c18193          	addi	gp,gp,892 # 10005c <tdat>
   16ce8:	0001d103          	lhu	sp,0(gp)
   16cec:	00200113          	li	sp,2
   16cf0:	00200e93          	li	t4,2
   16cf4:	01200e13          	li	t3,18
   16cf8:	03d11463          	bne	sp,t4,16d20 <fail>

00016cfc <test_19>:
   16cfc:	000e9197          	auipc	gp,0xe9
   16d00:	36018193          	addi	gp,gp,864 # 10005c <tdat>
   16d04:	0001d103          	lhu	sp,0(gp)
   16d08:	00000013          	nop
   16d0c:	00200113          	li	sp,2
   16d10:	00200e93          	li	t4,2
   16d14:	01300e13          	li	t3,19
   16d18:	01d11463          	bne	sp,t4,16d20 <fail>
   16d1c:	05c01463          	bne	zero,t3,16d64 <pass>

00016d20 <fail>:
   16d20:	0ff00513          	li	a0,255

00016d24 <.delay_fail>:
   16d24:	fff50513          	addi	a0,a0,-1
   16d28:	fe051ee3          	bnez	a0,16d24 <.delay_fail>
   16d2c:	02000537          	lui	a0,0x2000
   16d30:	04500593          	li	a1,69
   16d34:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16d38:	05200613          	li	a2,82
   16d3c:	00c52023          	sw	a2,0(a0)
   16d40:	00c52023          	sw	a2,0(a0)
   16d44:	04f00693          	li	a3,79
   16d48:	00d52023          	sw	a3,0(a0)
   16d4c:	00c52023          	sw	a2,0(a0)
   16d50:	00d00713          	li	a4,13
   16d54:	00e52023          	sw	a4,0(a0)
   16d58:	00a00793          	li	a5,10
   16d5c:	00f52023          	sw	a5,0(a0)
   16d60:	bacf906f          	j	1010c <lhu_ret>

00016d64 <pass>:
   16d64:	0ff00513          	li	a0,255

00016d68 <.delay_ok>:
   16d68:	fff50513          	addi	a0,a0,-1
   16d6c:	fe051ee3          	bnez	a0,16d68 <.delay_ok>
   16d70:	02000537          	lui	a0,0x2000
   16d74:	04f00593          	li	a1,79
   16d78:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16d7c:	04b00613          	li	a2,75
   16d80:	00c52023          	sw	a2,0(a0)
   16d84:	00d00693          	li	a3,13
   16d88:	00d52023          	sw	a3,0(a0)
   16d8c:	00a00713          	li	a4,10
   16d90:	00e52023          	sw	a4,0(a0)
   16d94:	b78f906f          	j	1010c <lhu_ret>

00016d98 <lui>:
   16d98:	0ff00513          	li	a0,255

00016d9c <.delay_pr>:
   16d9c:	fff50513          	addi	a0,a0,-1
   16da0:	fe051ee3          	bnez	a0,16d9c <.delay_pr>
   16da4:	00017537          	lui	a0,0x17
   16da8:	dc450513          	addi	a0,a0,-572 # 16dc4 <.test_name>
   16dac:	02000637          	lui	a2,0x2000

00016db0 <.prname_next>:
   16db0:	00050583          	lb	a1,0(a0)
   16db4:	00058a63          	beqz	a1,16dc8 <.prname_done>
   16db8:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   16dbc:	00150513          	addi	a0,a0,1
   16dc0:	ff1ff06f          	j	16db0 <.prname_next>

00016dc4 <.test_name>:
   16dc4:	756c                	flw	fa1,108(a0)
   16dc6:	0069                	c.nop	26

00016dc8 <.prname_done>:
   16dc8:	02e00593          	li	a1,46
   16dcc:	00b62023          	sw	a1,0(a2)
   16dd0:	00b62023          	sw	a1,0(a2)

00016dd4 <test_2>:
   16dd4:	000000b7          	lui	ra,0x0
   16dd8:	00000e93          	li	t4,0
   16ddc:	00200e13          	li	t3,2
   16de0:	05d09a63          	bne	ra,t4,16e34 <fail>

00016de4 <test_3>:
   16de4:	fffff0b7          	lui	ra,0xfffff
   16de8:	4010d093          	srai	ra,ra,0x1
   16dec:	80000e93          	li	t4,-2048
   16df0:	00300e13          	li	t3,3
   16df4:	05d09063          	bne	ra,t4,16e34 <fail>

00016df8 <test_4>:
   16df8:	7ffff0b7          	lui	ra,0x7ffff
   16dfc:	4140d093          	srai	ra,ra,0x14
   16e00:	7ff00e93          	li	t4,2047
   16e04:	00400e13          	li	t3,4
   16e08:	03d09663          	bne	ra,t4,16e34 <fail>

00016e0c <test_5>:
   16e0c:	800000b7          	lui	ra,0x80000
   16e10:	4140d093          	srai	ra,ra,0x14
   16e14:	80000e93          	li	t4,-2048
   16e18:	00500e13          	li	t3,5
   16e1c:	01d09c63          	bne	ra,t4,16e34 <fail>

00016e20 <test_6>:
   16e20:	80000037          	lui	zero,0x80000
   16e24:	00000e93          	li	t4,0
   16e28:	00600e13          	li	t3,6
   16e2c:	01d01463          	bne	zero,t4,16e34 <fail>
   16e30:	05c01463          	bne	zero,t3,16e78 <pass>

00016e34 <fail>:
   16e34:	0ff00513          	li	a0,255

00016e38 <.delay_fail>:
   16e38:	fff50513          	addi	a0,a0,-1
   16e3c:	fe051ee3          	bnez	a0,16e38 <.delay_fail>
   16e40:	02000537          	lui	a0,0x2000
   16e44:	04500593          	li	a1,69
   16e48:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16e4c:	05200613          	li	a2,82
   16e50:	00c52023          	sw	a2,0(a0)
   16e54:	00c52023          	sw	a2,0(a0)
   16e58:	04f00693          	li	a3,79
   16e5c:	00d52023          	sw	a3,0(a0)
   16e60:	00c52023          	sw	a2,0(a0)
   16e64:	00d00713          	li	a4,13
   16e68:	00e52023          	sw	a4,0(a0)
   16e6c:	00a00793          	li	a5,10
   16e70:	00f52023          	sw	a5,0(a0)
   16e74:	a5cf906f          	j	100d0 <lui_ret>

00016e78 <pass>:
   16e78:	0ff00513          	li	a0,255

00016e7c <.delay_ok>:
   16e7c:	fff50513          	addi	a0,a0,-1
   16e80:	fe051ee3          	bnez	a0,16e7c <.delay_ok>
   16e84:	02000537          	lui	a0,0x2000
   16e88:	04f00593          	li	a1,79
   16e8c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16e90:	04b00613          	li	a2,75
   16e94:	00c52023          	sw	a2,0(a0)
   16e98:	00d00693          	li	a3,13
   16e9c:	00d52023          	sw	a3,0(a0)
   16ea0:	00a00713          	li	a4,10
   16ea4:	00e52023          	sw	a4,0(a0)
   16ea8:	a28f906f          	j	100d0 <lui_ret>

00016eac <simple>:
   16eac:	0ff00513          	li	a0,255

00016eb0 <.delay_pr>:
   16eb0:	fff50513          	addi	a0,a0,-1
   16eb4:	fe051ee3          	bnez	a0,16eb0 <.delay_pr>
   16eb8:	00017537          	lui	a0,0x17
   16ebc:	ed850513          	addi	a0,a0,-296 # 16ed8 <.test_name>
   16ec0:	02000637          	lui	a2,0x2000

00016ec4 <.prname_next>:
   16ec4:	00050583          	lb	a1,0(a0)
   16ec8:	00058c63          	beqz	a1,16ee0 <.prname_done>
   16ecc:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   16ed0:	00150513          	addi	a0,a0,1
   16ed4:	ff1ff06f          	j	16ec4 <.prname_next>

00016ed8 <.test_name>:
   16ed8:	706d6973          	csrrsi	s2,0x706,26
   16edc:	656c                	flw	fa1,76(a0)
	...

00016ee0 <.prname_done>:
   16ee0:	02e00593          	li	a1,46
   16ee4:	00b62023          	sw	a1,0(a2)
   16ee8:	00b62023          	sw	a1,0(a2)
   16eec:	0ff00513          	li	a0,255

00016ef0 <.delay_ok>:
   16ef0:	fff50513          	addi	a0,a0,-1
   16ef4:	fe051ee3          	bnez	a0,16ef0 <.delay_ok>
   16ef8:	02000537          	lui	a0,0x2000
   16efc:	04f00593          	li	a1,79
   16f00:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   16f04:	04b00613          	li	a2,75
   16f08:	00c52023          	sw	a2,0(a0)
   16f0c:	00d00693          	li	a3,13
   16f10:	00d52023          	sw	a3,0(a0)
   16f14:	00a00713          	li	a4,10
   16f18:	00e52023          	sw	a4,0(a0)
   16f1c:	a54f906f          	j	10170 <simple_ret>

00016f20 <sra>:
   16f20:	0ff00513          	li	a0,255

00016f24 <.delay_pr>:
   16f24:	fff50513          	addi	a0,a0,-1
   16f28:	fe051ee3          	bnez	a0,16f24 <.delay_pr>
   16f2c:	00017537          	lui	a0,0x17
   16f30:	f4c50513          	addi	a0,a0,-180 # 16f4c <.test_name>
   16f34:	02000637          	lui	a2,0x2000

00016f38 <.prname_next>:
   16f38:	00050583          	lb	a1,0(a0)
   16f3c:	00058a63          	beqz	a1,16f50 <.prname_done>
   16f40:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   16f44:	00150513          	addi	a0,a0,1
   16f48:	ff1ff06f          	j	16f38 <.prname_next>

00016f4c <.test_name>:
   16f4c:	00617273          	csrrci	tp,0x6,2

00016f50 <.prname_done>:
   16f50:	02e00593          	li	a1,46
   16f54:	00b62023          	sw	a1,0(a2)
   16f58:	00b62023          	sw	a1,0(a2)

00016f5c <test_2>:
   16f5c:	800000b7          	lui	ra,0x80000
   16f60:	00000113          	li	sp,0
   16f64:	4020d1b3          	sra	gp,ra,sp
   16f68:	80000eb7          	lui	t4,0x80000
   16f6c:	00200e13          	li	t3,2
   16f70:	59d19463          	bne	gp,t4,174f8 <fail>

00016f74 <test_3>:
   16f74:	800000b7          	lui	ra,0x80000
   16f78:	00100113          	li	sp,1
   16f7c:	4020d1b3          	sra	gp,ra,sp
   16f80:	c0000eb7          	lui	t4,0xc0000
   16f84:	00300e13          	li	t3,3
   16f88:	57d19863          	bne	gp,t4,174f8 <fail>

00016f8c <test_4>:
   16f8c:	800000b7          	lui	ra,0x80000
   16f90:	00700113          	li	sp,7
   16f94:	4020d1b3          	sra	gp,ra,sp
   16f98:	ff000eb7          	lui	t4,0xff000
   16f9c:	00400e13          	li	t3,4
   16fa0:	55d19c63          	bne	gp,t4,174f8 <fail>

00016fa4 <test_5>:
   16fa4:	800000b7          	lui	ra,0x80000
   16fa8:	00e00113          	li	sp,14
   16fac:	4020d1b3          	sra	gp,ra,sp
   16fb0:	fffe0eb7          	lui	t4,0xfffe0
   16fb4:	00500e13          	li	t3,5
   16fb8:	55d19063          	bne	gp,t4,174f8 <fail>

00016fbc <test_6>:
   16fbc:	800000b7          	lui	ra,0x80000
   16fc0:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0x7fefff91>
   16fc4:	01f00113          	li	sp,31
   16fc8:	4020d1b3          	sra	gp,ra,sp
   16fcc:	fff00e93          	li	t4,-1
   16fd0:	00600e13          	li	t3,6
   16fd4:	53d19263          	bne	gp,t4,174f8 <fail>

00016fd8 <test_7>:
   16fd8:	800000b7          	lui	ra,0x80000
   16fdc:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   16fe0:	00000113          	li	sp,0
   16fe4:	4020d1b3          	sra	gp,ra,sp
   16fe8:	80000eb7          	lui	t4,0x80000
   16fec:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0x7fefff8f>
   16ff0:	00700e13          	li	t3,7
   16ff4:	51d19263          	bne	gp,t4,174f8 <fail>

00016ff8 <test_8>:
   16ff8:	800000b7          	lui	ra,0x80000
   16ffc:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   17000:	00100113          	li	sp,1
   17004:	4020d1b3          	sra	gp,ra,sp
   17008:	40000eb7          	lui	t4,0x40000
   1700c:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_edata+0x3fefff8f>
   17010:	00800e13          	li	t3,8
   17014:	4fd19263          	bne	gp,t4,174f8 <fail>

00017018 <test_9>:
   17018:	800000b7          	lui	ra,0x80000
   1701c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   17020:	00700113          	li	sp,7
   17024:	4020d1b3          	sra	gp,ra,sp
   17028:	01000eb7          	lui	t4,0x1000
   1702c:	fffe8e93          	addi	t4,t4,-1 # ffffff <_edata+0xefff8f>
   17030:	00900e13          	li	t3,9
   17034:	4dd19263          	bne	gp,t4,174f8 <fail>

00017038 <test_10>:
   17038:	800000b7          	lui	ra,0x80000
   1703c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   17040:	00e00113          	li	sp,14
   17044:	4020d1b3          	sra	gp,ra,sp
   17048:	00020eb7          	lui	t4,0x20
   1704c:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x619b>
   17050:	00a00e13          	li	t3,10
   17054:	4bd19263          	bne	gp,t4,174f8 <fail>

00017058 <test_11>:
   17058:	800000b7          	lui	ra,0x80000
   1705c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   17060:	01f00113          	li	sp,31
   17064:	4020d1b3          	sra	gp,ra,sp
   17068:	00000e93          	li	t4,0
   1706c:	00b00e13          	li	t3,11
   17070:	49d19463          	bne	gp,t4,174f8 <fail>

00017074 <test_12>:
   17074:	818180b7          	lui	ra,0x81818
   17078:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   1707c:	00000113          	li	sp,0
   17080:	4020d1b3          	sra	gp,ra,sp
   17084:	81818eb7          	lui	t4,0x81818
   17088:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x81718111>
   1708c:	00c00e13          	li	t3,12
   17090:	47d19463          	bne	gp,t4,174f8 <fail>

00017094 <test_13>:
   17094:	818180b7          	lui	ra,0x81818
   17098:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   1709c:	00100113          	li	sp,1
   170a0:	4020d1b3          	sra	gp,ra,sp
   170a4:	c0c0ceb7          	lui	t4,0xc0c0c
   170a8:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0xc0b0c050>
   170ac:	00d00e13          	li	t3,13
   170b0:	45d19463          	bne	gp,t4,174f8 <fail>

000170b4 <test_14>:
   170b4:	818180b7          	lui	ra,0x81818
   170b8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   170bc:	00700113          	li	sp,7
   170c0:	4020d1b3          	sra	gp,ra,sp
   170c4:	ff030eb7          	lui	t4,0xff030
   170c8:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0xfef30293>
   170cc:	00e00e13          	li	t3,14
   170d0:	43d19463          	bne	gp,t4,174f8 <fail>

000170d4 <test_15>:
   170d4:	818180b7          	lui	ra,0x81818
   170d8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   170dc:	00e00113          	li	sp,14
   170e0:	4020d1b3          	sra	gp,ra,sp
   170e4:	fffe0eb7          	lui	t4,0xfffe0
   170e8:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0xffee0596>
   170ec:	00f00e13          	li	t3,15
   170f0:	41d19463          	bne	gp,t4,174f8 <fail>

000170f4 <test_16>:
   170f4:	818180b7          	lui	ra,0x81818
   170f8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   170fc:	01f00113          	li	sp,31
   17100:	4020d1b3          	sra	gp,ra,sp
   17104:	fff00e93          	li	t4,-1
   17108:	01000e13          	li	t3,16
   1710c:	3fd19663          	bne	gp,t4,174f8 <fail>

00017110 <test_17>:
   17110:	818180b7          	lui	ra,0x81818
   17114:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   17118:	fc000113          	li	sp,-64
   1711c:	4020d1b3          	sra	gp,ra,sp
   17120:	81818eb7          	lui	t4,0x81818
   17124:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x81718111>
   17128:	01100e13          	li	t3,17
   1712c:	3dd19663          	bne	gp,t4,174f8 <fail>

00017130 <test_18>:
   17130:	818180b7          	lui	ra,0x81818
   17134:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   17138:	fc100113          	li	sp,-63
   1713c:	4020d1b3          	sra	gp,ra,sp
   17140:	c0c0ceb7          	lui	t4,0xc0c0c
   17144:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0xc0b0c050>
   17148:	01200e13          	li	t3,18
   1714c:	3bd19663          	bne	gp,t4,174f8 <fail>

00017150 <test_19>:
   17150:	818180b7          	lui	ra,0x81818
   17154:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   17158:	fc700113          	li	sp,-57
   1715c:	4020d1b3          	sra	gp,ra,sp
   17160:	ff030eb7          	lui	t4,0xff030
   17164:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0xfef30293>
   17168:	01300e13          	li	t3,19
   1716c:	39d19663          	bne	gp,t4,174f8 <fail>

00017170 <test_20>:
   17170:	818180b7          	lui	ra,0x81818
   17174:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   17178:	fce00113          	li	sp,-50
   1717c:	4020d1b3          	sra	gp,ra,sp
   17180:	fffe0eb7          	lui	t4,0xfffe0
   17184:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0xffee0596>
   17188:	01400e13          	li	t3,20
   1718c:	37d19663          	bne	gp,t4,174f8 <fail>

00017190 <test_21>:
   17190:	818180b7          	lui	ra,0x81818
   17194:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x81718111>
   17198:	fff00113          	li	sp,-1
   1719c:	4020d1b3          	sra	gp,ra,sp
   171a0:	fff00e93          	li	t4,-1
   171a4:	01500e13          	li	t3,21
   171a8:	35d19863          	bne	gp,t4,174f8 <fail>

000171ac <test_22>:
   171ac:	800000b7          	lui	ra,0x80000
   171b0:	00700113          	li	sp,7
   171b4:	4020d0b3          	sra	ra,ra,sp
   171b8:	ff000eb7          	lui	t4,0xff000
   171bc:	01600e13          	li	t3,22
   171c0:	33d09c63          	bne	ra,t4,174f8 <fail>

000171c4 <test_23>:
   171c4:	800000b7          	lui	ra,0x80000
   171c8:	00e00113          	li	sp,14
   171cc:	4020d133          	sra	sp,ra,sp
   171d0:	fffe0eb7          	lui	t4,0xfffe0
   171d4:	01700e13          	li	t3,23
   171d8:	33d11063          	bne	sp,t4,174f8 <fail>

000171dc <test_24>:
   171dc:	00700093          	li	ra,7
   171e0:	4010d0b3          	sra	ra,ra,ra
   171e4:	00000e93          	li	t4,0
   171e8:	01800e13          	li	t3,24
   171ec:	31d09663          	bne	ra,t4,174f8 <fail>

000171f0 <test_25>:
   171f0:	00000213          	li	tp,0
   171f4:	800000b7          	lui	ra,0x80000
   171f8:	00700113          	li	sp,7
   171fc:	4020d1b3          	sra	gp,ra,sp
   17200:	00018313          	mv	t1,gp
   17204:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17208:	00200293          	li	t0,2
   1720c:	fe5214e3          	bne	tp,t0,171f4 <test_25+0x4>
   17210:	ff000eb7          	lui	t4,0xff000
   17214:	01900e13          	li	t3,25
   17218:	2fd31063          	bne	t1,t4,174f8 <fail>

0001721c <test_26>:
   1721c:	00000213          	li	tp,0
   17220:	800000b7          	lui	ra,0x80000
   17224:	00e00113          	li	sp,14
   17228:	4020d1b3          	sra	gp,ra,sp
   1722c:	00000013          	nop
   17230:	00018313          	mv	t1,gp
   17234:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17238:	00200293          	li	t0,2
   1723c:	fe5212e3          	bne	tp,t0,17220 <test_26+0x4>
   17240:	fffe0eb7          	lui	t4,0xfffe0
   17244:	01a00e13          	li	t3,26
   17248:	2bd31863          	bne	t1,t4,174f8 <fail>

0001724c <test_27>:
   1724c:	00000213          	li	tp,0
   17250:	800000b7          	lui	ra,0x80000
   17254:	01f00113          	li	sp,31
   17258:	4020d1b3          	sra	gp,ra,sp
   1725c:	00000013          	nop
   17260:	00000013          	nop
   17264:	00018313          	mv	t1,gp
   17268:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1726c:	00200293          	li	t0,2
   17270:	fe5210e3          	bne	tp,t0,17250 <test_27+0x4>
   17274:	fff00e93          	li	t4,-1
   17278:	01b00e13          	li	t3,27
   1727c:	27d31e63          	bne	t1,t4,174f8 <fail>

00017280 <test_28>:
   17280:	00000213          	li	tp,0
   17284:	800000b7          	lui	ra,0x80000
   17288:	00700113          	li	sp,7
   1728c:	4020d1b3          	sra	gp,ra,sp
   17290:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17294:	00200293          	li	t0,2
   17298:	fe5216e3          	bne	tp,t0,17284 <test_28+0x4>
   1729c:	ff000eb7          	lui	t4,0xff000
   172a0:	01c00e13          	li	t3,28
   172a4:	25d19a63          	bne	gp,t4,174f8 <fail>

000172a8 <test_29>:
   172a8:	00000213          	li	tp,0
   172ac:	800000b7          	lui	ra,0x80000
   172b0:	00e00113          	li	sp,14
   172b4:	00000013          	nop
   172b8:	4020d1b3          	sra	gp,ra,sp
   172bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172c0:	00200293          	li	t0,2
   172c4:	fe5214e3          	bne	tp,t0,172ac <test_29+0x4>
   172c8:	fffe0eb7          	lui	t4,0xfffe0
   172cc:	01d00e13          	li	t3,29
   172d0:	23d19463          	bne	gp,t4,174f8 <fail>

000172d4 <test_30>:
   172d4:	00000213          	li	tp,0
   172d8:	800000b7          	lui	ra,0x80000
   172dc:	01f00113          	li	sp,31
   172e0:	00000013          	nop
   172e4:	00000013          	nop
   172e8:	4020d1b3          	sra	gp,ra,sp
   172ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172f0:	00200293          	li	t0,2
   172f4:	fe5212e3          	bne	tp,t0,172d8 <test_30+0x4>
   172f8:	fff00e93          	li	t4,-1
   172fc:	01e00e13          	li	t3,30
   17300:	1fd19c63          	bne	gp,t4,174f8 <fail>

00017304 <test_31>:
   17304:	00000213          	li	tp,0
   17308:	800000b7          	lui	ra,0x80000
   1730c:	00000013          	nop
   17310:	00700113          	li	sp,7
   17314:	4020d1b3          	sra	gp,ra,sp
   17318:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1731c:	00200293          	li	t0,2
   17320:	fe5214e3          	bne	tp,t0,17308 <test_31+0x4>
   17324:	ff000eb7          	lui	t4,0xff000
   17328:	01f00e13          	li	t3,31
   1732c:	1dd19663          	bne	gp,t4,174f8 <fail>

00017330 <test_32>:
   17330:	00000213          	li	tp,0
   17334:	800000b7          	lui	ra,0x80000
   17338:	00000013          	nop
   1733c:	00e00113          	li	sp,14
   17340:	00000013          	nop
   17344:	4020d1b3          	sra	gp,ra,sp
   17348:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1734c:	00200293          	li	t0,2
   17350:	fe5212e3          	bne	tp,t0,17334 <test_32+0x4>
   17354:	fffe0eb7          	lui	t4,0xfffe0
   17358:	02000e13          	li	t3,32
   1735c:	19d19e63          	bne	gp,t4,174f8 <fail>

00017360 <test_33>:
   17360:	00000213          	li	tp,0
   17364:	800000b7          	lui	ra,0x80000
   17368:	00000013          	nop
   1736c:	00000013          	nop
   17370:	01f00113          	li	sp,31
   17374:	4020d1b3          	sra	gp,ra,sp
   17378:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1737c:	00200293          	li	t0,2
   17380:	fe5212e3          	bne	tp,t0,17364 <test_33+0x4>
   17384:	fff00e93          	li	t4,-1
   17388:	02100e13          	li	t3,33
   1738c:	17d19663          	bne	gp,t4,174f8 <fail>

00017390 <test_34>:
   17390:	00000213          	li	tp,0
   17394:	00700113          	li	sp,7
   17398:	800000b7          	lui	ra,0x80000
   1739c:	4020d1b3          	sra	gp,ra,sp
   173a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   173a4:	00200293          	li	t0,2
   173a8:	fe5216e3          	bne	tp,t0,17394 <test_34+0x4>
   173ac:	ff000eb7          	lui	t4,0xff000
   173b0:	02200e13          	li	t3,34
   173b4:	15d19263          	bne	gp,t4,174f8 <fail>

000173b8 <test_35>:
   173b8:	00000213          	li	tp,0
   173bc:	00e00113          	li	sp,14
   173c0:	800000b7          	lui	ra,0x80000
   173c4:	00000013          	nop
   173c8:	4020d1b3          	sra	gp,ra,sp
   173cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   173d0:	00200293          	li	t0,2
   173d4:	fe5214e3          	bne	tp,t0,173bc <test_35+0x4>
   173d8:	fffe0eb7          	lui	t4,0xfffe0
   173dc:	02300e13          	li	t3,35
   173e0:	11d19c63          	bne	gp,t4,174f8 <fail>

000173e4 <test_36>:
   173e4:	00000213          	li	tp,0
   173e8:	01f00113          	li	sp,31
   173ec:	800000b7          	lui	ra,0x80000
   173f0:	00000013          	nop
   173f4:	00000013          	nop
   173f8:	4020d1b3          	sra	gp,ra,sp
   173fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17400:	00200293          	li	t0,2
   17404:	fe5212e3          	bne	tp,t0,173e8 <test_36+0x4>
   17408:	fff00e93          	li	t4,-1
   1740c:	02400e13          	li	t3,36
   17410:	0fd19463          	bne	gp,t4,174f8 <fail>

00017414 <test_37>:
   17414:	00000213          	li	tp,0
   17418:	00700113          	li	sp,7
   1741c:	00000013          	nop
   17420:	800000b7          	lui	ra,0x80000
   17424:	4020d1b3          	sra	gp,ra,sp
   17428:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1742c:	00200293          	li	t0,2
   17430:	fe5214e3          	bne	tp,t0,17418 <test_37+0x4>
   17434:	ff000eb7          	lui	t4,0xff000
   17438:	02500e13          	li	t3,37
   1743c:	0bd19e63          	bne	gp,t4,174f8 <fail>

00017440 <test_38>:
   17440:	00000213          	li	tp,0
   17444:	00e00113          	li	sp,14
   17448:	00000013          	nop
   1744c:	800000b7          	lui	ra,0x80000
   17450:	00000013          	nop
   17454:	4020d1b3          	sra	gp,ra,sp
   17458:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1745c:	00200293          	li	t0,2
   17460:	fe5212e3          	bne	tp,t0,17444 <test_38+0x4>
   17464:	fffe0eb7          	lui	t4,0xfffe0
   17468:	02600e13          	li	t3,38
   1746c:	09d19663          	bne	gp,t4,174f8 <fail>

00017470 <test_39>:
   17470:	00000213          	li	tp,0
   17474:	01f00113          	li	sp,31
   17478:	00000013          	nop
   1747c:	00000013          	nop
   17480:	800000b7          	lui	ra,0x80000
   17484:	4020d1b3          	sra	gp,ra,sp
   17488:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1748c:	00200293          	li	t0,2
   17490:	fe5212e3          	bne	tp,t0,17474 <test_39+0x4>
   17494:	fff00e93          	li	t4,-1
   17498:	02700e13          	li	t3,39
   1749c:	05d19e63          	bne	gp,t4,174f8 <fail>

000174a0 <test_40>:
   174a0:	00f00093          	li	ra,15
   174a4:	40105133          	sra	sp,zero,ra
   174a8:	00000e93          	li	t4,0
   174ac:	02800e13          	li	t3,40
   174b0:	05d11463          	bne	sp,t4,174f8 <fail>

000174b4 <test_41>:
   174b4:	02000093          	li	ra,32
   174b8:	4000d133          	sra	sp,ra,zero
   174bc:	02000e93          	li	t4,32
   174c0:	02900e13          	li	t3,41
   174c4:	03d11a63          	bne	sp,t4,174f8 <fail>

000174c8 <test_42>:
   174c8:	400050b3          	sra	ra,zero,zero
   174cc:	00000e93          	li	t4,0
   174d0:	02a00e13          	li	t3,42
   174d4:	03d09263          	bne	ra,t4,174f8 <fail>

000174d8 <test_43>:
   174d8:	40000093          	li	ra,1024
   174dc:	00001137          	lui	sp,0x1
   174e0:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   174e4:	4020d033          	sra	zero,ra,sp
   174e8:	00000e93          	li	t4,0
   174ec:	02b00e13          	li	t3,43
   174f0:	01d01463          	bne	zero,t4,174f8 <fail>
   174f4:	05c01463          	bne	zero,t3,1753c <pass>

000174f8 <fail>:
   174f8:	0ff00513          	li	a0,255

000174fc <.delay_fail>:
   174fc:	fff50513          	addi	a0,a0,-1
   17500:	fe051ee3          	bnez	a0,174fc <.delay_fail>
   17504:	02000537          	lui	a0,0x2000
   17508:	04500593          	li	a1,69
   1750c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17510:	05200613          	li	a2,82
   17514:	00c52023          	sw	a2,0(a0)
   17518:	00c52023          	sw	a2,0(a0)
   1751c:	04f00693          	li	a3,79
   17520:	00d52023          	sw	a3,0(a0)
   17524:	00c52023          	sw	a2,0(a0)
   17528:	00d00713          	li	a4,13
   1752c:	00e52023          	sw	a4,0(a0)
   17530:	00a00793          	li	a5,10
   17534:	00f52023          	sw	a5,0(a0)
   17538:	c1df806f          	j	10154 <sra_ret>

0001753c <pass>:
   1753c:	0ff00513          	li	a0,255

00017540 <.delay_ok>:
   17540:	fff50513          	addi	a0,a0,-1
   17544:	fe051ee3          	bnez	a0,17540 <.delay_ok>
   17548:	02000537          	lui	a0,0x2000
   1754c:	04f00593          	li	a1,79
   17550:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17554:	04b00613          	li	a2,75
   17558:	00c52023          	sw	a2,0(a0)
   1755c:	00d00693          	li	a3,13
   17560:	00d52023          	sw	a3,0(a0)
   17564:	00a00713          	li	a4,10
   17568:	00e52023          	sw	a4,0(a0)
   1756c:	be9f806f          	j	10154 <sra_ret>

00017570 <and>:
   17570:	0ff00513          	li	a0,255

00017574 <.delay_pr>:
   17574:	fff50513          	addi	a0,a0,-1
   17578:	fe051ee3          	bnez	a0,17574 <.delay_pr>
   1757c:	00017537          	lui	a0,0x17
   17580:	59c50513          	addi	a0,a0,1436 # 1759c <.test_name>
   17584:	02000637          	lui	a2,0x2000

00017588 <.prname_next>:
   17588:	00050583          	lb	a1,0(a0)
   1758c:	00058a63          	beqz	a1,175a0 <.prname_done>
   17590:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   17594:	00150513          	addi	a0,a0,1
   17598:	ff1ff06f          	j	17588 <.prname_next>

0001759c <.test_name>:
   1759c:	6e61                	lui	t3,0x18
   1759e:	0064                	addi	s1,sp,12

000175a0 <.prname_done>:
   175a0:	02e00593          	li	a1,46
   175a4:	00b62023          	sw	a1,0(a2)
   175a8:	00b62023          	sw	a1,0(a2)

000175ac <test_2>:
   175ac:	ff0100b7          	lui	ra,0xff010
   175b0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   175b4:	0f0f1137          	lui	sp,0xf0f1
   175b8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   175bc:	0020f1b3          	and	gp,ra,sp
   175c0:	0f001eb7          	lui	t4,0xf001
   175c4:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_edata+0xef00e90>
   175c8:	00200e13          	li	t3,2
   175cc:	49d19c63          	bne	gp,t4,17a64 <fail>

000175d0 <test_3>:
   175d0:	0ff010b7          	lui	ra,0xff01
   175d4:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   175d8:	f0f0f137          	lui	sp,0xf0f0f
   175dc:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   175e0:	0020f1b3          	and	gp,ra,sp
   175e4:	00f00eb7          	lui	t4,0xf00
   175e8:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_edata+0xe00080>
   175ec:	00300e13          	li	t3,3
   175f0:	47d19a63          	bne	gp,t4,17a64 <fail>

000175f4 <test_4>:
   175f4:	00ff00b7          	lui	ra,0xff0
   175f8:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   175fc:	0f0f1137          	lui	sp,0xf0f1
   17600:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   17604:	0020f1b3          	and	gp,ra,sp
   17608:	000f0eb7          	lui	t4,0xf0
   1760c:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd61ab>
   17610:	00400e13          	li	t3,4
   17614:	45d19863          	bne	gp,t4,17a64 <fail>

00017618 <test_5>:
   17618:	f00ff0b7          	lui	ra,0xf00ff
   1761c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   17620:	f0f0f137          	lui	sp,0xf0f0f
   17624:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   17628:	0020f1b3          	and	gp,ra,sp
   1762c:	f000feb7          	lui	t4,0xf000f
   17630:	00500e13          	li	t3,5
   17634:	43d19863          	bne	gp,t4,17a64 <fail>

00017638 <test_6>:
   17638:	ff0100b7          	lui	ra,0xff010
   1763c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   17640:	0f0f1137          	lui	sp,0xf0f1
   17644:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   17648:	0020f0b3          	and	ra,ra,sp
   1764c:	0f001eb7          	lui	t4,0xf001
   17650:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_edata+0xef00e90>
   17654:	00600e13          	li	t3,6
   17658:	41d09663          	bne	ra,t4,17a64 <fail>

0001765c <test_7>:
   1765c:	0ff010b7          	lui	ra,0xff01
   17660:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   17664:	f0f0f137          	lui	sp,0xf0f0f
   17668:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   1766c:	0020f133          	and	sp,ra,sp
   17670:	00f00eb7          	lui	t4,0xf00
   17674:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_edata+0xe00080>
   17678:	00700e13          	li	t3,7
   1767c:	3fd11463          	bne	sp,t4,17a64 <fail>

00017680 <test_8>:
   17680:	ff0100b7          	lui	ra,0xff010
   17684:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   17688:	0010f0b3          	and	ra,ra,ra
   1768c:	ff010eb7          	lui	t4,0xff010
   17690:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   17694:	00800e13          	li	t3,8
   17698:	3dd09663          	bne	ra,t4,17a64 <fail>

0001769c <test_9>:
   1769c:	00000213          	li	tp,0
   176a0:	ff0100b7          	lui	ra,0xff010
   176a4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   176a8:	0f0f1137          	lui	sp,0xf0f1
   176ac:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   176b0:	0020f1b3          	and	gp,ra,sp
   176b4:	00018313          	mv	t1,gp
   176b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   176bc:	00200293          	li	t0,2
   176c0:	fe5210e3          	bne	tp,t0,176a0 <test_9+0x4>
   176c4:	0f001eb7          	lui	t4,0xf001
   176c8:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_edata+0xef00e90>
   176cc:	00900e13          	li	t3,9
   176d0:	39d31a63          	bne	t1,t4,17a64 <fail>

000176d4 <test_10>:
   176d4:	00000213          	li	tp,0
   176d8:	0ff010b7          	lui	ra,0xff01
   176dc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   176e0:	f0f0f137          	lui	sp,0xf0f0f
   176e4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   176e8:	0020f1b3          	and	gp,ra,sp
   176ec:	00000013          	nop
   176f0:	00018313          	mv	t1,gp
   176f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   176f8:	00200293          	li	t0,2
   176fc:	fc521ee3          	bne	tp,t0,176d8 <test_10+0x4>
   17700:	00f00eb7          	lui	t4,0xf00
   17704:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_edata+0xe00080>
   17708:	00a00e13          	li	t3,10
   1770c:	35d31c63          	bne	t1,t4,17a64 <fail>

00017710 <test_11>:
   17710:	00000213          	li	tp,0
   17714:	00ff00b7          	lui	ra,0xff0
   17718:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   1771c:	0f0f1137          	lui	sp,0xf0f1
   17720:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   17724:	0020f1b3          	and	gp,ra,sp
   17728:	00000013          	nop
   1772c:	00000013          	nop
   17730:	00018313          	mv	t1,gp
   17734:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17738:	00200293          	li	t0,2
   1773c:	fc521ce3          	bne	tp,t0,17714 <test_11+0x4>
   17740:	000f0eb7          	lui	t4,0xf0
   17744:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd61ab>
   17748:	00b00e13          	li	t3,11
   1774c:	31d31c63          	bne	t1,t4,17a64 <fail>

00017750 <test_12>:
   17750:	00000213          	li	tp,0
   17754:	ff0100b7          	lui	ra,0xff010
   17758:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   1775c:	0f0f1137          	lui	sp,0xf0f1
   17760:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   17764:	0020f1b3          	and	gp,ra,sp
   17768:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1776c:	00200293          	li	t0,2
   17770:	fe5212e3          	bne	tp,t0,17754 <test_12+0x4>
   17774:	0f001eb7          	lui	t4,0xf001
   17778:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_edata+0xef00e90>
   1777c:	00c00e13          	li	t3,12
   17780:	2fd19263          	bne	gp,t4,17a64 <fail>

00017784 <test_13>:
   17784:	00000213          	li	tp,0
   17788:	0ff010b7          	lui	ra,0xff01
   1778c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   17790:	f0f0f137          	lui	sp,0xf0f0f
   17794:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   17798:	00000013          	nop
   1779c:	0020f1b3          	and	gp,ra,sp
   177a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   177a4:	00200293          	li	t0,2
   177a8:	fe5210e3          	bne	tp,t0,17788 <test_13+0x4>
   177ac:	00f00eb7          	lui	t4,0xf00
   177b0:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_edata+0xe00080>
   177b4:	00d00e13          	li	t3,13
   177b8:	2bd19663          	bne	gp,t4,17a64 <fail>

000177bc <test_14>:
   177bc:	00000213          	li	tp,0
   177c0:	00ff00b7          	lui	ra,0xff0
   177c4:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   177c8:	0f0f1137          	lui	sp,0xf0f1
   177cc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   177d0:	00000013          	nop
   177d4:	00000013          	nop
   177d8:	0020f1b3          	and	gp,ra,sp
   177dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   177e0:	00200293          	li	t0,2
   177e4:	fc521ee3          	bne	tp,t0,177c0 <test_14+0x4>
   177e8:	000f0eb7          	lui	t4,0xf0
   177ec:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd61ab>
   177f0:	00e00e13          	li	t3,14
   177f4:	27d19863          	bne	gp,t4,17a64 <fail>

000177f8 <test_15>:
   177f8:	00000213          	li	tp,0
   177fc:	ff0100b7          	lui	ra,0xff010
   17800:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   17804:	00000013          	nop
   17808:	0f0f1137          	lui	sp,0xf0f1
   1780c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   17810:	0020f1b3          	and	gp,ra,sp
   17814:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17818:	00200293          	li	t0,2
   1781c:	fe5210e3          	bne	tp,t0,177fc <test_15+0x4>
   17820:	0f001eb7          	lui	t4,0xf001
   17824:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_edata+0xef00e90>
   17828:	00f00e13          	li	t3,15
   1782c:	23d19c63          	bne	gp,t4,17a64 <fail>

00017830 <test_16>:
   17830:	00000213          	li	tp,0
   17834:	0ff010b7          	lui	ra,0xff01
   17838:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   1783c:	00000013          	nop
   17840:	f0f0f137          	lui	sp,0xf0f0f
   17844:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   17848:	00000013          	nop
   1784c:	0020f1b3          	and	gp,ra,sp
   17850:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17854:	00200293          	li	t0,2
   17858:	fc521ee3          	bne	tp,t0,17834 <test_16+0x4>
   1785c:	00f00eb7          	lui	t4,0xf00
   17860:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_edata+0xe00080>
   17864:	01000e13          	li	t3,16
   17868:	1fd19e63          	bne	gp,t4,17a64 <fail>

0001786c <test_17>:
   1786c:	00000213          	li	tp,0
   17870:	00ff00b7          	lui	ra,0xff0
   17874:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   17878:	00000013          	nop
   1787c:	00000013          	nop
   17880:	0f0f1137          	lui	sp,0xf0f1
   17884:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   17888:	0020f1b3          	and	gp,ra,sp
   1788c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17890:	00200293          	li	t0,2
   17894:	fc521ee3          	bne	tp,t0,17870 <test_17+0x4>
   17898:	000f0eb7          	lui	t4,0xf0
   1789c:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd61ab>
   178a0:	01100e13          	li	t3,17
   178a4:	1dd19063          	bne	gp,t4,17a64 <fail>

000178a8 <test_18>:
   178a8:	00000213          	li	tp,0
   178ac:	0f0f1137          	lui	sp,0xf0f1
   178b0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   178b4:	ff0100b7          	lui	ra,0xff010
   178b8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   178bc:	0020f1b3          	and	gp,ra,sp
   178c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   178c4:	00200293          	li	t0,2
   178c8:	fe5212e3          	bne	tp,t0,178ac <test_18+0x4>
   178cc:	0f001eb7          	lui	t4,0xf001
   178d0:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_edata+0xef00e90>
   178d4:	01200e13          	li	t3,18
   178d8:	19d19663          	bne	gp,t4,17a64 <fail>

000178dc <test_19>:
   178dc:	00000213          	li	tp,0
   178e0:	f0f0f137          	lui	sp,0xf0f0f
   178e4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   178e8:	0ff010b7          	lui	ra,0xff01
   178ec:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   178f0:	00000013          	nop
   178f4:	0020f1b3          	and	gp,ra,sp
   178f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   178fc:	00200293          	li	t0,2
   17900:	fe5210e3          	bne	tp,t0,178e0 <test_19+0x4>
   17904:	00f00eb7          	lui	t4,0xf00
   17908:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_edata+0xe00080>
   1790c:	01300e13          	li	t3,19
   17910:	15d19a63          	bne	gp,t4,17a64 <fail>

00017914 <test_20>:
   17914:	00000213          	li	tp,0
   17918:	0f0f1137          	lui	sp,0xf0f1
   1791c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   17920:	00ff00b7          	lui	ra,0xff0
   17924:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   17928:	00000013          	nop
   1792c:	00000013          	nop
   17930:	0020f1b3          	and	gp,ra,sp
   17934:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17938:	00200293          	li	t0,2
   1793c:	fc521ee3          	bne	tp,t0,17918 <test_20+0x4>
   17940:	000f0eb7          	lui	t4,0xf0
   17944:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd61ab>
   17948:	01400e13          	li	t3,20
   1794c:	11d19c63          	bne	gp,t4,17a64 <fail>

00017950 <test_21>:
   17950:	00000213          	li	tp,0
   17954:	0f0f1137          	lui	sp,0xf0f1
   17958:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   1795c:	00000013          	nop
   17960:	ff0100b7          	lui	ra,0xff010
   17964:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   17968:	0020f1b3          	and	gp,ra,sp
   1796c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17970:	00200293          	li	t0,2
   17974:	fe5210e3          	bne	tp,t0,17954 <test_21+0x4>
   17978:	0f001eb7          	lui	t4,0xf001
   1797c:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_edata+0xef00e90>
   17980:	01500e13          	li	t3,21
   17984:	0fd19063          	bne	gp,t4,17a64 <fail>

00017988 <test_22>:
   17988:	00000213          	li	tp,0
   1798c:	f0f0f137          	lui	sp,0xf0f0f
   17990:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0xf0e0f080>
   17994:	00000013          	nop
   17998:	0ff010b7          	lui	ra,0xff01
   1799c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   179a0:	00000013          	nop
   179a4:	0020f1b3          	and	gp,ra,sp
   179a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   179ac:	00200293          	li	t0,2
   179b0:	fc521ee3          	bne	tp,t0,1798c <test_22+0x4>
   179b4:	00f00eb7          	lui	t4,0xf00
   179b8:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_edata+0xe00080>
   179bc:	01600e13          	li	t3,22
   179c0:	0bd19263          	bne	gp,t4,17a64 <fail>

000179c4 <test_23>:
   179c4:	00000213          	li	tp,0
   179c8:	0f0f1137          	lui	sp,0xf0f1
   179cc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_edata+0xeff0e9f>
   179d0:	00000013          	nop
   179d4:	00000013          	nop
   179d8:	00ff00b7          	lui	ra,0xff0
   179dc:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   179e0:	0020f1b3          	and	gp,ra,sp
   179e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   179e8:	00200293          	li	t0,2
   179ec:	fc521ee3          	bne	tp,t0,179c8 <test_23+0x4>
   179f0:	000f0eb7          	lui	t4,0xf0
   179f4:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd61ab>
   179f8:	01700e13          	li	t3,23
   179fc:	07d19463          	bne	gp,t4,17a64 <fail>

00017a00 <test_24>:
   17a00:	ff0100b7          	lui	ra,0xff010
   17a04:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   17a08:	00107133          	and	sp,zero,ra
   17a0c:	00000e93          	li	t4,0
   17a10:	01800e13          	li	t3,24
   17a14:	05d11863          	bne	sp,t4,17a64 <fail>

00017a18 <test_25>:
   17a18:	00ff00b7          	lui	ra,0xff0
   17a1c:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   17a20:	0000f133          	and	sp,ra,zero
   17a24:	00000e93          	li	t4,0
   17a28:	01900e13          	li	t3,25
   17a2c:	03d11c63          	bne	sp,t4,17a64 <fail>

00017a30 <test_26>:
   17a30:	000070b3          	and	ra,zero,zero
   17a34:	00000e93          	li	t4,0
   17a38:	01a00e13          	li	t3,26
   17a3c:	03d09463          	bne	ra,t4,17a64 <fail>

00017a40 <test_27>:
   17a40:	111110b7          	lui	ra,0x11111
   17a44:	11108093          	addi	ra,ra,273 # 11111111 <_edata+0x110110a1>
   17a48:	22222137          	lui	sp,0x22222
   17a4c:	22210113          	addi	sp,sp,546 # 22222222 <_edata+0x221221b2>
   17a50:	0020f033          	and	zero,ra,sp
   17a54:	00000e93          	li	t4,0
   17a58:	01b00e13          	li	t3,27
   17a5c:	01d01463          	bne	zero,t4,17a64 <fail>
   17a60:	05c01463          	bne	zero,t3,17aa8 <pass>

00017a64 <fail>:
   17a64:	0ff00513          	li	a0,255

00017a68 <.delay_fail>:
   17a68:	fff50513          	addi	a0,a0,-1
   17a6c:	fe051ee3          	bnez	a0,17a68 <.delay_fail>
   17a70:	02000537          	lui	a0,0x2000
   17a74:	04500593          	li	a1,69
   17a78:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17a7c:	05200613          	li	a2,82
   17a80:	00c52023          	sw	a2,0(a0)
   17a84:	00c52023          	sw	a2,0(a0)
   17a88:	04f00693          	li	a3,79
   17a8c:	00d52023          	sw	a3,0(a0)
   17a90:	00c52023          	sw	a2,0(a0)
   17a94:	00d00713          	li	a4,13
   17a98:	00e52023          	sw	a4,0(a0)
   17a9c:	00a00793          	li	a5,10
   17aa0:	00f52023          	sw	a5,0(a0)
   17aa4:	eb8f806f          	j	1015c <and_ret>

00017aa8 <pass>:
   17aa8:	0ff00513          	li	a0,255

00017aac <.delay_ok>:
   17aac:	fff50513          	addi	a0,a0,-1
   17ab0:	fe051ee3          	bnez	a0,17aac <.delay_ok>
   17ab4:	02000537          	lui	a0,0x2000
   17ab8:	04f00593          	li	a1,79
   17abc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17ac0:	04b00613          	li	a2,75
   17ac4:	00c52023          	sw	a2,0(a0)
   17ac8:	00d00693          	li	a3,13
   17acc:	00d52023          	sw	a3,0(a0)
   17ad0:	00a00713          	li	a4,10
   17ad4:	00e52023          	sw	a4,0(a0)
   17ad8:	e84f806f          	j	1015c <and_ret>

00017adc <ori>:
   17adc:	0ff00513          	li	a0,255

00017ae0 <.delay_pr>:
   17ae0:	fff50513          	addi	a0,a0,-1
   17ae4:	fe051ee3          	bnez	a0,17ae0 <.delay_pr>
   17ae8:	00018537          	lui	a0,0x18
   17aec:	b0850513          	addi	a0,a0,-1272 # 17b08 <.test_name>
   17af0:	02000637          	lui	a2,0x2000

00017af4 <.prname_next>:
   17af4:	00050583          	lb	a1,0(a0)
   17af8:	00058a63          	beqz	a1,17b0c <.prname_done>
   17afc:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   17b00:	00150513          	addi	a0,a0,1
   17b04:	ff1ff06f          	j	17af4 <.prname_next>

00017b08 <.test_name>:
   17b08:	0069726f          	jal	tp,aeb0e <_etext+0x94caa>

00017b0c <.prname_done>:
   17b0c:	02e00593          	li	a1,46
   17b10:	00b62023          	sw	a1,0(a2)
   17b14:	00b62023          	sw	a1,0(a2)

00017b18 <test_2>:
   17b18:	ff0100b7          	lui	ra,0xff010
   17b1c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   17b20:	f0f0e193          	ori	gp,ra,-241
   17b24:	f0f00e93          	li	t4,-241
   17b28:	00200e13          	li	t3,2
   17b2c:	1dd19463          	bne	gp,t4,17cf4 <fail>

00017b30 <test_3>:
   17b30:	0ff010b7          	lui	ra,0xff01
   17b34:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   17b38:	0f00e193          	ori	gp,ra,240
   17b3c:	0ff01eb7          	lui	t4,0xff01
   17b40:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   17b44:	00300e13          	li	t3,3
   17b48:	1bd19663          	bne	gp,t4,17cf4 <fail>

00017b4c <test_4>:
   17b4c:	00ff00b7          	lui	ra,0xff0
   17b50:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   17b54:	70f0e193          	ori	gp,ra,1807
   17b58:	00ff0eb7          	lui	t4,0xff0
   17b5c:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_edata+0xef078f>
   17b60:	00400e13          	li	t3,4
   17b64:	19d19863          	bne	gp,t4,17cf4 <fail>

00017b68 <test_5>:
   17b68:	f00ff0b7          	lui	ra,0xf00ff
   17b6c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   17b70:	0f00e193          	ori	gp,ra,240
   17b74:	f00ffeb7          	lui	t4,0xf00ff
   17b78:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0xeffff08f>
   17b7c:	00500e13          	li	t3,5
   17b80:	17d19a63          	bne	gp,t4,17cf4 <fail>

00017b84 <test_6>:
   17b84:	ff0100b7          	lui	ra,0xff010
   17b88:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   17b8c:	0f00e093          	ori	ra,ra,240
   17b90:	ff010eb7          	lui	t4,0xff010
   17b94:	ff0e8e93          	addi	t4,t4,-16 # ff00fff0 <_edata+0xfef0ff80>
   17b98:	00600e13          	li	t3,6
   17b9c:	15d09c63          	bne	ra,t4,17cf4 <fail>

00017ba0 <test_7>:
   17ba0:	00000213          	li	tp,0
   17ba4:	0ff010b7          	lui	ra,0xff01
   17ba8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   17bac:	0f00e193          	ori	gp,ra,240
   17bb0:	00018313          	mv	t1,gp
   17bb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bb8:	00200293          	li	t0,2
   17bbc:	fe5214e3          	bne	tp,t0,17ba4 <test_7+0x4>
   17bc0:	0ff01eb7          	lui	t4,0xff01
   17bc4:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   17bc8:	00700e13          	li	t3,7
   17bcc:	13d31463          	bne	t1,t4,17cf4 <fail>

00017bd0 <test_8>:
   17bd0:	00000213          	li	tp,0
   17bd4:	00ff00b7          	lui	ra,0xff0
   17bd8:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   17bdc:	70f0e193          	ori	gp,ra,1807
   17be0:	00000013          	nop
   17be4:	00018313          	mv	t1,gp
   17be8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bec:	00200293          	li	t0,2
   17bf0:	fe5212e3          	bne	tp,t0,17bd4 <test_8+0x4>
   17bf4:	00ff0eb7          	lui	t4,0xff0
   17bf8:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_edata+0xef078f>
   17bfc:	00800e13          	li	t3,8
   17c00:	0fd31a63          	bne	t1,t4,17cf4 <fail>

00017c04 <test_9>:
   17c04:	00000213          	li	tp,0
   17c08:	f00ff0b7          	lui	ra,0xf00ff
   17c0c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   17c10:	0f00e193          	ori	gp,ra,240
   17c14:	00000013          	nop
   17c18:	00000013          	nop
   17c1c:	00018313          	mv	t1,gp
   17c20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c24:	00200293          	li	t0,2
   17c28:	fe5210e3          	bne	tp,t0,17c08 <test_9+0x4>
   17c2c:	f00ffeb7          	lui	t4,0xf00ff
   17c30:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0xeffff08f>
   17c34:	00900e13          	li	t3,9
   17c38:	0bd31e63          	bne	t1,t4,17cf4 <fail>

00017c3c <test_10>:
   17c3c:	00000213          	li	tp,0
   17c40:	0ff010b7          	lui	ra,0xff01
   17c44:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   17c48:	0f00e193          	ori	gp,ra,240
   17c4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c50:	00200293          	li	t0,2
   17c54:	fe5216e3          	bne	tp,t0,17c40 <test_10+0x4>
   17c58:	0ff01eb7          	lui	t4,0xff01
   17c5c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_edata+0xfe00f80>
   17c60:	00a00e13          	li	t3,10
   17c64:	09d19863          	bne	gp,t4,17cf4 <fail>

00017c68 <test_11>:
   17c68:	00000213          	li	tp,0
   17c6c:	00ff00b7          	lui	ra,0xff0
   17c70:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   17c74:	00000013          	nop
   17c78:	f0f0e193          	ori	gp,ra,-241
   17c7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c80:	00200293          	li	t0,2
   17c84:	fe5214e3          	bne	tp,t0,17c6c <test_11+0x4>
   17c88:	fff00e93          	li	t4,-1
   17c8c:	00b00e13          	li	t3,11
   17c90:	07d19263          	bne	gp,t4,17cf4 <fail>

00017c94 <test_12>:
   17c94:	00000213          	li	tp,0
   17c98:	f00ff0b7          	lui	ra,0xf00ff
   17c9c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   17ca0:	00000013          	nop
   17ca4:	00000013          	nop
   17ca8:	0f00e193          	ori	gp,ra,240
   17cac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17cb0:	00200293          	li	t0,2
   17cb4:	fe5212e3          	bne	tp,t0,17c98 <test_12+0x4>
   17cb8:	f00ffeb7          	lui	t4,0xf00ff
   17cbc:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0xeffff08f>
   17cc0:	00c00e13          	li	t3,12
   17cc4:	03d19863          	bne	gp,t4,17cf4 <fail>

00017cc8 <test_13>:
   17cc8:	0f006093          	ori	ra,zero,240
   17ccc:	0f000e93          	li	t4,240
   17cd0:	00d00e13          	li	t3,13
   17cd4:	03d09063          	bne	ra,t4,17cf4 <fail>

00017cd8 <test_14>:
   17cd8:	00ff00b7          	lui	ra,0xff0
   17cdc:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   17ce0:	70f0e013          	ori	zero,ra,1807
   17ce4:	00000e93          	li	t4,0
   17ce8:	00e00e13          	li	t3,14
   17cec:	01d01463          	bne	zero,t4,17cf4 <fail>
   17cf0:	05c01463          	bne	zero,t3,17d38 <pass>

00017cf4 <fail>:
   17cf4:	0ff00513          	li	a0,255

00017cf8 <.delay_fail>:
   17cf8:	fff50513          	addi	a0,a0,-1
   17cfc:	fe051ee3          	bnez	a0,17cf8 <.delay_fail>
   17d00:	02000537          	lui	a0,0x2000
   17d04:	04500593          	li	a1,69
   17d08:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17d0c:	05200613          	li	a2,82
   17d10:	00c52023          	sw	a2,0(a0)
   17d14:	00c52023          	sw	a2,0(a0)
   17d18:	04f00693          	li	a3,79
   17d1c:	00d52023          	sw	a3,0(a0)
   17d20:	00c52023          	sw	a2,0(a0)
   17d24:	00d00713          	li	a4,13
   17d28:	00e52023          	sw	a4,0(a0)
   17d2c:	00a00793          	li	a5,10
   17d30:	00f52023          	sw	a5,0(a0)
   17d34:	bf4f806f          	j	10128 <ori_ret>

00017d38 <pass>:
   17d38:	0ff00513          	li	a0,255

00017d3c <.delay_ok>:
   17d3c:	fff50513          	addi	a0,a0,-1
   17d40:	fe051ee3          	bnez	a0,17d3c <.delay_ok>
   17d44:	02000537          	lui	a0,0x2000
   17d48:	04f00593          	li	a1,79
   17d4c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17d50:	04b00613          	li	a2,75
   17d54:	00c52023          	sw	a2,0(a0)
   17d58:	00d00693          	li	a3,13
   17d5c:	00d52023          	sw	a3,0(a0)
   17d60:	00a00713          	li	a4,10
   17d64:	00e52023          	sw	a4,0(a0)
   17d68:	bc0f806f          	j	10128 <ori_ret>

00017d6c <jal>:
   17d6c:	0ff00513          	li	a0,255

00017d70 <.delay_pr>:
   17d70:	fff50513          	addi	a0,a0,-1
   17d74:	fe051ee3          	bnez	a0,17d70 <.delay_pr>
   17d78:	00018537          	lui	a0,0x18
   17d7c:	d9850513          	addi	a0,a0,-616 # 17d98 <.test_name>
   17d80:	02000637          	lui	a2,0x2000

00017d84 <.prname_next>:
   17d84:	00050583          	lb	a1,0(a0)
   17d88:	00058a63          	beqz	a1,17d9c <.prname_done>
   17d8c:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   17d90:	00150513          	addi	a0,a0,1
   17d94:	ff1ff06f          	j	17d84 <.prname_next>

00017d98 <.test_name>:
   17d98:	616a                	flw	ft2,152(sp)
   17d9a:	006c                	addi	a1,sp,12

00017d9c <.prname_done>:
   17d9c:	02e00593          	li	a1,46
   17da0:	00b62023          	sw	a1,0(a2)
   17da4:	00b62023          	sw	a1,0(a2)

00017da8 <test_2>:
   17da8:	00200e13          	li	t3,2
   17dac:	00000093          	li	ra,0

00017db0 <linkaddr_2>:
   17db0:	010000ef          	jal	ra,17dc0 <target_2>
   17db4:	00000013          	nop
   17db8:	00000013          	nop
   17dbc:	0440006f          	j	17e00 <fail>

00017dc0 <target_2>:
   17dc0:	00000117          	auipc	sp,0x0
   17dc4:	ff010113          	addi	sp,sp,-16 # 17db0 <linkaddr_2>
   17dc8:	00410113          	addi	sp,sp,4
   17dcc:	02111a63          	bne	sp,ra,17e00 <fail>

00017dd0 <test_3>:
   17dd0:	00100113          	li	sp,1
   17dd4:	014000ef          	jal	ra,17de8 <test_3+0x18>
   17dd8:	00110113          	addi	sp,sp,1
   17ddc:	00110113          	addi	sp,sp,1
   17de0:	00110113          	addi	sp,sp,1
   17de4:	00110113          	addi	sp,sp,1
   17de8:	00110113          	addi	sp,sp,1
   17dec:	00110113          	addi	sp,sp,1
   17df0:	00300e93          	li	t4,3
   17df4:	00300e13          	li	t3,3
   17df8:	01d11463          	bne	sp,t4,17e00 <fail>
   17dfc:	05c01463          	bne	zero,t3,17e44 <pass>

00017e00 <fail>:
   17e00:	0ff00513          	li	a0,255

00017e04 <.delay_fail>:
   17e04:	fff50513          	addi	a0,a0,-1
   17e08:	fe051ee3          	bnez	a0,17e04 <.delay_fail>
   17e0c:	02000537          	lui	a0,0x2000
   17e10:	04500593          	li	a1,69
   17e14:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17e18:	05200613          	li	a2,82
   17e1c:	00c52023          	sw	a2,0(a0)
   17e20:	00c52023          	sw	a2,0(a0)
   17e24:	04f00693          	li	a3,79
   17e28:	00d52023          	sw	a3,0(a0)
   17e2c:	00c52023          	sw	a2,0(a0)
   17e30:	00d00713          	li	a4,13
   17e34:	00e52023          	sw	a4,0(a0)
   17e38:	00a00793          	li	a5,10
   17e3c:	00f52023          	sw	a5,0(a0)
   17e40:	a9cf806f          	j	100dc <jal_ret>

00017e44 <pass>:
   17e44:	0ff00513          	li	a0,255

00017e48 <.delay_ok>:
   17e48:	fff50513          	addi	a0,a0,-1
   17e4c:	fe051ee3          	bnez	a0,17e48 <.delay_ok>
   17e50:	02000537          	lui	a0,0x2000
   17e54:	04f00593          	li	a1,79
   17e58:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   17e5c:	04b00613          	li	a2,75
   17e60:	00c52023          	sw	a2,0(a0)
   17e64:	00d00693          	li	a3,13
   17e68:	00d52023          	sw	a3,0(a0)
   17e6c:	00a00713          	li	a4,10
   17e70:	00e52023          	sw	a4,0(a0)
   17e74:	a68f806f          	j	100dc <jal_ret>

00017e78 <add>:
   17e78:	0ff00513          	li	a0,255

00017e7c <.delay_pr>:
   17e7c:	fff50513          	addi	a0,a0,-1
   17e80:	fe051ee3          	bnez	a0,17e7c <.delay_pr>
   17e84:	00018537          	lui	a0,0x18
   17e88:	ea450513          	addi	a0,a0,-348 # 17ea4 <.test_name>
   17e8c:	02000637          	lui	a2,0x2000

00017e90 <.prname_next>:
   17e90:	00050583          	lb	a1,0(a0)
   17e94:	00058a63          	beqz	a1,17ea8 <.prname_done>
   17e98:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   17e9c:	00150513          	addi	a0,a0,1
   17ea0:	ff1ff06f          	j	17e90 <.prname_next>

00017ea4 <.test_name>:
   17ea4:	6461                	lui	s0,0x18
   17ea6:	0064                	addi	s1,sp,12

00017ea8 <.prname_done>:
   17ea8:	02e00593          	li	a1,46
   17eac:	00b62023          	sw	a1,0(a2)
   17eb0:	00b62023          	sw	a1,0(a2)

00017eb4 <test_2>:
   17eb4:	00000093          	li	ra,0
   17eb8:	00000113          	li	sp,0
   17ebc:	002081b3          	add	gp,ra,sp
   17ec0:	00000e93          	li	t4,0
   17ec4:	00200e13          	li	t3,2
   17ec8:	4dd19663          	bne	gp,t4,18394 <fail>

00017ecc <test_3>:
   17ecc:	00100093          	li	ra,1
   17ed0:	00100113          	li	sp,1
   17ed4:	002081b3          	add	gp,ra,sp
   17ed8:	00200e93          	li	t4,2
   17edc:	00300e13          	li	t3,3
   17ee0:	4bd19a63          	bne	gp,t4,18394 <fail>

00017ee4 <test_4>:
   17ee4:	00300093          	li	ra,3
   17ee8:	00700113          	li	sp,7
   17eec:	002081b3          	add	gp,ra,sp
   17ef0:	00a00e93          	li	t4,10
   17ef4:	00400e13          	li	t3,4
   17ef8:	49d19e63          	bne	gp,t4,18394 <fail>

00017efc <test_5>:
   17efc:	00000093          	li	ra,0
   17f00:	ffff8137          	lui	sp,0xffff8
   17f04:	002081b3          	add	gp,ra,sp
   17f08:	ffff8eb7          	lui	t4,0xffff8
   17f0c:	00500e13          	li	t3,5
   17f10:	49d19263          	bne	gp,t4,18394 <fail>

00017f14 <test_6>:
   17f14:	800000b7          	lui	ra,0x80000
   17f18:	00000113          	li	sp,0
   17f1c:	002081b3          	add	gp,ra,sp
   17f20:	80000eb7          	lui	t4,0x80000
   17f24:	00600e13          	li	t3,6
   17f28:	47d19663          	bne	gp,t4,18394 <fail>

00017f2c <test_7>:
   17f2c:	800000b7          	lui	ra,0x80000
   17f30:	ffff8137          	lui	sp,0xffff8
   17f34:	002081b3          	add	gp,ra,sp
   17f38:	7fff8eb7          	lui	t4,0x7fff8
   17f3c:	00700e13          	li	t3,7
   17f40:	45d19a63          	bne	gp,t4,18394 <fail>

00017f44 <test_8>:
   17f44:	00000093          	li	ra,0
   17f48:	00008137          	lui	sp,0x8
   17f4c:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   17f50:	002081b3          	add	gp,ra,sp
   17f54:	00008eb7          	lui	t4,0x8
   17f58:	fffe8e93          	addi	t4,t4,-1 # 7fff <_start-0x8001>
   17f5c:	00800e13          	li	t3,8
   17f60:	43d19a63          	bne	gp,t4,18394 <fail>

00017f64 <test_9>:
   17f64:	800000b7          	lui	ra,0x80000
   17f68:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   17f6c:	00000113          	li	sp,0
   17f70:	002081b3          	add	gp,ra,sp
   17f74:	80000eb7          	lui	t4,0x80000
   17f78:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0x7fefff8f>
   17f7c:	00900e13          	li	t3,9
   17f80:	41d19a63          	bne	gp,t4,18394 <fail>

00017f84 <test_10>:
   17f84:	800000b7          	lui	ra,0x80000
   17f88:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   17f8c:	00008137          	lui	sp,0x8
   17f90:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   17f94:	002081b3          	add	gp,ra,sp
   17f98:	80008eb7          	lui	t4,0x80008
   17f9c:	ffee8e93          	addi	t4,t4,-2 # 80007ffe <_edata+0x7ff07f8e>
   17fa0:	00a00e13          	li	t3,10
   17fa4:	3fd19863          	bne	gp,t4,18394 <fail>

00017fa8 <test_11>:
   17fa8:	800000b7          	lui	ra,0x80000
   17fac:	00008137          	lui	sp,0x8
   17fb0:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   17fb4:	002081b3          	add	gp,ra,sp
   17fb8:	80008eb7          	lui	t4,0x80008
   17fbc:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7ff07f8f>
   17fc0:	00b00e13          	li	t3,11
   17fc4:	3dd19863          	bne	gp,t4,18394 <fail>

00017fc8 <test_12>:
   17fc8:	800000b7          	lui	ra,0x80000
   17fcc:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0x7fefff8f>
   17fd0:	ffff8137          	lui	sp,0xffff8
   17fd4:	002081b3          	add	gp,ra,sp
   17fd8:	7fff8eb7          	lui	t4,0x7fff8
   17fdc:	fffe8e93          	addi	t4,t4,-1 # 7fff7fff <_edata+0x7fef7f8f>
   17fe0:	00c00e13          	li	t3,12
   17fe4:	3bd19863          	bne	gp,t4,18394 <fail>

00017fe8 <test_13>:
   17fe8:	00000093          	li	ra,0
   17fec:	fff00113          	li	sp,-1
   17ff0:	002081b3          	add	gp,ra,sp
   17ff4:	fff00e93          	li	t4,-1
   17ff8:	00d00e13          	li	t3,13
   17ffc:	39d19c63          	bne	gp,t4,18394 <fail>

00018000 <test_14>:
   18000:	fff00093          	li	ra,-1
   18004:	00100113          	li	sp,1
   18008:	002081b3          	add	gp,ra,sp
   1800c:	00000e93          	li	t4,0
   18010:	00e00e13          	li	t3,14
   18014:	39d19063          	bne	gp,t4,18394 <fail>

00018018 <test_15>:
   18018:	fff00093          	li	ra,-1
   1801c:	fff00113          	li	sp,-1
   18020:	002081b3          	add	gp,ra,sp
   18024:	ffe00e93          	li	t4,-2
   18028:	00f00e13          	li	t3,15
   1802c:	37d19463          	bne	gp,t4,18394 <fail>

00018030 <test_16>:
   18030:	00100093          	li	ra,1
   18034:	80000137          	lui	sp,0x80000
   18038:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0x7fefff8f>
   1803c:	002081b3          	add	gp,ra,sp
   18040:	80000eb7          	lui	t4,0x80000
   18044:	01000e13          	li	t3,16
   18048:	35d19663          	bne	gp,t4,18394 <fail>

0001804c <test_17>:
   1804c:	00d00093          	li	ra,13
   18050:	00b00113          	li	sp,11
   18054:	002080b3          	add	ra,ra,sp
   18058:	01800e93          	li	t4,24
   1805c:	01100e13          	li	t3,17
   18060:	33d09a63          	bne	ra,t4,18394 <fail>

00018064 <test_18>:
   18064:	00e00093          	li	ra,14
   18068:	00b00113          	li	sp,11
   1806c:	00208133          	add	sp,ra,sp
   18070:	01900e93          	li	t4,25
   18074:	01200e13          	li	t3,18
   18078:	31d11e63          	bne	sp,t4,18394 <fail>

0001807c <test_19>:
   1807c:	00d00093          	li	ra,13
   18080:	001080b3          	add	ra,ra,ra
   18084:	01a00e93          	li	t4,26
   18088:	01300e13          	li	t3,19
   1808c:	31d09463          	bne	ra,t4,18394 <fail>

00018090 <test_20>:
   18090:	00000213          	li	tp,0
   18094:	00d00093          	li	ra,13
   18098:	00b00113          	li	sp,11
   1809c:	002081b3          	add	gp,ra,sp
   180a0:	00018313          	mv	t1,gp
   180a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   180a8:	00200293          	li	t0,2
   180ac:	fe5214e3          	bne	tp,t0,18094 <test_20+0x4>
   180b0:	01800e93          	li	t4,24
   180b4:	01400e13          	li	t3,20
   180b8:	2dd31e63          	bne	t1,t4,18394 <fail>

000180bc <test_21>:
   180bc:	00000213          	li	tp,0
   180c0:	00e00093          	li	ra,14
   180c4:	00b00113          	li	sp,11
   180c8:	002081b3          	add	gp,ra,sp
   180cc:	00000013          	nop
   180d0:	00018313          	mv	t1,gp
   180d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   180d8:	00200293          	li	t0,2
   180dc:	fe5212e3          	bne	tp,t0,180c0 <test_21+0x4>
   180e0:	01900e93          	li	t4,25
   180e4:	01500e13          	li	t3,21
   180e8:	2bd31663          	bne	t1,t4,18394 <fail>

000180ec <test_22>:
   180ec:	00000213          	li	tp,0
   180f0:	00f00093          	li	ra,15
   180f4:	00b00113          	li	sp,11
   180f8:	002081b3          	add	gp,ra,sp
   180fc:	00000013          	nop
   18100:	00000013          	nop
   18104:	00018313          	mv	t1,gp
   18108:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1810c:	00200293          	li	t0,2
   18110:	fe5210e3          	bne	tp,t0,180f0 <test_22+0x4>
   18114:	01a00e93          	li	t4,26
   18118:	01600e13          	li	t3,22
   1811c:	27d31c63          	bne	t1,t4,18394 <fail>

00018120 <test_23>:
   18120:	00000213          	li	tp,0
   18124:	00d00093          	li	ra,13
   18128:	00b00113          	li	sp,11
   1812c:	002081b3          	add	gp,ra,sp
   18130:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18134:	00200293          	li	t0,2
   18138:	fe5216e3          	bne	tp,t0,18124 <test_23+0x4>
   1813c:	01800e93          	li	t4,24
   18140:	01700e13          	li	t3,23
   18144:	25d19863          	bne	gp,t4,18394 <fail>

00018148 <test_24>:
   18148:	00000213          	li	tp,0
   1814c:	00e00093          	li	ra,14
   18150:	00b00113          	li	sp,11
   18154:	00000013          	nop
   18158:	002081b3          	add	gp,ra,sp
   1815c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18160:	00200293          	li	t0,2
   18164:	fe5214e3          	bne	tp,t0,1814c <test_24+0x4>
   18168:	01900e93          	li	t4,25
   1816c:	01800e13          	li	t3,24
   18170:	23d19263          	bne	gp,t4,18394 <fail>

00018174 <test_25>:
   18174:	00000213          	li	tp,0
   18178:	00f00093          	li	ra,15
   1817c:	00b00113          	li	sp,11
   18180:	00000013          	nop
   18184:	00000013          	nop
   18188:	002081b3          	add	gp,ra,sp
   1818c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18190:	00200293          	li	t0,2
   18194:	fe5212e3          	bne	tp,t0,18178 <test_25+0x4>
   18198:	01a00e93          	li	t4,26
   1819c:	01900e13          	li	t3,25
   181a0:	1fd19a63          	bne	gp,t4,18394 <fail>

000181a4 <test_26>:
   181a4:	00000213          	li	tp,0
   181a8:	00d00093          	li	ra,13
   181ac:	00000013          	nop
   181b0:	00b00113          	li	sp,11
   181b4:	002081b3          	add	gp,ra,sp
   181b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   181bc:	00200293          	li	t0,2
   181c0:	fe5214e3          	bne	tp,t0,181a8 <test_26+0x4>
   181c4:	01800e93          	li	t4,24
   181c8:	01a00e13          	li	t3,26
   181cc:	1dd19463          	bne	gp,t4,18394 <fail>

000181d0 <test_27>:
   181d0:	00000213          	li	tp,0
   181d4:	00e00093          	li	ra,14
   181d8:	00000013          	nop
   181dc:	00b00113          	li	sp,11
   181e0:	00000013          	nop
   181e4:	002081b3          	add	gp,ra,sp
   181e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   181ec:	00200293          	li	t0,2
   181f0:	fe5212e3          	bne	tp,t0,181d4 <test_27+0x4>
   181f4:	01900e93          	li	t4,25
   181f8:	01b00e13          	li	t3,27
   181fc:	19d19c63          	bne	gp,t4,18394 <fail>

00018200 <test_28>:
   18200:	00000213          	li	tp,0
   18204:	00f00093          	li	ra,15
   18208:	00000013          	nop
   1820c:	00000013          	nop
   18210:	00b00113          	li	sp,11
   18214:	002081b3          	add	gp,ra,sp
   18218:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1821c:	00200293          	li	t0,2
   18220:	fe5212e3          	bne	tp,t0,18204 <test_28+0x4>
   18224:	01a00e93          	li	t4,26
   18228:	01c00e13          	li	t3,28
   1822c:	17d19463          	bne	gp,t4,18394 <fail>

00018230 <test_29>:
   18230:	00000213          	li	tp,0
   18234:	00b00113          	li	sp,11
   18238:	00d00093          	li	ra,13
   1823c:	002081b3          	add	gp,ra,sp
   18240:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18244:	00200293          	li	t0,2
   18248:	fe5216e3          	bne	tp,t0,18234 <test_29+0x4>
   1824c:	01800e93          	li	t4,24
   18250:	01d00e13          	li	t3,29
   18254:	15d19063          	bne	gp,t4,18394 <fail>

00018258 <test_30>:
   18258:	00000213          	li	tp,0
   1825c:	00b00113          	li	sp,11
   18260:	00e00093          	li	ra,14
   18264:	00000013          	nop
   18268:	002081b3          	add	gp,ra,sp
   1826c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18270:	00200293          	li	t0,2
   18274:	fe5214e3          	bne	tp,t0,1825c <test_30+0x4>
   18278:	01900e93          	li	t4,25
   1827c:	01e00e13          	li	t3,30
   18280:	11d19a63          	bne	gp,t4,18394 <fail>

00018284 <test_31>:
   18284:	00000213          	li	tp,0
   18288:	00b00113          	li	sp,11
   1828c:	00f00093          	li	ra,15
   18290:	00000013          	nop
   18294:	00000013          	nop
   18298:	002081b3          	add	gp,ra,sp
   1829c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   182a0:	00200293          	li	t0,2
   182a4:	fe5212e3          	bne	tp,t0,18288 <test_31+0x4>
   182a8:	01a00e93          	li	t4,26
   182ac:	01f00e13          	li	t3,31
   182b0:	0fd19263          	bne	gp,t4,18394 <fail>

000182b4 <test_32>:
   182b4:	00000213          	li	tp,0
   182b8:	00b00113          	li	sp,11
   182bc:	00000013          	nop
   182c0:	00d00093          	li	ra,13
   182c4:	002081b3          	add	gp,ra,sp
   182c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   182cc:	00200293          	li	t0,2
   182d0:	fe5214e3          	bne	tp,t0,182b8 <test_32+0x4>
   182d4:	01800e93          	li	t4,24
   182d8:	02000e13          	li	t3,32
   182dc:	0bd19c63          	bne	gp,t4,18394 <fail>

000182e0 <test_33>:
   182e0:	00000213          	li	tp,0
   182e4:	00b00113          	li	sp,11
   182e8:	00000013          	nop
   182ec:	00e00093          	li	ra,14
   182f0:	00000013          	nop
   182f4:	002081b3          	add	gp,ra,sp
   182f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   182fc:	00200293          	li	t0,2
   18300:	fe5212e3          	bne	tp,t0,182e4 <test_33+0x4>
   18304:	01900e93          	li	t4,25
   18308:	02100e13          	li	t3,33
   1830c:	09d19463          	bne	gp,t4,18394 <fail>

00018310 <test_34>:
   18310:	00000213          	li	tp,0
   18314:	00b00113          	li	sp,11
   18318:	00000013          	nop
   1831c:	00000013          	nop
   18320:	00f00093          	li	ra,15
   18324:	002081b3          	add	gp,ra,sp
   18328:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1832c:	00200293          	li	t0,2
   18330:	fe5212e3          	bne	tp,t0,18314 <test_34+0x4>
   18334:	01a00e93          	li	t4,26
   18338:	02200e13          	li	t3,34
   1833c:	05d19c63          	bne	gp,t4,18394 <fail>

00018340 <test_35>:
   18340:	00f00093          	li	ra,15
   18344:	00100133          	add	sp,zero,ra
   18348:	00f00e93          	li	t4,15
   1834c:	02300e13          	li	t3,35
   18350:	05d11263          	bne	sp,t4,18394 <fail>

00018354 <test_36>:
   18354:	02000093          	li	ra,32
   18358:	00008133          	add	sp,ra,zero
   1835c:	02000e93          	li	t4,32
   18360:	02400e13          	li	t3,36
   18364:	03d11863          	bne	sp,t4,18394 <fail>

00018368 <test_37>:
   18368:	000000b3          	add	ra,zero,zero
   1836c:	00000e93          	li	t4,0
   18370:	02500e13          	li	t3,37
   18374:	03d09063          	bne	ra,t4,18394 <fail>

00018378 <test_38>:
   18378:	01000093          	li	ra,16
   1837c:	01e00113          	li	sp,30
   18380:	00208033          	add	zero,ra,sp
   18384:	00000e93          	li	t4,0
   18388:	02600e13          	li	t3,38
   1838c:	01d01463          	bne	zero,t4,18394 <fail>
   18390:	05c01463          	bne	zero,t3,183d8 <pass>

00018394 <fail>:
   18394:	0ff00513          	li	a0,255

00018398 <.delay_fail>:
   18398:	fff50513          	addi	a0,a0,-1
   1839c:	fe051ee3          	bnez	a0,18398 <.delay_fail>
   183a0:	02000537          	lui	a0,0x2000
   183a4:	04500593          	li	a1,69
   183a8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   183ac:	05200613          	li	a2,82
   183b0:	00c52023          	sw	a2,0(a0)
   183b4:	00c52023          	sw	a2,0(a0)
   183b8:	04f00693          	li	a3,79
   183bc:	00d52023          	sw	a3,0(a0)
   183c0:	00c52023          	sw	a2,0(a0)
   183c4:	00d00713          	li	a4,13
   183c8:	00e52023          	sw	a4,0(a0)
   183cc:	00a00793          	li	a5,10
   183d0:	00f52023          	sw	a5,0(a0)
   183d4:	d69f706f          	j	1013c <add_ret>

000183d8 <pass>:
   183d8:	0ff00513          	li	a0,255

000183dc <.delay_ok>:
   183dc:	fff50513          	addi	a0,a0,-1
   183e0:	fe051ee3          	bnez	a0,183dc <.delay_ok>
   183e4:	02000537          	lui	a0,0x2000
   183e8:	04f00593          	li	a1,79
   183ec:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   183f0:	04b00613          	li	a2,75
   183f4:	00c52023          	sw	a2,0(a0)
   183f8:	00d00693          	li	a3,13
   183fc:	00d52023          	sw	a3,0(a0)
   18400:	00a00713          	li	a4,10
   18404:	00e52023          	sw	a4,0(a0)
   18408:	d35f706f          	j	1013c <add_ret>

0001840c <sb>:
   1840c:	0ff00513          	li	a0,255

00018410 <.delay_pr>:
   18410:	fff50513          	addi	a0,a0,-1
   18414:	fe051ee3          	bnez	a0,18410 <.delay_pr>
   18418:	00018537          	lui	a0,0x18
   1841c:	43850513          	addi	a0,a0,1080 # 18438 <.test_name>
   18420:	02000637          	lui	a2,0x2000

00018424 <.prname_next>:
   18424:	00050583          	lb	a1,0(a0)
   18428:	00058a63          	beqz	a1,1843c <.prname_done>
   1842c:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   18430:	00150513          	addi	a0,a0,1
   18434:	ff1ff06f          	j	18424 <.prname_next>

00018438 <.test_name>:
   18438:	00006273          	csrrsi	tp,ustatus,0

0001843c <.prname_done>:
   1843c:	02e00593          	li	a1,46
   18440:	00b62023          	sw	a1,0(a2)
   18444:	00b62023          	sw	a1,0(a2)

00018448 <test_2>:
   18448:	000e8097          	auipc	ra,0xe8
   1844c:	c1c08093          	addi	ra,ra,-996 # 100064 <tdat>
   18450:	faa00113          	li	sp,-86
   18454:	00208023          	sb	sp,0(ra)
   18458:	00008183          	lb	gp,0(ra)
   1845c:	faa00e93          	li	t4,-86
   18460:	00200e13          	li	t3,2
   18464:	3dd19c63          	bne	gp,t4,1883c <fail>

00018468 <test_3>:
   18468:	000e8097          	auipc	ra,0xe8
   1846c:	bfc08093          	addi	ra,ra,-1028 # 100064 <tdat>
   18470:	00000113          	li	sp,0
   18474:	002080a3          	sb	sp,1(ra)
   18478:	00108183          	lb	gp,1(ra)
   1847c:	00000e93          	li	t4,0
   18480:	00300e13          	li	t3,3
   18484:	3bd19c63          	bne	gp,t4,1883c <fail>

00018488 <test_4>:
   18488:	000e8097          	auipc	ra,0xe8
   1848c:	bdc08093          	addi	ra,ra,-1060 # 100064 <tdat>
   18490:	fffff137          	lui	sp,0xfffff
   18494:	fa010113          	addi	sp,sp,-96 # ffffefa0 <_edata+0xffefef30>
   18498:	00208123          	sb	sp,2(ra)
   1849c:	00209183          	lh	gp,2(ra)
   184a0:	fffffeb7          	lui	t4,0xfffff
   184a4:	fa0e8e93          	addi	t4,t4,-96 # ffffefa0 <_edata+0xffefef30>
   184a8:	00400e13          	li	t3,4
   184ac:	39d19863          	bne	gp,t4,1883c <fail>

000184b0 <test_5>:
   184b0:	000e8097          	auipc	ra,0xe8
   184b4:	bb408093          	addi	ra,ra,-1100 # 100064 <tdat>
   184b8:	00a00113          	li	sp,10
   184bc:	002081a3          	sb	sp,3(ra)
   184c0:	00308183          	lb	gp,3(ra)
   184c4:	00a00e93          	li	t4,10
   184c8:	00500e13          	li	t3,5
   184cc:	37d19863          	bne	gp,t4,1883c <fail>

000184d0 <test_6>:
   184d0:	000e8097          	auipc	ra,0xe8
   184d4:	b9b08093          	addi	ra,ra,-1125 # 10006b <tdat8>
   184d8:	faa00113          	li	sp,-86
   184dc:	fe208ea3          	sb	sp,-3(ra)
   184e0:	ffd08183          	lb	gp,-3(ra)
   184e4:	faa00e93          	li	t4,-86
   184e8:	00600e13          	li	t3,6
   184ec:	35d19863          	bne	gp,t4,1883c <fail>

000184f0 <test_7>:
   184f0:	000e8097          	auipc	ra,0xe8
   184f4:	b7b08093          	addi	ra,ra,-1157 # 10006b <tdat8>
   184f8:	00000113          	li	sp,0
   184fc:	fe208f23          	sb	sp,-2(ra)
   18500:	ffe08183          	lb	gp,-2(ra)
   18504:	00000e93          	li	t4,0
   18508:	00700e13          	li	t3,7
   1850c:	33d19863          	bne	gp,t4,1883c <fail>

00018510 <test_8>:
   18510:	000e8097          	auipc	ra,0xe8
   18514:	b5b08093          	addi	ra,ra,-1189 # 10006b <tdat8>
   18518:	fa000113          	li	sp,-96
   1851c:	fe208fa3          	sb	sp,-1(ra)
   18520:	fff08183          	lb	gp,-1(ra)
   18524:	fa000e93          	li	t4,-96
   18528:	00800e13          	li	t3,8
   1852c:	31d19863          	bne	gp,t4,1883c <fail>

00018530 <test_9>:
   18530:	000e8097          	auipc	ra,0xe8
   18534:	b3b08093          	addi	ra,ra,-1221 # 10006b <tdat8>
   18538:	00a00113          	li	sp,10
   1853c:	00208023          	sb	sp,0(ra)
   18540:	00008183          	lb	gp,0(ra)
   18544:	00a00e93          	li	t4,10
   18548:	00900e13          	li	t3,9
   1854c:	2fd19863          	bne	gp,t4,1883c <fail>

00018550 <test_10>:
   18550:	000e8097          	auipc	ra,0xe8
   18554:	b1c08093          	addi	ra,ra,-1252 # 10006c <tdat9>
   18558:	12345137          	lui	sp,0x12345
   1855c:	67810113          	addi	sp,sp,1656 # 12345678 <_edata+0x12245608>
   18560:	fe008213          	addi	tp,ra,-32
   18564:	02220023          	sb	sp,32(tp) # 20 <_start-0xffe0>
   18568:	00008183          	lb	gp,0(ra)
   1856c:	07800e93          	li	t4,120
   18570:	00a00e13          	li	t3,10
   18574:	2dd19463          	bne	gp,t4,1883c <fail>

00018578 <test_11>:
   18578:	000e8097          	auipc	ra,0xe8
   1857c:	af408093          	addi	ra,ra,-1292 # 10006c <tdat9>
   18580:	00003137          	lui	sp,0x3
   18584:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   18588:	ffa08093          	addi	ra,ra,-6
   1858c:	002083a3          	sb	sp,7(ra)
   18590:	000e8217          	auipc	tp,0xe8
   18594:	add20213          	addi	tp,tp,-1315 # 10006d <tdat10>
   18598:	00020183          	lb	gp,0(tp) # 0 <_start-0x10000>
   1859c:	f9800e93          	li	t4,-104
   185a0:	00b00e13          	li	t3,11
   185a4:	29d19c63          	bne	gp,t4,1883c <fail>

000185a8 <test_12>:
   185a8:	00c00e13          	li	t3,12
   185ac:	00000213          	li	tp,0
   185b0:	fdd00093          	li	ra,-35
   185b4:	000e8117          	auipc	sp,0xe8
   185b8:	ab010113          	addi	sp,sp,-1360 # 100064 <tdat>
   185bc:	00110023          	sb	ra,0(sp)
   185c0:	00010183          	lb	gp,0(sp)
   185c4:	fdd00e93          	li	t4,-35
   185c8:	27d19a63          	bne	gp,t4,1883c <fail>
   185cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   185d0:	00200293          	li	t0,2
   185d4:	fc521ee3          	bne	tp,t0,185b0 <test_12+0x8>

000185d8 <test_13>:
   185d8:	00d00e13          	li	t3,13
   185dc:	00000213          	li	tp,0
   185e0:	fcd00093          	li	ra,-51
   185e4:	000e8117          	auipc	sp,0xe8
   185e8:	a8010113          	addi	sp,sp,-1408 # 100064 <tdat>
   185ec:	00000013          	nop
   185f0:	001100a3          	sb	ra,1(sp)
   185f4:	00110183          	lb	gp,1(sp)
   185f8:	fcd00e93          	li	t4,-51
   185fc:	25d19063          	bne	gp,t4,1883c <fail>
   18600:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18604:	00200293          	li	t0,2
   18608:	fc521ce3          	bne	tp,t0,185e0 <test_13+0x8>

0001860c <test_14>:
   1860c:	00e00e13          	li	t3,14
   18610:	00000213          	li	tp,0
   18614:	fcc00093          	li	ra,-52
   18618:	000e8117          	auipc	sp,0xe8
   1861c:	a4c10113          	addi	sp,sp,-1460 # 100064 <tdat>
   18620:	00000013          	nop
   18624:	00000013          	nop
   18628:	00110123          	sb	ra,2(sp)
   1862c:	00210183          	lb	gp,2(sp)
   18630:	fcc00e93          	li	t4,-52
   18634:	21d19463          	bne	gp,t4,1883c <fail>
   18638:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1863c:	00200293          	li	t0,2
   18640:	fc521ae3          	bne	tp,t0,18614 <test_14+0x8>

00018644 <test_15>:
   18644:	00f00e13          	li	t3,15
   18648:	00000213          	li	tp,0
   1864c:	fbc00093          	li	ra,-68
   18650:	00000013          	nop
   18654:	000e8117          	auipc	sp,0xe8
   18658:	a1010113          	addi	sp,sp,-1520 # 100064 <tdat>
   1865c:	001101a3          	sb	ra,3(sp)
   18660:	00310183          	lb	gp,3(sp)
   18664:	fbc00e93          	li	t4,-68
   18668:	1dd19a63          	bne	gp,t4,1883c <fail>
   1866c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18670:	00200293          	li	t0,2
   18674:	fc521ce3          	bne	tp,t0,1864c <test_15+0x8>

00018678 <test_16>:
   18678:	01000e13          	li	t3,16
   1867c:	00000213          	li	tp,0
   18680:	fbb00093          	li	ra,-69
   18684:	00000013          	nop
   18688:	000e8117          	auipc	sp,0xe8
   1868c:	9dc10113          	addi	sp,sp,-1572 # 100064 <tdat>
   18690:	00000013          	nop
   18694:	00110223          	sb	ra,4(sp)
   18698:	00410183          	lb	gp,4(sp)
   1869c:	fbb00e93          	li	t4,-69
   186a0:	19d19e63          	bne	gp,t4,1883c <fail>
   186a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   186a8:	00200293          	li	t0,2
   186ac:	fc521ae3          	bne	tp,t0,18680 <test_16+0x8>

000186b0 <test_17>:
   186b0:	01100e13          	li	t3,17
   186b4:	00000213          	li	tp,0
   186b8:	fab00093          	li	ra,-85
   186bc:	00000013          	nop
   186c0:	00000013          	nop
   186c4:	000e8117          	auipc	sp,0xe8
   186c8:	9a010113          	addi	sp,sp,-1632 # 100064 <tdat>
   186cc:	001102a3          	sb	ra,5(sp)
   186d0:	00510183          	lb	gp,5(sp)
   186d4:	fab00e93          	li	t4,-85
   186d8:	17d19263          	bne	gp,t4,1883c <fail>
   186dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   186e0:	00200293          	li	t0,2
   186e4:	fc521ae3          	bne	tp,t0,186b8 <test_17+0x8>

000186e8 <test_18>:
   186e8:	01200e13          	li	t3,18
   186ec:	00000213          	li	tp,0
   186f0:	000e8117          	auipc	sp,0xe8
   186f4:	97410113          	addi	sp,sp,-1676 # 100064 <tdat>
   186f8:	03300093          	li	ra,51
   186fc:	00110023          	sb	ra,0(sp)
   18700:	00010183          	lb	gp,0(sp)
   18704:	03300e93          	li	t4,51
   18708:	13d19a63          	bne	gp,t4,1883c <fail>
   1870c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18710:	00200293          	li	t0,2
   18714:	fc521ee3          	bne	tp,t0,186f0 <test_18+0x8>

00018718 <test_19>:
   18718:	01300e13          	li	t3,19
   1871c:	00000213          	li	tp,0
   18720:	000e8117          	auipc	sp,0xe8
   18724:	94410113          	addi	sp,sp,-1724 # 100064 <tdat>
   18728:	02300093          	li	ra,35
   1872c:	00000013          	nop
   18730:	001100a3          	sb	ra,1(sp)
   18734:	00110183          	lb	gp,1(sp)
   18738:	02300e93          	li	t4,35
   1873c:	11d19063          	bne	gp,t4,1883c <fail>
   18740:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18744:	00200293          	li	t0,2
   18748:	fc521ce3          	bne	tp,t0,18720 <test_19+0x8>

0001874c <test_20>:
   1874c:	01400e13          	li	t3,20
   18750:	00000213          	li	tp,0
   18754:	000e8117          	auipc	sp,0xe8
   18758:	91010113          	addi	sp,sp,-1776 # 100064 <tdat>
   1875c:	02200093          	li	ra,34
   18760:	00000013          	nop
   18764:	00000013          	nop
   18768:	00110123          	sb	ra,2(sp)
   1876c:	00210183          	lb	gp,2(sp)
   18770:	02200e93          	li	t4,34
   18774:	0dd19463          	bne	gp,t4,1883c <fail>
   18778:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1877c:	00200293          	li	t0,2
   18780:	fc521ae3          	bne	tp,t0,18754 <test_20+0x8>

00018784 <test_21>:
   18784:	01500e13          	li	t3,21
   18788:	00000213          	li	tp,0
   1878c:	000e8117          	auipc	sp,0xe8
   18790:	8d810113          	addi	sp,sp,-1832 # 100064 <tdat>
   18794:	00000013          	nop
   18798:	01200093          	li	ra,18
   1879c:	001101a3          	sb	ra,3(sp)
   187a0:	00310183          	lb	gp,3(sp)
   187a4:	01200e93          	li	t4,18
   187a8:	09d19a63          	bne	gp,t4,1883c <fail>
   187ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   187b0:	00200293          	li	t0,2
   187b4:	fc521ce3          	bne	tp,t0,1878c <test_21+0x8>

000187b8 <test_22>:
   187b8:	01600e13          	li	t3,22
   187bc:	00000213          	li	tp,0
   187c0:	000e8117          	auipc	sp,0xe8
   187c4:	8a410113          	addi	sp,sp,-1884 # 100064 <tdat>
   187c8:	00000013          	nop
   187cc:	01100093          	li	ra,17
   187d0:	00000013          	nop
   187d4:	00110223          	sb	ra,4(sp)
   187d8:	00410183          	lb	gp,4(sp)
   187dc:	01100e93          	li	t4,17
   187e0:	05d19e63          	bne	gp,t4,1883c <fail>
   187e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   187e8:	00200293          	li	t0,2
   187ec:	fc521ae3          	bne	tp,t0,187c0 <test_22+0x8>

000187f0 <test_23>:
   187f0:	01700e13          	li	t3,23
   187f4:	00000213          	li	tp,0
   187f8:	000e8117          	auipc	sp,0xe8
   187fc:	86c10113          	addi	sp,sp,-1940 # 100064 <tdat>
   18800:	00000013          	nop
   18804:	00000013          	nop
   18808:	00100093          	li	ra,1
   1880c:	001102a3          	sb	ra,5(sp)
   18810:	00510183          	lb	gp,5(sp)
   18814:	00100e93          	li	t4,1
   18818:	03d19263          	bne	gp,t4,1883c <fail>
   1881c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18820:	00200293          	li	t0,2
   18824:	fc521ae3          	bne	tp,t0,187f8 <test_23+0x8>
   18828:	0ef00513          	li	a0,239
   1882c:	000e8597          	auipc	a1,0xe8
   18830:	83858593          	addi	a1,a1,-1992 # 100064 <tdat>
   18834:	00a581a3          	sb	a0,3(a1)
   18838:	05c01463          	bne	zero,t3,18880 <pass>

0001883c <fail>:
   1883c:	0ff00513          	li	a0,255

00018840 <.delay_fail>:
   18840:	fff50513          	addi	a0,a0,-1
   18844:	fe051ee3          	bnez	a0,18840 <.delay_fail>
   18848:	02000537          	lui	a0,0x2000
   1884c:	04500593          	li	a1,69
   18850:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18854:	05200613          	li	a2,82
   18858:	00c52023          	sw	a2,0(a0)
   1885c:	00c52023          	sw	a2,0(a0)
   18860:	04f00693          	li	a3,79
   18864:	00d52023          	sw	a3,0(a0)
   18868:	00c52023          	sw	a2,0(a0)
   1886c:	00d00713          	li	a4,13
   18870:	00e52023          	sw	a4,0(a0)
   18874:	00a00793          	li	a5,10
   18878:	00f52023          	sw	a5,0(a0)
   1887c:	895f706f          	j	10110 <sb_ret>

00018880 <pass>:
   18880:	0ff00513          	li	a0,255

00018884 <.delay_ok>:
   18884:	fff50513          	addi	a0,a0,-1
   18888:	fe051ee3          	bnez	a0,18884 <.delay_ok>
   1888c:	02000537          	lui	a0,0x2000
   18890:	04f00593          	li	a1,79
   18894:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18898:	04b00613          	li	a2,75
   1889c:	00c52023          	sw	a2,0(a0)
   188a0:	00d00693          	li	a3,13
   188a4:	00d52023          	sw	a3,0(a0)
   188a8:	00a00713          	li	a4,10
   188ac:	00e52023          	sw	a4,0(a0)
   188b0:	861f706f          	j	10110 <sb_ret>

000188b4 <andi>:
   188b4:	0ff00513          	li	a0,255

000188b8 <.delay_pr>:
   188b8:	fff50513          	addi	a0,a0,-1
   188bc:	fe051ee3          	bnez	a0,188b8 <.delay_pr>
   188c0:	00019537          	lui	a0,0x19
   188c4:	8e050513          	addi	a0,a0,-1824 # 188e0 <.test_name>
   188c8:	02000637          	lui	a2,0x2000

000188cc <.prname_next>:
   188cc:	00050583          	lb	a1,0(a0)
   188d0:	00058c63          	beqz	a1,188e8 <.prname_done>
   188d4:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   188d8:	00150513          	addi	a0,a0,1
   188dc:	ff1ff06f          	j	188cc <.prname_next>

000188e0 <.test_name>:
   188e0:	6e61                	lui	t3,0x18
   188e2:	6964                	flw	fs1,84(a0)
   188e4:	0000                	unimp
	...

000188e8 <.prname_done>:
   188e8:	02e00593          	li	a1,46
   188ec:	00b62023          	sw	a1,0(a2)
   188f0:	00b62023          	sw	a1,0(a2)

000188f4 <test_2>:
   188f4:	ff0100b7          	lui	ra,0xff010
   188f8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   188fc:	f0f0f193          	andi	gp,ra,-241
   18900:	ff010eb7          	lui	t4,0xff010
   18904:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0xfef0fe90>
   18908:	00200e13          	li	t3,2
   1890c:	1bd19463          	bne	gp,t4,18ab4 <fail>

00018910 <test_3>:
   18910:	0ff010b7          	lui	ra,0xff01
   18914:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   18918:	0f00f193          	andi	gp,ra,240
   1891c:	0f000e93          	li	t4,240
   18920:	00300e13          	li	t3,3
   18924:	19d19863          	bne	gp,t4,18ab4 <fail>

00018928 <test_4>:
   18928:	00ff00b7          	lui	ra,0xff0
   1892c:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   18930:	70f0f193          	andi	gp,ra,1807
   18934:	00f00e93          	li	t4,15
   18938:	00400e13          	li	t3,4
   1893c:	17d19c63          	bne	gp,t4,18ab4 <fail>

00018940 <test_5>:
   18940:	f00ff0b7          	lui	ra,0xf00ff
   18944:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   18948:	0f00f193          	andi	gp,ra,240
   1894c:	00000e93          	li	t4,0
   18950:	00500e13          	li	t3,5
   18954:	17d19063          	bne	gp,t4,18ab4 <fail>

00018958 <test_6>:
   18958:	ff0100b7          	lui	ra,0xff010
   1895c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0xfef0fe90>
   18960:	0f00f093          	andi	ra,ra,240
   18964:	00000e93          	li	t4,0
   18968:	00600e13          	li	t3,6
   1896c:	15d09463          	bne	ra,t4,18ab4 <fail>

00018970 <test_7>:
   18970:	00000213          	li	tp,0
   18974:	0ff010b7          	lui	ra,0xff01
   18978:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   1897c:	70f0f193          	andi	gp,ra,1807
   18980:	00018313          	mv	t1,gp
   18984:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18988:	00200293          	li	t0,2
   1898c:	fe5214e3          	bne	tp,t0,18974 <test_7+0x4>
   18990:	70000e93          	li	t4,1792
   18994:	00700e13          	li	t3,7
   18998:	11d31e63          	bne	t1,t4,18ab4 <fail>

0001899c <test_8>:
   1899c:	00000213          	li	tp,0
   189a0:	00ff00b7          	lui	ra,0xff0
   189a4:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   189a8:	0f00f193          	andi	gp,ra,240
   189ac:	00000013          	nop
   189b0:	00018313          	mv	t1,gp
   189b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189b8:	00200293          	li	t0,2
   189bc:	fe5212e3          	bne	tp,t0,189a0 <test_8+0x4>
   189c0:	0f000e93          	li	t4,240
   189c4:	00800e13          	li	t3,8
   189c8:	0fd31663          	bne	t1,t4,18ab4 <fail>

000189cc <test_9>:
   189cc:	00000213          	li	tp,0
   189d0:	f00ff0b7          	lui	ra,0xf00ff
   189d4:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   189d8:	f0f0f193          	andi	gp,ra,-241
   189dc:	00000013          	nop
   189e0:	00000013          	nop
   189e4:	00018313          	mv	t1,gp
   189e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189ec:	00200293          	li	t0,2
   189f0:	fe5210e3          	bne	tp,t0,189d0 <test_9+0x4>
   189f4:	f00ffeb7          	lui	t4,0xf00ff
   189f8:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0xefffef9f>
   189fc:	00900e13          	li	t3,9
   18a00:	0bd31a63          	bne	t1,t4,18ab4 <fail>

00018a04 <test_10>:
   18a04:	00000213          	li	tp,0
   18a08:	0ff010b7          	lui	ra,0xff01
   18a0c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_edata+0xfe00f80>
   18a10:	70f0f193          	andi	gp,ra,1807
   18a14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a18:	00200293          	li	t0,2
   18a1c:	fe5216e3          	bne	tp,t0,18a08 <test_10+0x4>
   18a20:	70000e93          	li	t4,1792
   18a24:	00a00e13          	li	t3,10
   18a28:	09d19663          	bne	gp,t4,18ab4 <fail>

00018a2c <test_11>:
   18a2c:	00000213          	li	tp,0
   18a30:	00ff00b7          	lui	ra,0xff0
   18a34:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   18a38:	00000013          	nop
   18a3c:	0f00f193          	andi	gp,ra,240
   18a40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a44:	00200293          	li	t0,2
   18a48:	fe5214e3          	bne	tp,t0,18a30 <test_11+0x4>
   18a4c:	0f000e93          	li	t4,240
   18a50:	00b00e13          	li	t3,11
   18a54:	07d19063          	bne	gp,t4,18ab4 <fail>

00018a58 <test_12>:
   18a58:	00000213          	li	tp,0
   18a5c:	f00ff0b7          	lui	ra,0xf00ff
   18a60:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0xefffef9f>
   18a64:	00000013          	nop
   18a68:	00000013          	nop
   18a6c:	70f0f193          	andi	gp,ra,1807
   18a70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a74:	00200293          	li	t0,2
   18a78:	fe5212e3          	bne	tp,t0,18a5c <test_12+0x4>
   18a7c:	00f00e93          	li	t4,15
   18a80:	00c00e13          	li	t3,12
   18a84:	03d19863          	bne	gp,t4,18ab4 <fail>

00018a88 <test_13>:
   18a88:	0f007093          	andi	ra,zero,240
   18a8c:	00000e93          	li	t4,0
   18a90:	00d00e13          	li	t3,13
   18a94:	03d09063          	bne	ra,t4,18ab4 <fail>

00018a98 <test_14>:
   18a98:	00ff00b7          	lui	ra,0xff0
   18a9c:	0ff08093          	addi	ra,ra,255 # ff00ff <_edata+0xef008f>
   18aa0:	70f0f013          	andi	zero,ra,1807
   18aa4:	00000e93          	li	t4,0
   18aa8:	00e00e13          	li	t3,14
   18aac:	01d01463          	bne	zero,t4,18ab4 <fail>
   18ab0:	05c01463          	bne	zero,t3,18af8 <pass>

00018ab4 <fail>:
   18ab4:	0ff00513          	li	a0,255

00018ab8 <.delay_fail>:
   18ab8:	fff50513          	addi	a0,a0,-1
   18abc:	fe051ee3          	bnez	a0,18ab8 <.delay_fail>
   18ac0:	02000537          	lui	a0,0x2000
   18ac4:	04500593          	li	a1,69
   18ac8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18acc:	05200613          	li	a2,82
   18ad0:	00c52023          	sw	a2,0(a0)
   18ad4:	00c52023          	sw	a2,0(a0)
   18ad8:	04f00693          	li	a3,79
   18adc:	00d52023          	sw	a3,0(a0)
   18ae0:	00c52023          	sw	a2,0(a0)
   18ae4:	00d00713          	li	a4,13
   18ae8:	00e52023          	sw	a4,0(a0)
   18aec:	00a00793          	li	a5,10
   18af0:	00f52023          	sw	a5,0(a0)
   18af4:	e38f706f          	j	1012c <andi_ret>

00018af8 <pass>:
   18af8:	0ff00513          	li	a0,255

00018afc <.delay_ok>:
   18afc:	fff50513          	addi	a0,a0,-1
   18b00:	fe051ee3          	bnez	a0,18afc <.delay_ok>
   18b04:	02000537          	lui	a0,0x2000
   18b08:	04f00593          	li	a1,79
   18b0c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18b10:	04b00613          	li	a2,75
   18b14:	00c52023          	sw	a2,0(a0)
   18b18:	00d00693          	li	a3,13
   18b1c:	00d52023          	sw	a3,0(a0)
   18b20:	00a00713          	li	a4,10
   18b24:	00e52023          	sw	a4,0(a0)
   18b28:	e04f706f          	j	1012c <andi_ret>

00018b2c <j>:
   18b2c:	0ff00513          	li	a0,255

00018b30 <.delay_pr>:
   18b30:	fff50513          	addi	a0,a0,-1
   18b34:	fe051ee3          	bnez	a0,18b30 <.delay_pr>
   18b38:	00019537          	lui	a0,0x19
   18b3c:	b5850513          	addi	a0,a0,-1192 # 18b58 <.test_name>
   18b40:	02000637          	lui	a2,0x2000

00018b44 <.prname_next>:
   18b44:	00050583          	lb	a1,0(a0)
   18b48:	00058a63          	beqz	a1,18b5c <.prname_done>
   18b4c:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   18b50:	00150513          	addi	a0,a0,1
   18b54:	ff1ff06f          	j	18b44 <.prname_next>

00018b58 <.test_name>:
   18b58:	006a                	c.slli	zero,0x1a
	...

00018b5c <.prname_done>:
   18b5c:	02e00593          	li	a1,46
   18b60:	00b62023          	sw	a1,0(a2)
   18b64:	00b62023          	sw	a1,0(a2)
   18b68:	00200e13          	li	t3,2
   18b6c:	0080006f          	j	18b74 <test_2>
   18b70:	0340006f          	j	18ba4 <fail>

00018b74 <test_2>:
   18b74:	00100093          	li	ra,1
   18b78:	0140006f          	j	18b8c <test_2+0x18>
   18b7c:	00108093          	addi	ra,ra,1
   18b80:	00108093          	addi	ra,ra,1
   18b84:	00108093          	addi	ra,ra,1
   18b88:	00108093          	addi	ra,ra,1
   18b8c:	00108093          	addi	ra,ra,1
   18b90:	00108093          	addi	ra,ra,1
   18b94:	00300e93          	li	t4,3
   18b98:	00300e13          	li	t3,3
   18b9c:	01d09463          	bne	ra,t4,18ba4 <fail>
   18ba0:	05c01463          	bne	zero,t3,18be8 <pass>

00018ba4 <fail>:
   18ba4:	0ff00513          	li	a0,255

00018ba8 <.delay_fail>:
   18ba8:	fff50513          	addi	a0,a0,-1
   18bac:	fe051ee3          	bnez	a0,18ba8 <.delay_fail>
   18bb0:	02000537          	lui	a0,0x2000
   18bb4:	04500593          	li	a1,69
   18bb8:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18bbc:	05200613          	li	a2,82
   18bc0:	00c52023          	sw	a2,0(a0)
   18bc4:	00c52023          	sw	a2,0(a0)
   18bc8:	04f00693          	li	a3,79
   18bcc:	00d52023          	sw	a3,0(a0)
   18bd0:	00c52023          	sw	a2,0(a0)
   18bd4:	00d00713          	li	a4,13
   18bd8:	00e52023          	sw	a4,0(a0)
   18bdc:	00a00793          	li	a5,10
   18be0:	00f52023          	sw	a5,0(a0)
   18be4:	cf4f706f          	j	100d8 <j_ret>

00018be8 <pass>:
   18be8:	0ff00513          	li	a0,255

00018bec <.delay_ok>:
   18bec:	fff50513          	addi	a0,a0,-1
   18bf0:	fe051ee3          	bnez	a0,18bec <.delay_ok>
   18bf4:	02000537          	lui	a0,0x2000
   18bf8:	04f00593          	li	a1,79
   18bfc:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18c00:	04b00613          	li	a2,75
   18c04:	00c52023          	sw	a2,0(a0)
   18c08:	00d00693          	li	a3,13
   18c0c:	00d52023          	sw	a3,0(a0)
   18c10:	00a00713          	li	a4,10
   18c14:	00e52023          	sw	a4,0(a0)
   18c18:	cc0f706f          	j	100d8 <j_ret>

00018c1c <bge>:
   18c1c:	0ff00513          	li	a0,255

00018c20 <.delay_pr>:
   18c20:	fff50513          	addi	a0,a0,-1
   18c24:	fe051ee3          	bnez	a0,18c20 <.delay_pr>
   18c28:	00019537          	lui	a0,0x19
   18c2c:	c4850513          	addi	a0,a0,-952 # 18c48 <.test_name>
   18c30:	02000637          	lui	a2,0x2000

00018c34 <.prname_next>:
   18c34:	00050583          	lb	a1,0(a0)
   18c38:	00058a63          	beqz	a1,18c4c <.prname_done>
   18c3c:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   18c40:	00150513          	addi	a0,a0,1
   18c44:	ff1ff06f          	j	18c34 <.prname_next>

00018c48 <.test_name>:
   18c48:	6762                	flw	fa4,24(sp)
   18c4a:	0065                	c.nop	25

00018c4c <.prname_done>:
   18c4c:	02e00593          	li	a1,46
   18c50:	00b62023          	sw	a1,0(a2)
   18c54:	00b62023          	sw	a1,0(a2)

00018c58 <test_2>:
   18c58:	00200e13          	li	t3,2
   18c5c:	00000093          	li	ra,0
   18c60:	00000113          	li	sp,0
   18c64:	0020d663          	bge	ra,sp,18c70 <test_2+0x18>
   18c68:	31c01863          	bne	zero,t3,18f78 <fail>
   18c6c:	01c01663          	bne	zero,t3,18c78 <test_3>
   18c70:	fe20dee3          	bge	ra,sp,18c6c <test_2+0x14>
   18c74:	31c01263          	bne	zero,t3,18f78 <fail>

00018c78 <test_3>:
   18c78:	00300e13          	li	t3,3
   18c7c:	00100093          	li	ra,1
   18c80:	00100113          	li	sp,1
   18c84:	0020d663          	bge	ra,sp,18c90 <test_3+0x18>
   18c88:	2fc01863          	bne	zero,t3,18f78 <fail>
   18c8c:	01c01663          	bne	zero,t3,18c98 <test_4>
   18c90:	fe20dee3          	bge	ra,sp,18c8c <test_3+0x14>
   18c94:	2fc01263          	bne	zero,t3,18f78 <fail>

00018c98 <test_4>:
   18c98:	00400e13          	li	t3,4
   18c9c:	fff00093          	li	ra,-1
   18ca0:	fff00113          	li	sp,-1
   18ca4:	0020d663          	bge	ra,sp,18cb0 <test_4+0x18>
   18ca8:	2dc01863          	bne	zero,t3,18f78 <fail>
   18cac:	01c01663          	bne	zero,t3,18cb8 <test_5>
   18cb0:	fe20dee3          	bge	ra,sp,18cac <test_4+0x14>
   18cb4:	2dc01263          	bne	zero,t3,18f78 <fail>

00018cb8 <test_5>:
   18cb8:	00500e13          	li	t3,5
   18cbc:	00100093          	li	ra,1
   18cc0:	00000113          	li	sp,0
   18cc4:	0020d663          	bge	ra,sp,18cd0 <test_5+0x18>
   18cc8:	2bc01863          	bne	zero,t3,18f78 <fail>
   18ccc:	01c01663          	bne	zero,t3,18cd8 <test_6>
   18cd0:	fe20dee3          	bge	ra,sp,18ccc <test_5+0x14>
   18cd4:	2bc01263          	bne	zero,t3,18f78 <fail>

00018cd8 <test_6>:
   18cd8:	00600e13          	li	t3,6
   18cdc:	00100093          	li	ra,1
   18ce0:	fff00113          	li	sp,-1
   18ce4:	0020d663          	bge	ra,sp,18cf0 <test_6+0x18>
   18ce8:	29c01863          	bne	zero,t3,18f78 <fail>
   18cec:	01c01663          	bne	zero,t3,18cf8 <test_7>
   18cf0:	fe20dee3          	bge	ra,sp,18cec <test_6+0x14>
   18cf4:	29c01263          	bne	zero,t3,18f78 <fail>

00018cf8 <test_7>:
   18cf8:	00700e13          	li	t3,7
   18cfc:	fff00093          	li	ra,-1
   18d00:	ffe00113          	li	sp,-2
   18d04:	0020d663          	bge	ra,sp,18d10 <test_7+0x18>
   18d08:	27c01863          	bne	zero,t3,18f78 <fail>
   18d0c:	01c01663          	bne	zero,t3,18d18 <test_8>
   18d10:	fe20dee3          	bge	ra,sp,18d0c <test_7+0x14>
   18d14:	27c01263          	bne	zero,t3,18f78 <fail>

00018d18 <test_8>:
   18d18:	00800e13          	li	t3,8
   18d1c:	00000093          	li	ra,0
   18d20:	00100113          	li	sp,1
   18d24:	0020d463          	bge	ra,sp,18d2c <test_8+0x14>
   18d28:	01c01463          	bne	zero,t3,18d30 <test_8+0x18>
   18d2c:	25c01663          	bne	zero,t3,18f78 <fail>
   18d30:	fe20dee3          	bge	ra,sp,18d2c <test_8+0x14>

00018d34 <test_9>:
   18d34:	00900e13          	li	t3,9
   18d38:	fff00093          	li	ra,-1
   18d3c:	00100113          	li	sp,1
   18d40:	0020d463          	bge	ra,sp,18d48 <test_9+0x14>
   18d44:	01c01463          	bne	zero,t3,18d4c <test_9+0x18>
   18d48:	23c01863          	bne	zero,t3,18f78 <fail>
   18d4c:	fe20dee3          	bge	ra,sp,18d48 <test_9+0x14>

00018d50 <test_10>:
   18d50:	00a00e13          	li	t3,10
   18d54:	ffe00093          	li	ra,-2
   18d58:	fff00113          	li	sp,-1
   18d5c:	0020d463          	bge	ra,sp,18d64 <test_10+0x14>
   18d60:	01c01463          	bne	zero,t3,18d68 <test_10+0x18>
   18d64:	21c01a63          	bne	zero,t3,18f78 <fail>
   18d68:	fe20dee3          	bge	ra,sp,18d64 <test_10+0x14>

00018d6c <test_11>:
   18d6c:	00b00e13          	li	t3,11
   18d70:	ffe00093          	li	ra,-2
   18d74:	00100113          	li	sp,1
   18d78:	0020d463          	bge	ra,sp,18d80 <test_11+0x14>
   18d7c:	01c01463          	bne	zero,t3,18d84 <test_11+0x18>
   18d80:	1fc01c63          	bne	zero,t3,18f78 <fail>
   18d84:	fe20dee3          	bge	ra,sp,18d80 <test_11+0x14>

00018d88 <test_12>:
   18d88:	00c00e13          	li	t3,12
   18d8c:	00000213          	li	tp,0
   18d90:	fff00093          	li	ra,-1
   18d94:	00000113          	li	sp,0
   18d98:	1e20d063          	bge	ra,sp,18f78 <fail>
   18d9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18da0:	00200293          	li	t0,2
   18da4:	fe5216e3          	bne	tp,t0,18d90 <test_12+0x8>

00018da8 <test_13>:
   18da8:	00d00e13          	li	t3,13
   18dac:	00000213          	li	tp,0
   18db0:	fff00093          	li	ra,-1
   18db4:	00000113          	li	sp,0
   18db8:	00000013          	nop
   18dbc:	1a20de63          	bge	ra,sp,18f78 <fail>
   18dc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18dc4:	00200293          	li	t0,2
   18dc8:	fe5214e3          	bne	tp,t0,18db0 <test_13+0x8>

00018dcc <test_14>:
   18dcc:	00e00e13          	li	t3,14
   18dd0:	00000213          	li	tp,0
   18dd4:	fff00093          	li	ra,-1
   18dd8:	00000113          	li	sp,0
   18ddc:	00000013          	nop
   18de0:	00000013          	nop
   18de4:	1820da63          	bge	ra,sp,18f78 <fail>
   18de8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18dec:	00200293          	li	t0,2
   18df0:	fe5212e3          	bne	tp,t0,18dd4 <test_14+0x8>

00018df4 <test_15>:
   18df4:	00f00e13          	li	t3,15
   18df8:	00000213          	li	tp,0
   18dfc:	fff00093          	li	ra,-1
   18e00:	00000013          	nop
   18e04:	00000113          	li	sp,0
   18e08:	1620d863          	bge	ra,sp,18f78 <fail>
   18e0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e10:	00200293          	li	t0,2
   18e14:	fe5214e3          	bne	tp,t0,18dfc <test_15+0x8>

00018e18 <test_16>:
   18e18:	01000e13          	li	t3,16
   18e1c:	00000213          	li	tp,0
   18e20:	fff00093          	li	ra,-1
   18e24:	00000013          	nop
   18e28:	00000113          	li	sp,0
   18e2c:	00000013          	nop
   18e30:	1420d463          	bge	ra,sp,18f78 <fail>
   18e34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e38:	00200293          	li	t0,2
   18e3c:	fe5212e3          	bne	tp,t0,18e20 <test_16+0x8>

00018e40 <test_17>:
   18e40:	01100e13          	li	t3,17
   18e44:	00000213          	li	tp,0
   18e48:	fff00093          	li	ra,-1
   18e4c:	00000013          	nop
   18e50:	00000013          	nop
   18e54:	00000113          	li	sp,0
   18e58:	1220d063          	bge	ra,sp,18f78 <fail>
   18e5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e60:	00200293          	li	t0,2
   18e64:	fe5212e3          	bne	tp,t0,18e48 <test_17+0x8>

00018e68 <test_18>:
   18e68:	01200e13          	li	t3,18
   18e6c:	00000213          	li	tp,0
   18e70:	fff00093          	li	ra,-1
   18e74:	00000113          	li	sp,0
   18e78:	1020d063          	bge	ra,sp,18f78 <fail>
   18e7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e80:	00200293          	li	t0,2
   18e84:	fe5216e3          	bne	tp,t0,18e70 <test_18+0x8>

00018e88 <test_19>:
   18e88:	01300e13          	li	t3,19
   18e8c:	00000213          	li	tp,0
   18e90:	fff00093          	li	ra,-1
   18e94:	00000113          	li	sp,0
   18e98:	00000013          	nop
   18e9c:	0c20de63          	bge	ra,sp,18f78 <fail>
   18ea0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ea4:	00200293          	li	t0,2
   18ea8:	fe5214e3          	bne	tp,t0,18e90 <test_19+0x8>

00018eac <test_20>:
   18eac:	01400e13          	li	t3,20
   18eb0:	00000213          	li	tp,0
   18eb4:	fff00093          	li	ra,-1
   18eb8:	00000113          	li	sp,0
   18ebc:	00000013          	nop
   18ec0:	00000013          	nop
   18ec4:	0a20da63          	bge	ra,sp,18f78 <fail>
   18ec8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ecc:	00200293          	li	t0,2
   18ed0:	fe5212e3          	bne	tp,t0,18eb4 <test_20+0x8>

00018ed4 <test_21>:
   18ed4:	01500e13          	li	t3,21
   18ed8:	00000213          	li	tp,0
   18edc:	fff00093          	li	ra,-1
   18ee0:	00000013          	nop
   18ee4:	00000113          	li	sp,0
   18ee8:	0820d863          	bge	ra,sp,18f78 <fail>
   18eec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ef0:	00200293          	li	t0,2
   18ef4:	fe5214e3          	bne	tp,t0,18edc <test_21+0x8>

00018ef8 <test_22>:
   18ef8:	01600e13          	li	t3,22
   18efc:	00000213          	li	tp,0
   18f00:	fff00093          	li	ra,-1
   18f04:	00000013          	nop
   18f08:	00000113          	li	sp,0
   18f0c:	00000013          	nop
   18f10:	0620d463          	bge	ra,sp,18f78 <fail>
   18f14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f18:	00200293          	li	t0,2
   18f1c:	fe5212e3          	bne	tp,t0,18f00 <test_22+0x8>

00018f20 <test_23>:
   18f20:	01700e13          	li	t3,23
   18f24:	00000213          	li	tp,0
   18f28:	fff00093          	li	ra,-1
   18f2c:	00000013          	nop
   18f30:	00000013          	nop
   18f34:	00000113          	li	sp,0
   18f38:	0420d063          	bge	ra,sp,18f78 <fail>
   18f3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f40:	00200293          	li	t0,2
   18f44:	fe5212e3          	bne	tp,t0,18f28 <test_23+0x8>

00018f48 <test_24>:
   18f48:	00100093          	li	ra,1
   18f4c:	0000da63          	bgez	ra,18f60 <test_24+0x18>
   18f50:	00108093          	addi	ra,ra,1
   18f54:	00108093          	addi	ra,ra,1
   18f58:	00108093          	addi	ra,ra,1
   18f5c:	00108093          	addi	ra,ra,1
   18f60:	00108093          	addi	ra,ra,1
   18f64:	00108093          	addi	ra,ra,1
   18f68:	00300e93          	li	t4,3
   18f6c:	01800e13          	li	t3,24
   18f70:	01d09463          	bne	ra,t4,18f78 <fail>
   18f74:	05c01463          	bne	zero,t3,18fbc <pass>

00018f78 <fail>:
   18f78:	0ff00513          	li	a0,255

00018f7c <.delay_fail>:
   18f7c:	fff50513          	addi	a0,a0,-1
   18f80:	fe051ee3          	bnez	a0,18f7c <.delay_fail>
   18f84:	02000537          	lui	a0,0x2000
   18f88:	04500593          	li	a1,69
   18f8c:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18f90:	05200613          	li	a2,82
   18f94:	00c52023          	sw	a2,0(a0)
   18f98:	00c52023          	sw	a2,0(a0)
   18f9c:	04f00693          	li	a3,79
   18fa0:	00d52023          	sw	a3,0(a0)
   18fa4:	00c52023          	sw	a2,0(a0)
   18fa8:	00d00713          	li	a4,13
   18fac:	00e52023          	sw	a4,0(a0)
   18fb0:	00a00793          	li	a5,10
   18fb4:	00f52023          	sw	a5,0(a0)
   18fb8:	938f706f          	j	100f0 <bge_ret>

00018fbc <pass>:
   18fbc:	0ff00513          	li	a0,255

00018fc0 <.delay_ok>:
   18fc0:	fff50513          	addi	a0,a0,-1
   18fc4:	fe051ee3          	bnez	a0,18fc0 <.delay_ok>
   18fc8:	02000537          	lui	a0,0x2000
   18fcc:	04f00593          	li	a1,79
   18fd0:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   18fd4:	04b00613          	li	a2,75
   18fd8:	00c52023          	sw	a2,0(a0)
   18fdc:	00d00693          	li	a3,13
   18fe0:	00d52023          	sw	a3,0(a0)
   18fe4:	00a00713          	li	a4,10
   18fe8:	00e52023          	sw	a4,0(a0)
   18fec:	904f706f          	j	100f0 <bge_ret>

00018ff0 <blt>:
   18ff0:	0ff00513          	li	a0,255

00018ff4 <.delay_pr>:
   18ff4:	fff50513          	addi	a0,a0,-1
   18ff8:	fe051ee3          	bnez	a0,18ff4 <.delay_pr>
   18ffc:	00019537          	lui	a0,0x19
   19000:	01c50513          	addi	a0,a0,28 # 1901c <.test_name>
   19004:	02000637          	lui	a2,0x2000

00019008 <.prname_next>:
   19008:	00050583          	lb	a1,0(a0)
   1900c:	00058a63          	beqz	a1,19020 <.prname_done>
   19010:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   19014:	00150513          	addi	a0,a0,1
   19018:	ff1ff06f          	j	19008 <.prname_next>

0001901c <.test_name>:
   1901c:	6c62                	flw	fs8,24(sp)
   1901e:	0074                	addi	a3,sp,12

00019020 <.prname_done>:
   19020:	02e00593          	li	a1,46
   19024:	00b62023          	sw	a1,0(a2)
   19028:	00b62023          	sw	a1,0(a2)

0001902c <test_2>:
   1902c:	00200e13          	li	t3,2
   19030:	00000093          	li	ra,0
   19034:	00100113          	li	sp,1
   19038:	0020c663          	blt	ra,sp,19044 <test_2+0x18>
   1903c:	2bc01863          	bne	zero,t3,192ec <fail>
   19040:	01c01663          	bne	zero,t3,1904c <test_3>
   19044:	fe20cee3          	blt	ra,sp,19040 <test_2+0x14>
   19048:	2bc01263          	bne	zero,t3,192ec <fail>

0001904c <test_3>:
   1904c:	00300e13          	li	t3,3
   19050:	fff00093          	li	ra,-1
   19054:	00100113          	li	sp,1
   19058:	0020c663          	blt	ra,sp,19064 <test_3+0x18>
   1905c:	29c01863          	bne	zero,t3,192ec <fail>
   19060:	01c01663          	bne	zero,t3,1906c <test_4>
   19064:	fe20cee3          	blt	ra,sp,19060 <test_3+0x14>
   19068:	29c01263          	bne	zero,t3,192ec <fail>

0001906c <test_4>:
   1906c:	00400e13          	li	t3,4
   19070:	ffe00093          	li	ra,-2
   19074:	fff00113          	li	sp,-1
   19078:	0020c663          	blt	ra,sp,19084 <test_4+0x18>
   1907c:	27c01863          	bne	zero,t3,192ec <fail>
   19080:	01c01663          	bne	zero,t3,1908c <test_5>
   19084:	fe20cee3          	blt	ra,sp,19080 <test_4+0x14>
   19088:	27c01263          	bne	zero,t3,192ec <fail>

0001908c <test_5>:
   1908c:	00500e13          	li	t3,5
   19090:	00100093          	li	ra,1
   19094:	00000113          	li	sp,0
   19098:	0020c463          	blt	ra,sp,190a0 <test_5+0x14>
   1909c:	01c01463          	bne	zero,t3,190a4 <test_5+0x18>
   190a0:	25c01663          	bne	zero,t3,192ec <fail>
   190a4:	fe20cee3          	blt	ra,sp,190a0 <test_5+0x14>

000190a8 <test_6>:
   190a8:	00600e13          	li	t3,6
   190ac:	00100093          	li	ra,1
   190b0:	fff00113          	li	sp,-1
   190b4:	0020c463          	blt	ra,sp,190bc <test_6+0x14>
   190b8:	01c01463          	bne	zero,t3,190c0 <test_6+0x18>
   190bc:	23c01863          	bne	zero,t3,192ec <fail>
   190c0:	fe20cee3          	blt	ra,sp,190bc <test_6+0x14>

000190c4 <test_7>:
   190c4:	00700e13          	li	t3,7
   190c8:	fff00093          	li	ra,-1
   190cc:	ffe00113          	li	sp,-2
   190d0:	0020c463          	blt	ra,sp,190d8 <test_7+0x14>
   190d4:	01c01463          	bne	zero,t3,190dc <test_7+0x18>
   190d8:	21c01a63          	bne	zero,t3,192ec <fail>
   190dc:	fe20cee3          	blt	ra,sp,190d8 <test_7+0x14>

000190e0 <test_8>:
   190e0:	00800e13          	li	t3,8
   190e4:	00100093          	li	ra,1
   190e8:	ffe00113          	li	sp,-2
   190ec:	0020c463          	blt	ra,sp,190f4 <test_8+0x14>
   190f0:	01c01463          	bne	zero,t3,190f8 <test_8+0x18>
   190f4:	1fc01c63          	bne	zero,t3,192ec <fail>
   190f8:	fe20cee3          	blt	ra,sp,190f4 <test_8+0x14>

000190fc <test_9>:
   190fc:	00900e13          	li	t3,9
   19100:	00000213          	li	tp,0
   19104:	00000093          	li	ra,0
   19108:	fff00113          	li	sp,-1
   1910c:	1e20c063          	blt	ra,sp,192ec <fail>
   19110:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19114:	00200293          	li	t0,2
   19118:	fe5216e3          	bne	tp,t0,19104 <test_9+0x8>

0001911c <test_10>:
   1911c:	00a00e13          	li	t3,10
   19120:	00000213          	li	tp,0
   19124:	00000093          	li	ra,0
   19128:	fff00113          	li	sp,-1
   1912c:	00000013          	nop
   19130:	1a20ce63          	blt	ra,sp,192ec <fail>
   19134:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19138:	00200293          	li	t0,2
   1913c:	fe5214e3          	bne	tp,t0,19124 <test_10+0x8>

00019140 <test_11>:
   19140:	00b00e13          	li	t3,11
   19144:	00000213          	li	tp,0
   19148:	00000093          	li	ra,0
   1914c:	fff00113          	li	sp,-1
   19150:	00000013          	nop
   19154:	00000013          	nop
   19158:	1820ca63          	blt	ra,sp,192ec <fail>
   1915c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19160:	00200293          	li	t0,2
   19164:	fe5212e3          	bne	tp,t0,19148 <test_11+0x8>

00019168 <test_12>:
   19168:	00c00e13          	li	t3,12
   1916c:	00000213          	li	tp,0
   19170:	00000093          	li	ra,0
   19174:	00000013          	nop
   19178:	fff00113          	li	sp,-1
   1917c:	1620c863          	blt	ra,sp,192ec <fail>
   19180:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19184:	00200293          	li	t0,2
   19188:	fe5214e3          	bne	tp,t0,19170 <test_12+0x8>

0001918c <test_13>:
   1918c:	00d00e13          	li	t3,13
   19190:	00000213          	li	tp,0
   19194:	00000093          	li	ra,0
   19198:	00000013          	nop
   1919c:	fff00113          	li	sp,-1
   191a0:	00000013          	nop
   191a4:	1420c463          	blt	ra,sp,192ec <fail>
   191a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   191ac:	00200293          	li	t0,2
   191b0:	fe5212e3          	bne	tp,t0,19194 <test_13+0x8>

000191b4 <test_14>:
   191b4:	00e00e13          	li	t3,14
   191b8:	00000213          	li	tp,0
   191bc:	00000093          	li	ra,0
   191c0:	00000013          	nop
   191c4:	00000013          	nop
   191c8:	fff00113          	li	sp,-1
   191cc:	1220c063          	blt	ra,sp,192ec <fail>
   191d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   191d4:	00200293          	li	t0,2
   191d8:	fe5212e3          	bne	tp,t0,191bc <test_14+0x8>

000191dc <test_15>:
   191dc:	00f00e13          	li	t3,15
   191e0:	00000213          	li	tp,0
   191e4:	00000093          	li	ra,0
   191e8:	fff00113          	li	sp,-1
   191ec:	1020c063          	blt	ra,sp,192ec <fail>
   191f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   191f4:	00200293          	li	t0,2
   191f8:	fe5216e3          	bne	tp,t0,191e4 <test_15+0x8>

000191fc <test_16>:
   191fc:	01000e13          	li	t3,16
   19200:	00000213          	li	tp,0
   19204:	00000093          	li	ra,0
   19208:	fff00113          	li	sp,-1
   1920c:	00000013          	nop
   19210:	0c20ce63          	blt	ra,sp,192ec <fail>
   19214:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19218:	00200293          	li	t0,2
   1921c:	fe5214e3          	bne	tp,t0,19204 <test_16+0x8>

00019220 <test_17>:
   19220:	01100e13          	li	t3,17
   19224:	00000213          	li	tp,0
   19228:	00000093          	li	ra,0
   1922c:	fff00113          	li	sp,-1
   19230:	00000013          	nop
   19234:	00000013          	nop
   19238:	0a20ca63          	blt	ra,sp,192ec <fail>
   1923c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19240:	00200293          	li	t0,2
   19244:	fe5212e3          	bne	tp,t0,19228 <test_17+0x8>

00019248 <test_18>:
   19248:	01200e13          	li	t3,18
   1924c:	00000213          	li	tp,0
   19250:	00000093          	li	ra,0
   19254:	00000013          	nop
   19258:	fff00113          	li	sp,-1
   1925c:	0820c863          	blt	ra,sp,192ec <fail>
   19260:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19264:	00200293          	li	t0,2
   19268:	fe5214e3          	bne	tp,t0,19250 <test_18+0x8>

0001926c <test_19>:
   1926c:	01300e13          	li	t3,19
   19270:	00000213          	li	tp,0
   19274:	00000093          	li	ra,0
   19278:	00000013          	nop
   1927c:	fff00113          	li	sp,-1
   19280:	00000013          	nop
   19284:	0620c463          	blt	ra,sp,192ec <fail>
   19288:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1928c:	00200293          	li	t0,2
   19290:	fe5212e3          	bne	tp,t0,19274 <test_19+0x8>

00019294 <test_20>:
   19294:	01400e13          	li	t3,20
   19298:	00000213          	li	tp,0
   1929c:	00000093          	li	ra,0
   192a0:	00000013          	nop
   192a4:	00000013          	nop
   192a8:	fff00113          	li	sp,-1
   192ac:	0420c063          	blt	ra,sp,192ec <fail>
   192b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   192b4:	00200293          	li	t0,2
   192b8:	fe5212e3          	bne	tp,t0,1929c <test_20+0x8>

000192bc <test_21>:
   192bc:	00100093          	li	ra,1
   192c0:	00104a63          	bgtz	ra,192d4 <test_21+0x18>
   192c4:	00108093          	addi	ra,ra,1
   192c8:	00108093          	addi	ra,ra,1
   192cc:	00108093          	addi	ra,ra,1
   192d0:	00108093          	addi	ra,ra,1
   192d4:	00108093          	addi	ra,ra,1
   192d8:	00108093          	addi	ra,ra,1
   192dc:	00300e93          	li	t4,3
   192e0:	01500e13          	li	t3,21
   192e4:	01d09463          	bne	ra,t4,192ec <fail>
   192e8:	05c01463          	bne	zero,t3,19330 <pass>

000192ec <fail>:
   192ec:	0ff00513          	li	a0,255

000192f0 <.delay_fail>:
   192f0:	fff50513          	addi	a0,a0,-1
   192f4:	fe051ee3          	bnez	a0,192f0 <.delay_fail>
   192f8:	02000537          	lui	a0,0x2000
   192fc:	04500593          	li	a1,69
   19300:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   19304:	05200613          	li	a2,82
   19308:	00c52023          	sw	a2,0(a0)
   1930c:	00c52023          	sw	a2,0(a0)
   19310:	04f00693          	li	a3,79
   19314:	00d52023          	sw	a3,0(a0)
   19318:	00c52023          	sw	a2,0(a0)
   1931c:	00d00713          	li	a4,13
   19320:	00e52023          	sw	a4,0(a0)
   19324:	00a00793          	li	a5,10
   19328:	00f52023          	sw	a5,0(a0)
   1932c:	dc1f606f          	j	100ec <blt_ret>

00019330 <pass>:
   19330:	0ff00513          	li	a0,255

00019334 <.delay_ok>:
   19334:	fff50513          	addi	a0,a0,-1
   19338:	fe051ee3          	bnez	a0,19334 <.delay_ok>
   1933c:	02000537          	lui	a0,0x2000
   19340:	04f00593          	li	a1,79
   19344:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   19348:	04b00613          	li	a2,75
   1934c:	00c52023          	sw	a2,0(a0)
   19350:	00d00693          	li	a3,13
   19354:	00d52023          	sw	a3,0(a0)
   19358:	00a00713          	li	a4,10
   1935c:	00e52023          	sw	a4,0(a0)
   19360:	d8df606f          	j	100ec <blt_ret>

00019364 <mulh>:
   19364:	0ff00513          	li	a0,255

00019368 <.delay_pr>:
   19368:	fff50513          	addi	a0,a0,-1
   1936c:	fe051ee3          	bnez	a0,19368 <.delay_pr>
   19370:	00019537          	lui	a0,0x19
   19374:	39050513          	addi	a0,a0,912 # 19390 <.test_name>
   19378:	02000637          	lui	a2,0x2000

0001937c <.prname_next>:
   1937c:	00050583          	lb	a1,0(a0)
   19380:	00058c63          	beqz	a1,19398 <.prname_done>
   19384:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   19388:	00150513          	addi	a0,a0,1
   1938c:	ff1ff06f          	j	1937c <.prname_next>

00019390 <.test_name>:
   19390:	756d                	lui	a0,0xffffb
   19392:	686c                	flw	fa1,84(s0)
   19394:	0000                	unimp
	...

00019398 <.prname_done>:
   19398:	02e00593          	li	a1,46
   1939c:	00b62023          	sw	a1,0(a2)
   193a0:	00b62023          	sw	a1,0(a2)

000193a4 <test_2>:
   193a4:	00000093          	li	ra,0
   193a8:	00000113          	li	sp,0
   193ac:	022091b3          	mulh	gp,ra,sp
   193b0:	00000e93          	li	t4,0
   193b4:	00200e13          	li	t3,2
   193b8:	4bd19a63          	bne	gp,t4,1986c <fail>

000193bc <test_3>:
   193bc:	00100093          	li	ra,1
   193c0:	00100113          	li	sp,1
   193c4:	022091b3          	mulh	gp,ra,sp
   193c8:	00000e93          	li	t4,0
   193cc:	00300e13          	li	t3,3
   193d0:	49d19e63          	bne	gp,t4,1986c <fail>

000193d4 <test_4>:
   193d4:	00300093          	li	ra,3
   193d8:	00700113          	li	sp,7
   193dc:	022091b3          	mulh	gp,ra,sp
   193e0:	00000e93          	li	t4,0
   193e4:	00400e13          	li	t3,4
   193e8:	49d19263          	bne	gp,t4,1986c <fail>

000193ec <test_5>:
   193ec:	00000093          	li	ra,0
   193f0:	ffff8137          	lui	sp,0xffff8
   193f4:	022091b3          	mulh	gp,ra,sp
   193f8:	00000e93          	li	t4,0
   193fc:	00500e13          	li	t3,5
   19400:	47d19663          	bne	gp,t4,1986c <fail>

00019404 <test_6>:
   19404:	800000b7          	lui	ra,0x80000
   19408:	00000113          	li	sp,0
   1940c:	022091b3          	mulh	gp,ra,sp
   19410:	00000e93          	li	t4,0
   19414:	00600e13          	li	t3,6
   19418:	45d19a63          	bne	gp,t4,1986c <fail>

0001941c <test_7>:
   1941c:	800000b7          	lui	ra,0x80000
   19420:	00000113          	li	sp,0
   19424:	022091b3          	mulh	gp,ra,sp
   19428:	00000e93          	li	t4,0
   1942c:	00700e13          	li	t3,7
   19430:	43d19e63          	bne	gp,t4,1986c <fail>

00019434 <test_30>:
   19434:	aaaab0b7          	lui	ra,0xaaaab
   19438:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   1943c:	00030137          	lui	sp,0x30
   19440:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x16019>
   19444:	022091b3          	mulh	gp,ra,sp
   19448:	ffff0eb7          	lui	t4,0xffff0
   1944c:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0xffef0011>
   19450:	01e00e13          	li	t3,30
   19454:	41d19c63          	bne	gp,t4,1986c <fail>

00019458 <test_31>:
   19458:	000300b7          	lui	ra,0x30
   1945c:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x16019>
   19460:	aaaab137          	lui	sp,0xaaaab
   19464:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   19468:	022091b3          	mulh	gp,ra,sp
   1946c:	ffff0eb7          	lui	t4,0xffff0
   19470:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0xffef0011>
   19474:	01f00e13          	li	t3,31
   19478:	3fd19a63          	bne	gp,t4,1986c <fail>

0001947c <test_32>:
   1947c:	ff0000b7          	lui	ra,0xff000
   19480:	ff000137          	lui	sp,0xff000
   19484:	022091b3          	mulh	gp,ra,sp
   19488:	00010eb7          	lui	t4,0x10
   1948c:	02000e13          	li	t3,32
   19490:	3dd19e63          	bne	gp,t4,1986c <fail>

00019494 <test_33>:
   19494:	fff00093          	li	ra,-1
   19498:	fff00113          	li	sp,-1
   1949c:	022091b3          	mulh	gp,ra,sp
   194a0:	00000e93          	li	t4,0
   194a4:	02100e13          	li	t3,33
   194a8:	3dd19263          	bne	gp,t4,1986c <fail>

000194ac <test_34>:
   194ac:	fff00093          	li	ra,-1
   194b0:	00100113          	li	sp,1
   194b4:	022091b3          	mulh	gp,ra,sp
   194b8:	fff00e93          	li	t4,-1
   194bc:	02200e13          	li	t3,34
   194c0:	3bd19663          	bne	gp,t4,1986c <fail>

000194c4 <test_35>:
   194c4:	00100093          	li	ra,1
   194c8:	fff00113          	li	sp,-1
   194cc:	022091b3          	mulh	gp,ra,sp
   194d0:	fff00e93          	li	t4,-1
   194d4:	02300e13          	li	t3,35
   194d8:	39d19a63          	bne	gp,t4,1986c <fail>

000194dc <test_8>:
   194dc:	00d000b7          	lui	ra,0xd00
   194e0:	00b00137          	lui	sp,0xb00
   194e4:	022090b3          	mulh	ra,ra,sp
   194e8:	00009eb7          	lui	t4,0x9
   194ec:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   194f0:	00800e13          	li	t3,8
   194f4:	37d09c63          	bne	ra,t4,1986c <fail>

000194f8 <test_9>:
   194f8:	00e000b7          	lui	ra,0xe00
   194fc:	00b00137          	lui	sp,0xb00
   19500:	02209133          	mulh	sp,ra,sp
   19504:	0000aeb7          	lui	t4,0xa
   19508:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1950c:	00900e13          	li	t3,9
   19510:	35d11e63          	bne	sp,t4,1986c <fail>

00019514 <test_10>:
   19514:	00d000b7          	lui	ra,0xd00
   19518:	021090b3          	mulh	ra,ra,ra
   1951c:	0000beb7          	lui	t4,0xb
   19520:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   19524:	00a00e13          	li	t3,10
   19528:	35d09263          	bne	ra,t4,1986c <fail>

0001952c <test_11>:
   1952c:	00000213          	li	tp,0
   19530:	00d000b7          	lui	ra,0xd00
   19534:	00b00137          	lui	sp,0xb00
   19538:	022091b3          	mulh	gp,ra,sp
   1953c:	00018313          	mv	t1,gp
   19540:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19544:	00200293          	li	t0,2
   19548:	fe5214e3          	bne	tp,t0,19530 <test_11+0x4>
   1954c:	00009eb7          	lui	t4,0x9
   19550:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19554:	00b00e13          	li	t3,11
   19558:	31d31a63          	bne	t1,t4,1986c <fail>

0001955c <test_12>:
   1955c:	00000213          	li	tp,0
   19560:	00e000b7          	lui	ra,0xe00
   19564:	00b00137          	lui	sp,0xb00
   19568:	022091b3          	mulh	gp,ra,sp
   1956c:	00000013          	nop
   19570:	00018313          	mv	t1,gp
   19574:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19578:	00200293          	li	t0,2
   1957c:	fe5212e3          	bne	tp,t0,19560 <test_12+0x4>
   19580:	0000aeb7          	lui	t4,0xa
   19584:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19588:	00c00e13          	li	t3,12
   1958c:	2fd31063          	bne	t1,t4,1986c <fail>

00019590 <test_13>:
   19590:	00000213          	li	tp,0
   19594:	00f000b7          	lui	ra,0xf00
   19598:	00b00137          	lui	sp,0xb00
   1959c:	022091b3          	mulh	gp,ra,sp
   195a0:	00000013          	nop
   195a4:	00000013          	nop
   195a8:	00018313          	mv	t1,gp
   195ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   195b0:	00200293          	li	t0,2
   195b4:	fe5210e3          	bne	tp,t0,19594 <test_13+0x4>
   195b8:	0000aeb7          	lui	t4,0xa
   195bc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   195c0:	00d00e13          	li	t3,13
   195c4:	2bd31463          	bne	t1,t4,1986c <fail>

000195c8 <test_14>:
   195c8:	00000213          	li	tp,0
   195cc:	00d000b7          	lui	ra,0xd00
   195d0:	00b00137          	lui	sp,0xb00
   195d4:	022091b3          	mulh	gp,ra,sp
   195d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   195dc:	00200293          	li	t0,2
   195e0:	fe5216e3          	bne	tp,t0,195cc <test_14+0x4>
   195e4:	00009eb7          	lui	t4,0x9
   195e8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   195ec:	00e00e13          	li	t3,14
   195f0:	27d19e63          	bne	gp,t4,1986c <fail>

000195f4 <test_15>:
   195f4:	00000213          	li	tp,0
   195f8:	00e000b7          	lui	ra,0xe00
   195fc:	00b00137          	lui	sp,0xb00
   19600:	00000013          	nop
   19604:	022091b3          	mulh	gp,ra,sp
   19608:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1960c:	00200293          	li	t0,2
   19610:	fe5214e3          	bne	tp,t0,195f8 <test_15+0x4>
   19614:	0000aeb7          	lui	t4,0xa
   19618:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1961c:	00f00e13          	li	t3,15
   19620:	25d19663          	bne	gp,t4,1986c <fail>

00019624 <test_16>:
   19624:	00000213          	li	tp,0
   19628:	00f000b7          	lui	ra,0xf00
   1962c:	00b00137          	lui	sp,0xb00
   19630:	00000013          	nop
   19634:	00000013          	nop
   19638:	022091b3          	mulh	gp,ra,sp
   1963c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19640:	00200293          	li	t0,2
   19644:	fe5212e3          	bne	tp,t0,19628 <test_16+0x4>
   19648:	0000aeb7          	lui	t4,0xa
   1964c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19650:	01000e13          	li	t3,16
   19654:	21d19c63          	bne	gp,t4,1986c <fail>

00019658 <test_17>:
   19658:	00000213          	li	tp,0
   1965c:	00d000b7          	lui	ra,0xd00
   19660:	00000013          	nop
   19664:	00b00137          	lui	sp,0xb00
   19668:	022091b3          	mulh	gp,ra,sp
   1966c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19670:	00200293          	li	t0,2
   19674:	fe5214e3          	bne	tp,t0,1965c <test_17+0x4>
   19678:	00009eb7          	lui	t4,0x9
   1967c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19680:	01100e13          	li	t3,17
   19684:	1fd19463          	bne	gp,t4,1986c <fail>

00019688 <test_18>:
   19688:	00000213          	li	tp,0
   1968c:	00e000b7          	lui	ra,0xe00
   19690:	00000013          	nop
   19694:	00b00137          	lui	sp,0xb00
   19698:	00000013          	nop
   1969c:	022091b3          	mulh	gp,ra,sp
   196a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   196a4:	00200293          	li	t0,2
   196a8:	fe5212e3          	bne	tp,t0,1968c <test_18+0x4>
   196ac:	0000aeb7          	lui	t4,0xa
   196b0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   196b4:	01200e13          	li	t3,18
   196b8:	1bd19a63          	bne	gp,t4,1986c <fail>

000196bc <test_19>:
   196bc:	00000213          	li	tp,0
   196c0:	00f000b7          	lui	ra,0xf00
   196c4:	00000013          	nop
   196c8:	00000013          	nop
   196cc:	00b00137          	lui	sp,0xb00
   196d0:	022091b3          	mulh	gp,ra,sp
   196d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   196d8:	00200293          	li	t0,2
   196dc:	fe5212e3          	bne	tp,t0,196c0 <test_19+0x4>
   196e0:	0000aeb7          	lui	t4,0xa
   196e4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   196e8:	01300e13          	li	t3,19
   196ec:	19d19063          	bne	gp,t4,1986c <fail>

000196f0 <test_20>:
   196f0:	00000213          	li	tp,0
   196f4:	00b00137          	lui	sp,0xb00
   196f8:	00d000b7          	lui	ra,0xd00
   196fc:	022091b3          	mulh	gp,ra,sp
   19700:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19704:	00200293          	li	t0,2
   19708:	fe5216e3          	bne	tp,t0,196f4 <test_20+0x4>
   1970c:	00009eb7          	lui	t4,0x9
   19710:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19714:	01400e13          	li	t3,20
   19718:	15d19a63          	bne	gp,t4,1986c <fail>

0001971c <test_21>:
   1971c:	00000213          	li	tp,0
   19720:	00b00137          	lui	sp,0xb00
   19724:	00e000b7          	lui	ra,0xe00
   19728:	00000013          	nop
   1972c:	022091b3          	mulh	gp,ra,sp
   19730:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19734:	00200293          	li	t0,2
   19738:	fe5214e3          	bne	tp,t0,19720 <test_21+0x4>
   1973c:	0000aeb7          	lui	t4,0xa
   19740:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19744:	01500e13          	li	t3,21
   19748:	13d19263          	bne	gp,t4,1986c <fail>

0001974c <test_22>:
   1974c:	00000213          	li	tp,0
   19750:	00b00137          	lui	sp,0xb00
   19754:	00f000b7          	lui	ra,0xf00
   19758:	00000013          	nop
   1975c:	00000013          	nop
   19760:	022091b3          	mulh	gp,ra,sp
   19764:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19768:	00200293          	li	t0,2
   1976c:	fe5212e3          	bne	tp,t0,19750 <test_22+0x4>
   19770:	0000aeb7          	lui	t4,0xa
   19774:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19778:	01600e13          	li	t3,22
   1977c:	0fd19863          	bne	gp,t4,1986c <fail>

00019780 <test_23>:
   19780:	00000213          	li	tp,0
   19784:	00b00137          	lui	sp,0xb00
   19788:	00000013          	nop
   1978c:	00d000b7          	lui	ra,0xd00
   19790:	022091b3          	mulh	gp,ra,sp
   19794:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19798:	00200293          	li	t0,2
   1979c:	fe5214e3          	bne	tp,t0,19784 <test_23+0x4>
   197a0:	00009eb7          	lui	t4,0x9
   197a4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   197a8:	01700e13          	li	t3,23
   197ac:	0dd19063          	bne	gp,t4,1986c <fail>

000197b0 <test_24>:
   197b0:	00000213          	li	tp,0
   197b4:	00b00137          	lui	sp,0xb00
   197b8:	00000013          	nop
   197bc:	00e000b7          	lui	ra,0xe00
   197c0:	00000013          	nop
   197c4:	022091b3          	mulh	gp,ra,sp
   197c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   197cc:	00200293          	li	t0,2
   197d0:	fe5212e3          	bne	tp,t0,197b4 <test_24+0x4>
   197d4:	0000aeb7          	lui	t4,0xa
   197d8:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   197dc:	01800e13          	li	t3,24
   197e0:	09d19663          	bne	gp,t4,1986c <fail>

000197e4 <test_25>:
   197e4:	00000213          	li	tp,0
   197e8:	00b00137          	lui	sp,0xb00
   197ec:	00000013          	nop
   197f0:	00000013          	nop
   197f4:	00f000b7          	lui	ra,0xf00
   197f8:	022091b3          	mulh	gp,ra,sp
   197fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19800:	00200293          	li	t0,2
   19804:	fe5212e3          	bne	tp,t0,197e8 <test_25+0x4>
   19808:	0000aeb7          	lui	t4,0xa
   1980c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19810:	01900e13          	li	t3,25
   19814:	05d19c63          	bne	gp,t4,1986c <fail>

00019818 <test_26>:
   19818:	7c0000b7          	lui	ra,0x7c000
   1981c:	02101133          	mulh	sp,zero,ra
   19820:	00000e93          	li	t4,0
   19824:	01a00e13          	li	t3,26
   19828:	05d11263          	bne	sp,t4,1986c <fail>

0001982c <test_27>:
   1982c:	800000b7          	lui	ra,0x80000
   19830:	02009133          	mulh	sp,ra,zero
   19834:	00000e93          	li	t4,0
   19838:	01b00e13          	li	t3,27
   1983c:	03d11863          	bne	sp,t4,1986c <fail>

00019840 <test_28>:
   19840:	020010b3          	mulh	ra,zero,zero
   19844:	00000e93          	li	t4,0
   19848:	01c00e13          	li	t3,28
   1984c:	03d09063          	bne	ra,t4,1986c <fail>

00019850 <test_29>:
   19850:	021000b7          	lui	ra,0x2100
   19854:	02200137          	lui	sp,0x2200
   19858:	02209033          	mulh	zero,ra,sp
   1985c:	00000e93          	li	t4,0
   19860:	01d00e13          	li	t3,29
   19864:	01d01463          	bne	zero,t4,1986c <fail>
   19868:	05c01463          	bne	zero,t3,198b0 <pass>

0001986c <fail>:
   1986c:	0ff00513          	li	a0,255

00019870 <.delay_fail>:
   19870:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0xffefaf8f>
   19874:	fe051ee3          	bnez	a0,19870 <.delay_fail>
   19878:	02000537          	lui	a0,0x2000
   1987c:	04500593          	li	a1,69
   19880:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   19884:	05200613          	li	a2,82
   19888:	00c52023          	sw	a2,0(a0)
   1988c:	00c52023          	sw	a2,0(a0)
   19890:	04f00693          	li	a3,79
   19894:	00d52023          	sw	a3,0(a0)
   19898:	00c52023          	sw	a2,0(a0)
   1989c:	00d00713          	li	a4,13
   198a0:	00e52023          	sw	a4,0(a0)
   198a4:	00a00793          	li	a5,10
   198a8:	00f52023          	sw	a5,0(a0)
   198ac:	8b5f606f          	j	10160 <mulh_ret>

000198b0 <pass>:
   198b0:	0ff00513          	li	a0,255

000198b4 <.delay_ok>:
   198b4:	fff50513          	addi	a0,a0,-1
   198b8:	fe051ee3          	bnez	a0,198b4 <.delay_ok>
   198bc:	02000537          	lui	a0,0x2000
   198c0:	04f00593          	li	a1,79
   198c4:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   198c8:	04b00613          	li	a2,75
   198cc:	00c52023          	sw	a2,0(a0)
   198d0:	00d00693          	li	a3,13
   198d4:	00d52023          	sw	a3,0(a0)
   198d8:	00a00713          	li	a4,10
   198dc:	00e52023          	sw	a4,0(a0)
   198e0:	881f606f          	j	10160 <mulh_ret>

000198e4 <mulhsu>:
   198e4:	0ff00513          	li	a0,255

000198e8 <.delay_pr>:
   198e8:	fff50513          	addi	a0,a0,-1
   198ec:	fe051ee3          	bnez	a0,198e8 <.delay_pr>
   198f0:	0001a537          	lui	a0,0x1a
   198f4:	91050513          	addi	a0,a0,-1776 # 19910 <.test_name>
   198f8:	02000637          	lui	a2,0x2000

000198fc <.prname_next>:
   198fc:	00050583          	lb	a1,0(a0)
   19900:	00058c63          	beqz	a1,19918 <.prname_done>
   19904:	00b62023          	sw	a1,0(a2) # 2000000 <_edata+0x1efff90>
   19908:	00150513          	addi	a0,a0,1
   1990c:	ff1ff06f          	j	198fc <.prname_next>

00019910 <.test_name>:
   19910:	756d                	lui	a0,0xffffb
   19912:	686c                	flw	fa1,84(s0)
   19914:	00007573          	csrrci	a0,ustatus,0

00019918 <.prname_done>:
   19918:	02e00593          	li	a1,46
   1991c:	00b62023          	sw	a1,0(a2)
   19920:	00b62023          	sw	a1,0(a2)

00019924 <test_2>:
   19924:	00000093          	li	ra,0
   19928:	00000113          	li	sp,0
   1992c:	0220a1b3          	mulhsu	gp,ra,sp
   19930:	00000e93          	li	t4,0
   19934:	00200e13          	li	t3,2
   19938:	4bd19a63          	bne	gp,t4,19dec <fail>

0001993c <test_3>:
   1993c:	00100093          	li	ra,1
   19940:	00100113          	li	sp,1
   19944:	0220a1b3          	mulhsu	gp,ra,sp
   19948:	00000e93          	li	t4,0
   1994c:	00300e13          	li	t3,3
   19950:	49d19e63          	bne	gp,t4,19dec <fail>

00019954 <test_4>:
   19954:	00300093          	li	ra,3
   19958:	00700113          	li	sp,7
   1995c:	0220a1b3          	mulhsu	gp,ra,sp
   19960:	00000e93          	li	t4,0
   19964:	00400e13          	li	t3,4
   19968:	49d19263          	bne	gp,t4,19dec <fail>

0001996c <test_5>:
   1996c:	00000093          	li	ra,0
   19970:	ffff8137          	lui	sp,0xffff8
   19974:	0220a1b3          	mulhsu	gp,ra,sp
   19978:	00000e93          	li	t4,0
   1997c:	00500e13          	li	t3,5
   19980:	47d19663          	bne	gp,t4,19dec <fail>

00019984 <test_6>:
   19984:	800000b7          	lui	ra,0x80000
   19988:	00000113          	li	sp,0
   1998c:	0220a1b3          	mulhsu	gp,ra,sp
   19990:	00000e93          	li	t4,0
   19994:	00600e13          	li	t3,6
   19998:	45d19a63          	bne	gp,t4,19dec <fail>

0001999c <test_7>:
   1999c:	800000b7          	lui	ra,0x80000
   199a0:	ffff8137          	lui	sp,0xffff8
   199a4:	0220a1b3          	mulhsu	gp,ra,sp
   199a8:	80004eb7          	lui	t4,0x80004
   199ac:	00700e13          	li	t3,7
   199b0:	43d19e63          	bne	gp,t4,19dec <fail>

000199b4 <test_30>:
   199b4:	aaaab0b7          	lui	ra,0xaaaab
   199b8:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   199bc:	00030137          	lui	sp,0x30
   199c0:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x16019>
   199c4:	0220a1b3          	mulhsu	gp,ra,sp
   199c8:	ffff0eb7          	lui	t4,0xffff0
   199cc:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0xffef0011>
   199d0:	01e00e13          	li	t3,30
   199d4:	41d19c63          	bne	gp,t4,19dec <fail>

000199d8 <test_31>:
   199d8:	000300b7          	lui	ra,0x30
   199dc:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x16019>
   199e0:	aaaab137          	lui	sp,0xaaaab
   199e4:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0xaa9aaa3b>
   199e8:	0220a1b3          	mulhsu	gp,ra,sp
   199ec:	00020eb7          	lui	t4,0x20
   199f0:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x609a>
   199f4:	01f00e13          	li	t3,31
   199f8:	3fd19a63          	bne	gp,t4,19dec <fail>

000199fc <test_32>:
   199fc:	ff0000b7          	lui	ra,0xff000
   19a00:	ff000137          	lui	sp,0xff000
   19a04:	0220a1b3          	mulhsu	gp,ra,sp
   19a08:	ff010eb7          	lui	t4,0xff010
   19a0c:	02000e13          	li	t3,32
   19a10:	3dd19e63          	bne	gp,t4,19dec <fail>

00019a14 <test_33>:
   19a14:	fff00093          	li	ra,-1
   19a18:	fff00113          	li	sp,-1
   19a1c:	0220a1b3          	mulhsu	gp,ra,sp
   19a20:	fff00e93          	li	t4,-1
   19a24:	02100e13          	li	t3,33
   19a28:	3dd19263          	bne	gp,t4,19dec <fail>

00019a2c <test_34>:
   19a2c:	fff00093          	li	ra,-1
   19a30:	00100113          	li	sp,1
   19a34:	0220a1b3          	mulhsu	gp,ra,sp
   19a38:	fff00e93          	li	t4,-1
   19a3c:	02200e13          	li	t3,34
   19a40:	3bd19663          	bne	gp,t4,19dec <fail>

00019a44 <test_35>:
   19a44:	00100093          	li	ra,1
   19a48:	fff00113          	li	sp,-1
   19a4c:	0220a1b3          	mulhsu	gp,ra,sp
   19a50:	00000e93          	li	t4,0
   19a54:	02300e13          	li	t3,35
   19a58:	39d19a63          	bne	gp,t4,19dec <fail>

00019a5c <test_8>:
   19a5c:	00d000b7          	lui	ra,0xd00
   19a60:	00b00137          	lui	sp,0xb00
   19a64:	0220a0b3          	mulhsu	ra,ra,sp
   19a68:	00009eb7          	lui	t4,0x9
   19a6c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19a70:	00800e13          	li	t3,8
   19a74:	37d09c63          	bne	ra,t4,19dec <fail>

00019a78 <test_9>:
   19a78:	00e000b7          	lui	ra,0xe00
   19a7c:	00b00137          	lui	sp,0xb00
   19a80:	0220a133          	mulhsu	sp,ra,sp
   19a84:	0000aeb7          	lui	t4,0xa
   19a88:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19a8c:	00900e13          	li	t3,9
   19a90:	35d11e63          	bne	sp,t4,19dec <fail>

00019a94 <test_10>:
   19a94:	00d000b7          	lui	ra,0xd00
   19a98:	0210a0b3          	mulhsu	ra,ra,ra
   19a9c:	0000beb7          	lui	t4,0xb
   19aa0:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   19aa4:	00a00e13          	li	t3,10
   19aa8:	35d09263          	bne	ra,t4,19dec <fail>

00019aac <test_11>:
   19aac:	00000213          	li	tp,0
   19ab0:	00d000b7          	lui	ra,0xd00
   19ab4:	00b00137          	lui	sp,0xb00
   19ab8:	0220a1b3          	mulhsu	gp,ra,sp
   19abc:	00018313          	mv	t1,gp
   19ac0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ac4:	00200293          	li	t0,2
   19ac8:	fe5214e3          	bne	tp,t0,19ab0 <test_11+0x4>
   19acc:	00009eb7          	lui	t4,0x9
   19ad0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19ad4:	00b00e13          	li	t3,11
   19ad8:	31d31a63          	bne	t1,t4,19dec <fail>

00019adc <test_12>:
   19adc:	00000213          	li	tp,0
   19ae0:	00e000b7          	lui	ra,0xe00
   19ae4:	00b00137          	lui	sp,0xb00
   19ae8:	0220a1b3          	mulhsu	gp,ra,sp
   19aec:	00000013          	nop
   19af0:	00018313          	mv	t1,gp
   19af4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19af8:	00200293          	li	t0,2
   19afc:	fe5212e3          	bne	tp,t0,19ae0 <test_12+0x4>
   19b00:	0000aeb7          	lui	t4,0xa
   19b04:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19b08:	00c00e13          	li	t3,12
   19b0c:	2fd31063          	bne	t1,t4,19dec <fail>

00019b10 <test_13>:
   19b10:	00000213          	li	tp,0
   19b14:	00f000b7          	lui	ra,0xf00
   19b18:	00b00137          	lui	sp,0xb00
   19b1c:	0220a1b3          	mulhsu	gp,ra,sp
   19b20:	00000013          	nop
   19b24:	00000013          	nop
   19b28:	00018313          	mv	t1,gp
   19b2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19b30:	00200293          	li	t0,2
   19b34:	fe5210e3          	bne	tp,t0,19b14 <test_13+0x4>
   19b38:	0000aeb7          	lui	t4,0xa
   19b3c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19b40:	00d00e13          	li	t3,13
   19b44:	2bd31463          	bne	t1,t4,19dec <fail>

00019b48 <test_14>:
   19b48:	00000213          	li	tp,0
   19b4c:	00d000b7          	lui	ra,0xd00
   19b50:	00b00137          	lui	sp,0xb00
   19b54:	0220a1b3          	mulhsu	gp,ra,sp
   19b58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19b5c:	00200293          	li	t0,2
   19b60:	fe5216e3          	bne	tp,t0,19b4c <test_14+0x4>
   19b64:	00009eb7          	lui	t4,0x9
   19b68:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19b6c:	00e00e13          	li	t3,14
   19b70:	27d19e63          	bne	gp,t4,19dec <fail>

00019b74 <test_15>:
   19b74:	00000213          	li	tp,0
   19b78:	00e000b7          	lui	ra,0xe00
   19b7c:	00b00137          	lui	sp,0xb00
   19b80:	00000013          	nop
   19b84:	0220a1b3          	mulhsu	gp,ra,sp
   19b88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19b8c:	00200293          	li	t0,2
   19b90:	fe5214e3          	bne	tp,t0,19b78 <test_15+0x4>
   19b94:	0000aeb7          	lui	t4,0xa
   19b98:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19b9c:	00f00e13          	li	t3,15
   19ba0:	25d19663          	bne	gp,t4,19dec <fail>

00019ba4 <test_16>:
   19ba4:	00000213          	li	tp,0
   19ba8:	00f000b7          	lui	ra,0xf00
   19bac:	00b00137          	lui	sp,0xb00
   19bb0:	00000013          	nop
   19bb4:	00000013          	nop
   19bb8:	0220a1b3          	mulhsu	gp,ra,sp
   19bbc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19bc0:	00200293          	li	t0,2
   19bc4:	fe5212e3          	bne	tp,t0,19ba8 <test_16+0x4>
   19bc8:	0000aeb7          	lui	t4,0xa
   19bcc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19bd0:	01000e13          	li	t3,16
   19bd4:	21d19c63          	bne	gp,t4,19dec <fail>

00019bd8 <test_17>:
   19bd8:	00000213          	li	tp,0
   19bdc:	00d000b7          	lui	ra,0xd00
   19be0:	00000013          	nop
   19be4:	00b00137          	lui	sp,0xb00
   19be8:	0220a1b3          	mulhsu	gp,ra,sp
   19bec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19bf0:	00200293          	li	t0,2
   19bf4:	fe5214e3          	bne	tp,t0,19bdc <test_17+0x4>
   19bf8:	00009eb7          	lui	t4,0x9
   19bfc:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19c00:	01100e13          	li	t3,17
   19c04:	1fd19463          	bne	gp,t4,19dec <fail>

00019c08 <test_18>:
   19c08:	00000213          	li	tp,0
   19c0c:	00e000b7          	lui	ra,0xe00
   19c10:	00000013          	nop
   19c14:	00b00137          	lui	sp,0xb00
   19c18:	00000013          	nop
   19c1c:	0220a1b3          	mulhsu	gp,ra,sp
   19c20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19c24:	00200293          	li	t0,2
   19c28:	fe5212e3          	bne	tp,t0,19c0c <test_18+0x4>
   19c2c:	0000aeb7          	lui	t4,0xa
   19c30:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19c34:	01200e13          	li	t3,18
   19c38:	1bd19a63          	bne	gp,t4,19dec <fail>

00019c3c <test_19>:
   19c3c:	00000213          	li	tp,0
   19c40:	00f000b7          	lui	ra,0xf00
   19c44:	00000013          	nop
   19c48:	00000013          	nop
   19c4c:	00b00137          	lui	sp,0xb00
   19c50:	0220a1b3          	mulhsu	gp,ra,sp
   19c54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19c58:	00200293          	li	t0,2
   19c5c:	fe5212e3          	bne	tp,t0,19c40 <test_19+0x4>
   19c60:	0000aeb7          	lui	t4,0xa
   19c64:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19c68:	01300e13          	li	t3,19
   19c6c:	19d19063          	bne	gp,t4,19dec <fail>

00019c70 <test_20>:
   19c70:	00000213          	li	tp,0
   19c74:	00b00137          	lui	sp,0xb00
   19c78:	00d000b7          	lui	ra,0xd00
   19c7c:	0220a1b3          	mulhsu	gp,ra,sp
   19c80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19c84:	00200293          	li	t0,2
   19c88:	fe5216e3          	bne	tp,t0,19c74 <test_20+0x4>
   19c8c:	00009eb7          	lui	t4,0x9
   19c90:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19c94:	01400e13          	li	t3,20
   19c98:	15d19a63          	bne	gp,t4,19dec <fail>

00019c9c <test_21>:
   19c9c:	00000213          	li	tp,0
   19ca0:	00b00137          	lui	sp,0xb00
   19ca4:	00e000b7          	lui	ra,0xe00
   19ca8:	00000013          	nop
   19cac:	0220a1b3          	mulhsu	gp,ra,sp
   19cb0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19cb4:	00200293          	li	t0,2
   19cb8:	fe5214e3          	bne	tp,t0,19ca0 <test_21+0x4>
   19cbc:	0000aeb7          	lui	t4,0xa
   19cc0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19cc4:	01500e13          	li	t3,21
   19cc8:	13d19263          	bne	gp,t4,19dec <fail>

00019ccc <test_22>:
   19ccc:	00000213          	li	tp,0
   19cd0:	00b00137          	lui	sp,0xb00
   19cd4:	00f000b7          	lui	ra,0xf00
   19cd8:	00000013          	nop
   19cdc:	00000013          	nop
   19ce0:	0220a1b3          	mulhsu	gp,ra,sp
   19ce4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ce8:	00200293          	li	t0,2
   19cec:	fe5212e3          	bne	tp,t0,19cd0 <test_22+0x4>
   19cf0:	0000aeb7          	lui	t4,0xa
   19cf4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19cf8:	01600e13          	li	t3,22
   19cfc:	0fd19863          	bne	gp,t4,19dec <fail>

00019d00 <test_23>:
   19d00:	00000213          	li	tp,0
   19d04:	00b00137          	lui	sp,0xb00
   19d08:	00000013          	nop
   19d0c:	00d000b7          	lui	ra,0xd00
   19d10:	0220a1b3          	mulhsu	gp,ra,sp
   19d14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d18:	00200293          	li	t0,2
   19d1c:	fe5214e3          	bne	tp,t0,19d04 <test_23+0x4>
   19d20:	00009eb7          	lui	t4,0x9
   19d24:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19d28:	01700e13          	li	t3,23
   19d2c:	0dd19063          	bne	gp,t4,19dec <fail>

00019d30 <test_24>:
   19d30:	00000213          	li	tp,0
   19d34:	00b00137          	lui	sp,0xb00
   19d38:	00000013          	nop
   19d3c:	00e000b7          	lui	ra,0xe00
   19d40:	00000013          	nop
   19d44:	0220a1b3          	mulhsu	gp,ra,sp
   19d48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d4c:	00200293          	li	t0,2
   19d50:	fe5212e3          	bne	tp,t0,19d34 <test_24+0x4>
   19d54:	0000aeb7          	lui	t4,0xa
   19d58:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19d5c:	01800e13          	li	t3,24
   19d60:	09d19663          	bne	gp,t4,19dec <fail>

00019d64 <test_25>:
   19d64:	00000213          	li	tp,0
   19d68:	00b00137          	lui	sp,0xb00
   19d6c:	00000013          	nop
   19d70:	00000013          	nop
   19d74:	00f000b7          	lui	ra,0xf00
   19d78:	0220a1b3          	mulhsu	gp,ra,sp
   19d7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d80:	00200293          	li	t0,2
   19d84:	fe5212e3          	bne	tp,t0,19d68 <test_25+0x4>
   19d88:	0000aeb7          	lui	t4,0xa
   19d8c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19d90:	01900e13          	li	t3,25
   19d94:	05d19c63          	bne	gp,t4,19dec <fail>

00019d98 <test_26>:
   19d98:	7c0000b7          	lui	ra,0x7c000
   19d9c:	02102133          	mulhsu	sp,zero,ra
   19da0:	00000e93          	li	t4,0
   19da4:	01a00e13          	li	t3,26
   19da8:	05d11263          	bne	sp,t4,19dec <fail>

00019dac <test_27>:
   19dac:	800000b7          	lui	ra,0x80000
   19db0:	0200a133          	mulhsu	sp,ra,zero
   19db4:	00000e93          	li	t4,0
   19db8:	01b00e13          	li	t3,27
   19dbc:	03d11863          	bne	sp,t4,19dec <fail>

00019dc0 <test_28>:
   19dc0:	020020b3          	mulhsu	ra,zero,zero
   19dc4:	00000e93          	li	t4,0
   19dc8:	01c00e13          	li	t3,28
   19dcc:	03d09063          	bne	ra,t4,19dec <fail>

00019dd0 <test_29>:
   19dd0:	021000b7          	lui	ra,0x2100
   19dd4:	02200137          	lui	sp,0x2200
   19dd8:	0220a033          	mulhsu	zero,ra,sp
   19ddc:	00000e93          	li	t4,0
   19de0:	01d00e13          	li	t3,29
   19de4:	01d01463          	bne	zero,t4,19dec <fail>
   19de8:	05c01463          	bne	zero,t3,19e30 <pass>

00019dec <fail>:
   19dec:	0ff00513          	li	a0,255

00019df0 <.delay_fail>:
   19df0:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0xffefaf8f>
   19df4:	fe051ee3          	bnez	a0,19df0 <.delay_fail>
   19df8:	02000537          	lui	a0,0x2000
   19dfc:	04500593          	li	a1,69
   19e00:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   19e04:	05200613          	li	a2,82
   19e08:	00c52023          	sw	a2,0(a0)
   19e0c:	00c52023          	sw	a2,0(a0)
   19e10:	04f00693          	li	a3,79
   19e14:	00d52023          	sw	a3,0(a0)
   19e18:	00c52023          	sw	a2,0(a0)
   19e1c:	00d00713          	li	a4,13
   19e20:	00e52023          	sw	a4,0(a0)
   19e24:	00a00793          	li	a5,10
   19e28:	00f52023          	sw	a5,0(a0)
   19e2c:	b38f606f          	j	10164 <mulhsu_ret>

00019e30 <pass>:
   19e30:	0ff00513          	li	a0,255

00019e34 <.delay_ok>:
   19e34:	fff50513          	addi	a0,a0,-1
   19e38:	fe051ee3          	bnez	a0,19e34 <.delay_ok>
   19e3c:	02000537          	lui	a0,0x2000
   19e40:	04f00593          	li	a1,79
   19e44:	00b52023          	sw	a1,0(a0) # 2000000 <_edata+0x1efff90>
   19e48:	04b00613          	li	a2,75
   19e4c:	00c52023          	sw	a2,0(a0)
   19e50:	00d00693          	li	a3,13
   19e54:	00d52023          	sw	a3,0(a0)
   19e58:	00a00713          	li	a4,10
   19e5c:	00e52023          	sw	a4,0(a0)
   19e60:	b04f606f          	j	10164 <mulhsu_ret>
