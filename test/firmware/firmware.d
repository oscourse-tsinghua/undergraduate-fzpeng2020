
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
   10080:	54050513          	addi	a0,a0,1344 # 1a5bc <_etext>
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
   100cc:	414070ef          	jal	ra,174e0 <lui>

000100d0 <lui_ret>:
   100d0:	608040ef          	jal	ra,146d8 <auipc>

000100d4 <auipc_ret>:
   100d4:	1b0090ef          	jal	ra,19284 <j>

000100d8 <j_ret>:
   100d8:	3ec080ef          	jal	ra,184c4 <jal>

000100dc <jal_ret>:
   100dc:	23d040ef          	jal	ra,14b18 <jalr>

000100e0 <jalr_ret>:
   100e0:	374030ef          	jal	ra,13454 <beq>

000100e4 <beq_ret>:
   100e4:	3ed040ef          	jal	ra,14cd0 <bne>

000100e8 <bne_ret>:
   100e8:	660090ef          	jal	ra,19748 <blt>

000100ec <blt_ret>:
   100ec:	288090ef          	jal	ra,19374 <bge>

000100f0 <bge_ret>:
   100f0:	710020ef          	jal	ra,12800 <bltu>

000100f4 <bltu_ret>:
   100f4:	1f0050ef          	jal	ra,152e4 <bgeu>

000100f8 <bgeu_ret>:
   100f8:	70c010ef          	jal	ra,11804 <lb>

000100fc <lb_ret>:
   100fc:	209010ef          	jal	ra,11b04 <lh>

00010100 <lh_ret>:
   10100:	104040ef          	jal	ra,14204 <lw>

00010104 <lw_ret>:
   10104:	5a9060ef          	jal	ra,16eac <lbu>

00010108 <lbu_ret>:
   10108:	0a4070ef          	jal	ra,171ac <lhu>

0001010c <lhu_ret>:
   1010c:	259080ef          	jal	ra,18b64 <sb>

00010110 <sb_ret>:
   10110:	3a9000ef          	jal	ra,10cb8 <sh>

00010114 <sh_ret>:
   10114:	3b9030ef          	jal	ra,13ccc <sw>

00010118 <sw_ret>:
   10118:	6c0040ef          	jal	ra,147d8 <addi>

0001011c <addi_ret>:
   1011c:	00c030ef          	jal	ra,13128 <slti>

00010120 <slti_ret>:
   10120:	729040ef          	jal	ra,15048 <xori>

00010124 <xori_ret>:
   10124:	110080ef          	jal	ra,18234 <ori>

00010128 <ori_ret>:
   10128:	6e5080ef          	jal	ra,1900c <andi>

0001012c <andi_ret>:
   1012c:	061070ef          	jal	ra,1798c <slli>

00010130 <slli_ret>:
   10130:	031030ef          	jal	ra,13960 <srli>

00010134 <srli_ret>:
   10134:	264020ef          	jal	ra,12398 <srai>

00010138 <srai_ret>:
   10138:	498080ef          	jal	ra,185d0 <add>

0001013c <add_ret>:
   1013c:	4e9010ef          	jal	ra,11e24 <sub>

00010140 <sub_ret>:
   10140:	0a4010ef          	jal	ra,111e4 <sll>

00010144 <sll_ret>:
   10144:	7ec060ef          	jal	ra,16930 <slt>

00010148 <slt_ret>:
   10148:	5fc000ef          	jal	ra,10744 <xor>

0001014c <xor_ret>:
   1014c:	174060ef          	jal	ra,162c0 <srl>

00010150 <srl_ret>:
   10150:	321050ef          	jal	ra,15c70 <sra>

00010154 <sra_ret>:
   10154:	078000ef          	jal	ra,101cc <or>

00010158 <or_ret>:
   10158:	371070ef          	jal	ra,17cc8 <and>

0001015c <and_ret>:
   1015c:	161090ef          	jal	ra,19abc <mulh>

00010160 <mulh_ret>:
   10160:	6dd090ef          	jal	ra,1a03c <mulhsu>

00010164 <mulhsu_ret>:
   10164:	58c050ef          	jal	ra,156f0 <mulhu>

00010168 <mulhu_ret>:
   10168:	245020ef          	jal	ra,12bac <mul>

0001016c <mul_ret>:
   1016c:	3d8040ef          	jal	ra,14544 <div>

00010170 <div_ret>:
   10170:	658030ef          	jal	ra,137c8 <divu>

00010174 <divu_ret>:
   10174:	480070ef          	jal	ra,175f4 <rem>

00010178 <rem_ret>:
   10178:	680070ef          	jal	ra,177f8 <remu>

0001017c <remu_ret>:
   1017c:	608070ef          	jal	ra,17784 <simple>

00010180 <simple_ret>:
   10180:	588020ef          	jal	ra,12708 <sdram>

00010184 <sdram_ret>:
   10184:	00010137          	lui	sp,0x10
   10188:	deadc1b7          	lui	gp,0xdeadc
   1018c:	eef18193          	addi	gp,gp,-273 # deadbeef <_edata+0x5eadbe7f>
   10190:	00018213          	mv	tp,gp

00010194 <done>:
   10194:	02000537          	lui	a0,0x2000
   10198:	04400593          	li	a1,68
   1019c:	04f00613          	li	a2,79
   101a0:	04e00693          	li	a3,78
   101a4:	04500713          	li	a4,69
   101a8:	00d00793          	li	a5,13
   101ac:	00a00813          	li	a6,10
   101b0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   101b4:	00c52023          	sw	a2,0(a0)
   101b8:	00d52023          	sw	a3,0(a0)
   101bc:	00e52023          	sw	a4,0(a0)
   101c0:	00f52023          	sw	a5,0(a0)
   101c4:	01052023          	sw	a6,0(a0)

000101c8 <loop>:
   101c8:	0000006f          	j	101c8 <loop>

000101cc <or>:
   101cc:	0ff00513          	li	a0,255

000101d0 <.delay_pr>:
   101d0:	fff50513          	addi	a0,a0,-1
   101d4:	fe051ee3          	bnez	a0,101d0 <.delay_pr>
   101d8:	00010537          	lui	a0,0x10
   101dc:	1f850513          	addi	a0,a0,504 # 101f8 <.test_name>
   101e0:	02000637          	lui	a2,0x2000

000101e4 <.prname_next>:
   101e4:	00050583          	lb	a1,0(a0)
   101e8:	00058a63          	beqz	a1,101fc <.prname_done>
   101ec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   101f0:	00150513          	addi	a0,a0,1
   101f4:	ff1ff06f          	j	101e4 <.prname_next>

000101f8 <.test_name>:
   101f8:	0000726f          	jal	tp,171f8 <test_2+0x10>

000101fc <.prname_done>:
   101fc:	02e00593          	li	a1,46
   10200:	00b62023          	sw	a1,0(a2)
   10204:	00b62023          	sw	a1,0(a2)

00010208 <test_2>:
   10208:	ff0100b7          	lui	ra,0xff010
   1020c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10210:	0f0f1137          	lui	sp,0xf0f1
   10214:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10218:	0020e1b3          	or	gp,ra,sp
   1021c:	ff100eb7          	lui	t4,0xff100
   10220:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10224:	00200e13          	li	t3,2
   10228:	4bd19263          	bne	gp,t4,106cc <fail>

0001022c <test_3>:
   1022c:	0ff010b7          	lui	ra,0xff01
   10230:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10234:	f0f0f137          	lui	sp,0xf0f0f
   10238:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   1023c:	0020e1b3          	or	gp,ra,sp
   10240:	fff10eb7          	lui	t4,0xfff10
   10244:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10248:	00300e13          	li	t3,3
   1024c:	49d19063          	bne	gp,t4,106cc <fail>

00010250 <test_4>:
   10250:	00ff00b7          	lui	ra,0xff0
   10254:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10258:	0f0f1137          	lui	sp,0xf0f1
   1025c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10260:	0020e1b3          	or	gp,ra,sp
   10264:	0fff1eb7          	lui	t4,0xfff1
   10268:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6a43>
   1026c:	00400e13          	li	t3,4
   10270:	45d19e63          	bne	gp,t4,106cc <fail>

00010274 <test_5>:
   10274:	f00ff0b7          	lui	ra,0xf00ff
   10278:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   1027c:	f0f0f137          	lui	sp,0xf0f0f
   10280:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10284:	0020e1b3          	or	gp,ra,sp
   10288:	f0fffeb7          	lui	t4,0xf0fff
   1028c:	0ffe8e93          	addi	t4,t4,255 # f0fff0ff <_edata+0x70fff08f>
   10290:	00500e13          	li	t3,5
   10294:	43d19c63          	bne	gp,t4,106cc <fail>

00010298 <test_6>:
   10298:	ff0100b7          	lui	ra,0xff010
   1029c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   102a0:	0f0f1137          	lui	sp,0xf0f1
   102a4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   102a8:	0020e0b3          	or	ra,ra,sp
   102ac:	ff100eb7          	lui	t4,0xff100
   102b0:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   102b4:	00600e13          	li	t3,6
   102b8:	41d09a63          	bne	ra,t4,106cc <fail>

000102bc <test_7>:
   102bc:	ff0100b7          	lui	ra,0xff010
   102c0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   102c4:	0f0f1137          	lui	sp,0xf0f1
   102c8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   102cc:	0020e133          	or	sp,ra,sp
   102d0:	ff100eb7          	lui	t4,0xff100
   102d4:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   102d8:	00700e13          	li	t3,7
   102dc:	3fd11863          	bne	sp,t4,106cc <fail>

000102e0 <test_8>:
   102e0:	ff0100b7          	lui	ra,0xff010
   102e4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   102e8:	0010e0b3          	or	ra,ra,ra
   102ec:	ff010eb7          	lui	t4,0xff010
   102f0:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   102f4:	00800e13          	li	t3,8
   102f8:	3dd09a63          	bne	ra,t4,106cc <fail>

000102fc <test_9>:
   102fc:	00000213          	li	tp,0
   10300:	ff0100b7          	lui	ra,0xff010
   10304:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10308:	0f0f1137          	lui	sp,0xf0f1
   1030c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10310:	0020e1b3          	or	gp,ra,sp
   10314:	00018313          	mv	t1,gp
   10318:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1031c:	00200293          	li	t0,2
   10320:	fe5210e3          	bne	tp,t0,10300 <test_9+0x4>
   10324:	ff100eb7          	lui	t4,0xff100
   10328:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   1032c:	00900e13          	li	t3,9
   10330:	39d31e63          	bne	t1,t4,106cc <fail>

00010334 <test_10>:
   10334:	00000213          	li	tp,0
   10338:	0ff010b7          	lui	ra,0xff01
   1033c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10340:	f0f0f137          	lui	sp,0xf0f0f
   10344:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10348:	0020e1b3          	or	gp,ra,sp
   1034c:	00000013          	nop
   10350:	00018313          	mv	t1,gp
   10354:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10358:	00200293          	li	t0,2
   1035c:	fc521ee3          	bne	tp,t0,10338 <test_10+0x4>
   10360:	fff10eb7          	lui	t4,0xfff10
   10364:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10368:	00a00e13          	li	t3,10
   1036c:	37d31063          	bne	t1,t4,106cc <fail>

00010370 <test_11>:
   10370:	00000213          	li	tp,0
   10374:	00ff00b7          	lui	ra,0xff0
   10378:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   1037c:	0f0f1137          	lui	sp,0xf0f1
   10380:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10384:	0020e1b3          	or	gp,ra,sp
   10388:	00000013          	nop
   1038c:	00000013          	nop
   10390:	00018313          	mv	t1,gp
   10394:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10398:	00200293          	li	t0,2
   1039c:	fc521ce3          	bne	tp,t0,10374 <test_11+0x4>
   103a0:	0fff1eb7          	lui	t4,0xfff1
   103a4:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6a43>
   103a8:	00b00e13          	li	t3,11
   103ac:	33d31063          	bne	t1,t4,106cc <fail>

000103b0 <test_12>:
   103b0:	00000213          	li	tp,0
   103b4:	ff0100b7          	lui	ra,0xff010
   103b8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   103bc:	0f0f1137          	lui	sp,0xf0f1
   103c0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   103c4:	0020e1b3          	or	gp,ra,sp
   103c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   103cc:	00200293          	li	t0,2
   103d0:	fe5212e3          	bne	tp,t0,103b4 <test_12+0x4>
   103d4:	ff100eb7          	lui	t4,0xff100
   103d8:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   103dc:	00c00e13          	li	t3,12
   103e0:	2fd19663          	bne	gp,t4,106cc <fail>

000103e4 <test_13>:
   103e4:	00000213          	li	tp,0
   103e8:	0ff010b7          	lui	ra,0xff01
   103ec:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   103f0:	f0f0f137          	lui	sp,0xf0f0f
   103f4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   103f8:	00000013          	nop
   103fc:	0020e1b3          	or	gp,ra,sp
   10400:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10404:	00200293          	li	t0,2
   10408:	fe5210e3          	bne	tp,t0,103e8 <test_13+0x4>
   1040c:	fff10eb7          	lui	t4,0xfff10
   10410:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10414:	00d00e13          	li	t3,13
   10418:	2bd19a63          	bne	gp,t4,106cc <fail>

0001041c <test_14>:
   1041c:	00000213          	li	tp,0
   10420:	00ff00b7          	lui	ra,0xff0
   10424:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10428:	0f0f1137          	lui	sp,0xf0f1
   1042c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10430:	00000013          	nop
   10434:	00000013          	nop
   10438:	0020e1b3          	or	gp,ra,sp
   1043c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10440:	00200293          	li	t0,2
   10444:	fc521ee3          	bne	tp,t0,10420 <test_14+0x4>
   10448:	0fff1eb7          	lui	t4,0xfff1
   1044c:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6a43>
   10450:	00e00e13          	li	t3,14
   10454:	27d19c63          	bne	gp,t4,106cc <fail>

00010458 <test_15>:
   10458:	00000213          	li	tp,0
   1045c:	ff0100b7          	lui	ra,0xff010
   10460:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10464:	00000013          	nop
   10468:	0f0f1137          	lui	sp,0xf0f1
   1046c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10470:	0020e1b3          	or	gp,ra,sp
   10474:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10478:	00200293          	li	t0,2
   1047c:	fe5210e3          	bne	tp,t0,1045c <test_15+0x4>
   10480:	ff100eb7          	lui	t4,0xff100
   10484:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10488:	00f00e13          	li	t3,15
   1048c:	25d19063          	bne	gp,t4,106cc <fail>

00010490 <test_16>:
   10490:	00000213          	li	tp,0
   10494:	0ff010b7          	lui	ra,0xff01
   10498:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   1049c:	00000013          	nop
   104a0:	f0f0f137          	lui	sp,0xf0f0f
   104a4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   104a8:	00000013          	nop
   104ac:	0020e1b3          	or	gp,ra,sp
   104b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   104b4:	00200293          	li	t0,2
   104b8:	fc521ee3          	bne	tp,t0,10494 <test_16+0x4>
   104bc:	fff10eb7          	lui	t4,0xfff10
   104c0:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   104c4:	01000e13          	li	t3,16
   104c8:	21d19263          	bne	gp,t4,106cc <fail>

000104cc <test_17>:
   104cc:	00000213          	li	tp,0
   104d0:	00ff00b7          	lui	ra,0xff0
   104d4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   104d8:	00000013          	nop
   104dc:	00000013          	nop
   104e0:	0f0f1137          	lui	sp,0xf0f1
   104e4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   104e8:	0020e1b3          	or	gp,ra,sp
   104ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   104f0:	00200293          	li	t0,2
   104f4:	fc521ee3          	bne	tp,t0,104d0 <test_17+0x4>
   104f8:	0fff1eb7          	lui	t4,0xfff1
   104fc:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6a43>
   10500:	01100e13          	li	t3,17
   10504:	1dd19463          	bne	gp,t4,106cc <fail>

00010508 <test_18>:
   10508:	00000213          	li	tp,0
   1050c:	0f0f1137          	lui	sp,0xf0f1
   10510:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10514:	ff0100b7          	lui	ra,0xff010
   10518:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1051c:	0020e1b3          	or	gp,ra,sp
   10520:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10524:	00200293          	li	t0,2
   10528:	fe5212e3          	bne	tp,t0,1050c <test_18+0x4>
   1052c:	ff100eb7          	lui	t4,0xff100
   10530:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10534:	01200e13          	li	t3,18
   10538:	19d19a63          	bne	gp,t4,106cc <fail>

0001053c <test_19>:
   1053c:	00000213          	li	tp,0
   10540:	f0f0f137          	lui	sp,0xf0f0f
   10544:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10548:	0ff010b7          	lui	ra,0xff01
   1054c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10550:	00000013          	nop
   10554:	0020e1b3          	or	gp,ra,sp
   10558:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1055c:	00200293          	li	t0,2
   10560:	fe5210e3          	bne	tp,t0,10540 <test_19+0x4>
   10564:	fff10eb7          	lui	t4,0xfff10
   10568:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   1056c:	01300e13          	li	t3,19
   10570:	15d19e63          	bne	gp,t4,106cc <fail>

00010574 <test_20>:
   10574:	00000213          	li	tp,0
   10578:	0f0f1137          	lui	sp,0xf0f1
   1057c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10580:	00ff00b7          	lui	ra,0xff0
   10584:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10588:	00000013          	nop
   1058c:	00000013          	nop
   10590:	0020e1b3          	or	gp,ra,sp
   10594:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10598:	00200293          	li	t0,2
   1059c:	fc521ee3          	bne	tp,t0,10578 <test_20+0x4>
   105a0:	0fff1eb7          	lui	t4,0xfff1
   105a4:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6a43>
   105a8:	01400e13          	li	t3,20
   105ac:	13d19063          	bne	gp,t4,106cc <fail>

000105b0 <test_21>:
   105b0:	00000213          	li	tp,0
   105b4:	0f0f1137          	lui	sp,0xf0f1
   105b8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   105bc:	00000013          	nop
   105c0:	ff0100b7          	lui	ra,0xff010
   105c4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   105c8:	0020e1b3          	or	gp,ra,sp
   105cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   105d0:	00200293          	li	t0,2
   105d4:	fe5210e3          	bne	tp,t0,105b4 <test_21+0x4>
   105d8:	ff100eb7          	lui	t4,0xff100
   105dc:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   105e0:	01500e13          	li	t3,21
   105e4:	0fd19463          	bne	gp,t4,106cc <fail>

000105e8 <test_22>:
   105e8:	00000213          	li	tp,0
   105ec:	f0f0f137          	lui	sp,0xf0f0f
   105f0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   105f4:	00000013          	nop
   105f8:	0ff010b7          	lui	ra,0xff01
   105fc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10600:	00000013          	nop
   10604:	0020e1b3          	or	gp,ra,sp
   10608:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1060c:	00200293          	li	t0,2
   10610:	fc521ee3          	bne	tp,t0,105ec <test_22+0x4>
   10614:	fff10eb7          	lui	t4,0xfff10
   10618:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   1061c:	01600e13          	li	t3,22
   10620:	0bd19663          	bne	gp,t4,106cc <fail>

00010624 <test_23>:
   10624:	00000213          	li	tp,0
   10628:	0f0f1137          	lui	sp,0xf0f1
   1062c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10630:	00000013          	nop
   10634:	00000013          	nop
   10638:	00ff00b7          	lui	ra,0xff0
   1063c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10640:	0020e1b3          	or	gp,ra,sp
   10644:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10648:	00200293          	li	t0,2
   1064c:	fc521ee3          	bne	tp,t0,10628 <test_23+0x4>
   10650:	0fff1eb7          	lui	t4,0xfff1
   10654:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd6a43>
   10658:	01700e13          	li	t3,23
   1065c:	07d19863          	bne	gp,t4,106cc <fail>

00010660 <test_24>:
   10660:	ff0100b7          	lui	ra,0xff010
   10664:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10668:	00106133          	or	sp,zero,ra
   1066c:	ff010eb7          	lui	t4,0xff010
   10670:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10674:	01800e13          	li	t3,24
   10678:	05d11a63          	bne	sp,t4,106cc <fail>

0001067c <test_25>:
   1067c:	00ff00b7          	lui	ra,0xff0
   10680:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10684:	0000e133          	or	sp,ra,zero
   10688:	00ff0eb7          	lui	t4,0xff0
   1068c:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5b43>
   10690:	01900e13          	li	t3,25
   10694:	03d11c63          	bne	sp,t4,106cc <fail>

00010698 <test_26>:
   10698:	000060b3          	or	ra,zero,zero
   1069c:	00000e93          	li	t4,0
   106a0:	01a00e13          	li	t3,26
   106a4:	03d09463          	bne	ra,t4,106cc <fail>

000106a8 <test_27>:
   106a8:	111110b7          	lui	ra,0x11111
   106ac:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6b55>
   106b0:	22222137          	lui	sp,0x22222
   106b4:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207c66>
   106b8:	0020e033          	or	zero,ra,sp
   106bc:	00000e93          	li	t4,0
   106c0:	01b00e13          	li	t3,27
   106c4:	01d01463          	bne	zero,t4,106cc <fail>
   106c8:	05c01463          	bne	zero,t3,10710 <pass>

000106cc <fail>:
   106cc:	0ff00513          	li	a0,255

000106d0 <.delay_fail>:
   106d0:	fff50513          	addi	a0,a0,-1
   106d4:	fe051ee3          	bnez	a0,106d0 <.delay_fail>
   106d8:	02000537          	lui	a0,0x2000
   106dc:	04500593          	li	a1,69
   106e0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   106e4:	05200613          	li	a2,82
   106e8:	00c52023          	sw	a2,0(a0)
   106ec:	00c52023          	sw	a2,0(a0)
   106f0:	04f00693          	li	a3,79
   106f4:	00d52023          	sw	a3,0(a0)
   106f8:	00c52023          	sw	a2,0(a0)
   106fc:	00d00713          	li	a4,13
   10700:	00e52023          	sw	a4,0(a0)
   10704:	00a00793          	li	a5,10
   10708:	00f52023          	sw	a5,0(a0)
   1070c:	a4dff06f          	j	10158 <or_ret>

00010710 <pass>:
   10710:	0ff00513          	li	a0,255

00010714 <.delay_ok>:
   10714:	fff50513          	addi	a0,a0,-1
   10718:	fe051ee3          	bnez	a0,10714 <.delay_ok>
   1071c:	02000537          	lui	a0,0x2000
   10720:	04f00593          	li	a1,79
   10724:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   10728:	04b00613          	li	a2,75
   1072c:	00c52023          	sw	a2,0(a0)
   10730:	00d00693          	li	a3,13
   10734:	00d52023          	sw	a3,0(a0)
   10738:	00a00713          	li	a4,10
   1073c:	00e52023          	sw	a4,0(a0)
   10740:	a19ff06f          	j	10158 <or_ret>

00010744 <xor>:
   10744:	0ff00513          	li	a0,255

00010748 <.delay_pr>:
   10748:	fff50513          	addi	a0,a0,-1
   1074c:	fe051ee3          	bnez	a0,10748 <.delay_pr>
   10750:	00010537          	lui	a0,0x10
   10754:	77050513          	addi	a0,a0,1904 # 10770 <.test_name>
   10758:	02000637          	lui	a2,0x2000

0001075c <.prname_next>:
   1075c:	00050583          	lb	a1,0(a0)
   10760:	00058a63          	beqz	a1,10774 <.prname_done>
   10764:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   10768:	00150513          	addi	a0,a0,1
   1076c:	ff1ff06f          	j	1075c <.prname_next>

00010770 <.test_name>:
   10770:	6f78                	flw	fa4,92(a4)
   10772:	0072                	c.slli	zero,0x1c

00010774 <.prname_done>:
   10774:	02e00593          	li	a1,46
   10778:	00b62023          	sw	a1,0(a2)
   1077c:	00b62023          	sw	a1,0(a2)

00010780 <test_2>:
   10780:	ff0100b7          	lui	ra,0xff010
   10784:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10788:	0f0f1137          	lui	sp,0xf0f1
   1078c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10790:	0020c1b3          	xor	gp,ra,sp
   10794:	f00ffeb7          	lui	t4,0xf00ff
   10798:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   1079c:	00200e13          	li	t3,2
   107a0:	4bd19063          	bne	gp,t4,10c40 <fail>

000107a4 <test_3>:
   107a4:	0ff010b7          	lui	ra,0xff01
   107a8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   107ac:	f0f0f137          	lui	sp,0xf0f0f
   107b0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   107b4:	0020c1b3          	xor	gp,ra,sp
   107b8:	ff010eb7          	lui	t4,0xff010
   107bc:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   107c0:	00300e13          	li	t3,3
   107c4:	47d19e63          	bne	gp,t4,10c40 <fail>

000107c8 <test_4>:
   107c8:	00ff00b7          	lui	ra,0xff0
   107cc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   107d0:	0f0f1137          	lui	sp,0xf0f1
   107d4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   107d8:	0020c1b3          	xor	gp,ra,sp
   107dc:	0ff01eb7          	lui	t4,0xff01
   107e0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   107e4:	00400e13          	li	t3,4
   107e8:	45d19c63          	bne	gp,t4,10c40 <fail>

000107ec <test_5>:
   107ec:	f00ff0b7          	lui	ra,0xf00ff
   107f0:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   107f4:	f0f0f137          	lui	sp,0xf0f0f
   107f8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   107fc:	0020c1b3          	xor	gp,ra,sp
   10800:	00ff0eb7          	lui	t4,0xff0
   10804:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5b43>
   10808:	00500e13          	li	t3,5
   1080c:	43d19a63          	bne	gp,t4,10c40 <fail>

00010810 <test_6>:
   10810:	ff0100b7          	lui	ra,0xff010
   10814:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10818:	0f0f1137          	lui	sp,0xf0f1
   1081c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10820:	0020c0b3          	xor	ra,ra,sp
   10824:	f00ffeb7          	lui	t4,0xf00ff
   10828:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   1082c:	00600e13          	li	t3,6
   10830:	41d09863          	bne	ra,t4,10c40 <fail>

00010834 <test_7>:
   10834:	ff0100b7          	lui	ra,0xff010
   10838:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1083c:	0f0f1137          	lui	sp,0xf0f1
   10840:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10844:	0020c133          	xor	sp,ra,sp
   10848:	f00ffeb7          	lui	t4,0xf00ff
   1084c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10850:	00700e13          	li	t3,7
   10854:	3fd11663          	bne	sp,t4,10c40 <fail>

00010858 <test_8>:
   10858:	ff0100b7          	lui	ra,0xff010
   1085c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10860:	0010c0b3          	xor	ra,ra,ra
   10864:	00000e93          	li	t4,0
   10868:	00800e13          	li	t3,8
   1086c:	3dd09a63          	bne	ra,t4,10c40 <fail>

00010870 <test_9>:
   10870:	00000213          	li	tp,0
   10874:	ff0100b7          	lui	ra,0xff010
   10878:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1087c:	0f0f1137          	lui	sp,0xf0f1
   10880:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10884:	0020c1b3          	xor	gp,ra,sp
   10888:	00018313          	mv	t1,gp
   1088c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10890:	00200293          	li	t0,2
   10894:	fe5210e3          	bne	tp,t0,10874 <test_9+0x4>
   10898:	f00ffeb7          	lui	t4,0xf00ff
   1089c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   108a0:	00900e13          	li	t3,9
   108a4:	39d31e63          	bne	t1,t4,10c40 <fail>

000108a8 <test_10>:
   108a8:	00000213          	li	tp,0
   108ac:	0ff010b7          	lui	ra,0xff01
   108b0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   108b4:	f0f0f137          	lui	sp,0xf0f0f
   108b8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   108bc:	0020c1b3          	xor	gp,ra,sp
   108c0:	00000013          	nop
   108c4:	00018313          	mv	t1,gp
   108c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   108cc:	00200293          	li	t0,2
   108d0:	fc521ee3          	bne	tp,t0,108ac <test_10+0x4>
   108d4:	ff010eb7          	lui	t4,0xff010
   108d8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   108dc:	00a00e13          	li	t3,10
   108e0:	37d31063          	bne	t1,t4,10c40 <fail>

000108e4 <test_11>:
   108e4:	00000213          	li	tp,0
   108e8:	00ff00b7          	lui	ra,0xff0
   108ec:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   108f0:	0f0f1137          	lui	sp,0xf0f1
   108f4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   108f8:	0020c1b3          	xor	gp,ra,sp
   108fc:	00000013          	nop
   10900:	00000013          	nop
   10904:	00018313          	mv	t1,gp
   10908:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1090c:	00200293          	li	t0,2
   10910:	fc521ce3          	bne	tp,t0,108e8 <test_11+0x4>
   10914:	0ff01eb7          	lui	t4,0xff01
   10918:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   1091c:	00b00e13          	li	t3,11
   10920:	33d31063          	bne	t1,t4,10c40 <fail>

00010924 <test_12>:
   10924:	00000213          	li	tp,0
   10928:	ff0100b7          	lui	ra,0xff010
   1092c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10930:	0f0f1137          	lui	sp,0xf0f1
   10934:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10938:	0020c1b3          	xor	gp,ra,sp
   1093c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10940:	00200293          	li	t0,2
   10944:	fe5212e3          	bne	tp,t0,10928 <test_12+0x4>
   10948:	f00ffeb7          	lui	t4,0xf00ff
   1094c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10950:	00c00e13          	li	t3,12
   10954:	2fd19663          	bne	gp,t4,10c40 <fail>

00010958 <test_13>:
   10958:	00000213          	li	tp,0
   1095c:	0ff010b7          	lui	ra,0xff01
   10960:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10964:	f0f0f137          	lui	sp,0xf0f0f
   10968:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   1096c:	00000013          	nop
   10970:	0020c1b3          	xor	gp,ra,sp
   10974:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10978:	00200293          	li	t0,2
   1097c:	fe5210e3          	bne	tp,t0,1095c <test_13+0x4>
   10980:	ff010eb7          	lui	t4,0xff010
   10984:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10988:	00d00e13          	li	t3,13
   1098c:	2bd19a63          	bne	gp,t4,10c40 <fail>

00010990 <test_14>:
   10990:	00000213          	li	tp,0
   10994:	00ff00b7          	lui	ra,0xff0
   10998:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   1099c:	0f0f1137          	lui	sp,0xf0f1
   109a0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   109a4:	00000013          	nop
   109a8:	00000013          	nop
   109ac:	0020c1b3          	xor	gp,ra,sp
   109b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   109b4:	00200293          	li	t0,2
   109b8:	fc521ee3          	bne	tp,t0,10994 <test_14+0x4>
   109bc:	0ff01eb7          	lui	t4,0xff01
   109c0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   109c4:	00e00e13          	li	t3,14
   109c8:	27d19c63          	bne	gp,t4,10c40 <fail>

000109cc <test_15>:
   109cc:	00000213          	li	tp,0
   109d0:	ff0100b7          	lui	ra,0xff010
   109d4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   109d8:	00000013          	nop
   109dc:	0f0f1137          	lui	sp,0xf0f1
   109e0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   109e4:	0020c1b3          	xor	gp,ra,sp
   109e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   109ec:	00200293          	li	t0,2
   109f0:	fe5210e3          	bne	tp,t0,109d0 <test_15+0x4>
   109f4:	f00ffeb7          	lui	t4,0xf00ff
   109f8:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   109fc:	00f00e13          	li	t3,15
   10a00:	25d19063          	bne	gp,t4,10c40 <fail>

00010a04 <test_16>:
   10a04:	00000213          	li	tp,0
   10a08:	0ff010b7          	lui	ra,0xff01
   10a0c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10a10:	00000013          	nop
   10a14:	f0f0f137          	lui	sp,0xf0f0f
   10a18:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10a1c:	00000013          	nop
   10a20:	0020c1b3          	xor	gp,ra,sp
   10a24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a28:	00200293          	li	t0,2
   10a2c:	fc521ee3          	bne	tp,t0,10a08 <test_16+0x4>
   10a30:	ff010eb7          	lui	t4,0xff010
   10a34:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10a38:	01000e13          	li	t3,16
   10a3c:	21d19263          	bne	gp,t4,10c40 <fail>

00010a40 <test_17>:
   10a40:	00000213          	li	tp,0
   10a44:	00ff00b7          	lui	ra,0xff0
   10a48:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10a4c:	00000013          	nop
   10a50:	00000013          	nop
   10a54:	0f0f1137          	lui	sp,0xf0f1
   10a58:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10a5c:	0020c1b3          	xor	gp,ra,sp
   10a60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a64:	00200293          	li	t0,2
   10a68:	fc521ee3          	bne	tp,t0,10a44 <test_17+0x4>
   10a6c:	0ff01eb7          	lui	t4,0xff01
   10a70:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   10a74:	01100e13          	li	t3,17
   10a78:	1dd19463          	bne	gp,t4,10c40 <fail>

00010a7c <test_18>:
   10a7c:	00000213          	li	tp,0
   10a80:	0f0f1137          	lui	sp,0xf0f1
   10a84:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10a88:	ff0100b7          	lui	ra,0xff010
   10a8c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10a90:	0020c1b3          	xor	gp,ra,sp
   10a94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a98:	00200293          	li	t0,2
   10a9c:	fe5212e3          	bne	tp,t0,10a80 <test_18+0x4>
   10aa0:	f00ffeb7          	lui	t4,0xf00ff
   10aa4:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10aa8:	01200e13          	li	t3,18
   10aac:	19d19a63          	bne	gp,t4,10c40 <fail>

00010ab0 <test_19>:
   10ab0:	00000213          	li	tp,0
   10ab4:	f0f0f137          	lui	sp,0xf0f0f
   10ab8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10abc:	0ff010b7          	lui	ra,0xff01
   10ac0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10ac4:	00000013          	nop
   10ac8:	0020c1b3          	xor	gp,ra,sp
   10acc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10ad0:	00200293          	li	t0,2
   10ad4:	fe5210e3          	bne	tp,t0,10ab4 <test_19+0x4>
   10ad8:	ff010eb7          	lui	t4,0xff010
   10adc:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10ae0:	01300e13          	li	t3,19
   10ae4:	15d19e63          	bne	gp,t4,10c40 <fail>

00010ae8 <test_20>:
   10ae8:	00000213          	li	tp,0
   10aec:	0f0f1137          	lui	sp,0xf0f1
   10af0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10af4:	00ff00b7          	lui	ra,0xff0
   10af8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10afc:	00000013          	nop
   10b00:	00000013          	nop
   10b04:	0020c1b3          	xor	gp,ra,sp
   10b08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b0c:	00200293          	li	t0,2
   10b10:	fc521ee3          	bne	tp,t0,10aec <test_20+0x4>
   10b14:	0ff01eb7          	lui	t4,0xff01
   10b18:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   10b1c:	01400e13          	li	t3,20
   10b20:	13d19063          	bne	gp,t4,10c40 <fail>

00010b24 <test_21>:
   10b24:	00000213          	li	tp,0
   10b28:	0f0f1137          	lui	sp,0xf0f1
   10b2c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10b30:	00000013          	nop
   10b34:	ff0100b7          	lui	ra,0xff010
   10b38:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10b3c:	0020c1b3          	xor	gp,ra,sp
   10b40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b44:	00200293          	li	t0,2
   10b48:	fe5210e3          	bne	tp,t0,10b28 <test_21+0x4>
   10b4c:	f00ffeb7          	lui	t4,0xf00ff
   10b50:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   10b54:	01500e13          	li	t3,21
   10b58:	0fd19463          	bne	gp,t4,10c40 <fail>

00010b5c <test_22>:
   10b5c:	00000213          	li	tp,0
   10b60:	f0f0f137          	lui	sp,0xf0f0f
   10b64:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   10b68:	00000013          	nop
   10b6c:	0ff010b7          	lui	ra,0xff01
   10b70:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   10b74:	00000013          	nop
   10b78:	0020c1b3          	xor	gp,ra,sp
   10b7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b80:	00200293          	li	t0,2
   10b84:	fc521ee3          	bne	tp,t0,10b60 <test_22+0x4>
   10b88:	ff010eb7          	lui	t4,0xff010
   10b8c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10b90:	01600e13          	li	t3,22
   10b94:	0bd19663          	bne	gp,t4,10c40 <fail>

00010b98 <test_23>:
   10b98:	00000213          	li	tp,0
   10b9c:	0f0f1137          	lui	sp,0xf0f1
   10ba0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   10ba4:	00000013          	nop
   10ba8:	00000013          	nop
   10bac:	00ff00b7          	lui	ra,0xff0
   10bb0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10bb4:	0020c1b3          	xor	gp,ra,sp
   10bb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10bbc:	00200293          	li	t0,2
   10bc0:	fc521ee3          	bne	tp,t0,10b9c <test_23+0x4>
   10bc4:	0ff01eb7          	lui	t4,0xff01
   10bc8:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   10bcc:	01700e13          	li	t3,23
   10bd0:	07d19863          	bne	gp,t4,10c40 <fail>

00010bd4 <test_24>:
   10bd4:	ff0100b7          	lui	ra,0xff010
   10bd8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10bdc:	00104133          	xor	sp,zero,ra
   10be0:	ff010eb7          	lui	t4,0xff010
   10be4:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   10be8:	01800e13          	li	t3,24
   10bec:	05d11a63          	bne	sp,t4,10c40 <fail>

00010bf0 <test_25>:
   10bf0:	00ff00b7          	lui	ra,0xff0
   10bf4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   10bf8:	0000c133          	xor	sp,ra,zero
   10bfc:	00ff0eb7          	lui	t4,0xff0
   10c00:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5b43>
   10c04:	01900e13          	li	t3,25
   10c08:	03d11c63          	bne	sp,t4,10c40 <fail>

00010c0c <test_26>:
   10c0c:	000040b3          	xor	ra,zero,zero
   10c10:	00000e93          	li	t4,0
   10c14:	01a00e13          	li	t3,26
   10c18:	03d09463          	bne	ra,t4,10c40 <fail>

00010c1c <test_27>:
   10c1c:	111110b7          	lui	ra,0x11111
   10c20:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6b55>
   10c24:	22222137          	lui	sp,0x22222
   10c28:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207c66>
   10c2c:	0020c033          	xor	zero,ra,sp
   10c30:	00000e93          	li	t4,0
   10c34:	01b00e13          	li	t3,27
   10c38:	01d01463          	bne	zero,t4,10c40 <fail>
   10c3c:	05c01463          	bne	zero,t3,10c84 <pass>

00010c40 <fail>:
   10c40:	0ff00513          	li	a0,255

00010c44 <.delay_fail>:
   10c44:	fff50513          	addi	a0,a0,-1
   10c48:	fe051ee3          	bnez	a0,10c44 <.delay_fail>
   10c4c:	02000537          	lui	a0,0x2000
   10c50:	04500593          	li	a1,69
   10c54:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   10c58:	05200613          	li	a2,82
   10c5c:	00c52023          	sw	a2,0(a0)
   10c60:	00c52023          	sw	a2,0(a0)
   10c64:	04f00693          	li	a3,79
   10c68:	00d52023          	sw	a3,0(a0)
   10c6c:	00c52023          	sw	a2,0(a0)
   10c70:	00d00713          	li	a4,13
   10c74:	00e52023          	sw	a4,0(a0)
   10c78:	00a00793          	li	a5,10
   10c7c:	00f52023          	sw	a5,0(a0)
   10c80:	cccff06f          	j	1014c <xor_ret>

00010c84 <pass>:
   10c84:	0ff00513          	li	a0,255

00010c88 <.delay_ok>:
   10c88:	fff50513          	addi	a0,a0,-1
   10c8c:	fe051ee3          	bnez	a0,10c88 <.delay_ok>
   10c90:	02000537          	lui	a0,0x2000
   10c94:	04f00593          	li	a1,79
   10c98:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   10c9c:	04b00613          	li	a2,75
   10ca0:	00c52023          	sw	a2,0(a0)
   10ca4:	00d00693          	li	a3,13
   10ca8:	00d52023          	sw	a3,0(a0)
   10cac:	00a00713          	li	a4,10
   10cb0:	00e52023          	sw	a4,0(a0)
   10cb4:	c98ff06f          	j	1014c <xor_ret>

00010cb8 <sh>:
   10cb8:	0ff00513          	li	a0,255

00010cbc <.delay_pr>:
   10cbc:	fff50513          	addi	a0,a0,-1
   10cc0:	fe051ee3          	bnez	a0,10cbc <.delay_pr>
   10cc4:	00011537          	lui	a0,0x11
   10cc8:	ce450513          	addi	a0,a0,-796 # 10ce4 <.test_name>
   10ccc:	02000637          	lui	a2,0x2000

00010cd0 <.prname_next>:
   10cd0:	00050583          	lb	a1,0(a0)
   10cd4:	00058a63          	beqz	a1,10ce8 <.prname_done>
   10cd8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   10cdc:	00150513          	addi	a0,a0,1
   10ce0:	ff1ff06f          	j	10cd0 <.prname_next>

00010ce4 <.test_name>:
   10ce4:	00006873          	csrrsi	a6,ustatus,0

00010ce8 <.prname_done>:
   10ce8:	02e00593          	li	a1,46
   10cec:	00b62023          	sw	a1,0(a2)
   10cf0:	00b62023          	sw	a1,0(a2)

00010cf4 <test_2>:
   10cf4:	7ffef097          	auipc	ra,0x7ffef
   10cf8:	30c08093          	addi	ra,ra,780 # 80000000 <_ram_start>
   10cfc:	0aa00113          	li	sp,170
   10d00:	00209023          	sh	sp,0(ra)
   10d04:	00009183          	lh	gp,0(ra)
   10d08:	0aa00e93          	li	t4,170
   10d0c:	00200e13          	li	t3,2
   10d10:	45d19e63          	bne	gp,t4,1116c <fail>

00010d14 <test_3>:
   10d14:	7ffef097          	auipc	ra,0x7ffef
   10d18:	2ec08093          	addi	ra,ra,748 # 80000000 <_ram_start>
   10d1c:	ffffb137          	lui	sp,0xffffb
   10d20:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   10d24:	00209123          	sh	sp,2(ra)
   10d28:	00209183          	lh	gp,2(ra)
   10d2c:	ffffbeb7          	lui	t4,0xffffb
   10d30:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   10d34:	00300e13          	li	t3,3
   10d38:	43d19a63          	bne	gp,t4,1116c <fail>

00010d3c <test_4>:
   10d3c:	7ffef097          	auipc	ra,0x7ffef
   10d40:	2c408093          	addi	ra,ra,708 # 80000000 <_ram_start>
   10d44:	beef1137          	lui	sp,0xbeef1
   10d48:	aa010113          	addi	sp,sp,-1376 # beef0aa0 <_edata+0x3eef0a30>
   10d4c:	00209223          	sh	sp,4(ra)
   10d50:	0040a183          	lw	gp,4(ra)
   10d54:	beef1eb7          	lui	t4,0xbeef1
   10d58:	aa0e8e93          	addi	t4,t4,-1376 # beef0aa0 <_edata+0x3eef0a30>
   10d5c:	00400e13          	li	t3,4
   10d60:	41d19663          	bne	gp,t4,1116c <fail>

00010d64 <test_5>:
   10d64:	7ffef097          	auipc	ra,0x7ffef
   10d68:	29c08093          	addi	ra,ra,668 # 80000000 <_ram_start>
   10d6c:	ffffa137          	lui	sp,0xffffa
   10d70:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   10d74:	00209323          	sh	sp,6(ra)
   10d78:	00609183          	lh	gp,6(ra)
   10d7c:	ffffaeb7          	lui	t4,0xffffa
   10d80:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   10d84:	00500e13          	li	t3,5
   10d88:	3fd19263          	bne	gp,t4,1116c <fail>

00010d8c <test_6>:
   10d8c:	7ffef097          	auipc	ra,0x7ffef
   10d90:	28208093          	addi	ra,ra,642 # 8000000e <tdat8>
   10d94:	0aa00113          	li	sp,170
   10d98:	fe209d23          	sh	sp,-6(ra)
   10d9c:	ffa09183          	lh	gp,-6(ra)
   10da0:	0aa00e93          	li	t4,170
   10da4:	00600e13          	li	t3,6
   10da8:	3dd19263          	bne	gp,t4,1116c <fail>

00010dac <test_7>:
   10dac:	7ffef097          	auipc	ra,0x7ffef
   10db0:	26208093          	addi	ra,ra,610 # 8000000e <tdat8>
   10db4:	ffffb137          	lui	sp,0xffffb
   10db8:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   10dbc:	fe209e23          	sh	sp,-4(ra)
   10dc0:	ffc09183          	lh	gp,-4(ra)
   10dc4:	ffffbeb7          	lui	t4,0xffffb
   10dc8:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   10dcc:	00700e13          	li	t3,7
   10dd0:	39d19e63          	bne	gp,t4,1116c <fail>

00010dd4 <test_8>:
   10dd4:	7ffef097          	auipc	ra,0x7ffef
   10dd8:	23a08093          	addi	ra,ra,570 # 8000000e <tdat8>
   10ddc:	00001137          	lui	sp,0x1
   10de0:	aa010113          	addi	sp,sp,-1376 # aa0 <_start-0xf560>
   10de4:	fe209f23          	sh	sp,-2(ra)
   10de8:	ffe09183          	lh	gp,-2(ra)
   10dec:	00001eb7          	lui	t4,0x1
   10df0:	aa0e8e93          	addi	t4,t4,-1376 # aa0 <_start-0xf560>
   10df4:	00800e13          	li	t3,8
   10df8:	37d19a63          	bne	gp,t4,1116c <fail>

00010dfc <test_9>:
   10dfc:	7ffef097          	auipc	ra,0x7ffef
   10e00:	21208093          	addi	ra,ra,530 # 8000000e <tdat8>
   10e04:	ffffa137          	lui	sp,0xffffa
   10e08:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   10e0c:	00209023          	sh	sp,0(ra)
   10e10:	00009183          	lh	gp,0(ra)
   10e14:	ffffaeb7          	lui	t4,0xffffa
   10e18:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   10e1c:	00900e13          	li	t3,9
   10e20:	35d19663          	bne	gp,t4,1116c <fail>

00010e24 <test_10>:
   10e24:	7ffef097          	auipc	ra,0x7ffef
   10e28:	1ec08093          	addi	ra,ra,492 # 80000010 <tdat9>
   10e2c:	12345137          	lui	sp,0x12345
   10e30:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b0bc>
   10e34:	fe008213          	addi	tp,ra,-32
   10e38:	02221023          	sh	sp,32(tp) # 20 <_start-0xffe0>
   10e3c:	00009183          	lh	gp,0(ra)
   10e40:	00005eb7          	lui	t4,0x5
   10e44:	678e8e93          	addi	t4,t4,1656 # 5678 <_start-0xa988>
   10e48:	00a00e13          	li	t3,10
   10e4c:	33d19063          	bne	gp,t4,1116c <fail>

00010e50 <test_11>:
   10e50:	7ffef097          	auipc	ra,0x7ffef
   10e54:	1c008093          	addi	ra,ra,448 # 80000010 <tdat9>
   10e58:	00003137          	lui	sp,0x3
   10e5c:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   10e60:	ffb08093          	addi	ra,ra,-5
   10e64:	002093a3          	sh	sp,7(ra)
   10e68:	7ffef217          	auipc	tp,0x7ffef
   10e6c:	1aa20213          	addi	tp,tp,426 # 80000012 <tdat10>
   10e70:	00021183          	lh	gp,0(tp) # 0 <_start-0x10000>
   10e74:	00003eb7          	lui	t4,0x3
   10e78:	098e8e93          	addi	t4,t4,152 # 3098 <_start-0xcf68>
   10e7c:	00b00e13          	li	t3,11
   10e80:	2fd19663          	bne	gp,t4,1116c <fail>

00010e84 <test_12>:
   10e84:	00c00e13          	li	t3,12
   10e88:	00000213          	li	tp,0
   10e8c:	ffffd0b7          	lui	ra,0xffffd
   10e90:	cdd08093          	addi	ra,ra,-803 # ffffccdd <_edata+0x7fffcc6d>
   10e94:	7ffef117          	auipc	sp,0x7ffef
   10e98:	16c10113          	addi	sp,sp,364 # 80000000 <_ram_start>
   10e9c:	00111023          	sh	ra,0(sp)
   10ea0:	00011183          	lh	gp,0(sp)
   10ea4:	ffffdeb7          	lui	t4,0xffffd
   10ea8:	cdde8e93          	addi	t4,t4,-803 # ffffccdd <_edata+0x7fffcc6d>
   10eac:	2dd19063          	bne	gp,t4,1116c <fail>
   10eb0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10eb4:	00200293          	li	t0,2
   10eb8:	fc521ae3          	bne	tp,t0,10e8c <test_12+0x8>

00010ebc <test_13>:
   10ebc:	00d00e13          	li	t3,13
   10ec0:	00000213          	li	tp,0
   10ec4:	ffffc0b7          	lui	ra,0xffffc
   10ec8:	ccd08093          	addi	ra,ra,-819 # ffffbccd <_edata+0x7fffbc5d>
   10ecc:	7ffef117          	auipc	sp,0x7ffef
   10ed0:	13410113          	addi	sp,sp,308 # 80000000 <_ram_start>
   10ed4:	00000013          	nop
   10ed8:	00111123          	sh	ra,2(sp)
   10edc:	00211183          	lh	gp,2(sp)
   10ee0:	ffffceb7          	lui	t4,0xffffc
   10ee4:	ccde8e93          	addi	t4,t4,-819 # ffffbccd <_edata+0x7fffbc5d>
   10ee8:	29d19263          	bne	gp,t4,1116c <fail>
   10eec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10ef0:	00200293          	li	t0,2
   10ef4:	fc5218e3          	bne	tp,t0,10ec4 <test_13+0x8>

00010ef8 <test_14>:
   10ef8:	00e00e13          	li	t3,14
   10efc:	00000213          	li	tp,0
   10f00:	ffffc0b7          	lui	ra,0xffffc
   10f04:	bcc08093          	addi	ra,ra,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   10f08:	7ffef117          	auipc	sp,0x7ffef
   10f0c:	0f810113          	addi	sp,sp,248 # 80000000 <_ram_start>
   10f10:	00000013          	nop
   10f14:	00000013          	nop
   10f18:	00111223          	sh	ra,4(sp)
   10f1c:	00411183          	lh	gp,4(sp)
   10f20:	ffffceb7          	lui	t4,0xffffc
   10f24:	bcce8e93          	addi	t4,t4,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   10f28:	25d19263          	bne	gp,t4,1116c <fail>
   10f2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f30:	00200293          	li	t0,2
   10f34:	fc5216e3          	bne	tp,t0,10f00 <test_14+0x8>

00010f38 <test_15>:
   10f38:	00f00e13          	li	t3,15
   10f3c:	00000213          	li	tp,0
   10f40:	ffffb0b7          	lui	ra,0xffffb
   10f44:	bbc08093          	addi	ra,ra,-1092 # ffffabbc <_edata+0x7fffab4c>
   10f48:	00000013          	nop
   10f4c:	7ffef117          	auipc	sp,0x7ffef
   10f50:	0b410113          	addi	sp,sp,180 # 80000000 <_ram_start>
   10f54:	00111323          	sh	ra,6(sp)
   10f58:	00611183          	lh	gp,6(sp)
   10f5c:	ffffbeb7          	lui	t4,0xffffb
   10f60:	bbce8e93          	addi	t4,t4,-1092 # ffffabbc <_edata+0x7fffab4c>
   10f64:	21d19463          	bne	gp,t4,1116c <fail>
   10f68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f6c:	00200293          	li	t0,2
   10f70:	fc5218e3          	bne	tp,t0,10f40 <test_15+0x8>

00010f74 <test_16>:
   10f74:	01000e13          	li	t3,16
   10f78:	00000213          	li	tp,0
   10f7c:	ffffb0b7          	lui	ra,0xffffb
   10f80:	abb08093          	addi	ra,ra,-1349 # ffffaabb <_edata+0x7fffaa4b>
   10f84:	00000013          	nop
   10f88:	7ffef117          	auipc	sp,0x7ffef
   10f8c:	07810113          	addi	sp,sp,120 # 80000000 <_ram_start>
   10f90:	00000013          	nop
   10f94:	00111423          	sh	ra,8(sp)
   10f98:	00811183          	lh	gp,8(sp)
   10f9c:	ffffbeb7          	lui	t4,0xffffb
   10fa0:	abbe8e93          	addi	t4,t4,-1349 # ffffaabb <_edata+0x7fffaa4b>
   10fa4:	1dd19463          	bne	gp,t4,1116c <fail>
   10fa8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10fac:	00200293          	li	t0,2
   10fb0:	fc5216e3          	bne	tp,t0,10f7c <test_16+0x8>

00010fb4 <test_17>:
   10fb4:	01100e13          	li	t3,17
   10fb8:	00000213          	li	tp,0
   10fbc:	ffffe0b7          	lui	ra,0xffffe
   10fc0:	aab08093          	addi	ra,ra,-1365 # ffffdaab <_edata+0x7fffda3b>
   10fc4:	00000013          	nop
   10fc8:	00000013          	nop
   10fcc:	7ffef117          	auipc	sp,0x7ffef
   10fd0:	03410113          	addi	sp,sp,52 # 80000000 <_ram_start>
   10fd4:	00111523          	sh	ra,10(sp)
   10fd8:	00a11183          	lh	gp,10(sp)
   10fdc:	ffffeeb7          	lui	t4,0xffffe
   10fe0:	aabe8e93          	addi	t4,t4,-1365 # ffffdaab <_edata+0x7fffda3b>
   10fe4:	19d19463          	bne	gp,t4,1116c <fail>
   10fe8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10fec:	00200293          	li	t0,2
   10ff0:	fc5216e3          	bne	tp,t0,10fbc <test_17+0x8>

00010ff4 <test_18>:
   10ff4:	01200e13          	li	t3,18
   10ff8:	00000213          	li	tp,0
   10ffc:	7ffef117          	auipc	sp,0x7ffef
   11000:	00410113          	addi	sp,sp,4 # 80000000 <_ram_start>
   11004:	000020b7          	lui	ra,0x2
   11008:	23308093          	addi	ra,ra,563 # 2233 <_start-0xddcd>
   1100c:	00111023          	sh	ra,0(sp)
   11010:	00011183          	lh	gp,0(sp)
   11014:	00002eb7          	lui	t4,0x2
   11018:	233e8e93          	addi	t4,t4,563 # 2233 <_start-0xddcd>
   1101c:	15d19863          	bne	gp,t4,1116c <fail>
   11020:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11024:	00200293          	li	t0,2
   11028:	fc521ae3          	bne	tp,t0,10ffc <test_18+0x8>

0001102c <test_19>:
   1102c:	01300e13          	li	t3,19
   11030:	00000213          	li	tp,0
   11034:	7ffef117          	auipc	sp,0x7ffef
   11038:	fcc10113          	addi	sp,sp,-52 # 80000000 <_ram_start>
   1103c:	000010b7          	lui	ra,0x1
   11040:	22308093          	addi	ra,ra,547 # 1223 <_start-0xeddd>
   11044:	00000013          	nop
   11048:	00111123          	sh	ra,2(sp)
   1104c:	00211183          	lh	gp,2(sp)
   11050:	00001eb7          	lui	t4,0x1
   11054:	223e8e93          	addi	t4,t4,547 # 1223 <_start-0xeddd>
   11058:	11d19a63          	bne	gp,t4,1116c <fail>
   1105c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11060:	00200293          	li	t0,2
   11064:	fc5218e3          	bne	tp,t0,11034 <test_19+0x8>

00011068 <test_20>:
   11068:	01400e13          	li	t3,20
   1106c:	00000213          	li	tp,0
   11070:	7ffef117          	auipc	sp,0x7ffef
   11074:	f9010113          	addi	sp,sp,-112 # 80000000 <_ram_start>
   11078:	000010b7          	lui	ra,0x1
   1107c:	12208093          	addi	ra,ra,290 # 1122 <_start-0xeede>
   11080:	00000013          	nop
   11084:	00000013          	nop
   11088:	00111223          	sh	ra,4(sp)
   1108c:	00411183          	lh	gp,4(sp)
   11090:	00001eb7          	lui	t4,0x1
   11094:	122e8e93          	addi	t4,t4,290 # 1122 <_start-0xeede>
   11098:	0dd19a63          	bne	gp,t4,1116c <fail>
   1109c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110a0:	00200293          	li	t0,2
   110a4:	fc5216e3          	bne	tp,t0,11070 <test_20+0x8>

000110a8 <test_21>:
   110a8:	01500e13          	li	t3,21
   110ac:	00000213          	li	tp,0
   110b0:	7ffef117          	auipc	sp,0x7ffef
   110b4:	f5010113          	addi	sp,sp,-176 # 80000000 <_ram_start>
   110b8:	00000013          	nop
   110bc:	11200093          	li	ra,274
   110c0:	00111323          	sh	ra,6(sp)
   110c4:	00611183          	lh	gp,6(sp)
   110c8:	11200e93          	li	t4,274
   110cc:	0bd19063          	bne	gp,t4,1116c <fail>
   110d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110d4:	00200293          	li	t0,2
   110d8:	fc521ce3          	bne	tp,t0,110b0 <test_21+0x8>

000110dc <test_22>:
   110dc:	01600e13          	li	t3,22
   110e0:	00000213          	li	tp,0
   110e4:	7ffef117          	auipc	sp,0x7ffef
   110e8:	f1c10113          	addi	sp,sp,-228 # 80000000 <_ram_start>
   110ec:	00000013          	nop
   110f0:	01100093          	li	ra,17
   110f4:	00000013          	nop
   110f8:	00111423          	sh	ra,8(sp)
   110fc:	00811183          	lh	gp,8(sp)
   11100:	01100e93          	li	t4,17
   11104:	07d19463          	bne	gp,t4,1116c <fail>
   11108:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1110c:	00200293          	li	t0,2
   11110:	fc521ae3          	bne	tp,t0,110e4 <test_22+0x8>

00011114 <test_23>:
   11114:	01700e13          	li	t3,23
   11118:	00000213          	li	tp,0
   1111c:	7ffef117          	auipc	sp,0x7ffef
   11120:	ee410113          	addi	sp,sp,-284 # 80000000 <_ram_start>
   11124:	00000013          	nop
   11128:	00000013          	nop
   1112c:	000030b7          	lui	ra,0x3
   11130:	00108093          	addi	ra,ra,1 # 3001 <_start-0xcfff>
   11134:	00111523          	sh	ra,10(sp)
   11138:	00a11183          	lh	gp,10(sp)
   1113c:	00003eb7          	lui	t4,0x3
   11140:	001e8e93          	addi	t4,t4,1 # 3001 <_start-0xcfff>
   11144:	03d19463          	bne	gp,t4,1116c <fail>
   11148:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1114c:	00200293          	li	t0,2
   11150:	fc5216e3          	bne	tp,t0,1111c <test_23+0x8>
   11154:	0000c537          	lui	a0,0xc
   11158:	eef50513          	addi	a0,a0,-273 # beef <_start-0x4111>
   1115c:	7ffef597          	auipc	a1,0x7ffef
   11160:	ea458593          	addi	a1,a1,-348 # 80000000 <_ram_start>
   11164:	00a59323          	sh	a0,6(a1)
   11168:	05c01463          	bne	zero,t3,111b0 <pass>

0001116c <fail>:
   1116c:	0ff00513          	li	a0,255

00011170 <.delay_fail>:
   11170:	fff50513          	addi	a0,a0,-1
   11174:	fe051ee3          	bnez	a0,11170 <.delay_fail>
   11178:	02000537          	lui	a0,0x2000
   1117c:	04500593          	li	a1,69
   11180:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   11184:	05200613          	li	a2,82
   11188:	00c52023          	sw	a2,0(a0)
   1118c:	00c52023          	sw	a2,0(a0)
   11190:	04f00693          	li	a3,79
   11194:	00d52023          	sw	a3,0(a0)
   11198:	00c52023          	sw	a2,0(a0)
   1119c:	00d00713          	li	a4,13
   111a0:	00e52023          	sw	a4,0(a0)
   111a4:	00a00793          	li	a5,10
   111a8:	00f52023          	sw	a5,0(a0)
   111ac:	f69fe06f          	j	10114 <sh_ret>

000111b0 <pass>:
   111b0:	0ff00513          	li	a0,255

000111b4 <.delay_ok>:
   111b4:	fff50513          	addi	a0,a0,-1
   111b8:	fe051ee3          	bnez	a0,111b4 <.delay_ok>
   111bc:	02000537          	lui	a0,0x2000
   111c0:	04f00593          	li	a1,79
   111c4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   111c8:	04b00613          	li	a2,75
   111cc:	00c52023          	sw	a2,0(a0)
   111d0:	00d00693          	li	a3,13
   111d4:	00d52023          	sw	a3,0(a0)
   111d8:	00a00713          	li	a4,10
   111dc:	00e52023          	sw	a4,0(a0)
   111e0:	f35fe06f          	j	10114 <sh_ret>

000111e4 <sll>:
   111e4:	0ff00513          	li	a0,255

000111e8 <.delay_pr>:
   111e8:	fff50513          	addi	a0,a0,-1
   111ec:	fe051ee3          	bnez	a0,111e8 <.delay_pr>
   111f0:	00011537          	lui	a0,0x11
   111f4:	21050513          	addi	a0,a0,528 # 11210 <.test_name>
   111f8:	02000637          	lui	a2,0x2000

000111fc <.prname_next>:
   111fc:	00050583          	lb	a1,0(a0)
   11200:	00058a63          	beqz	a1,11214 <.prname_done>
   11204:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   11208:	00150513          	addi	a0,a0,1
   1120c:	ff1ff06f          	j	111fc <.prname_next>

00011210 <.test_name>:
   11210:	006c6c73          	csrrsi	s8,0x6,24

00011214 <.prname_done>:
   11214:	02e00593          	li	a1,46
   11218:	00b62023          	sw	a1,0(a2)
   1121c:	00b62023          	sw	a1,0(a2)

00011220 <test_2>:
   11220:	00100093          	li	ra,1
   11224:	00000113          	li	sp,0
   11228:	002091b3          	sll	gp,ra,sp
   1122c:	00100e93          	li	t4,1
   11230:	00200e13          	li	t3,2
   11234:	55d19c63          	bne	gp,t4,1178c <fail>

00011238 <test_3>:
   11238:	00100093          	li	ra,1
   1123c:	00100113          	li	sp,1
   11240:	002091b3          	sll	gp,ra,sp
   11244:	00200e93          	li	t4,2
   11248:	00300e13          	li	t3,3
   1124c:	55d19063          	bne	gp,t4,1178c <fail>

00011250 <test_4>:
   11250:	00100093          	li	ra,1
   11254:	00700113          	li	sp,7
   11258:	002091b3          	sll	gp,ra,sp
   1125c:	08000e93          	li	t4,128
   11260:	00400e13          	li	t3,4
   11264:	53d19463          	bne	gp,t4,1178c <fail>

00011268 <test_5>:
   11268:	00100093          	li	ra,1
   1126c:	00e00113          	li	sp,14
   11270:	002091b3          	sll	gp,ra,sp
   11274:	00004eb7          	lui	t4,0x4
   11278:	00500e13          	li	t3,5
   1127c:	51d19863          	bne	gp,t4,1178c <fail>

00011280 <test_6>:
   11280:	00100093          	li	ra,1
   11284:	01f00113          	li	sp,31
   11288:	002091b3          	sll	gp,ra,sp
   1128c:	80000eb7          	lui	t4,0x80000
   11290:	00600e13          	li	t3,6
   11294:	4fd19c63          	bne	gp,t4,1178c <fail>

00011298 <test_7>:
   11298:	fff00093          	li	ra,-1
   1129c:	00000113          	li	sp,0
   112a0:	002091b3          	sll	gp,ra,sp
   112a4:	fff00e93          	li	t4,-1
   112a8:	00700e13          	li	t3,7
   112ac:	4fd19063          	bne	gp,t4,1178c <fail>

000112b0 <test_8>:
   112b0:	fff00093          	li	ra,-1
   112b4:	00100113          	li	sp,1
   112b8:	002091b3          	sll	gp,ra,sp
   112bc:	ffe00e93          	li	t4,-2
   112c0:	00800e13          	li	t3,8
   112c4:	4dd19463          	bne	gp,t4,1178c <fail>

000112c8 <test_9>:
   112c8:	fff00093          	li	ra,-1
   112cc:	00700113          	li	sp,7
   112d0:	002091b3          	sll	gp,ra,sp
   112d4:	f8000e93          	li	t4,-128
   112d8:	00900e13          	li	t3,9
   112dc:	4bd19863          	bne	gp,t4,1178c <fail>

000112e0 <test_10>:
   112e0:	fff00093          	li	ra,-1
   112e4:	00e00113          	li	sp,14
   112e8:	002091b3          	sll	gp,ra,sp
   112ec:	ffffceb7          	lui	t4,0xffffc
   112f0:	00a00e13          	li	t3,10
   112f4:	49d19c63          	bne	gp,t4,1178c <fail>

000112f8 <test_11>:
   112f8:	fff00093          	li	ra,-1
   112fc:	01f00113          	li	sp,31
   11300:	002091b3          	sll	gp,ra,sp
   11304:	80000eb7          	lui	t4,0x80000
   11308:	00b00e13          	li	t3,11
   1130c:	49d19063          	bne	gp,t4,1178c <fail>

00011310 <test_12>:
   11310:	212120b7          	lui	ra,0x21212
   11314:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   11318:	00000113          	li	sp,0
   1131c:	002091b3          	sll	gp,ra,sp
   11320:	21212eb7          	lui	t4,0x21212
   11324:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7b65>
   11328:	00c00e13          	li	t3,12
   1132c:	47d19063          	bne	gp,t4,1178c <fail>

00011330 <test_13>:
   11330:	212120b7          	lui	ra,0x21212
   11334:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   11338:	00100113          	li	sp,1
   1133c:	002091b3          	sll	gp,ra,sp
   11340:	42424eb7          	lui	t4,0x42424
   11344:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c86>
   11348:	00d00e13          	li	t3,13
   1134c:	45d19063          	bne	gp,t4,1178c <fail>

00011350 <test_14>:
   11350:	212120b7          	lui	ra,0x21212
   11354:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   11358:	00700113          	li	sp,7
   1135c:	002091b3          	sll	gp,ra,sp
   11360:	90909eb7          	lui	t4,0x90909
   11364:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   11368:	00e00e13          	li	t3,14
   1136c:	43d19063          	bne	gp,t4,1178c <fail>

00011370 <test_15>:
   11370:	212120b7          	lui	ra,0x21212
   11374:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   11378:	00e00113          	li	sp,14
   1137c:	002091b3          	sll	gp,ra,sp
   11380:	48484eb7          	lui	t4,0x48484
   11384:	00f00e13          	li	t3,15
   11388:	41d19263          	bne	gp,t4,1178c <fail>

0001138c <test_16>:
   1138c:	212120b7          	lui	ra,0x21212
   11390:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   11394:	01f00113          	li	sp,31
   11398:	002091b3          	sll	gp,ra,sp
   1139c:	80000eb7          	lui	t4,0x80000
   113a0:	01000e13          	li	t3,16
   113a4:	3fd19463          	bne	gp,t4,1178c <fail>

000113a8 <test_17>:
   113a8:	212120b7          	lui	ra,0x21212
   113ac:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   113b0:	fe000113          	li	sp,-32
   113b4:	002091b3          	sll	gp,ra,sp
   113b8:	21212eb7          	lui	t4,0x21212
   113bc:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7b65>
   113c0:	01100e13          	li	t3,17
   113c4:	3dd19463          	bne	gp,t4,1178c <fail>

000113c8 <test_18>:
   113c8:	212120b7          	lui	ra,0x21212
   113cc:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   113d0:	fe100113          	li	sp,-31
   113d4:	002091b3          	sll	gp,ra,sp
   113d8:	42424eb7          	lui	t4,0x42424
   113dc:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c86>
   113e0:	01200e13          	li	t3,18
   113e4:	3bd19463          	bne	gp,t4,1178c <fail>

000113e8 <test_19>:
   113e8:	212120b7          	lui	ra,0x21212
   113ec:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   113f0:	fe700113          	li	sp,-25
   113f4:	002091b3          	sll	gp,ra,sp
   113f8:	90909eb7          	lui	t4,0x90909
   113fc:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   11400:	01300e13          	li	t3,19
   11404:	39d19463          	bne	gp,t4,1178c <fail>

00011408 <test_20>:
   11408:	212120b7          	lui	ra,0x21212
   1140c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   11410:	fee00113          	li	sp,-18
   11414:	002091b3          	sll	gp,ra,sp
   11418:	48484eb7          	lui	t4,0x48484
   1141c:	01400e13          	li	t3,20
   11420:	37d19663          	bne	gp,t4,1178c <fail>

00011424 <test_21>:
   11424:	212120b7          	lui	ra,0x21212
   11428:	12008093          	addi	ra,ra,288 # 21212120 <_etext+0x211f7b64>
   1142c:	fff00113          	li	sp,-1
   11430:	002091b3          	sll	gp,ra,sp
   11434:	00000e93          	li	t4,0
   11438:	01500e13          	li	t3,21
   1143c:	35d19863          	bne	gp,t4,1178c <fail>

00011440 <test_22>:
   11440:	00100093          	li	ra,1
   11444:	00700113          	li	sp,7
   11448:	002090b3          	sll	ra,ra,sp
   1144c:	08000e93          	li	t4,128
   11450:	01600e13          	li	t3,22
   11454:	33d09c63          	bne	ra,t4,1178c <fail>

00011458 <test_23>:
   11458:	00100093          	li	ra,1
   1145c:	00e00113          	li	sp,14
   11460:	00209133          	sll	sp,ra,sp
   11464:	00004eb7          	lui	t4,0x4
   11468:	01700e13          	li	t3,23
   1146c:	33d11063          	bne	sp,t4,1178c <fail>

00011470 <test_24>:
   11470:	00300093          	li	ra,3
   11474:	001090b3          	sll	ra,ra,ra
   11478:	01800e93          	li	t4,24
   1147c:	01800e13          	li	t3,24
   11480:	31d09663          	bne	ra,t4,1178c <fail>

00011484 <test_25>:
   11484:	00000213          	li	tp,0
   11488:	00100093          	li	ra,1
   1148c:	00700113          	li	sp,7
   11490:	002091b3          	sll	gp,ra,sp
   11494:	00018313          	mv	t1,gp
   11498:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1149c:	00200293          	li	t0,2
   114a0:	fe5214e3          	bne	tp,t0,11488 <test_25+0x4>
   114a4:	08000e93          	li	t4,128
   114a8:	01900e13          	li	t3,25
   114ac:	2fd31063          	bne	t1,t4,1178c <fail>

000114b0 <test_26>:
   114b0:	00000213          	li	tp,0
   114b4:	00100093          	li	ra,1
   114b8:	00e00113          	li	sp,14
   114bc:	002091b3          	sll	gp,ra,sp
   114c0:	00000013          	nop
   114c4:	00018313          	mv	t1,gp
   114c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   114cc:	00200293          	li	t0,2
   114d0:	fe5212e3          	bne	tp,t0,114b4 <test_26+0x4>
   114d4:	00004eb7          	lui	t4,0x4
   114d8:	01a00e13          	li	t3,26
   114dc:	2bd31863          	bne	t1,t4,1178c <fail>

000114e0 <test_27>:
   114e0:	00000213          	li	tp,0
   114e4:	00100093          	li	ra,1
   114e8:	01f00113          	li	sp,31
   114ec:	002091b3          	sll	gp,ra,sp
   114f0:	00000013          	nop
   114f4:	00000013          	nop
   114f8:	00018313          	mv	t1,gp
   114fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11500:	00200293          	li	t0,2
   11504:	fe5210e3          	bne	tp,t0,114e4 <test_27+0x4>
   11508:	80000eb7          	lui	t4,0x80000
   1150c:	01b00e13          	li	t3,27
   11510:	27d31e63          	bne	t1,t4,1178c <fail>

00011514 <test_28>:
   11514:	00000213          	li	tp,0
   11518:	00100093          	li	ra,1
   1151c:	00700113          	li	sp,7
   11520:	002091b3          	sll	gp,ra,sp
   11524:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11528:	00200293          	li	t0,2
   1152c:	fe5216e3          	bne	tp,t0,11518 <test_28+0x4>
   11530:	08000e93          	li	t4,128
   11534:	01c00e13          	li	t3,28
   11538:	25d19a63          	bne	gp,t4,1178c <fail>

0001153c <test_29>:
   1153c:	00000213          	li	tp,0
   11540:	00100093          	li	ra,1
   11544:	00e00113          	li	sp,14
   11548:	00000013          	nop
   1154c:	002091b3          	sll	gp,ra,sp
   11550:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11554:	00200293          	li	t0,2
   11558:	fe5214e3          	bne	tp,t0,11540 <test_29+0x4>
   1155c:	00004eb7          	lui	t4,0x4
   11560:	01d00e13          	li	t3,29
   11564:	23d19463          	bne	gp,t4,1178c <fail>

00011568 <test_30>:
   11568:	00000213          	li	tp,0
   1156c:	00100093          	li	ra,1
   11570:	01f00113          	li	sp,31
   11574:	00000013          	nop
   11578:	00000013          	nop
   1157c:	002091b3          	sll	gp,ra,sp
   11580:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11584:	00200293          	li	t0,2
   11588:	fe5212e3          	bne	tp,t0,1156c <test_30+0x4>
   1158c:	80000eb7          	lui	t4,0x80000
   11590:	01e00e13          	li	t3,30
   11594:	1fd19c63          	bne	gp,t4,1178c <fail>

00011598 <test_31>:
   11598:	00000213          	li	tp,0
   1159c:	00100093          	li	ra,1
   115a0:	00000013          	nop
   115a4:	00700113          	li	sp,7
   115a8:	002091b3          	sll	gp,ra,sp
   115ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   115b0:	00200293          	li	t0,2
   115b4:	fe5214e3          	bne	tp,t0,1159c <test_31+0x4>
   115b8:	08000e93          	li	t4,128
   115bc:	01f00e13          	li	t3,31
   115c0:	1dd19663          	bne	gp,t4,1178c <fail>

000115c4 <test_32>:
   115c4:	00000213          	li	tp,0
   115c8:	00100093          	li	ra,1
   115cc:	00000013          	nop
   115d0:	00e00113          	li	sp,14
   115d4:	00000013          	nop
   115d8:	002091b3          	sll	gp,ra,sp
   115dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   115e0:	00200293          	li	t0,2
   115e4:	fe5212e3          	bne	tp,t0,115c8 <test_32+0x4>
   115e8:	00004eb7          	lui	t4,0x4
   115ec:	02000e13          	li	t3,32
   115f0:	19d19e63          	bne	gp,t4,1178c <fail>

000115f4 <test_33>:
   115f4:	00000213          	li	tp,0
   115f8:	00100093          	li	ra,1
   115fc:	00000013          	nop
   11600:	00000013          	nop
   11604:	01f00113          	li	sp,31
   11608:	002091b3          	sll	gp,ra,sp
   1160c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11610:	00200293          	li	t0,2
   11614:	fe5212e3          	bne	tp,t0,115f8 <test_33+0x4>
   11618:	80000eb7          	lui	t4,0x80000
   1161c:	02100e13          	li	t3,33
   11620:	17d19663          	bne	gp,t4,1178c <fail>

00011624 <test_34>:
   11624:	00000213          	li	tp,0
   11628:	00700113          	li	sp,7
   1162c:	00100093          	li	ra,1
   11630:	002091b3          	sll	gp,ra,sp
   11634:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11638:	00200293          	li	t0,2
   1163c:	fe5216e3          	bne	tp,t0,11628 <test_34+0x4>
   11640:	08000e93          	li	t4,128
   11644:	02200e13          	li	t3,34
   11648:	15d19263          	bne	gp,t4,1178c <fail>

0001164c <test_35>:
   1164c:	00000213          	li	tp,0
   11650:	00e00113          	li	sp,14
   11654:	00100093          	li	ra,1
   11658:	00000013          	nop
   1165c:	002091b3          	sll	gp,ra,sp
   11660:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11664:	00200293          	li	t0,2
   11668:	fe5214e3          	bne	tp,t0,11650 <test_35+0x4>
   1166c:	00004eb7          	lui	t4,0x4
   11670:	02300e13          	li	t3,35
   11674:	11d19c63          	bne	gp,t4,1178c <fail>

00011678 <test_36>:
   11678:	00000213          	li	tp,0
   1167c:	01f00113          	li	sp,31
   11680:	00100093          	li	ra,1
   11684:	00000013          	nop
   11688:	00000013          	nop
   1168c:	002091b3          	sll	gp,ra,sp
   11690:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11694:	00200293          	li	t0,2
   11698:	fe5212e3          	bne	tp,t0,1167c <test_36+0x4>
   1169c:	80000eb7          	lui	t4,0x80000
   116a0:	02400e13          	li	t3,36
   116a4:	0fd19463          	bne	gp,t4,1178c <fail>

000116a8 <test_37>:
   116a8:	00000213          	li	tp,0
   116ac:	00700113          	li	sp,7
   116b0:	00000013          	nop
   116b4:	00100093          	li	ra,1
   116b8:	002091b3          	sll	gp,ra,sp
   116bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   116c0:	00200293          	li	t0,2
   116c4:	fe5214e3          	bne	tp,t0,116ac <test_37+0x4>
   116c8:	08000e93          	li	t4,128
   116cc:	02500e13          	li	t3,37
   116d0:	0bd19e63          	bne	gp,t4,1178c <fail>

000116d4 <test_38>:
   116d4:	00000213          	li	tp,0
   116d8:	00e00113          	li	sp,14
   116dc:	00000013          	nop
   116e0:	00100093          	li	ra,1
   116e4:	00000013          	nop
   116e8:	002091b3          	sll	gp,ra,sp
   116ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   116f0:	00200293          	li	t0,2
   116f4:	fe5212e3          	bne	tp,t0,116d8 <test_38+0x4>
   116f8:	00004eb7          	lui	t4,0x4
   116fc:	02600e13          	li	t3,38
   11700:	09d19663          	bne	gp,t4,1178c <fail>

00011704 <test_39>:
   11704:	00000213          	li	tp,0
   11708:	01f00113          	li	sp,31
   1170c:	00000013          	nop
   11710:	00000013          	nop
   11714:	00100093          	li	ra,1
   11718:	002091b3          	sll	gp,ra,sp
   1171c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11720:	00200293          	li	t0,2
   11724:	fe5212e3          	bne	tp,t0,11708 <test_39+0x4>
   11728:	80000eb7          	lui	t4,0x80000
   1172c:	02700e13          	li	t3,39
   11730:	05d19e63          	bne	gp,t4,1178c <fail>

00011734 <test_40>:
   11734:	00f00093          	li	ra,15
   11738:	00101133          	sll	sp,zero,ra
   1173c:	00000e93          	li	t4,0
   11740:	02800e13          	li	t3,40
   11744:	05d11463          	bne	sp,t4,1178c <fail>

00011748 <test_41>:
   11748:	02000093          	li	ra,32
   1174c:	00009133          	sll	sp,ra,zero
   11750:	02000e93          	li	t4,32
   11754:	02900e13          	li	t3,41
   11758:	03d11a63          	bne	sp,t4,1178c <fail>

0001175c <test_42>:
   1175c:	000010b3          	sll	ra,zero,zero
   11760:	00000e93          	li	t4,0
   11764:	02a00e13          	li	t3,42
   11768:	03d09263          	bne	ra,t4,1178c <fail>

0001176c <test_43>:
   1176c:	40000093          	li	ra,1024
   11770:	00001137          	lui	sp,0x1
   11774:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   11778:	00209033          	sll	zero,ra,sp
   1177c:	00000e93          	li	t4,0
   11780:	02b00e13          	li	t3,43
   11784:	01d01463          	bne	zero,t4,1178c <fail>
   11788:	05c01463          	bne	zero,t3,117d0 <pass>

0001178c <fail>:
   1178c:	0ff00513          	li	a0,255

00011790 <.delay_fail>:
   11790:	fff50513          	addi	a0,a0,-1
   11794:	fe051ee3          	bnez	a0,11790 <.delay_fail>
   11798:	02000537          	lui	a0,0x2000
   1179c:	04500593          	li	a1,69
   117a0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   117a4:	05200613          	li	a2,82
   117a8:	00c52023          	sw	a2,0(a0)
   117ac:	00c52023          	sw	a2,0(a0)
   117b0:	04f00693          	li	a3,79
   117b4:	00d52023          	sw	a3,0(a0)
   117b8:	00c52023          	sw	a2,0(a0)
   117bc:	00d00713          	li	a4,13
   117c0:	00e52023          	sw	a4,0(a0)
   117c4:	00a00793          	li	a5,10
   117c8:	00f52023          	sw	a5,0(a0)
   117cc:	979fe06f          	j	10144 <sll_ret>

000117d0 <pass>:
   117d0:	0ff00513          	li	a0,255

000117d4 <.delay_ok>:
   117d4:	fff50513          	addi	a0,a0,-1
   117d8:	fe051ee3          	bnez	a0,117d4 <.delay_ok>
   117dc:	02000537          	lui	a0,0x2000
   117e0:	04f00593          	li	a1,79
   117e4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   117e8:	04b00613          	li	a2,75
   117ec:	00c52023          	sw	a2,0(a0)
   117f0:	00d00693          	li	a3,13
   117f4:	00d52023          	sw	a3,0(a0)
   117f8:	00a00713          	li	a4,10
   117fc:	00e52023          	sw	a4,0(a0)
   11800:	945fe06f          	j	10144 <sll_ret>

00011804 <lb>:
   11804:	0ff00513          	li	a0,255

00011808 <.delay_pr>:
   11808:	fff50513          	addi	a0,a0,-1
   1180c:	fe051ee3          	bnez	a0,11808 <.delay_pr>
   11810:	00012537          	lui	a0,0x12
   11814:	83050513          	addi	a0,a0,-2000 # 11830 <.test_name>
   11818:	02000637          	lui	a2,0x2000

0001181c <.prname_next>:
   1181c:	00050583          	lb	a1,0(a0)
   11820:	00058a63          	beqz	a1,11834 <.prname_done>
   11824:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   11828:	00150513          	addi	a0,a0,1
   1182c:	ff1ff06f          	j	1181c <.prname_next>

00011830 <.test_name>:
   11830:	626c                	flw	fa1,68(a2)
	...

00011834 <.prname_done>:
   11834:	02e00593          	li	a1,46
   11838:	00b62023          	sw	a1,0(a2)
   1183c:	00b62023          	sw	a1,0(a2)

00011840 <test_2>:
   11840:	7ffee097          	auipc	ra,0x7ffee
   11844:	7d408093          	addi	ra,ra,2004 # 80000014 <tdat>
   11848:	00008183          	lb	gp,0(ra)
   1184c:	fff00e93          	li	t4,-1
   11850:	00200e13          	li	t3,2
   11854:	23d19c63          	bne	gp,t4,11a8c <fail>

00011858 <test_3>:
   11858:	7ffee097          	auipc	ra,0x7ffee
   1185c:	7bc08093          	addi	ra,ra,1980 # 80000014 <tdat>
   11860:	00108183          	lb	gp,1(ra)
   11864:	00000e93          	li	t4,0
   11868:	00300e13          	li	t3,3
   1186c:	23d19063          	bne	gp,t4,11a8c <fail>

00011870 <test_4>:
   11870:	7ffee097          	auipc	ra,0x7ffee
   11874:	7a408093          	addi	ra,ra,1956 # 80000014 <tdat>
   11878:	00208183          	lb	gp,2(ra)
   1187c:	ff000e93          	li	t4,-16
   11880:	00400e13          	li	t3,4
   11884:	21d19463          	bne	gp,t4,11a8c <fail>

00011888 <test_5>:
   11888:	7ffee097          	auipc	ra,0x7ffee
   1188c:	78c08093          	addi	ra,ra,1932 # 80000014 <tdat>
   11890:	00308183          	lb	gp,3(ra)
   11894:	00f00e93          	li	t4,15
   11898:	00500e13          	li	t3,5
   1189c:	1fd19863          	bne	gp,t4,11a8c <fail>

000118a0 <test_6>:
   118a0:	7ffee097          	auipc	ra,0x7ffee
   118a4:	77708093          	addi	ra,ra,1911 # 80000017 <tdat4>
   118a8:	ffd08183          	lb	gp,-3(ra)
   118ac:	fff00e93          	li	t4,-1
   118b0:	00600e13          	li	t3,6
   118b4:	1dd19c63          	bne	gp,t4,11a8c <fail>

000118b8 <test_7>:
   118b8:	7ffee097          	auipc	ra,0x7ffee
   118bc:	75f08093          	addi	ra,ra,1887 # 80000017 <tdat4>
   118c0:	ffe08183          	lb	gp,-2(ra)
   118c4:	00000e93          	li	t4,0
   118c8:	00700e13          	li	t3,7
   118cc:	1dd19063          	bne	gp,t4,11a8c <fail>

000118d0 <test_8>:
   118d0:	7ffee097          	auipc	ra,0x7ffee
   118d4:	74708093          	addi	ra,ra,1863 # 80000017 <tdat4>
   118d8:	fff08183          	lb	gp,-1(ra)
   118dc:	ff000e93          	li	t4,-16
   118e0:	00800e13          	li	t3,8
   118e4:	1bd19463          	bne	gp,t4,11a8c <fail>

000118e8 <test_9>:
   118e8:	7ffee097          	auipc	ra,0x7ffee
   118ec:	72f08093          	addi	ra,ra,1839 # 80000017 <tdat4>
   118f0:	00008183          	lb	gp,0(ra)
   118f4:	00f00e93          	li	t4,15
   118f8:	00900e13          	li	t3,9
   118fc:	19d19863          	bne	gp,t4,11a8c <fail>

00011900 <test_10>:
   11900:	7ffee097          	auipc	ra,0x7ffee
   11904:	71408093          	addi	ra,ra,1812 # 80000014 <tdat>
   11908:	fe008093          	addi	ra,ra,-32
   1190c:	02008183          	lb	gp,32(ra)
   11910:	fff00e93          	li	t4,-1
   11914:	00a00e13          	li	t3,10
   11918:	17d19a63          	bne	gp,t4,11a8c <fail>

0001191c <test_11>:
   1191c:	7ffee097          	auipc	ra,0x7ffee
   11920:	6f808093          	addi	ra,ra,1784 # 80000014 <tdat>
   11924:	ffa08093          	addi	ra,ra,-6
   11928:	00708183          	lb	gp,7(ra)
   1192c:	00000e93          	li	t4,0
   11930:	00b00e13          	li	t3,11
   11934:	15d19c63          	bne	gp,t4,11a8c <fail>

00011938 <test_12>:
   11938:	00c00e13          	li	t3,12
   1193c:	00000213          	li	tp,0
   11940:	7ffee097          	auipc	ra,0x7ffee
   11944:	6d508093          	addi	ra,ra,1749 # 80000015 <tdat2>
   11948:	00108183          	lb	gp,1(ra)
   1194c:	00018313          	mv	t1,gp
   11950:	ff000e93          	li	t4,-16
   11954:	13d31c63          	bne	t1,t4,11a8c <fail>
   11958:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1195c:	00200293          	li	t0,2
   11960:	fe5210e3          	bne	tp,t0,11940 <test_12+0x8>

00011964 <test_13>:
   11964:	00d00e13          	li	t3,13
   11968:	00000213          	li	tp,0
   1196c:	7ffee097          	auipc	ra,0x7ffee
   11970:	6aa08093          	addi	ra,ra,1706 # 80000016 <tdat3>
   11974:	00108183          	lb	gp,1(ra)
   11978:	00000013          	nop
   1197c:	00018313          	mv	t1,gp
   11980:	00f00e93          	li	t4,15
   11984:	11d31463          	bne	t1,t4,11a8c <fail>
   11988:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1198c:	00200293          	li	t0,2
   11990:	fc521ee3          	bne	tp,t0,1196c <test_13+0x8>

00011994 <test_14>:
   11994:	00e00e13          	li	t3,14
   11998:	00000213          	li	tp,0
   1199c:	7ffee097          	auipc	ra,0x7ffee
   119a0:	67808093          	addi	ra,ra,1656 # 80000014 <tdat>
   119a4:	00108183          	lb	gp,1(ra)
   119a8:	00000013          	nop
   119ac:	00000013          	nop
   119b0:	00018313          	mv	t1,gp
   119b4:	00000e93          	li	t4,0
   119b8:	0dd31a63          	bne	t1,t4,11a8c <fail>
   119bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   119c0:	00200293          	li	t0,2
   119c4:	fc521ce3          	bne	tp,t0,1199c <test_14+0x8>

000119c8 <test_15>:
   119c8:	00f00e13          	li	t3,15
   119cc:	00000213          	li	tp,0
   119d0:	7ffee097          	auipc	ra,0x7ffee
   119d4:	64508093          	addi	ra,ra,1605 # 80000015 <tdat2>
   119d8:	00108183          	lb	gp,1(ra)
   119dc:	ff000e93          	li	t4,-16
   119e0:	0bd19663          	bne	gp,t4,11a8c <fail>
   119e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   119e8:	00200293          	li	t0,2
   119ec:	fe5212e3          	bne	tp,t0,119d0 <test_15+0x8>

000119f0 <test_16>:
   119f0:	01000e13          	li	t3,16
   119f4:	00000213          	li	tp,0
   119f8:	7ffee097          	auipc	ra,0x7ffee
   119fc:	61e08093          	addi	ra,ra,1566 # 80000016 <tdat3>
   11a00:	00000013          	nop
   11a04:	00108183          	lb	gp,1(ra)
   11a08:	00f00e93          	li	t4,15
   11a0c:	09d19063          	bne	gp,t4,11a8c <fail>
   11a10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a14:	00200293          	li	t0,2
   11a18:	fe5210e3          	bne	tp,t0,119f8 <test_16+0x8>

00011a1c <test_17>:
   11a1c:	01100e13          	li	t3,17
   11a20:	00000213          	li	tp,0
   11a24:	7ffee097          	auipc	ra,0x7ffee
   11a28:	5f008093          	addi	ra,ra,1520 # 80000014 <tdat>
   11a2c:	00000013          	nop
   11a30:	00000013          	nop
   11a34:	00108183          	lb	gp,1(ra)
   11a38:	00000e93          	li	t4,0
   11a3c:	05d19863          	bne	gp,t4,11a8c <fail>
   11a40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11a44:	00200293          	li	t0,2
   11a48:	fc521ee3          	bne	tp,t0,11a24 <test_17+0x8>

00011a4c <test_18>:
   11a4c:	7ffee197          	auipc	gp,0x7ffee
   11a50:	5c818193          	addi	gp,gp,1480 # 80000014 <tdat>
   11a54:	00018103          	lb	sp,0(gp)
   11a58:	00200113          	li	sp,2
   11a5c:	00200e93          	li	t4,2
   11a60:	01200e13          	li	t3,18
   11a64:	03d11463          	bne	sp,t4,11a8c <fail>

00011a68 <test_19>:
   11a68:	7ffee197          	auipc	gp,0x7ffee
   11a6c:	5ac18193          	addi	gp,gp,1452 # 80000014 <tdat>
   11a70:	00018103          	lb	sp,0(gp)
   11a74:	00000013          	nop
   11a78:	00200113          	li	sp,2
   11a7c:	00200e93          	li	t4,2
   11a80:	01300e13          	li	t3,19
   11a84:	01d11463          	bne	sp,t4,11a8c <fail>
   11a88:	05c01463          	bne	zero,t3,11ad0 <pass>

00011a8c <fail>:
   11a8c:	0ff00513          	li	a0,255

00011a90 <.delay_fail>:
   11a90:	fff50513          	addi	a0,a0,-1
   11a94:	fe051ee3          	bnez	a0,11a90 <.delay_fail>
   11a98:	02000537          	lui	a0,0x2000
   11a9c:	04500593          	li	a1,69
   11aa0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   11aa4:	05200613          	li	a2,82
   11aa8:	00c52023          	sw	a2,0(a0)
   11aac:	00c52023          	sw	a2,0(a0)
   11ab0:	04f00693          	li	a3,79
   11ab4:	00d52023          	sw	a3,0(a0)
   11ab8:	00c52023          	sw	a2,0(a0)
   11abc:	00d00713          	li	a4,13
   11ac0:	00e52023          	sw	a4,0(a0)
   11ac4:	00a00793          	li	a5,10
   11ac8:	00f52023          	sw	a5,0(a0)
   11acc:	e30fe06f          	j	100fc <lb_ret>

00011ad0 <pass>:
   11ad0:	0ff00513          	li	a0,255

00011ad4 <.delay_ok>:
   11ad4:	fff50513          	addi	a0,a0,-1
   11ad8:	fe051ee3          	bnez	a0,11ad4 <.delay_ok>
   11adc:	02000537          	lui	a0,0x2000
   11ae0:	04f00593          	li	a1,79
   11ae4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   11ae8:	04b00613          	li	a2,75
   11aec:	00c52023          	sw	a2,0(a0)
   11af0:	00d00693          	li	a3,13
   11af4:	00d52023          	sw	a3,0(a0)
   11af8:	00a00713          	li	a4,10
   11afc:	00e52023          	sw	a4,0(a0)
   11b00:	dfcfe06f          	j	100fc <lb_ret>

00011b04 <lh>:
   11b04:	0ff00513          	li	a0,255

00011b08 <.delay_pr>:
   11b08:	fff50513          	addi	a0,a0,-1
   11b0c:	fe051ee3          	bnez	a0,11b08 <.delay_pr>
   11b10:	00012537          	lui	a0,0x12
   11b14:	b3050513          	addi	a0,a0,-1232 # 11b30 <.test_name>
   11b18:	02000637          	lui	a2,0x2000

00011b1c <.prname_next>:
   11b1c:	00050583          	lb	a1,0(a0)
   11b20:	00058a63          	beqz	a1,11b34 <.prname_done>
   11b24:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   11b28:	00150513          	addi	a0,a0,1
   11b2c:	ff1ff06f          	j	11b1c <.prname_next>

00011b30 <.test_name>:
   11b30:	686c                	flw	fa1,84(s0)
	...

00011b34 <.prname_done>:
   11b34:	02e00593          	li	a1,46
   11b38:	00b62023          	sw	a1,0(a2)
   11b3c:	00b62023          	sw	a1,0(a2)

00011b40 <test_2>:
   11b40:	7ffee097          	auipc	ra,0x7ffee
   11b44:	4d808093          	addi	ra,ra,1240 # 80000018 <tdat>
   11b48:	00009183          	lh	gp,0(ra)
   11b4c:	0ff00e93          	li	t4,255
   11b50:	00200e13          	li	t3,2
   11b54:	25d19c63          	bne	gp,t4,11dac <fail>

00011b58 <test_3>:
   11b58:	7ffee097          	auipc	ra,0x7ffee
   11b5c:	4c008093          	addi	ra,ra,1216 # 80000018 <tdat>
   11b60:	00209183          	lh	gp,2(ra)
   11b64:	f0000e93          	li	t4,-256
   11b68:	00300e13          	li	t3,3
   11b6c:	25d19063          	bne	gp,t4,11dac <fail>

00011b70 <test_4>:
   11b70:	7ffee097          	auipc	ra,0x7ffee
   11b74:	4a808093          	addi	ra,ra,1192 # 80000018 <tdat>
   11b78:	00409183          	lh	gp,4(ra)
   11b7c:	00001eb7          	lui	t4,0x1
   11b80:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11b84:	00400e13          	li	t3,4
   11b88:	23d19263          	bne	gp,t4,11dac <fail>

00011b8c <test_5>:
   11b8c:	7ffee097          	auipc	ra,0x7ffee
   11b90:	48c08093          	addi	ra,ra,1164 # 80000018 <tdat>
   11b94:	00609183          	lh	gp,6(ra)
   11b98:	fffffeb7          	lui	t4,0xfffff
   11b9c:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11ba0:	00500e13          	li	t3,5
   11ba4:	21d19463          	bne	gp,t4,11dac <fail>

00011ba8 <test_6>:
   11ba8:	7ffee097          	auipc	ra,0x7ffee
   11bac:	47608093          	addi	ra,ra,1142 # 8000001e <tdat4>
   11bb0:	ffa09183          	lh	gp,-6(ra)
   11bb4:	0ff00e93          	li	t4,255
   11bb8:	00600e13          	li	t3,6
   11bbc:	1fd19863          	bne	gp,t4,11dac <fail>

00011bc0 <test_7>:
   11bc0:	7ffee097          	auipc	ra,0x7ffee
   11bc4:	45e08093          	addi	ra,ra,1118 # 8000001e <tdat4>
   11bc8:	ffc09183          	lh	gp,-4(ra)
   11bcc:	f0000e93          	li	t4,-256
   11bd0:	00700e13          	li	t3,7
   11bd4:	1dd19c63          	bne	gp,t4,11dac <fail>

00011bd8 <test_8>:
   11bd8:	7ffee097          	auipc	ra,0x7ffee
   11bdc:	44608093          	addi	ra,ra,1094 # 8000001e <tdat4>
   11be0:	ffe09183          	lh	gp,-2(ra)
   11be4:	00001eb7          	lui	t4,0x1
   11be8:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11bec:	00800e13          	li	t3,8
   11bf0:	1bd19e63          	bne	gp,t4,11dac <fail>

00011bf4 <test_9>:
   11bf4:	7ffee097          	auipc	ra,0x7ffee
   11bf8:	42a08093          	addi	ra,ra,1066 # 8000001e <tdat4>
   11bfc:	00009183          	lh	gp,0(ra)
   11c00:	fffffeb7          	lui	t4,0xfffff
   11c04:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11c08:	00900e13          	li	t3,9
   11c0c:	1bd19063          	bne	gp,t4,11dac <fail>

00011c10 <test_10>:
   11c10:	7ffee097          	auipc	ra,0x7ffee
   11c14:	40808093          	addi	ra,ra,1032 # 80000018 <tdat>
   11c18:	fe008093          	addi	ra,ra,-32
   11c1c:	02009183          	lh	gp,32(ra)
   11c20:	0ff00e93          	li	t4,255
   11c24:	00a00e13          	li	t3,10
   11c28:	19d19263          	bne	gp,t4,11dac <fail>

00011c2c <test_11>:
   11c2c:	7ffee097          	auipc	ra,0x7ffee
   11c30:	3ec08093          	addi	ra,ra,1004 # 80000018 <tdat>
   11c34:	ffb08093          	addi	ra,ra,-5
   11c38:	00709183          	lh	gp,7(ra)
   11c3c:	f0000e93          	li	t4,-256
   11c40:	00b00e13          	li	t3,11
   11c44:	17d19463          	bne	gp,t4,11dac <fail>

00011c48 <test_12>:
   11c48:	00c00e13          	li	t3,12
   11c4c:	00000213          	li	tp,0
   11c50:	7ffee097          	auipc	ra,0x7ffee
   11c54:	3ca08093          	addi	ra,ra,970 # 8000001a <tdat2>
   11c58:	00209183          	lh	gp,2(ra)
   11c5c:	00018313          	mv	t1,gp
   11c60:	00001eb7          	lui	t4,0x1
   11c64:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11c68:	15d31263          	bne	t1,t4,11dac <fail>
   11c6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c70:	00200293          	li	t0,2
   11c74:	fc521ee3          	bne	tp,t0,11c50 <test_12+0x8>

00011c78 <test_13>:
   11c78:	00d00e13          	li	t3,13
   11c7c:	00000213          	li	tp,0
   11c80:	7ffee097          	auipc	ra,0x7ffee
   11c84:	39c08093          	addi	ra,ra,924 # 8000001c <tdat3>
   11c88:	00209183          	lh	gp,2(ra)
   11c8c:	00000013          	nop
   11c90:	00018313          	mv	t1,gp
   11c94:	fffffeb7          	lui	t4,0xfffff
   11c98:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11c9c:	11d31863          	bne	t1,t4,11dac <fail>
   11ca0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11ca4:	00200293          	li	t0,2
   11ca8:	fc521ce3          	bne	tp,t0,11c80 <test_13+0x8>

00011cac <test_14>:
   11cac:	00e00e13          	li	t3,14
   11cb0:	00000213          	li	tp,0
   11cb4:	7ffee097          	auipc	ra,0x7ffee
   11cb8:	36408093          	addi	ra,ra,868 # 80000018 <tdat>
   11cbc:	00209183          	lh	gp,2(ra)
   11cc0:	00000013          	nop
   11cc4:	00000013          	nop
   11cc8:	00018313          	mv	t1,gp
   11ccc:	f0000e93          	li	t4,-256
   11cd0:	0dd31e63          	bne	t1,t4,11dac <fail>
   11cd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11cd8:	00200293          	li	t0,2
   11cdc:	fc521ce3          	bne	tp,t0,11cb4 <test_14+0x8>

00011ce0 <test_15>:
   11ce0:	00f00e13          	li	t3,15
   11ce4:	00000213          	li	tp,0
   11ce8:	7ffee097          	auipc	ra,0x7ffee
   11cec:	33208093          	addi	ra,ra,818 # 8000001a <tdat2>
   11cf0:	00209183          	lh	gp,2(ra)
   11cf4:	00001eb7          	lui	t4,0x1
   11cf8:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11cfc:	0bd19863          	bne	gp,t4,11dac <fail>
   11d00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11d04:	00200293          	li	t0,2
   11d08:	fe5210e3          	bne	tp,t0,11ce8 <test_15+0x8>

00011d0c <test_16>:
   11d0c:	01000e13          	li	t3,16
   11d10:	00000213          	li	tp,0
   11d14:	7ffee097          	auipc	ra,0x7ffee
   11d18:	30808093          	addi	ra,ra,776 # 8000001c <tdat3>
   11d1c:	00000013          	nop
   11d20:	00209183          	lh	gp,2(ra)
   11d24:	fffffeb7          	lui	t4,0xfffff
   11d28:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11d2c:	09d19063          	bne	gp,t4,11dac <fail>
   11d30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11d34:	00200293          	li	t0,2
   11d38:	fc521ee3          	bne	tp,t0,11d14 <test_16+0x8>

00011d3c <test_17>:
   11d3c:	01100e13          	li	t3,17
   11d40:	00000213          	li	tp,0
   11d44:	7ffee097          	auipc	ra,0x7ffee
   11d48:	2d408093          	addi	ra,ra,724 # 80000018 <tdat>
   11d4c:	00000013          	nop
   11d50:	00000013          	nop
   11d54:	00209183          	lh	gp,2(ra)
   11d58:	f0000e93          	li	t4,-256
   11d5c:	05d19863          	bne	gp,t4,11dac <fail>
   11d60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11d64:	00200293          	li	t0,2
   11d68:	fc521ee3          	bne	tp,t0,11d44 <test_17+0x8>

00011d6c <test_18>:
   11d6c:	7ffee197          	auipc	gp,0x7ffee
   11d70:	2ac18193          	addi	gp,gp,684 # 80000018 <tdat>
   11d74:	00019103          	lh	sp,0(gp)
   11d78:	00200113          	li	sp,2
   11d7c:	00200e93          	li	t4,2
   11d80:	01200e13          	li	t3,18
   11d84:	03d11463          	bne	sp,t4,11dac <fail>

00011d88 <test_19>:
   11d88:	7ffee197          	auipc	gp,0x7ffee
   11d8c:	29018193          	addi	gp,gp,656 # 80000018 <tdat>
   11d90:	00019103          	lh	sp,0(gp)
   11d94:	00000013          	nop
   11d98:	00200113          	li	sp,2
   11d9c:	00200e93          	li	t4,2
   11da0:	01300e13          	li	t3,19
   11da4:	01d11463          	bne	sp,t4,11dac <fail>
   11da8:	05c01463          	bne	zero,t3,11df0 <pass>

00011dac <fail>:
   11dac:	0ff00513          	li	a0,255

00011db0 <.delay_fail>:
   11db0:	fff50513          	addi	a0,a0,-1
   11db4:	fe051ee3          	bnez	a0,11db0 <.delay_fail>
   11db8:	02000537          	lui	a0,0x2000
   11dbc:	04500593          	li	a1,69
   11dc0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   11dc4:	05200613          	li	a2,82
   11dc8:	00c52023          	sw	a2,0(a0)
   11dcc:	00c52023          	sw	a2,0(a0)
   11dd0:	04f00693          	li	a3,79
   11dd4:	00d52023          	sw	a3,0(a0)
   11dd8:	00c52023          	sw	a2,0(a0)
   11ddc:	00d00713          	li	a4,13
   11de0:	00e52023          	sw	a4,0(a0)
   11de4:	00a00793          	li	a5,10
   11de8:	00f52023          	sw	a5,0(a0)
   11dec:	b14fe06f          	j	10100 <lh_ret>

00011df0 <pass>:
   11df0:	0ff00513          	li	a0,255

00011df4 <.delay_ok>:
   11df4:	fff50513          	addi	a0,a0,-1
   11df8:	fe051ee3          	bnez	a0,11df4 <.delay_ok>
   11dfc:	02000537          	lui	a0,0x2000
   11e00:	04f00593          	li	a1,79
   11e04:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   11e08:	04b00613          	li	a2,75
   11e0c:	00c52023          	sw	a2,0(a0)
   11e10:	00d00693          	li	a3,13
   11e14:	00d52023          	sw	a3,0(a0)
   11e18:	00a00713          	li	a4,10
   11e1c:	00e52023          	sw	a4,0(a0)
   11e20:	ae0fe06f          	j	10100 <lh_ret>

00011e24 <sub>:
   11e24:	0ff00513          	li	a0,255

00011e28 <.delay_pr>:
   11e28:	fff50513          	addi	a0,a0,-1
   11e2c:	fe051ee3          	bnez	a0,11e28 <.delay_pr>
   11e30:	00012537          	lui	a0,0x12
   11e34:	e5050513          	addi	a0,a0,-432 # 11e50 <.test_name>
   11e38:	02000637          	lui	a2,0x2000

00011e3c <.prname_next>:
   11e3c:	00050583          	lb	a1,0(a0)
   11e40:	00058a63          	beqz	a1,11e54 <.prname_done>
   11e44:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   11e48:	00150513          	addi	a0,a0,1
   11e4c:	ff1ff06f          	j	11e3c <.prname_next>

00011e50 <.test_name>:
   11e50:	00627573          	csrrci	a0,0x6,4

00011e54 <.prname_done>:
   11e54:	02e00593          	li	a1,46
   11e58:	00b62023          	sw	a1,0(a2)
   11e5c:	00b62023          	sw	a1,0(a2)

00011e60 <test_2>:
   11e60:	00000093          	li	ra,0
   11e64:	00000113          	li	sp,0
   11e68:	402081b3          	sub	gp,ra,sp
   11e6c:	00000e93          	li	t4,0
   11e70:	00200e13          	li	t3,2
   11e74:	4bd19663          	bne	gp,t4,12320 <fail>

00011e78 <test_3>:
   11e78:	00100093          	li	ra,1
   11e7c:	00100113          	li	sp,1
   11e80:	402081b3          	sub	gp,ra,sp
   11e84:	00000e93          	li	t4,0
   11e88:	00300e13          	li	t3,3
   11e8c:	49d19a63          	bne	gp,t4,12320 <fail>

00011e90 <test_4>:
   11e90:	00300093          	li	ra,3
   11e94:	00700113          	li	sp,7
   11e98:	402081b3          	sub	gp,ra,sp
   11e9c:	ffc00e93          	li	t4,-4
   11ea0:	00400e13          	li	t3,4
   11ea4:	47d19e63          	bne	gp,t4,12320 <fail>

00011ea8 <test_5>:
   11ea8:	00000093          	li	ra,0
   11eac:	ffff8137          	lui	sp,0xffff8
   11eb0:	402081b3          	sub	gp,ra,sp
   11eb4:	00008eb7          	lui	t4,0x8
   11eb8:	00500e13          	li	t3,5
   11ebc:	47d19263          	bne	gp,t4,12320 <fail>

00011ec0 <test_6>:
   11ec0:	800000b7          	lui	ra,0x80000
   11ec4:	00000113          	li	sp,0
   11ec8:	402081b3          	sub	gp,ra,sp
   11ecc:	80000eb7          	lui	t4,0x80000
   11ed0:	00600e13          	li	t3,6
   11ed4:	45d19663          	bne	gp,t4,12320 <fail>

00011ed8 <test_7>:
   11ed8:	800000b7          	lui	ra,0x80000
   11edc:	ffff8137          	lui	sp,0xffff8
   11ee0:	402081b3          	sub	gp,ra,sp
   11ee4:	80008eb7          	lui	t4,0x80008
   11ee8:	00700e13          	li	t3,7
   11eec:	43d19a63          	bne	gp,t4,12320 <fail>

00011ef0 <test_8>:
   11ef0:	00000093          	li	ra,0
   11ef4:	00008137          	lui	sp,0x8
   11ef8:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11efc:	402081b3          	sub	gp,ra,sp
   11f00:	ffff8eb7          	lui	t4,0xffff8
   11f04:	001e8e93          	addi	t4,t4,1 # ffff8001 <_edata+0x7fff7f91>
   11f08:	00800e13          	li	t3,8
   11f0c:	41d19a63          	bne	gp,t4,12320 <fail>

00011f10 <test_9>:
   11f10:	800000b7          	lui	ra,0x80000
   11f14:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11f18:	00000113          	li	sp,0
   11f1c:	402081b3          	sub	gp,ra,sp
   11f20:	80000eb7          	lui	t4,0x80000
   11f24:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   11f28:	00900e13          	li	t3,9
   11f2c:	3fd19a63          	bne	gp,t4,12320 <fail>

00011f30 <test_10>:
   11f30:	800000b7          	lui	ra,0x80000
   11f34:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11f38:	00008137          	lui	sp,0x8
   11f3c:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11f40:	402081b3          	sub	gp,ra,sp
   11f44:	7fff8eb7          	lui	t4,0x7fff8
   11f48:	00a00e13          	li	t3,10
   11f4c:	3dd19a63          	bne	gp,t4,12320 <fail>

00011f50 <test_11>:
   11f50:	800000b7          	lui	ra,0x80000
   11f54:	00008137          	lui	sp,0x8
   11f58:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11f5c:	402081b3          	sub	gp,ra,sp
   11f60:	7fff8eb7          	lui	t4,0x7fff8
   11f64:	001e8e93          	addi	t4,t4,1 # 7fff8001 <_etext+0x7ffdda45>
   11f68:	00b00e13          	li	t3,11
   11f6c:	3bd19a63          	bne	gp,t4,12320 <fail>

00011f70 <test_12>:
   11f70:	800000b7          	lui	ra,0x80000
   11f74:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11f78:	ffff8137          	lui	sp,0xffff8
   11f7c:	402081b3          	sub	gp,ra,sp
   11f80:	80008eb7          	lui	t4,0x80008
   11f84:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   11f88:	00c00e13          	li	t3,12
   11f8c:	39d19a63          	bne	gp,t4,12320 <fail>

00011f90 <test_13>:
   11f90:	00000093          	li	ra,0
   11f94:	fff00113          	li	sp,-1
   11f98:	402081b3          	sub	gp,ra,sp
   11f9c:	00100e93          	li	t4,1
   11fa0:	00d00e13          	li	t3,13
   11fa4:	37d19e63          	bne	gp,t4,12320 <fail>

00011fa8 <test_14>:
   11fa8:	fff00093          	li	ra,-1
   11fac:	00100113          	li	sp,1
   11fb0:	402081b3          	sub	gp,ra,sp
   11fb4:	ffe00e93          	li	t4,-2
   11fb8:	00e00e13          	li	t3,14
   11fbc:	37d19263          	bne	gp,t4,12320 <fail>

00011fc0 <test_15>:
   11fc0:	fff00093          	li	ra,-1
   11fc4:	fff00113          	li	sp,-1
   11fc8:	402081b3          	sub	gp,ra,sp
   11fcc:	00000e93          	li	t4,0
   11fd0:	00f00e13          	li	t3,15
   11fd4:	35d19663          	bne	gp,t4,12320 <fail>

00011fd8 <test_16>:
   11fd8:	00d00093          	li	ra,13
   11fdc:	00b00113          	li	sp,11
   11fe0:	402080b3          	sub	ra,ra,sp
   11fe4:	00200e93          	li	t4,2
   11fe8:	01000e13          	li	t3,16
   11fec:	33d09a63          	bne	ra,t4,12320 <fail>

00011ff0 <test_17>:
   11ff0:	00e00093          	li	ra,14
   11ff4:	00b00113          	li	sp,11
   11ff8:	40208133          	sub	sp,ra,sp
   11ffc:	00300e93          	li	t4,3
   12000:	01100e13          	li	t3,17
   12004:	31d11e63          	bne	sp,t4,12320 <fail>

00012008 <test_18>:
   12008:	00d00093          	li	ra,13
   1200c:	401080b3          	sub	ra,ra,ra
   12010:	00000e93          	li	t4,0
   12014:	01200e13          	li	t3,18
   12018:	31d09463          	bne	ra,t4,12320 <fail>

0001201c <test_19>:
   1201c:	00000213          	li	tp,0
   12020:	00d00093          	li	ra,13
   12024:	00b00113          	li	sp,11
   12028:	402081b3          	sub	gp,ra,sp
   1202c:	00018313          	mv	t1,gp
   12030:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12034:	00200293          	li	t0,2
   12038:	fe5214e3          	bne	tp,t0,12020 <test_19+0x4>
   1203c:	00200e93          	li	t4,2
   12040:	01300e13          	li	t3,19
   12044:	2dd31e63          	bne	t1,t4,12320 <fail>

00012048 <test_20>:
   12048:	00000213          	li	tp,0
   1204c:	00e00093          	li	ra,14
   12050:	00b00113          	li	sp,11
   12054:	402081b3          	sub	gp,ra,sp
   12058:	00000013          	nop
   1205c:	00018313          	mv	t1,gp
   12060:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12064:	00200293          	li	t0,2
   12068:	fe5212e3          	bne	tp,t0,1204c <test_20+0x4>
   1206c:	00300e93          	li	t4,3
   12070:	01400e13          	li	t3,20
   12074:	2bd31663          	bne	t1,t4,12320 <fail>

00012078 <test_21>:
   12078:	00000213          	li	tp,0
   1207c:	00f00093          	li	ra,15
   12080:	00b00113          	li	sp,11
   12084:	402081b3          	sub	gp,ra,sp
   12088:	00000013          	nop
   1208c:	00000013          	nop
   12090:	00018313          	mv	t1,gp
   12094:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12098:	00200293          	li	t0,2
   1209c:	fe5210e3          	bne	tp,t0,1207c <test_21+0x4>
   120a0:	00400e93          	li	t4,4
   120a4:	01500e13          	li	t3,21
   120a8:	27d31c63          	bne	t1,t4,12320 <fail>

000120ac <test_22>:
   120ac:	00000213          	li	tp,0
   120b0:	00d00093          	li	ra,13
   120b4:	00b00113          	li	sp,11
   120b8:	402081b3          	sub	gp,ra,sp
   120bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   120c0:	00200293          	li	t0,2
   120c4:	fe5216e3          	bne	tp,t0,120b0 <test_22+0x4>
   120c8:	00200e93          	li	t4,2
   120cc:	01600e13          	li	t3,22
   120d0:	25d19863          	bne	gp,t4,12320 <fail>

000120d4 <test_23>:
   120d4:	00000213          	li	tp,0
   120d8:	00e00093          	li	ra,14
   120dc:	00b00113          	li	sp,11
   120e0:	00000013          	nop
   120e4:	402081b3          	sub	gp,ra,sp
   120e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   120ec:	00200293          	li	t0,2
   120f0:	fe5214e3          	bne	tp,t0,120d8 <test_23+0x4>
   120f4:	00300e93          	li	t4,3
   120f8:	01700e13          	li	t3,23
   120fc:	23d19263          	bne	gp,t4,12320 <fail>

00012100 <test_24>:
   12100:	00000213          	li	tp,0
   12104:	00f00093          	li	ra,15
   12108:	00b00113          	li	sp,11
   1210c:	00000013          	nop
   12110:	00000013          	nop
   12114:	402081b3          	sub	gp,ra,sp
   12118:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1211c:	00200293          	li	t0,2
   12120:	fe5212e3          	bne	tp,t0,12104 <test_24+0x4>
   12124:	00400e93          	li	t4,4
   12128:	01800e13          	li	t3,24
   1212c:	1fd19a63          	bne	gp,t4,12320 <fail>

00012130 <test_25>:
   12130:	00000213          	li	tp,0
   12134:	00d00093          	li	ra,13
   12138:	00000013          	nop
   1213c:	00b00113          	li	sp,11
   12140:	402081b3          	sub	gp,ra,sp
   12144:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12148:	00200293          	li	t0,2
   1214c:	fe5214e3          	bne	tp,t0,12134 <test_25+0x4>
   12150:	00200e93          	li	t4,2
   12154:	01900e13          	li	t3,25
   12158:	1dd19463          	bne	gp,t4,12320 <fail>

0001215c <test_26>:
   1215c:	00000213          	li	tp,0
   12160:	00e00093          	li	ra,14
   12164:	00000013          	nop
   12168:	00b00113          	li	sp,11
   1216c:	00000013          	nop
   12170:	402081b3          	sub	gp,ra,sp
   12174:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12178:	00200293          	li	t0,2
   1217c:	fe5212e3          	bne	tp,t0,12160 <test_26+0x4>
   12180:	00300e93          	li	t4,3
   12184:	01a00e13          	li	t3,26
   12188:	19d19c63          	bne	gp,t4,12320 <fail>

0001218c <test_27>:
   1218c:	00000213          	li	tp,0
   12190:	00f00093          	li	ra,15
   12194:	00000013          	nop
   12198:	00000013          	nop
   1219c:	00b00113          	li	sp,11
   121a0:	402081b3          	sub	gp,ra,sp
   121a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121a8:	00200293          	li	t0,2
   121ac:	fe5212e3          	bne	tp,t0,12190 <test_27+0x4>
   121b0:	00400e93          	li	t4,4
   121b4:	01b00e13          	li	t3,27
   121b8:	17d19463          	bne	gp,t4,12320 <fail>

000121bc <test_28>:
   121bc:	00000213          	li	tp,0
   121c0:	00b00113          	li	sp,11
   121c4:	00d00093          	li	ra,13
   121c8:	402081b3          	sub	gp,ra,sp
   121cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121d0:	00200293          	li	t0,2
   121d4:	fe5216e3          	bne	tp,t0,121c0 <test_28+0x4>
   121d8:	00200e93          	li	t4,2
   121dc:	01c00e13          	li	t3,28
   121e0:	15d19063          	bne	gp,t4,12320 <fail>

000121e4 <test_29>:
   121e4:	00000213          	li	tp,0
   121e8:	00b00113          	li	sp,11
   121ec:	00e00093          	li	ra,14
   121f0:	00000013          	nop
   121f4:	402081b3          	sub	gp,ra,sp
   121f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121fc:	00200293          	li	t0,2
   12200:	fe5214e3          	bne	tp,t0,121e8 <test_29+0x4>
   12204:	00300e93          	li	t4,3
   12208:	01d00e13          	li	t3,29
   1220c:	11d19a63          	bne	gp,t4,12320 <fail>

00012210 <test_30>:
   12210:	00000213          	li	tp,0
   12214:	00b00113          	li	sp,11
   12218:	00f00093          	li	ra,15
   1221c:	00000013          	nop
   12220:	00000013          	nop
   12224:	402081b3          	sub	gp,ra,sp
   12228:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1222c:	00200293          	li	t0,2
   12230:	fe5212e3          	bne	tp,t0,12214 <test_30+0x4>
   12234:	00400e93          	li	t4,4
   12238:	01e00e13          	li	t3,30
   1223c:	0fd19263          	bne	gp,t4,12320 <fail>

00012240 <test_31>:
   12240:	00000213          	li	tp,0
   12244:	00b00113          	li	sp,11
   12248:	00000013          	nop
   1224c:	00d00093          	li	ra,13
   12250:	402081b3          	sub	gp,ra,sp
   12254:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12258:	00200293          	li	t0,2
   1225c:	fe5214e3          	bne	tp,t0,12244 <test_31+0x4>
   12260:	00200e93          	li	t4,2
   12264:	01f00e13          	li	t3,31
   12268:	0bd19c63          	bne	gp,t4,12320 <fail>

0001226c <test_32>:
   1226c:	00000213          	li	tp,0
   12270:	00b00113          	li	sp,11
   12274:	00000013          	nop
   12278:	00e00093          	li	ra,14
   1227c:	00000013          	nop
   12280:	402081b3          	sub	gp,ra,sp
   12284:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12288:	00200293          	li	t0,2
   1228c:	fe5212e3          	bne	tp,t0,12270 <test_32+0x4>
   12290:	00300e93          	li	t4,3
   12294:	02000e13          	li	t3,32
   12298:	09d19463          	bne	gp,t4,12320 <fail>

0001229c <test_33>:
   1229c:	00000213          	li	tp,0
   122a0:	00b00113          	li	sp,11
   122a4:	00000013          	nop
   122a8:	00000013          	nop
   122ac:	00f00093          	li	ra,15
   122b0:	402081b3          	sub	gp,ra,sp
   122b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   122b8:	00200293          	li	t0,2
   122bc:	fe5212e3          	bne	tp,t0,122a0 <test_33+0x4>
   122c0:	00400e93          	li	t4,4
   122c4:	02100e13          	li	t3,33
   122c8:	05d19c63          	bne	gp,t4,12320 <fail>

000122cc <test_34>:
   122cc:	ff100093          	li	ra,-15
   122d0:	40100133          	neg	sp,ra
   122d4:	00f00e93          	li	t4,15
   122d8:	02200e13          	li	t3,34
   122dc:	05d11263          	bne	sp,t4,12320 <fail>

000122e0 <test_35>:
   122e0:	02000093          	li	ra,32
   122e4:	40008133          	sub	sp,ra,zero
   122e8:	02000e93          	li	t4,32
   122ec:	02300e13          	li	t3,35
   122f0:	03d11863          	bne	sp,t4,12320 <fail>

000122f4 <test_36>:
   122f4:	400000b3          	neg	ra,zero
   122f8:	00000e93          	li	t4,0
   122fc:	02400e13          	li	t3,36
   12300:	03d09063          	bne	ra,t4,12320 <fail>

00012304 <test_37>:
   12304:	01000093          	li	ra,16
   12308:	01e00113          	li	sp,30
   1230c:	40208033          	sub	zero,ra,sp
   12310:	00000e93          	li	t4,0
   12314:	02500e13          	li	t3,37
   12318:	01d01463          	bne	zero,t4,12320 <fail>
   1231c:	05c01463          	bne	zero,t3,12364 <pass>

00012320 <fail>:
   12320:	0ff00513          	li	a0,255

00012324 <.delay_fail>:
   12324:	fff50513          	addi	a0,a0,-1
   12328:	fe051ee3          	bnez	a0,12324 <.delay_fail>
   1232c:	02000537          	lui	a0,0x2000
   12330:	04500593          	li	a1,69
   12334:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   12338:	05200613          	li	a2,82
   1233c:	00c52023          	sw	a2,0(a0)
   12340:	00c52023          	sw	a2,0(a0)
   12344:	04f00693          	li	a3,79
   12348:	00d52023          	sw	a3,0(a0)
   1234c:	00c52023          	sw	a2,0(a0)
   12350:	00d00713          	li	a4,13
   12354:	00e52023          	sw	a4,0(a0)
   12358:	00a00793          	li	a5,10
   1235c:	00f52023          	sw	a5,0(a0)
   12360:	de1fd06f          	j	10140 <sub_ret>

00012364 <pass>:
   12364:	0ff00513          	li	a0,255

00012368 <.delay_ok>:
   12368:	fff50513          	addi	a0,a0,-1
   1236c:	fe051ee3          	bnez	a0,12368 <.delay_ok>
   12370:	02000537          	lui	a0,0x2000
   12374:	04f00593          	li	a1,79
   12378:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1237c:	04b00613          	li	a2,75
   12380:	00c52023          	sw	a2,0(a0)
   12384:	00d00693          	li	a3,13
   12388:	00d52023          	sw	a3,0(a0)
   1238c:	00a00713          	li	a4,10
   12390:	00e52023          	sw	a4,0(a0)
   12394:	dadfd06f          	j	10140 <sub_ret>

00012398 <srai>:
   12398:	0ff00513          	li	a0,255

0001239c <.delay_pr>:
   1239c:	fff50513          	addi	a0,a0,-1
   123a0:	fe051ee3          	bnez	a0,1239c <.delay_pr>
   123a4:	00012537          	lui	a0,0x12
   123a8:	3c450513          	addi	a0,a0,964 # 123c4 <.test_name>
   123ac:	02000637          	lui	a2,0x2000

000123b0 <.prname_next>:
   123b0:	00050583          	lb	a1,0(a0)
   123b4:	00058c63          	beqz	a1,123cc <.prname_done>
   123b8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   123bc:	00150513          	addi	a0,a0,1
   123c0:	ff1ff06f          	j	123b0 <.prname_next>

000123c4 <.test_name>:
   123c4:	69617273          	csrrci	tp,0x696,2
   123c8:	0000                	unimp
	...

000123cc <.prname_done>:
   123cc:	02e00593          	li	a1,46
   123d0:	00b62023          	sw	a1,0(a2)
   123d4:	00b62023          	sw	a1,0(a2)

000123d8 <test_2>:
   123d8:	00000093          	li	ra,0
   123dc:	4000d193          	srai	gp,ra,0x0
   123e0:	00000e93          	li	t4,0
   123e4:	00200e13          	li	t3,2
   123e8:	2bd19463          	bne	gp,t4,12690 <fail>

000123ec <test_3>:
   123ec:	800000b7          	lui	ra,0x80000
   123f0:	4010d193          	srai	gp,ra,0x1
   123f4:	c0000eb7          	lui	t4,0xc0000
   123f8:	00300e13          	li	t3,3
   123fc:	29d19a63          	bne	gp,t4,12690 <fail>

00012400 <test_4>:
   12400:	800000b7          	lui	ra,0x80000
   12404:	4070d193          	srai	gp,ra,0x7
   12408:	ff000eb7          	lui	t4,0xff000
   1240c:	00400e13          	li	t3,4
   12410:	29d19063          	bne	gp,t4,12690 <fail>

00012414 <test_5>:
   12414:	800000b7          	lui	ra,0x80000
   12418:	40e0d193          	srai	gp,ra,0xe
   1241c:	fffe0eb7          	lui	t4,0xfffe0
   12420:	00500e13          	li	t3,5
   12424:	27d19663          	bne	gp,t4,12690 <fail>

00012428 <test_6>:
   12428:	800000b7          	lui	ra,0x80000
   1242c:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   12430:	41f0d193          	srai	gp,ra,0x1f
   12434:	fff00e93          	li	t4,-1
   12438:	00600e13          	li	t3,6
   1243c:	25d19a63          	bne	gp,t4,12690 <fail>

00012440 <test_7>:
   12440:	800000b7          	lui	ra,0x80000
   12444:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   12448:	4000d193          	srai	gp,ra,0x0
   1244c:	80000eb7          	lui	t4,0x80000
   12450:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   12454:	00700e13          	li	t3,7
   12458:	23d19c63          	bne	gp,t4,12690 <fail>

0001245c <test_8>:
   1245c:	800000b7          	lui	ra,0x80000
   12460:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   12464:	4010d193          	srai	gp,ra,0x1
   12468:	40000eb7          	lui	t4,0x40000
   1246c:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe5a43>
   12470:	00800e13          	li	t3,8
   12474:	21d19e63          	bne	gp,t4,12690 <fail>

00012478 <test_9>:
   12478:	800000b7          	lui	ra,0x80000
   1247c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   12480:	4070d193          	srai	gp,ra,0x7
   12484:	01000eb7          	lui	t4,0x1000
   12488:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe5a43>
   1248c:	00900e13          	li	t3,9
   12490:	21d19063          	bne	gp,t4,12690 <fail>

00012494 <test_10>:
   12494:	800000b7          	lui	ra,0x80000
   12498:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1249c:	40e0d193          	srai	gp,ra,0xe
   124a0:	00020eb7          	lui	t4,0x20
   124a4:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   124a8:	00a00e13          	li	t3,10
   124ac:	1fd19263          	bne	gp,t4,12690 <fail>

000124b0 <test_11>:
   124b0:	800000b7          	lui	ra,0x80000
   124b4:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   124b8:	41f0d193          	srai	gp,ra,0x1f
   124bc:	00000e93          	li	t4,0
   124c0:	00b00e13          	li	t3,11
   124c4:	1dd19663          	bne	gp,t4,12690 <fail>

000124c8 <test_12>:
   124c8:	818180b7          	lui	ra,0x81818
   124cc:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   124d0:	4000d193          	srai	gp,ra,0x0
   124d4:	81818eb7          	lui	t4,0x81818
   124d8:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   124dc:	00c00e13          	li	t3,12
   124e0:	1bd19863          	bne	gp,t4,12690 <fail>

000124e4 <test_13>:
   124e4:	818180b7          	lui	ra,0x81818
   124e8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   124ec:	4010d193          	srai	gp,ra,0x1
   124f0:	c0c0ceb7          	lui	t4,0xc0c0c
   124f4:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   124f8:	00d00e13          	li	t3,13
   124fc:	19d19a63          	bne	gp,t4,12690 <fail>

00012500 <test_14>:
   12500:	818180b7          	lui	ra,0x81818
   12504:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   12508:	4070d193          	srai	gp,ra,0x7
   1250c:	ff030eb7          	lui	t4,0xff030
   12510:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   12514:	00e00e13          	li	t3,14
   12518:	17d19c63          	bne	gp,t4,12690 <fail>

0001251c <test_15>:
   1251c:	818180b7          	lui	ra,0x81818
   12520:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   12524:	40e0d193          	srai	gp,ra,0xe
   12528:	fffe0eb7          	lui	t4,0xfffe0
   1252c:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   12530:	00f00e13          	li	t3,15
   12534:	15d19e63          	bne	gp,t4,12690 <fail>

00012538 <test_16>:
   12538:	818180b7          	lui	ra,0x81818
   1253c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   12540:	41f0d193          	srai	gp,ra,0x1f
   12544:	fff00e93          	li	t4,-1
   12548:	01000e13          	li	t3,16
   1254c:	15d19263          	bne	gp,t4,12690 <fail>

00012550 <test_17>:
   12550:	800000b7          	lui	ra,0x80000
   12554:	4070d093          	srai	ra,ra,0x7
   12558:	ff000eb7          	lui	t4,0xff000
   1255c:	01100e13          	li	t3,17
   12560:	13d09863          	bne	ra,t4,12690 <fail>

00012564 <test_18>:
   12564:	00000213          	li	tp,0
   12568:	800000b7          	lui	ra,0x80000
   1256c:	4070d193          	srai	gp,ra,0x7
   12570:	00018313          	mv	t1,gp
   12574:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12578:	00200293          	li	t0,2
   1257c:	fe5216e3          	bne	tp,t0,12568 <test_18+0x4>
   12580:	ff000eb7          	lui	t4,0xff000
   12584:	01200e13          	li	t3,18
   12588:	11d31463          	bne	t1,t4,12690 <fail>

0001258c <test_19>:
   1258c:	00000213          	li	tp,0
   12590:	800000b7          	lui	ra,0x80000
   12594:	40e0d193          	srai	gp,ra,0xe
   12598:	00000013          	nop
   1259c:	00018313          	mv	t1,gp
   125a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   125a4:	00200293          	li	t0,2
   125a8:	fe5214e3          	bne	tp,t0,12590 <test_19+0x4>
   125ac:	fffe0eb7          	lui	t4,0xfffe0
   125b0:	01300e13          	li	t3,19
   125b4:	0dd31e63          	bne	t1,t4,12690 <fail>

000125b8 <test_20>:
   125b8:	00000213          	li	tp,0
   125bc:	800000b7          	lui	ra,0x80000
   125c0:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   125c4:	41f0d193          	srai	gp,ra,0x1f
   125c8:	00000013          	nop
   125cc:	00000013          	nop
   125d0:	00018313          	mv	t1,gp
   125d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   125d8:	00200293          	li	t0,2
   125dc:	fe5210e3          	bne	tp,t0,125bc <test_20+0x4>
   125e0:	fff00e93          	li	t4,-1
   125e4:	01400e13          	li	t3,20
   125e8:	0bd31463          	bne	t1,t4,12690 <fail>

000125ec <test_21>:
   125ec:	00000213          	li	tp,0
   125f0:	800000b7          	lui	ra,0x80000
   125f4:	4070d193          	srai	gp,ra,0x7
   125f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   125fc:	00200293          	li	t0,2
   12600:	fe5218e3          	bne	tp,t0,125f0 <test_21+0x4>
   12604:	ff000eb7          	lui	t4,0xff000
   12608:	01500e13          	li	t3,21
   1260c:	09d19263          	bne	gp,t4,12690 <fail>

00012610 <test_22>:
   12610:	00000213          	li	tp,0
   12614:	800000b7          	lui	ra,0x80000
   12618:	00000013          	nop
   1261c:	40e0d193          	srai	gp,ra,0xe
   12620:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12624:	00200293          	li	t0,2
   12628:	fe5216e3          	bne	tp,t0,12614 <test_22+0x4>
   1262c:	fffe0eb7          	lui	t4,0xfffe0
   12630:	01600e13          	li	t3,22
   12634:	05d19e63          	bne	gp,t4,12690 <fail>

00012638 <test_23>:
   12638:	00000213          	li	tp,0
   1263c:	800000b7          	lui	ra,0x80000
   12640:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   12644:	00000013          	nop
   12648:	00000013          	nop
   1264c:	41f0d193          	srai	gp,ra,0x1f
   12650:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12654:	00200293          	li	t0,2
   12658:	fe5212e3          	bne	tp,t0,1263c <test_23+0x4>
   1265c:	fff00e93          	li	t4,-1
   12660:	01700e13          	li	t3,23
   12664:	03d19663          	bne	gp,t4,12690 <fail>

00012668 <test_24>:
   12668:	41f05093          	srai	ra,zero,0x1f
   1266c:	00000e93          	li	t4,0
   12670:	01800e13          	li	t3,24
   12674:	01d09e63          	bne	ra,t4,12690 <fail>

00012678 <test_25>:
   12678:	02100093          	li	ra,33
   1267c:	4140d013          	srai	zero,ra,0x14
   12680:	00000e93          	li	t4,0
   12684:	01900e13          	li	t3,25
   12688:	01d01463          	bne	zero,t4,12690 <fail>
   1268c:	05c01463          	bne	zero,t3,126d4 <pass>

00012690 <fail>:
   12690:	0ff00513          	li	a0,255

00012694 <.delay_fail>:
   12694:	fff50513          	addi	a0,a0,-1
   12698:	fe051ee3          	bnez	a0,12694 <.delay_fail>
   1269c:	02000537          	lui	a0,0x2000
   126a0:	04500593          	li	a1,69
   126a4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   126a8:	05200613          	li	a2,82
   126ac:	00c52023          	sw	a2,0(a0)
   126b0:	00c52023          	sw	a2,0(a0)
   126b4:	04f00693          	li	a3,79
   126b8:	00d52023          	sw	a3,0(a0)
   126bc:	00c52023          	sw	a2,0(a0)
   126c0:	00d00713          	li	a4,13
   126c4:	00e52023          	sw	a4,0(a0)
   126c8:	00a00793          	li	a5,10
   126cc:	00f52023          	sw	a5,0(a0)
   126d0:	a69fd06f          	j	10138 <srai_ret>

000126d4 <pass>:
   126d4:	0ff00513          	li	a0,255

000126d8 <.delay_ok>:
   126d8:	fff50513          	addi	a0,a0,-1
   126dc:	fe051ee3          	bnez	a0,126d8 <.delay_ok>
   126e0:	02000537          	lui	a0,0x2000
   126e4:	04f00593          	li	a1,79
   126e8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   126ec:	04b00613          	li	a2,75
   126f0:	00c52023          	sw	a2,0(a0)
   126f4:	00d00693          	li	a3,13
   126f8:	00d52023          	sw	a3,0(a0)
   126fc:	00a00713          	li	a4,10
   12700:	00e52023          	sw	a4,0(a0)
   12704:	a35fd06f          	j	10138 <srai_ret>

00012708 <sdram>:
   12708:	0ff00513          	li	a0,255

0001270c <.delay_pr>:
   1270c:	fff50513          	addi	a0,a0,-1
   12710:	fe051ee3          	bnez	a0,1270c <.delay_pr>
   12714:	00012537          	lui	a0,0x12
   12718:	73450513          	addi	a0,a0,1844 # 12734 <.test_name>
   1271c:	02000637          	lui	a2,0x2000

00012720 <.prname_next>:
   12720:	00050583          	lb	a1,0(a0)
   12724:	00058c63          	beqz	a1,1273c <.prname_done>
   12728:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   1272c:	00150513          	addi	a0,a0,1
   12730:	ff1ff06f          	j	12720 <.prname_next>

00012734 <.test_name>:
   12734:	61726473          	csrrsi	s0,0x617,4
   12738:	006d                	c.nop	27
	...

0001273c <.prname_done>:
   1273c:	02e00593          	li	a1,46
   12740:	00b62023          	sw	a1,0(a2)
   12744:	00b62023          	sw	a1,0(a2)
   12748:	80200537          	lui	a0,0x80200
   1274c:	000402b7          	lui	t0,0x40
   12750:	00400413          	li	s0,4

00012754 <sw_8020>:
   12754:	00552023          	sw	t0,0(a0) # 80200000 <_edata+0x1fff90>
   12758:	408282b3          	sub	t0,t0,s0
   1275c:	00850533          	add	a0,a0,s0
   12760:	fe02dae3          	bgez	t0,12754 <sw_8020>
   12764:	80200537          	lui	a0,0x80200
   12768:	00040337          	lui	t1,0x40

0001276c <lw_8020>:
   1276c:	00052283          	lw	t0,0(a0) # 80200000 <_edata+0x1fff90>
   12770:	00531c63          	bne	t1,t0,12788 <fail>
   12774:	00850533          	add	a0,a0,s0
   12778:	40830333          	sub	t1,t1,s0
   1277c:	fe0358e3          	bgez	t1,1276c <lw_8020>
   12780:	04c0006f          	j	127cc <pass>
   12784:	05c01463          	bne	zero,t3,127cc <pass>

00012788 <fail>:
   12788:	0ff00513          	li	a0,255

0001278c <.delay_fail>:
   1278c:	fff50513          	addi	a0,a0,-1
   12790:	fe051ee3          	bnez	a0,1278c <.delay_fail>
   12794:	02000537          	lui	a0,0x2000
   12798:	04500593          	li	a1,69
   1279c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   127a0:	05200613          	li	a2,82
   127a4:	00c52023          	sw	a2,0(a0)
   127a8:	00c52023          	sw	a2,0(a0)
   127ac:	04f00693          	li	a3,79
   127b0:	00d52023          	sw	a3,0(a0)
   127b4:	00c52023          	sw	a2,0(a0)
   127b8:	00d00713          	li	a4,13
   127bc:	00e52023          	sw	a4,0(a0)
   127c0:	00a00793          	li	a5,10
   127c4:	00f52023          	sw	a5,0(a0)
   127c8:	9bdfd06f          	j	10184 <sdram_ret>

000127cc <pass>:
   127cc:	0ff00513          	li	a0,255

000127d0 <.delay_ok>:
   127d0:	fff50513          	addi	a0,a0,-1
   127d4:	fe051ee3          	bnez	a0,127d0 <.delay_ok>
   127d8:	02000537          	lui	a0,0x2000
   127dc:	04f00593          	li	a1,79
   127e0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   127e4:	04b00613          	li	a2,75
   127e8:	00c52023          	sw	a2,0(a0)
   127ec:	00d00693          	li	a3,13
   127f0:	00d52023          	sw	a3,0(a0)
   127f4:	00a00713          	li	a4,10
   127f8:	00e52023          	sw	a4,0(a0)
   127fc:	989fd06f          	j	10184 <sdram_ret>

00012800 <bltu>:
   12800:	0ff00513          	li	a0,255

00012804 <.delay_pr>:
   12804:	fff50513          	addi	a0,a0,-1
   12808:	fe051ee3          	bnez	a0,12804 <.delay_pr>
   1280c:	00013537          	lui	a0,0x13
   12810:	82c50513          	addi	a0,a0,-2004 # 1282c <.test_name>
   12814:	02000637          	lui	a2,0x2000

00012818 <.prname_next>:
   12818:	00050583          	lb	a1,0(a0)
   1281c:	00058c63          	beqz	a1,12834 <.prname_done>
   12820:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   12824:	00150513          	addi	a0,a0,1
   12828:	ff1ff06f          	j	12818 <.prname_next>

0001282c <.test_name>:
   1282c:	6c62                	flw	fs8,24(sp)
   1282e:	7574                	flw	fa3,108(a0)
   12830:	0000                	unimp
	...

00012834 <.prname_done>:
   12834:	02e00593          	li	a1,46
   12838:	00b62023          	sw	a1,0(a2)
   1283c:	00b62023          	sw	a1,0(a2)

00012840 <test_2>:
   12840:	00200e13          	li	t3,2
   12844:	00000093          	li	ra,0
   12848:	00100113          	li	sp,1
   1284c:	0020e663          	bltu	ra,sp,12858 <test_2+0x18>
   12850:	2fc01263          	bne	zero,t3,12b34 <fail>
   12854:	01c01663          	bne	zero,t3,12860 <test_3>
   12858:	fe20eee3          	bltu	ra,sp,12854 <test_2+0x14>
   1285c:	2dc01c63          	bne	zero,t3,12b34 <fail>

00012860 <test_3>:
   12860:	00300e13          	li	t3,3
   12864:	ffe00093          	li	ra,-2
   12868:	fff00113          	li	sp,-1
   1286c:	0020e663          	bltu	ra,sp,12878 <test_3+0x18>
   12870:	2dc01263          	bne	zero,t3,12b34 <fail>
   12874:	01c01663          	bne	zero,t3,12880 <test_4>
   12878:	fe20eee3          	bltu	ra,sp,12874 <test_3+0x14>
   1287c:	2bc01c63          	bne	zero,t3,12b34 <fail>

00012880 <test_4>:
   12880:	00400e13          	li	t3,4
   12884:	00000093          	li	ra,0
   12888:	fff00113          	li	sp,-1
   1288c:	0020e663          	bltu	ra,sp,12898 <test_4+0x18>
   12890:	2bc01263          	bne	zero,t3,12b34 <fail>
   12894:	01c01663          	bne	zero,t3,128a0 <test_5>
   12898:	fe20eee3          	bltu	ra,sp,12894 <test_4+0x14>
   1289c:	29c01c63          	bne	zero,t3,12b34 <fail>

000128a0 <test_5>:
   128a0:	00500e13          	li	t3,5
   128a4:	00100093          	li	ra,1
   128a8:	00000113          	li	sp,0
   128ac:	0020e463          	bltu	ra,sp,128b4 <test_5+0x14>
   128b0:	01c01463          	bne	zero,t3,128b8 <test_5+0x18>
   128b4:	29c01063          	bne	zero,t3,12b34 <fail>
   128b8:	fe20eee3          	bltu	ra,sp,128b4 <test_5+0x14>

000128bc <test_6>:
   128bc:	00600e13          	li	t3,6
   128c0:	fff00093          	li	ra,-1
   128c4:	ffe00113          	li	sp,-2
   128c8:	0020e463          	bltu	ra,sp,128d0 <test_6+0x14>
   128cc:	01c01463          	bne	zero,t3,128d4 <test_6+0x18>
   128d0:	27c01263          	bne	zero,t3,12b34 <fail>
   128d4:	fe20eee3          	bltu	ra,sp,128d0 <test_6+0x14>

000128d8 <test_7>:
   128d8:	00700e13          	li	t3,7
   128dc:	fff00093          	li	ra,-1
   128e0:	00000113          	li	sp,0
   128e4:	0020e463          	bltu	ra,sp,128ec <test_7+0x14>
   128e8:	01c01463          	bne	zero,t3,128f0 <test_7+0x18>
   128ec:	25c01463          	bne	zero,t3,12b34 <fail>
   128f0:	fe20eee3          	bltu	ra,sp,128ec <test_7+0x14>

000128f4 <test_8>:
   128f4:	00800e13          	li	t3,8
   128f8:	800000b7          	lui	ra,0x80000
   128fc:	80000137          	lui	sp,0x80000
   12900:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   12904:	0020e463          	bltu	ra,sp,1290c <test_8+0x18>
   12908:	01c01463          	bne	zero,t3,12910 <test_8+0x1c>
   1290c:	23c01463          	bne	zero,t3,12b34 <fail>
   12910:	fe20eee3          	bltu	ra,sp,1290c <test_8+0x18>

00012914 <test_9>:
   12914:	00900e13          	li	t3,9
   12918:	00000213          	li	tp,0
   1291c:	f00000b7          	lui	ra,0xf0000
   12920:	f0000137          	lui	sp,0xf0000
   12924:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12928:	2020e663          	bltu	ra,sp,12b34 <fail>
   1292c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12930:	00200293          	li	t0,2
   12934:	fe5214e3          	bne	tp,t0,1291c <test_9+0x8>

00012938 <test_10>:
   12938:	00a00e13          	li	t3,10
   1293c:	00000213          	li	tp,0
   12940:	f00000b7          	lui	ra,0xf0000
   12944:	f0000137          	lui	sp,0xf0000
   12948:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   1294c:	00000013          	nop
   12950:	1e20e263          	bltu	ra,sp,12b34 <fail>
   12954:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12958:	00200293          	li	t0,2
   1295c:	fe5212e3          	bne	tp,t0,12940 <test_10+0x8>

00012960 <test_11>:
   12960:	00b00e13          	li	t3,11
   12964:	00000213          	li	tp,0
   12968:	f00000b7          	lui	ra,0xf0000
   1296c:	f0000137          	lui	sp,0xf0000
   12970:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12974:	00000013          	nop
   12978:	00000013          	nop
   1297c:	1a20ec63          	bltu	ra,sp,12b34 <fail>
   12980:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12984:	00200293          	li	t0,2
   12988:	fe5210e3          	bne	tp,t0,12968 <test_11+0x8>

0001298c <test_12>:
   1298c:	00c00e13          	li	t3,12
   12990:	00000213          	li	tp,0
   12994:	f00000b7          	lui	ra,0xf0000
   12998:	00000013          	nop
   1299c:	f0000137          	lui	sp,0xf0000
   129a0:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   129a4:	1820e863          	bltu	ra,sp,12b34 <fail>
   129a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   129ac:	00200293          	li	t0,2
   129b0:	fe5212e3          	bne	tp,t0,12994 <test_12+0x8>

000129b4 <test_13>:
   129b4:	00d00e13          	li	t3,13
   129b8:	00000213          	li	tp,0
   129bc:	f00000b7          	lui	ra,0xf0000
   129c0:	00000013          	nop
   129c4:	f0000137          	lui	sp,0xf0000
   129c8:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   129cc:	00000013          	nop
   129d0:	1620e263          	bltu	ra,sp,12b34 <fail>
   129d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   129d8:	00200293          	li	t0,2
   129dc:	fe5210e3          	bne	tp,t0,129bc <test_13+0x8>

000129e0 <test_14>:
   129e0:	00e00e13          	li	t3,14
   129e4:	00000213          	li	tp,0
   129e8:	f00000b7          	lui	ra,0xf0000
   129ec:	00000013          	nop
   129f0:	00000013          	nop
   129f4:	f0000137          	lui	sp,0xf0000
   129f8:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   129fc:	1220ec63          	bltu	ra,sp,12b34 <fail>
   12a00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12a04:	00200293          	li	t0,2
   12a08:	fe5210e3          	bne	tp,t0,129e8 <test_14+0x8>

00012a0c <test_15>:
   12a0c:	00f00e13          	li	t3,15
   12a10:	00000213          	li	tp,0
   12a14:	f00000b7          	lui	ra,0xf0000
   12a18:	f0000137          	lui	sp,0xf0000
   12a1c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12a20:	1020ea63          	bltu	ra,sp,12b34 <fail>
   12a24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12a28:	00200293          	li	t0,2
   12a2c:	fe5214e3          	bne	tp,t0,12a14 <test_15+0x8>

00012a30 <test_16>:
   12a30:	01000e13          	li	t3,16
   12a34:	00000213          	li	tp,0
   12a38:	f00000b7          	lui	ra,0xf0000
   12a3c:	f0000137          	lui	sp,0xf0000
   12a40:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12a44:	00000013          	nop
   12a48:	0e20e663          	bltu	ra,sp,12b34 <fail>
   12a4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12a50:	00200293          	li	t0,2
   12a54:	fe5212e3          	bne	tp,t0,12a38 <test_16+0x8>

00012a58 <test_17>:
   12a58:	01100e13          	li	t3,17
   12a5c:	00000213          	li	tp,0
   12a60:	f00000b7          	lui	ra,0xf0000
   12a64:	f0000137          	lui	sp,0xf0000
   12a68:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12a6c:	00000013          	nop
   12a70:	00000013          	nop
   12a74:	0c20e063          	bltu	ra,sp,12b34 <fail>
   12a78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12a7c:	00200293          	li	t0,2
   12a80:	fe5210e3          	bne	tp,t0,12a60 <test_17+0x8>

00012a84 <test_18>:
   12a84:	01200e13          	li	t3,18
   12a88:	00000213          	li	tp,0
   12a8c:	f00000b7          	lui	ra,0xf0000
   12a90:	00000013          	nop
   12a94:	f0000137          	lui	sp,0xf0000
   12a98:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12a9c:	0820ec63          	bltu	ra,sp,12b34 <fail>
   12aa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12aa4:	00200293          	li	t0,2
   12aa8:	fe5212e3          	bne	tp,t0,12a8c <test_18+0x8>

00012aac <test_19>:
   12aac:	01300e13          	li	t3,19
   12ab0:	00000213          	li	tp,0
   12ab4:	f00000b7          	lui	ra,0xf0000
   12ab8:	00000013          	nop
   12abc:	f0000137          	lui	sp,0xf0000
   12ac0:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12ac4:	00000013          	nop
   12ac8:	0620e663          	bltu	ra,sp,12b34 <fail>
   12acc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12ad0:	00200293          	li	t0,2
   12ad4:	fe5210e3          	bne	tp,t0,12ab4 <test_19+0x8>

00012ad8 <test_20>:
   12ad8:	01400e13          	li	t3,20
   12adc:	00000213          	li	tp,0
   12ae0:	f00000b7          	lui	ra,0xf0000
   12ae4:	00000013          	nop
   12ae8:	00000013          	nop
   12aec:	f0000137          	lui	sp,0xf0000
   12af0:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   12af4:	0420e063          	bltu	ra,sp,12b34 <fail>
   12af8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12afc:	00200293          	li	t0,2
   12b00:	fe5210e3          	bne	tp,t0,12ae0 <test_20+0x8>

00012b04 <test_21>:
   12b04:	00100093          	li	ra,1
   12b08:	00106a63          	bltu	zero,ra,12b1c <test_21+0x18>
   12b0c:	00108093          	addi	ra,ra,1 # f0000001 <_edata+0x6fffff91>
   12b10:	00108093          	addi	ra,ra,1
   12b14:	00108093          	addi	ra,ra,1
   12b18:	00108093          	addi	ra,ra,1
   12b1c:	00108093          	addi	ra,ra,1
   12b20:	00108093          	addi	ra,ra,1
   12b24:	00300e93          	li	t4,3
   12b28:	01500e13          	li	t3,21
   12b2c:	01d09463          	bne	ra,t4,12b34 <fail>
   12b30:	05c01463          	bne	zero,t3,12b78 <pass>

00012b34 <fail>:
   12b34:	0ff00513          	li	a0,255

00012b38 <.delay_fail>:
   12b38:	fff50513          	addi	a0,a0,-1
   12b3c:	fe051ee3          	bnez	a0,12b38 <.delay_fail>
   12b40:	02000537          	lui	a0,0x2000
   12b44:	04500593          	li	a1,69
   12b48:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   12b4c:	05200613          	li	a2,82
   12b50:	00c52023          	sw	a2,0(a0)
   12b54:	00c52023          	sw	a2,0(a0)
   12b58:	04f00693          	li	a3,79
   12b5c:	00d52023          	sw	a3,0(a0)
   12b60:	00c52023          	sw	a2,0(a0)
   12b64:	00d00713          	li	a4,13
   12b68:	00e52023          	sw	a4,0(a0)
   12b6c:	00a00793          	li	a5,10
   12b70:	00f52023          	sw	a5,0(a0)
   12b74:	d80fd06f          	j	100f4 <bltu_ret>

00012b78 <pass>:
   12b78:	0ff00513          	li	a0,255

00012b7c <.delay_ok>:
   12b7c:	fff50513          	addi	a0,a0,-1
   12b80:	fe051ee3          	bnez	a0,12b7c <.delay_ok>
   12b84:	02000537          	lui	a0,0x2000
   12b88:	04f00593          	li	a1,79
   12b8c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   12b90:	04b00613          	li	a2,75
   12b94:	00c52023          	sw	a2,0(a0)
   12b98:	00d00693          	li	a3,13
   12b9c:	00d52023          	sw	a3,0(a0)
   12ba0:	00a00713          	li	a4,10
   12ba4:	00e52023          	sw	a4,0(a0)
   12ba8:	d4cfd06f          	j	100f4 <bltu_ret>

00012bac <mul>:
   12bac:	0ff00513          	li	a0,255

00012bb0 <.delay_pr>:
   12bb0:	fff50513          	addi	a0,a0,-1
   12bb4:	fe051ee3          	bnez	a0,12bb0 <.delay_pr>
   12bb8:	00013537          	lui	a0,0x13
   12bbc:	bd850513          	addi	a0,a0,-1064 # 12bd8 <.test_name>
   12bc0:	02000637          	lui	a2,0x2000

00012bc4 <.prname_next>:
   12bc4:	00050583          	lb	a1,0(a0)
   12bc8:	00058a63          	beqz	a1,12bdc <.prname_done>
   12bcc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   12bd0:	00150513          	addi	a0,a0,1
   12bd4:	ff1ff06f          	j	12bc4 <.prname_next>

00012bd8 <.test_name>:
   12bd8:	756d                	lui	a0,0xffffb
   12bda:	006c                	addi	a1,sp,12

00012bdc <.prname_done>:
   12bdc:	02e00593          	li	a1,46
   12be0:	00b62023          	sw	a1,0(a2)
   12be4:	00b62023          	sw	a1,0(a2)

00012be8 <test_32>:
   12be8:	000080b7          	lui	ra,0x8
   12bec:	e0008093          	addi	ra,ra,-512 # 7e00 <_start-0x8200>
   12bf0:	b6db7137          	lui	sp,0xb6db7
   12bf4:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   12bf8:	022081b3          	mul	gp,ra,sp
   12bfc:	00001eb7          	lui	t4,0x1
   12c00:	200e8e93          	addi	t4,t4,512 # 1200 <_start-0xee00>
   12c04:	02000e13          	li	t3,32
   12c08:	4bd19463          	bne	gp,t4,130b0 <fail>

00012c0c <test_33>:
   12c0c:	000080b7          	lui	ra,0x8
   12c10:	fc008093          	addi	ra,ra,-64 # 7fc0 <_start-0x8040>
   12c14:	b6db7137          	lui	sp,0xb6db7
   12c18:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   12c1c:	022081b3          	mul	gp,ra,sp
   12c20:	00001eb7          	lui	t4,0x1
   12c24:	240e8e93          	addi	t4,t4,576 # 1240 <_start-0xedc0>
   12c28:	02100e13          	li	t3,33
   12c2c:	49d19263          	bne	gp,t4,130b0 <fail>

00012c30 <test_2>:
   12c30:	00000093          	li	ra,0
   12c34:	00000113          	li	sp,0
   12c38:	022081b3          	mul	gp,ra,sp
   12c3c:	00000e93          	li	t4,0
   12c40:	00200e13          	li	t3,2
   12c44:	47d19663          	bne	gp,t4,130b0 <fail>

00012c48 <test_3>:
   12c48:	00100093          	li	ra,1
   12c4c:	00100113          	li	sp,1
   12c50:	022081b3          	mul	gp,ra,sp
   12c54:	00100e93          	li	t4,1
   12c58:	00300e13          	li	t3,3
   12c5c:	45d19a63          	bne	gp,t4,130b0 <fail>

00012c60 <test_4>:
   12c60:	00300093          	li	ra,3
   12c64:	00700113          	li	sp,7
   12c68:	022081b3          	mul	gp,ra,sp
   12c6c:	01500e93          	li	t4,21
   12c70:	00400e13          	li	t3,4
   12c74:	43d19e63          	bne	gp,t4,130b0 <fail>

00012c78 <test_5>:
   12c78:	00000093          	li	ra,0
   12c7c:	ffff8137          	lui	sp,0xffff8
   12c80:	022081b3          	mul	gp,ra,sp
   12c84:	00000e93          	li	t4,0
   12c88:	00500e13          	li	t3,5
   12c8c:	43d19263          	bne	gp,t4,130b0 <fail>

00012c90 <test_6>:
   12c90:	800000b7          	lui	ra,0x80000
   12c94:	00000113          	li	sp,0
   12c98:	022081b3          	mul	gp,ra,sp
   12c9c:	00000e93          	li	t4,0
   12ca0:	00600e13          	li	t3,6
   12ca4:	41d19663          	bne	gp,t4,130b0 <fail>

00012ca8 <test_7>:
   12ca8:	800000b7          	lui	ra,0x80000
   12cac:	ffff8137          	lui	sp,0xffff8
   12cb0:	022081b3          	mul	gp,ra,sp
   12cb4:	00000e93          	li	t4,0
   12cb8:	00700e13          	li	t3,7
   12cbc:	3fd19a63          	bne	gp,t4,130b0 <fail>

00012cc0 <test_30>:
   12cc0:	aaaab0b7          	lui	ra,0xaaaab
   12cc4:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   12cc8:	00030137          	lui	sp,0x30
   12ccc:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x158c1>
   12cd0:	022081b3          	mul	gp,ra,sp
   12cd4:	00010eb7          	lui	t4,0x10
   12cd8:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12cdc:	01e00e13          	li	t3,30
   12ce0:	3dd19863          	bne	gp,t4,130b0 <fail>

00012ce4 <test_31>:
   12ce4:	000300b7          	lui	ra,0x30
   12ce8:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x158c1>
   12cec:	aaaab137          	lui	sp,0xaaaab
   12cf0:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   12cf4:	022081b3          	mul	gp,ra,sp
   12cf8:	00010eb7          	lui	t4,0x10
   12cfc:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12d00:	01f00e13          	li	t3,31
   12d04:	3bd19663          	bne	gp,t4,130b0 <fail>

00012d08 <test_34>:
   12d08:	ff0000b7          	lui	ra,0xff000
   12d0c:	ff000137          	lui	sp,0xff000
   12d10:	022081b3          	mul	gp,ra,sp
   12d14:	00000e93          	li	t4,0
   12d18:	02200e13          	li	t3,34
   12d1c:	39d19a63          	bne	gp,t4,130b0 <fail>

00012d20 <test_35>:
   12d20:	fff00093          	li	ra,-1
   12d24:	fff00113          	li	sp,-1
   12d28:	022081b3          	mul	gp,ra,sp
   12d2c:	00100e93          	li	t4,1
   12d30:	02300e13          	li	t3,35
   12d34:	37d19e63          	bne	gp,t4,130b0 <fail>

00012d38 <test_36>:
   12d38:	fff00093          	li	ra,-1
   12d3c:	00100113          	li	sp,1
   12d40:	022081b3          	mul	gp,ra,sp
   12d44:	fff00e93          	li	t4,-1
   12d48:	02400e13          	li	t3,36
   12d4c:	37d19263          	bne	gp,t4,130b0 <fail>

00012d50 <test_37>:
   12d50:	00100093          	li	ra,1
   12d54:	fff00113          	li	sp,-1
   12d58:	022081b3          	mul	gp,ra,sp
   12d5c:	fff00e93          	li	t4,-1
   12d60:	02500e13          	li	t3,37
   12d64:	35d19663          	bne	gp,t4,130b0 <fail>

00012d68 <test_8>:
   12d68:	00d00093          	li	ra,13
   12d6c:	00b00113          	li	sp,11
   12d70:	022080b3          	mul	ra,ra,sp
   12d74:	08f00e93          	li	t4,143
   12d78:	00800e13          	li	t3,8
   12d7c:	33d09a63          	bne	ra,t4,130b0 <fail>

00012d80 <test_9>:
   12d80:	00e00093          	li	ra,14
   12d84:	00b00113          	li	sp,11
   12d88:	02208133          	mul	sp,ra,sp
   12d8c:	09a00e93          	li	t4,154
   12d90:	00900e13          	li	t3,9
   12d94:	31d11e63          	bne	sp,t4,130b0 <fail>

00012d98 <test_10>:
   12d98:	00d00093          	li	ra,13
   12d9c:	021080b3          	mul	ra,ra,ra
   12da0:	0a900e93          	li	t4,169
   12da4:	00a00e13          	li	t3,10
   12da8:	31d09463          	bne	ra,t4,130b0 <fail>

00012dac <test_11>:
   12dac:	00000213          	li	tp,0
   12db0:	00d00093          	li	ra,13
   12db4:	00b00113          	li	sp,11
   12db8:	022081b3          	mul	gp,ra,sp
   12dbc:	00018313          	mv	t1,gp
   12dc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12dc4:	00200293          	li	t0,2
   12dc8:	fe5214e3          	bne	tp,t0,12db0 <test_11+0x4>
   12dcc:	08f00e93          	li	t4,143
   12dd0:	00b00e13          	li	t3,11
   12dd4:	2dd31e63          	bne	t1,t4,130b0 <fail>

00012dd8 <test_12>:
   12dd8:	00000213          	li	tp,0
   12ddc:	00e00093          	li	ra,14
   12de0:	00b00113          	li	sp,11
   12de4:	022081b3          	mul	gp,ra,sp
   12de8:	00000013          	nop
   12dec:	00018313          	mv	t1,gp
   12df0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12df4:	00200293          	li	t0,2
   12df8:	fe5212e3          	bne	tp,t0,12ddc <test_12+0x4>
   12dfc:	09a00e93          	li	t4,154
   12e00:	00c00e13          	li	t3,12
   12e04:	2bd31663          	bne	t1,t4,130b0 <fail>

00012e08 <test_13>:
   12e08:	00000213          	li	tp,0
   12e0c:	00f00093          	li	ra,15
   12e10:	00b00113          	li	sp,11
   12e14:	022081b3          	mul	gp,ra,sp
   12e18:	00000013          	nop
   12e1c:	00000013          	nop
   12e20:	00018313          	mv	t1,gp
   12e24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e28:	00200293          	li	t0,2
   12e2c:	fe5210e3          	bne	tp,t0,12e0c <test_13+0x4>
   12e30:	0a500e93          	li	t4,165
   12e34:	00d00e13          	li	t3,13
   12e38:	27d31c63          	bne	t1,t4,130b0 <fail>

00012e3c <test_14>:
   12e3c:	00000213          	li	tp,0
   12e40:	00d00093          	li	ra,13
   12e44:	00b00113          	li	sp,11
   12e48:	022081b3          	mul	gp,ra,sp
   12e4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e50:	00200293          	li	t0,2
   12e54:	fe5216e3          	bne	tp,t0,12e40 <test_14+0x4>
   12e58:	08f00e93          	li	t4,143
   12e5c:	00e00e13          	li	t3,14
   12e60:	25d19863          	bne	gp,t4,130b0 <fail>

00012e64 <test_15>:
   12e64:	00000213          	li	tp,0
   12e68:	00e00093          	li	ra,14
   12e6c:	00b00113          	li	sp,11
   12e70:	00000013          	nop
   12e74:	022081b3          	mul	gp,ra,sp
   12e78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e7c:	00200293          	li	t0,2
   12e80:	fe5214e3          	bne	tp,t0,12e68 <test_15+0x4>
   12e84:	09a00e93          	li	t4,154
   12e88:	00f00e13          	li	t3,15
   12e8c:	23d19263          	bne	gp,t4,130b0 <fail>

00012e90 <test_16>:
   12e90:	00000213          	li	tp,0
   12e94:	00f00093          	li	ra,15
   12e98:	00b00113          	li	sp,11
   12e9c:	00000013          	nop
   12ea0:	00000013          	nop
   12ea4:	022081b3          	mul	gp,ra,sp
   12ea8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12eac:	00200293          	li	t0,2
   12eb0:	fe5212e3          	bne	tp,t0,12e94 <test_16+0x4>
   12eb4:	0a500e93          	li	t4,165
   12eb8:	01000e13          	li	t3,16
   12ebc:	1fd19a63          	bne	gp,t4,130b0 <fail>

00012ec0 <test_17>:
   12ec0:	00000213          	li	tp,0
   12ec4:	00d00093          	li	ra,13
   12ec8:	00000013          	nop
   12ecc:	00b00113          	li	sp,11
   12ed0:	022081b3          	mul	gp,ra,sp
   12ed4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12ed8:	00200293          	li	t0,2
   12edc:	fe5214e3          	bne	tp,t0,12ec4 <test_17+0x4>
   12ee0:	08f00e93          	li	t4,143
   12ee4:	01100e13          	li	t3,17
   12ee8:	1dd19463          	bne	gp,t4,130b0 <fail>

00012eec <test_18>:
   12eec:	00000213          	li	tp,0
   12ef0:	00e00093          	li	ra,14
   12ef4:	00000013          	nop
   12ef8:	00b00113          	li	sp,11
   12efc:	00000013          	nop
   12f00:	022081b3          	mul	gp,ra,sp
   12f04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12f08:	00200293          	li	t0,2
   12f0c:	fe5212e3          	bne	tp,t0,12ef0 <test_18+0x4>
   12f10:	09a00e93          	li	t4,154
   12f14:	01200e13          	li	t3,18
   12f18:	19d19c63          	bne	gp,t4,130b0 <fail>

00012f1c <test_19>:
   12f1c:	00000213          	li	tp,0
   12f20:	00f00093          	li	ra,15
   12f24:	00000013          	nop
   12f28:	00000013          	nop
   12f2c:	00b00113          	li	sp,11
   12f30:	022081b3          	mul	gp,ra,sp
   12f34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12f38:	00200293          	li	t0,2
   12f3c:	fe5212e3          	bne	tp,t0,12f20 <test_19+0x4>
   12f40:	0a500e93          	li	t4,165
   12f44:	01300e13          	li	t3,19
   12f48:	17d19463          	bne	gp,t4,130b0 <fail>

00012f4c <test_20>:
   12f4c:	00000213          	li	tp,0
   12f50:	00b00113          	li	sp,11
   12f54:	00d00093          	li	ra,13
   12f58:	022081b3          	mul	gp,ra,sp
   12f5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12f60:	00200293          	li	t0,2
   12f64:	fe5216e3          	bne	tp,t0,12f50 <test_20+0x4>
   12f68:	08f00e93          	li	t4,143
   12f6c:	01400e13          	li	t3,20
   12f70:	15d19063          	bne	gp,t4,130b0 <fail>

00012f74 <test_21>:
   12f74:	00000213          	li	tp,0
   12f78:	00b00113          	li	sp,11
   12f7c:	00e00093          	li	ra,14
   12f80:	00000013          	nop
   12f84:	022081b3          	mul	gp,ra,sp
   12f88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12f8c:	00200293          	li	t0,2
   12f90:	fe5214e3          	bne	tp,t0,12f78 <test_21+0x4>
   12f94:	09a00e93          	li	t4,154
   12f98:	01500e13          	li	t3,21
   12f9c:	11d19a63          	bne	gp,t4,130b0 <fail>

00012fa0 <test_22>:
   12fa0:	00000213          	li	tp,0
   12fa4:	00b00113          	li	sp,11
   12fa8:	00f00093          	li	ra,15
   12fac:	00000013          	nop
   12fb0:	00000013          	nop
   12fb4:	022081b3          	mul	gp,ra,sp
   12fb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12fbc:	00200293          	li	t0,2
   12fc0:	fe5212e3          	bne	tp,t0,12fa4 <test_22+0x4>
   12fc4:	0a500e93          	li	t4,165
   12fc8:	01600e13          	li	t3,22
   12fcc:	0fd19263          	bne	gp,t4,130b0 <fail>

00012fd0 <test_23>:
   12fd0:	00000213          	li	tp,0
   12fd4:	00b00113          	li	sp,11
   12fd8:	00000013          	nop
   12fdc:	00d00093          	li	ra,13
   12fe0:	022081b3          	mul	gp,ra,sp
   12fe4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12fe8:	00200293          	li	t0,2
   12fec:	fe5214e3          	bne	tp,t0,12fd4 <test_23+0x4>
   12ff0:	08f00e93          	li	t4,143
   12ff4:	01700e13          	li	t3,23
   12ff8:	0bd19c63          	bne	gp,t4,130b0 <fail>

00012ffc <test_24>:
   12ffc:	00000213          	li	tp,0
   13000:	00b00113          	li	sp,11
   13004:	00000013          	nop
   13008:	00e00093          	li	ra,14
   1300c:	00000013          	nop
   13010:	022081b3          	mul	gp,ra,sp
   13014:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13018:	00200293          	li	t0,2
   1301c:	fe5212e3          	bne	tp,t0,13000 <test_24+0x4>
   13020:	09a00e93          	li	t4,154
   13024:	01800e13          	li	t3,24
   13028:	09d19463          	bne	gp,t4,130b0 <fail>

0001302c <test_25>:
   1302c:	00000213          	li	tp,0
   13030:	00b00113          	li	sp,11
   13034:	00000013          	nop
   13038:	00000013          	nop
   1303c:	00f00093          	li	ra,15
   13040:	022081b3          	mul	gp,ra,sp
   13044:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13048:	00200293          	li	t0,2
   1304c:	fe5212e3          	bne	tp,t0,13030 <test_25+0x4>
   13050:	0a500e93          	li	t4,165
   13054:	01900e13          	li	t3,25
   13058:	05d19c63          	bne	gp,t4,130b0 <fail>

0001305c <test_26>:
   1305c:	01f00093          	li	ra,31
   13060:	02100133          	mul	sp,zero,ra
   13064:	00000e93          	li	t4,0
   13068:	01a00e13          	li	t3,26
   1306c:	05d11263          	bne	sp,t4,130b0 <fail>

00013070 <test_27>:
   13070:	02000093          	li	ra,32
   13074:	02008133          	mul	sp,ra,zero
   13078:	00000e93          	li	t4,0
   1307c:	01b00e13          	li	t3,27
   13080:	03d11863          	bne	sp,t4,130b0 <fail>

00013084 <test_28>:
   13084:	020000b3          	mul	ra,zero,zero
   13088:	00000e93          	li	t4,0
   1308c:	01c00e13          	li	t3,28
   13090:	03d09063          	bne	ra,t4,130b0 <fail>

00013094 <test_29>:
   13094:	02100093          	li	ra,33
   13098:	02200113          	li	sp,34
   1309c:	02208033          	mul	zero,ra,sp
   130a0:	00000e93          	li	t4,0
   130a4:	01d00e13          	li	t3,29
   130a8:	01d01463          	bne	zero,t4,130b0 <fail>
   130ac:	05c01463          	bne	zero,t3,130f4 <pass>

000130b0 <fail>:
   130b0:	0ff00513          	li	a0,255

000130b4 <.delay_fail>:
   130b4:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   130b8:	fe051ee3          	bnez	a0,130b4 <.delay_fail>
   130bc:	02000537          	lui	a0,0x2000
   130c0:	04500593          	li	a1,69
   130c4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   130c8:	05200613          	li	a2,82
   130cc:	00c52023          	sw	a2,0(a0)
   130d0:	00c52023          	sw	a2,0(a0)
   130d4:	04f00693          	li	a3,79
   130d8:	00d52023          	sw	a3,0(a0)
   130dc:	00c52023          	sw	a2,0(a0)
   130e0:	00d00713          	li	a4,13
   130e4:	00e52023          	sw	a4,0(a0)
   130e8:	00a00793          	li	a5,10
   130ec:	00f52023          	sw	a5,0(a0)
   130f0:	87cfd06f          	j	1016c <mul_ret>

000130f4 <pass>:
   130f4:	0ff00513          	li	a0,255

000130f8 <.delay_ok>:
   130f8:	fff50513          	addi	a0,a0,-1
   130fc:	fe051ee3          	bnez	a0,130f8 <.delay_ok>
   13100:	02000537          	lui	a0,0x2000
   13104:	04f00593          	li	a1,79
   13108:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1310c:	04b00613          	li	a2,75
   13110:	00c52023          	sw	a2,0(a0)
   13114:	00d00693          	li	a3,13
   13118:	00d52023          	sw	a3,0(a0)
   1311c:	00a00713          	li	a4,10
   13120:	00e52023          	sw	a4,0(a0)
   13124:	848fd06f          	j	1016c <mul_ret>

00013128 <slti>:
   13128:	0ff00513          	li	a0,255

0001312c <.delay_pr>:
   1312c:	fff50513          	addi	a0,a0,-1
   13130:	fe051ee3          	bnez	a0,1312c <.delay_pr>
   13134:	00013537          	lui	a0,0x13
   13138:	15450513          	addi	a0,a0,340 # 13154 <.test_name>
   1313c:	02000637          	lui	a2,0x2000

00013140 <.prname_next>:
   13140:	00050583          	lb	a1,0(a0)
   13144:	00058c63          	beqz	a1,1315c <.prname_done>
   13148:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   1314c:	00150513          	addi	a0,a0,1
   13150:	ff1ff06f          	j	13140 <.prname_next>

00013154 <.test_name>:
   13154:	69746c73          	csrrsi	s8,0x697,8
   13158:	0000                	unimp
	...

0001315c <.prname_done>:
   1315c:	02e00593          	li	a1,46
   13160:	00b62023          	sw	a1,0(a2)
   13164:	00b62023          	sw	a1,0(a2)

00013168 <test_2>:
   13168:	00000093          	li	ra,0
   1316c:	0000a193          	slti	gp,ra,0
   13170:	00000e93          	li	t4,0
   13174:	00200e13          	li	t3,2
   13178:	27d19263          	bne	gp,t4,133dc <fail>

0001317c <test_3>:
   1317c:	00100093          	li	ra,1
   13180:	0010a193          	slti	gp,ra,1
   13184:	00000e93          	li	t4,0
   13188:	00300e13          	li	t3,3
   1318c:	25d19863          	bne	gp,t4,133dc <fail>

00013190 <test_4>:
   13190:	00300093          	li	ra,3
   13194:	0070a193          	slti	gp,ra,7
   13198:	00100e93          	li	t4,1
   1319c:	00400e13          	li	t3,4
   131a0:	23d19e63          	bne	gp,t4,133dc <fail>

000131a4 <test_5>:
   131a4:	00700093          	li	ra,7
   131a8:	0030a193          	slti	gp,ra,3
   131ac:	00000e93          	li	t4,0
   131b0:	00500e13          	li	t3,5
   131b4:	23d19463          	bne	gp,t4,133dc <fail>

000131b8 <test_6>:
   131b8:	00000093          	li	ra,0
   131bc:	8000a193          	slti	gp,ra,-2048
   131c0:	00000e93          	li	t4,0
   131c4:	00600e13          	li	t3,6
   131c8:	21d19a63          	bne	gp,t4,133dc <fail>

000131cc <test_7>:
   131cc:	800000b7          	lui	ra,0x80000
   131d0:	0000a193          	slti	gp,ra,0
   131d4:	00100e93          	li	t4,1
   131d8:	00700e13          	li	t3,7
   131dc:	21d19063          	bne	gp,t4,133dc <fail>

000131e0 <test_8>:
   131e0:	800000b7          	lui	ra,0x80000
   131e4:	8000a193          	slti	gp,ra,-2048
   131e8:	00100e93          	li	t4,1
   131ec:	00800e13          	li	t3,8
   131f0:	1fd19663          	bne	gp,t4,133dc <fail>

000131f4 <test_9>:
   131f4:	00000093          	li	ra,0
   131f8:	7ff0a193          	slti	gp,ra,2047
   131fc:	00100e93          	li	t4,1
   13200:	00900e13          	li	t3,9
   13204:	1dd19c63          	bne	gp,t4,133dc <fail>

00013208 <test_10>:
   13208:	800000b7          	lui	ra,0x80000
   1320c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   13210:	0000a193          	slti	gp,ra,0
   13214:	00000e93          	li	t4,0
   13218:	00a00e13          	li	t3,10
   1321c:	1dd19063          	bne	gp,t4,133dc <fail>

00013220 <test_11>:
   13220:	800000b7          	lui	ra,0x80000
   13224:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   13228:	7ff0a193          	slti	gp,ra,2047
   1322c:	00000e93          	li	t4,0
   13230:	00b00e13          	li	t3,11
   13234:	1bd19463          	bne	gp,t4,133dc <fail>

00013238 <test_12>:
   13238:	800000b7          	lui	ra,0x80000
   1323c:	7ff0a193          	slti	gp,ra,2047
   13240:	00100e93          	li	t4,1
   13244:	00c00e13          	li	t3,12
   13248:	19d19a63          	bne	gp,t4,133dc <fail>

0001324c <test_13>:
   1324c:	800000b7          	lui	ra,0x80000
   13250:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   13254:	8000a193          	slti	gp,ra,-2048
   13258:	00000e93          	li	t4,0
   1325c:	00d00e13          	li	t3,13
   13260:	17d19e63          	bne	gp,t4,133dc <fail>

00013264 <test_14>:
   13264:	00000093          	li	ra,0
   13268:	fff0a193          	slti	gp,ra,-1
   1326c:	00000e93          	li	t4,0
   13270:	00e00e13          	li	t3,14
   13274:	17d19463          	bne	gp,t4,133dc <fail>

00013278 <test_15>:
   13278:	fff00093          	li	ra,-1
   1327c:	0010a193          	slti	gp,ra,1
   13280:	00100e93          	li	t4,1
   13284:	00f00e13          	li	t3,15
   13288:	15d19a63          	bne	gp,t4,133dc <fail>

0001328c <test_16>:
   1328c:	fff00093          	li	ra,-1
   13290:	fff0a193          	slti	gp,ra,-1
   13294:	00000e93          	li	t4,0
   13298:	01000e13          	li	t3,16
   1329c:	15d19063          	bne	gp,t4,133dc <fail>

000132a0 <test_17>:
   132a0:	00b00093          	li	ra,11
   132a4:	00d0b093          	sltiu	ra,ra,13
   132a8:	00100e93          	li	t4,1
   132ac:	01100e13          	li	t3,17
   132b0:	13d09663          	bne	ra,t4,133dc <fail>

000132b4 <test_18>:
   132b4:	00000213          	li	tp,0
   132b8:	00f00093          	li	ra,15
   132bc:	00a0a193          	slti	gp,ra,10
   132c0:	00018313          	mv	t1,gp
   132c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   132c8:	00200293          	li	t0,2
   132cc:	fe5216e3          	bne	tp,t0,132b8 <test_18+0x4>
   132d0:	00000e93          	li	t4,0
   132d4:	01200e13          	li	t3,18
   132d8:	11d31263          	bne	t1,t4,133dc <fail>

000132dc <test_19>:
   132dc:	00000213          	li	tp,0
   132e0:	00a00093          	li	ra,10
   132e4:	0100a193          	slti	gp,ra,16
   132e8:	00000013          	nop
   132ec:	00018313          	mv	t1,gp
   132f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   132f4:	00200293          	li	t0,2
   132f8:	fe5214e3          	bne	tp,t0,132e0 <test_19+0x4>
   132fc:	00100e93          	li	t4,1
   13300:	01300e13          	li	t3,19
   13304:	0dd31c63          	bne	t1,t4,133dc <fail>

00013308 <test_20>:
   13308:	00000213          	li	tp,0
   1330c:	01000093          	li	ra,16
   13310:	0090a193          	slti	gp,ra,9
   13314:	00000013          	nop
   13318:	00000013          	nop
   1331c:	00018313          	mv	t1,gp
   13320:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13324:	00200293          	li	t0,2
   13328:	fe5212e3          	bne	tp,t0,1330c <test_20+0x4>
   1332c:	00000e93          	li	t4,0
   13330:	01400e13          	li	t3,20
   13334:	0bd31463          	bne	t1,t4,133dc <fail>

00013338 <test_21>:
   13338:	00000213          	li	tp,0
   1333c:	00b00093          	li	ra,11
   13340:	00f0a193          	slti	gp,ra,15
   13344:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13348:	00200293          	li	t0,2
   1334c:	fe5218e3          	bne	tp,t0,1333c <test_21+0x4>
   13350:	00100e93          	li	t4,1
   13354:	01500e13          	li	t3,21
   13358:	09d19263          	bne	gp,t4,133dc <fail>

0001335c <test_22>:
   1335c:	00000213          	li	tp,0
   13360:	01100093          	li	ra,17
   13364:	00000013          	nop
   13368:	0080a193          	slti	gp,ra,8
   1336c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13370:	00200293          	li	t0,2
   13374:	fe5216e3          	bne	tp,t0,13360 <test_22+0x4>
   13378:	00000e93          	li	t4,0
   1337c:	01600e13          	li	t3,22
   13380:	05d19e63          	bne	gp,t4,133dc <fail>

00013384 <test_23>:
   13384:	00000213          	li	tp,0
   13388:	00c00093          	li	ra,12
   1338c:	00000013          	nop
   13390:	00000013          	nop
   13394:	00e0a193          	slti	gp,ra,14
   13398:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1339c:	00200293          	li	t0,2
   133a0:	fe5214e3          	bne	tp,t0,13388 <test_23+0x4>
   133a4:	00100e93          	li	t4,1
   133a8:	01700e13          	li	t3,23
   133ac:	03d19863          	bne	gp,t4,133dc <fail>

000133b0 <test_24>:
   133b0:	fff02093          	slti	ra,zero,-1
   133b4:	00000e93          	li	t4,0
   133b8:	01800e13          	li	t3,24
   133bc:	03d09063          	bne	ra,t4,133dc <fail>

000133c0 <test_25>:
   133c0:	00ff00b7          	lui	ra,0xff0
   133c4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   133c8:	fff0a013          	slti	zero,ra,-1
   133cc:	00000e93          	li	t4,0
   133d0:	01900e13          	li	t3,25
   133d4:	01d01463          	bne	zero,t4,133dc <fail>
   133d8:	05c01463          	bne	zero,t3,13420 <pass>

000133dc <fail>:
   133dc:	0ff00513          	li	a0,255

000133e0 <.delay_fail>:
   133e0:	fff50513          	addi	a0,a0,-1
   133e4:	fe051ee3          	bnez	a0,133e0 <.delay_fail>
   133e8:	02000537          	lui	a0,0x2000
   133ec:	04500593          	li	a1,69
   133f0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   133f4:	05200613          	li	a2,82
   133f8:	00c52023          	sw	a2,0(a0)
   133fc:	00c52023          	sw	a2,0(a0)
   13400:	04f00693          	li	a3,79
   13404:	00d52023          	sw	a3,0(a0)
   13408:	00c52023          	sw	a2,0(a0)
   1340c:	00d00713          	li	a4,13
   13410:	00e52023          	sw	a4,0(a0)
   13414:	00a00793          	li	a5,10
   13418:	00f52023          	sw	a5,0(a0)
   1341c:	d05fc06f          	j	10120 <slti_ret>

00013420 <pass>:
   13420:	0ff00513          	li	a0,255

00013424 <.delay_ok>:
   13424:	fff50513          	addi	a0,a0,-1
   13428:	fe051ee3          	bnez	a0,13424 <.delay_ok>
   1342c:	02000537          	lui	a0,0x2000
   13430:	04f00593          	li	a1,79
   13434:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   13438:	04b00613          	li	a2,75
   1343c:	00c52023          	sw	a2,0(a0)
   13440:	00d00693          	li	a3,13
   13444:	00d52023          	sw	a3,0(a0)
   13448:	00a00713          	li	a4,10
   1344c:	00e52023          	sw	a4,0(a0)
   13450:	cd1fc06f          	j	10120 <slti_ret>

00013454 <beq>:
   13454:	0ff00513          	li	a0,255

00013458 <.delay_pr>:
   13458:	fff50513          	addi	a0,a0,-1
   1345c:	fe051ee3          	bnez	a0,13458 <.delay_pr>
   13460:	00013537          	lui	a0,0x13
   13464:	48050513          	addi	a0,a0,1152 # 13480 <.test_name>
   13468:	02000637          	lui	a2,0x2000

0001346c <.prname_next>:
   1346c:	00050583          	lb	a1,0(a0)
   13470:	00058a63          	beqz	a1,13484 <.prname_done>
   13474:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   13478:	00150513          	addi	a0,a0,1
   1347c:	ff1ff06f          	j	1346c <.prname_next>

00013480 <.test_name>:
   13480:	6562                	flw	fa0,24(sp)
   13482:	0071                	c.nop	28

00013484 <.prname_done>:
   13484:	02e00593          	li	a1,46
   13488:	00b62023          	sw	a1,0(a2)
   1348c:	00b62023          	sw	a1,0(a2)

00013490 <test_2>:
   13490:	00200e13          	li	t3,2
   13494:	00000093          	li	ra,0
   13498:	00000113          	li	sp,0
   1349c:	00208663          	beq	ra,sp,134a8 <test_2+0x18>
   134a0:	2bc01863          	bne	zero,t3,13750 <fail>
   134a4:	01c01663          	bne	zero,t3,134b0 <test_3>
   134a8:	fe208ee3          	beq	ra,sp,134a4 <test_2+0x14>
   134ac:	2bc01263          	bne	zero,t3,13750 <fail>

000134b0 <test_3>:
   134b0:	00300e13          	li	t3,3
   134b4:	00100093          	li	ra,1
   134b8:	00100113          	li	sp,1
   134bc:	00208663          	beq	ra,sp,134c8 <test_3+0x18>
   134c0:	29c01863          	bne	zero,t3,13750 <fail>
   134c4:	01c01663          	bne	zero,t3,134d0 <test_4>
   134c8:	fe208ee3          	beq	ra,sp,134c4 <test_3+0x14>
   134cc:	29c01263          	bne	zero,t3,13750 <fail>

000134d0 <test_4>:
   134d0:	00400e13          	li	t3,4
   134d4:	fff00093          	li	ra,-1
   134d8:	fff00113          	li	sp,-1
   134dc:	00208663          	beq	ra,sp,134e8 <test_4+0x18>
   134e0:	27c01863          	bne	zero,t3,13750 <fail>
   134e4:	01c01663          	bne	zero,t3,134f0 <test_5>
   134e8:	fe208ee3          	beq	ra,sp,134e4 <test_4+0x14>
   134ec:	27c01263          	bne	zero,t3,13750 <fail>

000134f0 <test_5>:
   134f0:	00500e13          	li	t3,5
   134f4:	00000093          	li	ra,0
   134f8:	00100113          	li	sp,1
   134fc:	00208463          	beq	ra,sp,13504 <test_5+0x14>
   13500:	01c01463          	bne	zero,t3,13508 <test_5+0x18>
   13504:	25c01663          	bne	zero,t3,13750 <fail>
   13508:	fe208ee3          	beq	ra,sp,13504 <test_5+0x14>

0001350c <test_6>:
   1350c:	00600e13          	li	t3,6
   13510:	00100093          	li	ra,1
   13514:	00000113          	li	sp,0
   13518:	00208463          	beq	ra,sp,13520 <test_6+0x14>
   1351c:	01c01463          	bne	zero,t3,13524 <test_6+0x18>
   13520:	23c01863          	bne	zero,t3,13750 <fail>
   13524:	fe208ee3          	beq	ra,sp,13520 <test_6+0x14>

00013528 <test_7>:
   13528:	00700e13          	li	t3,7
   1352c:	fff00093          	li	ra,-1
   13530:	00100113          	li	sp,1
   13534:	00208463          	beq	ra,sp,1353c <test_7+0x14>
   13538:	01c01463          	bne	zero,t3,13540 <test_7+0x18>
   1353c:	21c01a63          	bne	zero,t3,13750 <fail>
   13540:	fe208ee3          	beq	ra,sp,1353c <test_7+0x14>

00013544 <test_8>:
   13544:	00800e13          	li	t3,8
   13548:	00100093          	li	ra,1
   1354c:	fff00113          	li	sp,-1
   13550:	00208463          	beq	ra,sp,13558 <test_8+0x14>
   13554:	01c01463          	bne	zero,t3,1355c <test_8+0x18>
   13558:	1fc01c63          	bne	zero,t3,13750 <fail>
   1355c:	fe208ee3          	beq	ra,sp,13558 <test_8+0x14>

00013560 <test_9>:
   13560:	00900e13          	li	t3,9
   13564:	00000213          	li	tp,0
   13568:	00000093          	li	ra,0
   1356c:	fff00113          	li	sp,-1
   13570:	1e208063          	beq	ra,sp,13750 <fail>
   13574:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13578:	00200293          	li	t0,2
   1357c:	fe5216e3          	bne	tp,t0,13568 <test_9+0x8>

00013580 <test_10>:
   13580:	00a00e13          	li	t3,10
   13584:	00000213          	li	tp,0
   13588:	00000093          	li	ra,0
   1358c:	fff00113          	li	sp,-1
   13590:	00000013          	nop
   13594:	1a208e63          	beq	ra,sp,13750 <fail>
   13598:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1359c:	00200293          	li	t0,2
   135a0:	fe5214e3          	bne	tp,t0,13588 <test_10+0x8>

000135a4 <test_11>:
   135a4:	00b00e13          	li	t3,11
   135a8:	00000213          	li	tp,0
   135ac:	00000093          	li	ra,0
   135b0:	fff00113          	li	sp,-1
   135b4:	00000013          	nop
   135b8:	00000013          	nop
   135bc:	18208a63          	beq	ra,sp,13750 <fail>
   135c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   135c4:	00200293          	li	t0,2
   135c8:	fe5212e3          	bne	tp,t0,135ac <test_11+0x8>

000135cc <test_12>:
   135cc:	00c00e13          	li	t3,12
   135d0:	00000213          	li	tp,0
   135d4:	00000093          	li	ra,0
   135d8:	00000013          	nop
   135dc:	fff00113          	li	sp,-1
   135e0:	16208863          	beq	ra,sp,13750 <fail>
   135e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   135e8:	00200293          	li	t0,2
   135ec:	fe5214e3          	bne	tp,t0,135d4 <test_12+0x8>

000135f0 <test_13>:
   135f0:	00d00e13          	li	t3,13
   135f4:	00000213          	li	tp,0
   135f8:	00000093          	li	ra,0
   135fc:	00000013          	nop
   13600:	fff00113          	li	sp,-1
   13604:	00000013          	nop
   13608:	14208463          	beq	ra,sp,13750 <fail>
   1360c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13610:	00200293          	li	t0,2
   13614:	fe5212e3          	bne	tp,t0,135f8 <test_13+0x8>

00013618 <test_14>:
   13618:	00e00e13          	li	t3,14
   1361c:	00000213          	li	tp,0
   13620:	00000093          	li	ra,0
   13624:	00000013          	nop
   13628:	00000013          	nop
   1362c:	fff00113          	li	sp,-1
   13630:	12208063          	beq	ra,sp,13750 <fail>
   13634:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13638:	00200293          	li	t0,2
   1363c:	fe5212e3          	bne	tp,t0,13620 <test_14+0x8>

00013640 <test_15>:
   13640:	00f00e13          	li	t3,15
   13644:	00000213          	li	tp,0
   13648:	00000093          	li	ra,0
   1364c:	fff00113          	li	sp,-1
   13650:	10208063          	beq	ra,sp,13750 <fail>
   13654:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13658:	00200293          	li	t0,2
   1365c:	fe5216e3          	bne	tp,t0,13648 <test_15+0x8>

00013660 <test_16>:
   13660:	01000e13          	li	t3,16
   13664:	00000213          	li	tp,0
   13668:	00000093          	li	ra,0
   1366c:	fff00113          	li	sp,-1
   13670:	00000013          	nop
   13674:	0c208e63          	beq	ra,sp,13750 <fail>
   13678:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1367c:	00200293          	li	t0,2
   13680:	fe5214e3          	bne	tp,t0,13668 <test_16+0x8>

00013684 <test_17>:
   13684:	01100e13          	li	t3,17
   13688:	00000213          	li	tp,0
   1368c:	00000093          	li	ra,0
   13690:	fff00113          	li	sp,-1
   13694:	00000013          	nop
   13698:	00000013          	nop
   1369c:	0a208a63          	beq	ra,sp,13750 <fail>
   136a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   136a4:	00200293          	li	t0,2
   136a8:	fe5212e3          	bne	tp,t0,1368c <test_17+0x8>

000136ac <test_18>:
   136ac:	01200e13          	li	t3,18
   136b0:	00000213          	li	tp,0
   136b4:	00000093          	li	ra,0
   136b8:	00000013          	nop
   136bc:	fff00113          	li	sp,-1
   136c0:	08208863          	beq	ra,sp,13750 <fail>
   136c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   136c8:	00200293          	li	t0,2
   136cc:	fe5214e3          	bne	tp,t0,136b4 <test_18+0x8>

000136d0 <test_19>:
   136d0:	01300e13          	li	t3,19
   136d4:	00000213          	li	tp,0
   136d8:	00000093          	li	ra,0
   136dc:	00000013          	nop
   136e0:	fff00113          	li	sp,-1
   136e4:	00000013          	nop
   136e8:	06208463          	beq	ra,sp,13750 <fail>
   136ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   136f0:	00200293          	li	t0,2
   136f4:	fe5212e3          	bne	tp,t0,136d8 <test_19+0x8>

000136f8 <test_20>:
   136f8:	01400e13          	li	t3,20
   136fc:	00000213          	li	tp,0
   13700:	00000093          	li	ra,0
   13704:	00000013          	nop
   13708:	00000013          	nop
   1370c:	fff00113          	li	sp,-1
   13710:	04208063          	beq	ra,sp,13750 <fail>
   13714:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13718:	00200293          	li	t0,2
   1371c:	fe5212e3          	bne	tp,t0,13700 <test_20+0x8>

00013720 <test_21>:
   13720:	00100093          	li	ra,1
   13724:	00000a63          	beqz	zero,13738 <test_21+0x18>
   13728:	00108093          	addi	ra,ra,1
   1372c:	00108093          	addi	ra,ra,1
   13730:	00108093          	addi	ra,ra,1
   13734:	00108093          	addi	ra,ra,1
   13738:	00108093          	addi	ra,ra,1
   1373c:	00108093          	addi	ra,ra,1
   13740:	00300e93          	li	t4,3
   13744:	01500e13          	li	t3,21
   13748:	01d09463          	bne	ra,t4,13750 <fail>
   1374c:	05c01463          	bne	zero,t3,13794 <pass>

00013750 <fail>:
   13750:	0ff00513          	li	a0,255

00013754 <.delay_fail>:
   13754:	fff50513          	addi	a0,a0,-1
   13758:	fe051ee3          	bnez	a0,13754 <.delay_fail>
   1375c:	02000537          	lui	a0,0x2000
   13760:	04500593          	li	a1,69
   13764:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   13768:	05200613          	li	a2,82
   1376c:	00c52023          	sw	a2,0(a0)
   13770:	00c52023          	sw	a2,0(a0)
   13774:	04f00693          	li	a3,79
   13778:	00d52023          	sw	a3,0(a0)
   1377c:	00c52023          	sw	a2,0(a0)
   13780:	00d00713          	li	a4,13
   13784:	00e52023          	sw	a4,0(a0)
   13788:	00a00793          	li	a5,10
   1378c:	00f52023          	sw	a5,0(a0)
   13790:	955fc06f          	j	100e4 <beq_ret>

00013794 <pass>:
   13794:	0ff00513          	li	a0,255

00013798 <.delay_ok>:
   13798:	fff50513          	addi	a0,a0,-1
   1379c:	fe051ee3          	bnez	a0,13798 <.delay_ok>
   137a0:	02000537          	lui	a0,0x2000
   137a4:	04f00593          	li	a1,79
   137a8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   137ac:	04b00613          	li	a2,75
   137b0:	00c52023          	sw	a2,0(a0)
   137b4:	00d00693          	li	a3,13
   137b8:	00d52023          	sw	a3,0(a0)
   137bc:	00a00713          	li	a4,10
   137c0:	00e52023          	sw	a4,0(a0)
   137c4:	921fc06f          	j	100e4 <beq_ret>

000137c8 <divu>:
   137c8:	0ff00513          	li	a0,255

000137cc <.delay_pr>:
   137cc:	fff50513          	addi	a0,a0,-1
   137d0:	fe051ee3          	bnez	a0,137cc <.delay_pr>
   137d4:	00013537          	lui	a0,0x13
   137d8:	7f450513          	addi	a0,a0,2036 # 137f4 <.test_name>
   137dc:	02000637          	lui	a2,0x2000

000137e0 <.prname_next>:
   137e0:	00050583          	lb	a1,0(a0)
   137e4:	00058c63          	beqz	a1,137fc <.prname_done>
   137e8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   137ec:	00150513          	addi	a0,a0,1
   137f0:	ff1ff06f          	j	137e0 <.prname_next>

000137f4 <.test_name>:
   137f4:	6964                	flw	fs1,84(a0)
   137f6:	7576                	flw	fa0,124(sp)
   137f8:	0000                	unimp
	...

000137fc <.prname_done>:
   137fc:	02e00593          	li	a1,46
   13800:	00b62023          	sw	a1,0(a2)
   13804:	00b62023          	sw	a1,0(a2)

00013808 <test_2>:
   13808:	01400093          	li	ra,20
   1380c:	00600113          	li	sp,6
   13810:	0220d1b3          	divu	gp,ra,sp
   13814:	00300e93          	li	t4,3
   13818:	00200e13          	li	t3,2
   1381c:	0dd19663          	bne	gp,t4,138e8 <fail>

00013820 <test_3>:
   13820:	fec00093          	li	ra,-20
   13824:	00600113          	li	sp,6
   13828:	0220d1b3          	divu	gp,ra,sp
   1382c:	2aaabeb7          	lui	t4,0x2aaab
   13830:	aa7e8e93          	addi	t4,t4,-1369 # 2aaaaaa7 <_etext+0x2aa904eb>
   13834:	00300e13          	li	t3,3
   13838:	0bd19863          	bne	gp,t4,138e8 <fail>

0001383c <test_4>:
   1383c:	01400093          	li	ra,20
   13840:	ffa00113          	li	sp,-6
   13844:	0220d1b3          	divu	gp,ra,sp
   13848:	00000e93          	li	t4,0
   1384c:	00400e13          	li	t3,4
   13850:	09d19c63          	bne	gp,t4,138e8 <fail>

00013854 <test_5>:
   13854:	fec00093          	li	ra,-20
   13858:	ffa00113          	li	sp,-6
   1385c:	0220d1b3          	divu	gp,ra,sp
   13860:	00000e93          	li	t4,0
   13864:	00500e13          	li	t3,5
   13868:	09d19063          	bne	gp,t4,138e8 <fail>

0001386c <test_6>:
   1386c:	800000b7          	lui	ra,0x80000
   13870:	00100113          	li	sp,1
   13874:	0220d1b3          	divu	gp,ra,sp
   13878:	80000eb7          	lui	t4,0x80000
   1387c:	00600e13          	li	t3,6
   13880:	07d19463          	bne	gp,t4,138e8 <fail>

00013884 <test_7>:
   13884:	800000b7          	lui	ra,0x80000
   13888:	fff00113          	li	sp,-1
   1388c:	0220d1b3          	divu	gp,ra,sp
   13890:	00000e93          	li	t4,0
   13894:	00700e13          	li	t3,7
   13898:	05d19863          	bne	gp,t4,138e8 <fail>

0001389c <test_8>:
   1389c:	800000b7          	lui	ra,0x80000
   138a0:	00000113          	li	sp,0
   138a4:	0220d1b3          	divu	gp,ra,sp
   138a8:	fff00e93          	li	t4,-1
   138ac:	00800e13          	li	t3,8
   138b0:	03d19c63          	bne	gp,t4,138e8 <fail>

000138b4 <test_9>:
   138b4:	00100093          	li	ra,1
   138b8:	00000113          	li	sp,0
   138bc:	0220d1b3          	divu	gp,ra,sp
   138c0:	fff00e93          	li	t4,-1
   138c4:	00900e13          	li	t3,9
   138c8:	03d19063          	bne	gp,t4,138e8 <fail>

000138cc <test_10>:
   138cc:	00000093          	li	ra,0
   138d0:	00000113          	li	sp,0
   138d4:	0220d1b3          	divu	gp,ra,sp
   138d8:	fff00e93          	li	t4,-1
   138dc:	00a00e13          	li	t3,10
   138e0:	01d19463          	bne	gp,t4,138e8 <fail>
   138e4:	05c01463          	bne	zero,t3,1392c <pass>

000138e8 <fail>:
   138e8:	0ff00513          	li	a0,255

000138ec <.delay_fail>:
   138ec:	fff50513          	addi	a0,a0,-1
   138f0:	fe051ee3          	bnez	a0,138ec <.delay_fail>
   138f4:	02000537          	lui	a0,0x2000
   138f8:	04500593          	li	a1,69
   138fc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   13900:	05200613          	li	a2,82
   13904:	00c52023          	sw	a2,0(a0)
   13908:	00c52023          	sw	a2,0(a0)
   1390c:	04f00693          	li	a3,79
   13910:	00d52023          	sw	a3,0(a0)
   13914:	00c52023          	sw	a2,0(a0)
   13918:	00d00713          	li	a4,13
   1391c:	00e52023          	sw	a4,0(a0)
   13920:	00a00793          	li	a5,10
   13924:	00f52023          	sw	a5,0(a0)
   13928:	84dfc06f          	j	10174 <divu_ret>

0001392c <pass>:
   1392c:	0ff00513          	li	a0,255

00013930 <.delay_ok>:
   13930:	fff50513          	addi	a0,a0,-1
   13934:	fe051ee3          	bnez	a0,13930 <.delay_ok>
   13938:	02000537          	lui	a0,0x2000
   1393c:	04f00593          	li	a1,79
   13940:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   13944:	04b00613          	li	a2,75
   13948:	00c52023          	sw	a2,0(a0)
   1394c:	00d00693          	li	a3,13
   13950:	00d52023          	sw	a3,0(a0)
   13954:	00a00713          	li	a4,10
   13958:	00e52023          	sw	a4,0(a0)
   1395c:	819fc06f          	j	10174 <divu_ret>

00013960 <srli>:
   13960:	0ff00513          	li	a0,255

00013964 <.delay_pr>:
   13964:	fff50513          	addi	a0,a0,-1
   13968:	fe051ee3          	bnez	a0,13964 <.delay_pr>
   1396c:	00014537          	lui	a0,0x14
   13970:	98c50513          	addi	a0,a0,-1652 # 1398c <.test_name>
   13974:	02000637          	lui	a2,0x2000

00013978 <.prname_next>:
   13978:	00050583          	lb	a1,0(a0)
   1397c:	00058c63          	beqz	a1,13994 <.prname_done>
   13980:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   13984:	00150513          	addi	a0,a0,1
   13988:	ff1ff06f          	j	13978 <.prname_next>

0001398c <.test_name>:
   1398c:	696c7273          	csrrci	tp,0x696,24
   13990:	0000                	unimp
	...

00013994 <.prname_done>:
   13994:	02e00593          	li	a1,46
   13998:	00b62023          	sw	a1,0(a2)
   1399c:	00b62023          	sw	a1,0(a2)

000139a0 <test_2>:
   139a0:	ffff80b7          	lui	ra,0xffff8
   139a4:	0000d193          	srli	gp,ra,0x0
   139a8:	ffff8eb7          	lui	t4,0xffff8
   139ac:	00200e13          	li	t3,2
   139b0:	2bd19263          	bne	gp,t4,13c54 <fail>

000139b4 <test_3>:
   139b4:	ffff80b7          	lui	ra,0xffff8
   139b8:	0010d193          	srli	gp,ra,0x1
   139bc:	7fffceb7          	lui	t4,0x7fffc
   139c0:	00300e13          	li	t3,3
   139c4:	29d19863          	bne	gp,t4,13c54 <fail>

000139c8 <test_4>:
   139c8:	ffff80b7          	lui	ra,0xffff8
   139cc:	0070d193          	srli	gp,ra,0x7
   139d0:	02000eb7          	lui	t4,0x2000
   139d4:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5944>
   139d8:	00400e13          	li	t3,4
   139dc:	27d19c63          	bne	gp,t4,13c54 <fail>

000139e0 <test_5>:
   139e0:	ffff80b7          	lui	ra,0xffff8
   139e4:	00e0d193          	srli	gp,ra,0xe
   139e8:	00040eb7          	lui	t4,0x40
   139ec:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25a42>
   139f0:	00500e13          	li	t3,5
   139f4:	27d19063          	bne	gp,t4,13c54 <fail>

000139f8 <test_6>:
   139f8:	ffff80b7          	lui	ra,0xffff8
   139fc:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   13a00:	00f0d193          	srli	gp,ra,0xf
   13a04:	00020eb7          	lui	t4,0x20
   13a08:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   13a0c:	00600e13          	li	t3,6
   13a10:	25d19263          	bne	gp,t4,13c54 <fail>

00013a14 <test_7>:
   13a14:	fff00093          	li	ra,-1
   13a18:	0000d193          	srli	gp,ra,0x0
   13a1c:	fff00e93          	li	t4,-1
   13a20:	00700e13          	li	t3,7
   13a24:	23d19863          	bne	gp,t4,13c54 <fail>

00013a28 <test_8>:
   13a28:	fff00093          	li	ra,-1
   13a2c:	0010d193          	srli	gp,ra,0x1
   13a30:	80000eb7          	lui	t4,0x80000
   13a34:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   13a38:	00800e13          	li	t3,8
   13a3c:	21d19c63          	bne	gp,t4,13c54 <fail>

00013a40 <test_9>:
   13a40:	fff00093          	li	ra,-1
   13a44:	0070d193          	srli	gp,ra,0x7
   13a48:	02000eb7          	lui	t4,0x2000
   13a4c:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe5a43>
   13a50:	00900e13          	li	t3,9
   13a54:	21d19063          	bne	gp,t4,13c54 <fail>

00013a58 <test_10>:
   13a58:	fff00093          	li	ra,-1
   13a5c:	00e0d193          	srli	gp,ra,0xe
   13a60:	00040eb7          	lui	t4,0x40
   13a64:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x25a43>
   13a68:	00a00e13          	li	t3,10
   13a6c:	1fd19463          	bne	gp,t4,13c54 <fail>

00013a70 <test_11>:
   13a70:	fff00093          	li	ra,-1
   13a74:	01f0d193          	srli	gp,ra,0x1f
   13a78:	00100e93          	li	t4,1
   13a7c:	00b00e13          	li	t3,11
   13a80:	1dd19a63          	bne	gp,t4,13c54 <fail>

00013a84 <test_12>:
   13a84:	212120b7          	lui	ra,0x21212
   13a88:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   13a8c:	0000d193          	srli	gp,ra,0x0
   13a90:	21212eb7          	lui	t4,0x21212
   13a94:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7b65>
   13a98:	00c00e13          	li	t3,12
   13a9c:	1bd19c63          	bne	gp,t4,13c54 <fail>

00013aa0 <test_13>:
   13aa0:	212120b7          	lui	ra,0x21212
   13aa4:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   13aa8:	0010d193          	srli	gp,ra,0x1
   13aac:	10909eb7          	lui	t4,0x10909
   13ab0:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eead4>
   13ab4:	00d00e13          	li	t3,13
   13ab8:	19d19e63          	bne	gp,t4,13c54 <fail>

00013abc <test_14>:
   13abc:	212120b7          	lui	ra,0x21212
   13ac0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   13ac4:	0070d193          	srli	gp,ra,0x7
   13ac8:	00424eb7          	lui	t4,0x424
   13acc:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c86>
   13ad0:	00e00e13          	li	t3,14
   13ad4:	19d19063          	bne	gp,t4,13c54 <fail>

00013ad8 <test_15>:
   13ad8:	212120b7          	lui	ra,0x21212
   13adc:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   13ae0:	00e0d193          	srli	gp,ra,0xe
   13ae4:	00008eb7          	lui	t4,0x8
   13ae8:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   13aec:	00f00e13          	li	t3,15
   13af0:	17d19263          	bne	gp,t4,13c54 <fail>

00013af4 <test_16>:
   13af4:	212120b7          	lui	ra,0x21212
   13af8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   13afc:	01f0d193          	srli	gp,ra,0x1f
   13b00:	00000e93          	li	t4,0
   13b04:	01000e13          	li	t3,16
   13b08:	15d19663          	bne	gp,t4,13c54 <fail>

00013b0c <test_21>:
   13b0c:	ffff80b7          	lui	ra,0xffff8
   13b10:	0010d093          	srli	ra,ra,0x1
   13b14:	7fffceb7          	lui	t4,0x7fffc
   13b18:	01500e13          	li	t3,21
   13b1c:	13d09c63          	bne	ra,t4,13c54 <fail>

00013b20 <test_22>:
   13b20:	00000213          	li	tp,0
   13b24:	ffff80b7          	lui	ra,0xffff8
   13b28:	0010d193          	srli	gp,ra,0x1
   13b2c:	00018313          	mv	t1,gp
   13b30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13b34:	00200293          	li	t0,2
   13b38:	fe5216e3          	bne	tp,t0,13b24 <test_22+0x4>
   13b3c:	7fffceb7          	lui	t4,0x7fffc
   13b40:	01600e13          	li	t3,22
   13b44:	11d31863          	bne	t1,t4,13c54 <fail>

00013b48 <test_23>:
   13b48:	00000213          	li	tp,0
   13b4c:	ffff80b7          	lui	ra,0xffff8
   13b50:	00e0d193          	srli	gp,ra,0xe
   13b54:	00000013          	nop
   13b58:	00018313          	mv	t1,gp
   13b5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13b60:	00200293          	li	t0,2
   13b64:	fe5214e3          	bne	tp,t0,13b4c <test_23+0x4>
   13b68:	00040eb7          	lui	t4,0x40
   13b6c:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25a42>
   13b70:	01700e13          	li	t3,23
   13b74:	0fd31063          	bne	t1,t4,13c54 <fail>

00013b78 <test_24>:
   13b78:	00000213          	li	tp,0
   13b7c:	ffff80b7          	lui	ra,0xffff8
   13b80:	00f0d193          	srli	gp,ra,0xf
   13b84:	00000013          	nop
   13b88:	00000013          	nop
   13b8c:	00018313          	mv	t1,gp
   13b90:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13b94:	00200293          	li	t0,2
   13b98:	fe5212e3          	bne	tp,t0,13b7c <test_24+0x4>
   13b9c:	00020eb7          	lui	t4,0x20
   13ba0:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   13ba4:	01800e13          	li	t3,24
   13ba8:	0bd31663          	bne	t1,t4,13c54 <fail>

00013bac <test_25>:
   13bac:	00000213          	li	tp,0
   13bb0:	ffff80b7          	lui	ra,0xffff8
   13bb4:	0010d193          	srli	gp,ra,0x1
   13bb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13bbc:	00200293          	li	t0,2
   13bc0:	fe5218e3          	bne	tp,t0,13bb0 <test_25+0x4>
   13bc4:	7fffceb7          	lui	t4,0x7fffc
   13bc8:	01900e13          	li	t3,25
   13bcc:	09d19463          	bne	gp,t4,13c54 <fail>

00013bd0 <test_26>:
   13bd0:	00000213          	li	tp,0
   13bd4:	ffff80b7          	lui	ra,0xffff8
   13bd8:	00000013          	nop
   13bdc:	00e0d193          	srli	gp,ra,0xe
   13be0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13be4:	00200293          	li	t0,2
   13be8:	fe5216e3          	bne	tp,t0,13bd4 <test_26+0x4>
   13bec:	00040eb7          	lui	t4,0x40
   13bf0:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25a42>
   13bf4:	01a00e13          	li	t3,26
   13bf8:	05d19e63          	bne	gp,t4,13c54 <fail>

00013bfc <test_27>:
   13bfc:	00000213          	li	tp,0
   13c00:	ffff80b7          	lui	ra,0xffff8
   13c04:	00000013          	nop
   13c08:	00000013          	nop
   13c0c:	00f0d193          	srli	gp,ra,0xf
   13c10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c14:	00200293          	li	t0,2
   13c18:	fe5214e3          	bne	tp,t0,13c00 <test_27+0x4>
   13c1c:	00020eb7          	lui	t4,0x20
   13c20:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   13c24:	01b00e13          	li	t3,27
   13c28:	03d19663          	bne	gp,t4,13c54 <fail>

00013c2c <test_28>:
   13c2c:	01f05093          	srli	ra,zero,0x1f
   13c30:	00000e93          	li	t4,0
   13c34:	01c00e13          	li	t3,28
   13c38:	01d09e63          	bne	ra,t4,13c54 <fail>

00013c3c <test_29>:
   13c3c:	02100093          	li	ra,33
   13c40:	0140d013          	srli	zero,ra,0x14
   13c44:	00000e93          	li	t4,0
   13c48:	01d00e13          	li	t3,29
   13c4c:	01d01463          	bne	zero,t4,13c54 <fail>
   13c50:	05c01463          	bne	zero,t3,13c98 <pass>

00013c54 <fail>:
   13c54:	0ff00513          	li	a0,255

00013c58 <.delay_fail>:
   13c58:	fff50513          	addi	a0,a0,-1
   13c5c:	fe051ee3          	bnez	a0,13c58 <.delay_fail>
   13c60:	02000537          	lui	a0,0x2000
   13c64:	04500593          	li	a1,69
   13c68:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   13c6c:	05200613          	li	a2,82
   13c70:	00c52023          	sw	a2,0(a0)
   13c74:	00c52023          	sw	a2,0(a0)
   13c78:	04f00693          	li	a3,79
   13c7c:	00d52023          	sw	a3,0(a0)
   13c80:	00c52023          	sw	a2,0(a0)
   13c84:	00d00713          	li	a4,13
   13c88:	00e52023          	sw	a4,0(a0)
   13c8c:	00a00793          	li	a5,10
   13c90:	00f52023          	sw	a5,0(a0)
   13c94:	ca0fc06f          	j	10134 <srli_ret>

00013c98 <pass>:
   13c98:	0ff00513          	li	a0,255

00013c9c <.delay_ok>:
   13c9c:	fff50513          	addi	a0,a0,-1
   13ca0:	fe051ee3          	bnez	a0,13c9c <.delay_ok>
   13ca4:	02000537          	lui	a0,0x2000
   13ca8:	04f00593          	li	a1,79
   13cac:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   13cb0:	04b00613          	li	a2,75
   13cb4:	00c52023          	sw	a2,0(a0)
   13cb8:	00d00693          	li	a3,13
   13cbc:	00d52023          	sw	a3,0(a0)
   13cc0:	00a00713          	li	a4,10
   13cc4:	00e52023          	sw	a4,0(a0)
   13cc8:	c6cfc06f          	j	10134 <srli_ret>

00013ccc <sw>:
   13ccc:	0ff00513          	li	a0,255

00013cd0 <.delay_pr>:
   13cd0:	fff50513          	addi	a0,a0,-1
   13cd4:	fe051ee3          	bnez	a0,13cd0 <.delay_pr>
   13cd8:	00014537          	lui	a0,0x14
   13cdc:	cf850513          	addi	a0,a0,-776 # 13cf8 <.test_name>
   13ce0:	02000637          	lui	a2,0x2000

00013ce4 <.prname_next>:
   13ce4:	00050583          	lb	a1,0(a0)
   13ce8:	00058a63          	beqz	a1,13cfc <.prname_done>
   13cec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   13cf0:	00150513          	addi	a0,a0,1
   13cf4:	ff1ff06f          	j	13ce4 <.prname_next>

00013cf8 <.test_name>:
   13cf8:	00007773          	csrrci	a4,ustatus,0

00013cfc <.prname_done>:
   13cfc:	02e00593          	li	a1,46
   13d00:	00b62023          	sw	a1,0(a2)
   13d04:	00b62023          	sw	a1,0(a2)

00013d08 <test_2>:
   13d08:	7ffec097          	auipc	ra,0x7ffec
   13d0c:	31808093          	addi	ra,ra,792 # 80000020 <tdat>
   13d10:	00aa0137          	lui	sp,0xaa0
   13d14:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85aee>
   13d18:	0020a023          	sw	sp,0(ra)
   13d1c:	0000a183          	lw	gp,0(ra)
   13d20:	00aa0eb7          	lui	t4,0xaa0
   13d24:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85aee>
   13d28:	00200e13          	li	t3,2
   13d2c:	47d19063          	bne	gp,t4,1418c <fail>

00013d30 <test_3>:
   13d30:	7ffec097          	auipc	ra,0x7ffec
   13d34:	2f008093          	addi	ra,ra,752 # 80000020 <tdat>
   13d38:	aa00b137          	lui	sp,0xaa00b
   13d3c:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   13d40:	0020a223          	sw	sp,4(ra)
   13d44:	0040a183          	lw	gp,4(ra)
   13d48:	aa00beb7          	lui	t4,0xaa00b
   13d4c:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   13d50:	00300e13          	li	t3,3
   13d54:	43d19c63          	bne	gp,t4,1418c <fail>

00013d58 <test_4>:
   13d58:	7ffec097          	auipc	ra,0x7ffec
   13d5c:	2c808093          	addi	ra,ra,712 # 80000020 <tdat>
   13d60:	0aa01137          	lui	sp,0xaa01
   13d64:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e64e4>
   13d68:	0020a423          	sw	sp,8(ra)
   13d6c:	0080a183          	lw	gp,8(ra)
   13d70:	0aa01eb7          	lui	t4,0xaa01
   13d74:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e64e4>
   13d78:	00400e13          	li	t3,4
   13d7c:	41d19863          	bne	gp,t4,1418c <fail>

00013d80 <test_5>:
   13d80:	7ffec097          	auipc	ra,0x7ffec
   13d84:	2a008093          	addi	ra,ra,672 # 80000020 <tdat>
   13d88:	a00aa137          	lui	sp,0xa00aa
   13d8c:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   13d90:	0020a623          	sw	sp,12(ra)
   13d94:	00c0a183          	lw	gp,12(ra)
   13d98:	a00aaeb7          	lui	t4,0xa00aa
   13d9c:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   13da0:	00500e13          	li	t3,5
   13da4:	3fd19463          	bne	gp,t4,1418c <fail>

00013da8 <test_6>:
   13da8:	7ffec097          	auipc	ra,0x7ffec
   13dac:	29408093          	addi	ra,ra,660 # 8000003c <tdat8>
   13db0:	00aa0137          	lui	sp,0xaa0
   13db4:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85aee>
   13db8:	fe20aa23          	sw	sp,-12(ra)
   13dbc:	ff40a183          	lw	gp,-12(ra)
   13dc0:	00aa0eb7          	lui	t4,0xaa0
   13dc4:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85aee>
   13dc8:	00600e13          	li	t3,6
   13dcc:	3dd19063          	bne	gp,t4,1418c <fail>

00013dd0 <test_7>:
   13dd0:	7ffec097          	auipc	ra,0x7ffec
   13dd4:	26c08093          	addi	ra,ra,620 # 8000003c <tdat8>
   13dd8:	aa00b137          	lui	sp,0xaa00b
   13ddc:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   13de0:	fe20ac23          	sw	sp,-8(ra)
   13de4:	ff80a183          	lw	gp,-8(ra)
   13de8:	aa00beb7          	lui	t4,0xaa00b
   13dec:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   13df0:	00700e13          	li	t3,7
   13df4:	39d19c63          	bne	gp,t4,1418c <fail>

00013df8 <test_8>:
   13df8:	7ffec097          	auipc	ra,0x7ffec
   13dfc:	24408093          	addi	ra,ra,580 # 8000003c <tdat8>
   13e00:	0aa01137          	lui	sp,0xaa01
   13e04:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e64e4>
   13e08:	fe20ae23          	sw	sp,-4(ra)
   13e0c:	ffc0a183          	lw	gp,-4(ra)
   13e10:	0aa01eb7          	lui	t4,0xaa01
   13e14:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e64e4>
   13e18:	00800e13          	li	t3,8
   13e1c:	37d19863          	bne	gp,t4,1418c <fail>

00013e20 <test_9>:
   13e20:	7ffec097          	auipc	ra,0x7ffec
   13e24:	21c08093          	addi	ra,ra,540 # 8000003c <tdat8>
   13e28:	a00aa137          	lui	sp,0xa00aa
   13e2c:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   13e30:	0020a023          	sw	sp,0(ra)
   13e34:	0000a183          	lw	gp,0(ra)
   13e38:	a00aaeb7          	lui	t4,0xa00aa
   13e3c:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   13e40:	00900e13          	li	t3,9
   13e44:	35d19463          	bne	gp,t4,1418c <fail>

00013e48 <test_10>:
   13e48:	7ffec097          	auipc	ra,0x7ffec
   13e4c:	1f808093          	addi	ra,ra,504 # 80000040 <tdat9>
   13e50:	12345137          	lui	sp,0x12345
   13e54:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b0bc>
   13e58:	fe008213          	addi	tp,ra,-32
   13e5c:	02222023          	sw	sp,32(tp) # 20 <_start-0xffe0>
   13e60:	0000a183          	lw	gp,0(ra)
   13e64:	12345eb7          	lui	t4,0x12345
   13e68:	678e8e93          	addi	t4,t4,1656 # 12345678 <_etext+0x1232b0bc>
   13e6c:	00a00e13          	li	t3,10
   13e70:	31d19e63          	bne	gp,t4,1418c <fail>

00013e74 <test_11>:
   13e74:	7ffec097          	auipc	ra,0x7ffec
   13e78:	1cc08093          	addi	ra,ra,460 # 80000040 <tdat9>
   13e7c:	58213137          	lui	sp,0x58213
   13e80:	09810113          	addi	sp,sp,152 # 58213098 <_etext+0x581f8adc>
   13e84:	ffd08093          	addi	ra,ra,-3
   13e88:	0020a3a3          	sw	sp,7(ra)
   13e8c:	7ffec217          	auipc	tp,0x7ffec
   13e90:	1b820213          	addi	tp,tp,440 # 80000044 <tdat10>
   13e94:	00022183          	lw	gp,0(tp) # 0 <_start-0x10000>
   13e98:	58213eb7          	lui	t4,0x58213
   13e9c:	098e8e93          	addi	t4,t4,152 # 58213098 <_etext+0x581f8adc>
   13ea0:	00b00e13          	li	t3,11
   13ea4:	2fd19463          	bne	gp,t4,1418c <fail>

00013ea8 <test_12>:
   13ea8:	00c00e13          	li	t3,12
   13eac:	00000213          	li	tp,0
   13eb0:	aabbd0b7          	lui	ra,0xaabbd
   13eb4:	cdd08093          	addi	ra,ra,-803 # aabbccdd <_edata+0x2abbcc6d>
   13eb8:	7ffec117          	auipc	sp,0x7ffec
   13ebc:	16810113          	addi	sp,sp,360 # 80000020 <tdat>
   13ec0:	00112023          	sw	ra,0(sp)
   13ec4:	00012183          	lw	gp,0(sp)
   13ec8:	aabbdeb7          	lui	t4,0xaabbd
   13ecc:	cdde8e93          	addi	t4,t4,-803 # aabbccdd <_edata+0x2abbcc6d>
   13ed0:	2bd19e63          	bne	gp,t4,1418c <fail>
   13ed4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13ed8:	00200293          	li	t0,2
   13edc:	fc521ae3          	bne	tp,t0,13eb0 <test_12+0x8>

00013ee0 <test_13>:
   13ee0:	00d00e13          	li	t3,13
   13ee4:	00000213          	li	tp,0
   13ee8:	daabc0b7          	lui	ra,0xdaabc
   13eec:	ccd08093          	addi	ra,ra,-819 # daabbccd <_edata+0x5aabbc5d>
   13ef0:	7ffec117          	auipc	sp,0x7ffec
   13ef4:	13010113          	addi	sp,sp,304 # 80000020 <tdat>
   13ef8:	00000013          	nop
   13efc:	00112223          	sw	ra,4(sp)
   13f00:	00412183          	lw	gp,4(sp)
   13f04:	daabceb7          	lui	t4,0xdaabc
   13f08:	ccde8e93          	addi	t4,t4,-819 # daabbccd <_edata+0x5aabbc5d>
   13f0c:	29d19063          	bne	gp,t4,1418c <fail>
   13f10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f14:	00200293          	li	t0,2
   13f18:	fc5218e3          	bne	tp,t0,13ee8 <test_13+0x8>

00013f1c <test_14>:
   13f1c:	00e00e13          	li	t3,14
   13f20:	00000213          	li	tp,0
   13f24:	ddaac0b7          	lui	ra,0xddaac
   13f28:	bcc08093          	addi	ra,ra,-1076 # ddaabbcc <_edata+0x5daabb5c>
   13f2c:	7ffec117          	auipc	sp,0x7ffec
   13f30:	0f410113          	addi	sp,sp,244 # 80000020 <tdat>
   13f34:	00000013          	nop
   13f38:	00000013          	nop
   13f3c:	00112423          	sw	ra,8(sp)
   13f40:	00812183          	lw	gp,8(sp)
   13f44:	ddaaceb7          	lui	t4,0xddaac
   13f48:	bcce8e93          	addi	t4,t4,-1076 # ddaabbcc <_edata+0x5daabb5c>
   13f4c:	25d19063          	bne	gp,t4,1418c <fail>
   13f50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f54:	00200293          	li	t0,2
   13f58:	fc5216e3          	bne	tp,t0,13f24 <test_14+0x8>

00013f5c <test_15>:
   13f5c:	00f00e13          	li	t3,15
   13f60:	00000213          	li	tp,0
   13f64:	cddab0b7          	lui	ra,0xcddab
   13f68:	bbc08093          	addi	ra,ra,-1092 # cddaabbc <_edata+0x4ddaab4c>
   13f6c:	00000013          	nop
   13f70:	7ffec117          	auipc	sp,0x7ffec
   13f74:	0b010113          	addi	sp,sp,176 # 80000020 <tdat>
   13f78:	00112623          	sw	ra,12(sp)
   13f7c:	00c12183          	lw	gp,12(sp)
   13f80:	cddabeb7          	lui	t4,0xcddab
   13f84:	bbce8e93          	addi	t4,t4,-1092 # cddaabbc <_edata+0x4ddaab4c>
   13f88:	21d19263          	bne	gp,t4,1418c <fail>
   13f8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f90:	00200293          	li	t0,2
   13f94:	fc5218e3          	bne	tp,t0,13f64 <test_15+0x8>

00013f98 <test_16>:
   13f98:	01000e13          	li	t3,16
   13f9c:	00000213          	li	tp,0
   13fa0:	ccddb0b7          	lui	ra,0xccddb
   13fa4:	abb08093          	addi	ra,ra,-1349 # ccddaabb <_edata+0x4cddaa4b>
   13fa8:	00000013          	nop
   13fac:	7ffec117          	auipc	sp,0x7ffec
   13fb0:	07410113          	addi	sp,sp,116 # 80000020 <tdat>
   13fb4:	00000013          	nop
   13fb8:	00112823          	sw	ra,16(sp)
   13fbc:	01012183          	lw	gp,16(sp)
   13fc0:	ccddbeb7          	lui	t4,0xccddb
   13fc4:	abbe8e93          	addi	t4,t4,-1349 # ccddaabb <_edata+0x4cddaa4b>
   13fc8:	1dd19263          	bne	gp,t4,1418c <fail>
   13fcc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13fd0:	00200293          	li	t0,2
   13fd4:	fc5216e3          	bne	tp,t0,13fa0 <test_16+0x8>

00013fd8 <test_17>:
   13fd8:	01100e13          	li	t3,17
   13fdc:	00000213          	li	tp,0
   13fe0:	bccde0b7          	lui	ra,0xbccde
   13fe4:	aab08093          	addi	ra,ra,-1365 # bccddaab <_edata+0x3ccdda3b>
   13fe8:	00000013          	nop
   13fec:	00000013          	nop
   13ff0:	7ffec117          	auipc	sp,0x7ffec
   13ff4:	03010113          	addi	sp,sp,48 # 80000020 <tdat>
   13ff8:	00112a23          	sw	ra,20(sp)
   13ffc:	01412183          	lw	gp,20(sp)
   14000:	bccdeeb7          	lui	t4,0xbccde
   14004:	aabe8e93          	addi	t4,t4,-1365 # bccddaab <_edata+0x3ccdda3b>
   14008:	19d19263          	bne	gp,t4,1418c <fail>
   1400c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14010:	00200293          	li	t0,2
   14014:	fc5216e3          	bne	tp,t0,13fe0 <test_17+0x8>

00014018 <test_18>:
   14018:	01200e13          	li	t3,18
   1401c:	00000213          	li	tp,0
   14020:	7ffec117          	auipc	sp,0x7ffec
   14024:	00010113          	mv	sp,sp
   14028:	001120b7          	lui	ra,0x112
   1402c:	23308093          	addi	ra,ra,563 # 112233 <_etext+0xf7c77>
   14030:	00112023          	sw	ra,0(sp) # 80000020 <tdat>
   14034:	00012183          	lw	gp,0(sp)
   14038:	00112eb7          	lui	t4,0x112
   1403c:	233e8e93          	addi	t4,t4,563 # 112233 <_etext+0xf7c77>
   14040:	15d19663          	bne	gp,t4,1418c <fail>
   14044:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14048:	00200293          	li	t0,2
   1404c:	fc521ae3          	bne	tp,t0,14020 <test_18+0x8>

00014050 <test_19>:
   14050:	01300e13          	li	t3,19
   14054:	00000213          	li	tp,0
   14058:	7ffec117          	auipc	sp,0x7ffec
   1405c:	fc810113          	addi	sp,sp,-56 # 80000020 <tdat>
   14060:	300110b7          	lui	ra,0x30011
   14064:	22308093          	addi	ra,ra,547 # 30011223 <_etext+0x2fff6c67>
   14068:	00000013          	nop
   1406c:	00112223          	sw	ra,4(sp)
   14070:	00412183          	lw	gp,4(sp)
   14074:	30011eb7          	lui	t4,0x30011
   14078:	223e8e93          	addi	t4,t4,547 # 30011223 <_etext+0x2fff6c67>
   1407c:	11d19863          	bne	gp,t4,1418c <fail>
   14080:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14084:	00200293          	li	t0,2
   14088:	fc5218e3          	bne	tp,t0,14058 <test_19+0x8>

0001408c <test_20>:
   1408c:	01400e13          	li	t3,20
   14090:	00000213          	li	tp,0
   14094:	7ffec117          	auipc	sp,0x7ffec
   14098:	f8c10113          	addi	sp,sp,-116 # 80000020 <tdat>
   1409c:	330010b7          	lui	ra,0x33001
   140a0:	12208093          	addi	ra,ra,290 # 33001122 <_etext+0x32fe6b66>
   140a4:	00000013          	nop
   140a8:	00000013          	nop
   140ac:	00112423          	sw	ra,8(sp)
   140b0:	00812183          	lw	gp,8(sp)
   140b4:	33001eb7          	lui	t4,0x33001
   140b8:	122e8e93          	addi	t4,t4,290 # 33001122 <_etext+0x32fe6b66>
   140bc:	0dd19863          	bne	gp,t4,1418c <fail>
   140c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   140c4:	00200293          	li	t0,2
   140c8:	fc5216e3          	bne	tp,t0,14094 <test_20+0x8>

000140cc <test_21>:
   140cc:	01500e13          	li	t3,21
   140d0:	00000213          	li	tp,0
   140d4:	7ffec117          	auipc	sp,0x7ffec
   140d8:	f4c10113          	addi	sp,sp,-180 # 80000020 <tdat>
   140dc:	00000013          	nop
   140e0:	233000b7          	lui	ra,0x23300
   140e4:	11208093          	addi	ra,ra,274 # 23300112 <_etext+0x232e5b56>
   140e8:	00112623          	sw	ra,12(sp)
   140ec:	00c12183          	lw	gp,12(sp)
   140f0:	23300eb7          	lui	t4,0x23300
   140f4:	112e8e93          	addi	t4,t4,274 # 23300112 <_etext+0x232e5b56>
   140f8:	09d19a63          	bne	gp,t4,1418c <fail>
   140fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14100:	00200293          	li	t0,2
   14104:	fc5218e3          	bne	tp,t0,140d4 <test_21+0x8>

00014108 <test_22>:
   14108:	01600e13          	li	t3,22
   1410c:	00000213          	li	tp,0
   14110:	7ffec117          	auipc	sp,0x7ffec
   14114:	f1010113          	addi	sp,sp,-240 # 80000020 <tdat>
   14118:	00000013          	nop
   1411c:	223300b7          	lui	ra,0x22330
   14120:	01108093          	addi	ra,ra,17 # 22330011 <_etext+0x22315a55>
   14124:	00000013          	nop
   14128:	00112823          	sw	ra,16(sp)
   1412c:	01012183          	lw	gp,16(sp)
   14130:	22330eb7          	lui	t4,0x22330
   14134:	011e8e93          	addi	t4,t4,17 # 22330011 <_etext+0x22315a55>
   14138:	05d19a63          	bne	gp,t4,1418c <fail>
   1413c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14140:	00200293          	li	t0,2
   14144:	fc5216e3          	bne	tp,t0,14110 <test_22+0x8>

00014148 <test_23>:
   14148:	01700e13          	li	t3,23
   1414c:	00000213          	li	tp,0
   14150:	7ffec117          	auipc	sp,0x7ffec
   14154:	ed010113          	addi	sp,sp,-304 # 80000020 <tdat>
   14158:	00000013          	nop
   1415c:	00000013          	nop
   14160:	122330b7          	lui	ra,0x12233
   14164:	00108093          	addi	ra,ra,1 # 12233001 <_etext+0x12218a45>
   14168:	00112a23          	sw	ra,20(sp)
   1416c:	01412183          	lw	gp,20(sp)
   14170:	12233eb7          	lui	t4,0x12233
   14174:	001e8e93          	addi	t4,t4,1 # 12233001 <_etext+0x12218a45>
   14178:	01d19a63          	bne	gp,t4,1418c <fail>
   1417c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14180:	00200293          	li	t0,2
   14184:	fc5216e3          	bne	tp,t0,14150 <test_23+0x8>
   14188:	05c01463          	bne	zero,t3,141d0 <pass>

0001418c <fail>:
   1418c:	0ff00513          	li	a0,255

00014190 <.delay_fail>:
   14190:	fff50513          	addi	a0,a0,-1
   14194:	fe051ee3          	bnez	a0,14190 <.delay_fail>
   14198:	02000537          	lui	a0,0x2000
   1419c:	04500593          	li	a1,69
   141a0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   141a4:	05200613          	li	a2,82
   141a8:	00c52023          	sw	a2,0(a0)
   141ac:	00c52023          	sw	a2,0(a0)
   141b0:	04f00693          	li	a3,79
   141b4:	00d52023          	sw	a3,0(a0)
   141b8:	00c52023          	sw	a2,0(a0)
   141bc:	00d00713          	li	a4,13
   141c0:	00e52023          	sw	a4,0(a0)
   141c4:	00a00793          	li	a5,10
   141c8:	00f52023          	sw	a5,0(a0)
   141cc:	f4dfb06f          	j	10118 <sw_ret>

000141d0 <pass>:
   141d0:	0ff00513          	li	a0,255

000141d4 <.delay_ok>:
   141d4:	fff50513          	addi	a0,a0,-1
   141d8:	fe051ee3          	bnez	a0,141d4 <.delay_ok>
   141dc:	02000537          	lui	a0,0x2000
   141e0:	04f00593          	li	a1,79
   141e4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   141e8:	04b00613          	li	a2,75
   141ec:	00c52023          	sw	a2,0(a0)
   141f0:	00d00693          	li	a3,13
   141f4:	00d52023          	sw	a3,0(a0)
   141f8:	00a00713          	li	a4,10
   141fc:	00e52023          	sw	a4,0(a0)
   14200:	f19fb06f          	j	10118 <sw_ret>

00014204 <lw>:
   14204:	0ff00513          	li	a0,255

00014208 <.delay_pr>:
   14208:	fff50513          	addi	a0,a0,-1
   1420c:	fe051ee3          	bnez	a0,14208 <.delay_pr>
   14210:	00014537          	lui	a0,0x14
   14214:	23050513          	addi	a0,a0,560 # 14230 <.test_name>
   14218:	02000637          	lui	a2,0x2000

0001421c <.prname_next>:
   1421c:	00050583          	lb	a1,0(a0)
   14220:	00058a63          	beqz	a1,14234 <.prname_done>
   14224:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   14228:	00150513          	addi	a0,a0,1
   1422c:	ff1ff06f          	j	1421c <.prname_next>

00014230 <.test_name>:
   14230:	776c                	flw	fa1,108(a4)
	...

00014234 <.prname_done>:
   14234:	02e00593          	li	a1,46
   14238:	00b62023          	sw	a1,0(a2)
   1423c:	00b62023          	sw	a1,0(a2)

00014240 <test_2>:
   14240:	7ffec097          	auipc	ra,0x7ffec
   14244:	e0808093          	addi	ra,ra,-504 # 80000048 <tdat>
   14248:	0000a183          	lw	gp,0(ra)
   1424c:	00ff0eb7          	lui	t4,0xff0
   14250:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5b43>
   14254:	00200e13          	li	t3,2
   14258:	27d19a63          	bne	gp,t4,144cc <fail>

0001425c <test_3>:
   1425c:	7ffec097          	auipc	ra,0x7ffec
   14260:	dec08093          	addi	ra,ra,-532 # 80000048 <tdat>
   14264:	0040a183          	lw	gp,4(ra)
   14268:	ff010eb7          	lui	t4,0xff010
   1426c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   14270:	00300e13          	li	t3,3
   14274:	25d19c63          	bne	gp,t4,144cc <fail>

00014278 <test_4>:
   14278:	7ffec097          	auipc	ra,0x7ffec
   1427c:	dd008093          	addi	ra,ra,-560 # 80000048 <tdat>
   14280:	0080a183          	lw	gp,8(ra)
   14284:	0ff01eb7          	lui	t4,0xff01
   14288:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   1428c:	00400e13          	li	t3,4
   14290:	23d19e63          	bne	gp,t4,144cc <fail>

00014294 <test_5>:
   14294:	7ffec097          	auipc	ra,0x7ffec
   14298:	db408093          	addi	ra,ra,-588 # 80000048 <tdat>
   1429c:	00c0a183          	lw	gp,12(ra)
   142a0:	f00ffeb7          	lui	t4,0xf00ff
   142a4:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   142a8:	00500e13          	li	t3,5
   142ac:	23d19063          	bne	gp,t4,144cc <fail>

000142b0 <test_6>:
   142b0:	7ffec097          	auipc	ra,0x7ffec
   142b4:	da408093          	addi	ra,ra,-604 # 80000054 <tdat4>
   142b8:	ff40a183          	lw	gp,-12(ra)
   142bc:	00ff0eb7          	lui	t4,0xff0
   142c0:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5b43>
   142c4:	00600e13          	li	t3,6
   142c8:	21d19263          	bne	gp,t4,144cc <fail>

000142cc <test_7>:
   142cc:	7ffec097          	auipc	ra,0x7ffec
   142d0:	d8808093          	addi	ra,ra,-632 # 80000054 <tdat4>
   142d4:	ff80a183          	lw	gp,-8(ra)
   142d8:	ff010eb7          	lui	t4,0xff010
   142dc:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   142e0:	00700e13          	li	t3,7
   142e4:	1fd19463          	bne	gp,t4,144cc <fail>

000142e8 <test_8>:
   142e8:	7ffec097          	auipc	ra,0x7ffec
   142ec:	d6c08093          	addi	ra,ra,-660 # 80000054 <tdat4>
   142f0:	ffc0a183          	lw	gp,-4(ra)
   142f4:	0ff01eb7          	lui	t4,0xff01
   142f8:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   142fc:	00800e13          	li	t3,8
   14300:	1dd19663          	bne	gp,t4,144cc <fail>

00014304 <test_9>:
   14304:	7ffec097          	auipc	ra,0x7ffec
   14308:	d5008093          	addi	ra,ra,-688 # 80000054 <tdat4>
   1430c:	0000a183          	lw	gp,0(ra)
   14310:	f00ffeb7          	lui	t4,0xf00ff
   14314:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   14318:	00900e13          	li	t3,9
   1431c:	1bd19863          	bne	gp,t4,144cc <fail>

00014320 <test_10>:
   14320:	7ffec097          	auipc	ra,0x7ffec
   14324:	d2808093          	addi	ra,ra,-728 # 80000048 <tdat>
   14328:	fe008093          	addi	ra,ra,-32
   1432c:	0200a183          	lw	gp,32(ra)
   14330:	00ff0eb7          	lui	t4,0xff0
   14334:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5b43>
   14338:	00a00e13          	li	t3,10
   1433c:	19d19863          	bne	gp,t4,144cc <fail>

00014340 <test_11>:
   14340:	7ffec097          	auipc	ra,0x7ffec
   14344:	d0808093          	addi	ra,ra,-760 # 80000048 <tdat>
   14348:	ffd08093          	addi	ra,ra,-3
   1434c:	0070a183          	lw	gp,7(ra)
   14350:	ff010eb7          	lui	t4,0xff010
   14354:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   14358:	00b00e13          	li	t3,11
   1435c:	17d19863          	bne	gp,t4,144cc <fail>

00014360 <test_12>:
   14360:	00c00e13          	li	t3,12
   14364:	00000213          	li	tp,0
   14368:	7ffec097          	auipc	ra,0x7ffec
   1436c:	ce408093          	addi	ra,ra,-796 # 8000004c <tdat2>
   14370:	0040a183          	lw	gp,4(ra)
   14374:	00018313          	mv	t1,gp
   14378:	0ff01eb7          	lui	t4,0xff01
   1437c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   14380:	15d31663          	bne	t1,t4,144cc <fail>
   14384:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14388:	00200293          	li	t0,2
   1438c:	fc521ee3          	bne	tp,t0,14368 <test_12+0x8>

00014390 <test_13>:
   14390:	00d00e13          	li	t3,13
   14394:	00000213          	li	tp,0
   14398:	7ffec097          	auipc	ra,0x7ffec
   1439c:	cb808093          	addi	ra,ra,-840 # 80000050 <tdat3>
   143a0:	0040a183          	lw	gp,4(ra)
   143a4:	00000013          	nop
   143a8:	00018313          	mv	t1,gp
   143ac:	f00ffeb7          	lui	t4,0xf00ff
   143b0:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   143b4:	11d31c63          	bne	t1,t4,144cc <fail>
   143b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   143bc:	00200293          	li	t0,2
   143c0:	fc521ce3          	bne	tp,t0,14398 <test_13+0x8>

000143c4 <test_14>:
   143c4:	00e00e13          	li	t3,14
   143c8:	00000213          	li	tp,0
   143cc:	7ffec097          	auipc	ra,0x7ffec
   143d0:	c7c08093          	addi	ra,ra,-900 # 80000048 <tdat>
   143d4:	0040a183          	lw	gp,4(ra)
   143d8:	00000013          	nop
   143dc:	00000013          	nop
   143e0:	00018313          	mv	t1,gp
   143e4:	ff010eb7          	lui	t4,0xff010
   143e8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   143ec:	0fd31063          	bne	t1,t4,144cc <fail>
   143f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   143f4:	00200293          	li	t0,2
   143f8:	fc521ae3          	bne	tp,t0,143cc <test_14+0x8>

000143fc <test_15>:
   143fc:	00f00e13          	li	t3,15
   14400:	00000213          	li	tp,0
   14404:	7ffec097          	auipc	ra,0x7ffec
   14408:	c4808093          	addi	ra,ra,-952 # 8000004c <tdat2>
   1440c:	0040a183          	lw	gp,4(ra)
   14410:	0ff01eb7          	lui	t4,0xff01
   14414:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   14418:	0bd19a63          	bne	gp,t4,144cc <fail>
   1441c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14420:	00200293          	li	t0,2
   14424:	fe5210e3          	bne	tp,t0,14404 <test_15+0x8>

00014428 <test_16>:
   14428:	01000e13          	li	t3,16
   1442c:	00000213          	li	tp,0
   14430:	7ffec097          	auipc	ra,0x7ffec
   14434:	c2008093          	addi	ra,ra,-992 # 80000050 <tdat3>
   14438:	00000013          	nop
   1443c:	0040a183          	lw	gp,4(ra)
   14440:	f00ffeb7          	lui	t4,0xf00ff
   14444:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   14448:	09d19263          	bne	gp,t4,144cc <fail>
   1444c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14450:	00200293          	li	t0,2
   14454:	fc521ee3          	bne	tp,t0,14430 <test_16+0x8>

00014458 <test_17>:
   14458:	01100e13          	li	t3,17
   1445c:	00000213          	li	tp,0
   14460:	7ffec097          	auipc	ra,0x7ffec
   14464:	be808093          	addi	ra,ra,-1048 # 80000048 <tdat>
   14468:	00000013          	nop
   1446c:	00000013          	nop
   14470:	0040a183          	lw	gp,4(ra)
   14474:	ff010eb7          	lui	t4,0xff010
   14478:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   1447c:	05d19863          	bne	gp,t4,144cc <fail>
   14480:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14484:	00200293          	li	t0,2
   14488:	fc521ce3          	bne	tp,t0,14460 <test_17+0x8>

0001448c <test_18>:
   1448c:	7ffec197          	auipc	gp,0x7ffec
   14490:	bbc18193          	addi	gp,gp,-1092 # 80000048 <tdat>
   14494:	0001a103          	lw	sp,0(gp)
   14498:	00200113          	li	sp,2
   1449c:	00200e93          	li	t4,2
   144a0:	01200e13          	li	t3,18
   144a4:	03d11463          	bne	sp,t4,144cc <fail>

000144a8 <test_19>:
   144a8:	7ffec197          	auipc	gp,0x7ffec
   144ac:	ba018193          	addi	gp,gp,-1120 # 80000048 <tdat>
   144b0:	0001a103          	lw	sp,0(gp)
   144b4:	00000013          	nop
   144b8:	00200113          	li	sp,2
   144bc:	00200e93          	li	t4,2
   144c0:	01300e13          	li	t3,19
   144c4:	01d11463          	bne	sp,t4,144cc <fail>
   144c8:	05c01463          	bne	zero,t3,14510 <pass>

000144cc <fail>:
   144cc:	0ff00513          	li	a0,255

000144d0 <.delay_fail>:
   144d0:	fff50513          	addi	a0,a0,-1
   144d4:	fe051ee3          	bnez	a0,144d0 <.delay_fail>
   144d8:	02000537          	lui	a0,0x2000
   144dc:	04500593          	li	a1,69
   144e0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   144e4:	05200613          	li	a2,82
   144e8:	00c52023          	sw	a2,0(a0)
   144ec:	00c52023          	sw	a2,0(a0)
   144f0:	04f00693          	li	a3,79
   144f4:	00d52023          	sw	a3,0(a0)
   144f8:	00c52023          	sw	a2,0(a0)
   144fc:	00d00713          	li	a4,13
   14500:	00e52023          	sw	a4,0(a0)
   14504:	00a00793          	li	a5,10
   14508:	00f52023          	sw	a5,0(a0)
   1450c:	bf9fb06f          	j	10104 <lw_ret>

00014510 <pass>:
   14510:	0ff00513          	li	a0,255

00014514 <.delay_ok>:
   14514:	fff50513          	addi	a0,a0,-1
   14518:	fe051ee3          	bnez	a0,14514 <.delay_ok>
   1451c:	02000537          	lui	a0,0x2000
   14520:	04f00593          	li	a1,79
   14524:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14528:	04b00613          	li	a2,75
   1452c:	00c52023          	sw	a2,0(a0)
   14530:	00d00693          	li	a3,13
   14534:	00d52023          	sw	a3,0(a0)
   14538:	00a00713          	li	a4,10
   1453c:	00e52023          	sw	a4,0(a0)
   14540:	bc5fb06f          	j	10104 <lw_ret>

00014544 <div>:
   14544:	0ff00513          	li	a0,255

00014548 <.delay_pr>:
   14548:	fff50513          	addi	a0,a0,-1
   1454c:	fe051ee3          	bnez	a0,14548 <.delay_pr>
   14550:	00014537          	lui	a0,0x14
   14554:	57050513          	addi	a0,a0,1392 # 14570 <.test_name>
   14558:	02000637          	lui	a2,0x2000

0001455c <.prname_next>:
   1455c:	00050583          	lb	a1,0(a0)
   14560:	00058a63          	beqz	a1,14574 <.prname_done>
   14564:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   14568:	00150513          	addi	a0,a0,1
   1456c:	ff1ff06f          	j	1455c <.prname_next>

00014570 <.test_name>:
   14570:	6964                	flw	fs1,84(a0)
   14572:	0076                	c.slli	zero,0x1d

00014574 <.prname_done>:
   14574:	02e00593          	li	a1,46
   14578:	00b62023          	sw	a1,0(a2)
   1457c:	00b62023          	sw	a1,0(a2)

00014580 <test_2>:
   14580:	01400093          	li	ra,20
   14584:	00600113          	li	sp,6
   14588:	0220c1b3          	div	gp,ra,sp
   1458c:	00300e93          	li	t4,3
   14590:	00200e13          	li	t3,2
   14594:	0dd19463          	bne	gp,t4,1465c <fail>

00014598 <test_3>:
   14598:	fec00093          	li	ra,-20
   1459c:	00600113          	li	sp,6
   145a0:	0220c1b3          	div	gp,ra,sp
   145a4:	ffd00e93          	li	t4,-3
   145a8:	00300e13          	li	t3,3
   145ac:	0bd19863          	bne	gp,t4,1465c <fail>

000145b0 <test_4>:
   145b0:	01400093          	li	ra,20
   145b4:	ffa00113          	li	sp,-6
   145b8:	0220c1b3          	div	gp,ra,sp
   145bc:	ffd00e93          	li	t4,-3
   145c0:	00400e13          	li	t3,4
   145c4:	09d19c63          	bne	gp,t4,1465c <fail>

000145c8 <test_5>:
   145c8:	fec00093          	li	ra,-20
   145cc:	ffa00113          	li	sp,-6
   145d0:	0220c1b3          	div	gp,ra,sp
   145d4:	00300e93          	li	t4,3
   145d8:	00500e13          	li	t3,5
   145dc:	09d19063          	bne	gp,t4,1465c <fail>

000145e0 <test_6>:
   145e0:	800000b7          	lui	ra,0x80000
   145e4:	00100113          	li	sp,1
   145e8:	0220c1b3          	div	gp,ra,sp
   145ec:	80000eb7          	lui	t4,0x80000
   145f0:	00600e13          	li	t3,6
   145f4:	07d19463          	bne	gp,t4,1465c <fail>

000145f8 <test_7>:
   145f8:	800000b7          	lui	ra,0x80000
   145fc:	fff00113          	li	sp,-1
   14600:	0220c1b3          	div	gp,ra,sp
   14604:	80000eb7          	lui	t4,0x80000
   14608:	00700e13          	li	t3,7
   1460c:	05d19863          	bne	gp,t4,1465c <fail>

00014610 <test_8>:
   14610:	800000b7          	lui	ra,0x80000
   14614:	00000113          	li	sp,0
   14618:	0220c1b3          	div	gp,ra,sp
   1461c:	fff00e93          	li	t4,-1
   14620:	00800e13          	li	t3,8
   14624:	03d19c63          	bne	gp,t4,1465c <fail>

00014628 <test_9>:
   14628:	00100093          	li	ra,1
   1462c:	00000113          	li	sp,0
   14630:	0220c1b3          	div	gp,ra,sp
   14634:	fff00e93          	li	t4,-1
   14638:	00900e13          	li	t3,9
   1463c:	03d19063          	bne	gp,t4,1465c <fail>

00014640 <test_10>:
   14640:	00000093          	li	ra,0
   14644:	00000113          	li	sp,0
   14648:	0220c1b3          	div	gp,ra,sp
   1464c:	fff00e93          	li	t4,-1
   14650:	00a00e13          	li	t3,10
   14654:	01d19463          	bne	gp,t4,1465c <fail>
   14658:	05c01463          	bne	zero,t3,146a0 <pass>

0001465c <fail>:
   1465c:	0ff00513          	li	a0,255

00014660 <.delay_fail>:
   14660:	fff50513          	addi	a0,a0,-1
   14664:	fe051ee3          	bnez	a0,14660 <.delay_fail>
   14668:	02000537          	lui	a0,0x2000
   1466c:	04500593          	li	a1,69
   14670:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14674:	05200613          	li	a2,82
   14678:	00c52023          	sw	a2,0(a0)
   1467c:	00c52023          	sw	a2,0(a0)
   14680:	04f00693          	li	a3,79
   14684:	00d52023          	sw	a3,0(a0)
   14688:	00c52023          	sw	a2,0(a0)
   1468c:	00d00713          	li	a4,13
   14690:	00e52023          	sw	a4,0(a0)
   14694:	00a00793          	li	a5,10
   14698:	00f52023          	sw	a5,0(a0)
   1469c:	ad5fb06f          	j	10170 <div_ret>

000146a0 <pass>:
   146a0:	0ff00513          	li	a0,255

000146a4 <.delay_ok>:
   146a4:	fff50513          	addi	a0,a0,-1
   146a8:	fe051ee3          	bnez	a0,146a4 <.delay_ok>
   146ac:	02000537          	lui	a0,0x2000
   146b0:	04f00593          	li	a1,79
   146b4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   146b8:	04b00613          	li	a2,75
   146bc:	00c52023          	sw	a2,0(a0)
   146c0:	00d00693          	li	a3,13
   146c4:	00d52023          	sw	a3,0(a0)
   146c8:	00a00713          	li	a4,10
   146cc:	00e52023          	sw	a4,0(a0)
   146d0:	aa1fb06f          	j	10170 <div_ret>
   146d4:	0000                	unimp
	...

000146d8 <auipc>:
   146d8:	0ff00513          	li	a0,255

000146dc <.delay_pr>:
   146dc:	fff50513          	addi	a0,a0,-1
   146e0:	fe051ee3          	bnez	a0,146dc <.delay_pr>
   146e4:	00014537          	lui	a0,0x14
   146e8:	70450513          	addi	a0,a0,1796 # 14704 <.test_name>
   146ec:	02000637          	lui	a2,0x2000

000146f0 <.prname_next>:
   146f0:	00050583          	lb	a1,0(a0)
   146f4:	00058c63          	beqz	a1,1470c <.prname_done>
   146f8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   146fc:	00150513          	addi	a0,a0,1
   14700:	ff1ff06f          	j	146f0 <.prname_next>

00014704 <.test_name>:
   14704:	7561                	lui	a0,0xffff8
   14706:	7069                	c.lui	zero,0xffffa
   14708:	00000063          	beqz	zero,14708 <.test_name+0x4>

0001470c <.prname_done>:
   1470c:	02e00593          	li	a1,46
   14710:	00b62023          	sw	a1,0(a2)
   14714:	00b62023          	sw	a1,0(a2)

00014718 <test_2>:
   14718:	00002517          	auipc	a0,0x2
   1471c:	71c50513          	addi	a0,a0,1820 # 16e34 <fail>
   14720:	004005ef          	jal	a1,14724 <test_2+0xc>
   14724:	40b50533          	sub	a0,a0,a1
   14728:	00002eb7          	lui	t4,0x2
   1472c:	710e8e93          	addi	t4,t4,1808 # 2710 <_start-0xd8f0>
   14730:	00200e13          	li	t3,2
   14734:	03d51463          	bne	a0,t4,1475c <fail>

00014738 <test_3>:
   14738:	ffffe517          	auipc	a0,0xffffe
   1473c:	8fc50513          	addi	a0,a0,-1796 # 12034 <test_19+0x18>
   14740:	004005ef          	jal	a1,14744 <test_3+0xc>
   14744:	40b50533          	sub	a0,a0,a1
   14748:	ffffeeb7          	lui	t4,0xffffe
   1474c:	8f0e8e93          	addi	t4,t4,-1808 # ffffd8f0 <_edata+0x7fffd880>
   14750:	00300e13          	li	t3,3
   14754:	01d51463          	bne	a0,t4,1475c <fail>
   14758:	05c01463          	bne	zero,t3,147a0 <pass>

0001475c <fail>:
   1475c:	0ff00513          	li	a0,255

00014760 <.delay_fail>:
   14760:	fff50513          	addi	a0,a0,-1
   14764:	fe051ee3          	bnez	a0,14760 <.delay_fail>
   14768:	02000537          	lui	a0,0x2000
   1476c:	04500593          	li	a1,69
   14770:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14774:	05200613          	li	a2,82
   14778:	00c52023          	sw	a2,0(a0)
   1477c:	00c52023          	sw	a2,0(a0)
   14780:	04f00693          	li	a3,79
   14784:	00d52023          	sw	a3,0(a0)
   14788:	00c52023          	sw	a2,0(a0)
   1478c:	00d00713          	li	a4,13
   14790:	00e52023          	sw	a4,0(a0)
   14794:	00a00793          	li	a5,10
   14798:	00f52023          	sw	a5,0(a0)
   1479c:	939fb06f          	j	100d4 <auipc_ret>

000147a0 <pass>:
   147a0:	0ff00513          	li	a0,255

000147a4 <.delay_ok>:
   147a4:	fff50513          	addi	a0,a0,-1
   147a8:	fe051ee3          	bnez	a0,147a4 <.delay_ok>
   147ac:	02000537          	lui	a0,0x2000
   147b0:	04f00593          	li	a1,79
   147b4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   147b8:	04b00613          	li	a2,75
   147bc:	00c52023          	sw	a2,0(a0)
   147c0:	00d00693          	li	a3,13
   147c4:	00d52023          	sw	a3,0(a0)
   147c8:	00a00713          	li	a4,10
   147cc:	00e52023          	sw	a4,0(a0)
   147d0:	905fb06f          	j	100d4 <auipc_ret>
   147d4:	0000                	unimp
	...

000147d8 <addi>:
   147d8:	0ff00513          	li	a0,255

000147dc <.delay_pr>:
   147dc:	fff50513          	addi	a0,a0,-1
   147e0:	fe051ee3          	bnez	a0,147dc <.delay_pr>
   147e4:	00015537          	lui	a0,0x15
   147e8:	80450513          	addi	a0,a0,-2044 # 14804 <.test_name>
   147ec:	02000637          	lui	a2,0x2000

000147f0 <.prname_next>:
   147f0:	00050583          	lb	a1,0(a0)
   147f4:	00058c63          	beqz	a1,1480c <.prname_done>
   147f8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   147fc:	00150513          	addi	a0,a0,1
   14800:	ff1ff06f          	j	147f0 <.prname_next>

00014804 <.test_name>:
   14804:	6461                	lui	s0,0x18
   14806:	6964                	flw	fs1,84(a0)
   14808:	0000                	unimp
	...

0001480c <.prname_done>:
   1480c:	02e00593          	li	a1,46
   14810:	00b62023          	sw	a1,0(a2)
   14814:	00b62023          	sw	a1,0(a2)

00014818 <test_2>:
   14818:	00000093          	li	ra,0
   1481c:	00008193          	mv	gp,ra
   14820:	00000e93          	li	t4,0
   14824:	00200e13          	li	t3,2
   14828:	27d19c63          	bne	gp,t4,14aa0 <fail>

0001482c <test_3>:
   1482c:	00100093          	li	ra,1
   14830:	00108193          	addi	gp,ra,1 # 80000001 <_edata+0xffffff91>
   14834:	00200e93          	li	t4,2
   14838:	00300e13          	li	t3,3
   1483c:	27d19263          	bne	gp,t4,14aa0 <fail>

00014840 <test_4>:
   14840:	00300093          	li	ra,3
   14844:	00708193          	addi	gp,ra,7
   14848:	00a00e93          	li	t4,10
   1484c:	00400e13          	li	t3,4
   14850:	25d19863          	bne	gp,t4,14aa0 <fail>

00014854 <test_5>:
   14854:	00000093          	li	ra,0
   14858:	80008193          	addi	gp,ra,-2048
   1485c:	80000e93          	li	t4,-2048
   14860:	00500e13          	li	t3,5
   14864:	23d19e63          	bne	gp,t4,14aa0 <fail>

00014868 <test_6>:
   14868:	800000b7          	lui	ra,0x80000
   1486c:	00008193          	mv	gp,ra
   14870:	80000eb7          	lui	t4,0x80000
   14874:	00600e13          	li	t3,6
   14878:	23d19463          	bne	gp,t4,14aa0 <fail>

0001487c <test_7>:
   1487c:	800000b7          	lui	ra,0x80000
   14880:	80008193          	addi	gp,ra,-2048 # 7ffff800 <_edata+0xfffff790>
   14884:	80000eb7          	lui	t4,0x80000
   14888:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_edata+0xfffff790>
   1488c:	00700e13          	li	t3,7
   14890:	21d19863          	bne	gp,t4,14aa0 <fail>

00014894 <test_8>:
   14894:	00000093          	li	ra,0
   14898:	7ff08193          	addi	gp,ra,2047
   1489c:	7ff00e93          	li	t4,2047
   148a0:	00800e13          	li	t3,8
   148a4:	1fd19e63          	bne	gp,t4,14aa0 <fail>

000148a8 <test_9>:
   148a8:	800000b7          	lui	ra,0x80000
   148ac:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   148b0:	00008193          	mv	gp,ra
   148b4:	80000eb7          	lui	t4,0x80000
   148b8:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   148bc:	00900e13          	li	t3,9
   148c0:	1fd19063          	bne	gp,t4,14aa0 <fail>

000148c4 <test_10>:
   148c4:	800000b7          	lui	ra,0x80000
   148c8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   148cc:	7ff08193          	addi	gp,ra,2047
   148d0:	80000eb7          	lui	t4,0x80000
   148d4:	7fee8e93          	addi	t4,t4,2046 # 800007fe <_edata+0x78e>
   148d8:	00a00e13          	li	t3,10
   148dc:	1dd19263          	bne	gp,t4,14aa0 <fail>

000148e0 <test_11>:
   148e0:	800000b7          	lui	ra,0x80000
   148e4:	7ff08193          	addi	gp,ra,2047 # 800007ff <_edata+0x78f>
   148e8:	80000eb7          	lui	t4,0x80000
   148ec:	7ffe8e93          	addi	t4,t4,2047 # 800007ff <_edata+0x78f>
   148f0:	00b00e13          	li	t3,11
   148f4:	1bd19663          	bne	gp,t4,14aa0 <fail>

000148f8 <test_12>:
   148f8:	800000b7          	lui	ra,0x80000
   148fc:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14900:	80008193          	addi	gp,ra,-2048
   14904:	7ffffeb7          	lui	t4,0x7ffff
   14908:	7ffe8e93          	addi	t4,t4,2047 # 7ffff7ff <_etext+0x7ffe5243>
   1490c:	00c00e13          	li	t3,12
   14910:	19d19863          	bne	gp,t4,14aa0 <fail>

00014914 <test_13>:
   14914:	00000093          	li	ra,0
   14918:	fff08193          	addi	gp,ra,-1
   1491c:	fff00e93          	li	t4,-1
   14920:	00d00e13          	li	t3,13
   14924:	17d19e63          	bne	gp,t4,14aa0 <fail>

00014928 <test_14>:
   14928:	fff00093          	li	ra,-1
   1492c:	00108193          	addi	gp,ra,1
   14930:	00000e93          	li	t4,0
   14934:	00e00e13          	li	t3,14
   14938:	17d19463          	bne	gp,t4,14aa0 <fail>

0001493c <test_15>:
   1493c:	fff00093          	li	ra,-1
   14940:	fff08193          	addi	gp,ra,-1
   14944:	ffe00e93          	li	t4,-2
   14948:	00f00e13          	li	t3,15
   1494c:	15d19a63          	bne	gp,t4,14aa0 <fail>

00014950 <test_16>:
   14950:	800000b7          	lui	ra,0x80000
   14954:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14958:	00108193          	addi	gp,ra,1
   1495c:	80000eb7          	lui	t4,0x80000
   14960:	01000e13          	li	t3,16
   14964:	13d19e63          	bne	gp,t4,14aa0 <fail>

00014968 <test_17>:
   14968:	00d00093          	li	ra,13
   1496c:	00b08093          	addi	ra,ra,11
   14970:	01800e93          	li	t4,24
   14974:	01100e13          	li	t3,17
   14978:	13d09463          	bne	ra,t4,14aa0 <fail>

0001497c <test_18>:
   1497c:	00000213          	li	tp,0
   14980:	00d00093          	li	ra,13
   14984:	00b08193          	addi	gp,ra,11
   14988:	00018313          	mv	t1,gp
   1498c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14990:	00200293          	li	t0,2
   14994:	fe5216e3          	bne	tp,t0,14980 <test_18+0x4>
   14998:	01800e93          	li	t4,24
   1499c:	01200e13          	li	t3,18
   149a0:	11d31063          	bne	t1,t4,14aa0 <fail>

000149a4 <test_19>:
   149a4:	00000213          	li	tp,0
   149a8:	00d00093          	li	ra,13
   149ac:	00a08193          	addi	gp,ra,10
   149b0:	00000013          	nop
   149b4:	00018313          	mv	t1,gp
   149b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   149bc:	00200293          	li	t0,2
   149c0:	fe5214e3          	bne	tp,t0,149a8 <test_19+0x4>
   149c4:	01700e93          	li	t4,23
   149c8:	01300e13          	li	t3,19
   149cc:	0dd31a63          	bne	t1,t4,14aa0 <fail>

000149d0 <test_20>:
   149d0:	00000213          	li	tp,0
   149d4:	00d00093          	li	ra,13
   149d8:	00908193          	addi	gp,ra,9
   149dc:	00000013          	nop
   149e0:	00000013          	nop
   149e4:	00018313          	mv	t1,gp
   149e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   149ec:	00200293          	li	t0,2
   149f0:	fe5212e3          	bne	tp,t0,149d4 <test_20+0x4>
   149f4:	01600e93          	li	t4,22
   149f8:	01400e13          	li	t3,20
   149fc:	0bd31263          	bne	t1,t4,14aa0 <fail>

00014a00 <test_21>:
   14a00:	00000213          	li	tp,0
   14a04:	00d00093          	li	ra,13
   14a08:	00b08193          	addi	gp,ra,11
   14a0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a10:	00200293          	li	t0,2
   14a14:	fe5218e3          	bne	tp,t0,14a04 <test_21+0x4>
   14a18:	01800e93          	li	t4,24
   14a1c:	01500e13          	li	t3,21
   14a20:	09d19063          	bne	gp,t4,14aa0 <fail>

00014a24 <test_22>:
   14a24:	00000213          	li	tp,0
   14a28:	00d00093          	li	ra,13
   14a2c:	00000013          	nop
   14a30:	00a08193          	addi	gp,ra,10
   14a34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a38:	00200293          	li	t0,2
   14a3c:	fe5216e3          	bne	tp,t0,14a28 <test_22+0x4>
   14a40:	01700e93          	li	t4,23
   14a44:	01600e13          	li	t3,22
   14a48:	05d19c63          	bne	gp,t4,14aa0 <fail>

00014a4c <test_23>:
   14a4c:	00000213          	li	tp,0
   14a50:	00d00093          	li	ra,13
   14a54:	00000013          	nop
   14a58:	00000013          	nop
   14a5c:	00908193          	addi	gp,ra,9
   14a60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a64:	00200293          	li	t0,2
   14a68:	fe5214e3          	bne	tp,t0,14a50 <test_23+0x4>
   14a6c:	01600e93          	li	t4,22
   14a70:	01700e13          	li	t3,23
   14a74:	03d19663          	bne	gp,t4,14aa0 <fail>

00014a78 <test_24>:
   14a78:	02000093          	li	ra,32
   14a7c:	02000e93          	li	t4,32
   14a80:	01800e13          	li	t3,24
   14a84:	01d09e63          	bne	ra,t4,14aa0 <fail>

00014a88 <test_25>:
   14a88:	02100093          	li	ra,33
   14a8c:	03208013          	addi	zero,ra,50
   14a90:	00000e93          	li	t4,0
   14a94:	01900e13          	li	t3,25
   14a98:	01d01463          	bne	zero,t4,14aa0 <fail>
   14a9c:	05c01463          	bne	zero,t3,14ae4 <pass>

00014aa0 <fail>:
   14aa0:	0ff00513          	li	a0,255

00014aa4 <.delay_fail>:
   14aa4:	fff50513          	addi	a0,a0,-1
   14aa8:	fe051ee3          	bnez	a0,14aa4 <.delay_fail>
   14aac:	02000537          	lui	a0,0x2000
   14ab0:	04500593          	li	a1,69
   14ab4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14ab8:	05200613          	li	a2,82
   14abc:	00c52023          	sw	a2,0(a0)
   14ac0:	00c52023          	sw	a2,0(a0)
   14ac4:	04f00693          	li	a3,79
   14ac8:	00d52023          	sw	a3,0(a0)
   14acc:	00c52023          	sw	a2,0(a0)
   14ad0:	00d00713          	li	a4,13
   14ad4:	00e52023          	sw	a4,0(a0)
   14ad8:	00a00793          	li	a5,10
   14adc:	00f52023          	sw	a5,0(a0)
   14ae0:	e3cfb06f          	j	1011c <addi_ret>

00014ae4 <pass>:
   14ae4:	0ff00513          	li	a0,255

00014ae8 <.delay_ok>:
   14ae8:	fff50513          	addi	a0,a0,-1
   14aec:	fe051ee3          	bnez	a0,14ae8 <.delay_ok>
   14af0:	02000537          	lui	a0,0x2000
   14af4:	04f00593          	li	a1,79
   14af8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14afc:	04b00613          	li	a2,75
   14b00:	00c52023          	sw	a2,0(a0)
   14b04:	00d00693          	li	a3,13
   14b08:	00d52023          	sw	a3,0(a0)
   14b0c:	00a00713          	li	a4,10
   14b10:	00e52023          	sw	a4,0(a0)
   14b14:	e08fb06f          	j	1011c <addi_ret>

00014b18 <jalr>:
   14b18:	0ff00513          	li	a0,255

00014b1c <.delay_pr>:
   14b1c:	fff50513          	addi	a0,a0,-1
   14b20:	fe051ee3          	bnez	a0,14b1c <.delay_pr>
   14b24:	00015537          	lui	a0,0x15
   14b28:	b4450513          	addi	a0,a0,-1212 # 14b44 <.test_name>
   14b2c:	02000637          	lui	a2,0x2000

00014b30 <.prname_next>:
   14b30:	00050583          	lb	a1,0(a0)
   14b34:	00058c63          	beqz	a1,14b4c <.prname_done>
   14b38:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   14b3c:	00150513          	addi	a0,a0,1
   14b40:	ff1ff06f          	j	14b30 <.prname_next>

00014b44 <.test_name>:
   14b44:	616a                	flw	ft2,152(sp)
   14b46:	726c                	flw	fa1,100(a2)
   14b48:	0000                	unimp
	...

00014b4c <.prname_done>:
   14b4c:	02e00593          	li	a1,46
   14b50:	00b62023          	sw	a1,0(a2)
   14b54:	00b62023          	sw	a1,0(a2)

00014b58 <test_2>:
   14b58:	00200e13          	li	t3,2
   14b5c:	00000f93          	li	t6,0
   14b60:	00000117          	auipc	sp,0x0
   14b64:	01810113          	addi	sp,sp,24 # 14b78 <target_2>

00014b68 <linkaddr_2>:
   14b68:	000109e7          	jalr	s3,sp
   14b6c:	00000013          	nop
   14b70:	00000013          	nop
   14b74:	0e40006f          	j	14c58 <fail>

00014b78 <target_2>:
   14b78:	00000097          	auipc	ra,0x0
   14b7c:	ff008093          	addi	ra,ra,-16 # 14b68 <linkaddr_2>
   14b80:	00408093          	addi	ra,ra,4
   14b84:	0d309a63          	bne	ra,s3,14c58 <fail>

00014b88 <test_3>:
   14b88:	00300e13          	li	t3,3
   14b8c:	00000f93          	li	t6,0
   14b90:	00000197          	auipc	gp,0x0
   14b94:	01418193          	addi	gp,gp,20 # 14ba4 <target_3>

00014b98 <linkaddr_3>:
   14b98:	00018067          	jr	gp
   14b9c:	00000013          	nop
   14ba0:	0b80006f          	j	14c58 <fail>

00014ba4 <target_3>:
   14ba4:	0a0f9a63          	bnez	t6,14c58 <fail>

00014ba8 <test_4>:
   14ba8:	00400e13          	li	t3,4
   14bac:	00000213          	li	tp,0
   14bb0:	00000317          	auipc	t1,0x0
   14bb4:	01030313          	addi	t1,t1,16 # 14bc0 <test_4+0x18>
   14bb8:	000309e7          	jalr	s3,t1
   14bbc:	09c01e63          	bne	zero,t3,14c58 <fail>
   14bc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14bc4:	00200293          	li	t0,2
   14bc8:	fe5214e3          	bne	tp,t0,14bb0 <test_4+0x8>

00014bcc <test_5>:
   14bcc:	00500e13          	li	t3,5
   14bd0:	00000213          	li	tp,0
   14bd4:	00000317          	auipc	t1,0x0
   14bd8:	01430313          	addi	t1,t1,20 # 14be8 <test_5+0x1c>
   14bdc:	00000013          	nop
   14be0:	000309e7          	jalr	s3,t1
   14be4:	07c01a63          	bne	zero,t3,14c58 <fail>
   14be8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14bec:	00200293          	li	t0,2
   14bf0:	fe5212e3          	bne	tp,t0,14bd4 <test_5+0x8>

00014bf4 <test_6>:
   14bf4:	00600e13          	li	t3,6
   14bf8:	00000213          	li	tp,0
   14bfc:	00000317          	auipc	t1,0x0
   14c00:	01830313          	addi	t1,t1,24 # 14c14 <test_6+0x20>
   14c04:	00000013          	nop
   14c08:	00000013          	nop
   14c0c:	000309e7          	jalr	s3,t1
   14c10:	05c01463          	bne	zero,t3,14c58 <fail>
   14c14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14c18:	00200293          	li	t0,2
   14c1c:	fe5210e3          	bne	tp,t0,14bfc <test_6+0x8>

00014c20 <test_7>:
   14c20:	00100093          	li	ra,1
   14c24:	00000117          	auipc	sp,0x0
   14c28:	01c10113          	addi	sp,sp,28 # 14c40 <test_7+0x20>
   14c2c:	ffc109e7          	jalr	s3,-4(sp)
   14c30:	00108093          	addi	ra,ra,1
   14c34:	00108093          	addi	ra,ra,1
   14c38:	00108093          	addi	ra,ra,1
   14c3c:	00108093          	addi	ra,ra,1
   14c40:	00108093          	addi	ra,ra,1
   14c44:	00108093          	addi	ra,ra,1
   14c48:	00400e93          	li	t4,4
   14c4c:	00700e13          	li	t3,7
   14c50:	01d09463          	bne	ra,t4,14c58 <fail>
   14c54:	05c01463          	bne	zero,t3,14c9c <pass>

00014c58 <fail>:
   14c58:	0ff00513          	li	a0,255

00014c5c <.delay_fail>:
   14c5c:	fff50513          	addi	a0,a0,-1
   14c60:	fe051ee3          	bnez	a0,14c5c <.delay_fail>
   14c64:	02000537          	lui	a0,0x2000
   14c68:	04500593          	li	a1,69
   14c6c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14c70:	05200613          	li	a2,82
   14c74:	00c52023          	sw	a2,0(a0)
   14c78:	00c52023          	sw	a2,0(a0)
   14c7c:	04f00693          	li	a3,79
   14c80:	00d52023          	sw	a3,0(a0)
   14c84:	00c52023          	sw	a2,0(a0)
   14c88:	00d00713          	li	a4,13
   14c8c:	00e52023          	sw	a4,0(a0)
   14c90:	00a00793          	li	a5,10
   14c94:	00f52023          	sw	a5,0(a0)
   14c98:	c48fb06f          	j	100e0 <jalr_ret>

00014c9c <pass>:
   14c9c:	0ff00513          	li	a0,255

00014ca0 <.delay_ok>:
   14ca0:	fff50513          	addi	a0,a0,-1
   14ca4:	fe051ee3          	bnez	a0,14ca0 <.delay_ok>
   14ca8:	02000537          	lui	a0,0x2000
   14cac:	04f00593          	li	a1,79
   14cb0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14cb4:	04b00613          	li	a2,75
   14cb8:	00c52023          	sw	a2,0(a0)
   14cbc:	00d00693          	li	a3,13
   14cc0:	00d52023          	sw	a3,0(a0)
   14cc4:	00a00713          	li	a4,10
   14cc8:	00e52023          	sw	a4,0(a0)
   14ccc:	c14fb06f          	j	100e0 <jalr_ret>

00014cd0 <bne>:
   14cd0:	0ff00513          	li	a0,255

00014cd4 <.delay_pr>:
   14cd4:	fff50513          	addi	a0,a0,-1
   14cd8:	fe051ee3          	bnez	a0,14cd4 <.delay_pr>
   14cdc:	00015537          	lui	a0,0x15
   14ce0:	cfc50513          	addi	a0,a0,-772 # 14cfc <.test_name>
   14ce4:	02000637          	lui	a2,0x2000

00014ce8 <.prname_next>:
   14ce8:	00050583          	lb	a1,0(a0)
   14cec:	00058a63          	beqz	a1,14d00 <.prname_done>
   14cf0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   14cf4:	00150513          	addi	a0,a0,1
   14cf8:	ff1ff06f          	j	14ce8 <.prname_next>

00014cfc <.test_name>:
   14cfc:	6e62                	flw	ft8,24(sp)
   14cfe:	0065                	c.nop	25

00014d00 <.prname_done>:
   14d00:	02e00593          	li	a1,46
   14d04:	00b62023          	sw	a1,0(a2)
   14d08:	00b62023          	sw	a1,0(a2)

00014d0c <test_2>:
   14d0c:	00200e13          	li	t3,2
   14d10:	00000093          	li	ra,0
   14d14:	00100113          	li	sp,1
   14d18:	00209663          	bne	ra,sp,14d24 <test_2+0x18>
   14d1c:	2bc01a63          	bne	zero,t3,14fd0 <fail>
   14d20:	01c01663          	bne	zero,t3,14d2c <test_3>
   14d24:	fe209ee3          	bne	ra,sp,14d20 <test_2+0x14>
   14d28:	2bc01463          	bne	zero,t3,14fd0 <fail>

00014d2c <test_3>:
   14d2c:	00300e13          	li	t3,3
   14d30:	00100093          	li	ra,1
   14d34:	00000113          	li	sp,0
   14d38:	00209663          	bne	ra,sp,14d44 <test_3+0x18>
   14d3c:	29c01a63          	bne	zero,t3,14fd0 <fail>
   14d40:	01c01663          	bne	zero,t3,14d4c <test_4>
   14d44:	fe209ee3          	bne	ra,sp,14d40 <test_3+0x14>
   14d48:	29c01463          	bne	zero,t3,14fd0 <fail>

00014d4c <test_4>:
   14d4c:	00400e13          	li	t3,4
   14d50:	fff00093          	li	ra,-1
   14d54:	00100113          	li	sp,1
   14d58:	00209663          	bne	ra,sp,14d64 <test_4+0x18>
   14d5c:	27c01a63          	bne	zero,t3,14fd0 <fail>
   14d60:	01c01663          	bne	zero,t3,14d6c <test_5>
   14d64:	fe209ee3          	bne	ra,sp,14d60 <test_4+0x14>
   14d68:	27c01463          	bne	zero,t3,14fd0 <fail>

00014d6c <test_5>:
   14d6c:	00500e13          	li	t3,5
   14d70:	00100093          	li	ra,1
   14d74:	fff00113          	li	sp,-1
   14d78:	00209663          	bne	ra,sp,14d84 <test_5+0x18>
   14d7c:	25c01a63          	bne	zero,t3,14fd0 <fail>
   14d80:	01c01663          	bne	zero,t3,14d8c <test_6>
   14d84:	fe209ee3          	bne	ra,sp,14d80 <test_5+0x14>
   14d88:	25c01463          	bne	zero,t3,14fd0 <fail>

00014d8c <test_6>:
   14d8c:	00600e13          	li	t3,6
   14d90:	00000093          	li	ra,0
   14d94:	00000113          	li	sp,0
   14d98:	00209463          	bne	ra,sp,14da0 <test_6+0x14>
   14d9c:	01c01463          	bne	zero,t3,14da4 <test_6+0x18>
   14da0:	23c01863          	bne	zero,t3,14fd0 <fail>
   14da4:	fe209ee3          	bne	ra,sp,14da0 <test_6+0x14>

00014da8 <test_7>:
   14da8:	00700e13          	li	t3,7
   14dac:	00100093          	li	ra,1
   14db0:	00100113          	li	sp,1
   14db4:	00209463          	bne	ra,sp,14dbc <test_7+0x14>
   14db8:	01c01463          	bne	zero,t3,14dc0 <test_7+0x18>
   14dbc:	21c01a63          	bne	zero,t3,14fd0 <fail>
   14dc0:	fe209ee3          	bne	ra,sp,14dbc <test_7+0x14>

00014dc4 <test_8>:
   14dc4:	00800e13          	li	t3,8
   14dc8:	fff00093          	li	ra,-1
   14dcc:	fff00113          	li	sp,-1
   14dd0:	00209463          	bne	ra,sp,14dd8 <test_8+0x14>
   14dd4:	01c01463          	bne	zero,t3,14ddc <test_8+0x18>
   14dd8:	1fc01c63          	bne	zero,t3,14fd0 <fail>
   14ddc:	fe209ee3          	bne	ra,sp,14dd8 <test_8+0x14>

00014de0 <test_9>:
   14de0:	00900e13          	li	t3,9
   14de4:	00000213          	li	tp,0
   14de8:	00000093          	li	ra,0
   14dec:	00000113          	li	sp,0
   14df0:	1e209063          	bne	ra,sp,14fd0 <fail>
   14df4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14df8:	00200293          	li	t0,2
   14dfc:	fe5216e3          	bne	tp,t0,14de8 <test_9+0x8>

00014e00 <test_10>:
   14e00:	00a00e13          	li	t3,10
   14e04:	00000213          	li	tp,0
   14e08:	00000093          	li	ra,0
   14e0c:	00000113          	li	sp,0
   14e10:	00000013          	nop
   14e14:	1a209e63          	bne	ra,sp,14fd0 <fail>
   14e18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e1c:	00200293          	li	t0,2
   14e20:	fe5214e3          	bne	tp,t0,14e08 <test_10+0x8>

00014e24 <test_11>:
   14e24:	00b00e13          	li	t3,11
   14e28:	00000213          	li	tp,0
   14e2c:	00000093          	li	ra,0
   14e30:	00000113          	li	sp,0
   14e34:	00000013          	nop
   14e38:	00000013          	nop
   14e3c:	18209a63          	bne	ra,sp,14fd0 <fail>
   14e40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e44:	00200293          	li	t0,2
   14e48:	fe5212e3          	bne	tp,t0,14e2c <test_11+0x8>

00014e4c <test_12>:
   14e4c:	00c00e13          	li	t3,12
   14e50:	00000213          	li	tp,0
   14e54:	00000093          	li	ra,0
   14e58:	00000013          	nop
   14e5c:	00000113          	li	sp,0
   14e60:	16209863          	bne	ra,sp,14fd0 <fail>
   14e64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e68:	00200293          	li	t0,2
   14e6c:	fe5214e3          	bne	tp,t0,14e54 <test_12+0x8>

00014e70 <test_13>:
   14e70:	00d00e13          	li	t3,13
   14e74:	00000213          	li	tp,0
   14e78:	00000093          	li	ra,0
   14e7c:	00000013          	nop
   14e80:	00000113          	li	sp,0
   14e84:	00000013          	nop
   14e88:	14209463          	bne	ra,sp,14fd0 <fail>
   14e8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e90:	00200293          	li	t0,2
   14e94:	fe5212e3          	bne	tp,t0,14e78 <test_13+0x8>

00014e98 <test_14>:
   14e98:	00e00e13          	li	t3,14
   14e9c:	00000213          	li	tp,0
   14ea0:	00000093          	li	ra,0
   14ea4:	00000013          	nop
   14ea8:	00000013          	nop
   14eac:	00000113          	li	sp,0
   14eb0:	12209063          	bne	ra,sp,14fd0 <fail>
   14eb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14eb8:	00200293          	li	t0,2
   14ebc:	fe5212e3          	bne	tp,t0,14ea0 <test_14+0x8>

00014ec0 <test_15>:
   14ec0:	00f00e13          	li	t3,15
   14ec4:	00000213          	li	tp,0
   14ec8:	00000093          	li	ra,0
   14ecc:	00000113          	li	sp,0
   14ed0:	10209063          	bne	ra,sp,14fd0 <fail>
   14ed4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ed8:	00200293          	li	t0,2
   14edc:	fe5216e3          	bne	tp,t0,14ec8 <test_15+0x8>

00014ee0 <test_16>:
   14ee0:	01000e13          	li	t3,16
   14ee4:	00000213          	li	tp,0
   14ee8:	00000093          	li	ra,0
   14eec:	00000113          	li	sp,0
   14ef0:	00000013          	nop
   14ef4:	0c209e63          	bne	ra,sp,14fd0 <fail>
   14ef8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14efc:	00200293          	li	t0,2
   14f00:	fe5214e3          	bne	tp,t0,14ee8 <test_16+0x8>

00014f04 <test_17>:
   14f04:	01100e13          	li	t3,17
   14f08:	00000213          	li	tp,0
   14f0c:	00000093          	li	ra,0
   14f10:	00000113          	li	sp,0
   14f14:	00000013          	nop
   14f18:	00000013          	nop
   14f1c:	0a209a63          	bne	ra,sp,14fd0 <fail>
   14f20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f24:	00200293          	li	t0,2
   14f28:	fe5212e3          	bne	tp,t0,14f0c <test_17+0x8>

00014f2c <test_18>:
   14f2c:	01200e13          	li	t3,18
   14f30:	00000213          	li	tp,0
   14f34:	00000093          	li	ra,0
   14f38:	00000013          	nop
   14f3c:	00000113          	li	sp,0
   14f40:	08209863          	bne	ra,sp,14fd0 <fail>
   14f44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f48:	00200293          	li	t0,2
   14f4c:	fe5214e3          	bne	tp,t0,14f34 <test_18+0x8>

00014f50 <test_19>:
   14f50:	01300e13          	li	t3,19
   14f54:	00000213          	li	tp,0
   14f58:	00000093          	li	ra,0
   14f5c:	00000013          	nop
   14f60:	00000113          	li	sp,0
   14f64:	00000013          	nop
   14f68:	06209463          	bne	ra,sp,14fd0 <fail>
   14f6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f70:	00200293          	li	t0,2
   14f74:	fe5212e3          	bne	tp,t0,14f58 <test_19+0x8>

00014f78 <test_20>:
   14f78:	01400e13          	li	t3,20
   14f7c:	00000213          	li	tp,0
   14f80:	00000093          	li	ra,0
   14f84:	00000013          	nop
   14f88:	00000013          	nop
   14f8c:	00000113          	li	sp,0
   14f90:	04209063          	bne	ra,sp,14fd0 <fail>
   14f94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f98:	00200293          	li	t0,2
   14f9c:	fe5212e3          	bne	tp,t0,14f80 <test_20+0x8>

00014fa0 <test_21>:
   14fa0:	00100093          	li	ra,1
   14fa4:	00009a63          	bnez	ra,14fb8 <test_21+0x18>
   14fa8:	00108093          	addi	ra,ra,1
   14fac:	00108093          	addi	ra,ra,1
   14fb0:	00108093          	addi	ra,ra,1
   14fb4:	00108093          	addi	ra,ra,1
   14fb8:	00108093          	addi	ra,ra,1
   14fbc:	00108093          	addi	ra,ra,1
   14fc0:	00300e93          	li	t4,3
   14fc4:	01500e13          	li	t3,21
   14fc8:	01d09463          	bne	ra,t4,14fd0 <fail>
   14fcc:	05c01463          	bne	zero,t3,15014 <pass>

00014fd0 <fail>:
   14fd0:	0ff00513          	li	a0,255

00014fd4 <.delay_fail>:
   14fd4:	fff50513          	addi	a0,a0,-1
   14fd8:	fe051ee3          	bnez	a0,14fd4 <.delay_fail>
   14fdc:	02000537          	lui	a0,0x2000
   14fe0:	04500593          	li	a1,69
   14fe4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   14fe8:	05200613          	li	a2,82
   14fec:	00c52023          	sw	a2,0(a0)
   14ff0:	00c52023          	sw	a2,0(a0)
   14ff4:	04f00693          	li	a3,79
   14ff8:	00d52023          	sw	a3,0(a0)
   14ffc:	00c52023          	sw	a2,0(a0)
   15000:	00d00713          	li	a4,13
   15004:	00e52023          	sw	a4,0(a0)
   15008:	00a00793          	li	a5,10
   1500c:	00f52023          	sw	a5,0(a0)
   15010:	8d8fb06f          	j	100e8 <bne_ret>

00015014 <pass>:
   15014:	0ff00513          	li	a0,255

00015018 <.delay_ok>:
   15018:	fff50513          	addi	a0,a0,-1
   1501c:	fe051ee3          	bnez	a0,15018 <.delay_ok>
   15020:	02000537          	lui	a0,0x2000
   15024:	04f00593          	li	a1,79
   15028:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1502c:	04b00613          	li	a2,75
   15030:	00c52023          	sw	a2,0(a0)
   15034:	00d00693          	li	a3,13
   15038:	00d52023          	sw	a3,0(a0)
   1503c:	00a00713          	li	a4,10
   15040:	00e52023          	sw	a4,0(a0)
   15044:	8a4fb06f          	j	100e8 <bne_ret>

00015048 <xori>:
   15048:	0ff00513          	li	a0,255

0001504c <.delay_pr>:
   1504c:	fff50513          	addi	a0,a0,-1
   15050:	fe051ee3          	bnez	a0,1504c <.delay_pr>
   15054:	00015537          	lui	a0,0x15
   15058:	07450513          	addi	a0,a0,116 # 15074 <.test_name>
   1505c:	02000637          	lui	a2,0x2000

00015060 <.prname_next>:
   15060:	00050583          	lb	a1,0(a0)
   15064:	00058c63          	beqz	a1,1507c <.prname_done>
   15068:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   1506c:	00150513          	addi	a0,a0,1
   15070:	ff1ff06f          	j	15060 <.prname_next>

00015074 <.test_name>:
   15074:	6f78                	flw	fa4,92(a4)
   15076:	6972                	flw	fs2,28(sp)
   15078:	0000                	unimp
	...

0001507c <.prname_done>:
   1507c:	02e00593          	li	a1,46
   15080:	00b62023          	sw	a1,0(a2)
   15084:	00b62023          	sw	a1,0(a2)

00015088 <test_2>:
   15088:	00ff10b7          	lui	ra,0xff1
   1508c:	f0008093          	addi	ra,ra,-256 # ff0f00 <_etext+0xfd6944>
   15090:	f0f0c193          	xori	gp,ra,-241
   15094:	ff00feb7          	lui	t4,0xff00f
   15098:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   1509c:	00200e13          	li	t3,2
   150a0:	1dd19663          	bne	gp,t4,1526c <fail>

000150a4 <test_3>:
   150a4:	0ff010b7          	lui	ra,0xff01
   150a8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   150ac:	0f00c193          	xori	gp,ra,240
   150b0:	0ff01eb7          	lui	t4,0xff01
   150b4:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee6944>
   150b8:	00300e13          	li	t3,3
   150bc:	1bd19863          	bne	gp,t4,1526c <fail>

000150c0 <test_4>:
   150c0:	00ff10b7          	lui	ra,0xff1
   150c4:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd6343>
   150c8:	70f0c193          	xori	gp,ra,1807
   150cc:	00ff1eb7          	lui	t4,0xff1
   150d0:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd6a34>
   150d4:	00400e13          	li	t3,4
   150d8:	19d19a63          	bne	gp,t4,1526c <fail>

000150dc <test_5>:
   150dc:	f00ff0b7          	lui	ra,0xf00ff
   150e0:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   150e4:	0f00c193          	xori	gp,ra,240
   150e8:	f00ffeb7          	lui	t4,0xf00ff
   150ec:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   150f0:	00500e13          	li	t3,5
   150f4:	17d19c63          	bne	gp,t4,1526c <fail>

000150f8 <test_6>:
   150f8:	ff00f0b7          	lui	ra,0xff00f
   150fc:	70008093          	addi	ra,ra,1792 # ff00f700 <_edata+0x7f00f690>
   15100:	70f0c093          	xori	ra,ra,1807
   15104:	ff00feb7          	lui	t4,0xff00f
   15108:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   1510c:	00600e13          	li	t3,6
   15110:	15d09e63          	bne	ra,t4,1526c <fail>

00015114 <test_7>:
   15114:	00000213          	li	tp,0
   15118:	0ff010b7          	lui	ra,0xff01
   1511c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   15120:	0f00c193          	xori	gp,ra,240
   15124:	00018313          	mv	t1,gp
   15128:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1512c:	00200293          	li	t0,2
   15130:	fe5214e3          	bne	tp,t0,15118 <test_7+0x4>
   15134:	0ff01eb7          	lui	t4,0xff01
   15138:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee6944>
   1513c:	00700e13          	li	t3,7
   15140:	13d31663          	bne	t1,t4,1526c <fail>

00015144 <test_8>:
   15144:	00000213          	li	tp,0
   15148:	00ff10b7          	lui	ra,0xff1
   1514c:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd6343>
   15150:	70f0c193          	xori	gp,ra,1807
   15154:	00000013          	nop
   15158:	00018313          	mv	t1,gp
   1515c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15160:	00200293          	li	t0,2
   15164:	fe5212e3          	bne	tp,t0,15148 <test_8+0x4>
   15168:	00ff1eb7          	lui	t4,0xff1
   1516c:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd6a34>
   15170:	00800e13          	li	t3,8
   15174:	0fd31c63          	bne	t1,t4,1526c <fail>

00015178 <test_9>:
   15178:	00000213          	li	tp,0
   1517c:	f00ff0b7          	lui	ra,0xf00ff
   15180:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   15184:	0f00c193          	xori	gp,ra,240
   15188:	00000013          	nop
   1518c:	00000013          	nop
   15190:	00018313          	mv	t1,gp
   15194:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15198:	00200293          	li	t0,2
   1519c:	fe5210e3          	bne	tp,t0,1517c <test_9+0x4>
   151a0:	f00ffeb7          	lui	t4,0xf00ff
   151a4:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   151a8:	00900e13          	li	t3,9
   151ac:	0dd31063          	bne	t1,t4,1526c <fail>

000151b0 <test_10>:
   151b0:	00000213          	li	tp,0
   151b4:	0ff010b7          	lui	ra,0xff01
   151b8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   151bc:	0f00c193          	xori	gp,ra,240
   151c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   151c4:	00200293          	li	t0,2
   151c8:	fe5216e3          	bne	tp,t0,151b4 <test_10+0x4>
   151cc:	0ff01eb7          	lui	t4,0xff01
   151d0:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee6944>
   151d4:	00a00e13          	li	t3,10
   151d8:	09d19a63          	bne	gp,t4,1526c <fail>

000151dc <test_11>:
   151dc:	00000213          	li	tp,0
   151e0:	00ff10b7          	lui	ra,0xff1
   151e4:	fff08093          	addi	ra,ra,-1 # ff0fff <_etext+0xfd6a43>
   151e8:	00000013          	nop
   151ec:	00f0c193          	xori	gp,ra,15
   151f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   151f4:	00200293          	li	t0,2
   151f8:	fe5214e3          	bne	tp,t0,151e0 <test_11+0x4>
   151fc:	00ff1eb7          	lui	t4,0xff1
   15200:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd6a34>
   15204:	00b00e13          	li	t3,11
   15208:	07d19263          	bne	gp,t4,1526c <fail>

0001520c <test_12>:
   1520c:	00000213          	li	tp,0
   15210:	f00ff0b7          	lui	ra,0xf00ff
   15214:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   15218:	00000013          	nop
   1521c:	00000013          	nop
   15220:	0f00c193          	xori	gp,ra,240
   15224:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15228:	00200293          	li	t0,2
   1522c:	fe5212e3          	bne	tp,t0,15210 <test_12+0x4>
   15230:	f00ffeb7          	lui	t4,0xf00ff
   15234:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   15238:	00c00e13          	li	t3,12
   1523c:	03d19863          	bne	gp,t4,1526c <fail>

00015240 <test_13>:
   15240:	0f004093          	xori	ra,zero,240
   15244:	0f000e93          	li	t4,240
   15248:	00d00e13          	li	t3,13
   1524c:	03d09063          	bne	ra,t4,1526c <fail>

00015250 <test_14>:
   15250:	00ff00b7          	lui	ra,0xff0
   15254:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   15258:	70f0c013          	xori	zero,ra,1807
   1525c:	00000e93          	li	t4,0
   15260:	00e00e13          	li	t3,14
   15264:	01d01463          	bne	zero,t4,1526c <fail>
   15268:	05c01463          	bne	zero,t3,152b0 <pass>

0001526c <fail>:
   1526c:	0ff00513          	li	a0,255

00015270 <.delay_fail>:
   15270:	fff50513          	addi	a0,a0,-1
   15274:	fe051ee3          	bnez	a0,15270 <.delay_fail>
   15278:	02000537          	lui	a0,0x2000
   1527c:	04500593          	li	a1,69
   15280:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   15284:	05200613          	li	a2,82
   15288:	00c52023          	sw	a2,0(a0)
   1528c:	00c52023          	sw	a2,0(a0)
   15290:	04f00693          	li	a3,79
   15294:	00d52023          	sw	a3,0(a0)
   15298:	00c52023          	sw	a2,0(a0)
   1529c:	00d00713          	li	a4,13
   152a0:	00e52023          	sw	a4,0(a0)
   152a4:	00a00793          	li	a5,10
   152a8:	00f52023          	sw	a5,0(a0)
   152ac:	e79fa06f          	j	10124 <xori_ret>

000152b0 <pass>:
   152b0:	0ff00513          	li	a0,255

000152b4 <.delay_ok>:
   152b4:	fff50513          	addi	a0,a0,-1
   152b8:	fe051ee3          	bnez	a0,152b4 <.delay_ok>
   152bc:	02000537          	lui	a0,0x2000
   152c0:	04f00593          	li	a1,79
   152c4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   152c8:	04b00613          	li	a2,75
   152cc:	00c52023          	sw	a2,0(a0)
   152d0:	00d00693          	li	a3,13
   152d4:	00d52023          	sw	a3,0(a0)
   152d8:	00a00713          	li	a4,10
   152dc:	00e52023          	sw	a4,0(a0)
   152e0:	e45fa06f          	j	10124 <xori_ret>

000152e4 <bgeu>:
   152e4:	0ff00513          	li	a0,255

000152e8 <.delay_pr>:
   152e8:	fff50513          	addi	a0,a0,-1
   152ec:	fe051ee3          	bnez	a0,152e8 <.delay_pr>
   152f0:	00015537          	lui	a0,0x15
   152f4:	31050513          	addi	a0,a0,784 # 15310 <.test_name>
   152f8:	02000637          	lui	a2,0x2000

000152fc <.prname_next>:
   152fc:	00050583          	lb	a1,0(a0)
   15300:	00058c63          	beqz	a1,15318 <.prname_done>
   15304:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   15308:	00150513          	addi	a0,a0,1
   1530c:	ff1ff06f          	j	152fc <.prname_next>

00015310 <.test_name>:
   15310:	6762                	flw	fa4,24(sp)
   15312:	7565                	lui	a0,0xffff9
   15314:	0000                	unimp
	...

00015318 <.prname_done>:
   15318:	02e00593          	li	a1,46
   1531c:	00b62023          	sw	a1,0(a2)
   15320:	00b62023          	sw	a1,0(a2)

00015324 <test_2>:
   15324:	00200e13          	li	t3,2
   15328:	00000093          	li	ra,0
   1532c:	00000113          	li	sp,0
   15330:	0020f663          	bgeu	ra,sp,1533c <test_2+0x18>
   15334:	35c01263          	bne	zero,t3,15678 <fail>
   15338:	01c01663          	bne	zero,t3,15344 <test_3>
   1533c:	fe20fee3          	bgeu	ra,sp,15338 <test_2+0x14>
   15340:	33c01c63          	bne	zero,t3,15678 <fail>

00015344 <test_3>:
   15344:	00300e13          	li	t3,3
   15348:	00100093          	li	ra,1
   1534c:	00100113          	li	sp,1
   15350:	0020f663          	bgeu	ra,sp,1535c <test_3+0x18>
   15354:	33c01263          	bne	zero,t3,15678 <fail>
   15358:	01c01663          	bne	zero,t3,15364 <test_4>
   1535c:	fe20fee3          	bgeu	ra,sp,15358 <test_3+0x14>
   15360:	31c01c63          	bne	zero,t3,15678 <fail>

00015364 <test_4>:
   15364:	00400e13          	li	t3,4
   15368:	fff00093          	li	ra,-1
   1536c:	fff00113          	li	sp,-1
   15370:	0020f663          	bgeu	ra,sp,1537c <test_4+0x18>
   15374:	31c01263          	bne	zero,t3,15678 <fail>
   15378:	01c01663          	bne	zero,t3,15384 <test_5>
   1537c:	fe20fee3          	bgeu	ra,sp,15378 <test_4+0x14>
   15380:	2fc01c63          	bne	zero,t3,15678 <fail>

00015384 <test_5>:
   15384:	00500e13          	li	t3,5
   15388:	00100093          	li	ra,1
   1538c:	00000113          	li	sp,0
   15390:	0020f663          	bgeu	ra,sp,1539c <test_5+0x18>
   15394:	2fc01263          	bne	zero,t3,15678 <fail>
   15398:	01c01663          	bne	zero,t3,153a4 <test_6>
   1539c:	fe20fee3          	bgeu	ra,sp,15398 <test_5+0x14>
   153a0:	2dc01c63          	bne	zero,t3,15678 <fail>

000153a4 <test_6>:
   153a4:	00600e13          	li	t3,6
   153a8:	fff00093          	li	ra,-1
   153ac:	ffe00113          	li	sp,-2
   153b0:	0020f663          	bgeu	ra,sp,153bc <test_6+0x18>
   153b4:	2dc01263          	bne	zero,t3,15678 <fail>
   153b8:	01c01663          	bne	zero,t3,153c4 <test_7>
   153bc:	fe20fee3          	bgeu	ra,sp,153b8 <test_6+0x14>
   153c0:	2bc01c63          	bne	zero,t3,15678 <fail>

000153c4 <test_7>:
   153c4:	00700e13          	li	t3,7
   153c8:	fff00093          	li	ra,-1
   153cc:	00000113          	li	sp,0
   153d0:	0020f663          	bgeu	ra,sp,153dc <test_7+0x18>
   153d4:	2bc01263          	bne	zero,t3,15678 <fail>
   153d8:	01c01663          	bne	zero,t3,153e4 <test_8>
   153dc:	fe20fee3          	bgeu	ra,sp,153d8 <test_7+0x14>
   153e0:	29c01c63          	bne	zero,t3,15678 <fail>

000153e4 <test_8>:
   153e4:	00800e13          	li	t3,8
   153e8:	00000093          	li	ra,0
   153ec:	00100113          	li	sp,1
   153f0:	0020f463          	bgeu	ra,sp,153f8 <test_8+0x14>
   153f4:	01c01463          	bne	zero,t3,153fc <test_8+0x18>
   153f8:	29c01063          	bne	zero,t3,15678 <fail>
   153fc:	fe20fee3          	bgeu	ra,sp,153f8 <test_8+0x14>

00015400 <test_9>:
   15400:	00900e13          	li	t3,9
   15404:	ffe00093          	li	ra,-2
   15408:	fff00113          	li	sp,-1
   1540c:	0020f463          	bgeu	ra,sp,15414 <test_9+0x14>
   15410:	01c01463          	bne	zero,t3,15418 <test_9+0x18>
   15414:	27c01263          	bne	zero,t3,15678 <fail>
   15418:	fe20fee3          	bgeu	ra,sp,15414 <test_9+0x14>

0001541c <test_10>:
   1541c:	00a00e13          	li	t3,10
   15420:	00000093          	li	ra,0
   15424:	fff00113          	li	sp,-1
   15428:	0020f463          	bgeu	ra,sp,15430 <test_10+0x14>
   1542c:	01c01463          	bne	zero,t3,15434 <test_10+0x18>
   15430:	25c01463          	bne	zero,t3,15678 <fail>
   15434:	fe20fee3          	bgeu	ra,sp,15430 <test_10+0x14>

00015438 <test_11>:
   15438:	00b00e13          	li	t3,11
   1543c:	800000b7          	lui	ra,0x80000
   15440:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15444:	80000137          	lui	sp,0x80000
   15448:	0020f463          	bgeu	ra,sp,15450 <test_11+0x18>
   1544c:	01c01463          	bne	zero,t3,15454 <test_11+0x1c>
   15450:	23c01463          	bne	zero,t3,15678 <fail>
   15454:	fe20fee3          	bgeu	ra,sp,15450 <test_11+0x18>

00015458 <test_12>:
   15458:	00c00e13          	li	t3,12
   1545c:	00000213          	li	tp,0
   15460:	f00000b7          	lui	ra,0xf0000
   15464:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15468:	f0000137          	lui	sp,0xf0000
   1546c:	2020f663          	bgeu	ra,sp,15678 <fail>
   15470:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15474:	00200293          	li	t0,2
   15478:	fe5214e3          	bne	tp,t0,15460 <test_12+0x8>

0001547c <test_13>:
   1547c:	00d00e13          	li	t3,13
   15480:	00000213          	li	tp,0
   15484:	f00000b7          	lui	ra,0xf0000
   15488:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   1548c:	f0000137          	lui	sp,0xf0000
   15490:	00000013          	nop
   15494:	1e20f263          	bgeu	ra,sp,15678 <fail>
   15498:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1549c:	00200293          	li	t0,2
   154a0:	fe5212e3          	bne	tp,t0,15484 <test_13+0x8>

000154a4 <test_14>:
   154a4:	00e00e13          	li	t3,14
   154a8:	00000213          	li	tp,0
   154ac:	f00000b7          	lui	ra,0xf0000
   154b0:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   154b4:	f0000137          	lui	sp,0xf0000
   154b8:	00000013          	nop
   154bc:	00000013          	nop
   154c0:	1a20fc63          	bgeu	ra,sp,15678 <fail>
   154c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   154c8:	00200293          	li	t0,2
   154cc:	fe5210e3          	bne	tp,t0,154ac <test_14+0x8>

000154d0 <test_15>:
   154d0:	00f00e13          	li	t3,15
   154d4:	00000213          	li	tp,0
   154d8:	f00000b7          	lui	ra,0xf0000
   154dc:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   154e0:	00000013          	nop
   154e4:	f0000137          	lui	sp,0xf0000
   154e8:	1820f863          	bgeu	ra,sp,15678 <fail>
   154ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   154f0:	00200293          	li	t0,2
   154f4:	fe5212e3          	bne	tp,t0,154d8 <test_15+0x8>

000154f8 <test_16>:
   154f8:	01000e13          	li	t3,16
   154fc:	00000213          	li	tp,0
   15500:	f00000b7          	lui	ra,0xf0000
   15504:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15508:	00000013          	nop
   1550c:	f0000137          	lui	sp,0xf0000
   15510:	00000013          	nop
   15514:	1620f263          	bgeu	ra,sp,15678 <fail>
   15518:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1551c:	00200293          	li	t0,2
   15520:	fe5210e3          	bne	tp,t0,15500 <test_16+0x8>

00015524 <test_17>:
   15524:	01100e13          	li	t3,17
   15528:	00000213          	li	tp,0
   1552c:	f00000b7          	lui	ra,0xf0000
   15530:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15534:	00000013          	nop
   15538:	00000013          	nop
   1553c:	f0000137          	lui	sp,0xf0000
   15540:	1220fc63          	bgeu	ra,sp,15678 <fail>
   15544:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15548:	00200293          	li	t0,2
   1554c:	fe5210e3          	bne	tp,t0,1552c <test_17+0x8>

00015550 <test_18>:
   15550:	01200e13          	li	t3,18
   15554:	00000213          	li	tp,0
   15558:	f00000b7          	lui	ra,0xf0000
   1555c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15560:	f0000137          	lui	sp,0xf0000
   15564:	1020fa63          	bgeu	ra,sp,15678 <fail>
   15568:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1556c:	00200293          	li	t0,2
   15570:	fe5214e3          	bne	tp,t0,15558 <test_18+0x8>

00015574 <test_19>:
   15574:	01300e13          	li	t3,19
   15578:	00000213          	li	tp,0
   1557c:	f00000b7          	lui	ra,0xf0000
   15580:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15584:	f0000137          	lui	sp,0xf0000
   15588:	00000013          	nop
   1558c:	0e20f663          	bgeu	ra,sp,15678 <fail>
   15590:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15594:	00200293          	li	t0,2
   15598:	fe5212e3          	bne	tp,t0,1557c <test_19+0x8>

0001559c <test_20>:
   1559c:	01400e13          	li	t3,20
   155a0:	00000213          	li	tp,0
   155a4:	f00000b7          	lui	ra,0xf0000
   155a8:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   155ac:	f0000137          	lui	sp,0xf0000
   155b0:	00000013          	nop
   155b4:	00000013          	nop
   155b8:	0c20f063          	bgeu	ra,sp,15678 <fail>
   155bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   155c0:	00200293          	li	t0,2
   155c4:	fe5210e3          	bne	tp,t0,155a4 <test_20+0x8>

000155c8 <test_21>:
   155c8:	01500e13          	li	t3,21
   155cc:	00000213          	li	tp,0
   155d0:	f00000b7          	lui	ra,0xf0000
   155d4:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   155d8:	00000013          	nop
   155dc:	f0000137          	lui	sp,0xf0000
   155e0:	0820fc63          	bgeu	ra,sp,15678 <fail>
   155e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   155e8:	00200293          	li	t0,2
   155ec:	fe5212e3          	bne	tp,t0,155d0 <test_21+0x8>

000155f0 <test_22>:
   155f0:	01600e13          	li	t3,22
   155f4:	00000213          	li	tp,0
   155f8:	f00000b7          	lui	ra,0xf0000
   155fc:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   15600:	00000013          	nop
   15604:	f0000137          	lui	sp,0xf0000
   15608:	00000013          	nop
   1560c:	0620f663          	bgeu	ra,sp,15678 <fail>
   15610:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15614:	00200293          	li	t0,2
   15618:	fe5210e3          	bne	tp,t0,155f8 <test_22+0x8>

0001561c <test_23>:
   1561c:	01700e13          	li	t3,23
   15620:	00000213          	li	tp,0
   15624:	f00000b7          	lui	ra,0xf0000
   15628:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   1562c:	00000013          	nop
   15630:	00000013          	nop
   15634:	f0000137          	lui	sp,0xf0000
   15638:	0420f063          	bgeu	ra,sp,15678 <fail>
   1563c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15640:	00200293          	li	t0,2
   15644:	fe5210e3          	bne	tp,t0,15624 <test_23+0x8>

00015648 <test_24>:
   15648:	00100093          	li	ra,1
   1564c:	0000fa63          	bgeu	ra,zero,15660 <test_24+0x18>
   15650:	00108093          	addi	ra,ra,1
   15654:	00108093          	addi	ra,ra,1
   15658:	00108093          	addi	ra,ra,1
   1565c:	00108093          	addi	ra,ra,1
   15660:	00108093          	addi	ra,ra,1
   15664:	00108093          	addi	ra,ra,1
   15668:	00300e93          	li	t4,3
   1566c:	01800e13          	li	t3,24
   15670:	01d09463          	bne	ra,t4,15678 <fail>
   15674:	05c01463          	bne	zero,t3,156bc <pass>

00015678 <fail>:
   15678:	0ff00513          	li	a0,255

0001567c <.delay_fail>:
   1567c:	fff50513          	addi	a0,a0,-1 # ffff8fff <_edata+0x7fff8f8f>
   15680:	fe051ee3          	bnez	a0,1567c <.delay_fail>
   15684:	02000537          	lui	a0,0x2000
   15688:	04500593          	li	a1,69
   1568c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   15690:	05200613          	li	a2,82
   15694:	00c52023          	sw	a2,0(a0)
   15698:	00c52023          	sw	a2,0(a0)
   1569c:	04f00693          	li	a3,79
   156a0:	00d52023          	sw	a3,0(a0)
   156a4:	00c52023          	sw	a2,0(a0)
   156a8:	00d00713          	li	a4,13
   156ac:	00e52023          	sw	a4,0(a0)
   156b0:	00a00793          	li	a5,10
   156b4:	00f52023          	sw	a5,0(a0)
   156b8:	a41fa06f          	j	100f8 <bgeu_ret>

000156bc <pass>:
   156bc:	0ff00513          	li	a0,255

000156c0 <.delay_ok>:
   156c0:	fff50513          	addi	a0,a0,-1
   156c4:	fe051ee3          	bnez	a0,156c0 <.delay_ok>
   156c8:	02000537          	lui	a0,0x2000
   156cc:	04f00593          	li	a1,79
   156d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   156d4:	04b00613          	li	a2,75
   156d8:	00c52023          	sw	a2,0(a0)
   156dc:	00d00693          	li	a3,13
   156e0:	00d52023          	sw	a3,0(a0)
   156e4:	00a00713          	li	a4,10
   156e8:	00e52023          	sw	a4,0(a0)
   156ec:	a0dfa06f          	j	100f8 <bgeu_ret>

000156f0 <mulhu>:
   156f0:	0ff00513          	li	a0,255

000156f4 <.delay_pr>:
   156f4:	fff50513          	addi	a0,a0,-1
   156f8:	fe051ee3          	bnez	a0,156f4 <.delay_pr>
   156fc:	00015537          	lui	a0,0x15
   15700:	71c50513          	addi	a0,a0,1820 # 1571c <.test_name>
   15704:	02000637          	lui	a2,0x2000

00015708 <.prname_next>:
   15708:	00050583          	lb	a1,0(a0)
   1570c:	00058c63          	beqz	a1,15724 <.prname_done>
   15710:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   15714:	00150513          	addi	a0,a0,1
   15718:	ff1ff06f          	j	15708 <.prname_next>

0001571c <.test_name>:
   1571c:	756d                	lui	a0,0xffffb
   1571e:	686c                	flw	fa1,84(s0)
   15720:	0075                	c.nop	29
	...

00015724 <.prname_done>:
   15724:	02e00593          	li	a1,46
   15728:	00b62023          	sw	a1,0(a2)
   1572c:	00b62023          	sw	a1,0(a2)

00015730 <test_2>:
   15730:	00000093          	li	ra,0
   15734:	00000113          	li	sp,0
   15738:	0220b1b3          	mulhu	gp,ra,sp
   1573c:	00000e93          	li	t4,0
   15740:	00200e13          	li	t3,2
   15744:	4bd19a63          	bne	gp,t4,15bf8 <fail>

00015748 <test_3>:
   15748:	00100093          	li	ra,1
   1574c:	00100113          	li	sp,1
   15750:	0220b1b3          	mulhu	gp,ra,sp
   15754:	00000e93          	li	t4,0
   15758:	00300e13          	li	t3,3
   1575c:	49d19e63          	bne	gp,t4,15bf8 <fail>

00015760 <test_4>:
   15760:	00300093          	li	ra,3
   15764:	00700113          	li	sp,7
   15768:	0220b1b3          	mulhu	gp,ra,sp
   1576c:	00000e93          	li	t4,0
   15770:	00400e13          	li	t3,4
   15774:	49d19263          	bne	gp,t4,15bf8 <fail>

00015778 <test_5>:
   15778:	00000093          	li	ra,0
   1577c:	ffff8137          	lui	sp,0xffff8
   15780:	0220b1b3          	mulhu	gp,ra,sp
   15784:	00000e93          	li	t4,0
   15788:	00500e13          	li	t3,5
   1578c:	47d19663          	bne	gp,t4,15bf8 <fail>

00015790 <test_6>:
   15790:	800000b7          	lui	ra,0x80000
   15794:	00000113          	li	sp,0
   15798:	0220b1b3          	mulhu	gp,ra,sp
   1579c:	00000e93          	li	t4,0
   157a0:	00600e13          	li	t3,6
   157a4:	45d19a63          	bne	gp,t4,15bf8 <fail>

000157a8 <test_7>:
   157a8:	800000b7          	lui	ra,0x80000
   157ac:	ffff8137          	lui	sp,0xffff8
   157b0:	0220b1b3          	mulhu	gp,ra,sp
   157b4:	7fffceb7          	lui	t4,0x7fffc
   157b8:	00700e13          	li	t3,7
   157bc:	43d19e63          	bne	gp,t4,15bf8 <fail>

000157c0 <test_30>:
   157c0:	aaaab0b7          	lui	ra,0xaaaab
   157c4:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   157c8:	00030137          	lui	sp,0x30
   157cc:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x158c1>
   157d0:	0220b1b3          	mulhu	gp,ra,sp
   157d4:	00020eb7          	lui	t4,0x20
   157d8:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x5942>
   157dc:	01e00e13          	li	t3,30
   157e0:	41d19c63          	bne	gp,t4,15bf8 <fail>

000157e4 <test_31>:
   157e4:	000300b7          	lui	ra,0x30
   157e8:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x158c1>
   157ec:	aaaab137          	lui	sp,0xaaaab
   157f0:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   157f4:	0220b1b3          	mulhu	gp,ra,sp
   157f8:	00020eb7          	lui	t4,0x20
   157fc:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x5942>
   15800:	01f00e13          	li	t3,31
   15804:	3fd19a63          	bne	gp,t4,15bf8 <fail>

00015808 <test_32>:
   15808:	ff0000b7          	lui	ra,0xff000
   1580c:	ff000137          	lui	sp,0xff000
   15810:	0220b1b3          	mulhu	gp,ra,sp
   15814:	fe010eb7          	lui	t4,0xfe010
   15818:	02000e13          	li	t3,32
   1581c:	3dd19e63          	bne	gp,t4,15bf8 <fail>

00015820 <test_33>:
   15820:	fff00093          	li	ra,-1
   15824:	fff00113          	li	sp,-1
   15828:	0220b1b3          	mulhu	gp,ra,sp
   1582c:	ffe00e93          	li	t4,-2
   15830:	02100e13          	li	t3,33
   15834:	3dd19263          	bne	gp,t4,15bf8 <fail>

00015838 <test_34>:
   15838:	fff00093          	li	ra,-1
   1583c:	00100113          	li	sp,1
   15840:	0220b1b3          	mulhu	gp,ra,sp
   15844:	00000e93          	li	t4,0
   15848:	02200e13          	li	t3,34
   1584c:	3bd19663          	bne	gp,t4,15bf8 <fail>

00015850 <test_35>:
   15850:	00100093          	li	ra,1
   15854:	fff00113          	li	sp,-1
   15858:	0220b1b3          	mulhu	gp,ra,sp
   1585c:	00000e93          	li	t4,0
   15860:	02300e13          	li	t3,35
   15864:	39d19a63          	bne	gp,t4,15bf8 <fail>

00015868 <test_8>:
   15868:	00d000b7          	lui	ra,0xd00
   1586c:	00b00137          	lui	sp,0xb00
   15870:	0220b0b3          	mulhu	ra,ra,sp
   15874:	00009eb7          	lui	t4,0x9
   15878:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1587c:	00800e13          	li	t3,8
   15880:	37d09c63          	bne	ra,t4,15bf8 <fail>

00015884 <test_9>:
   15884:	00e000b7          	lui	ra,0xe00
   15888:	00b00137          	lui	sp,0xb00
   1588c:	0220b133          	mulhu	sp,ra,sp
   15890:	0000aeb7          	lui	t4,0xa
   15894:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15898:	00900e13          	li	t3,9
   1589c:	35d11e63          	bne	sp,t4,15bf8 <fail>

000158a0 <test_10>:
   158a0:	00d000b7          	lui	ra,0xd00
   158a4:	0210b0b3          	mulhu	ra,ra,ra
   158a8:	0000beb7          	lui	t4,0xb
   158ac:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   158b0:	00a00e13          	li	t3,10
   158b4:	35d09263          	bne	ra,t4,15bf8 <fail>

000158b8 <test_11>:
   158b8:	00000213          	li	tp,0
   158bc:	00d000b7          	lui	ra,0xd00
   158c0:	00b00137          	lui	sp,0xb00
   158c4:	0220b1b3          	mulhu	gp,ra,sp
   158c8:	00018313          	mv	t1,gp
   158cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   158d0:	00200293          	li	t0,2
   158d4:	fe5214e3          	bne	tp,t0,158bc <test_11+0x4>
   158d8:	00009eb7          	lui	t4,0x9
   158dc:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   158e0:	00b00e13          	li	t3,11
   158e4:	31d31a63          	bne	t1,t4,15bf8 <fail>

000158e8 <test_12>:
   158e8:	00000213          	li	tp,0
   158ec:	00e000b7          	lui	ra,0xe00
   158f0:	00b00137          	lui	sp,0xb00
   158f4:	0220b1b3          	mulhu	gp,ra,sp
   158f8:	00000013          	nop
   158fc:	00018313          	mv	t1,gp
   15900:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15904:	00200293          	li	t0,2
   15908:	fe5212e3          	bne	tp,t0,158ec <test_12+0x4>
   1590c:	0000aeb7          	lui	t4,0xa
   15910:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15914:	00c00e13          	li	t3,12
   15918:	2fd31063          	bne	t1,t4,15bf8 <fail>

0001591c <test_13>:
   1591c:	00000213          	li	tp,0
   15920:	00f000b7          	lui	ra,0xf00
   15924:	00b00137          	lui	sp,0xb00
   15928:	0220b1b3          	mulhu	gp,ra,sp
   1592c:	00000013          	nop
   15930:	00000013          	nop
   15934:	00018313          	mv	t1,gp
   15938:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1593c:	00200293          	li	t0,2
   15940:	fe5210e3          	bne	tp,t0,15920 <test_13+0x4>
   15944:	0000aeb7          	lui	t4,0xa
   15948:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1594c:	00d00e13          	li	t3,13
   15950:	2bd31463          	bne	t1,t4,15bf8 <fail>

00015954 <test_14>:
   15954:	00000213          	li	tp,0
   15958:	00d000b7          	lui	ra,0xd00
   1595c:	00b00137          	lui	sp,0xb00
   15960:	0220b1b3          	mulhu	gp,ra,sp
   15964:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15968:	00200293          	li	t0,2
   1596c:	fe5216e3          	bne	tp,t0,15958 <test_14+0x4>
   15970:	00009eb7          	lui	t4,0x9
   15974:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15978:	00e00e13          	li	t3,14
   1597c:	27d19e63          	bne	gp,t4,15bf8 <fail>

00015980 <test_15>:
   15980:	00000213          	li	tp,0
   15984:	00e000b7          	lui	ra,0xe00
   15988:	00b00137          	lui	sp,0xb00
   1598c:	00000013          	nop
   15990:	0220b1b3          	mulhu	gp,ra,sp
   15994:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15998:	00200293          	li	t0,2
   1599c:	fe5214e3          	bne	tp,t0,15984 <test_15+0x4>
   159a0:	0000aeb7          	lui	t4,0xa
   159a4:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   159a8:	00f00e13          	li	t3,15
   159ac:	25d19663          	bne	gp,t4,15bf8 <fail>

000159b0 <test_16>:
   159b0:	00000213          	li	tp,0
   159b4:	00f000b7          	lui	ra,0xf00
   159b8:	00b00137          	lui	sp,0xb00
   159bc:	00000013          	nop
   159c0:	00000013          	nop
   159c4:	0220b1b3          	mulhu	gp,ra,sp
   159c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   159cc:	00200293          	li	t0,2
   159d0:	fe5212e3          	bne	tp,t0,159b4 <test_16+0x4>
   159d4:	0000aeb7          	lui	t4,0xa
   159d8:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   159dc:	01000e13          	li	t3,16
   159e0:	21d19c63          	bne	gp,t4,15bf8 <fail>

000159e4 <test_17>:
   159e4:	00000213          	li	tp,0
   159e8:	00d000b7          	lui	ra,0xd00
   159ec:	00000013          	nop
   159f0:	00b00137          	lui	sp,0xb00
   159f4:	0220b1b3          	mulhu	gp,ra,sp
   159f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   159fc:	00200293          	li	t0,2
   15a00:	fe5214e3          	bne	tp,t0,159e8 <test_17+0x4>
   15a04:	00009eb7          	lui	t4,0x9
   15a08:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15a0c:	01100e13          	li	t3,17
   15a10:	1fd19463          	bne	gp,t4,15bf8 <fail>

00015a14 <test_18>:
   15a14:	00000213          	li	tp,0
   15a18:	00e000b7          	lui	ra,0xe00
   15a1c:	00000013          	nop
   15a20:	00b00137          	lui	sp,0xb00
   15a24:	00000013          	nop
   15a28:	0220b1b3          	mulhu	gp,ra,sp
   15a2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15a30:	00200293          	li	t0,2
   15a34:	fe5212e3          	bne	tp,t0,15a18 <test_18+0x4>
   15a38:	0000aeb7          	lui	t4,0xa
   15a3c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15a40:	01200e13          	li	t3,18
   15a44:	1bd19a63          	bne	gp,t4,15bf8 <fail>

00015a48 <test_19>:
   15a48:	00000213          	li	tp,0
   15a4c:	00f000b7          	lui	ra,0xf00
   15a50:	00000013          	nop
   15a54:	00000013          	nop
   15a58:	00b00137          	lui	sp,0xb00
   15a5c:	0220b1b3          	mulhu	gp,ra,sp
   15a60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15a64:	00200293          	li	t0,2
   15a68:	fe5212e3          	bne	tp,t0,15a4c <test_19+0x4>
   15a6c:	0000aeb7          	lui	t4,0xa
   15a70:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15a74:	01300e13          	li	t3,19
   15a78:	19d19063          	bne	gp,t4,15bf8 <fail>

00015a7c <test_20>:
   15a7c:	00000213          	li	tp,0
   15a80:	00b00137          	lui	sp,0xb00
   15a84:	00d000b7          	lui	ra,0xd00
   15a88:	0220b1b3          	mulhu	gp,ra,sp
   15a8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15a90:	00200293          	li	t0,2
   15a94:	fe5216e3          	bne	tp,t0,15a80 <test_20+0x4>
   15a98:	00009eb7          	lui	t4,0x9
   15a9c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15aa0:	01400e13          	li	t3,20
   15aa4:	15d19a63          	bne	gp,t4,15bf8 <fail>

00015aa8 <test_21>:
   15aa8:	00000213          	li	tp,0
   15aac:	00b00137          	lui	sp,0xb00
   15ab0:	00e000b7          	lui	ra,0xe00
   15ab4:	00000013          	nop
   15ab8:	0220b1b3          	mulhu	gp,ra,sp
   15abc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ac0:	00200293          	li	t0,2
   15ac4:	fe5214e3          	bne	tp,t0,15aac <test_21+0x4>
   15ac8:	0000aeb7          	lui	t4,0xa
   15acc:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15ad0:	01500e13          	li	t3,21
   15ad4:	13d19263          	bne	gp,t4,15bf8 <fail>

00015ad8 <test_22>:
   15ad8:	00000213          	li	tp,0
   15adc:	00b00137          	lui	sp,0xb00
   15ae0:	00f000b7          	lui	ra,0xf00
   15ae4:	00000013          	nop
   15ae8:	00000013          	nop
   15aec:	0220b1b3          	mulhu	gp,ra,sp
   15af0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15af4:	00200293          	li	t0,2
   15af8:	fe5212e3          	bne	tp,t0,15adc <test_22+0x4>
   15afc:	0000aeb7          	lui	t4,0xa
   15b00:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15b04:	01600e13          	li	t3,22
   15b08:	0fd19863          	bne	gp,t4,15bf8 <fail>

00015b0c <test_23>:
   15b0c:	00000213          	li	tp,0
   15b10:	00b00137          	lui	sp,0xb00
   15b14:	00000013          	nop
   15b18:	00d000b7          	lui	ra,0xd00
   15b1c:	0220b1b3          	mulhu	gp,ra,sp
   15b20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15b24:	00200293          	li	t0,2
   15b28:	fe5214e3          	bne	tp,t0,15b10 <test_23+0x4>
   15b2c:	00009eb7          	lui	t4,0x9
   15b30:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15b34:	01700e13          	li	t3,23
   15b38:	0dd19063          	bne	gp,t4,15bf8 <fail>

00015b3c <test_24>:
   15b3c:	00000213          	li	tp,0
   15b40:	00b00137          	lui	sp,0xb00
   15b44:	00000013          	nop
   15b48:	00e000b7          	lui	ra,0xe00
   15b4c:	00000013          	nop
   15b50:	0220b1b3          	mulhu	gp,ra,sp
   15b54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15b58:	00200293          	li	t0,2
   15b5c:	fe5212e3          	bne	tp,t0,15b40 <test_24+0x4>
   15b60:	0000aeb7          	lui	t4,0xa
   15b64:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15b68:	01800e13          	li	t3,24
   15b6c:	09d19663          	bne	gp,t4,15bf8 <fail>

00015b70 <test_25>:
   15b70:	00000213          	li	tp,0
   15b74:	00b00137          	lui	sp,0xb00
   15b78:	00000013          	nop
   15b7c:	00000013          	nop
   15b80:	00f000b7          	lui	ra,0xf00
   15b84:	0220b1b3          	mulhu	gp,ra,sp
   15b88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15b8c:	00200293          	li	t0,2
   15b90:	fe5212e3          	bne	tp,t0,15b74 <test_25+0x4>
   15b94:	0000aeb7          	lui	t4,0xa
   15b98:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15b9c:	01900e13          	li	t3,25
   15ba0:	05d19c63          	bne	gp,t4,15bf8 <fail>

00015ba4 <test_26>:
   15ba4:	7c0000b7          	lui	ra,0x7c000
   15ba8:	02103133          	mulhu	sp,zero,ra
   15bac:	00000e93          	li	t4,0
   15bb0:	01a00e13          	li	t3,26
   15bb4:	05d11263          	bne	sp,t4,15bf8 <fail>

00015bb8 <test_27>:
   15bb8:	800000b7          	lui	ra,0x80000
   15bbc:	0200b133          	mulhu	sp,ra,zero
   15bc0:	00000e93          	li	t4,0
   15bc4:	01b00e13          	li	t3,27
   15bc8:	03d11863          	bne	sp,t4,15bf8 <fail>

00015bcc <test_28>:
   15bcc:	020030b3          	mulhu	ra,zero,zero
   15bd0:	00000e93          	li	t4,0
   15bd4:	01c00e13          	li	t3,28
   15bd8:	03d09063          	bne	ra,t4,15bf8 <fail>

00015bdc <test_29>:
   15bdc:	021000b7          	lui	ra,0x2100
   15be0:	02200137          	lui	sp,0x2200
   15be4:	0220b033          	mulhu	zero,ra,sp
   15be8:	00000e93          	li	t4,0
   15bec:	01d00e13          	li	t3,29
   15bf0:	01d01463          	bne	zero,t4,15bf8 <fail>
   15bf4:	05c01463          	bne	zero,t3,15c3c <pass>

00015bf8 <fail>:
   15bf8:	0ff00513          	li	a0,255

00015bfc <.delay_fail>:
   15bfc:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   15c00:	fe051ee3          	bnez	a0,15bfc <.delay_fail>
   15c04:	02000537          	lui	a0,0x2000
   15c08:	04500593          	li	a1,69
   15c0c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   15c10:	05200613          	li	a2,82
   15c14:	00c52023          	sw	a2,0(a0)
   15c18:	00c52023          	sw	a2,0(a0)
   15c1c:	04f00693          	li	a3,79
   15c20:	00d52023          	sw	a3,0(a0)
   15c24:	00c52023          	sw	a2,0(a0)
   15c28:	00d00713          	li	a4,13
   15c2c:	00e52023          	sw	a4,0(a0)
   15c30:	00a00793          	li	a5,10
   15c34:	00f52023          	sw	a5,0(a0)
   15c38:	d30fa06f          	j	10168 <mulhu_ret>

00015c3c <pass>:
   15c3c:	0ff00513          	li	a0,255

00015c40 <.delay_ok>:
   15c40:	fff50513          	addi	a0,a0,-1
   15c44:	fe051ee3          	bnez	a0,15c40 <.delay_ok>
   15c48:	02000537          	lui	a0,0x2000
   15c4c:	04f00593          	li	a1,79
   15c50:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   15c54:	04b00613          	li	a2,75
   15c58:	00c52023          	sw	a2,0(a0)
   15c5c:	00d00693          	li	a3,13
   15c60:	00d52023          	sw	a3,0(a0)
   15c64:	00a00713          	li	a4,10
   15c68:	00e52023          	sw	a4,0(a0)
   15c6c:	cfcfa06f          	j	10168 <mulhu_ret>

00015c70 <sra>:
   15c70:	0ff00513          	li	a0,255

00015c74 <.delay_pr>:
   15c74:	fff50513          	addi	a0,a0,-1
   15c78:	fe051ee3          	bnez	a0,15c74 <.delay_pr>
   15c7c:	00016537          	lui	a0,0x16
   15c80:	c9c50513          	addi	a0,a0,-868 # 15c9c <.test_name>
   15c84:	02000637          	lui	a2,0x2000

00015c88 <.prname_next>:
   15c88:	00050583          	lb	a1,0(a0)
   15c8c:	00058a63          	beqz	a1,15ca0 <.prname_done>
   15c90:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   15c94:	00150513          	addi	a0,a0,1
   15c98:	ff1ff06f          	j	15c88 <.prname_next>

00015c9c <.test_name>:
   15c9c:	00617273          	csrrci	tp,0x6,2

00015ca0 <.prname_done>:
   15ca0:	02e00593          	li	a1,46
   15ca4:	00b62023          	sw	a1,0(a2)
   15ca8:	00b62023          	sw	a1,0(a2)

00015cac <test_2>:
   15cac:	800000b7          	lui	ra,0x80000
   15cb0:	00000113          	li	sp,0
   15cb4:	4020d1b3          	sra	gp,ra,sp
   15cb8:	80000eb7          	lui	t4,0x80000
   15cbc:	00200e13          	li	t3,2
   15cc0:	59d19463          	bne	gp,t4,16248 <fail>

00015cc4 <test_3>:
   15cc4:	800000b7          	lui	ra,0x80000
   15cc8:	00100113          	li	sp,1
   15ccc:	4020d1b3          	sra	gp,ra,sp
   15cd0:	c0000eb7          	lui	t4,0xc0000
   15cd4:	00300e13          	li	t3,3
   15cd8:	57d19863          	bne	gp,t4,16248 <fail>

00015cdc <test_4>:
   15cdc:	800000b7          	lui	ra,0x80000
   15ce0:	00700113          	li	sp,7
   15ce4:	4020d1b3          	sra	gp,ra,sp
   15ce8:	ff000eb7          	lui	t4,0xff000
   15cec:	00400e13          	li	t3,4
   15cf0:	55d19c63          	bne	gp,t4,16248 <fail>

00015cf4 <test_5>:
   15cf4:	800000b7          	lui	ra,0x80000
   15cf8:	00e00113          	li	sp,14
   15cfc:	4020d1b3          	sra	gp,ra,sp
   15d00:	fffe0eb7          	lui	t4,0xfffe0
   15d04:	00500e13          	li	t3,5
   15d08:	55d19063          	bne	gp,t4,16248 <fail>

00015d0c <test_6>:
   15d0c:	800000b7          	lui	ra,0x80000
   15d10:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   15d14:	01f00113          	li	sp,31
   15d18:	4020d1b3          	sra	gp,ra,sp
   15d1c:	fff00e93          	li	t4,-1
   15d20:	00600e13          	li	t3,6
   15d24:	53d19263          	bne	gp,t4,16248 <fail>

00015d28 <test_7>:
   15d28:	800000b7          	lui	ra,0x80000
   15d2c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15d30:	00000113          	li	sp,0
   15d34:	4020d1b3          	sra	gp,ra,sp
   15d38:	80000eb7          	lui	t4,0x80000
   15d3c:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   15d40:	00700e13          	li	t3,7
   15d44:	51d19263          	bne	gp,t4,16248 <fail>

00015d48 <test_8>:
   15d48:	800000b7          	lui	ra,0x80000
   15d4c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15d50:	00100113          	li	sp,1
   15d54:	4020d1b3          	sra	gp,ra,sp
   15d58:	40000eb7          	lui	t4,0x40000
   15d5c:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe5a43>
   15d60:	00800e13          	li	t3,8
   15d64:	4fd19263          	bne	gp,t4,16248 <fail>

00015d68 <test_9>:
   15d68:	800000b7          	lui	ra,0x80000
   15d6c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15d70:	00700113          	li	sp,7
   15d74:	4020d1b3          	sra	gp,ra,sp
   15d78:	01000eb7          	lui	t4,0x1000
   15d7c:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe5a43>
   15d80:	00900e13          	li	t3,9
   15d84:	4dd19263          	bne	gp,t4,16248 <fail>

00015d88 <test_10>:
   15d88:	800000b7          	lui	ra,0x80000
   15d8c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15d90:	00e00113          	li	sp,14
   15d94:	4020d1b3          	sra	gp,ra,sp
   15d98:	00020eb7          	lui	t4,0x20
   15d9c:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   15da0:	00a00e13          	li	t3,10
   15da4:	4bd19263          	bne	gp,t4,16248 <fail>

00015da8 <test_11>:
   15da8:	800000b7          	lui	ra,0x80000
   15dac:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15db0:	01f00113          	li	sp,31
   15db4:	4020d1b3          	sra	gp,ra,sp
   15db8:	00000e93          	li	t4,0
   15dbc:	00b00e13          	li	t3,11
   15dc0:	49d19463          	bne	gp,t4,16248 <fail>

00015dc4 <test_12>:
   15dc4:	818180b7          	lui	ra,0x81818
   15dc8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15dcc:	00000113          	li	sp,0
   15dd0:	4020d1b3          	sra	gp,ra,sp
   15dd4:	81818eb7          	lui	t4,0x81818
   15dd8:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   15ddc:	00c00e13          	li	t3,12
   15de0:	47d19463          	bne	gp,t4,16248 <fail>

00015de4 <test_13>:
   15de4:	818180b7          	lui	ra,0x81818
   15de8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15dec:	00100113          	li	sp,1
   15df0:	4020d1b3          	sra	gp,ra,sp
   15df4:	c0c0ceb7          	lui	t4,0xc0c0c
   15df8:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   15dfc:	00d00e13          	li	t3,13
   15e00:	45d19463          	bne	gp,t4,16248 <fail>

00015e04 <test_14>:
   15e04:	818180b7          	lui	ra,0x81818
   15e08:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15e0c:	00700113          	li	sp,7
   15e10:	4020d1b3          	sra	gp,ra,sp
   15e14:	ff030eb7          	lui	t4,0xff030
   15e18:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   15e1c:	00e00e13          	li	t3,14
   15e20:	43d19463          	bne	gp,t4,16248 <fail>

00015e24 <test_15>:
   15e24:	818180b7          	lui	ra,0x81818
   15e28:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15e2c:	00e00113          	li	sp,14
   15e30:	4020d1b3          	sra	gp,ra,sp
   15e34:	fffe0eb7          	lui	t4,0xfffe0
   15e38:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   15e3c:	00f00e13          	li	t3,15
   15e40:	41d19463          	bne	gp,t4,16248 <fail>

00015e44 <test_16>:
   15e44:	818180b7          	lui	ra,0x81818
   15e48:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15e4c:	01f00113          	li	sp,31
   15e50:	4020d1b3          	sra	gp,ra,sp
   15e54:	fff00e93          	li	t4,-1
   15e58:	01000e13          	li	t3,16
   15e5c:	3fd19663          	bne	gp,t4,16248 <fail>

00015e60 <test_17>:
   15e60:	818180b7          	lui	ra,0x81818
   15e64:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15e68:	fc000113          	li	sp,-64
   15e6c:	4020d1b3          	sra	gp,ra,sp
   15e70:	81818eb7          	lui	t4,0x81818
   15e74:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   15e78:	01100e13          	li	t3,17
   15e7c:	3dd19663          	bne	gp,t4,16248 <fail>

00015e80 <test_18>:
   15e80:	818180b7          	lui	ra,0x81818
   15e84:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15e88:	fc100113          	li	sp,-63
   15e8c:	4020d1b3          	sra	gp,ra,sp
   15e90:	c0c0ceb7          	lui	t4,0xc0c0c
   15e94:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   15e98:	01200e13          	li	t3,18
   15e9c:	3bd19663          	bne	gp,t4,16248 <fail>

00015ea0 <test_19>:
   15ea0:	818180b7          	lui	ra,0x81818
   15ea4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15ea8:	fc700113          	li	sp,-57
   15eac:	4020d1b3          	sra	gp,ra,sp
   15eb0:	ff030eb7          	lui	t4,0xff030
   15eb4:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   15eb8:	01300e13          	li	t3,19
   15ebc:	39d19663          	bne	gp,t4,16248 <fail>

00015ec0 <test_20>:
   15ec0:	818180b7          	lui	ra,0x81818
   15ec4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15ec8:	fce00113          	li	sp,-50
   15ecc:	4020d1b3          	sra	gp,ra,sp
   15ed0:	fffe0eb7          	lui	t4,0xfffe0
   15ed4:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   15ed8:	01400e13          	li	t3,20
   15edc:	37d19663          	bne	gp,t4,16248 <fail>

00015ee0 <test_21>:
   15ee0:	818180b7          	lui	ra,0x81818
   15ee4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   15ee8:	fff00113          	li	sp,-1
   15eec:	4020d1b3          	sra	gp,ra,sp
   15ef0:	fff00e93          	li	t4,-1
   15ef4:	01500e13          	li	t3,21
   15ef8:	35d19863          	bne	gp,t4,16248 <fail>

00015efc <test_22>:
   15efc:	800000b7          	lui	ra,0x80000
   15f00:	00700113          	li	sp,7
   15f04:	4020d0b3          	sra	ra,ra,sp
   15f08:	ff000eb7          	lui	t4,0xff000
   15f0c:	01600e13          	li	t3,22
   15f10:	33d09c63          	bne	ra,t4,16248 <fail>

00015f14 <test_23>:
   15f14:	800000b7          	lui	ra,0x80000
   15f18:	00e00113          	li	sp,14
   15f1c:	4020d133          	sra	sp,ra,sp
   15f20:	fffe0eb7          	lui	t4,0xfffe0
   15f24:	01700e13          	li	t3,23
   15f28:	33d11063          	bne	sp,t4,16248 <fail>

00015f2c <test_24>:
   15f2c:	00700093          	li	ra,7
   15f30:	4010d0b3          	sra	ra,ra,ra
   15f34:	00000e93          	li	t4,0
   15f38:	01800e13          	li	t3,24
   15f3c:	31d09663          	bne	ra,t4,16248 <fail>

00015f40 <test_25>:
   15f40:	00000213          	li	tp,0
   15f44:	800000b7          	lui	ra,0x80000
   15f48:	00700113          	li	sp,7
   15f4c:	4020d1b3          	sra	gp,ra,sp
   15f50:	00018313          	mv	t1,gp
   15f54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15f58:	00200293          	li	t0,2
   15f5c:	fe5214e3          	bne	tp,t0,15f44 <test_25+0x4>
   15f60:	ff000eb7          	lui	t4,0xff000
   15f64:	01900e13          	li	t3,25
   15f68:	2fd31063          	bne	t1,t4,16248 <fail>

00015f6c <test_26>:
   15f6c:	00000213          	li	tp,0
   15f70:	800000b7          	lui	ra,0x80000
   15f74:	00e00113          	li	sp,14
   15f78:	4020d1b3          	sra	gp,ra,sp
   15f7c:	00000013          	nop
   15f80:	00018313          	mv	t1,gp
   15f84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15f88:	00200293          	li	t0,2
   15f8c:	fe5212e3          	bne	tp,t0,15f70 <test_26+0x4>
   15f90:	fffe0eb7          	lui	t4,0xfffe0
   15f94:	01a00e13          	li	t3,26
   15f98:	2bd31863          	bne	t1,t4,16248 <fail>

00015f9c <test_27>:
   15f9c:	00000213          	li	tp,0
   15fa0:	800000b7          	lui	ra,0x80000
   15fa4:	01f00113          	li	sp,31
   15fa8:	4020d1b3          	sra	gp,ra,sp
   15fac:	00000013          	nop
   15fb0:	00000013          	nop
   15fb4:	00018313          	mv	t1,gp
   15fb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15fbc:	00200293          	li	t0,2
   15fc0:	fe5210e3          	bne	tp,t0,15fa0 <test_27+0x4>
   15fc4:	fff00e93          	li	t4,-1
   15fc8:	01b00e13          	li	t3,27
   15fcc:	27d31e63          	bne	t1,t4,16248 <fail>

00015fd0 <test_28>:
   15fd0:	00000213          	li	tp,0
   15fd4:	800000b7          	lui	ra,0x80000
   15fd8:	00700113          	li	sp,7
   15fdc:	4020d1b3          	sra	gp,ra,sp
   15fe0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15fe4:	00200293          	li	t0,2
   15fe8:	fe5216e3          	bne	tp,t0,15fd4 <test_28+0x4>
   15fec:	ff000eb7          	lui	t4,0xff000
   15ff0:	01c00e13          	li	t3,28
   15ff4:	25d19a63          	bne	gp,t4,16248 <fail>

00015ff8 <test_29>:
   15ff8:	00000213          	li	tp,0
   15ffc:	800000b7          	lui	ra,0x80000
   16000:	00e00113          	li	sp,14
   16004:	00000013          	nop
   16008:	4020d1b3          	sra	gp,ra,sp
   1600c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16010:	00200293          	li	t0,2
   16014:	fe5214e3          	bne	tp,t0,15ffc <test_29+0x4>
   16018:	fffe0eb7          	lui	t4,0xfffe0
   1601c:	01d00e13          	li	t3,29
   16020:	23d19463          	bne	gp,t4,16248 <fail>

00016024 <test_30>:
   16024:	00000213          	li	tp,0
   16028:	800000b7          	lui	ra,0x80000
   1602c:	01f00113          	li	sp,31
   16030:	00000013          	nop
   16034:	00000013          	nop
   16038:	4020d1b3          	sra	gp,ra,sp
   1603c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16040:	00200293          	li	t0,2
   16044:	fe5212e3          	bne	tp,t0,16028 <test_30+0x4>
   16048:	fff00e93          	li	t4,-1
   1604c:	01e00e13          	li	t3,30
   16050:	1fd19c63          	bne	gp,t4,16248 <fail>

00016054 <test_31>:
   16054:	00000213          	li	tp,0
   16058:	800000b7          	lui	ra,0x80000
   1605c:	00000013          	nop
   16060:	00700113          	li	sp,7
   16064:	4020d1b3          	sra	gp,ra,sp
   16068:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1606c:	00200293          	li	t0,2
   16070:	fe5214e3          	bne	tp,t0,16058 <test_31+0x4>
   16074:	ff000eb7          	lui	t4,0xff000
   16078:	01f00e13          	li	t3,31
   1607c:	1dd19663          	bne	gp,t4,16248 <fail>

00016080 <test_32>:
   16080:	00000213          	li	tp,0
   16084:	800000b7          	lui	ra,0x80000
   16088:	00000013          	nop
   1608c:	00e00113          	li	sp,14
   16090:	00000013          	nop
   16094:	4020d1b3          	sra	gp,ra,sp
   16098:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1609c:	00200293          	li	t0,2
   160a0:	fe5212e3          	bne	tp,t0,16084 <test_32+0x4>
   160a4:	fffe0eb7          	lui	t4,0xfffe0
   160a8:	02000e13          	li	t3,32
   160ac:	19d19e63          	bne	gp,t4,16248 <fail>

000160b0 <test_33>:
   160b0:	00000213          	li	tp,0
   160b4:	800000b7          	lui	ra,0x80000
   160b8:	00000013          	nop
   160bc:	00000013          	nop
   160c0:	01f00113          	li	sp,31
   160c4:	4020d1b3          	sra	gp,ra,sp
   160c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   160cc:	00200293          	li	t0,2
   160d0:	fe5212e3          	bne	tp,t0,160b4 <test_33+0x4>
   160d4:	fff00e93          	li	t4,-1
   160d8:	02100e13          	li	t3,33
   160dc:	17d19663          	bne	gp,t4,16248 <fail>

000160e0 <test_34>:
   160e0:	00000213          	li	tp,0
   160e4:	00700113          	li	sp,7
   160e8:	800000b7          	lui	ra,0x80000
   160ec:	4020d1b3          	sra	gp,ra,sp
   160f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   160f4:	00200293          	li	t0,2
   160f8:	fe5216e3          	bne	tp,t0,160e4 <test_34+0x4>
   160fc:	ff000eb7          	lui	t4,0xff000
   16100:	02200e13          	li	t3,34
   16104:	15d19263          	bne	gp,t4,16248 <fail>

00016108 <test_35>:
   16108:	00000213          	li	tp,0
   1610c:	00e00113          	li	sp,14
   16110:	800000b7          	lui	ra,0x80000
   16114:	00000013          	nop
   16118:	4020d1b3          	sra	gp,ra,sp
   1611c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16120:	00200293          	li	t0,2
   16124:	fe5214e3          	bne	tp,t0,1610c <test_35+0x4>
   16128:	fffe0eb7          	lui	t4,0xfffe0
   1612c:	02300e13          	li	t3,35
   16130:	11d19c63          	bne	gp,t4,16248 <fail>

00016134 <test_36>:
   16134:	00000213          	li	tp,0
   16138:	01f00113          	li	sp,31
   1613c:	800000b7          	lui	ra,0x80000
   16140:	00000013          	nop
   16144:	00000013          	nop
   16148:	4020d1b3          	sra	gp,ra,sp
   1614c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16150:	00200293          	li	t0,2
   16154:	fe5212e3          	bne	tp,t0,16138 <test_36+0x4>
   16158:	fff00e93          	li	t4,-1
   1615c:	02400e13          	li	t3,36
   16160:	0fd19463          	bne	gp,t4,16248 <fail>

00016164 <test_37>:
   16164:	00000213          	li	tp,0
   16168:	00700113          	li	sp,7
   1616c:	00000013          	nop
   16170:	800000b7          	lui	ra,0x80000
   16174:	4020d1b3          	sra	gp,ra,sp
   16178:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1617c:	00200293          	li	t0,2
   16180:	fe5214e3          	bne	tp,t0,16168 <test_37+0x4>
   16184:	ff000eb7          	lui	t4,0xff000
   16188:	02500e13          	li	t3,37
   1618c:	0bd19e63          	bne	gp,t4,16248 <fail>

00016190 <test_38>:
   16190:	00000213          	li	tp,0
   16194:	00e00113          	li	sp,14
   16198:	00000013          	nop
   1619c:	800000b7          	lui	ra,0x80000
   161a0:	00000013          	nop
   161a4:	4020d1b3          	sra	gp,ra,sp
   161a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161ac:	00200293          	li	t0,2
   161b0:	fe5212e3          	bne	tp,t0,16194 <test_38+0x4>
   161b4:	fffe0eb7          	lui	t4,0xfffe0
   161b8:	02600e13          	li	t3,38
   161bc:	09d19663          	bne	gp,t4,16248 <fail>

000161c0 <test_39>:
   161c0:	00000213          	li	tp,0
   161c4:	01f00113          	li	sp,31
   161c8:	00000013          	nop
   161cc:	00000013          	nop
   161d0:	800000b7          	lui	ra,0x80000
   161d4:	4020d1b3          	sra	gp,ra,sp
   161d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161dc:	00200293          	li	t0,2
   161e0:	fe5212e3          	bne	tp,t0,161c4 <test_39+0x4>
   161e4:	fff00e93          	li	t4,-1
   161e8:	02700e13          	li	t3,39
   161ec:	05d19e63          	bne	gp,t4,16248 <fail>

000161f0 <test_40>:
   161f0:	00f00093          	li	ra,15
   161f4:	40105133          	sra	sp,zero,ra
   161f8:	00000e93          	li	t4,0
   161fc:	02800e13          	li	t3,40
   16200:	05d11463          	bne	sp,t4,16248 <fail>

00016204 <test_41>:
   16204:	02000093          	li	ra,32
   16208:	4000d133          	sra	sp,ra,zero
   1620c:	02000e93          	li	t4,32
   16210:	02900e13          	li	t3,41
   16214:	03d11a63          	bne	sp,t4,16248 <fail>

00016218 <test_42>:
   16218:	400050b3          	sra	ra,zero,zero
   1621c:	00000e93          	li	t4,0
   16220:	02a00e13          	li	t3,42
   16224:	03d09263          	bne	ra,t4,16248 <fail>

00016228 <test_43>:
   16228:	40000093          	li	ra,1024
   1622c:	00001137          	lui	sp,0x1
   16230:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   16234:	4020d033          	sra	zero,ra,sp
   16238:	00000e93          	li	t4,0
   1623c:	02b00e13          	li	t3,43
   16240:	01d01463          	bne	zero,t4,16248 <fail>
   16244:	05c01463          	bne	zero,t3,1628c <pass>

00016248 <fail>:
   16248:	0ff00513          	li	a0,255

0001624c <.delay_fail>:
   1624c:	fff50513          	addi	a0,a0,-1
   16250:	fe051ee3          	bnez	a0,1624c <.delay_fail>
   16254:	02000537          	lui	a0,0x2000
   16258:	04500593          	li	a1,69
   1625c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   16260:	05200613          	li	a2,82
   16264:	00c52023          	sw	a2,0(a0)
   16268:	00c52023          	sw	a2,0(a0)
   1626c:	04f00693          	li	a3,79
   16270:	00d52023          	sw	a3,0(a0)
   16274:	00c52023          	sw	a2,0(a0)
   16278:	00d00713          	li	a4,13
   1627c:	00e52023          	sw	a4,0(a0)
   16280:	00a00793          	li	a5,10
   16284:	00f52023          	sw	a5,0(a0)
   16288:	ecdf906f          	j	10154 <sra_ret>

0001628c <pass>:
   1628c:	0ff00513          	li	a0,255

00016290 <.delay_ok>:
   16290:	fff50513          	addi	a0,a0,-1
   16294:	fe051ee3          	bnez	a0,16290 <.delay_ok>
   16298:	02000537          	lui	a0,0x2000
   1629c:	04f00593          	li	a1,79
   162a0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   162a4:	04b00613          	li	a2,75
   162a8:	00c52023          	sw	a2,0(a0)
   162ac:	00d00693          	li	a3,13
   162b0:	00d52023          	sw	a3,0(a0)
   162b4:	00a00713          	li	a4,10
   162b8:	00e52023          	sw	a4,0(a0)
   162bc:	e99f906f          	j	10154 <sra_ret>

000162c0 <srl>:
   162c0:	0ff00513          	li	a0,255

000162c4 <.delay_pr>:
   162c4:	fff50513          	addi	a0,a0,-1
   162c8:	fe051ee3          	bnez	a0,162c4 <.delay_pr>
   162cc:	00016537          	lui	a0,0x16
   162d0:	2ec50513          	addi	a0,a0,748 # 162ec <.test_name>
   162d4:	02000637          	lui	a2,0x2000

000162d8 <.prname_next>:
   162d8:	00050583          	lb	a1,0(a0)
   162dc:	00058a63          	beqz	a1,162f0 <.prname_done>
   162e0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   162e4:	00150513          	addi	a0,a0,1
   162e8:	ff1ff06f          	j	162d8 <.prname_next>

000162ec <.test_name>:
   162ec:	006c7273          	csrrci	tp,0x6,24

000162f0 <.prname_done>:
   162f0:	02e00593          	li	a1,46
   162f4:	00b62023          	sw	a1,0(a2)
   162f8:	00b62023          	sw	a1,0(a2)

000162fc <test_2>:
   162fc:	ffff80b7          	lui	ra,0xffff8
   16300:	00000113          	li	sp,0
   16304:	0020d1b3          	srl	gp,ra,sp
   16308:	ffff8eb7          	lui	t4,0xffff8
   1630c:	00200e13          	li	t3,2
   16310:	5bd19463          	bne	gp,t4,168b8 <fail>

00016314 <test_3>:
   16314:	ffff80b7          	lui	ra,0xffff8
   16318:	00100113          	li	sp,1
   1631c:	0020d1b3          	srl	gp,ra,sp
   16320:	7fffceb7          	lui	t4,0x7fffc
   16324:	00300e13          	li	t3,3
   16328:	59d19863          	bne	gp,t4,168b8 <fail>

0001632c <test_4>:
   1632c:	ffff80b7          	lui	ra,0xffff8
   16330:	00700113          	li	sp,7
   16334:	0020d1b3          	srl	gp,ra,sp
   16338:	02000eb7          	lui	t4,0x2000
   1633c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5944>
   16340:	00400e13          	li	t3,4
   16344:	57d19a63          	bne	gp,t4,168b8 <fail>

00016348 <test_5>:
   16348:	ffff80b7          	lui	ra,0xffff8
   1634c:	00e00113          	li	sp,14
   16350:	0020d1b3          	srl	gp,ra,sp
   16354:	00040eb7          	lui	t4,0x40
   16358:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25a42>
   1635c:	00500e13          	li	t3,5
   16360:	55d19c63          	bne	gp,t4,168b8 <fail>

00016364 <test_6>:
   16364:	ffff80b7          	lui	ra,0xffff8
   16368:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   1636c:	00f00113          	li	sp,15
   16370:	0020d1b3          	srl	gp,ra,sp
   16374:	00020eb7          	lui	t4,0x20
   16378:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   1637c:	00600e13          	li	t3,6
   16380:	53d19c63          	bne	gp,t4,168b8 <fail>

00016384 <test_7>:
   16384:	fff00093          	li	ra,-1
   16388:	00000113          	li	sp,0
   1638c:	0020d1b3          	srl	gp,ra,sp
   16390:	fff00e93          	li	t4,-1
   16394:	00700e13          	li	t3,7
   16398:	53d19063          	bne	gp,t4,168b8 <fail>

0001639c <test_8>:
   1639c:	fff00093          	li	ra,-1
   163a0:	00100113          	li	sp,1
   163a4:	0020d1b3          	srl	gp,ra,sp
   163a8:	80000eb7          	lui	t4,0x80000
   163ac:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   163b0:	00800e13          	li	t3,8
   163b4:	51d19263          	bne	gp,t4,168b8 <fail>

000163b8 <test_9>:
   163b8:	fff00093          	li	ra,-1
   163bc:	00700113          	li	sp,7
   163c0:	0020d1b3          	srl	gp,ra,sp
   163c4:	02000eb7          	lui	t4,0x2000
   163c8:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe5a43>
   163cc:	00900e13          	li	t3,9
   163d0:	4fd19463          	bne	gp,t4,168b8 <fail>

000163d4 <test_10>:
   163d4:	fff00093          	li	ra,-1
   163d8:	00e00113          	li	sp,14
   163dc:	0020d1b3          	srl	gp,ra,sp
   163e0:	00040eb7          	lui	t4,0x40
   163e4:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x25a43>
   163e8:	00a00e13          	li	t3,10
   163ec:	4dd19663          	bne	gp,t4,168b8 <fail>

000163f0 <test_11>:
   163f0:	fff00093          	li	ra,-1
   163f4:	01f00113          	li	sp,31
   163f8:	0020d1b3          	srl	gp,ra,sp
   163fc:	00100e93          	li	t4,1
   16400:	00b00e13          	li	t3,11
   16404:	4bd19a63          	bne	gp,t4,168b8 <fail>

00016408 <test_12>:
   16408:	212120b7          	lui	ra,0x21212
   1640c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   16410:	00000113          	li	sp,0
   16414:	0020d1b3          	srl	gp,ra,sp
   16418:	21212eb7          	lui	t4,0x21212
   1641c:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7b65>
   16420:	00c00e13          	li	t3,12
   16424:	49d19a63          	bne	gp,t4,168b8 <fail>

00016428 <test_13>:
   16428:	212120b7          	lui	ra,0x21212
   1642c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   16430:	00100113          	li	sp,1
   16434:	0020d1b3          	srl	gp,ra,sp
   16438:	10909eb7          	lui	t4,0x10909
   1643c:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eead4>
   16440:	00d00e13          	li	t3,13
   16444:	47d19a63          	bne	gp,t4,168b8 <fail>

00016448 <test_14>:
   16448:	212120b7          	lui	ra,0x21212
   1644c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   16450:	00700113          	li	sp,7
   16454:	0020d1b3          	srl	gp,ra,sp
   16458:	00424eb7          	lui	t4,0x424
   1645c:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c86>
   16460:	00e00e13          	li	t3,14
   16464:	45d19a63          	bne	gp,t4,168b8 <fail>

00016468 <test_15>:
   16468:	212120b7          	lui	ra,0x21212
   1646c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   16470:	00e00113          	li	sp,14
   16474:	0020d1b3          	srl	gp,ra,sp
   16478:	00008eb7          	lui	t4,0x8
   1647c:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   16480:	00f00e13          	li	t3,15
   16484:	43d19a63          	bne	gp,t4,168b8 <fail>

00016488 <test_16>:
   16488:	212120b7          	lui	ra,0x21212
   1648c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   16490:	01f00113          	li	sp,31
   16494:	0020d1b3          	srl	gp,ra,sp
   16498:	00000e93          	li	t4,0
   1649c:	01000e13          	li	t3,16
   164a0:	41d19c63          	bne	gp,t4,168b8 <fail>

000164a4 <test_17>:
   164a4:	212120b7          	lui	ra,0x21212
   164a8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   164ac:	fe000113          	li	sp,-32
   164b0:	0020d1b3          	srl	gp,ra,sp
   164b4:	21212eb7          	lui	t4,0x21212
   164b8:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7b65>
   164bc:	01100e13          	li	t3,17
   164c0:	3fd19c63          	bne	gp,t4,168b8 <fail>

000164c4 <test_18>:
   164c4:	212120b7          	lui	ra,0x21212
   164c8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   164cc:	fe100113          	li	sp,-31
   164d0:	0020d1b3          	srl	gp,ra,sp
   164d4:	10909eb7          	lui	t4,0x10909
   164d8:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eead4>
   164dc:	01200e13          	li	t3,18
   164e0:	3dd19c63          	bne	gp,t4,168b8 <fail>

000164e4 <test_19>:
   164e4:	212120b7          	lui	ra,0x21212
   164e8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   164ec:	fe700113          	li	sp,-25
   164f0:	0020d1b3          	srl	gp,ra,sp
   164f4:	00424eb7          	lui	t4,0x424
   164f8:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c86>
   164fc:	01300e13          	li	t3,19
   16500:	3bd19c63          	bne	gp,t4,168b8 <fail>

00016504 <test_20>:
   16504:	212120b7          	lui	ra,0x21212
   16508:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   1650c:	fee00113          	li	sp,-18
   16510:	0020d1b3          	srl	gp,ra,sp
   16514:	00008eb7          	lui	t4,0x8
   16518:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   1651c:	01400e13          	li	t3,20
   16520:	39d19c63          	bne	gp,t4,168b8 <fail>

00016524 <test_21>:
   16524:	212120b7          	lui	ra,0x21212
   16528:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   1652c:	fff00113          	li	sp,-1
   16530:	0020d1b3          	srl	gp,ra,sp
   16534:	00000e93          	li	t4,0
   16538:	01500e13          	li	t3,21
   1653c:	37d19e63          	bne	gp,t4,168b8 <fail>

00016540 <test_22>:
   16540:	ffff80b7          	lui	ra,0xffff8
   16544:	00100113          	li	sp,1
   16548:	0020d0b3          	srl	ra,ra,sp
   1654c:	7fffceb7          	lui	t4,0x7fffc
   16550:	01600e13          	li	t3,22
   16554:	37d09263          	bne	ra,t4,168b8 <fail>

00016558 <test_23>:
   16558:	ffff80b7          	lui	ra,0xffff8
   1655c:	00e00113          	li	sp,14
   16560:	0020d133          	srl	sp,ra,sp
   16564:	00040eb7          	lui	t4,0x40
   16568:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25a42>
   1656c:	01700e13          	li	t3,23
   16570:	35d11463          	bne	sp,t4,168b8 <fail>

00016574 <test_24>:
   16574:	00700093          	li	ra,7
   16578:	0010d0b3          	srl	ra,ra,ra
   1657c:	00000e93          	li	t4,0
   16580:	01800e13          	li	t3,24
   16584:	33d09a63          	bne	ra,t4,168b8 <fail>

00016588 <test_25>:
   16588:	00000213          	li	tp,0
   1658c:	ffff80b7          	lui	ra,0xffff8
   16590:	00100113          	li	sp,1
   16594:	0020d1b3          	srl	gp,ra,sp
   16598:	00018313          	mv	t1,gp
   1659c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   165a0:	00200293          	li	t0,2
   165a4:	fe5214e3          	bne	tp,t0,1658c <test_25+0x4>
   165a8:	7fffceb7          	lui	t4,0x7fffc
   165ac:	01900e13          	li	t3,25
   165b0:	31d31463          	bne	t1,t4,168b8 <fail>

000165b4 <test_26>:
   165b4:	00000213          	li	tp,0
   165b8:	ffff80b7          	lui	ra,0xffff8
   165bc:	00e00113          	li	sp,14
   165c0:	0020d1b3          	srl	gp,ra,sp
   165c4:	00000013          	nop
   165c8:	00018313          	mv	t1,gp
   165cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   165d0:	00200293          	li	t0,2
   165d4:	fe5212e3          	bne	tp,t0,165b8 <test_26+0x4>
   165d8:	00040eb7          	lui	t4,0x40
   165dc:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x25a42>
   165e0:	01a00e13          	li	t3,26
   165e4:	2dd31a63          	bne	t1,t4,168b8 <fail>

000165e8 <test_27>:
   165e8:	00000213          	li	tp,0
   165ec:	ffff80b7          	lui	ra,0xffff8
   165f0:	00f00113          	li	sp,15
   165f4:	0020d1b3          	srl	gp,ra,sp
   165f8:	00000013          	nop
   165fc:	00000013          	nop
   16600:	00018313          	mv	t1,gp
   16604:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16608:	00200293          	li	t0,2
   1660c:	fe5210e3          	bne	tp,t0,165ec <test_27+0x4>
   16610:	00020eb7          	lui	t4,0x20
   16614:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   16618:	01b00e13          	li	t3,27
   1661c:	29d31e63          	bne	t1,t4,168b8 <fail>

00016620 <test_28>:
   16620:	00000213          	li	tp,0
   16624:	ffff80b7          	lui	ra,0xffff8
   16628:	00100113          	li	sp,1
   1662c:	0020d1b3          	srl	gp,ra,sp
   16630:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16634:	00200293          	li	t0,2
   16638:	fe5216e3          	bne	tp,t0,16624 <test_28+0x4>
   1663c:	7fffceb7          	lui	t4,0x7fffc
   16640:	01c00e13          	li	t3,28
   16644:	27d19a63          	bne	gp,t4,168b8 <fail>

00016648 <test_29>:
   16648:	00000213          	li	tp,0
   1664c:	ffff80b7          	lui	ra,0xffff8
   16650:	00700113          	li	sp,7
   16654:	00000013          	nop
   16658:	0020d1b3          	srl	gp,ra,sp
   1665c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16660:	00200293          	li	t0,2
   16664:	fe5214e3          	bne	tp,t0,1664c <test_29+0x4>
   16668:	02000eb7          	lui	t4,0x2000
   1666c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5944>
   16670:	01d00e13          	li	t3,29
   16674:	25d19263          	bne	gp,t4,168b8 <fail>

00016678 <test_30>:
   16678:	00000213          	li	tp,0
   1667c:	ffff80b7          	lui	ra,0xffff8
   16680:	00f00113          	li	sp,15
   16684:	00000013          	nop
   16688:	00000013          	nop
   1668c:	0020d1b3          	srl	gp,ra,sp
   16690:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16694:	00200293          	li	t0,2
   16698:	fe5212e3          	bne	tp,t0,1667c <test_30+0x4>
   1669c:	00020eb7          	lui	t4,0x20
   166a0:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   166a4:	01e00e13          	li	t3,30
   166a8:	21d19863          	bne	gp,t4,168b8 <fail>

000166ac <test_31>:
   166ac:	00000213          	li	tp,0
   166b0:	ffff80b7          	lui	ra,0xffff8
   166b4:	00000013          	nop
   166b8:	00100113          	li	sp,1
   166bc:	0020d1b3          	srl	gp,ra,sp
   166c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   166c4:	00200293          	li	t0,2
   166c8:	fe5214e3          	bne	tp,t0,166b0 <test_31+0x4>
   166cc:	7fffceb7          	lui	t4,0x7fffc
   166d0:	01f00e13          	li	t3,31
   166d4:	1fd19263          	bne	gp,t4,168b8 <fail>

000166d8 <test_32>:
   166d8:	00000213          	li	tp,0
   166dc:	ffff80b7          	lui	ra,0xffff8
   166e0:	00000013          	nop
   166e4:	00700113          	li	sp,7
   166e8:	00000013          	nop
   166ec:	0020d1b3          	srl	gp,ra,sp
   166f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   166f4:	00200293          	li	t0,2
   166f8:	fe5212e3          	bne	tp,t0,166dc <test_32+0x4>
   166fc:	02000eb7          	lui	t4,0x2000
   16700:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5944>
   16704:	02000e13          	li	t3,32
   16708:	1bd19863          	bne	gp,t4,168b8 <fail>

0001670c <test_33>:
   1670c:	00000213          	li	tp,0
   16710:	ffff80b7          	lui	ra,0xffff8
   16714:	00000013          	nop
   16718:	00000013          	nop
   1671c:	00f00113          	li	sp,15
   16720:	0020d1b3          	srl	gp,ra,sp
   16724:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16728:	00200293          	li	t0,2
   1672c:	fe5212e3          	bne	tp,t0,16710 <test_33+0x4>
   16730:	00020eb7          	lui	t4,0x20
   16734:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   16738:	02100e13          	li	t3,33
   1673c:	17d19e63          	bne	gp,t4,168b8 <fail>

00016740 <test_34>:
   16740:	00000213          	li	tp,0
   16744:	00100113          	li	sp,1
   16748:	ffff80b7          	lui	ra,0xffff8
   1674c:	0020d1b3          	srl	gp,ra,sp
   16750:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16754:	00200293          	li	t0,2
   16758:	fe5216e3          	bne	tp,t0,16744 <test_34+0x4>
   1675c:	7fffceb7          	lui	t4,0x7fffc
   16760:	02200e13          	li	t3,34
   16764:	15d19a63          	bne	gp,t4,168b8 <fail>

00016768 <test_35>:
   16768:	00000213          	li	tp,0
   1676c:	00700113          	li	sp,7
   16770:	ffff80b7          	lui	ra,0xffff8
   16774:	00000013          	nop
   16778:	0020d1b3          	srl	gp,ra,sp
   1677c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16780:	00200293          	li	t0,2
   16784:	fe5214e3          	bne	tp,t0,1676c <test_35+0x4>
   16788:	02000eb7          	lui	t4,0x2000
   1678c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5944>
   16790:	02300e13          	li	t3,35
   16794:	13d19263          	bne	gp,t4,168b8 <fail>

00016798 <test_36>:
   16798:	00000213          	li	tp,0
   1679c:	00f00113          	li	sp,15
   167a0:	ffff80b7          	lui	ra,0xffff8
   167a4:	00000013          	nop
   167a8:	00000013          	nop
   167ac:	0020d1b3          	srl	gp,ra,sp
   167b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   167b4:	00200293          	li	t0,2
   167b8:	fe5212e3          	bne	tp,t0,1679c <test_36+0x4>
   167bc:	00020eb7          	lui	t4,0x20
   167c0:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   167c4:	02400e13          	li	t3,36
   167c8:	0fd19863          	bne	gp,t4,168b8 <fail>

000167cc <test_37>:
   167cc:	00000213          	li	tp,0
   167d0:	00100113          	li	sp,1
   167d4:	00000013          	nop
   167d8:	ffff80b7          	lui	ra,0xffff8
   167dc:	0020d1b3          	srl	gp,ra,sp
   167e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   167e4:	00200293          	li	t0,2
   167e8:	fe5214e3          	bne	tp,t0,167d0 <test_37+0x4>
   167ec:	7fffceb7          	lui	t4,0x7fffc
   167f0:	02500e13          	li	t3,37
   167f4:	0dd19263          	bne	gp,t4,168b8 <fail>

000167f8 <test_38>:
   167f8:	00000213          	li	tp,0
   167fc:	00700113          	li	sp,7
   16800:	00000013          	nop
   16804:	ffff80b7          	lui	ra,0xffff8
   16808:	00000013          	nop
   1680c:	0020d1b3          	srl	gp,ra,sp
   16810:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16814:	00200293          	li	t0,2
   16818:	fe5212e3          	bne	tp,t0,167fc <test_38+0x4>
   1681c:	02000eb7          	lui	t4,0x2000
   16820:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe5944>
   16824:	02600e13          	li	t3,38
   16828:	09d19863          	bne	gp,t4,168b8 <fail>

0001682c <test_39>:
   1682c:	00000213          	li	tp,0
   16830:	00f00113          	li	sp,15
   16834:	00000013          	nop
   16838:	00000013          	nop
   1683c:	ffff80b7          	lui	ra,0xffff8
   16840:	0020d1b3          	srl	gp,ra,sp
   16844:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16848:	00200293          	li	t0,2
   1684c:	fe5212e3          	bne	tp,t0,16830 <test_39+0x4>
   16850:	00020eb7          	lui	t4,0x20
   16854:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x5a43>
   16858:	02700e13          	li	t3,39
   1685c:	05d19e63          	bne	gp,t4,168b8 <fail>

00016860 <test_40>:
   16860:	00f00093          	li	ra,15
   16864:	00105133          	srl	sp,zero,ra
   16868:	00000e93          	li	t4,0
   1686c:	02800e13          	li	t3,40
   16870:	05d11463          	bne	sp,t4,168b8 <fail>

00016874 <test_41>:
   16874:	02000093          	li	ra,32
   16878:	0000d133          	srl	sp,ra,zero
   1687c:	02000e93          	li	t4,32
   16880:	02900e13          	li	t3,41
   16884:	03d11a63          	bne	sp,t4,168b8 <fail>

00016888 <test_42>:
   16888:	000050b3          	srl	ra,zero,zero
   1688c:	00000e93          	li	t4,0
   16890:	02a00e13          	li	t3,42
   16894:	03d09263          	bne	ra,t4,168b8 <fail>

00016898 <test_43>:
   16898:	40000093          	li	ra,1024
   1689c:	00001137          	lui	sp,0x1
   168a0:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   168a4:	0020d033          	srl	zero,ra,sp
   168a8:	00000e93          	li	t4,0
   168ac:	02b00e13          	li	t3,43
   168b0:	01d01463          	bne	zero,t4,168b8 <fail>
   168b4:	05c01463          	bne	zero,t3,168fc <pass>

000168b8 <fail>:
   168b8:	0ff00513          	li	a0,255

000168bc <.delay_fail>:
   168bc:	fff50513          	addi	a0,a0,-1
   168c0:	fe051ee3          	bnez	a0,168bc <.delay_fail>
   168c4:	02000537          	lui	a0,0x2000
   168c8:	04500593          	li	a1,69
   168cc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   168d0:	05200613          	li	a2,82
   168d4:	00c52023          	sw	a2,0(a0)
   168d8:	00c52023          	sw	a2,0(a0)
   168dc:	04f00693          	li	a3,79
   168e0:	00d52023          	sw	a3,0(a0)
   168e4:	00c52023          	sw	a2,0(a0)
   168e8:	00d00713          	li	a4,13
   168ec:	00e52023          	sw	a4,0(a0)
   168f0:	00a00793          	li	a5,10
   168f4:	00f52023          	sw	a5,0(a0)
   168f8:	859f906f          	j	10150 <srl_ret>

000168fc <pass>:
   168fc:	0ff00513          	li	a0,255

00016900 <.delay_ok>:
   16900:	fff50513          	addi	a0,a0,-1
   16904:	fe051ee3          	bnez	a0,16900 <.delay_ok>
   16908:	02000537          	lui	a0,0x2000
   1690c:	04f00593          	li	a1,79
   16910:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   16914:	04b00613          	li	a2,75
   16918:	00c52023          	sw	a2,0(a0)
   1691c:	00d00693          	li	a3,13
   16920:	00d52023          	sw	a3,0(a0)
   16924:	00a00713          	li	a4,10
   16928:	00e52023          	sw	a4,0(a0)
   1692c:	825f906f          	j	10150 <srl_ret>

00016930 <slt>:
   16930:	0ff00513          	li	a0,255

00016934 <.delay_pr>:
   16934:	fff50513          	addi	a0,a0,-1
   16938:	fe051ee3          	bnez	a0,16934 <.delay_pr>
   1693c:	00017537          	lui	a0,0x17
   16940:	95c50513          	addi	a0,a0,-1700 # 1695c <.test_name>
   16944:	02000637          	lui	a2,0x2000

00016948 <.prname_next>:
   16948:	00050583          	lb	a1,0(a0)
   1694c:	00058a63          	beqz	a1,16960 <.prname_done>
   16950:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   16954:	00150513          	addi	a0,a0,1
   16958:	ff1ff06f          	j	16948 <.prname_next>

0001695c <.test_name>:
   1695c:	00746c73          	csrrsi	s8,0x7,8

00016960 <.prname_done>:
   16960:	02e00593          	li	a1,46
   16964:	00b62023          	sw	a1,0(a2)
   16968:	00b62023          	sw	a1,0(a2)

0001696c <test_2>:
   1696c:	00000093          	li	ra,0
   16970:	00000113          	li	sp,0
   16974:	0020a1b3          	slt	gp,ra,sp
   16978:	00000e93          	li	t4,0
   1697c:	00200e13          	li	t3,2
   16980:	4bd19a63          	bne	gp,t4,16e34 <fail>

00016984 <test_3>:
   16984:	00100093          	li	ra,1
   16988:	00100113          	li	sp,1
   1698c:	0020a1b3          	slt	gp,ra,sp
   16990:	00000e93          	li	t4,0
   16994:	00300e13          	li	t3,3
   16998:	49d19e63          	bne	gp,t4,16e34 <fail>

0001699c <test_4>:
   1699c:	00300093          	li	ra,3
   169a0:	00700113          	li	sp,7
   169a4:	0020a1b3          	slt	gp,ra,sp
   169a8:	00100e93          	li	t4,1
   169ac:	00400e13          	li	t3,4
   169b0:	49d19263          	bne	gp,t4,16e34 <fail>

000169b4 <test_5>:
   169b4:	00700093          	li	ra,7
   169b8:	00300113          	li	sp,3
   169bc:	0020a1b3          	slt	gp,ra,sp
   169c0:	00000e93          	li	t4,0
   169c4:	00500e13          	li	t3,5
   169c8:	47d19663          	bne	gp,t4,16e34 <fail>

000169cc <test_6>:
   169cc:	00000093          	li	ra,0
   169d0:	ffff8137          	lui	sp,0xffff8
   169d4:	0020a1b3          	slt	gp,ra,sp
   169d8:	00000e93          	li	t4,0
   169dc:	00600e13          	li	t3,6
   169e0:	45d19a63          	bne	gp,t4,16e34 <fail>

000169e4 <test_7>:
   169e4:	800000b7          	lui	ra,0x80000
   169e8:	00000113          	li	sp,0
   169ec:	0020a1b3          	slt	gp,ra,sp
   169f0:	00100e93          	li	t4,1
   169f4:	00700e13          	li	t3,7
   169f8:	43d19e63          	bne	gp,t4,16e34 <fail>

000169fc <test_8>:
   169fc:	800000b7          	lui	ra,0x80000
   16a00:	ffff8137          	lui	sp,0xffff8
   16a04:	0020a1b3          	slt	gp,ra,sp
   16a08:	00100e93          	li	t4,1
   16a0c:	00800e13          	li	t3,8
   16a10:	43d19263          	bne	gp,t4,16e34 <fail>

00016a14 <test_9>:
   16a14:	00000093          	li	ra,0
   16a18:	00008137          	lui	sp,0x8
   16a1c:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   16a20:	0020a1b3          	slt	gp,ra,sp
   16a24:	00100e93          	li	t4,1
   16a28:	00900e13          	li	t3,9
   16a2c:	41d19463          	bne	gp,t4,16e34 <fail>

00016a30 <test_10>:
   16a30:	800000b7          	lui	ra,0x80000
   16a34:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   16a38:	00000113          	li	sp,0
   16a3c:	0020a1b3          	slt	gp,ra,sp
   16a40:	00000e93          	li	t4,0
   16a44:	00a00e13          	li	t3,10
   16a48:	3fd19663          	bne	gp,t4,16e34 <fail>

00016a4c <test_11>:
   16a4c:	800000b7          	lui	ra,0x80000
   16a50:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   16a54:	00008137          	lui	sp,0x8
   16a58:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   16a5c:	0020a1b3          	slt	gp,ra,sp
   16a60:	00000e93          	li	t4,0
   16a64:	00b00e13          	li	t3,11
   16a68:	3dd19663          	bne	gp,t4,16e34 <fail>

00016a6c <test_12>:
   16a6c:	800000b7          	lui	ra,0x80000
   16a70:	00008137          	lui	sp,0x8
   16a74:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   16a78:	0020a1b3          	slt	gp,ra,sp
   16a7c:	00100e93          	li	t4,1
   16a80:	00c00e13          	li	t3,12
   16a84:	3bd19863          	bne	gp,t4,16e34 <fail>

00016a88 <test_13>:
   16a88:	800000b7          	lui	ra,0x80000
   16a8c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   16a90:	ffff8137          	lui	sp,0xffff8
   16a94:	0020a1b3          	slt	gp,ra,sp
   16a98:	00000e93          	li	t4,0
   16a9c:	00d00e13          	li	t3,13
   16aa0:	39d19a63          	bne	gp,t4,16e34 <fail>

00016aa4 <test_14>:
   16aa4:	00000093          	li	ra,0
   16aa8:	fff00113          	li	sp,-1
   16aac:	0020a1b3          	slt	gp,ra,sp
   16ab0:	00000e93          	li	t4,0
   16ab4:	00e00e13          	li	t3,14
   16ab8:	37d19e63          	bne	gp,t4,16e34 <fail>

00016abc <test_15>:
   16abc:	fff00093          	li	ra,-1
   16ac0:	00100113          	li	sp,1
   16ac4:	0020a1b3          	slt	gp,ra,sp
   16ac8:	00100e93          	li	t4,1
   16acc:	00f00e13          	li	t3,15
   16ad0:	37d19263          	bne	gp,t4,16e34 <fail>

00016ad4 <test_16>:
   16ad4:	fff00093          	li	ra,-1
   16ad8:	fff00113          	li	sp,-1
   16adc:	0020a1b3          	slt	gp,ra,sp
   16ae0:	00000e93          	li	t4,0
   16ae4:	01000e13          	li	t3,16
   16ae8:	35d19663          	bne	gp,t4,16e34 <fail>

00016aec <test_17>:
   16aec:	00e00093          	li	ra,14
   16af0:	00d00113          	li	sp,13
   16af4:	0020a0b3          	slt	ra,ra,sp
   16af8:	00000e93          	li	t4,0
   16afc:	01100e13          	li	t3,17
   16b00:	33d09a63          	bne	ra,t4,16e34 <fail>

00016b04 <test_18>:
   16b04:	00b00093          	li	ra,11
   16b08:	00d00113          	li	sp,13
   16b0c:	0020a133          	slt	sp,ra,sp
   16b10:	00100e93          	li	t4,1
   16b14:	01200e13          	li	t3,18
   16b18:	31d11e63          	bne	sp,t4,16e34 <fail>

00016b1c <test_19>:
   16b1c:	00d00093          	li	ra,13
   16b20:	0010a0b3          	slt	ra,ra,ra
   16b24:	00000e93          	li	t4,0
   16b28:	01300e13          	li	t3,19
   16b2c:	31d09463          	bne	ra,t4,16e34 <fail>

00016b30 <test_20>:
   16b30:	00000213          	li	tp,0
   16b34:	00b00093          	li	ra,11
   16b38:	00d00113          	li	sp,13
   16b3c:	0020a1b3          	slt	gp,ra,sp
   16b40:	00018313          	mv	t1,gp
   16b44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16b48:	00200293          	li	t0,2
   16b4c:	fe5214e3          	bne	tp,t0,16b34 <test_20+0x4>
   16b50:	00100e93          	li	t4,1
   16b54:	01400e13          	li	t3,20
   16b58:	2dd31e63          	bne	t1,t4,16e34 <fail>

00016b5c <test_21>:
   16b5c:	00000213          	li	tp,0
   16b60:	00e00093          	li	ra,14
   16b64:	00d00113          	li	sp,13
   16b68:	0020a1b3          	slt	gp,ra,sp
   16b6c:	00000013          	nop
   16b70:	00018313          	mv	t1,gp
   16b74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16b78:	00200293          	li	t0,2
   16b7c:	fe5212e3          	bne	tp,t0,16b60 <test_21+0x4>
   16b80:	00000e93          	li	t4,0
   16b84:	01500e13          	li	t3,21
   16b88:	2bd31663          	bne	t1,t4,16e34 <fail>

00016b8c <test_22>:
   16b8c:	00000213          	li	tp,0
   16b90:	00c00093          	li	ra,12
   16b94:	00d00113          	li	sp,13
   16b98:	0020a1b3          	slt	gp,ra,sp
   16b9c:	00000013          	nop
   16ba0:	00000013          	nop
   16ba4:	00018313          	mv	t1,gp
   16ba8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16bac:	00200293          	li	t0,2
   16bb0:	fe5210e3          	bne	tp,t0,16b90 <test_22+0x4>
   16bb4:	00100e93          	li	t4,1
   16bb8:	01600e13          	li	t3,22
   16bbc:	27d31c63          	bne	t1,t4,16e34 <fail>

00016bc0 <test_23>:
   16bc0:	00000213          	li	tp,0
   16bc4:	00e00093          	li	ra,14
   16bc8:	00d00113          	li	sp,13
   16bcc:	0020a1b3          	slt	gp,ra,sp
   16bd0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16bd4:	00200293          	li	t0,2
   16bd8:	fe5216e3          	bne	tp,t0,16bc4 <test_23+0x4>
   16bdc:	00000e93          	li	t4,0
   16be0:	01700e13          	li	t3,23
   16be4:	25d19863          	bne	gp,t4,16e34 <fail>

00016be8 <test_24>:
   16be8:	00000213          	li	tp,0
   16bec:	00b00093          	li	ra,11
   16bf0:	00d00113          	li	sp,13
   16bf4:	00000013          	nop
   16bf8:	0020a1b3          	slt	gp,ra,sp
   16bfc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16c00:	00200293          	li	t0,2
   16c04:	fe5214e3          	bne	tp,t0,16bec <test_24+0x4>
   16c08:	00100e93          	li	t4,1
   16c0c:	01800e13          	li	t3,24
   16c10:	23d19263          	bne	gp,t4,16e34 <fail>

00016c14 <test_25>:
   16c14:	00000213          	li	tp,0
   16c18:	00f00093          	li	ra,15
   16c1c:	00d00113          	li	sp,13
   16c20:	00000013          	nop
   16c24:	00000013          	nop
   16c28:	0020a1b3          	slt	gp,ra,sp
   16c2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16c30:	00200293          	li	t0,2
   16c34:	fe5212e3          	bne	tp,t0,16c18 <test_25+0x4>
   16c38:	00000e93          	li	t4,0
   16c3c:	01900e13          	li	t3,25
   16c40:	1fd19a63          	bne	gp,t4,16e34 <fail>

00016c44 <test_26>:
   16c44:	00000213          	li	tp,0
   16c48:	00a00093          	li	ra,10
   16c4c:	00000013          	nop
   16c50:	00d00113          	li	sp,13
   16c54:	0020a1b3          	slt	gp,ra,sp
   16c58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16c5c:	00200293          	li	t0,2
   16c60:	fe5214e3          	bne	tp,t0,16c48 <test_26+0x4>
   16c64:	00100e93          	li	t4,1
   16c68:	01a00e13          	li	t3,26
   16c6c:	1dd19463          	bne	gp,t4,16e34 <fail>

00016c70 <test_27>:
   16c70:	00000213          	li	tp,0
   16c74:	01000093          	li	ra,16
   16c78:	00000013          	nop
   16c7c:	00d00113          	li	sp,13
   16c80:	00000013          	nop
   16c84:	0020a1b3          	slt	gp,ra,sp
   16c88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16c8c:	00200293          	li	t0,2
   16c90:	fe5212e3          	bne	tp,t0,16c74 <test_27+0x4>
   16c94:	00000e93          	li	t4,0
   16c98:	01b00e13          	li	t3,27
   16c9c:	19d19c63          	bne	gp,t4,16e34 <fail>

00016ca0 <test_28>:
   16ca0:	00000213          	li	tp,0
   16ca4:	00900093          	li	ra,9
   16ca8:	00000013          	nop
   16cac:	00000013          	nop
   16cb0:	00d00113          	li	sp,13
   16cb4:	0020a1b3          	slt	gp,ra,sp
   16cb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16cbc:	00200293          	li	t0,2
   16cc0:	fe5212e3          	bne	tp,t0,16ca4 <test_28+0x4>
   16cc4:	00100e93          	li	t4,1
   16cc8:	01c00e13          	li	t3,28
   16ccc:	17d19463          	bne	gp,t4,16e34 <fail>

00016cd0 <test_29>:
   16cd0:	00000213          	li	tp,0
   16cd4:	00d00113          	li	sp,13
   16cd8:	01100093          	li	ra,17
   16cdc:	0020a1b3          	slt	gp,ra,sp
   16ce0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ce4:	00200293          	li	t0,2
   16ce8:	fe5216e3          	bne	tp,t0,16cd4 <test_29+0x4>
   16cec:	00000e93          	li	t4,0
   16cf0:	01d00e13          	li	t3,29
   16cf4:	15d19063          	bne	gp,t4,16e34 <fail>

00016cf8 <test_30>:
   16cf8:	00000213          	li	tp,0
   16cfc:	00d00113          	li	sp,13
   16d00:	00800093          	li	ra,8
   16d04:	00000013          	nop
   16d08:	0020a1b3          	slt	gp,ra,sp
   16d0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16d10:	00200293          	li	t0,2
   16d14:	fe5214e3          	bne	tp,t0,16cfc <test_30+0x4>
   16d18:	00100e93          	li	t4,1
   16d1c:	01e00e13          	li	t3,30
   16d20:	11d19a63          	bne	gp,t4,16e34 <fail>

00016d24 <test_31>:
   16d24:	00000213          	li	tp,0
   16d28:	00d00113          	li	sp,13
   16d2c:	01200093          	li	ra,18
   16d30:	00000013          	nop
   16d34:	00000013          	nop
   16d38:	0020a1b3          	slt	gp,ra,sp
   16d3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16d40:	00200293          	li	t0,2
   16d44:	fe5212e3          	bne	tp,t0,16d28 <test_31+0x4>
   16d48:	00000e93          	li	t4,0
   16d4c:	01f00e13          	li	t3,31
   16d50:	0fd19263          	bne	gp,t4,16e34 <fail>

00016d54 <test_32>:
   16d54:	00000213          	li	tp,0
   16d58:	00d00113          	li	sp,13
   16d5c:	00000013          	nop
   16d60:	00700093          	li	ra,7
   16d64:	0020a1b3          	slt	gp,ra,sp
   16d68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16d6c:	00200293          	li	t0,2
   16d70:	fe5214e3          	bne	tp,t0,16d58 <test_32+0x4>
   16d74:	00100e93          	li	t4,1
   16d78:	02000e13          	li	t3,32
   16d7c:	0bd19c63          	bne	gp,t4,16e34 <fail>

00016d80 <test_33>:
   16d80:	00000213          	li	tp,0
   16d84:	00d00113          	li	sp,13
   16d88:	00000013          	nop
   16d8c:	01300093          	li	ra,19
   16d90:	00000013          	nop
   16d94:	0020a1b3          	slt	gp,ra,sp
   16d98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16d9c:	00200293          	li	t0,2
   16da0:	fe5212e3          	bne	tp,t0,16d84 <test_33+0x4>
   16da4:	00000e93          	li	t4,0
   16da8:	02100e13          	li	t3,33
   16dac:	09d19463          	bne	gp,t4,16e34 <fail>

00016db0 <test_34>:
   16db0:	00000213          	li	tp,0
   16db4:	00d00113          	li	sp,13
   16db8:	00000013          	nop
   16dbc:	00000013          	nop
   16dc0:	00600093          	li	ra,6
   16dc4:	0020a1b3          	slt	gp,ra,sp
   16dc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16dcc:	00200293          	li	t0,2
   16dd0:	fe5212e3          	bne	tp,t0,16db4 <test_34+0x4>
   16dd4:	00100e93          	li	t4,1
   16dd8:	02200e13          	li	t3,34
   16ddc:	05d19c63          	bne	gp,t4,16e34 <fail>

00016de0 <test_35>:
   16de0:	fff00093          	li	ra,-1
   16de4:	00102133          	sgtz	sp,ra
   16de8:	00000e93          	li	t4,0
   16dec:	02300e13          	li	t3,35
   16df0:	05d11263          	bne	sp,t4,16e34 <fail>

00016df4 <test_36>:
   16df4:	fff00093          	li	ra,-1
   16df8:	0000a133          	sltz	sp,ra
   16dfc:	00100e93          	li	t4,1
   16e00:	02400e13          	li	t3,36
   16e04:	03d11863          	bne	sp,t4,16e34 <fail>

00016e08 <test_37>:
   16e08:	000020b3          	sltz	ra,zero
   16e0c:	00000e93          	li	t4,0
   16e10:	02500e13          	li	t3,37
   16e14:	03d09063          	bne	ra,t4,16e34 <fail>

00016e18 <test_38>:
   16e18:	01000093          	li	ra,16
   16e1c:	01e00113          	li	sp,30
   16e20:	0020a033          	slt	zero,ra,sp
   16e24:	00000e93          	li	t4,0
   16e28:	02600e13          	li	t3,38
   16e2c:	01d01463          	bne	zero,t4,16e34 <fail>
   16e30:	05c01463          	bne	zero,t3,16e78 <pass>

00016e34 <fail>:
   16e34:	0ff00513          	li	a0,255

00016e38 <.delay_fail>:
   16e38:	fff50513          	addi	a0,a0,-1
   16e3c:	fe051ee3          	bnez	a0,16e38 <.delay_fail>
   16e40:	02000537          	lui	a0,0x2000
   16e44:	04500593          	li	a1,69
   16e48:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
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
   16e74:	ad4f906f          	j	10148 <slt_ret>

00016e78 <pass>:
   16e78:	0ff00513          	li	a0,255

00016e7c <.delay_ok>:
   16e7c:	fff50513          	addi	a0,a0,-1
   16e80:	fe051ee3          	bnez	a0,16e7c <.delay_ok>
   16e84:	02000537          	lui	a0,0x2000
   16e88:	04f00593          	li	a1,79
   16e8c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   16e90:	04b00613          	li	a2,75
   16e94:	00c52023          	sw	a2,0(a0)
   16e98:	00d00693          	li	a3,13
   16e9c:	00d52023          	sw	a3,0(a0)
   16ea0:	00a00713          	li	a4,10
   16ea4:	00e52023          	sw	a4,0(a0)
   16ea8:	aa0f906f          	j	10148 <slt_ret>

00016eac <lbu>:
   16eac:	0ff00513          	li	a0,255

00016eb0 <.delay_pr>:
   16eb0:	fff50513          	addi	a0,a0,-1
   16eb4:	fe051ee3          	bnez	a0,16eb0 <.delay_pr>
   16eb8:	00017537          	lui	a0,0x17
   16ebc:	ed850513          	addi	a0,a0,-296 # 16ed8 <.test_name>
   16ec0:	02000637          	lui	a2,0x2000

00016ec4 <.prname_next>:
   16ec4:	00050583          	lb	a1,0(a0)
   16ec8:	00058a63          	beqz	a1,16edc <.prname_done>
   16ecc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   16ed0:	00150513          	addi	a0,a0,1
   16ed4:	ff1ff06f          	j	16ec4 <.prname_next>

00016ed8 <.test_name>:
   16ed8:	626c                	flw	fa1,68(a2)
   16eda:	0075                	c.nop	29

00016edc <.prname_done>:
   16edc:	02e00593          	li	a1,46
   16ee0:	00b62023          	sw	a1,0(a2)
   16ee4:	00b62023          	sw	a1,0(a2)

00016ee8 <test_2>:
   16ee8:	7ffe9097          	auipc	ra,0x7ffe9
   16eec:	17008093          	addi	ra,ra,368 # 80000058 <tdat>
   16ef0:	0000c183          	lbu	gp,0(ra)
   16ef4:	0ff00e93          	li	t4,255
   16ef8:	00200e13          	li	t3,2
   16efc:	23d19c63          	bne	gp,t4,17134 <fail>

00016f00 <test_3>:
   16f00:	7ffe9097          	auipc	ra,0x7ffe9
   16f04:	15808093          	addi	ra,ra,344 # 80000058 <tdat>
   16f08:	0010c183          	lbu	gp,1(ra)
   16f0c:	00000e93          	li	t4,0
   16f10:	00300e13          	li	t3,3
   16f14:	23d19063          	bne	gp,t4,17134 <fail>

00016f18 <test_4>:
   16f18:	7ffe9097          	auipc	ra,0x7ffe9
   16f1c:	14008093          	addi	ra,ra,320 # 80000058 <tdat>
   16f20:	0020c183          	lbu	gp,2(ra)
   16f24:	0f000e93          	li	t4,240
   16f28:	00400e13          	li	t3,4
   16f2c:	21d19463          	bne	gp,t4,17134 <fail>

00016f30 <test_5>:
   16f30:	7ffe9097          	auipc	ra,0x7ffe9
   16f34:	12808093          	addi	ra,ra,296 # 80000058 <tdat>
   16f38:	0030c183          	lbu	gp,3(ra)
   16f3c:	00f00e93          	li	t4,15
   16f40:	00500e13          	li	t3,5
   16f44:	1fd19863          	bne	gp,t4,17134 <fail>

00016f48 <test_6>:
   16f48:	7ffe9097          	auipc	ra,0x7ffe9
   16f4c:	11308093          	addi	ra,ra,275 # 8000005b <tdat4>
   16f50:	ffd0c183          	lbu	gp,-3(ra)
   16f54:	0ff00e93          	li	t4,255
   16f58:	00600e13          	li	t3,6
   16f5c:	1dd19c63          	bne	gp,t4,17134 <fail>

00016f60 <test_7>:
   16f60:	7ffe9097          	auipc	ra,0x7ffe9
   16f64:	0fb08093          	addi	ra,ra,251 # 8000005b <tdat4>
   16f68:	ffe0c183          	lbu	gp,-2(ra)
   16f6c:	00000e93          	li	t4,0
   16f70:	00700e13          	li	t3,7
   16f74:	1dd19063          	bne	gp,t4,17134 <fail>

00016f78 <test_8>:
   16f78:	7ffe9097          	auipc	ra,0x7ffe9
   16f7c:	0e308093          	addi	ra,ra,227 # 8000005b <tdat4>
   16f80:	fff0c183          	lbu	gp,-1(ra)
   16f84:	0f000e93          	li	t4,240
   16f88:	00800e13          	li	t3,8
   16f8c:	1bd19463          	bne	gp,t4,17134 <fail>

00016f90 <test_9>:
   16f90:	7ffe9097          	auipc	ra,0x7ffe9
   16f94:	0cb08093          	addi	ra,ra,203 # 8000005b <tdat4>
   16f98:	0000c183          	lbu	gp,0(ra)
   16f9c:	00f00e93          	li	t4,15
   16fa0:	00900e13          	li	t3,9
   16fa4:	19d19863          	bne	gp,t4,17134 <fail>

00016fa8 <test_10>:
   16fa8:	7ffe9097          	auipc	ra,0x7ffe9
   16fac:	0b008093          	addi	ra,ra,176 # 80000058 <tdat>
   16fb0:	fe008093          	addi	ra,ra,-32
   16fb4:	0200c183          	lbu	gp,32(ra)
   16fb8:	0ff00e93          	li	t4,255
   16fbc:	00a00e13          	li	t3,10
   16fc0:	17d19a63          	bne	gp,t4,17134 <fail>

00016fc4 <test_11>:
   16fc4:	7ffe9097          	auipc	ra,0x7ffe9
   16fc8:	09408093          	addi	ra,ra,148 # 80000058 <tdat>
   16fcc:	ffa08093          	addi	ra,ra,-6
   16fd0:	0070c183          	lbu	gp,7(ra)
   16fd4:	00000e93          	li	t4,0
   16fd8:	00b00e13          	li	t3,11
   16fdc:	15d19c63          	bne	gp,t4,17134 <fail>

00016fe0 <test_12>:
   16fe0:	00c00e13          	li	t3,12
   16fe4:	00000213          	li	tp,0
   16fe8:	7ffe9097          	auipc	ra,0x7ffe9
   16fec:	07108093          	addi	ra,ra,113 # 80000059 <tdat2>
   16ff0:	0010c183          	lbu	gp,1(ra)
   16ff4:	00018313          	mv	t1,gp
   16ff8:	0f000e93          	li	t4,240
   16ffc:	13d31c63          	bne	t1,t4,17134 <fail>
   17000:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17004:	00200293          	li	t0,2
   17008:	fe5210e3          	bne	tp,t0,16fe8 <test_12+0x8>

0001700c <test_13>:
   1700c:	00d00e13          	li	t3,13
   17010:	00000213          	li	tp,0
   17014:	7ffe9097          	auipc	ra,0x7ffe9
   17018:	04608093          	addi	ra,ra,70 # 8000005a <tdat3>
   1701c:	0010c183          	lbu	gp,1(ra)
   17020:	00000013          	nop
   17024:	00018313          	mv	t1,gp
   17028:	00f00e93          	li	t4,15
   1702c:	11d31463          	bne	t1,t4,17134 <fail>
   17030:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17034:	00200293          	li	t0,2
   17038:	fc521ee3          	bne	tp,t0,17014 <test_13+0x8>

0001703c <test_14>:
   1703c:	00e00e13          	li	t3,14
   17040:	00000213          	li	tp,0
   17044:	7ffe9097          	auipc	ra,0x7ffe9
   17048:	01408093          	addi	ra,ra,20 # 80000058 <tdat>
   1704c:	0010c183          	lbu	gp,1(ra)
   17050:	00000013          	nop
   17054:	00000013          	nop
   17058:	00018313          	mv	t1,gp
   1705c:	00000e93          	li	t4,0
   17060:	0dd31a63          	bne	t1,t4,17134 <fail>
   17064:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17068:	00200293          	li	t0,2
   1706c:	fc521ce3          	bne	tp,t0,17044 <test_14+0x8>

00017070 <test_15>:
   17070:	00f00e13          	li	t3,15
   17074:	00000213          	li	tp,0
   17078:	7ffe9097          	auipc	ra,0x7ffe9
   1707c:	fe108093          	addi	ra,ra,-31 # 80000059 <tdat2>
   17080:	0010c183          	lbu	gp,1(ra)
   17084:	0f000e93          	li	t4,240
   17088:	0bd19663          	bne	gp,t4,17134 <fail>
   1708c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17090:	00200293          	li	t0,2
   17094:	fe5212e3          	bne	tp,t0,17078 <test_15+0x8>

00017098 <test_16>:
   17098:	01000e13          	li	t3,16
   1709c:	00000213          	li	tp,0
   170a0:	7ffe9097          	auipc	ra,0x7ffe9
   170a4:	fba08093          	addi	ra,ra,-70 # 8000005a <tdat3>
   170a8:	00000013          	nop
   170ac:	0010c183          	lbu	gp,1(ra)
   170b0:	00f00e93          	li	t4,15
   170b4:	09d19063          	bne	gp,t4,17134 <fail>
   170b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   170bc:	00200293          	li	t0,2
   170c0:	fe5210e3          	bne	tp,t0,170a0 <test_16+0x8>

000170c4 <test_17>:
   170c4:	01100e13          	li	t3,17
   170c8:	00000213          	li	tp,0
   170cc:	7ffe9097          	auipc	ra,0x7ffe9
   170d0:	f8c08093          	addi	ra,ra,-116 # 80000058 <tdat>
   170d4:	00000013          	nop
   170d8:	00000013          	nop
   170dc:	0010c183          	lbu	gp,1(ra)
   170e0:	00000e93          	li	t4,0
   170e4:	05d19863          	bne	gp,t4,17134 <fail>
   170e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   170ec:	00200293          	li	t0,2
   170f0:	fc521ee3          	bne	tp,t0,170cc <test_17+0x8>

000170f4 <test_18>:
   170f4:	7ffe9197          	auipc	gp,0x7ffe9
   170f8:	f6418193          	addi	gp,gp,-156 # 80000058 <tdat>
   170fc:	0001c103          	lbu	sp,0(gp)
   17100:	00200113          	li	sp,2
   17104:	00200e93          	li	t4,2
   17108:	01200e13          	li	t3,18
   1710c:	03d11463          	bne	sp,t4,17134 <fail>

00017110 <test_19>:
   17110:	7ffe9197          	auipc	gp,0x7ffe9
   17114:	f4818193          	addi	gp,gp,-184 # 80000058 <tdat>
   17118:	0001c103          	lbu	sp,0(gp)
   1711c:	00000013          	nop
   17120:	00200113          	li	sp,2
   17124:	00200e93          	li	t4,2
   17128:	01300e13          	li	t3,19
   1712c:	01d11463          	bne	sp,t4,17134 <fail>
   17130:	05c01463          	bne	zero,t3,17178 <pass>

00017134 <fail>:
   17134:	0ff00513          	li	a0,255

00017138 <.delay_fail>:
   17138:	fff50513          	addi	a0,a0,-1
   1713c:	fe051ee3          	bnez	a0,17138 <.delay_fail>
   17140:	02000537          	lui	a0,0x2000
   17144:	04500593          	li	a1,69
   17148:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1714c:	05200613          	li	a2,82
   17150:	00c52023          	sw	a2,0(a0)
   17154:	00c52023          	sw	a2,0(a0)
   17158:	04f00693          	li	a3,79
   1715c:	00d52023          	sw	a3,0(a0)
   17160:	00c52023          	sw	a2,0(a0)
   17164:	00d00713          	li	a4,13
   17168:	00e52023          	sw	a4,0(a0)
   1716c:	00a00793          	li	a5,10
   17170:	00f52023          	sw	a5,0(a0)
   17174:	f95f806f          	j	10108 <lbu_ret>

00017178 <pass>:
   17178:	0ff00513          	li	a0,255

0001717c <.delay_ok>:
   1717c:	fff50513          	addi	a0,a0,-1
   17180:	fe051ee3          	bnez	a0,1717c <.delay_ok>
   17184:	02000537          	lui	a0,0x2000
   17188:	04f00593          	li	a1,79
   1718c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17190:	04b00613          	li	a2,75
   17194:	00c52023          	sw	a2,0(a0)
   17198:	00d00693          	li	a3,13
   1719c:	00d52023          	sw	a3,0(a0)
   171a0:	00a00713          	li	a4,10
   171a4:	00e52023          	sw	a4,0(a0)
   171a8:	f61f806f          	j	10108 <lbu_ret>

000171ac <lhu>:
   171ac:	0ff00513          	li	a0,255

000171b0 <.delay_pr>:
   171b0:	fff50513          	addi	a0,a0,-1
   171b4:	fe051ee3          	bnez	a0,171b0 <.delay_pr>
   171b8:	00017537          	lui	a0,0x17
   171bc:	1d850513          	addi	a0,a0,472 # 171d8 <.test_name>
   171c0:	02000637          	lui	a2,0x2000

000171c4 <.prname_next>:
   171c4:	00050583          	lb	a1,0(a0)
   171c8:	00058a63          	beqz	a1,171dc <.prname_done>
   171cc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   171d0:	00150513          	addi	a0,a0,1
   171d4:	ff1ff06f          	j	171c4 <.prname_next>

000171d8 <.test_name>:
   171d8:	686c                	flw	fa1,84(s0)
   171da:	0075                	c.nop	29

000171dc <.prname_done>:
   171dc:	02e00593          	li	a1,46
   171e0:	00b62023          	sw	a1,0(a2)
   171e4:	00b62023          	sw	a1,0(a2)

000171e8 <test_2>:
   171e8:	7ffe9097          	auipc	ra,0x7ffe9
   171ec:	e7408093          	addi	ra,ra,-396 # 8000005c <tdat>
   171f0:	0000d183          	lhu	gp,0(ra)
   171f4:	0ff00e93          	li	t4,255
   171f8:	00200e13          	li	t3,2
   171fc:	27d19663          	bne	gp,t4,17468 <fail>

00017200 <test_3>:
   17200:	7ffe9097          	auipc	ra,0x7ffe9
   17204:	e5c08093          	addi	ra,ra,-420 # 8000005c <tdat>
   17208:	0020d183          	lhu	gp,2(ra)
   1720c:	00010eb7          	lui	t4,0x10
   17210:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   17214:	00300e13          	li	t3,3
   17218:	25d19863          	bne	gp,t4,17468 <fail>

0001721c <test_4>:
   1721c:	7ffe9097          	auipc	ra,0x7ffe9
   17220:	e4008093          	addi	ra,ra,-448 # 8000005c <tdat>
   17224:	0040d183          	lhu	gp,4(ra)
   17228:	00001eb7          	lui	t4,0x1
   1722c:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   17230:	00400e13          	li	t3,4
   17234:	23d19a63          	bne	gp,t4,17468 <fail>

00017238 <test_5>:
   17238:	7ffe9097          	auipc	ra,0x7ffe9
   1723c:	e2408093          	addi	ra,ra,-476 # 8000005c <tdat>
   17240:	0060d183          	lhu	gp,6(ra)
   17244:	0000feb7          	lui	t4,0xf
   17248:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   1724c:	00500e13          	li	t3,5
   17250:	21d19c63          	bne	gp,t4,17468 <fail>

00017254 <test_6>:
   17254:	7ffe9097          	auipc	ra,0x7ffe9
   17258:	e0e08093          	addi	ra,ra,-498 # 80000062 <tdat4>
   1725c:	ffa0d183          	lhu	gp,-6(ra)
   17260:	0ff00e93          	li	t4,255
   17264:	00600e13          	li	t3,6
   17268:	21d19063          	bne	gp,t4,17468 <fail>

0001726c <test_7>:
   1726c:	7ffe9097          	auipc	ra,0x7ffe9
   17270:	df608093          	addi	ra,ra,-522 # 80000062 <tdat4>
   17274:	ffc0d183          	lhu	gp,-4(ra)
   17278:	00010eb7          	lui	t4,0x10
   1727c:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   17280:	00700e13          	li	t3,7
   17284:	1fd19263          	bne	gp,t4,17468 <fail>

00017288 <test_8>:
   17288:	7ffe9097          	auipc	ra,0x7ffe9
   1728c:	dda08093          	addi	ra,ra,-550 # 80000062 <tdat4>
   17290:	ffe0d183          	lhu	gp,-2(ra)
   17294:	00001eb7          	lui	t4,0x1
   17298:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   1729c:	00800e13          	li	t3,8
   172a0:	1dd19463          	bne	gp,t4,17468 <fail>

000172a4 <test_9>:
   172a4:	7ffe9097          	auipc	ra,0x7ffe9
   172a8:	dbe08093          	addi	ra,ra,-578 # 80000062 <tdat4>
   172ac:	0000d183          	lhu	gp,0(ra)
   172b0:	0000feb7          	lui	t4,0xf
   172b4:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   172b8:	00900e13          	li	t3,9
   172bc:	1bd19663          	bne	gp,t4,17468 <fail>

000172c0 <test_10>:
   172c0:	7ffe9097          	auipc	ra,0x7ffe9
   172c4:	d9c08093          	addi	ra,ra,-612 # 8000005c <tdat>
   172c8:	fe008093          	addi	ra,ra,-32
   172cc:	0200d183          	lhu	gp,32(ra)
   172d0:	0ff00e93          	li	t4,255
   172d4:	00a00e13          	li	t3,10
   172d8:	19d19863          	bne	gp,t4,17468 <fail>

000172dc <test_11>:
   172dc:	7ffe9097          	auipc	ra,0x7ffe9
   172e0:	d8008093          	addi	ra,ra,-640 # 8000005c <tdat>
   172e4:	ffb08093          	addi	ra,ra,-5
   172e8:	0070d183          	lhu	gp,7(ra)
   172ec:	00010eb7          	lui	t4,0x10
   172f0:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   172f4:	00b00e13          	li	t3,11
   172f8:	17d19863          	bne	gp,t4,17468 <fail>

000172fc <test_12>:
   172fc:	00c00e13          	li	t3,12
   17300:	00000213          	li	tp,0
   17304:	7ffe9097          	auipc	ra,0x7ffe9
   17308:	d5a08093          	addi	ra,ra,-678 # 8000005e <tdat2>
   1730c:	0020d183          	lhu	gp,2(ra)
   17310:	00018313          	mv	t1,gp
   17314:	00001eb7          	lui	t4,0x1
   17318:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   1731c:	15d31663          	bne	t1,t4,17468 <fail>
   17320:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17324:	00200293          	li	t0,2
   17328:	fc521ee3          	bne	tp,t0,17304 <test_12+0x8>

0001732c <test_13>:
   1732c:	00d00e13          	li	t3,13
   17330:	00000213          	li	tp,0
   17334:	7ffe9097          	auipc	ra,0x7ffe9
   17338:	d2c08093          	addi	ra,ra,-724 # 80000060 <tdat3>
   1733c:	0020d183          	lhu	gp,2(ra)
   17340:	00000013          	nop
   17344:	00018313          	mv	t1,gp
   17348:	0000feb7          	lui	t4,0xf
   1734c:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   17350:	11d31c63          	bne	t1,t4,17468 <fail>
   17354:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17358:	00200293          	li	t0,2
   1735c:	fc521ce3          	bne	tp,t0,17334 <test_13+0x8>

00017360 <test_14>:
   17360:	00e00e13          	li	t3,14
   17364:	00000213          	li	tp,0
   17368:	7ffe9097          	auipc	ra,0x7ffe9
   1736c:	cf408093          	addi	ra,ra,-780 # 8000005c <tdat>
   17370:	0020d183          	lhu	gp,2(ra)
   17374:	00000013          	nop
   17378:	00000013          	nop
   1737c:	00018313          	mv	t1,gp
   17380:	00010eb7          	lui	t4,0x10
   17384:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   17388:	0fd31063          	bne	t1,t4,17468 <fail>
   1738c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17390:	00200293          	li	t0,2
   17394:	fc521ae3          	bne	tp,t0,17368 <test_14+0x8>

00017398 <test_15>:
   17398:	00f00e13          	li	t3,15
   1739c:	00000213          	li	tp,0
   173a0:	7ffe9097          	auipc	ra,0x7ffe9
   173a4:	cbe08093          	addi	ra,ra,-834 # 8000005e <tdat2>
   173a8:	0020d183          	lhu	gp,2(ra)
   173ac:	00001eb7          	lui	t4,0x1
   173b0:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   173b4:	0bd19a63          	bne	gp,t4,17468 <fail>
   173b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   173bc:	00200293          	li	t0,2
   173c0:	fe5210e3          	bne	tp,t0,173a0 <test_15+0x8>

000173c4 <test_16>:
   173c4:	01000e13          	li	t3,16
   173c8:	00000213          	li	tp,0
   173cc:	7ffe9097          	auipc	ra,0x7ffe9
   173d0:	c9408093          	addi	ra,ra,-876 # 80000060 <tdat3>
   173d4:	00000013          	nop
   173d8:	0020d183          	lhu	gp,2(ra)
   173dc:	0000feb7          	lui	t4,0xf
   173e0:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   173e4:	09d19263          	bne	gp,t4,17468 <fail>
   173e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   173ec:	00200293          	li	t0,2
   173f0:	fc521ee3          	bne	tp,t0,173cc <test_16+0x8>

000173f4 <test_17>:
   173f4:	01100e13          	li	t3,17
   173f8:	00000213          	li	tp,0
   173fc:	7ffe9097          	auipc	ra,0x7ffe9
   17400:	c6008093          	addi	ra,ra,-928 # 8000005c <tdat>
   17404:	00000013          	nop
   17408:	00000013          	nop
   1740c:	0020d183          	lhu	gp,2(ra)
   17410:	00010eb7          	lui	t4,0x10
   17414:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   17418:	05d19863          	bne	gp,t4,17468 <fail>
   1741c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17420:	00200293          	li	t0,2
   17424:	fc521ce3          	bne	tp,t0,173fc <test_17+0x8>

00017428 <test_18>:
   17428:	7ffe9197          	auipc	gp,0x7ffe9
   1742c:	c3418193          	addi	gp,gp,-972 # 8000005c <tdat>
   17430:	0001d103          	lhu	sp,0(gp)
   17434:	00200113          	li	sp,2
   17438:	00200e93          	li	t4,2
   1743c:	01200e13          	li	t3,18
   17440:	03d11463          	bne	sp,t4,17468 <fail>

00017444 <test_19>:
   17444:	7ffe9197          	auipc	gp,0x7ffe9
   17448:	c1818193          	addi	gp,gp,-1000 # 8000005c <tdat>
   1744c:	0001d103          	lhu	sp,0(gp)
   17450:	00000013          	nop
   17454:	00200113          	li	sp,2
   17458:	00200e93          	li	t4,2
   1745c:	01300e13          	li	t3,19
   17460:	01d11463          	bne	sp,t4,17468 <fail>
   17464:	05c01463          	bne	zero,t3,174ac <pass>

00017468 <fail>:
   17468:	0ff00513          	li	a0,255

0001746c <.delay_fail>:
   1746c:	fff50513          	addi	a0,a0,-1
   17470:	fe051ee3          	bnez	a0,1746c <.delay_fail>
   17474:	02000537          	lui	a0,0x2000
   17478:	04500593          	li	a1,69
   1747c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17480:	05200613          	li	a2,82
   17484:	00c52023          	sw	a2,0(a0)
   17488:	00c52023          	sw	a2,0(a0)
   1748c:	04f00693          	li	a3,79
   17490:	00d52023          	sw	a3,0(a0)
   17494:	00c52023          	sw	a2,0(a0)
   17498:	00d00713          	li	a4,13
   1749c:	00e52023          	sw	a4,0(a0)
   174a0:	00a00793          	li	a5,10
   174a4:	00f52023          	sw	a5,0(a0)
   174a8:	c65f806f          	j	1010c <lhu_ret>

000174ac <pass>:
   174ac:	0ff00513          	li	a0,255

000174b0 <.delay_ok>:
   174b0:	fff50513          	addi	a0,a0,-1
   174b4:	fe051ee3          	bnez	a0,174b0 <.delay_ok>
   174b8:	02000537          	lui	a0,0x2000
   174bc:	04f00593          	li	a1,79
   174c0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   174c4:	04b00613          	li	a2,75
   174c8:	00c52023          	sw	a2,0(a0)
   174cc:	00d00693          	li	a3,13
   174d0:	00d52023          	sw	a3,0(a0)
   174d4:	00a00713          	li	a4,10
   174d8:	00e52023          	sw	a4,0(a0)
   174dc:	c31f806f          	j	1010c <lhu_ret>

000174e0 <lui>:
   174e0:	0ff00513          	li	a0,255

000174e4 <.delay_pr>:
   174e4:	fff50513          	addi	a0,a0,-1
   174e8:	fe051ee3          	bnez	a0,174e4 <.delay_pr>
   174ec:	00017537          	lui	a0,0x17
   174f0:	50c50513          	addi	a0,a0,1292 # 1750c <.test_name>
   174f4:	02000637          	lui	a2,0x2000

000174f8 <.prname_next>:
   174f8:	00050583          	lb	a1,0(a0)
   174fc:	00058a63          	beqz	a1,17510 <.prname_done>
   17500:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   17504:	00150513          	addi	a0,a0,1
   17508:	ff1ff06f          	j	174f8 <.prname_next>

0001750c <.test_name>:
   1750c:	756c                	flw	fa1,108(a0)
   1750e:	0069                	c.nop	26

00017510 <.prname_done>:
   17510:	02e00593          	li	a1,46
   17514:	00b62023          	sw	a1,0(a2)
   17518:	00b62023          	sw	a1,0(a2)

0001751c <test_2>:
   1751c:	000000b7          	lui	ra,0x0
   17520:	00000e93          	li	t4,0
   17524:	00200e13          	li	t3,2
   17528:	05d09a63          	bne	ra,t4,1757c <fail>

0001752c <test_3>:
   1752c:	fffff0b7          	lui	ra,0xfffff
   17530:	4010d093          	srai	ra,ra,0x1
   17534:	80000e93          	li	t4,-2048
   17538:	00300e13          	li	t3,3
   1753c:	05d09063          	bne	ra,t4,1757c <fail>

00017540 <test_4>:
   17540:	7ffff0b7          	lui	ra,0x7ffff
   17544:	4140d093          	srai	ra,ra,0x14
   17548:	7ff00e93          	li	t4,2047
   1754c:	00400e13          	li	t3,4
   17550:	03d09663          	bne	ra,t4,1757c <fail>

00017554 <test_5>:
   17554:	800000b7          	lui	ra,0x80000
   17558:	4140d093          	srai	ra,ra,0x14
   1755c:	80000e93          	li	t4,-2048
   17560:	00500e13          	li	t3,5
   17564:	01d09c63          	bne	ra,t4,1757c <fail>

00017568 <test_6>:
   17568:	80000037          	lui	zero,0x80000
   1756c:	00000e93          	li	t4,0
   17570:	00600e13          	li	t3,6
   17574:	01d01463          	bne	zero,t4,1757c <fail>
   17578:	05c01463          	bne	zero,t3,175c0 <pass>

0001757c <fail>:
   1757c:	0ff00513          	li	a0,255

00017580 <.delay_fail>:
   17580:	fff50513          	addi	a0,a0,-1
   17584:	fe051ee3          	bnez	a0,17580 <.delay_fail>
   17588:	02000537          	lui	a0,0x2000
   1758c:	04500593          	li	a1,69
   17590:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17594:	05200613          	li	a2,82
   17598:	00c52023          	sw	a2,0(a0)
   1759c:	00c52023          	sw	a2,0(a0)
   175a0:	04f00693          	li	a3,79
   175a4:	00d52023          	sw	a3,0(a0)
   175a8:	00c52023          	sw	a2,0(a0)
   175ac:	00d00713          	li	a4,13
   175b0:	00e52023          	sw	a4,0(a0)
   175b4:	00a00793          	li	a5,10
   175b8:	00f52023          	sw	a5,0(a0)
   175bc:	b15f806f          	j	100d0 <lui_ret>

000175c0 <pass>:
   175c0:	0ff00513          	li	a0,255

000175c4 <.delay_ok>:
   175c4:	fff50513          	addi	a0,a0,-1
   175c8:	fe051ee3          	bnez	a0,175c4 <.delay_ok>
   175cc:	02000537          	lui	a0,0x2000
   175d0:	04f00593          	li	a1,79
   175d4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   175d8:	04b00613          	li	a2,75
   175dc:	00c52023          	sw	a2,0(a0)
   175e0:	00d00693          	li	a3,13
   175e4:	00d52023          	sw	a3,0(a0)
   175e8:	00a00713          	li	a4,10
   175ec:	00e52023          	sw	a4,0(a0)
   175f0:	ae1f806f          	j	100d0 <lui_ret>

000175f4 <rem>:
   175f4:	0ff00513          	li	a0,255

000175f8 <.delay_pr>:
   175f8:	fff50513          	addi	a0,a0,-1
   175fc:	fe051ee3          	bnez	a0,175f8 <.delay_pr>
   17600:	00017537          	lui	a0,0x17
   17604:	62050513          	addi	a0,a0,1568 # 17620 <.test_name>
   17608:	02000637          	lui	a2,0x2000

0001760c <.prname_next>:
   1760c:	00050583          	lb	a1,0(a0)
   17610:	00058a63          	beqz	a1,17624 <.prname_done>
   17614:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   17618:	00150513          	addi	a0,a0,1
   1761c:	ff1ff06f          	j	1760c <.prname_next>

00017620 <.test_name>:
   17620:	6572                	flw	fa0,28(sp)
   17622:	006d                	c.nop	27

00017624 <.prname_done>:
   17624:	02e00593          	li	a1,46
   17628:	00b62023          	sw	a1,0(a2)
   1762c:	00b62023          	sw	a1,0(a2)

00017630 <test_2>:
   17630:	01400093          	li	ra,20
   17634:	00600113          	li	sp,6
   17638:	0220e1b3          	rem	gp,ra,sp
   1763c:	00200e93          	li	t4,2
   17640:	00200e13          	li	t3,2
   17644:	0dd19463          	bne	gp,t4,1770c <fail>

00017648 <test_3>:
   17648:	fec00093          	li	ra,-20
   1764c:	00600113          	li	sp,6
   17650:	0220e1b3          	rem	gp,ra,sp
   17654:	ffe00e93          	li	t4,-2
   17658:	00300e13          	li	t3,3
   1765c:	0bd19863          	bne	gp,t4,1770c <fail>

00017660 <test_4>:
   17660:	01400093          	li	ra,20
   17664:	ffa00113          	li	sp,-6
   17668:	0220e1b3          	rem	gp,ra,sp
   1766c:	00200e93          	li	t4,2
   17670:	00400e13          	li	t3,4
   17674:	09d19c63          	bne	gp,t4,1770c <fail>

00017678 <test_5>:
   17678:	fec00093          	li	ra,-20
   1767c:	ffa00113          	li	sp,-6
   17680:	0220e1b3          	rem	gp,ra,sp
   17684:	ffe00e93          	li	t4,-2
   17688:	00500e13          	li	t3,5
   1768c:	09d19063          	bne	gp,t4,1770c <fail>

00017690 <test_6>:
   17690:	800000b7          	lui	ra,0x80000
   17694:	00100113          	li	sp,1
   17698:	0220e1b3          	rem	gp,ra,sp
   1769c:	00000e93          	li	t4,0
   176a0:	00600e13          	li	t3,6
   176a4:	07d19463          	bne	gp,t4,1770c <fail>

000176a8 <test_7>:
   176a8:	800000b7          	lui	ra,0x80000
   176ac:	fff00113          	li	sp,-1
   176b0:	0220e1b3          	rem	gp,ra,sp
   176b4:	00000e93          	li	t4,0
   176b8:	00700e13          	li	t3,7
   176bc:	05d19863          	bne	gp,t4,1770c <fail>

000176c0 <test_8>:
   176c0:	800000b7          	lui	ra,0x80000
   176c4:	00000113          	li	sp,0
   176c8:	0220e1b3          	rem	gp,ra,sp
   176cc:	80000eb7          	lui	t4,0x80000
   176d0:	00800e13          	li	t3,8
   176d4:	03d19c63          	bne	gp,t4,1770c <fail>

000176d8 <test_9>:
   176d8:	00100093          	li	ra,1
   176dc:	00000113          	li	sp,0
   176e0:	0220e1b3          	rem	gp,ra,sp
   176e4:	00100e93          	li	t4,1
   176e8:	00900e13          	li	t3,9
   176ec:	03d19063          	bne	gp,t4,1770c <fail>

000176f0 <test_10>:
   176f0:	00000093          	li	ra,0
   176f4:	00000113          	li	sp,0
   176f8:	0220e1b3          	rem	gp,ra,sp
   176fc:	00000e93          	li	t4,0
   17700:	00a00e13          	li	t3,10
   17704:	01d19463          	bne	gp,t4,1770c <fail>
   17708:	05c01463          	bne	zero,t3,17750 <pass>

0001770c <fail>:
   1770c:	0ff00513          	li	a0,255

00017710 <.delay_fail>:
   17710:	fff50513          	addi	a0,a0,-1
   17714:	fe051ee3          	bnez	a0,17710 <.delay_fail>
   17718:	02000537          	lui	a0,0x2000
   1771c:	04500593          	li	a1,69
   17720:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17724:	05200613          	li	a2,82
   17728:	00c52023          	sw	a2,0(a0)
   1772c:	00c52023          	sw	a2,0(a0)
   17730:	04f00693          	li	a3,79
   17734:	00d52023          	sw	a3,0(a0)
   17738:	00c52023          	sw	a2,0(a0)
   1773c:	00d00713          	li	a4,13
   17740:	00e52023          	sw	a4,0(a0)
   17744:	00a00793          	li	a5,10
   17748:	00f52023          	sw	a5,0(a0)
   1774c:	a2df806f          	j	10178 <rem_ret>

00017750 <pass>:
   17750:	0ff00513          	li	a0,255

00017754 <.delay_ok>:
   17754:	fff50513          	addi	a0,a0,-1
   17758:	fe051ee3          	bnez	a0,17754 <.delay_ok>
   1775c:	02000537          	lui	a0,0x2000
   17760:	04f00593          	li	a1,79
   17764:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17768:	04b00613          	li	a2,75
   1776c:	00c52023          	sw	a2,0(a0)
   17770:	00d00693          	li	a3,13
   17774:	00d52023          	sw	a3,0(a0)
   17778:	00a00713          	li	a4,10
   1777c:	00e52023          	sw	a4,0(a0)
   17780:	9f9f806f          	j	10178 <rem_ret>

00017784 <simple>:
   17784:	0ff00513          	li	a0,255

00017788 <.delay_pr>:
   17788:	fff50513          	addi	a0,a0,-1
   1778c:	fe051ee3          	bnez	a0,17788 <.delay_pr>
   17790:	00017537          	lui	a0,0x17
   17794:	7b050513          	addi	a0,a0,1968 # 177b0 <.test_name>
   17798:	02000637          	lui	a2,0x2000

0001779c <.prname_next>:
   1779c:	00050583          	lb	a1,0(a0)
   177a0:	00058c63          	beqz	a1,177b8 <.prname_done>
   177a4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   177a8:	00150513          	addi	a0,a0,1
   177ac:	ff1ff06f          	j	1779c <.prname_next>

000177b0 <.test_name>:
   177b0:	706d6973          	csrrsi	s2,0x706,26
   177b4:	656c                	flw	fa1,76(a0)
	...

000177b8 <.prname_done>:
   177b8:	02e00593          	li	a1,46
   177bc:	00b62023          	sw	a1,0(a2)
   177c0:	00b62023          	sw	a1,0(a2)
   177c4:	0ff00513          	li	a0,255

000177c8 <.delay_ok>:
   177c8:	fff50513          	addi	a0,a0,-1
   177cc:	fe051ee3          	bnez	a0,177c8 <.delay_ok>
   177d0:	02000537          	lui	a0,0x2000
   177d4:	04f00593          	li	a1,79
   177d8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   177dc:	04b00613          	li	a2,75
   177e0:	00c52023          	sw	a2,0(a0)
   177e4:	00d00693          	li	a3,13
   177e8:	00d52023          	sw	a3,0(a0)
   177ec:	00a00713          	li	a4,10
   177f0:	00e52023          	sw	a4,0(a0)
   177f4:	98df806f          	j	10180 <simple_ret>

000177f8 <remu>:
   177f8:	0ff00513          	li	a0,255

000177fc <.delay_pr>:
   177fc:	fff50513          	addi	a0,a0,-1
   17800:	fe051ee3          	bnez	a0,177fc <.delay_pr>
   17804:	00018537          	lui	a0,0x18
   17808:	82450513          	addi	a0,a0,-2012 # 17824 <.test_name>
   1780c:	02000637          	lui	a2,0x2000

00017810 <.prname_next>:
   17810:	00050583          	lb	a1,0(a0)
   17814:	00058c63          	beqz	a1,1782c <.prname_done>
   17818:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   1781c:	00150513          	addi	a0,a0,1
   17820:	ff1ff06f          	j	17810 <.prname_next>

00017824 <.test_name>:
   17824:	6572                	flw	fa0,28(sp)
   17826:	756d                	lui	a0,0xffffb
   17828:	0000                	unimp
	...

0001782c <.prname_done>:
   1782c:	02e00593          	li	a1,46
   17830:	00b62023          	sw	a1,0(a2)
   17834:	00b62023          	sw	a1,0(a2)

00017838 <test_2>:
   17838:	01400093          	li	ra,20
   1783c:	00600113          	li	sp,6
   17840:	0220f1b3          	remu	gp,ra,sp
   17844:	00200e93          	li	t4,2
   17848:	00200e13          	li	t3,2
   1784c:	0dd19463          	bne	gp,t4,17914 <fail>

00017850 <test_3>:
   17850:	fec00093          	li	ra,-20
   17854:	00600113          	li	sp,6
   17858:	0220f1b3          	remu	gp,ra,sp
   1785c:	00200e93          	li	t4,2
   17860:	00300e13          	li	t3,3
   17864:	0bd19863          	bne	gp,t4,17914 <fail>

00017868 <test_4>:
   17868:	01400093          	li	ra,20
   1786c:	ffa00113          	li	sp,-6
   17870:	0220f1b3          	remu	gp,ra,sp
   17874:	01400e93          	li	t4,20
   17878:	00400e13          	li	t3,4
   1787c:	09d19c63          	bne	gp,t4,17914 <fail>

00017880 <test_5>:
   17880:	fec00093          	li	ra,-20
   17884:	ffa00113          	li	sp,-6
   17888:	0220f1b3          	remu	gp,ra,sp
   1788c:	fec00e93          	li	t4,-20
   17890:	00500e13          	li	t3,5
   17894:	09d19063          	bne	gp,t4,17914 <fail>

00017898 <test_6>:
   17898:	800000b7          	lui	ra,0x80000
   1789c:	00100113          	li	sp,1
   178a0:	0220f1b3          	remu	gp,ra,sp
   178a4:	00000e93          	li	t4,0
   178a8:	00600e13          	li	t3,6
   178ac:	07d19463          	bne	gp,t4,17914 <fail>

000178b0 <test_7>:
   178b0:	800000b7          	lui	ra,0x80000
   178b4:	fff00113          	li	sp,-1
   178b8:	0220f1b3          	remu	gp,ra,sp
   178bc:	80000eb7          	lui	t4,0x80000
   178c0:	00700e13          	li	t3,7
   178c4:	05d19863          	bne	gp,t4,17914 <fail>

000178c8 <test_8>:
   178c8:	800000b7          	lui	ra,0x80000
   178cc:	00000113          	li	sp,0
   178d0:	0220f1b3          	remu	gp,ra,sp
   178d4:	80000eb7          	lui	t4,0x80000
   178d8:	00800e13          	li	t3,8
   178dc:	03d19c63          	bne	gp,t4,17914 <fail>

000178e0 <test_9>:
   178e0:	00100093          	li	ra,1
   178e4:	00000113          	li	sp,0
   178e8:	0220f1b3          	remu	gp,ra,sp
   178ec:	00100e93          	li	t4,1
   178f0:	00900e13          	li	t3,9
   178f4:	03d19063          	bne	gp,t4,17914 <fail>

000178f8 <test_10>:
   178f8:	00000093          	li	ra,0
   178fc:	00000113          	li	sp,0
   17900:	0220f1b3          	remu	gp,ra,sp
   17904:	00000e93          	li	t4,0
   17908:	00a00e13          	li	t3,10
   1790c:	01d19463          	bne	gp,t4,17914 <fail>
   17910:	05c01463          	bne	zero,t3,17958 <pass>

00017914 <fail>:
   17914:	0ff00513          	li	a0,255

00017918 <.delay_fail>:
   17918:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1791c:	fe051ee3          	bnez	a0,17918 <.delay_fail>
   17920:	02000537          	lui	a0,0x2000
   17924:	04500593          	li	a1,69
   17928:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1792c:	05200613          	li	a2,82
   17930:	00c52023          	sw	a2,0(a0)
   17934:	00c52023          	sw	a2,0(a0)
   17938:	04f00693          	li	a3,79
   1793c:	00d52023          	sw	a3,0(a0)
   17940:	00c52023          	sw	a2,0(a0)
   17944:	00d00713          	li	a4,13
   17948:	00e52023          	sw	a4,0(a0)
   1794c:	00a00793          	li	a5,10
   17950:	00f52023          	sw	a5,0(a0)
   17954:	829f806f          	j	1017c <remu_ret>

00017958 <pass>:
   17958:	0ff00513          	li	a0,255

0001795c <.delay_ok>:
   1795c:	fff50513          	addi	a0,a0,-1
   17960:	fe051ee3          	bnez	a0,1795c <.delay_ok>
   17964:	02000537          	lui	a0,0x2000
   17968:	04f00593          	li	a1,79
   1796c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17970:	04b00613          	li	a2,75
   17974:	00c52023          	sw	a2,0(a0)
   17978:	00d00693          	li	a3,13
   1797c:	00d52023          	sw	a3,0(a0)
   17980:	00a00713          	li	a4,10
   17984:	00e52023          	sw	a4,0(a0)
   17988:	ff4f806f          	j	1017c <remu_ret>

0001798c <slli>:
   1798c:	0ff00513          	li	a0,255

00017990 <.delay_pr>:
   17990:	fff50513          	addi	a0,a0,-1
   17994:	fe051ee3          	bnez	a0,17990 <.delay_pr>
   17998:	00018537          	lui	a0,0x18
   1799c:	9b850513          	addi	a0,a0,-1608 # 179b8 <.test_name>
   179a0:	02000637          	lui	a2,0x2000

000179a4 <.prname_next>:
   179a4:	00050583          	lb	a1,0(a0)
   179a8:	00058c63          	beqz	a1,179c0 <.prname_done>
   179ac:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   179b0:	00150513          	addi	a0,a0,1
   179b4:	ff1ff06f          	j	179a4 <.prname_next>

000179b8 <.test_name>:
   179b8:	696c6c73          	csrrsi	s8,0x696,24
   179bc:	0000                	unimp
	...

000179c0 <.prname_done>:
   179c0:	02e00593          	li	a1,46
   179c4:	00b62023          	sw	a1,0(a2)
   179c8:	00b62023          	sw	a1,0(a2)

000179cc <test_2>:
   179cc:	00100093          	li	ra,1
   179d0:	00009193          	slli	gp,ra,0x0
   179d4:	00100e93          	li	t4,1
   179d8:	00200e13          	li	t3,2
   179dc:	27d19a63          	bne	gp,t4,17c50 <fail>

000179e0 <test_3>:
   179e0:	00100093          	li	ra,1
   179e4:	00109193          	slli	gp,ra,0x1
   179e8:	00200e93          	li	t4,2
   179ec:	00300e13          	li	t3,3
   179f0:	27d19063          	bne	gp,t4,17c50 <fail>

000179f4 <test_4>:
   179f4:	00100093          	li	ra,1
   179f8:	00709193          	slli	gp,ra,0x7
   179fc:	08000e93          	li	t4,128
   17a00:	00400e13          	li	t3,4
   17a04:	25d19663          	bne	gp,t4,17c50 <fail>

00017a08 <test_5>:
   17a08:	00100093          	li	ra,1
   17a0c:	00e09193          	slli	gp,ra,0xe
   17a10:	00004eb7          	lui	t4,0x4
   17a14:	00500e13          	li	t3,5
   17a18:	23d19c63          	bne	gp,t4,17c50 <fail>

00017a1c <test_6>:
   17a1c:	00100093          	li	ra,1
   17a20:	01f09193          	slli	gp,ra,0x1f
   17a24:	80000eb7          	lui	t4,0x80000
   17a28:	00600e13          	li	t3,6
   17a2c:	23d19263          	bne	gp,t4,17c50 <fail>

00017a30 <test_7>:
   17a30:	fff00093          	li	ra,-1
   17a34:	00009193          	slli	gp,ra,0x0
   17a38:	fff00e93          	li	t4,-1
   17a3c:	00700e13          	li	t3,7
   17a40:	21d19863          	bne	gp,t4,17c50 <fail>

00017a44 <test_8>:
   17a44:	fff00093          	li	ra,-1
   17a48:	00109193          	slli	gp,ra,0x1
   17a4c:	ffe00e93          	li	t4,-2
   17a50:	00800e13          	li	t3,8
   17a54:	1fd19e63          	bne	gp,t4,17c50 <fail>

00017a58 <test_9>:
   17a58:	fff00093          	li	ra,-1
   17a5c:	00709193          	slli	gp,ra,0x7
   17a60:	f8000e93          	li	t4,-128
   17a64:	00900e13          	li	t3,9
   17a68:	1fd19463          	bne	gp,t4,17c50 <fail>

00017a6c <test_10>:
   17a6c:	fff00093          	li	ra,-1
   17a70:	00e09193          	slli	gp,ra,0xe
   17a74:	ffffceb7          	lui	t4,0xffffc
   17a78:	00a00e13          	li	t3,10
   17a7c:	1dd19a63          	bne	gp,t4,17c50 <fail>

00017a80 <test_11>:
   17a80:	fff00093          	li	ra,-1
   17a84:	01f09193          	slli	gp,ra,0x1f
   17a88:	80000eb7          	lui	t4,0x80000
   17a8c:	00b00e13          	li	t3,11
   17a90:	1dd19063          	bne	gp,t4,17c50 <fail>

00017a94 <test_12>:
   17a94:	212120b7          	lui	ra,0x21212
   17a98:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   17a9c:	00009193          	slli	gp,ra,0x0
   17aa0:	21212eb7          	lui	t4,0x21212
   17aa4:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7b65>
   17aa8:	00c00e13          	li	t3,12
   17aac:	1bd19263          	bne	gp,t4,17c50 <fail>

00017ab0 <test_13>:
   17ab0:	212120b7          	lui	ra,0x21212
   17ab4:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   17ab8:	00109193          	slli	gp,ra,0x1
   17abc:	42424eb7          	lui	t4,0x42424
   17ac0:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c86>
   17ac4:	00d00e13          	li	t3,13
   17ac8:	19d19463          	bne	gp,t4,17c50 <fail>

00017acc <test_14>:
   17acc:	212120b7          	lui	ra,0x21212
   17ad0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   17ad4:	00709193          	slli	gp,ra,0x7
   17ad8:	90909eb7          	lui	t4,0x90909
   17adc:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   17ae0:	00e00e13          	li	t3,14
   17ae4:	17d19663          	bne	gp,t4,17c50 <fail>

00017ae8 <test_15>:
   17ae8:	212120b7          	lui	ra,0x21212
   17aec:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   17af0:	00e09193          	slli	gp,ra,0xe
   17af4:	48484eb7          	lui	t4,0x48484
   17af8:	00f00e13          	li	t3,15
   17afc:	15d19a63          	bne	gp,t4,17c50 <fail>

00017b00 <test_16>:
   17b00:	212120b7          	lui	ra,0x21212
   17b04:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7b65>
   17b08:	01f09193          	slli	gp,ra,0x1f
   17b0c:	80000eb7          	lui	t4,0x80000
   17b10:	01000e13          	li	t3,16
   17b14:	13d19e63          	bne	gp,t4,17c50 <fail>

00017b18 <test_17>:
   17b18:	00100093          	li	ra,1
   17b1c:	00709093          	slli	ra,ra,0x7
   17b20:	08000e93          	li	t4,128
   17b24:	01100e13          	li	t3,17
   17b28:	13d09463          	bne	ra,t4,17c50 <fail>

00017b2c <test_18>:
   17b2c:	00000213          	li	tp,0
   17b30:	00100093          	li	ra,1
   17b34:	00709193          	slli	gp,ra,0x7
   17b38:	00018313          	mv	t1,gp
   17b3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b40:	00200293          	li	t0,2
   17b44:	fe5216e3          	bne	tp,t0,17b30 <test_18+0x4>
   17b48:	08000e93          	li	t4,128
   17b4c:	01200e13          	li	t3,18
   17b50:	11d31063          	bne	t1,t4,17c50 <fail>

00017b54 <test_19>:
   17b54:	00000213          	li	tp,0
   17b58:	00100093          	li	ra,1
   17b5c:	00e09193          	slli	gp,ra,0xe
   17b60:	00000013          	nop
   17b64:	00018313          	mv	t1,gp
   17b68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b6c:	00200293          	li	t0,2
   17b70:	fe5214e3          	bne	tp,t0,17b58 <test_19+0x4>
   17b74:	00004eb7          	lui	t4,0x4
   17b78:	01300e13          	li	t3,19
   17b7c:	0dd31a63          	bne	t1,t4,17c50 <fail>

00017b80 <test_20>:
   17b80:	00000213          	li	tp,0
   17b84:	00100093          	li	ra,1
   17b88:	01f09193          	slli	gp,ra,0x1f
   17b8c:	00000013          	nop
   17b90:	00000013          	nop
   17b94:	00018313          	mv	t1,gp
   17b98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b9c:	00200293          	li	t0,2
   17ba0:	fe5212e3          	bne	tp,t0,17b84 <test_20+0x4>
   17ba4:	80000eb7          	lui	t4,0x80000
   17ba8:	01400e13          	li	t3,20
   17bac:	0bd31263          	bne	t1,t4,17c50 <fail>

00017bb0 <test_21>:
   17bb0:	00000213          	li	tp,0
   17bb4:	00100093          	li	ra,1
   17bb8:	00709193          	slli	gp,ra,0x7
   17bbc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bc0:	00200293          	li	t0,2
   17bc4:	fe5218e3          	bne	tp,t0,17bb4 <test_21+0x4>
   17bc8:	08000e93          	li	t4,128
   17bcc:	01500e13          	li	t3,21
   17bd0:	09d19063          	bne	gp,t4,17c50 <fail>

00017bd4 <test_22>:
   17bd4:	00000213          	li	tp,0
   17bd8:	00100093          	li	ra,1
   17bdc:	00000013          	nop
   17be0:	00e09193          	slli	gp,ra,0xe
   17be4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17be8:	00200293          	li	t0,2
   17bec:	fe5216e3          	bne	tp,t0,17bd8 <test_22+0x4>
   17bf0:	00004eb7          	lui	t4,0x4
   17bf4:	01600e13          	li	t3,22
   17bf8:	05d19c63          	bne	gp,t4,17c50 <fail>

00017bfc <test_23>:
   17bfc:	00000213          	li	tp,0
   17c00:	00100093          	li	ra,1
   17c04:	00000013          	nop
   17c08:	00000013          	nop
   17c0c:	01f09193          	slli	gp,ra,0x1f
   17c10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c14:	00200293          	li	t0,2
   17c18:	fe5214e3          	bne	tp,t0,17c00 <test_23+0x4>
   17c1c:	80000eb7          	lui	t4,0x80000
   17c20:	01700e13          	li	t3,23
   17c24:	03d19663          	bne	gp,t4,17c50 <fail>

00017c28 <test_24>:
   17c28:	01f01093          	slli	ra,zero,0x1f
   17c2c:	00000e93          	li	t4,0
   17c30:	01800e13          	li	t3,24
   17c34:	01d09e63          	bne	ra,t4,17c50 <fail>

00017c38 <test_25>:
   17c38:	02100093          	li	ra,33
   17c3c:	01409013          	slli	zero,ra,0x14
   17c40:	00000e93          	li	t4,0
   17c44:	01900e13          	li	t3,25
   17c48:	01d01463          	bne	zero,t4,17c50 <fail>
   17c4c:	05c01463          	bne	zero,t3,17c94 <pass>

00017c50 <fail>:
   17c50:	0ff00513          	li	a0,255

00017c54 <.delay_fail>:
   17c54:	fff50513          	addi	a0,a0,-1
   17c58:	fe051ee3          	bnez	a0,17c54 <.delay_fail>
   17c5c:	02000537          	lui	a0,0x2000
   17c60:	04500593          	li	a1,69
   17c64:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17c68:	05200613          	li	a2,82
   17c6c:	00c52023          	sw	a2,0(a0)
   17c70:	00c52023          	sw	a2,0(a0)
   17c74:	04f00693          	li	a3,79
   17c78:	00d52023          	sw	a3,0(a0)
   17c7c:	00c52023          	sw	a2,0(a0)
   17c80:	00d00713          	li	a4,13
   17c84:	00e52023          	sw	a4,0(a0)
   17c88:	00a00793          	li	a5,10
   17c8c:	00f52023          	sw	a5,0(a0)
   17c90:	ca0f806f          	j	10130 <slli_ret>

00017c94 <pass>:
   17c94:	0ff00513          	li	a0,255

00017c98 <.delay_ok>:
   17c98:	fff50513          	addi	a0,a0,-1
   17c9c:	fe051ee3          	bnez	a0,17c98 <.delay_ok>
   17ca0:	02000537          	lui	a0,0x2000
   17ca4:	04f00593          	li	a1,79
   17ca8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   17cac:	04b00613          	li	a2,75
   17cb0:	00c52023          	sw	a2,0(a0)
   17cb4:	00d00693          	li	a3,13
   17cb8:	00d52023          	sw	a3,0(a0)
   17cbc:	00a00713          	li	a4,10
   17cc0:	00e52023          	sw	a4,0(a0)
   17cc4:	c6cf806f          	j	10130 <slli_ret>

00017cc8 <and>:
   17cc8:	0ff00513          	li	a0,255

00017ccc <.delay_pr>:
   17ccc:	fff50513          	addi	a0,a0,-1
   17cd0:	fe051ee3          	bnez	a0,17ccc <.delay_pr>
   17cd4:	00018537          	lui	a0,0x18
   17cd8:	cf450513          	addi	a0,a0,-780 # 17cf4 <.test_name>
   17cdc:	02000637          	lui	a2,0x2000

00017ce0 <.prname_next>:
   17ce0:	00050583          	lb	a1,0(a0)
   17ce4:	00058a63          	beqz	a1,17cf8 <.prname_done>
   17ce8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   17cec:	00150513          	addi	a0,a0,1
   17cf0:	ff1ff06f          	j	17ce0 <.prname_next>

00017cf4 <.test_name>:
   17cf4:	6e61                	lui	t3,0x18
   17cf6:	0064                	addi	s1,sp,12

00017cf8 <.prname_done>:
   17cf8:	02e00593          	li	a1,46
   17cfc:	00b62023          	sw	a1,0(a2)
   17d00:	00b62023          	sw	a1,0(a2)

00017d04 <test_2>:
   17d04:	ff0100b7          	lui	ra,0xff010
   17d08:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17d0c:	0f0f1137          	lui	sp,0xf0f1
   17d10:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17d14:	0020f1b3          	and	gp,ra,sp
   17d18:	0f001eb7          	lui	t4,0xf001
   17d1c:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6944>
   17d20:	00200e13          	li	t3,2
   17d24:	49d19c63          	bne	gp,t4,181bc <fail>

00017d28 <test_3>:
   17d28:	0ff010b7          	lui	ra,0xff01
   17d2c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   17d30:	f0f0f137          	lui	sp,0xf0f0f
   17d34:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17d38:	0020f1b3          	and	gp,ra,sp
   17d3c:	00f00eb7          	lui	t4,0xf00
   17d40:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5b34>
   17d44:	00300e13          	li	t3,3
   17d48:	47d19a63          	bne	gp,t4,181bc <fail>

00017d4c <test_4>:
   17d4c:	00ff00b7          	lui	ra,0xff0
   17d50:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   17d54:	0f0f1137          	lui	sp,0xf0f1
   17d58:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17d5c:	0020f1b3          	and	gp,ra,sp
   17d60:	000f0eb7          	lui	t4,0xf0
   17d64:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd5a53>
   17d68:	00400e13          	li	t3,4
   17d6c:	45d19863          	bne	gp,t4,181bc <fail>

00017d70 <test_5>:
   17d70:	f00ff0b7          	lui	ra,0xf00ff
   17d74:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   17d78:	f0f0f137          	lui	sp,0xf0f0f
   17d7c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17d80:	0020f1b3          	and	gp,ra,sp
   17d84:	f000feb7          	lui	t4,0xf000f
   17d88:	00500e13          	li	t3,5
   17d8c:	43d19863          	bne	gp,t4,181bc <fail>

00017d90 <test_6>:
   17d90:	ff0100b7          	lui	ra,0xff010
   17d94:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17d98:	0f0f1137          	lui	sp,0xf0f1
   17d9c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17da0:	0020f0b3          	and	ra,ra,sp
   17da4:	0f001eb7          	lui	t4,0xf001
   17da8:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6944>
   17dac:	00600e13          	li	t3,6
   17db0:	41d09663          	bne	ra,t4,181bc <fail>

00017db4 <test_7>:
   17db4:	0ff010b7          	lui	ra,0xff01
   17db8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   17dbc:	f0f0f137          	lui	sp,0xf0f0f
   17dc0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17dc4:	0020f133          	and	sp,ra,sp
   17dc8:	00f00eb7          	lui	t4,0xf00
   17dcc:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5b34>
   17dd0:	00700e13          	li	t3,7
   17dd4:	3fd11463          	bne	sp,t4,181bc <fail>

00017dd8 <test_8>:
   17dd8:	ff0100b7          	lui	ra,0xff010
   17ddc:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17de0:	0010f0b3          	and	ra,ra,ra
   17de4:	ff010eb7          	lui	t4,0xff010
   17de8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   17dec:	00800e13          	li	t3,8
   17df0:	3dd09663          	bne	ra,t4,181bc <fail>

00017df4 <test_9>:
   17df4:	00000213          	li	tp,0
   17df8:	ff0100b7          	lui	ra,0xff010
   17dfc:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17e00:	0f0f1137          	lui	sp,0xf0f1
   17e04:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17e08:	0020f1b3          	and	gp,ra,sp
   17e0c:	00018313          	mv	t1,gp
   17e10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17e14:	00200293          	li	t0,2
   17e18:	fe5210e3          	bne	tp,t0,17df8 <test_9+0x4>
   17e1c:	0f001eb7          	lui	t4,0xf001
   17e20:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6944>
   17e24:	00900e13          	li	t3,9
   17e28:	39d31a63          	bne	t1,t4,181bc <fail>

00017e2c <test_10>:
   17e2c:	00000213          	li	tp,0
   17e30:	0ff010b7          	lui	ra,0xff01
   17e34:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   17e38:	f0f0f137          	lui	sp,0xf0f0f
   17e3c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17e40:	0020f1b3          	and	gp,ra,sp
   17e44:	00000013          	nop
   17e48:	00018313          	mv	t1,gp
   17e4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17e50:	00200293          	li	t0,2
   17e54:	fc521ee3          	bne	tp,t0,17e30 <test_10+0x4>
   17e58:	00f00eb7          	lui	t4,0xf00
   17e5c:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5b34>
   17e60:	00a00e13          	li	t3,10
   17e64:	35d31c63          	bne	t1,t4,181bc <fail>

00017e68 <test_11>:
   17e68:	00000213          	li	tp,0
   17e6c:	00ff00b7          	lui	ra,0xff0
   17e70:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   17e74:	0f0f1137          	lui	sp,0xf0f1
   17e78:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17e7c:	0020f1b3          	and	gp,ra,sp
   17e80:	00000013          	nop
   17e84:	00000013          	nop
   17e88:	00018313          	mv	t1,gp
   17e8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17e90:	00200293          	li	t0,2
   17e94:	fc521ce3          	bne	tp,t0,17e6c <test_11+0x4>
   17e98:	000f0eb7          	lui	t4,0xf0
   17e9c:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd5a53>
   17ea0:	00b00e13          	li	t3,11
   17ea4:	31d31c63          	bne	t1,t4,181bc <fail>

00017ea8 <test_12>:
   17ea8:	00000213          	li	tp,0
   17eac:	ff0100b7          	lui	ra,0xff010
   17eb0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17eb4:	0f0f1137          	lui	sp,0xf0f1
   17eb8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17ebc:	0020f1b3          	and	gp,ra,sp
   17ec0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17ec4:	00200293          	li	t0,2
   17ec8:	fe5212e3          	bne	tp,t0,17eac <test_12+0x4>
   17ecc:	0f001eb7          	lui	t4,0xf001
   17ed0:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6944>
   17ed4:	00c00e13          	li	t3,12
   17ed8:	2fd19263          	bne	gp,t4,181bc <fail>

00017edc <test_13>:
   17edc:	00000213          	li	tp,0
   17ee0:	0ff010b7          	lui	ra,0xff01
   17ee4:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   17ee8:	f0f0f137          	lui	sp,0xf0f0f
   17eec:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17ef0:	00000013          	nop
   17ef4:	0020f1b3          	and	gp,ra,sp
   17ef8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17efc:	00200293          	li	t0,2
   17f00:	fe5210e3          	bne	tp,t0,17ee0 <test_13+0x4>
   17f04:	00f00eb7          	lui	t4,0xf00
   17f08:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5b34>
   17f0c:	00d00e13          	li	t3,13
   17f10:	2bd19663          	bne	gp,t4,181bc <fail>

00017f14 <test_14>:
   17f14:	00000213          	li	tp,0
   17f18:	00ff00b7          	lui	ra,0xff0
   17f1c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   17f20:	0f0f1137          	lui	sp,0xf0f1
   17f24:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17f28:	00000013          	nop
   17f2c:	00000013          	nop
   17f30:	0020f1b3          	and	gp,ra,sp
   17f34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17f38:	00200293          	li	t0,2
   17f3c:	fc521ee3          	bne	tp,t0,17f18 <test_14+0x4>
   17f40:	000f0eb7          	lui	t4,0xf0
   17f44:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd5a53>
   17f48:	00e00e13          	li	t3,14
   17f4c:	27d19863          	bne	gp,t4,181bc <fail>

00017f50 <test_15>:
   17f50:	00000213          	li	tp,0
   17f54:	ff0100b7          	lui	ra,0xff010
   17f58:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17f5c:	00000013          	nop
   17f60:	0f0f1137          	lui	sp,0xf0f1
   17f64:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17f68:	0020f1b3          	and	gp,ra,sp
   17f6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17f70:	00200293          	li	t0,2
   17f74:	fe5210e3          	bne	tp,t0,17f54 <test_15+0x4>
   17f78:	0f001eb7          	lui	t4,0xf001
   17f7c:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6944>
   17f80:	00f00e13          	li	t3,15
   17f84:	23d19c63          	bne	gp,t4,181bc <fail>

00017f88 <test_16>:
   17f88:	00000213          	li	tp,0
   17f8c:	0ff010b7          	lui	ra,0xff01
   17f90:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   17f94:	00000013          	nop
   17f98:	f0f0f137          	lui	sp,0xf0f0f
   17f9c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17fa0:	00000013          	nop
   17fa4:	0020f1b3          	and	gp,ra,sp
   17fa8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17fac:	00200293          	li	t0,2
   17fb0:	fc521ee3          	bne	tp,t0,17f8c <test_16+0x4>
   17fb4:	00f00eb7          	lui	t4,0xf00
   17fb8:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5b34>
   17fbc:	01000e13          	li	t3,16
   17fc0:	1fd19e63          	bne	gp,t4,181bc <fail>

00017fc4 <test_17>:
   17fc4:	00000213          	li	tp,0
   17fc8:	00ff00b7          	lui	ra,0xff0
   17fcc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   17fd0:	00000013          	nop
   17fd4:	00000013          	nop
   17fd8:	0f0f1137          	lui	sp,0xf0f1
   17fdc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   17fe0:	0020f1b3          	and	gp,ra,sp
   17fe4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17fe8:	00200293          	li	t0,2
   17fec:	fc521ee3          	bne	tp,t0,17fc8 <test_17+0x4>
   17ff0:	000f0eb7          	lui	t4,0xf0
   17ff4:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd5a53>
   17ff8:	01100e13          	li	t3,17
   17ffc:	1dd19063          	bne	gp,t4,181bc <fail>

00018000 <test_18>:
   18000:	00000213          	li	tp,0
   18004:	0f0f1137          	lui	sp,0xf0f1
   18008:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   1800c:	ff0100b7          	lui	ra,0xff010
   18010:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   18014:	0020f1b3          	and	gp,ra,sp
   18018:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1801c:	00200293          	li	t0,2
   18020:	fe5212e3          	bne	tp,t0,18004 <test_18+0x4>
   18024:	0f001eb7          	lui	t4,0xf001
   18028:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6944>
   1802c:	01200e13          	li	t3,18
   18030:	19d19663          	bne	gp,t4,181bc <fail>

00018034 <test_19>:
   18034:	00000213          	li	tp,0
   18038:	f0f0f137          	lui	sp,0xf0f0f
   1803c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   18040:	0ff010b7          	lui	ra,0xff01
   18044:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   18048:	00000013          	nop
   1804c:	0020f1b3          	and	gp,ra,sp
   18050:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18054:	00200293          	li	t0,2
   18058:	fe5210e3          	bne	tp,t0,18038 <test_19+0x4>
   1805c:	00f00eb7          	lui	t4,0xf00
   18060:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5b34>
   18064:	01300e13          	li	t3,19
   18068:	15d19a63          	bne	gp,t4,181bc <fail>

0001806c <test_20>:
   1806c:	00000213          	li	tp,0
   18070:	0f0f1137          	lui	sp,0xf0f1
   18074:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   18078:	00ff00b7          	lui	ra,0xff0
   1807c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   18080:	00000013          	nop
   18084:	00000013          	nop
   18088:	0020f1b3          	and	gp,ra,sp
   1808c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18090:	00200293          	li	t0,2
   18094:	fc521ee3          	bne	tp,t0,18070 <test_20+0x4>
   18098:	000f0eb7          	lui	t4,0xf0
   1809c:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd5a53>
   180a0:	01400e13          	li	t3,20
   180a4:	11d19c63          	bne	gp,t4,181bc <fail>

000180a8 <test_21>:
   180a8:	00000213          	li	tp,0
   180ac:	0f0f1137          	lui	sp,0xf0f1
   180b0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   180b4:	00000013          	nop
   180b8:	ff0100b7          	lui	ra,0xff010
   180bc:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   180c0:	0020f1b3          	and	gp,ra,sp
   180c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   180c8:	00200293          	li	t0,2
   180cc:	fe5210e3          	bne	tp,t0,180ac <test_21+0x4>
   180d0:	0f001eb7          	lui	t4,0xf001
   180d4:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe6944>
   180d8:	01500e13          	li	t3,21
   180dc:	0fd19063          	bne	gp,t4,181bc <fail>

000180e0 <test_22>:
   180e0:	00000213          	li	tp,0
   180e4:	f0f0f137          	lui	sp,0xf0f0f
   180e8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   180ec:	00000013          	nop
   180f0:	0ff010b7          	lui	ra,0xff01
   180f4:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   180f8:	00000013          	nop
   180fc:	0020f1b3          	and	gp,ra,sp
   18100:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18104:	00200293          	li	t0,2
   18108:	fc521ee3          	bne	tp,t0,180e4 <test_22+0x4>
   1810c:	00f00eb7          	lui	t4,0xf00
   18110:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5b34>
   18114:	01600e13          	li	t3,22
   18118:	0bd19263          	bne	gp,t4,181bc <fail>

0001811c <test_23>:
   1811c:	00000213          	li	tp,0
   18120:	0f0f1137          	lui	sp,0xf0f1
   18124:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d6953>
   18128:	00000013          	nop
   1812c:	00000013          	nop
   18130:	00ff00b7          	lui	ra,0xff0
   18134:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   18138:	0020f1b3          	and	gp,ra,sp
   1813c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18140:	00200293          	li	t0,2
   18144:	fc521ee3          	bne	tp,t0,18120 <test_23+0x4>
   18148:	000f0eb7          	lui	t4,0xf0
   1814c:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd5a53>
   18150:	01700e13          	li	t3,23
   18154:	07d19463          	bne	gp,t4,181bc <fail>

00018158 <test_24>:
   18158:	ff0100b7          	lui	ra,0xff010
   1815c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   18160:	00107133          	and	sp,zero,ra
   18164:	00000e93          	li	t4,0
   18168:	01800e13          	li	t3,24
   1816c:	05d11863          	bne	sp,t4,181bc <fail>

00018170 <test_25>:
   18170:	00ff00b7          	lui	ra,0xff0
   18174:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   18178:	0000f133          	and	sp,ra,zero
   1817c:	00000e93          	li	t4,0
   18180:	01900e13          	li	t3,25
   18184:	03d11c63          	bne	sp,t4,181bc <fail>

00018188 <test_26>:
   18188:	000070b3          	and	ra,zero,zero
   1818c:	00000e93          	li	t4,0
   18190:	01a00e13          	li	t3,26
   18194:	03d09463          	bne	ra,t4,181bc <fail>

00018198 <test_27>:
   18198:	111110b7          	lui	ra,0x11111
   1819c:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6b55>
   181a0:	22222137          	lui	sp,0x22222
   181a4:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207c66>
   181a8:	0020f033          	and	zero,ra,sp
   181ac:	00000e93          	li	t4,0
   181b0:	01b00e13          	li	t3,27
   181b4:	01d01463          	bne	zero,t4,181bc <fail>
   181b8:	05c01463          	bne	zero,t3,18200 <pass>

000181bc <fail>:
   181bc:	0ff00513          	li	a0,255

000181c0 <.delay_fail>:
   181c0:	fff50513          	addi	a0,a0,-1
   181c4:	fe051ee3          	bnez	a0,181c0 <.delay_fail>
   181c8:	02000537          	lui	a0,0x2000
   181cc:	04500593          	li	a1,69
   181d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   181d4:	05200613          	li	a2,82
   181d8:	00c52023          	sw	a2,0(a0)
   181dc:	00c52023          	sw	a2,0(a0)
   181e0:	04f00693          	li	a3,79
   181e4:	00d52023          	sw	a3,0(a0)
   181e8:	00c52023          	sw	a2,0(a0)
   181ec:	00d00713          	li	a4,13
   181f0:	00e52023          	sw	a4,0(a0)
   181f4:	00a00793          	li	a5,10
   181f8:	00f52023          	sw	a5,0(a0)
   181fc:	f61f706f          	j	1015c <and_ret>

00018200 <pass>:
   18200:	0ff00513          	li	a0,255

00018204 <.delay_ok>:
   18204:	fff50513          	addi	a0,a0,-1
   18208:	fe051ee3          	bnez	a0,18204 <.delay_ok>
   1820c:	02000537          	lui	a0,0x2000
   18210:	04f00593          	li	a1,79
   18214:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   18218:	04b00613          	li	a2,75
   1821c:	00c52023          	sw	a2,0(a0)
   18220:	00d00693          	li	a3,13
   18224:	00d52023          	sw	a3,0(a0)
   18228:	00a00713          	li	a4,10
   1822c:	00e52023          	sw	a4,0(a0)
   18230:	f2df706f          	j	1015c <and_ret>

00018234 <ori>:
   18234:	0ff00513          	li	a0,255

00018238 <.delay_pr>:
   18238:	fff50513          	addi	a0,a0,-1
   1823c:	fe051ee3          	bnez	a0,18238 <.delay_pr>
   18240:	00018537          	lui	a0,0x18
   18244:	26050513          	addi	a0,a0,608 # 18260 <.test_name>
   18248:	02000637          	lui	a2,0x2000

0001824c <.prname_next>:
   1824c:	00050583          	lb	a1,0(a0)
   18250:	00058a63          	beqz	a1,18264 <.prname_done>
   18254:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   18258:	00150513          	addi	a0,a0,1
   1825c:	ff1ff06f          	j	1824c <.prname_next>

00018260 <.test_name>:
   18260:	0069726f          	jal	tp,af266 <_etext+0x94caa>

00018264 <.prname_done>:
   18264:	02e00593          	li	a1,46
   18268:	00b62023          	sw	a1,0(a2)
   1826c:	00b62023          	sw	a1,0(a2)

00018270 <test_2>:
   18270:	ff0100b7          	lui	ra,0xff010
   18274:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   18278:	f0f0e193          	ori	gp,ra,-241
   1827c:	f0f00e93          	li	t4,-241
   18280:	00200e13          	li	t3,2
   18284:	1dd19463          	bne	gp,t4,1844c <fail>

00018288 <test_3>:
   18288:	0ff010b7          	lui	ra,0xff01
   1828c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   18290:	0f00e193          	ori	gp,ra,240
   18294:	0ff01eb7          	lui	t4,0xff01
   18298:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   1829c:	00300e13          	li	t3,3
   182a0:	1bd19663          	bne	gp,t4,1844c <fail>

000182a4 <test_4>:
   182a4:	00ff00b7          	lui	ra,0xff0
   182a8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   182ac:	70f0e193          	ori	gp,ra,1807
   182b0:	00ff0eb7          	lui	t4,0xff0
   182b4:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd6243>
   182b8:	00400e13          	li	t3,4
   182bc:	19d19863          	bne	gp,t4,1844c <fail>

000182c0 <test_5>:
   182c0:	f00ff0b7          	lui	ra,0xf00ff
   182c4:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   182c8:	0f00e193          	ori	gp,ra,240
   182cc:	f00ffeb7          	lui	t4,0xf00ff
   182d0:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   182d4:	00500e13          	li	t3,5
   182d8:	17d19a63          	bne	gp,t4,1844c <fail>

000182dc <test_6>:
   182dc:	ff0100b7          	lui	ra,0xff010
   182e0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   182e4:	0f00e093          	ori	ra,ra,240
   182e8:	ff010eb7          	lui	t4,0xff010
   182ec:	ff0e8e93          	addi	t4,t4,-16 # ff00fff0 <_edata+0x7f00ff80>
   182f0:	00600e13          	li	t3,6
   182f4:	15d09c63          	bne	ra,t4,1844c <fail>

000182f8 <test_7>:
   182f8:	00000213          	li	tp,0
   182fc:	0ff010b7          	lui	ra,0xff01
   18300:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   18304:	0f00e193          	ori	gp,ra,240
   18308:	00018313          	mv	t1,gp
   1830c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18310:	00200293          	li	t0,2
   18314:	fe5214e3          	bne	tp,t0,182fc <test_7+0x4>
   18318:	0ff01eb7          	lui	t4,0xff01
   1831c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   18320:	00700e13          	li	t3,7
   18324:	13d31463          	bne	t1,t4,1844c <fail>

00018328 <test_8>:
   18328:	00000213          	li	tp,0
   1832c:	00ff00b7          	lui	ra,0xff0
   18330:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   18334:	70f0e193          	ori	gp,ra,1807
   18338:	00000013          	nop
   1833c:	00018313          	mv	t1,gp
   18340:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18344:	00200293          	li	t0,2
   18348:	fe5212e3          	bne	tp,t0,1832c <test_8+0x4>
   1834c:	00ff0eb7          	lui	t4,0xff0
   18350:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd6243>
   18354:	00800e13          	li	t3,8
   18358:	0fd31a63          	bne	t1,t4,1844c <fail>

0001835c <test_9>:
   1835c:	00000213          	li	tp,0
   18360:	f00ff0b7          	lui	ra,0xf00ff
   18364:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   18368:	0f00e193          	ori	gp,ra,240
   1836c:	00000013          	nop
   18370:	00000013          	nop
   18374:	00018313          	mv	t1,gp
   18378:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1837c:	00200293          	li	t0,2
   18380:	fe5210e3          	bne	tp,t0,18360 <test_9+0x4>
   18384:	f00ffeb7          	lui	t4,0xf00ff
   18388:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   1838c:	00900e13          	li	t3,9
   18390:	0bd31e63          	bne	t1,t4,1844c <fail>

00018394 <test_10>:
   18394:	00000213          	li	tp,0
   18398:	0ff010b7          	lui	ra,0xff01
   1839c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   183a0:	0f00e193          	ori	gp,ra,240
   183a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   183a8:	00200293          	li	t0,2
   183ac:	fe5216e3          	bne	tp,t0,18398 <test_10+0x4>
   183b0:	0ff01eb7          	lui	t4,0xff01
   183b4:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee6a34>
   183b8:	00a00e13          	li	t3,10
   183bc:	09d19863          	bne	gp,t4,1844c <fail>

000183c0 <test_11>:
   183c0:	00000213          	li	tp,0
   183c4:	00ff00b7          	lui	ra,0xff0
   183c8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   183cc:	00000013          	nop
   183d0:	f0f0e193          	ori	gp,ra,-241
   183d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   183d8:	00200293          	li	t0,2
   183dc:	fe5214e3          	bne	tp,t0,183c4 <test_11+0x4>
   183e0:	fff00e93          	li	t4,-1
   183e4:	00b00e13          	li	t3,11
   183e8:	07d19263          	bne	gp,t4,1844c <fail>

000183ec <test_12>:
   183ec:	00000213          	li	tp,0
   183f0:	f00ff0b7          	lui	ra,0xf00ff
   183f4:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   183f8:	00000013          	nop
   183fc:	00000013          	nop
   18400:	0f00e193          	ori	gp,ra,240
   18404:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18408:	00200293          	li	t0,2
   1840c:	fe5212e3          	bne	tp,t0,183f0 <test_12+0x4>
   18410:	f00ffeb7          	lui	t4,0xf00ff
   18414:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   18418:	00c00e13          	li	t3,12
   1841c:	03d19863          	bne	gp,t4,1844c <fail>

00018420 <test_13>:
   18420:	0f006093          	ori	ra,zero,240
   18424:	0f000e93          	li	t4,240
   18428:	00d00e13          	li	t3,13
   1842c:	03d09063          	bne	ra,t4,1844c <fail>

00018430 <test_14>:
   18430:	00ff00b7          	lui	ra,0xff0
   18434:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   18438:	70f0e013          	ori	zero,ra,1807
   1843c:	00000e93          	li	t4,0
   18440:	00e00e13          	li	t3,14
   18444:	01d01463          	bne	zero,t4,1844c <fail>
   18448:	05c01463          	bne	zero,t3,18490 <pass>

0001844c <fail>:
   1844c:	0ff00513          	li	a0,255

00018450 <.delay_fail>:
   18450:	fff50513          	addi	a0,a0,-1
   18454:	fe051ee3          	bnez	a0,18450 <.delay_fail>
   18458:	02000537          	lui	a0,0x2000
   1845c:	04500593          	li	a1,69
   18460:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   18464:	05200613          	li	a2,82
   18468:	00c52023          	sw	a2,0(a0)
   1846c:	00c52023          	sw	a2,0(a0)
   18470:	04f00693          	li	a3,79
   18474:	00d52023          	sw	a3,0(a0)
   18478:	00c52023          	sw	a2,0(a0)
   1847c:	00d00713          	li	a4,13
   18480:	00e52023          	sw	a4,0(a0)
   18484:	00a00793          	li	a5,10
   18488:	00f52023          	sw	a5,0(a0)
   1848c:	c9df706f          	j	10128 <ori_ret>

00018490 <pass>:
   18490:	0ff00513          	li	a0,255

00018494 <.delay_ok>:
   18494:	fff50513          	addi	a0,a0,-1
   18498:	fe051ee3          	bnez	a0,18494 <.delay_ok>
   1849c:	02000537          	lui	a0,0x2000
   184a0:	04f00593          	li	a1,79
   184a4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   184a8:	04b00613          	li	a2,75
   184ac:	00c52023          	sw	a2,0(a0)
   184b0:	00d00693          	li	a3,13
   184b4:	00d52023          	sw	a3,0(a0)
   184b8:	00a00713          	li	a4,10
   184bc:	00e52023          	sw	a4,0(a0)
   184c0:	c69f706f          	j	10128 <ori_ret>

000184c4 <jal>:
   184c4:	0ff00513          	li	a0,255

000184c8 <.delay_pr>:
   184c8:	fff50513          	addi	a0,a0,-1
   184cc:	fe051ee3          	bnez	a0,184c8 <.delay_pr>
   184d0:	00018537          	lui	a0,0x18
   184d4:	4f050513          	addi	a0,a0,1264 # 184f0 <.test_name>
   184d8:	02000637          	lui	a2,0x2000

000184dc <.prname_next>:
   184dc:	00050583          	lb	a1,0(a0)
   184e0:	00058a63          	beqz	a1,184f4 <.prname_done>
   184e4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   184e8:	00150513          	addi	a0,a0,1
   184ec:	ff1ff06f          	j	184dc <.prname_next>

000184f0 <.test_name>:
   184f0:	616a                	flw	ft2,152(sp)
   184f2:	006c                	addi	a1,sp,12

000184f4 <.prname_done>:
   184f4:	02e00593          	li	a1,46
   184f8:	00b62023          	sw	a1,0(a2)
   184fc:	00b62023          	sw	a1,0(a2)

00018500 <test_2>:
   18500:	00200e13          	li	t3,2
   18504:	00000093          	li	ra,0

00018508 <linkaddr_2>:
   18508:	010000ef          	jal	ra,18518 <target_2>
   1850c:	00000013          	nop
   18510:	00000013          	nop
   18514:	0440006f          	j	18558 <fail>

00018518 <target_2>:
   18518:	00000117          	auipc	sp,0x0
   1851c:	ff010113          	addi	sp,sp,-16 # 18508 <linkaddr_2>
   18520:	00410113          	addi	sp,sp,4
   18524:	02111a63          	bne	sp,ra,18558 <fail>

00018528 <test_3>:
   18528:	00100113          	li	sp,1
   1852c:	014000ef          	jal	ra,18540 <test_3+0x18>
   18530:	00110113          	addi	sp,sp,1
   18534:	00110113          	addi	sp,sp,1
   18538:	00110113          	addi	sp,sp,1
   1853c:	00110113          	addi	sp,sp,1
   18540:	00110113          	addi	sp,sp,1
   18544:	00110113          	addi	sp,sp,1
   18548:	00300e93          	li	t4,3
   1854c:	00300e13          	li	t3,3
   18550:	01d11463          	bne	sp,t4,18558 <fail>
   18554:	05c01463          	bne	zero,t3,1859c <pass>

00018558 <fail>:
   18558:	0ff00513          	li	a0,255

0001855c <.delay_fail>:
   1855c:	fff50513          	addi	a0,a0,-1
   18560:	fe051ee3          	bnez	a0,1855c <.delay_fail>
   18564:	02000537          	lui	a0,0x2000
   18568:	04500593          	li	a1,69
   1856c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   18570:	05200613          	li	a2,82
   18574:	00c52023          	sw	a2,0(a0)
   18578:	00c52023          	sw	a2,0(a0)
   1857c:	04f00693          	li	a3,79
   18580:	00d52023          	sw	a3,0(a0)
   18584:	00c52023          	sw	a2,0(a0)
   18588:	00d00713          	li	a4,13
   1858c:	00e52023          	sw	a4,0(a0)
   18590:	00a00793          	li	a5,10
   18594:	00f52023          	sw	a5,0(a0)
   18598:	b45f706f          	j	100dc <jal_ret>

0001859c <pass>:
   1859c:	0ff00513          	li	a0,255

000185a0 <.delay_ok>:
   185a0:	fff50513          	addi	a0,a0,-1
   185a4:	fe051ee3          	bnez	a0,185a0 <.delay_ok>
   185a8:	02000537          	lui	a0,0x2000
   185ac:	04f00593          	li	a1,79
   185b0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   185b4:	04b00613          	li	a2,75
   185b8:	00c52023          	sw	a2,0(a0)
   185bc:	00d00693          	li	a3,13
   185c0:	00d52023          	sw	a3,0(a0)
   185c4:	00a00713          	li	a4,10
   185c8:	00e52023          	sw	a4,0(a0)
   185cc:	b11f706f          	j	100dc <jal_ret>

000185d0 <add>:
   185d0:	0ff00513          	li	a0,255

000185d4 <.delay_pr>:
   185d4:	fff50513          	addi	a0,a0,-1
   185d8:	fe051ee3          	bnez	a0,185d4 <.delay_pr>
   185dc:	00018537          	lui	a0,0x18
   185e0:	5fc50513          	addi	a0,a0,1532 # 185fc <.test_name>
   185e4:	02000637          	lui	a2,0x2000

000185e8 <.prname_next>:
   185e8:	00050583          	lb	a1,0(a0)
   185ec:	00058a63          	beqz	a1,18600 <.prname_done>
   185f0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   185f4:	00150513          	addi	a0,a0,1
   185f8:	ff1ff06f          	j	185e8 <.prname_next>

000185fc <.test_name>:
   185fc:	6461                	lui	s0,0x18
   185fe:	0064                	addi	s1,sp,12

00018600 <.prname_done>:
   18600:	02e00593          	li	a1,46
   18604:	00b62023          	sw	a1,0(a2)
   18608:	00b62023          	sw	a1,0(a2)

0001860c <test_2>:
   1860c:	00000093          	li	ra,0
   18610:	00000113          	li	sp,0
   18614:	002081b3          	add	gp,ra,sp
   18618:	00000e93          	li	t4,0
   1861c:	00200e13          	li	t3,2
   18620:	4dd19663          	bne	gp,t4,18aec <fail>

00018624 <test_3>:
   18624:	00100093          	li	ra,1
   18628:	00100113          	li	sp,1
   1862c:	002081b3          	add	gp,ra,sp
   18630:	00200e93          	li	t4,2
   18634:	00300e13          	li	t3,3
   18638:	4bd19a63          	bne	gp,t4,18aec <fail>

0001863c <test_4>:
   1863c:	00300093          	li	ra,3
   18640:	00700113          	li	sp,7
   18644:	002081b3          	add	gp,ra,sp
   18648:	00a00e93          	li	t4,10
   1864c:	00400e13          	li	t3,4
   18650:	49d19e63          	bne	gp,t4,18aec <fail>

00018654 <test_5>:
   18654:	00000093          	li	ra,0
   18658:	ffff8137          	lui	sp,0xffff8
   1865c:	002081b3          	add	gp,ra,sp
   18660:	ffff8eb7          	lui	t4,0xffff8
   18664:	00500e13          	li	t3,5
   18668:	49d19263          	bne	gp,t4,18aec <fail>

0001866c <test_6>:
   1866c:	800000b7          	lui	ra,0x80000
   18670:	00000113          	li	sp,0
   18674:	002081b3          	add	gp,ra,sp
   18678:	80000eb7          	lui	t4,0x80000
   1867c:	00600e13          	li	t3,6
   18680:	47d19663          	bne	gp,t4,18aec <fail>

00018684 <test_7>:
   18684:	800000b7          	lui	ra,0x80000
   18688:	ffff8137          	lui	sp,0xffff8
   1868c:	002081b3          	add	gp,ra,sp
   18690:	7fff8eb7          	lui	t4,0x7fff8
   18694:	00700e13          	li	t3,7
   18698:	45d19a63          	bne	gp,t4,18aec <fail>

0001869c <test_8>:
   1869c:	00000093          	li	ra,0
   186a0:	00008137          	lui	sp,0x8
   186a4:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   186a8:	002081b3          	add	gp,ra,sp
   186ac:	00008eb7          	lui	t4,0x8
   186b0:	fffe8e93          	addi	t4,t4,-1 # 7fff <_start-0x8001>
   186b4:	00800e13          	li	t3,8
   186b8:	43d19a63          	bne	gp,t4,18aec <fail>

000186bc <test_9>:
   186bc:	800000b7          	lui	ra,0x80000
   186c0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   186c4:	00000113          	li	sp,0
   186c8:	002081b3          	add	gp,ra,sp
   186cc:	80000eb7          	lui	t4,0x80000
   186d0:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   186d4:	00900e13          	li	t3,9
   186d8:	41d19a63          	bne	gp,t4,18aec <fail>

000186dc <test_10>:
   186dc:	800000b7          	lui	ra,0x80000
   186e0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   186e4:	00008137          	lui	sp,0x8
   186e8:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   186ec:	002081b3          	add	gp,ra,sp
   186f0:	80008eb7          	lui	t4,0x80008
   186f4:	ffee8e93          	addi	t4,t4,-2 # 80007ffe <_edata+0x7f8e>
   186f8:	00a00e13          	li	t3,10
   186fc:	3fd19863          	bne	gp,t4,18aec <fail>

00018700 <test_11>:
   18700:	800000b7          	lui	ra,0x80000
   18704:	00008137          	lui	sp,0x8
   18708:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   1870c:	002081b3          	add	gp,ra,sp
   18710:	80008eb7          	lui	t4,0x80008
   18714:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   18718:	00b00e13          	li	t3,11
   1871c:	3dd19863          	bne	gp,t4,18aec <fail>

00018720 <test_12>:
   18720:	800000b7          	lui	ra,0x80000
   18724:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18728:	ffff8137          	lui	sp,0xffff8
   1872c:	002081b3          	add	gp,ra,sp
   18730:	7fff8eb7          	lui	t4,0x7fff8
   18734:	fffe8e93          	addi	t4,t4,-1 # 7fff7fff <_etext+0x7ffdda43>
   18738:	00c00e13          	li	t3,12
   1873c:	3bd19863          	bne	gp,t4,18aec <fail>

00018740 <test_13>:
   18740:	00000093          	li	ra,0
   18744:	fff00113          	li	sp,-1
   18748:	002081b3          	add	gp,ra,sp
   1874c:	fff00e93          	li	t4,-1
   18750:	00d00e13          	li	t3,13
   18754:	39d19c63          	bne	gp,t4,18aec <fail>

00018758 <test_14>:
   18758:	fff00093          	li	ra,-1
   1875c:	00100113          	li	sp,1
   18760:	002081b3          	add	gp,ra,sp
   18764:	00000e93          	li	t4,0
   18768:	00e00e13          	li	t3,14
   1876c:	39d19063          	bne	gp,t4,18aec <fail>

00018770 <test_15>:
   18770:	fff00093          	li	ra,-1
   18774:	fff00113          	li	sp,-1
   18778:	002081b3          	add	gp,ra,sp
   1877c:	ffe00e93          	li	t4,-2
   18780:	00f00e13          	li	t3,15
   18784:	37d19463          	bne	gp,t4,18aec <fail>

00018788 <test_16>:
   18788:	00100093          	li	ra,1
   1878c:	80000137          	lui	sp,0x80000
   18790:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   18794:	002081b3          	add	gp,ra,sp
   18798:	80000eb7          	lui	t4,0x80000
   1879c:	01000e13          	li	t3,16
   187a0:	35d19663          	bne	gp,t4,18aec <fail>

000187a4 <test_17>:
   187a4:	00d00093          	li	ra,13
   187a8:	00b00113          	li	sp,11
   187ac:	002080b3          	add	ra,ra,sp
   187b0:	01800e93          	li	t4,24
   187b4:	01100e13          	li	t3,17
   187b8:	33d09a63          	bne	ra,t4,18aec <fail>

000187bc <test_18>:
   187bc:	00e00093          	li	ra,14
   187c0:	00b00113          	li	sp,11
   187c4:	00208133          	add	sp,ra,sp
   187c8:	01900e93          	li	t4,25
   187cc:	01200e13          	li	t3,18
   187d0:	31d11e63          	bne	sp,t4,18aec <fail>

000187d4 <test_19>:
   187d4:	00d00093          	li	ra,13
   187d8:	001080b3          	add	ra,ra,ra
   187dc:	01a00e93          	li	t4,26
   187e0:	01300e13          	li	t3,19
   187e4:	31d09463          	bne	ra,t4,18aec <fail>

000187e8 <test_20>:
   187e8:	00000213          	li	tp,0
   187ec:	00d00093          	li	ra,13
   187f0:	00b00113          	li	sp,11
   187f4:	002081b3          	add	gp,ra,sp
   187f8:	00018313          	mv	t1,gp
   187fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18800:	00200293          	li	t0,2
   18804:	fe5214e3          	bne	tp,t0,187ec <test_20+0x4>
   18808:	01800e93          	li	t4,24
   1880c:	01400e13          	li	t3,20
   18810:	2dd31e63          	bne	t1,t4,18aec <fail>

00018814 <test_21>:
   18814:	00000213          	li	tp,0
   18818:	00e00093          	li	ra,14
   1881c:	00b00113          	li	sp,11
   18820:	002081b3          	add	gp,ra,sp
   18824:	00000013          	nop
   18828:	00018313          	mv	t1,gp
   1882c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18830:	00200293          	li	t0,2
   18834:	fe5212e3          	bne	tp,t0,18818 <test_21+0x4>
   18838:	01900e93          	li	t4,25
   1883c:	01500e13          	li	t3,21
   18840:	2bd31663          	bne	t1,t4,18aec <fail>

00018844 <test_22>:
   18844:	00000213          	li	tp,0
   18848:	00f00093          	li	ra,15
   1884c:	00b00113          	li	sp,11
   18850:	002081b3          	add	gp,ra,sp
   18854:	00000013          	nop
   18858:	00000013          	nop
   1885c:	00018313          	mv	t1,gp
   18860:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18864:	00200293          	li	t0,2
   18868:	fe5210e3          	bne	tp,t0,18848 <test_22+0x4>
   1886c:	01a00e93          	li	t4,26
   18870:	01600e13          	li	t3,22
   18874:	27d31c63          	bne	t1,t4,18aec <fail>

00018878 <test_23>:
   18878:	00000213          	li	tp,0
   1887c:	00d00093          	li	ra,13
   18880:	00b00113          	li	sp,11
   18884:	002081b3          	add	gp,ra,sp
   18888:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1888c:	00200293          	li	t0,2
   18890:	fe5216e3          	bne	tp,t0,1887c <test_23+0x4>
   18894:	01800e93          	li	t4,24
   18898:	01700e13          	li	t3,23
   1889c:	25d19863          	bne	gp,t4,18aec <fail>

000188a0 <test_24>:
   188a0:	00000213          	li	tp,0
   188a4:	00e00093          	li	ra,14
   188a8:	00b00113          	li	sp,11
   188ac:	00000013          	nop
   188b0:	002081b3          	add	gp,ra,sp
   188b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188b8:	00200293          	li	t0,2
   188bc:	fe5214e3          	bne	tp,t0,188a4 <test_24+0x4>
   188c0:	01900e93          	li	t4,25
   188c4:	01800e13          	li	t3,24
   188c8:	23d19263          	bne	gp,t4,18aec <fail>

000188cc <test_25>:
   188cc:	00000213          	li	tp,0
   188d0:	00f00093          	li	ra,15
   188d4:	00b00113          	li	sp,11
   188d8:	00000013          	nop
   188dc:	00000013          	nop
   188e0:	002081b3          	add	gp,ra,sp
   188e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188e8:	00200293          	li	t0,2
   188ec:	fe5212e3          	bne	tp,t0,188d0 <test_25+0x4>
   188f0:	01a00e93          	li	t4,26
   188f4:	01900e13          	li	t3,25
   188f8:	1fd19a63          	bne	gp,t4,18aec <fail>

000188fc <test_26>:
   188fc:	00000213          	li	tp,0
   18900:	00d00093          	li	ra,13
   18904:	00000013          	nop
   18908:	00b00113          	li	sp,11
   1890c:	002081b3          	add	gp,ra,sp
   18910:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18914:	00200293          	li	t0,2
   18918:	fe5214e3          	bne	tp,t0,18900 <test_26+0x4>
   1891c:	01800e93          	li	t4,24
   18920:	01a00e13          	li	t3,26
   18924:	1dd19463          	bne	gp,t4,18aec <fail>

00018928 <test_27>:
   18928:	00000213          	li	tp,0
   1892c:	00e00093          	li	ra,14
   18930:	00000013          	nop
   18934:	00b00113          	li	sp,11
   18938:	00000013          	nop
   1893c:	002081b3          	add	gp,ra,sp
   18940:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18944:	00200293          	li	t0,2
   18948:	fe5212e3          	bne	tp,t0,1892c <test_27+0x4>
   1894c:	01900e93          	li	t4,25
   18950:	01b00e13          	li	t3,27
   18954:	19d19c63          	bne	gp,t4,18aec <fail>

00018958 <test_28>:
   18958:	00000213          	li	tp,0
   1895c:	00f00093          	li	ra,15
   18960:	00000013          	nop
   18964:	00000013          	nop
   18968:	00b00113          	li	sp,11
   1896c:	002081b3          	add	gp,ra,sp
   18970:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18974:	00200293          	li	t0,2
   18978:	fe5212e3          	bne	tp,t0,1895c <test_28+0x4>
   1897c:	01a00e93          	li	t4,26
   18980:	01c00e13          	li	t3,28
   18984:	17d19463          	bne	gp,t4,18aec <fail>

00018988 <test_29>:
   18988:	00000213          	li	tp,0
   1898c:	00b00113          	li	sp,11
   18990:	00d00093          	li	ra,13
   18994:	002081b3          	add	gp,ra,sp
   18998:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1899c:	00200293          	li	t0,2
   189a0:	fe5216e3          	bne	tp,t0,1898c <test_29+0x4>
   189a4:	01800e93          	li	t4,24
   189a8:	01d00e13          	li	t3,29
   189ac:	15d19063          	bne	gp,t4,18aec <fail>

000189b0 <test_30>:
   189b0:	00000213          	li	tp,0
   189b4:	00b00113          	li	sp,11
   189b8:	00e00093          	li	ra,14
   189bc:	00000013          	nop
   189c0:	002081b3          	add	gp,ra,sp
   189c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189c8:	00200293          	li	t0,2
   189cc:	fe5214e3          	bne	tp,t0,189b4 <test_30+0x4>
   189d0:	01900e93          	li	t4,25
   189d4:	01e00e13          	li	t3,30
   189d8:	11d19a63          	bne	gp,t4,18aec <fail>

000189dc <test_31>:
   189dc:	00000213          	li	tp,0
   189e0:	00b00113          	li	sp,11
   189e4:	00f00093          	li	ra,15
   189e8:	00000013          	nop
   189ec:	00000013          	nop
   189f0:	002081b3          	add	gp,ra,sp
   189f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189f8:	00200293          	li	t0,2
   189fc:	fe5212e3          	bne	tp,t0,189e0 <test_31+0x4>
   18a00:	01a00e93          	li	t4,26
   18a04:	01f00e13          	li	t3,31
   18a08:	0fd19263          	bne	gp,t4,18aec <fail>

00018a0c <test_32>:
   18a0c:	00000213          	li	tp,0
   18a10:	00b00113          	li	sp,11
   18a14:	00000013          	nop
   18a18:	00d00093          	li	ra,13
   18a1c:	002081b3          	add	gp,ra,sp
   18a20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a24:	00200293          	li	t0,2
   18a28:	fe5214e3          	bne	tp,t0,18a10 <test_32+0x4>
   18a2c:	01800e93          	li	t4,24
   18a30:	02000e13          	li	t3,32
   18a34:	0bd19c63          	bne	gp,t4,18aec <fail>

00018a38 <test_33>:
   18a38:	00000213          	li	tp,0
   18a3c:	00b00113          	li	sp,11
   18a40:	00000013          	nop
   18a44:	00e00093          	li	ra,14
   18a48:	00000013          	nop
   18a4c:	002081b3          	add	gp,ra,sp
   18a50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a54:	00200293          	li	t0,2
   18a58:	fe5212e3          	bne	tp,t0,18a3c <test_33+0x4>
   18a5c:	01900e93          	li	t4,25
   18a60:	02100e13          	li	t3,33
   18a64:	09d19463          	bne	gp,t4,18aec <fail>

00018a68 <test_34>:
   18a68:	00000213          	li	tp,0
   18a6c:	00b00113          	li	sp,11
   18a70:	00000013          	nop
   18a74:	00000013          	nop
   18a78:	00f00093          	li	ra,15
   18a7c:	002081b3          	add	gp,ra,sp
   18a80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a84:	00200293          	li	t0,2
   18a88:	fe5212e3          	bne	tp,t0,18a6c <test_34+0x4>
   18a8c:	01a00e93          	li	t4,26
   18a90:	02200e13          	li	t3,34
   18a94:	05d19c63          	bne	gp,t4,18aec <fail>

00018a98 <test_35>:
   18a98:	00f00093          	li	ra,15
   18a9c:	00100133          	add	sp,zero,ra
   18aa0:	00f00e93          	li	t4,15
   18aa4:	02300e13          	li	t3,35
   18aa8:	05d11263          	bne	sp,t4,18aec <fail>

00018aac <test_36>:
   18aac:	02000093          	li	ra,32
   18ab0:	00008133          	add	sp,ra,zero
   18ab4:	02000e93          	li	t4,32
   18ab8:	02400e13          	li	t3,36
   18abc:	03d11863          	bne	sp,t4,18aec <fail>

00018ac0 <test_37>:
   18ac0:	000000b3          	add	ra,zero,zero
   18ac4:	00000e93          	li	t4,0
   18ac8:	02500e13          	li	t3,37
   18acc:	03d09063          	bne	ra,t4,18aec <fail>

00018ad0 <test_38>:
   18ad0:	01000093          	li	ra,16
   18ad4:	01e00113          	li	sp,30
   18ad8:	00208033          	add	zero,ra,sp
   18adc:	00000e93          	li	t4,0
   18ae0:	02600e13          	li	t3,38
   18ae4:	01d01463          	bne	zero,t4,18aec <fail>
   18ae8:	05c01463          	bne	zero,t3,18b30 <pass>

00018aec <fail>:
   18aec:	0ff00513          	li	a0,255

00018af0 <.delay_fail>:
   18af0:	fff50513          	addi	a0,a0,-1
   18af4:	fe051ee3          	bnez	a0,18af0 <.delay_fail>
   18af8:	02000537          	lui	a0,0x2000
   18afc:	04500593          	li	a1,69
   18b00:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   18b04:	05200613          	li	a2,82
   18b08:	00c52023          	sw	a2,0(a0)
   18b0c:	00c52023          	sw	a2,0(a0)
   18b10:	04f00693          	li	a3,79
   18b14:	00d52023          	sw	a3,0(a0)
   18b18:	00c52023          	sw	a2,0(a0)
   18b1c:	00d00713          	li	a4,13
   18b20:	00e52023          	sw	a4,0(a0)
   18b24:	00a00793          	li	a5,10
   18b28:	00f52023          	sw	a5,0(a0)
   18b2c:	e10f706f          	j	1013c <add_ret>

00018b30 <pass>:
   18b30:	0ff00513          	li	a0,255

00018b34 <.delay_ok>:
   18b34:	fff50513          	addi	a0,a0,-1
   18b38:	fe051ee3          	bnez	a0,18b34 <.delay_ok>
   18b3c:	02000537          	lui	a0,0x2000
   18b40:	04f00593          	li	a1,79
   18b44:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   18b48:	04b00613          	li	a2,75
   18b4c:	00c52023          	sw	a2,0(a0)
   18b50:	00d00693          	li	a3,13
   18b54:	00d52023          	sw	a3,0(a0)
   18b58:	00a00713          	li	a4,10
   18b5c:	00e52023          	sw	a4,0(a0)
   18b60:	ddcf706f          	j	1013c <add_ret>

00018b64 <sb>:
   18b64:	0ff00513          	li	a0,255

00018b68 <.delay_pr>:
   18b68:	fff50513          	addi	a0,a0,-1
   18b6c:	fe051ee3          	bnez	a0,18b68 <.delay_pr>
   18b70:	00019537          	lui	a0,0x19
   18b74:	b9050513          	addi	a0,a0,-1136 # 18b90 <.test_name>
   18b78:	02000637          	lui	a2,0x2000

00018b7c <.prname_next>:
   18b7c:	00050583          	lb	a1,0(a0)
   18b80:	00058a63          	beqz	a1,18b94 <.prname_done>
   18b84:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   18b88:	00150513          	addi	a0,a0,1
   18b8c:	ff1ff06f          	j	18b7c <.prname_next>

00018b90 <.test_name>:
   18b90:	00006273          	csrrsi	tp,ustatus,0

00018b94 <.prname_done>:
   18b94:	02e00593          	li	a1,46
   18b98:	00b62023          	sw	a1,0(a2)
   18b9c:	00b62023          	sw	a1,0(a2)

00018ba0 <test_2>:
   18ba0:	7ffe7097          	auipc	ra,0x7ffe7
   18ba4:	4c408093          	addi	ra,ra,1220 # 80000064 <tdat>
   18ba8:	faa00113          	li	sp,-86
   18bac:	00208023          	sb	sp,0(ra)
   18bb0:	00008183          	lb	gp,0(ra)
   18bb4:	faa00e93          	li	t4,-86
   18bb8:	00200e13          	li	t3,2
   18bbc:	3dd19c63          	bne	gp,t4,18f94 <fail>

00018bc0 <test_3>:
   18bc0:	7ffe7097          	auipc	ra,0x7ffe7
   18bc4:	4a408093          	addi	ra,ra,1188 # 80000064 <tdat>
   18bc8:	00000113          	li	sp,0
   18bcc:	002080a3          	sb	sp,1(ra)
   18bd0:	00108183          	lb	gp,1(ra)
   18bd4:	00000e93          	li	t4,0
   18bd8:	00300e13          	li	t3,3
   18bdc:	3bd19c63          	bne	gp,t4,18f94 <fail>

00018be0 <test_4>:
   18be0:	7ffe7097          	auipc	ra,0x7ffe7
   18be4:	48408093          	addi	ra,ra,1156 # 80000064 <tdat>
   18be8:	fffff137          	lui	sp,0xfffff
   18bec:	fa010113          	addi	sp,sp,-96 # ffffefa0 <_edata+0x7fffef30>
   18bf0:	00208123          	sb	sp,2(ra)
   18bf4:	00209183          	lh	gp,2(ra)
   18bf8:	fffffeb7          	lui	t4,0xfffff
   18bfc:	fa0e8e93          	addi	t4,t4,-96 # ffffefa0 <_edata+0x7fffef30>
   18c00:	00400e13          	li	t3,4
   18c04:	39d19863          	bne	gp,t4,18f94 <fail>

00018c08 <test_5>:
   18c08:	7ffe7097          	auipc	ra,0x7ffe7
   18c0c:	45c08093          	addi	ra,ra,1116 # 80000064 <tdat>
   18c10:	00a00113          	li	sp,10
   18c14:	002081a3          	sb	sp,3(ra)
   18c18:	00308183          	lb	gp,3(ra)
   18c1c:	00a00e93          	li	t4,10
   18c20:	00500e13          	li	t3,5
   18c24:	37d19863          	bne	gp,t4,18f94 <fail>

00018c28 <test_6>:
   18c28:	7ffe7097          	auipc	ra,0x7ffe7
   18c2c:	44308093          	addi	ra,ra,1091 # 8000006b <tdat8>
   18c30:	faa00113          	li	sp,-86
   18c34:	fe208ea3          	sb	sp,-3(ra)
   18c38:	ffd08183          	lb	gp,-3(ra)
   18c3c:	faa00e93          	li	t4,-86
   18c40:	00600e13          	li	t3,6
   18c44:	35d19863          	bne	gp,t4,18f94 <fail>

00018c48 <test_7>:
   18c48:	7ffe7097          	auipc	ra,0x7ffe7
   18c4c:	42308093          	addi	ra,ra,1059 # 8000006b <tdat8>
   18c50:	00000113          	li	sp,0
   18c54:	fe208f23          	sb	sp,-2(ra)
   18c58:	ffe08183          	lb	gp,-2(ra)
   18c5c:	00000e93          	li	t4,0
   18c60:	00700e13          	li	t3,7
   18c64:	33d19863          	bne	gp,t4,18f94 <fail>

00018c68 <test_8>:
   18c68:	7ffe7097          	auipc	ra,0x7ffe7
   18c6c:	40308093          	addi	ra,ra,1027 # 8000006b <tdat8>
   18c70:	fa000113          	li	sp,-96
   18c74:	fe208fa3          	sb	sp,-1(ra)
   18c78:	fff08183          	lb	gp,-1(ra)
   18c7c:	fa000e93          	li	t4,-96
   18c80:	00800e13          	li	t3,8
   18c84:	31d19863          	bne	gp,t4,18f94 <fail>

00018c88 <test_9>:
   18c88:	7ffe7097          	auipc	ra,0x7ffe7
   18c8c:	3e308093          	addi	ra,ra,995 # 8000006b <tdat8>
   18c90:	00a00113          	li	sp,10
   18c94:	00208023          	sb	sp,0(ra)
   18c98:	00008183          	lb	gp,0(ra)
   18c9c:	00a00e93          	li	t4,10
   18ca0:	00900e13          	li	t3,9
   18ca4:	2fd19863          	bne	gp,t4,18f94 <fail>

00018ca8 <test_10>:
   18ca8:	7ffe7097          	auipc	ra,0x7ffe7
   18cac:	3c408093          	addi	ra,ra,964 # 8000006c <tdat9>
   18cb0:	12345137          	lui	sp,0x12345
   18cb4:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b0bc>
   18cb8:	fe008213          	addi	tp,ra,-32
   18cbc:	02220023          	sb	sp,32(tp) # 20 <_start-0xffe0>
   18cc0:	00008183          	lb	gp,0(ra)
   18cc4:	07800e93          	li	t4,120
   18cc8:	00a00e13          	li	t3,10
   18ccc:	2dd19463          	bne	gp,t4,18f94 <fail>

00018cd0 <test_11>:
   18cd0:	7ffe7097          	auipc	ra,0x7ffe7
   18cd4:	39c08093          	addi	ra,ra,924 # 8000006c <tdat9>
   18cd8:	00003137          	lui	sp,0x3
   18cdc:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   18ce0:	ffa08093          	addi	ra,ra,-6
   18ce4:	002083a3          	sb	sp,7(ra)
   18ce8:	7ffe7217          	auipc	tp,0x7ffe7
   18cec:	38520213          	addi	tp,tp,901 # 8000006d <tdat10>
   18cf0:	00020183          	lb	gp,0(tp) # 0 <_start-0x10000>
   18cf4:	f9800e93          	li	t4,-104
   18cf8:	00b00e13          	li	t3,11
   18cfc:	29d19c63          	bne	gp,t4,18f94 <fail>

00018d00 <test_12>:
   18d00:	00c00e13          	li	t3,12
   18d04:	00000213          	li	tp,0
   18d08:	fdd00093          	li	ra,-35
   18d0c:	7ffe7117          	auipc	sp,0x7ffe7
   18d10:	35810113          	addi	sp,sp,856 # 80000064 <tdat>
   18d14:	00110023          	sb	ra,0(sp)
   18d18:	00010183          	lb	gp,0(sp)
   18d1c:	fdd00e93          	li	t4,-35
   18d20:	27d19a63          	bne	gp,t4,18f94 <fail>
   18d24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18d28:	00200293          	li	t0,2
   18d2c:	fc521ee3          	bne	tp,t0,18d08 <test_12+0x8>

00018d30 <test_13>:
   18d30:	00d00e13          	li	t3,13
   18d34:	00000213          	li	tp,0
   18d38:	fcd00093          	li	ra,-51
   18d3c:	7ffe7117          	auipc	sp,0x7ffe7
   18d40:	32810113          	addi	sp,sp,808 # 80000064 <tdat>
   18d44:	00000013          	nop
   18d48:	001100a3          	sb	ra,1(sp)
   18d4c:	00110183          	lb	gp,1(sp)
   18d50:	fcd00e93          	li	t4,-51
   18d54:	25d19063          	bne	gp,t4,18f94 <fail>
   18d58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18d5c:	00200293          	li	t0,2
   18d60:	fc521ce3          	bne	tp,t0,18d38 <test_13+0x8>

00018d64 <test_14>:
   18d64:	00e00e13          	li	t3,14
   18d68:	00000213          	li	tp,0
   18d6c:	fcc00093          	li	ra,-52
   18d70:	7ffe7117          	auipc	sp,0x7ffe7
   18d74:	2f410113          	addi	sp,sp,756 # 80000064 <tdat>
   18d78:	00000013          	nop
   18d7c:	00000013          	nop
   18d80:	00110123          	sb	ra,2(sp)
   18d84:	00210183          	lb	gp,2(sp)
   18d88:	fcc00e93          	li	t4,-52
   18d8c:	21d19463          	bne	gp,t4,18f94 <fail>
   18d90:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18d94:	00200293          	li	t0,2
   18d98:	fc521ae3          	bne	tp,t0,18d6c <test_14+0x8>

00018d9c <test_15>:
   18d9c:	00f00e13          	li	t3,15
   18da0:	00000213          	li	tp,0
   18da4:	fbc00093          	li	ra,-68
   18da8:	00000013          	nop
   18dac:	7ffe7117          	auipc	sp,0x7ffe7
   18db0:	2b810113          	addi	sp,sp,696 # 80000064 <tdat>
   18db4:	001101a3          	sb	ra,3(sp)
   18db8:	00310183          	lb	gp,3(sp)
   18dbc:	fbc00e93          	li	t4,-68
   18dc0:	1dd19a63          	bne	gp,t4,18f94 <fail>
   18dc4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18dc8:	00200293          	li	t0,2
   18dcc:	fc521ce3          	bne	tp,t0,18da4 <test_15+0x8>

00018dd0 <test_16>:
   18dd0:	01000e13          	li	t3,16
   18dd4:	00000213          	li	tp,0
   18dd8:	fbb00093          	li	ra,-69
   18ddc:	00000013          	nop
   18de0:	7ffe7117          	auipc	sp,0x7ffe7
   18de4:	28410113          	addi	sp,sp,644 # 80000064 <tdat>
   18de8:	00000013          	nop
   18dec:	00110223          	sb	ra,4(sp)
   18df0:	00410183          	lb	gp,4(sp)
   18df4:	fbb00e93          	li	t4,-69
   18df8:	19d19e63          	bne	gp,t4,18f94 <fail>
   18dfc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e00:	00200293          	li	t0,2
   18e04:	fc521ae3          	bne	tp,t0,18dd8 <test_16+0x8>

00018e08 <test_17>:
   18e08:	01100e13          	li	t3,17
   18e0c:	00000213          	li	tp,0
   18e10:	fab00093          	li	ra,-85
   18e14:	00000013          	nop
   18e18:	00000013          	nop
   18e1c:	7ffe7117          	auipc	sp,0x7ffe7
   18e20:	24810113          	addi	sp,sp,584 # 80000064 <tdat>
   18e24:	001102a3          	sb	ra,5(sp)
   18e28:	00510183          	lb	gp,5(sp)
   18e2c:	fab00e93          	li	t4,-85
   18e30:	17d19263          	bne	gp,t4,18f94 <fail>
   18e34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e38:	00200293          	li	t0,2
   18e3c:	fc521ae3          	bne	tp,t0,18e10 <test_17+0x8>

00018e40 <test_18>:
   18e40:	01200e13          	li	t3,18
   18e44:	00000213          	li	tp,0
   18e48:	7ffe7117          	auipc	sp,0x7ffe7
   18e4c:	21c10113          	addi	sp,sp,540 # 80000064 <tdat>
   18e50:	03300093          	li	ra,51
   18e54:	00110023          	sb	ra,0(sp)
   18e58:	00010183          	lb	gp,0(sp)
   18e5c:	03300e93          	li	t4,51
   18e60:	13d19a63          	bne	gp,t4,18f94 <fail>
   18e64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e68:	00200293          	li	t0,2
   18e6c:	fc521ee3          	bne	tp,t0,18e48 <test_18+0x8>

00018e70 <test_19>:
   18e70:	01300e13          	li	t3,19
   18e74:	00000213          	li	tp,0
   18e78:	7ffe7117          	auipc	sp,0x7ffe7
   18e7c:	1ec10113          	addi	sp,sp,492 # 80000064 <tdat>
   18e80:	02300093          	li	ra,35
   18e84:	00000013          	nop
   18e88:	001100a3          	sb	ra,1(sp)
   18e8c:	00110183          	lb	gp,1(sp)
   18e90:	02300e93          	li	t4,35
   18e94:	11d19063          	bne	gp,t4,18f94 <fail>
   18e98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e9c:	00200293          	li	t0,2
   18ea0:	fc521ce3          	bne	tp,t0,18e78 <test_19+0x8>

00018ea4 <test_20>:
   18ea4:	01400e13          	li	t3,20
   18ea8:	00000213          	li	tp,0
   18eac:	7ffe7117          	auipc	sp,0x7ffe7
   18eb0:	1b810113          	addi	sp,sp,440 # 80000064 <tdat>
   18eb4:	02200093          	li	ra,34
   18eb8:	00000013          	nop
   18ebc:	00000013          	nop
   18ec0:	00110123          	sb	ra,2(sp)
   18ec4:	00210183          	lb	gp,2(sp)
   18ec8:	02200e93          	li	t4,34
   18ecc:	0dd19463          	bne	gp,t4,18f94 <fail>
   18ed0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ed4:	00200293          	li	t0,2
   18ed8:	fc521ae3          	bne	tp,t0,18eac <test_20+0x8>

00018edc <test_21>:
   18edc:	01500e13          	li	t3,21
   18ee0:	00000213          	li	tp,0
   18ee4:	7ffe7117          	auipc	sp,0x7ffe7
   18ee8:	18010113          	addi	sp,sp,384 # 80000064 <tdat>
   18eec:	00000013          	nop
   18ef0:	01200093          	li	ra,18
   18ef4:	001101a3          	sb	ra,3(sp)
   18ef8:	00310183          	lb	gp,3(sp)
   18efc:	01200e93          	li	t4,18
   18f00:	09d19a63          	bne	gp,t4,18f94 <fail>
   18f04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f08:	00200293          	li	t0,2
   18f0c:	fc521ce3          	bne	tp,t0,18ee4 <test_21+0x8>

00018f10 <test_22>:
   18f10:	01600e13          	li	t3,22
   18f14:	00000213          	li	tp,0
   18f18:	7ffe7117          	auipc	sp,0x7ffe7
   18f1c:	14c10113          	addi	sp,sp,332 # 80000064 <tdat>
   18f20:	00000013          	nop
   18f24:	01100093          	li	ra,17
   18f28:	00000013          	nop
   18f2c:	00110223          	sb	ra,4(sp)
   18f30:	00410183          	lb	gp,4(sp)
   18f34:	01100e93          	li	t4,17
   18f38:	05d19e63          	bne	gp,t4,18f94 <fail>
   18f3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f40:	00200293          	li	t0,2
   18f44:	fc521ae3          	bne	tp,t0,18f18 <test_22+0x8>

00018f48 <test_23>:
   18f48:	01700e13          	li	t3,23
   18f4c:	00000213          	li	tp,0
   18f50:	7ffe7117          	auipc	sp,0x7ffe7
   18f54:	11410113          	addi	sp,sp,276 # 80000064 <tdat>
   18f58:	00000013          	nop
   18f5c:	00000013          	nop
   18f60:	00100093          	li	ra,1
   18f64:	001102a3          	sb	ra,5(sp)
   18f68:	00510183          	lb	gp,5(sp)
   18f6c:	00100e93          	li	t4,1
   18f70:	03d19263          	bne	gp,t4,18f94 <fail>
   18f74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f78:	00200293          	li	t0,2
   18f7c:	fc521ae3          	bne	tp,t0,18f50 <test_23+0x8>
   18f80:	0ef00513          	li	a0,239
   18f84:	7ffe7597          	auipc	a1,0x7ffe7
   18f88:	0e058593          	addi	a1,a1,224 # 80000064 <tdat>
   18f8c:	00a581a3          	sb	a0,3(a1)
   18f90:	05c01463          	bne	zero,t3,18fd8 <pass>

00018f94 <fail>:
   18f94:	0ff00513          	li	a0,255

00018f98 <.delay_fail>:
   18f98:	fff50513          	addi	a0,a0,-1
   18f9c:	fe051ee3          	bnez	a0,18f98 <.delay_fail>
   18fa0:	02000537          	lui	a0,0x2000
   18fa4:	04500593          	li	a1,69
   18fa8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   18fac:	05200613          	li	a2,82
   18fb0:	00c52023          	sw	a2,0(a0)
   18fb4:	00c52023          	sw	a2,0(a0)
   18fb8:	04f00693          	li	a3,79
   18fbc:	00d52023          	sw	a3,0(a0)
   18fc0:	00c52023          	sw	a2,0(a0)
   18fc4:	00d00713          	li	a4,13
   18fc8:	00e52023          	sw	a4,0(a0)
   18fcc:	00a00793          	li	a5,10
   18fd0:	00f52023          	sw	a5,0(a0)
   18fd4:	93cf706f          	j	10110 <sb_ret>

00018fd8 <pass>:
   18fd8:	0ff00513          	li	a0,255

00018fdc <.delay_ok>:
   18fdc:	fff50513          	addi	a0,a0,-1
   18fe0:	fe051ee3          	bnez	a0,18fdc <.delay_ok>
   18fe4:	02000537          	lui	a0,0x2000
   18fe8:	04f00593          	li	a1,79
   18fec:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   18ff0:	04b00613          	li	a2,75
   18ff4:	00c52023          	sw	a2,0(a0)
   18ff8:	00d00693          	li	a3,13
   18ffc:	00d52023          	sw	a3,0(a0)
   19000:	00a00713          	li	a4,10
   19004:	00e52023          	sw	a4,0(a0)
   19008:	908f706f          	j	10110 <sb_ret>

0001900c <andi>:
   1900c:	0ff00513          	li	a0,255

00019010 <.delay_pr>:
   19010:	fff50513          	addi	a0,a0,-1
   19014:	fe051ee3          	bnez	a0,19010 <.delay_pr>
   19018:	00019537          	lui	a0,0x19
   1901c:	03850513          	addi	a0,a0,56 # 19038 <.test_name>
   19020:	02000637          	lui	a2,0x2000

00019024 <.prname_next>:
   19024:	00050583          	lb	a1,0(a0)
   19028:	00058c63          	beqz	a1,19040 <.prname_done>
   1902c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   19030:	00150513          	addi	a0,a0,1
   19034:	ff1ff06f          	j	19024 <.prname_next>

00019038 <.test_name>:
   19038:	6e61                	lui	t3,0x18
   1903a:	6964                	flw	fs1,84(a0)
   1903c:	0000                	unimp
	...

00019040 <.prname_done>:
   19040:	02e00593          	li	a1,46
   19044:	00b62023          	sw	a1,0(a2)
   19048:	00b62023          	sw	a1,0(a2)

0001904c <test_2>:
   1904c:	ff0100b7          	lui	ra,0xff010
   19050:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   19054:	f0f0f193          	andi	gp,ra,-241
   19058:	ff010eb7          	lui	t4,0xff010
   1905c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   19060:	00200e13          	li	t3,2
   19064:	1bd19463          	bne	gp,t4,1920c <fail>

00019068 <test_3>:
   19068:	0ff010b7          	lui	ra,0xff01
   1906c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   19070:	0f00f193          	andi	gp,ra,240
   19074:	0f000e93          	li	t4,240
   19078:	00300e13          	li	t3,3
   1907c:	19d19863          	bne	gp,t4,1920c <fail>

00019080 <test_4>:
   19080:	00ff00b7          	lui	ra,0xff0
   19084:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   19088:	70f0f193          	andi	gp,ra,1807
   1908c:	00f00e93          	li	t4,15
   19090:	00400e13          	li	t3,4
   19094:	17d19c63          	bne	gp,t4,1920c <fail>

00019098 <test_5>:
   19098:	f00ff0b7          	lui	ra,0xf00ff
   1909c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   190a0:	0f00f193          	andi	gp,ra,240
   190a4:	00000e93          	li	t4,0
   190a8:	00500e13          	li	t3,5
   190ac:	17d19063          	bne	gp,t4,1920c <fail>

000190b0 <test_6>:
   190b0:	ff0100b7          	lui	ra,0xff010
   190b4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   190b8:	0f00f093          	andi	ra,ra,240
   190bc:	00000e93          	li	t4,0
   190c0:	00600e13          	li	t3,6
   190c4:	15d09463          	bne	ra,t4,1920c <fail>

000190c8 <test_7>:
   190c8:	00000213          	li	tp,0
   190cc:	0ff010b7          	lui	ra,0xff01
   190d0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   190d4:	70f0f193          	andi	gp,ra,1807
   190d8:	00018313          	mv	t1,gp
   190dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   190e0:	00200293          	li	t0,2
   190e4:	fe5214e3          	bne	tp,t0,190cc <test_7+0x4>
   190e8:	70000e93          	li	t4,1792
   190ec:	00700e13          	li	t3,7
   190f0:	11d31e63          	bne	t1,t4,1920c <fail>

000190f4 <test_8>:
   190f4:	00000213          	li	tp,0
   190f8:	00ff00b7          	lui	ra,0xff0
   190fc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   19100:	0f00f193          	andi	gp,ra,240
   19104:	00000013          	nop
   19108:	00018313          	mv	t1,gp
   1910c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19110:	00200293          	li	t0,2
   19114:	fe5212e3          	bne	tp,t0,190f8 <test_8+0x4>
   19118:	0f000e93          	li	t4,240
   1911c:	00800e13          	li	t3,8
   19120:	0fd31663          	bne	t1,t4,1920c <fail>

00019124 <test_9>:
   19124:	00000213          	li	tp,0
   19128:	f00ff0b7          	lui	ra,0xf00ff
   1912c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19130:	f0f0f193          	andi	gp,ra,-241
   19134:	00000013          	nop
   19138:	00000013          	nop
   1913c:	00018313          	mv	t1,gp
   19140:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19144:	00200293          	li	t0,2
   19148:	fe5210e3          	bne	tp,t0,19128 <test_9+0x4>
   1914c:	f00ffeb7          	lui	t4,0xf00ff
   19150:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   19154:	00900e13          	li	t3,9
   19158:	0bd31a63          	bne	t1,t4,1920c <fail>

0001915c <test_10>:
   1915c:	00000213          	li	tp,0
   19160:	0ff010b7          	lui	ra,0xff01
   19164:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee6a34>
   19168:	70f0f193          	andi	gp,ra,1807
   1916c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19170:	00200293          	li	t0,2
   19174:	fe5216e3          	bne	tp,t0,19160 <test_10+0x4>
   19178:	70000e93          	li	t4,1792
   1917c:	00a00e13          	li	t3,10
   19180:	09d19663          	bne	gp,t4,1920c <fail>

00019184 <test_11>:
   19184:	00000213          	li	tp,0
   19188:	00ff00b7          	lui	ra,0xff0
   1918c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   19190:	00000013          	nop
   19194:	0f00f193          	andi	gp,ra,240
   19198:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1919c:	00200293          	li	t0,2
   191a0:	fe5214e3          	bne	tp,t0,19188 <test_11+0x4>
   191a4:	0f000e93          	li	t4,240
   191a8:	00b00e13          	li	t3,11
   191ac:	07d19063          	bne	gp,t4,1920c <fail>

000191b0 <test_12>:
   191b0:	00000213          	li	tp,0
   191b4:	f00ff0b7          	lui	ra,0xf00ff
   191b8:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   191bc:	00000013          	nop
   191c0:	00000013          	nop
   191c4:	70f0f193          	andi	gp,ra,1807
   191c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   191cc:	00200293          	li	t0,2
   191d0:	fe5212e3          	bne	tp,t0,191b4 <test_12+0x4>
   191d4:	00f00e93          	li	t4,15
   191d8:	00c00e13          	li	t3,12
   191dc:	03d19863          	bne	gp,t4,1920c <fail>

000191e0 <test_13>:
   191e0:	0f007093          	andi	ra,zero,240
   191e4:	00000e93          	li	t4,0
   191e8:	00d00e13          	li	t3,13
   191ec:	03d09063          	bne	ra,t4,1920c <fail>

000191f0 <test_14>:
   191f0:	00ff00b7          	lui	ra,0xff0
   191f4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5b43>
   191f8:	70f0f013          	andi	zero,ra,1807
   191fc:	00000e93          	li	t4,0
   19200:	00e00e13          	li	t3,14
   19204:	01d01463          	bne	zero,t4,1920c <fail>
   19208:	05c01463          	bne	zero,t3,19250 <pass>

0001920c <fail>:
   1920c:	0ff00513          	li	a0,255

00019210 <.delay_fail>:
   19210:	fff50513          	addi	a0,a0,-1
   19214:	fe051ee3          	bnez	a0,19210 <.delay_fail>
   19218:	02000537          	lui	a0,0x2000
   1921c:	04500593          	li	a1,69
   19220:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   19224:	05200613          	li	a2,82
   19228:	00c52023          	sw	a2,0(a0)
   1922c:	00c52023          	sw	a2,0(a0)
   19230:	04f00693          	li	a3,79
   19234:	00d52023          	sw	a3,0(a0)
   19238:	00c52023          	sw	a2,0(a0)
   1923c:	00d00713          	li	a4,13
   19240:	00e52023          	sw	a4,0(a0)
   19244:	00a00793          	li	a5,10
   19248:	00f52023          	sw	a5,0(a0)
   1924c:	ee1f606f          	j	1012c <andi_ret>

00019250 <pass>:
   19250:	0ff00513          	li	a0,255

00019254 <.delay_ok>:
   19254:	fff50513          	addi	a0,a0,-1
   19258:	fe051ee3          	bnez	a0,19254 <.delay_ok>
   1925c:	02000537          	lui	a0,0x2000
   19260:	04f00593          	li	a1,79
   19264:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   19268:	04b00613          	li	a2,75
   1926c:	00c52023          	sw	a2,0(a0)
   19270:	00d00693          	li	a3,13
   19274:	00d52023          	sw	a3,0(a0)
   19278:	00a00713          	li	a4,10
   1927c:	00e52023          	sw	a4,0(a0)
   19280:	eadf606f          	j	1012c <andi_ret>

00019284 <j>:
   19284:	0ff00513          	li	a0,255

00019288 <.delay_pr>:
   19288:	fff50513          	addi	a0,a0,-1
   1928c:	fe051ee3          	bnez	a0,19288 <.delay_pr>
   19290:	00019537          	lui	a0,0x19
   19294:	2b050513          	addi	a0,a0,688 # 192b0 <.test_name>
   19298:	02000637          	lui	a2,0x2000

0001929c <.prname_next>:
   1929c:	00050583          	lb	a1,0(a0)
   192a0:	00058a63          	beqz	a1,192b4 <.prname_done>
   192a4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   192a8:	00150513          	addi	a0,a0,1
   192ac:	ff1ff06f          	j	1929c <.prname_next>

000192b0 <.test_name>:
   192b0:	006a                	c.slli	zero,0x1a
	...

000192b4 <.prname_done>:
   192b4:	02e00593          	li	a1,46
   192b8:	00b62023          	sw	a1,0(a2)
   192bc:	00b62023          	sw	a1,0(a2)
   192c0:	00200e13          	li	t3,2
   192c4:	0080006f          	j	192cc <test_2>
   192c8:	0340006f          	j	192fc <fail>

000192cc <test_2>:
   192cc:	00100093          	li	ra,1
   192d0:	0140006f          	j	192e4 <test_2+0x18>
   192d4:	00108093          	addi	ra,ra,1
   192d8:	00108093          	addi	ra,ra,1
   192dc:	00108093          	addi	ra,ra,1
   192e0:	00108093          	addi	ra,ra,1
   192e4:	00108093          	addi	ra,ra,1
   192e8:	00108093          	addi	ra,ra,1
   192ec:	00300e93          	li	t4,3
   192f0:	00300e13          	li	t3,3
   192f4:	01d09463          	bne	ra,t4,192fc <fail>
   192f8:	05c01463          	bne	zero,t3,19340 <pass>

000192fc <fail>:
   192fc:	0ff00513          	li	a0,255

00019300 <.delay_fail>:
   19300:	fff50513          	addi	a0,a0,-1
   19304:	fe051ee3          	bnez	a0,19300 <.delay_fail>
   19308:	02000537          	lui	a0,0x2000
   1930c:	04500593          	li	a1,69
   19310:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   19314:	05200613          	li	a2,82
   19318:	00c52023          	sw	a2,0(a0)
   1931c:	00c52023          	sw	a2,0(a0)
   19320:	04f00693          	li	a3,79
   19324:	00d52023          	sw	a3,0(a0)
   19328:	00c52023          	sw	a2,0(a0)
   1932c:	00d00713          	li	a4,13
   19330:	00e52023          	sw	a4,0(a0)
   19334:	00a00793          	li	a5,10
   19338:	00f52023          	sw	a5,0(a0)
   1933c:	d9df606f          	j	100d8 <j_ret>

00019340 <pass>:
   19340:	0ff00513          	li	a0,255

00019344 <.delay_ok>:
   19344:	fff50513          	addi	a0,a0,-1
   19348:	fe051ee3          	bnez	a0,19344 <.delay_ok>
   1934c:	02000537          	lui	a0,0x2000
   19350:	04f00593          	li	a1,79
   19354:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   19358:	04b00613          	li	a2,75
   1935c:	00c52023          	sw	a2,0(a0)
   19360:	00d00693          	li	a3,13
   19364:	00d52023          	sw	a3,0(a0)
   19368:	00a00713          	li	a4,10
   1936c:	00e52023          	sw	a4,0(a0)
   19370:	d69f606f          	j	100d8 <j_ret>

00019374 <bge>:
   19374:	0ff00513          	li	a0,255

00019378 <.delay_pr>:
   19378:	fff50513          	addi	a0,a0,-1
   1937c:	fe051ee3          	bnez	a0,19378 <.delay_pr>
   19380:	00019537          	lui	a0,0x19
   19384:	3a050513          	addi	a0,a0,928 # 193a0 <.test_name>
   19388:	02000637          	lui	a2,0x2000

0001938c <.prname_next>:
   1938c:	00050583          	lb	a1,0(a0)
   19390:	00058a63          	beqz	a1,193a4 <.prname_done>
   19394:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   19398:	00150513          	addi	a0,a0,1
   1939c:	ff1ff06f          	j	1938c <.prname_next>

000193a0 <.test_name>:
   193a0:	6762                	flw	fa4,24(sp)
   193a2:	0065                	c.nop	25

000193a4 <.prname_done>:
   193a4:	02e00593          	li	a1,46
   193a8:	00b62023          	sw	a1,0(a2)
   193ac:	00b62023          	sw	a1,0(a2)

000193b0 <test_2>:
   193b0:	00200e13          	li	t3,2
   193b4:	00000093          	li	ra,0
   193b8:	00000113          	li	sp,0
   193bc:	0020d663          	bge	ra,sp,193c8 <test_2+0x18>
   193c0:	31c01863          	bne	zero,t3,196d0 <fail>
   193c4:	01c01663          	bne	zero,t3,193d0 <test_3>
   193c8:	fe20dee3          	bge	ra,sp,193c4 <test_2+0x14>
   193cc:	31c01263          	bne	zero,t3,196d0 <fail>

000193d0 <test_3>:
   193d0:	00300e13          	li	t3,3
   193d4:	00100093          	li	ra,1
   193d8:	00100113          	li	sp,1
   193dc:	0020d663          	bge	ra,sp,193e8 <test_3+0x18>
   193e0:	2fc01863          	bne	zero,t3,196d0 <fail>
   193e4:	01c01663          	bne	zero,t3,193f0 <test_4>
   193e8:	fe20dee3          	bge	ra,sp,193e4 <test_3+0x14>
   193ec:	2fc01263          	bne	zero,t3,196d0 <fail>

000193f0 <test_4>:
   193f0:	00400e13          	li	t3,4
   193f4:	fff00093          	li	ra,-1
   193f8:	fff00113          	li	sp,-1
   193fc:	0020d663          	bge	ra,sp,19408 <test_4+0x18>
   19400:	2dc01863          	bne	zero,t3,196d0 <fail>
   19404:	01c01663          	bne	zero,t3,19410 <test_5>
   19408:	fe20dee3          	bge	ra,sp,19404 <test_4+0x14>
   1940c:	2dc01263          	bne	zero,t3,196d0 <fail>

00019410 <test_5>:
   19410:	00500e13          	li	t3,5
   19414:	00100093          	li	ra,1
   19418:	00000113          	li	sp,0
   1941c:	0020d663          	bge	ra,sp,19428 <test_5+0x18>
   19420:	2bc01863          	bne	zero,t3,196d0 <fail>
   19424:	01c01663          	bne	zero,t3,19430 <test_6>
   19428:	fe20dee3          	bge	ra,sp,19424 <test_5+0x14>
   1942c:	2bc01263          	bne	zero,t3,196d0 <fail>

00019430 <test_6>:
   19430:	00600e13          	li	t3,6
   19434:	00100093          	li	ra,1
   19438:	fff00113          	li	sp,-1
   1943c:	0020d663          	bge	ra,sp,19448 <test_6+0x18>
   19440:	29c01863          	bne	zero,t3,196d0 <fail>
   19444:	01c01663          	bne	zero,t3,19450 <test_7>
   19448:	fe20dee3          	bge	ra,sp,19444 <test_6+0x14>
   1944c:	29c01263          	bne	zero,t3,196d0 <fail>

00019450 <test_7>:
   19450:	00700e13          	li	t3,7
   19454:	fff00093          	li	ra,-1
   19458:	ffe00113          	li	sp,-2
   1945c:	0020d663          	bge	ra,sp,19468 <test_7+0x18>
   19460:	27c01863          	bne	zero,t3,196d0 <fail>
   19464:	01c01663          	bne	zero,t3,19470 <test_8>
   19468:	fe20dee3          	bge	ra,sp,19464 <test_7+0x14>
   1946c:	27c01263          	bne	zero,t3,196d0 <fail>

00019470 <test_8>:
   19470:	00800e13          	li	t3,8
   19474:	00000093          	li	ra,0
   19478:	00100113          	li	sp,1
   1947c:	0020d463          	bge	ra,sp,19484 <test_8+0x14>
   19480:	01c01463          	bne	zero,t3,19488 <test_8+0x18>
   19484:	25c01663          	bne	zero,t3,196d0 <fail>
   19488:	fe20dee3          	bge	ra,sp,19484 <test_8+0x14>

0001948c <test_9>:
   1948c:	00900e13          	li	t3,9
   19490:	fff00093          	li	ra,-1
   19494:	00100113          	li	sp,1
   19498:	0020d463          	bge	ra,sp,194a0 <test_9+0x14>
   1949c:	01c01463          	bne	zero,t3,194a4 <test_9+0x18>
   194a0:	23c01863          	bne	zero,t3,196d0 <fail>
   194a4:	fe20dee3          	bge	ra,sp,194a0 <test_9+0x14>

000194a8 <test_10>:
   194a8:	00a00e13          	li	t3,10
   194ac:	ffe00093          	li	ra,-2
   194b0:	fff00113          	li	sp,-1
   194b4:	0020d463          	bge	ra,sp,194bc <test_10+0x14>
   194b8:	01c01463          	bne	zero,t3,194c0 <test_10+0x18>
   194bc:	21c01a63          	bne	zero,t3,196d0 <fail>
   194c0:	fe20dee3          	bge	ra,sp,194bc <test_10+0x14>

000194c4 <test_11>:
   194c4:	00b00e13          	li	t3,11
   194c8:	ffe00093          	li	ra,-2
   194cc:	00100113          	li	sp,1
   194d0:	0020d463          	bge	ra,sp,194d8 <test_11+0x14>
   194d4:	01c01463          	bne	zero,t3,194dc <test_11+0x18>
   194d8:	1fc01c63          	bne	zero,t3,196d0 <fail>
   194dc:	fe20dee3          	bge	ra,sp,194d8 <test_11+0x14>

000194e0 <test_12>:
   194e0:	00c00e13          	li	t3,12
   194e4:	00000213          	li	tp,0
   194e8:	fff00093          	li	ra,-1
   194ec:	00000113          	li	sp,0
   194f0:	1e20d063          	bge	ra,sp,196d0 <fail>
   194f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   194f8:	00200293          	li	t0,2
   194fc:	fe5216e3          	bne	tp,t0,194e8 <test_12+0x8>

00019500 <test_13>:
   19500:	00d00e13          	li	t3,13
   19504:	00000213          	li	tp,0
   19508:	fff00093          	li	ra,-1
   1950c:	00000113          	li	sp,0
   19510:	00000013          	nop
   19514:	1a20de63          	bge	ra,sp,196d0 <fail>
   19518:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1951c:	00200293          	li	t0,2
   19520:	fe5214e3          	bne	tp,t0,19508 <test_13+0x8>

00019524 <test_14>:
   19524:	00e00e13          	li	t3,14
   19528:	00000213          	li	tp,0
   1952c:	fff00093          	li	ra,-1
   19530:	00000113          	li	sp,0
   19534:	00000013          	nop
   19538:	00000013          	nop
   1953c:	1820da63          	bge	ra,sp,196d0 <fail>
   19540:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19544:	00200293          	li	t0,2
   19548:	fe5212e3          	bne	tp,t0,1952c <test_14+0x8>

0001954c <test_15>:
   1954c:	00f00e13          	li	t3,15
   19550:	00000213          	li	tp,0
   19554:	fff00093          	li	ra,-1
   19558:	00000013          	nop
   1955c:	00000113          	li	sp,0
   19560:	1620d863          	bge	ra,sp,196d0 <fail>
   19564:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19568:	00200293          	li	t0,2
   1956c:	fe5214e3          	bne	tp,t0,19554 <test_15+0x8>

00019570 <test_16>:
   19570:	01000e13          	li	t3,16
   19574:	00000213          	li	tp,0
   19578:	fff00093          	li	ra,-1
   1957c:	00000013          	nop
   19580:	00000113          	li	sp,0
   19584:	00000013          	nop
   19588:	1420d463          	bge	ra,sp,196d0 <fail>
   1958c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19590:	00200293          	li	t0,2
   19594:	fe5212e3          	bne	tp,t0,19578 <test_16+0x8>

00019598 <test_17>:
   19598:	01100e13          	li	t3,17
   1959c:	00000213          	li	tp,0
   195a0:	fff00093          	li	ra,-1
   195a4:	00000013          	nop
   195a8:	00000013          	nop
   195ac:	00000113          	li	sp,0
   195b0:	1220d063          	bge	ra,sp,196d0 <fail>
   195b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   195b8:	00200293          	li	t0,2
   195bc:	fe5212e3          	bne	tp,t0,195a0 <test_17+0x8>

000195c0 <test_18>:
   195c0:	01200e13          	li	t3,18
   195c4:	00000213          	li	tp,0
   195c8:	fff00093          	li	ra,-1
   195cc:	00000113          	li	sp,0
   195d0:	1020d063          	bge	ra,sp,196d0 <fail>
   195d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   195d8:	00200293          	li	t0,2
   195dc:	fe5216e3          	bne	tp,t0,195c8 <test_18+0x8>

000195e0 <test_19>:
   195e0:	01300e13          	li	t3,19
   195e4:	00000213          	li	tp,0
   195e8:	fff00093          	li	ra,-1
   195ec:	00000113          	li	sp,0
   195f0:	00000013          	nop
   195f4:	0c20de63          	bge	ra,sp,196d0 <fail>
   195f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   195fc:	00200293          	li	t0,2
   19600:	fe5214e3          	bne	tp,t0,195e8 <test_19+0x8>

00019604 <test_20>:
   19604:	01400e13          	li	t3,20
   19608:	00000213          	li	tp,0
   1960c:	fff00093          	li	ra,-1
   19610:	00000113          	li	sp,0
   19614:	00000013          	nop
   19618:	00000013          	nop
   1961c:	0a20da63          	bge	ra,sp,196d0 <fail>
   19620:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19624:	00200293          	li	t0,2
   19628:	fe5212e3          	bne	tp,t0,1960c <test_20+0x8>

0001962c <test_21>:
   1962c:	01500e13          	li	t3,21
   19630:	00000213          	li	tp,0
   19634:	fff00093          	li	ra,-1
   19638:	00000013          	nop
   1963c:	00000113          	li	sp,0
   19640:	0820d863          	bge	ra,sp,196d0 <fail>
   19644:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19648:	00200293          	li	t0,2
   1964c:	fe5214e3          	bne	tp,t0,19634 <test_21+0x8>

00019650 <test_22>:
   19650:	01600e13          	li	t3,22
   19654:	00000213          	li	tp,0
   19658:	fff00093          	li	ra,-1
   1965c:	00000013          	nop
   19660:	00000113          	li	sp,0
   19664:	00000013          	nop
   19668:	0620d463          	bge	ra,sp,196d0 <fail>
   1966c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19670:	00200293          	li	t0,2
   19674:	fe5212e3          	bne	tp,t0,19658 <test_22+0x8>

00019678 <test_23>:
   19678:	01700e13          	li	t3,23
   1967c:	00000213          	li	tp,0
   19680:	fff00093          	li	ra,-1
   19684:	00000013          	nop
   19688:	00000013          	nop
   1968c:	00000113          	li	sp,0
   19690:	0420d063          	bge	ra,sp,196d0 <fail>
   19694:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19698:	00200293          	li	t0,2
   1969c:	fe5212e3          	bne	tp,t0,19680 <test_23+0x8>

000196a0 <test_24>:
   196a0:	00100093          	li	ra,1
   196a4:	0000da63          	bgez	ra,196b8 <test_24+0x18>
   196a8:	00108093          	addi	ra,ra,1
   196ac:	00108093          	addi	ra,ra,1
   196b0:	00108093          	addi	ra,ra,1
   196b4:	00108093          	addi	ra,ra,1
   196b8:	00108093          	addi	ra,ra,1
   196bc:	00108093          	addi	ra,ra,1
   196c0:	00300e93          	li	t4,3
   196c4:	01800e13          	li	t3,24
   196c8:	01d09463          	bne	ra,t4,196d0 <fail>
   196cc:	05c01463          	bne	zero,t3,19714 <pass>

000196d0 <fail>:
   196d0:	0ff00513          	li	a0,255

000196d4 <.delay_fail>:
   196d4:	fff50513          	addi	a0,a0,-1
   196d8:	fe051ee3          	bnez	a0,196d4 <.delay_fail>
   196dc:	02000537          	lui	a0,0x2000
   196e0:	04500593          	li	a1,69
   196e4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   196e8:	05200613          	li	a2,82
   196ec:	00c52023          	sw	a2,0(a0)
   196f0:	00c52023          	sw	a2,0(a0)
   196f4:	04f00693          	li	a3,79
   196f8:	00d52023          	sw	a3,0(a0)
   196fc:	00c52023          	sw	a2,0(a0)
   19700:	00d00713          	li	a4,13
   19704:	00e52023          	sw	a4,0(a0)
   19708:	00a00793          	li	a5,10
   1970c:	00f52023          	sw	a5,0(a0)
   19710:	9e1f606f          	j	100f0 <bge_ret>

00019714 <pass>:
   19714:	0ff00513          	li	a0,255

00019718 <.delay_ok>:
   19718:	fff50513          	addi	a0,a0,-1
   1971c:	fe051ee3          	bnez	a0,19718 <.delay_ok>
   19720:	02000537          	lui	a0,0x2000
   19724:	04f00593          	li	a1,79
   19728:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1972c:	04b00613          	li	a2,75
   19730:	00c52023          	sw	a2,0(a0)
   19734:	00d00693          	li	a3,13
   19738:	00d52023          	sw	a3,0(a0)
   1973c:	00a00713          	li	a4,10
   19740:	00e52023          	sw	a4,0(a0)
   19744:	9adf606f          	j	100f0 <bge_ret>

00019748 <blt>:
   19748:	0ff00513          	li	a0,255

0001974c <.delay_pr>:
   1974c:	fff50513          	addi	a0,a0,-1
   19750:	fe051ee3          	bnez	a0,1974c <.delay_pr>
   19754:	00019537          	lui	a0,0x19
   19758:	77450513          	addi	a0,a0,1908 # 19774 <.test_name>
   1975c:	02000637          	lui	a2,0x2000

00019760 <.prname_next>:
   19760:	00050583          	lb	a1,0(a0)
   19764:	00058a63          	beqz	a1,19778 <.prname_done>
   19768:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   1976c:	00150513          	addi	a0,a0,1
   19770:	ff1ff06f          	j	19760 <.prname_next>

00019774 <.test_name>:
   19774:	6c62                	flw	fs8,24(sp)
   19776:	0074                	addi	a3,sp,12

00019778 <.prname_done>:
   19778:	02e00593          	li	a1,46
   1977c:	00b62023          	sw	a1,0(a2)
   19780:	00b62023          	sw	a1,0(a2)

00019784 <test_2>:
   19784:	00200e13          	li	t3,2
   19788:	00000093          	li	ra,0
   1978c:	00100113          	li	sp,1
   19790:	0020c663          	blt	ra,sp,1979c <test_2+0x18>
   19794:	2bc01863          	bne	zero,t3,19a44 <fail>
   19798:	01c01663          	bne	zero,t3,197a4 <test_3>
   1979c:	fe20cee3          	blt	ra,sp,19798 <test_2+0x14>
   197a0:	2bc01263          	bne	zero,t3,19a44 <fail>

000197a4 <test_3>:
   197a4:	00300e13          	li	t3,3
   197a8:	fff00093          	li	ra,-1
   197ac:	00100113          	li	sp,1
   197b0:	0020c663          	blt	ra,sp,197bc <test_3+0x18>
   197b4:	29c01863          	bne	zero,t3,19a44 <fail>
   197b8:	01c01663          	bne	zero,t3,197c4 <test_4>
   197bc:	fe20cee3          	blt	ra,sp,197b8 <test_3+0x14>
   197c0:	29c01263          	bne	zero,t3,19a44 <fail>

000197c4 <test_4>:
   197c4:	00400e13          	li	t3,4
   197c8:	ffe00093          	li	ra,-2
   197cc:	fff00113          	li	sp,-1
   197d0:	0020c663          	blt	ra,sp,197dc <test_4+0x18>
   197d4:	27c01863          	bne	zero,t3,19a44 <fail>
   197d8:	01c01663          	bne	zero,t3,197e4 <test_5>
   197dc:	fe20cee3          	blt	ra,sp,197d8 <test_4+0x14>
   197e0:	27c01263          	bne	zero,t3,19a44 <fail>

000197e4 <test_5>:
   197e4:	00500e13          	li	t3,5
   197e8:	00100093          	li	ra,1
   197ec:	00000113          	li	sp,0
   197f0:	0020c463          	blt	ra,sp,197f8 <test_5+0x14>
   197f4:	01c01463          	bne	zero,t3,197fc <test_5+0x18>
   197f8:	25c01663          	bne	zero,t3,19a44 <fail>
   197fc:	fe20cee3          	blt	ra,sp,197f8 <test_5+0x14>

00019800 <test_6>:
   19800:	00600e13          	li	t3,6
   19804:	00100093          	li	ra,1
   19808:	fff00113          	li	sp,-1
   1980c:	0020c463          	blt	ra,sp,19814 <test_6+0x14>
   19810:	01c01463          	bne	zero,t3,19818 <test_6+0x18>
   19814:	23c01863          	bne	zero,t3,19a44 <fail>
   19818:	fe20cee3          	blt	ra,sp,19814 <test_6+0x14>

0001981c <test_7>:
   1981c:	00700e13          	li	t3,7
   19820:	fff00093          	li	ra,-1
   19824:	ffe00113          	li	sp,-2
   19828:	0020c463          	blt	ra,sp,19830 <test_7+0x14>
   1982c:	01c01463          	bne	zero,t3,19834 <test_7+0x18>
   19830:	21c01a63          	bne	zero,t3,19a44 <fail>
   19834:	fe20cee3          	blt	ra,sp,19830 <test_7+0x14>

00019838 <test_8>:
   19838:	00800e13          	li	t3,8
   1983c:	00100093          	li	ra,1
   19840:	ffe00113          	li	sp,-2
   19844:	0020c463          	blt	ra,sp,1984c <test_8+0x14>
   19848:	01c01463          	bne	zero,t3,19850 <test_8+0x18>
   1984c:	1fc01c63          	bne	zero,t3,19a44 <fail>
   19850:	fe20cee3          	blt	ra,sp,1984c <test_8+0x14>

00019854 <test_9>:
   19854:	00900e13          	li	t3,9
   19858:	00000213          	li	tp,0
   1985c:	00000093          	li	ra,0
   19860:	fff00113          	li	sp,-1
   19864:	1e20c063          	blt	ra,sp,19a44 <fail>
   19868:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1986c:	00200293          	li	t0,2
   19870:	fe5216e3          	bne	tp,t0,1985c <test_9+0x8>

00019874 <test_10>:
   19874:	00a00e13          	li	t3,10
   19878:	00000213          	li	tp,0
   1987c:	00000093          	li	ra,0
   19880:	fff00113          	li	sp,-1
   19884:	00000013          	nop
   19888:	1a20ce63          	blt	ra,sp,19a44 <fail>
   1988c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19890:	00200293          	li	t0,2
   19894:	fe5214e3          	bne	tp,t0,1987c <test_10+0x8>

00019898 <test_11>:
   19898:	00b00e13          	li	t3,11
   1989c:	00000213          	li	tp,0
   198a0:	00000093          	li	ra,0
   198a4:	fff00113          	li	sp,-1
   198a8:	00000013          	nop
   198ac:	00000013          	nop
   198b0:	1820ca63          	blt	ra,sp,19a44 <fail>
   198b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   198b8:	00200293          	li	t0,2
   198bc:	fe5212e3          	bne	tp,t0,198a0 <test_11+0x8>

000198c0 <test_12>:
   198c0:	00c00e13          	li	t3,12
   198c4:	00000213          	li	tp,0
   198c8:	00000093          	li	ra,0
   198cc:	00000013          	nop
   198d0:	fff00113          	li	sp,-1
   198d4:	1620c863          	blt	ra,sp,19a44 <fail>
   198d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   198dc:	00200293          	li	t0,2
   198e0:	fe5214e3          	bne	tp,t0,198c8 <test_12+0x8>

000198e4 <test_13>:
   198e4:	00d00e13          	li	t3,13
   198e8:	00000213          	li	tp,0
   198ec:	00000093          	li	ra,0
   198f0:	00000013          	nop
   198f4:	fff00113          	li	sp,-1
   198f8:	00000013          	nop
   198fc:	1420c463          	blt	ra,sp,19a44 <fail>
   19900:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19904:	00200293          	li	t0,2
   19908:	fe5212e3          	bne	tp,t0,198ec <test_13+0x8>

0001990c <test_14>:
   1990c:	00e00e13          	li	t3,14
   19910:	00000213          	li	tp,0
   19914:	00000093          	li	ra,0
   19918:	00000013          	nop
   1991c:	00000013          	nop
   19920:	fff00113          	li	sp,-1
   19924:	1220c063          	blt	ra,sp,19a44 <fail>
   19928:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1992c:	00200293          	li	t0,2
   19930:	fe5212e3          	bne	tp,t0,19914 <test_14+0x8>

00019934 <test_15>:
   19934:	00f00e13          	li	t3,15
   19938:	00000213          	li	tp,0
   1993c:	00000093          	li	ra,0
   19940:	fff00113          	li	sp,-1
   19944:	1020c063          	blt	ra,sp,19a44 <fail>
   19948:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1994c:	00200293          	li	t0,2
   19950:	fe5216e3          	bne	tp,t0,1993c <test_15+0x8>

00019954 <test_16>:
   19954:	01000e13          	li	t3,16
   19958:	00000213          	li	tp,0
   1995c:	00000093          	li	ra,0
   19960:	fff00113          	li	sp,-1
   19964:	00000013          	nop
   19968:	0c20ce63          	blt	ra,sp,19a44 <fail>
   1996c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19970:	00200293          	li	t0,2
   19974:	fe5214e3          	bne	tp,t0,1995c <test_16+0x8>

00019978 <test_17>:
   19978:	01100e13          	li	t3,17
   1997c:	00000213          	li	tp,0
   19980:	00000093          	li	ra,0
   19984:	fff00113          	li	sp,-1
   19988:	00000013          	nop
   1998c:	00000013          	nop
   19990:	0a20ca63          	blt	ra,sp,19a44 <fail>
   19994:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19998:	00200293          	li	t0,2
   1999c:	fe5212e3          	bne	tp,t0,19980 <test_17+0x8>

000199a0 <test_18>:
   199a0:	01200e13          	li	t3,18
   199a4:	00000213          	li	tp,0
   199a8:	00000093          	li	ra,0
   199ac:	00000013          	nop
   199b0:	fff00113          	li	sp,-1
   199b4:	0820c863          	blt	ra,sp,19a44 <fail>
   199b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199bc:	00200293          	li	t0,2
   199c0:	fe5214e3          	bne	tp,t0,199a8 <test_18+0x8>

000199c4 <test_19>:
   199c4:	01300e13          	li	t3,19
   199c8:	00000213          	li	tp,0
   199cc:	00000093          	li	ra,0
   199d0:	00000013          	nop
   199d4:	fff00113          	li	sp,-1
   199d8:	00000013          	nop
   199dc:	0620c463          	blt	ra,sp,19a44 <fail>
   199e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199e4:	00200293          	li	t0,2
   199e8:	fe5212e3          	bne	tp,t0,199cc <test_19+0x8>

000199ec <test_20>:
   199ec:	01400e13          	li	t3,20
   199f0:	00000213          	li	tp,0
   199f4:	00000093          	li	ra,0
   199f8:	00000013          	nop
   199fc:	00000013          	nop
   19a00:	fff00113          	li	sp,-1
   19a04:	0420c063          	blt	ra,sp,19a44 <fail>
   19a08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a0c:	00200293          	li	t0,2
   19a10:	fe5212e3          	bne	tp,t0,199f4 <test_20+0x8>

00019a14 <test_21>:
   19a14:	00100093          	li	ra,1
   19a18:	00104a63          	bgtz	ra,19a2c <test_21+0x18>
   19a1c:	00108093          	addi	ra,ra,1
   19a20:	00108093          	addi	ra,ra,1
   19a24:	00108093          	addi	ra,ra,1
   19a28:	00108093          	addi	ra,ra,1
   19a2c:	00108093          	addi	ra,ra,1
   19a30:	00108093          	addi	ra,ra,1
   19a34:	00300e93          	li	t4,3
   19a38:	01500e13          	li	t3,21
   19a3c:	01d09463          	bne	ra,t4,19a44 <fail>
   19a40:	05c01463          	bne	zero,t3,19a88 <pass>

00019a44 <fail>:
   19a44:	0ff00513          	li	a0,255

00019a48 <.delay_fail>:
   19a48:	fff50513          	addi	a0,a0,-1
   19a4c:	fe051ee3          	bnez	a0,19a48 <.delay_fail>
   19a50:	02000537          	lui	a0,0x2000
   19a54:	04500593          	li	a1,69
   19a58:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   19a5c:	05200613          	li	a2,82
   19a60:	00c52023          	sw	a2,0(a0)
   19a64:	00c52023          	sw	a2,0(a0)
   19a68:	04f00693          	li	a3,79
   19a6c:	00d52023          	sw	a3,0(a0)
   19a70:	00c52023          	sw	a2,0(a0)
   19a74:	00d00713          	li	a4,13
   19a78:	00e52023          	sw	a4,0(a0)
   19a7c:	00a00793          	li	a5,10
   19a80:	00f52023          	sw	a5,0(a0)
   19a84:	e68f606f          	j	100ec <blt_ret>

00019a88 <pass>:
   19a88:	0ff00513          	li	a0,255

00019a8c <.delay_ok>:
   19a8c:	fff50513          	addi	a0,a0,-1
   19a90:	fe051ee3          	bnez	a0,19a8c <.delay_ok>
   19a94:	02000537          	lui	a0,0x2000
   19a98:	04f00593          	li	a1,79
   19a9c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   19aa0:	04b00613          	li	a2,75
   19aa4:	00c52023          	sw	a2,0(a0)
   19aa8:	00d00693          	li	a3,13
   19aac:	00d52023          	sw	a3,0(a0)
   19ab0:	00a00713          	li	a4,10
   19ab4:	00e52023          	sw	a4,0(a0)
   19ab8:	e34f606f          	j	100ec <blt_ret>

00019abc <mulh>:
   19abc:	0ff00513          	li	a0,255

00019ac0 <.delay_pr>:
   19ac0:	fff50513          	addi	a0,a0,-1
   19ac4:	fe051ee3          	bnez	a0,19ac0 <.delay_pr>
   19ac8:	0001a537          	lui	a0,0x1a
   19acc:	ae850513          	addi	a0,a0,-1304 # 19ae8 <.test_name>
   19ad0:	02000637          	lui	a2,0x2000

00019ad4 <.prname_next>:
   19ad4:	00050583          	lb	a1,0(a0)
   19ad8:	00058c63          	beqz	a1,19af0 <.prname_done>
   19adc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   19ae0:	00150513          	addi	a0,a0,1
   19ae4:	ff1ff06f          	j	19ad4 <.prname_next>

00019ae8 <.test_name>:
   19ae8:	756d                	lui	a0,0xffffb
   19aea:	686c                	flw	fa1,84(s0)
   19aec:	0000                	unimp
	...

00019af0 <.prname_done>:
   19af0:	02e00593          	li	a1,46
   19af4:	00b62023          	sw	a1,0(a2)
   19af8:	00b62023          	sw	a1,0(a2)

00019afc <test_2>:
   19afc:	00000093          	li	ra,0
   19b00:	00000113          	li	sp,0
   19b04:	022091b3          	mulh	gp,ra,sp
   19b08:	00000e93          	li	t4,0
   19b0c:	00200e13          	li	t3,2
   19b10:	4bd19a63          	bne	gp,t4,19fc4 <fail>

00019b14 <test_3>:
   19b14:	00100093          	li	ra,1
   19b18:	00100113          	li	sp,1
   19b1c:	022091b3          	mulh	gp,ra,sp
   19b20:	00000e93          	li	t4,0
   19b24:	00300e13          	li	t3,3
   19b28:	49d19e63          	bne	gp,t4,19fc4 <fail>

00019b2c <test_4>:
   19b2c:	00300093          	li	ra,3
   19b30:	00700113          	li	sp,7
   19b34:	022091b3          	mulh	gp,ra,sp
   19b38:	00000e93          	li	t4,0
   19b3c:	00400e13          	li	t3,4
   19b40:	49d19263          	bne	gp,t4,19fc4 <fail>

00019b44 <test_5>:
   19b44:	00000093          	li	ra,0
   19b48:	ffff8137          	lui	sp,0xffff8
   19b4c:	022091b3          	mulh	gp,ra,sp
   19b50:	00000e93          	li	t4,0
   19b54:	00500e13          	li	t3,5
   19b58:	47d19663          	bne	gp,t4,19fc4 <fail>

00019b5c <test_6>:
   19b5c:	800000b7          	lui	ra,0x80000
   19b60:	00000113          	li	sp,0
   19b64:	022091b3          	mulh	gp,ra,sp
   19b68:	00000e93          	li	t4,0
   19b6c:	00600e13          	li	t3,6
   19b70:	45d19a63          	bne	gp,t4,19fc4 <fail>

00019b74 <test_7>:
   19b74:	800000b7          	lui	ra,0x80000
   19b78:	00000113          	li	sp,0
   19b7c:	022091b3          	mulh	gp,ra,sp
   19b80:	00000e93          	li	t4,0
   19b84:	00700e13          	li	t3,7
   19b88:	43d19e63          	bne	gp,t4,19fc4 <fail>

00019b8c <test_30>:
   19b8c:	aaaab0b7          	lui	ra,0xaaaab
   19b90:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19b94:	00030137          	lui	sp,0x30
   19b98:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x158c1>
   19b9c:	022091b3          	mulh	gp,ra,sp
   19ba0:	ffff0eb7          	lui	t4,0xffff0
   19ba4:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19ba8:	01e00e13          	li	t3,30
   19bac:	41d19c63          	bne	gp,t4,19fc4 <fail>

00019bb0 <test_31>:
   19bb0:	000300b7          	lui	ra,0x30
   19bb4:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x158c1>
   19bb8:	aaaab137          	lui	sp,0xaaaab
   19bbc:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19bc0:	022091b3          	mulh	gp,ra,sp
   19bc4:	ffff0eb7          	lui	t4,0xffff0
   19bc8:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19bcc:	01f00e13          	li	t3,31
   19bd0:	3fd19a63          	bne	gp,t4,19fc4 <fail>

00019bd4 <test_32>:
   19bd4:	ff0000b7          	lui	ra,0xff000
   19bd8:	ff000137          	lui	sp,0xff000
   19bdc:	022091b3          	mulh	gp,ra,sp
   19be0:	00010eb7          	lui	t4,0x10
   19be4:	02000e13          	li	t3,32
   19be8:	3dd19e63          	bne	gp,t4,19fc4 <fail>

00019bec <test_33>:
   19bec:	fff00093          	li	ra,-1
   19bf0:	fff00113          	li	sp,-1
   19bf4:	022091b3          	mulh	gp,ra,sp
   19bf8:	00000e93          	li	t4,0
   19bfc:	02100e13          	li	t3,33
   19c00:	3dd19263          	bne	gp,t4,19fc4 <fail>

00019c04 <test_34>:
   19c04:	fff00093          	li	ra,-1
   19c08:	00100113          	li	sp,1
   19c0c:	022091b3          	mulh	gp,ra,sp
   19c10:	fff00e93          	li	t4,-1
   19c14:	02200e13          	li	t3,34
   19c18:	3bd19663          	bne	gp,t4,19fc4 <fail>

00019c1c <test_35>:
   19c1c:	00100093          	li	ra,1
   19c20:	fff00113          	li	sp,-1
   19c24:	022091b3          	mulh	gp,ra,sp
   19c28:	fff00e93          	li	t4,-1
   19c2c:	02300e13          	li	t3,35
   19c30:	39d19a63          	bne	gp,t4,19fc4 <fail>

00019c34 <test_8>:
   19c34:	00d000b7          	lui	ra,0xd00
   19c38:	00b00137          	lui	sp,0xb00
   19c3c:	022090b3          	mulh	ra,ra,sp
   19c40:	00009eb7          	lui	t4,0x9
   19c44:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19c48:	00800e13          	li	t3,8
   19c4c:	37d09c63          	bne	ra,t4,19fc4 <fail>

00019c50 <test_9>:
   19c50:	00e000b7          	lui	ra,0xe00
   19c54:	00b00137          	lui	sp,0xb00
   19c58:	02209133          	mulh	sp,ra,sp
   19c5c:	0000aeb7          	lui	t4,0xa
   19c60:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19c64:	00900e13          	li	t3,9
   19c68:	35d11e63          	bne	sp,t4,19fc4 <fail>

00019c6c <test_10>:
   19c6c:	00d000b7          	lui	ra,0xd00
   19c70:	021090b3          	mulh	ra,ra,ra
   19c74:	0000beb7          	lui	t4,0xb
   19c78:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   19c7c:	00a00e13          	li	t3,10
   19c80:	35d09263          	bne	ra,t4,19fc4 <fail>

00019c84 <test_11>:
   19c84:	00000213          	li	tp,0
   19c88:	00d000b7          	lui	ra,0xd00
   19c8c:	00b00137          	lui	sp,0xb00
   19c90:	022091b3          	mulh	gp,ra,sp
   19c94:	00018313          	mv	t1,gp
   19c98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19c9c:	00200293          	li	t0,2
   19ca0:	fe5214e3          	bne	tp,t0,19c88 <test_11+0x4>
   19ca4:	00009eb7          	lui	t4,0x9
   19ca8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19cac:	00b00e13          	li	t3,11
   19cb0:	31d31a63          	bne	t1,t4,19fc4 <fail>

00019cb4 <test_12>:
   19cb4:	00000213          	li	tp,0
   19cb8:	00e000b7          	lui	ra,0xe00
   19cbc:	00b00137          	lui	sp,0xb00
   19cc0:	022091b3          	mulh	gp,ra,sp
   19cc4:	00000013          	nop
   19cc8:	00018313          	mv	t1,gp
   19ccc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19cd0:	00200293          	li	t0,2
   19cd4:	fe5212e3          	bne	tp,t0,19cb8 <test_12+0x4>
   19cd8:	0000aeb7          	lui	t4,0xa
   19cdc:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19ce0:	00c00e13          	li	t3,12
   19ce4:	2fd31063          	bne	t1,t4,19fc4 <fail>

00019ce8 <test_13>:
   19ce8:	00000213          	li	tp,0
   19cec:	00f000b7          	lui	ra,0xf00
   19cf0:	00b00137          	lui	sp,0xb00
   19cf4:	022091b3          	mulh	gp,ra,sp
   19cf8:	00000013          	nop
   19cfc:	00000013          	nop
   19d00:	00018313          	mv	t1,gp
   19d04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d08:	00200293          	li	t0,2
   19d0c:	fe5210e3          	bne	tp,t0,19cec <test_13+0x4>
   19d10:	0000aeb7          	lui	t4,0xa
   19d14:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19d18:	00d00e13          	li	t3,13
   19d1c:	2bd31463          	bne	t1,t4,19fc4 <fail>

00019d20 <test_14>:
   19d20:	00000213          	li	tp,0
   19d24:	00d000b7          	lui	ra,0xd00
   19d28:	00b00137          	lui	sp,0xb00
   19d2c:	022091b3          	mulh	gp,ra,sp
   19d30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d34:	00200293          	li	t0,2
   19d38:	fe5216e3          	bne	tp,t0,19d24 <test_14+0x4>
   19d3c:	00009eb7          	lui	t4,0x9
   19d40:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19d44:	00e00e13          	li	t3,14
   19d48:	27d19e63          	bne	gp,t4,19fc4 <fail>

00019d4c <test_15>:
   19d4c:	00000213          	li	tp,0
   19d50:	00e000b7          	lui	ra,0xe00
   19d54:	00b00137          	lui	sp,0xb00
   19d58:	00000013          	nop
   19d5c:	022091b3          	mulh	gp,ra,sp
   19d60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d64:	00200293          	li	t0,2
   19d68:	fe5214e3          	bne	tp,t0,19d50 <test_15+0x4>
   19d6c:	0000aeb7          	lui	t4,0xa
   19d70:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19d74:	00f00e13          	li	t3,15
   19d78:	25d19663          	bne	gp,t4,19fc4 <fail>

00019d7c <test_16>:
   19d7c:	00000213          	li	tp,0
   19d80:	00f000b7          	lui	ra,0xf00
   19d84:	00b00137          	lui	sp,0xb00
   19d88:	00000013          	nop
   19d8c:	00000013          	nop
   19d90:	022091b3          	mulh	gp,ra,sp
   19d94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d98:	00200293          	li	t0,2
   19d9c:	fe5212e3          	bne	tp,t0,19d80 <test_16+0x4>
   19da0:	0000aeb7          	lui	t4,0xa
   19da4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19da8:	01000e13          	li	t3,16
   19dac:	21d19c63          	bne	gp,t4,19fc4 <fail>

00019db0 <test_17>:
   19db0:	00000213          	li	tp,0
   19db4:	00d000b7          	lui	ra,0xd00
   19db8:	00000013          	nop
   19dbc:	00b00137          	lui	sp,0xb00
   19dc0:	022091b3          	mulh	gp,ra,sp
   19dc4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19dc8:	00200293          	li	t0,2
   19dcc:	fe5214e3          	bne	tp,t0,19db4 <test_17+0x4>
   19dd0:	00009eb7          	lui	t4,0x9
   19dd4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19dd8:	01100e13          	li	t3,17
   19ddc:	1fd19463          	bne	gp,t4,19fc4 <fail>

00019de0 <test_18>:
   19de0:	00000213          	li	tp,0
   19de4:	00e000b7          	lui	ra,0xe00
   19de8:	00000013          	nop
   19dec:	00b00137          	lui	sp,0xb00
   19df0:	00000013          	nop
   19df4:	022091b3          	mulh	gp,ra,sp
   19df8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19dfc:	00200293          	li	t0,2
   19e00:	fe5212e3          	bne	tp,t0,19de4 <test_18+0x4>
   19e04:	0000aeb7          	lui	t4,0xa
   19e08:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19e0c:	01200e13          	li	t3,18
   19e10:	1bd19a63          	bne	gp,t4,19fc4 <fail>

00019e14 <test_19>:
   19e14:	00000213          	li	tp,0
   19e18:	00f000b7          	lui	ra,0xf00
   19e1c:	00000013          	nop
   19e20:	00000013          	nop
   19e24:	00b00137          	lui	sp,0xb00
   19e28:	022091b3          	mulh	gp,ra,sp
   19e2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e30:	00200293          	li	t0,2
   19e34:	fe5212e3          	bne	tp,t0,19e18 <test_19+0x4>
   19e38:	0000aeb7          	lui	t4,0xa
   19e3c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19e40:	01300e13          	li	t3,19
   19e44:	19d19063          	bne	gp,t4,19fc4 <fail>

00019e48 <test_20>:
   19e48:	00000213          	li	tp,0
   19e4c:	00b00137          	lui	sp,0xb00
   19e50:	00d000b7          	lui	ra,0xd00
   19e54:	022091b3          	mulh	gp,ra,sp
   19e58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e5c:	00200293          	li	t0,2
   19e60:	fe5216e3          	bne	tp,t0,19e4c <test_20+0x4>
   19e64:	00009eb7          	lui	t4,0x9
   19e68:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19e6c:	01400e13          	li	t3,20
   19e70:	15d19a63          	bne	gp,t4,19fc4 <fail>

00019e74 <test_21>:
   19e74:	00000213          	li	tp,0
   19e78:	00b00137          	lui	sp,0xb00
   19e7c:	00e000b7          	lui	ra,0xe00
   19e80:	00000013          	nop
   19e84:	022091b3          	mulh	gp,ra,sp
   19e88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e8c:	00200293          	li	t0,2
   19e90:	fe5214e3          	bne	tp,t0,19e78 <test_21+0x4>
   19e94:	0000aeb7          	lui	t4,0xa
   19e98:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19e9c:	01500e13          	li	t3,21
   19ea0:	13d19263          	bne	gp,t4,19fc4 <fail>

00019ea4 <test_22>:
   19ea4:	00000213          	li	tp,0
   19ea8:	00b00137          	lui	sp,0xb00
   19eac:	00f000b7          	lui	ra,0xf00
   19eb0:	00000013          	nop
   19eb4:	00000013          	nop
   19eb8:	022091b3          	mulh	gp,ra,sp
   19ebc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ec0:	00200293          	li	t0,2
   19ec4:	fe5212e3          	bne	tp,t0,19ea8 <test_22+0x4>
   19ec8:	0000aeb7          	lui	t4,0xa
   19ecc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19ed0:	01600e13          	li	t3,22
   19ed4:	0fd19863          	bne	gp,t4,19fc4 <fail>

00019ed8 <test_23>:
   19ed8:	00000213          	li	tp,0
   19edc:	00b00137          	lui	sp,0xb00
   19ee0:	00000013          	nop
   19ee4:	00d000b7          	lui	ra,0xd00
   19ee8:	022091b3          	mulh	gp,ra,sp
   19eec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ef0:	00200293          	li	t0,2
   19ef4:	fe5214e3          	bne	tp,t0,19edc <test_23+0x4>
   19ef8:	00009eb7          	lui	t4,0x9
   19efc:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19f00:	01700e13          	li	t3,23
   19f04:	0dd19063          	bne	gp,t4,19fc4 <fail>

00019f08 <test_24>:
   19f08:	00000213          	li	tp,0
   19f0c:	00b00137          	lui	sp,0xb00
   19f10:	00000013          	nop
   19f14:	00e000b7          	lui	ra,0xe00
   19f18:	00000013          	nop
   19f1c:	022091b3          	mulh	gp,ra,sp
   19f20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f24:	00200293          	li	t0,2
   19f28:	fe5212e3          	bne	tp,t0,19f0c <test_24+0x4>
   19f2c:	0000aeb7          	lui	t4,0xa
   19f30:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19f34:	01800e13          	li	t3,24
   19f38:	09d19663          	bne	gp,t4,19fc4 <fail>

00019f3c <test_25>:
   19f3c:	00000213          	li	tp,0
   19f40:	00b00137          	lui	sp,0xb00
   19f44:	00000013          	nop
   19f48:	00000013          	nop
   19f4c:	00f000b7          	lui	ra,0xf00
   19f50:	022091b3          	mulh	gp,ra,sp
   19f54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f58:	00200293          	li	t0,2
   19f5c:	fe5212e3          	bne	tp,t0,19f40 <test_25+0x4>
   19f60:	0000aeb7          	lui	t4,0xa
   19f64:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19f68:	01900e13          	li	t3,25
   19f6c:	05d19c63          	bne	gp,t4,19fc4 <fail>

00019f70 <test_26>:
   19f70:	7c0000b7          	lui	ra,0x7c000
   19f74:	02101133          	mulh	sp,zero,ra
   19f78:	00000e93          	li	t4,0
   19f7c:	01a00e13          	li	t3,26
   19f80:	05d11263          	bne	sp,t4,19fc4 <fail>

00019f84 <test_27>:
   19f84:	800000b7          	lui	ra,0x80000
   19f88:	02009133          	mulh	sp,ra,zero
   19f8c:	00000e93          	li	t4,0
   19f90:	01b00e13          	li	t3,27
   19f94:	03d11863          	bne	sp,t4,19fc4 <fail>

00019f98 <test_28>:
   19f98:	020010b3          	mulh	ra,zero,zero
   19f9c:	00000e93          	li	t4,0
   19fa0:	01c00e13          	li	t3,28
   19fa4:	03d09063          	bne	ra,t4,19fc4 <fail>

00019fa8 <test_29>:
   19fa8:	021000b7          	lui	ra,0x2100
   19fac:	02200137          	lui	sp,0x2200
   19fb0:	02209033          	mulh	zero,ra,sp
   19fb4:	00000e93          	li	t4,0
   19fb8:	01d00e13          	li	t3,29
   19fbc:	01d01463          	bne	zero,t4,19fc4 <fail>
   19fc0:	05c01463          	bne	zero,t3,1a008 <pass>

00019fc4 <fail>:
   19fc4:	0ff00513          	li	a0,255

00019fc8 <.delay_fail>:
   19fc8:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   19fcc:	fe051ee3          	bnez	a0,19fc8 <.delay_fail>
   19fd0:	02000537          	lui	a0,0x2000
   19fd4:	04500593          	li	a1,69
   19fd8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   19fdc:	05200613          	li	a2,82
   19fe0:	00c52023          	sw	a2,0(a0)
   19fe4:	00c52023          	sw	a2,0(a0)
   19fe8:	04f00693          	li	a3,79
   19fec:	00d52023          	sw	a3,0(a0)
   19ff0:	00c52023          	sw	a2,0(a0)
   19ff4:	00d00713          	li	a4,13
   19ff8:	00e52023          	sw	a4,0(a0)
   19ffc:	00a00793          	li	a5,10
   1a000:	00f52023          	sw	a5,0(a0)
   1a004:	95cf606f          	j	10160 <mulh_ret>

0001a008 <pass>:
   1a008:	0ff00513          	li	a0,255

0001a00c <.delay_ok>:
   1a00c:	fff50513          	addi	a0,a0,-1
   1a010:	fe051ee3          	bnez	a0,1a00c <.delay_ok>
   1a014:	02000537          	lui	a0,0x2000
   1a018:	04f00593          	li	a1,79
   1a01c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1a020:	04b00613          	li	a2,75
   1a024:	00c52023          	sw	a2,0(a0)
   1a028:	00d00693          	li	a3,13
   1a02c:	00d52023          	sw	a3,0(a0)
   1a030:	00a00713          	li	a4,10
   1a034:	00e52023          	sw	a4,0(a0)
   1a038:	928f606f          	j	10160 <mulh_ret>

0001a03c <mulhsu>:
   1a03c:	0ff00513          	li	a0,255

0001a040 <.delay_pr>:
   1a040:	fff50513          	addi	a0,a0,-1
   1a044:	fe051ee3          	bnez	a0,1a040 <.delay_pr>
   1a048:	0001a537          	lui	a0,0x1a
   1a04c:	06850513          	addi	a0,a0,104 # 1a068 <.test_name>
   1a050:	02000637          	lui	a2,0x2000

0001a054 <.prname_next>:
   1a054:	00050583          	lb	a1,0(a0)
   1a058:	00058c63          	beqz	a1,1a070 <.prname_done>
   1a05c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe5a44>
   1a060:	00150513          	addi	a0,a0,1
   1a064:	ff1ff06f          	j	1a054 <.prname_next>

0001a068 <.test_name>:
   1a068:	756d                	lui	a0,0xffffb
   1a06a:	686c                	flw	fa1,84(s0)
   1a06c:	00007573          	csrrci	a0,ustatus,0

0001a070 <.prname_done>:
   1a070:	02e00593          	li	a1,46
   1a074:	00b62023          	sw	a1,0(a2)
   1a078:	00b62023          	sw	a1,0(a2)

0001a07c <test_2>:
   1a07c:	00000093          	li	ra,0
   1a080:	00000113          	li	sp,0
   1a084:	0220a1b3          	mulhsu	gp,ra,sp
   1a088:	00000e93          	li	t4,0
   1a08c:	00200e13          	li	t3,2
   1a090:	4bd19a63          	bne	gp,t4,1a544 <fail>

0001a094 <test_3>:
   1a094:	00100093          	li	ra,1
   1a098:	00100113          	li	sp,1
   1a09c:	0220a1b3          	mulhsu	gp,ra,sp
   1a0a0:	00000e93          	li	t4,0
   1a0a4:	00300e13          	li	t3,3
   1a0a8:	49d19e63          	bne	gp,t4,1a544 <fail>

0001a0ac <test_4>:
   1a0ac:	00300093          	li	ra,3
   1a0b0:	00700113          	li	sp,7
   1a0b4:	0220a1b3          	mulhsu	gp,ra,sp
   1a0b8:	00000e93          	li	t4,0
   1a0bc:	00400e13          	li	t3,4
   1a0c0:	49d19263          	bne	gp,t4,1a544 <fail>

0001a0c4 <test_5>:
   1a0c4:	00000093          	li	ra,0
   1a0c8:	ffff8137          	lui	sp,0xffff8
   1a0cc:	0220a1b3          	mulhsu	gp,ra,sp
   1a0d0:	00000e93          	li	t4,0
   1a0d4:	00500e13          	li	t3,5
   1a0d8:	47d19663          	bne	gp,t4,1a544 <fail>

0001a0dc <test_6>:
   1a0dc:	800000b7          	lui	ra,0x80000
   1a0e0:	00000113          	li	sp,0
   1a0e4:	0220a1b3          	mulhsu	gp,ra,sp
   1a0e8:	00000e93          	li	t4,0
   1a0ec:	00600e13          	li	t3,6
   1a0f0:	45d19a63          	bne	gp,t4,1a544 <fail>

0001a0f4 <test_7>:
   1a0f4:	800000b7          	lui	ra,0x80000
   1a0f8:	ffff8137          	lui	sp,0xffff8
   1a0fc:	0220a1b3          	mulhsu	gp,ra,sp
   1a100:	80004eb7          	lui	t4,0x80004
   1a104:	00700e13          	li	t3,7
   1a108:	43d19e63          	bne	gp,t4,1a544 <fail>

0001a10c <test_30>:
   1a10c:	aaaab0b7          	lui	ra,0xaaaab
   1a110:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a114:	00030137          	lui	sp,0x30
   1a118:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x158c1>
   1a11c:	0220a1b3          	mulhsu	gp,ra,sp
   1a120:	ffff0eb7          	lui	t4,0xffff0
   1a124:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   1a128:	01e00e13          	li	t3,30
   1a12c:	41d19c63          	bne	gp,t4,1a544 <fail>

0001a130 <test_31>:
   1a130:	000300b7          	lui	ra,0x30
   1a134:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x158c1>
   1a138:	aaaab137          	lui	sp,0xaaaab
   1a13c:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a140:	0220a1b3          	mulhsu	gp,ra,sp
   1a144:	00020eb7          	lui	t4,0x20
   1a148:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x5942>
   1a14c:	01f00e13          	li	t3,31
   1a150:	3fd19a63          	bne	gp,t4,1a544 <fail>

0001a154 <test_32>:
   1a154:	ff0000b7          	lui	ra,0xff000
   1a158:	ff000137          	lui	sp,0xff000
   1a15c:	0220a1b3          	mulhsu	gp,ra,sp
   1a160:	ff010eb7          	lui	t4,0xff010
   1a164:	02000e13          	li	t3,32
   1a168:	3dd19e63          	bne	gp,t4,1a544 <fail>

0001a16c <test_33>:
   1a16c:	fff00093          	li	ra,-1
   1a170:	fff00113          	li	sp,-1
   1a174:	0220a1b3          	mulhsu	gp,ra,sp
   1a178:	fff00e93          	li	t4,-1
   1a17c:	02100e13          	li	t3,33
   1a180:	3dd19263          	bne	gp,t4,1a544 <fail>

0001a184 <test_34>:
   1a184:	fff00093          	li	ra,-1
   1a188:	00100113          	li	sp,1
   1a18c:	0220a1b3          	mulhsu	gp,ra,sp
   1a190:	fff00e93          	li	t4,-1
   1a194:	02200e13          	li	t3,34
   1a198:	3bd19663          	bne	gp,t4,1a544 <fail>

0001a19c <test_35>:
   1a19c:	00100093          	li	ra,1
   1a1a0:	fff00113          	li	sp,-1
   1a1a4:	0220a1b3          	mulhsu	gp,ra,sp
   1a1a8:	00000e93          	li	t4,0
   1a1ac:	02300e13          	li	t3,35
   1a1b0:	39d19a63          	bne	gp,t4,1a544 <fail>

0001a1b4 <test_8>:
   1a1b4:	00d000b7          	lui	ra,0xd00
   1a1b8:	00b00137          	lui	sp,0xb00
   1a1bc:	0220a0b3          	mulhsu	ra,ra,sp
   1a1c0:	00009eb7          	lui	t4,0x9
   1a1c4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a1c8:	00800e13          	li	t3,8
   1a1cc:	37d09c63          	bne	ra,t4,1a544 <fail>

0001a1d0 <test_9>:
   1a1d0:	00e000b7          	lui	ra,0xe00
   1a1d4:	00b00137          	lui	sp,0xb00
   1a1d8:	0220a133          	mulhsu	sp,ra,sp
   1a1dc:	0000aeb7          	lui	t4,0xa
   1a1e0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a1e4:	00900e13          	li	t3,9
   1a1e8:	35d11e63          	bne	sp,t4,1a544 <fail>

0001a1ec <test_10>:
   1a1ec:	00d000b7          	lui	ra,0xd00
   1a1f0:	0210a0b3          	mulhsu	ra,ra,ra
   1a1f4:	0000beb7          	lui	t4,0xb
   1a1f8:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   1a1fc:	00a00e13          	li	t3,10
   1a200:	35d09263          	bne	ra,t4,1a544 <fail>

0001a204 <test_11>:
   1a204:	00000213          	li	tp,0
   1a208:	00d000b7          	lui	ra,0xd00
   1a20c:	00b00137          	lui	sp,0xb00
   1a210:	0220a1b3          	mulhsu	gp,ra,sp
   1a214:	00018313          	mv	t1,gp
   1a218:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a21c:	00200293          	li	t0,2
   1a220:	fe5214e3          	bne	tp,t0,1a208 <test_11+0x4>
   1a224:	00009eb7          	lui	t4,0x9
   1a228:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a22c:	00b00e13          	li	t3,11
   1a230:	31d31a63          	bne	t1,t4,1a544 <fail>

0001a234 <test_12>:
   1a234:	00000213          	li	tp,0
   1a238:	00e000b7          	lui	ra,0xe00
   1a23c:	00b00137          	lui	sp,0xb00
   1a240:	0220a1b3          	mulhsu	gp,ra,sp
   1a244:	00000013          	nop
   1a248:	00018313          	mv	t1,gp
   1a24c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a250:	00200293          	li	t0,2
   1a254:	fe5212e3          	bne	tp,t0,1a238 <test_12+0x4>
   1a258:	0000aeb7          	lui	t4,0xa
   1a25c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a260:	00c00e13          	li	t3,12
   1a264:	2fd31063          	bne	t1,t4,1a544 <fail>

0001a268 <test_13>:
   1a268:	00000213          	li	tp,0
   1a26c:	00f000b7          	lui	ra,0xf00
   1a270:	00b00137          	lui	sp,0xb00
   1a274:	0220a1b3          	mulhsu	gp,ra,sp
   1a278:	00000013          	nop
   1a27c:	00000013          	nop
   1a280:	00018313          	mv	t1,gp
   1a284:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a288:	00200293          	li	t0,2
   1a28c:	fe5210e3          	bne	tp,t0,1a26c <test_13+0x4>
   1a290:	0000aeb7          	lui	t4,0xa
   1a294:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a298:	00d00e13          	li	t3,13
   1a29c:	2bd31463          	bne	t1,t4,1a544 <fail>

0001a2a0 <test_14>:
   1a2a0:	00000213          	li	tp,0
   1a2a4:	00d000b7          	lui	ra,0xd00
   1a2a8:	00b00137          	lui	sp,0xb00
   1a2ac:	0220a1b3          	mulhsu	gp,ra,sp
   1a2b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a2b4:	00200293          	li	t0,2
   1a2b8:	fe5216e3          	bne	tp,t0,1a2a4 <test_14+0x4>
   1a2bc:	00009eb7          	lui	t4,0x9
   1a2c0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a2c4:	00e00e13          	li	t3,14
   1a2c8:	27d19e63          	bne	gp,t4,1a544 <fail>

0001a2cc <test_15>:
   1a2cc:	00000213          	li	tp,0
   1a2d0:	00e000b7          	lui	ra,0xe00
   1a2d4:	00b00137          	lui	sp,0xb00
   1a2d8:	00000013          	nop
   1a2dc:	0220a1b3          	mulhsu	gp,ra,sp
   1a2e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a2e4:	00200293          	li	t0,2
   1a2e8:	fe5214e3          	bne	tp,t0,1a2d0 <test_15+0x4>
   1a2ec:	0000aeb7          	lui	t4,0xa
   1a2f0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a2f4:	00f00e13          	li	t3,15
   1a2f8:	25d19663          	bne	gp,t4,1a544 <fail>

0001a2fc <test_16>:
   1a2fc:	00000213          	li	tp,0
   1a300:	00f000b7          	lui	ra,0xf00
   1a304:	00b00137          	lui	sp,0xb00
   1a308:	00000013          	nop
   1a30c:	00000013          	nop
   1a310:	0220a1b3          	mulhsu	gp,ra,sp
   1a314:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a318:	00200293          	li	t0,2
   1a31c:	fe5212e3          	bne	tp,t0,1a300 <test_16+0x4>
   1a320:	0000aeb7          	lui	t4,0xa
   1a324:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a328:	01000e13          	li	t3,16
   1a32c:	21d19c63          	bne	gp,t4,1a544 <fail>

0001a330 <test_17>:
   1a330:	00000213          	li	tp,0
   1a334:	00d000b7          	lui	ra,0xd00
   1a338:	00000013          	nop
   1a33c:	00b00137          	lui	sp,0xb00
   1a340:	0220a1b3          	mulhsu	gp,ra,sp
   1a344:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a348:	00200293          	li	t0,2
   1a34c:	fe5214e3          	bne	tp,t0,1a334 <test_17+0x4>
   1a350:	00009eb7          	lui	t4,0x9
   1a354:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a358:	01100e13          	li	t3,17
   1a35c:	1fd19463          	bne	gp,t4,1a544 <fail>

0001a360 <test_18>:
   1a360:	00000213          	li	tp,0
   1a364:	00e000b7          	lui	ra,0xe00
   1a368:	00000013          	nop
   1a36c:	00b00137          	lui	sp,0xb00
   1a370:	00000013          	nop
   1a374:	0220a1b3          	mulhsu	gp,ra,sp
   1a378:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a37c:	00200293          	li	t0,2
   1a380:	fe5212e3          	bne	tp,t0,1a364 <test_18+0x4>
   1a384:	0000aeb7          	lui	t4,0xa
   1a388:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a38c:	01200e13          	li	t3,18
   1a390:	1bd19a63          	bne	gp,t4,1a544 <fail>

0001a394 <test_19>:
   1a394:	00000213          	li	tp,0
   1a398:	00f000b7          	lui	ra,0xf00
   1a39c:	00000013          	nop
   1a3a0:	00000013          	nop
   1a3a4:	00b00137          	lui	sp,0xb00
   1a3a8:	0220a1b3          	mulhsu	gp,ra,sp
   1a3ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a3b0:	00200293          	li	t0,2
   1a3b4:	fe5212e3          	bne	tp,t0,1a398 <test_19+0x4>
   1a3b8:	0000aeb7          	lui	t4,0xa
   1a3bc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a3c0:	01300e13          	li	t3,19
   1a3c4:	19d19063          	bne	gp,t4,1a544 <fail>

0001a3c8 <test_20>:
   1a3c8:	00000213          	li	tp,0
   1a3cc:	00b00137          	lui	sp,0xb00
   1a3d0:	00d000b7          	lui	ra,0xd00
   1a3d4:	0220a1b3          	mulhsu	gp,ra,sp
   1a3d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a3dc:	00200293          	li	t0,2
   1a3e0:	fe5216e3          	bne	tp,t0,1a3cc <test_20+0x4>
   1a3e4:	00009eb7          	lui	t4,0x9
   1a3e8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a3ec:	01400e13          	li	t3,20
   1a3f0:	15d19a63          	bne	gp,t4,1a544 <fail>

0001a3f4 <test_21>:
   1a3f4:	00000213          	li	tp,0
   1a3f8:	00b00137          	lui	sp,0xb00
   1a3fc:	00e000b7          	lui	ra,0xe00
   1a400:	00000013          	nop
   1a404:	0220a1b3          	mulhsu	gp,ra,sp
   1a408:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a40c:	00200293          	li	t0,2
   1a410:	fe5214e3          	bne	tp,t0,1a3f8 <test_21+0x4>
   1a414:	0000aeb7          	lui	t4,0xa
   1a418:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a41c:	01500e13          	li	t3,21
   1a420:	13d19263          	bne	gp,t4,1a544 <fail>

0001a424 <test_22>:
   1a424:	00000213          	li	tp,0
   1a428:	00b00137          	lui	sp,0xb00
   1a42c:	00f000b7          	lui	ra,0xf00
   1a430:	00000013          	nop
   1a434:	00000013          	nop
   1a438:	0220a1b3          	mulhsu	gp,ra,sp
   1a43c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a440:	00200293          	li	t0,2
   1a444:	fe5212e3          	bne	tp,t0,1a428 <test_22+0x4>
   1a448:	0000aeb7          	lui	t4,0xa
   1a44c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a450:	01600e13          	li	t3,22
   1a454:	0fd19863          	bne	gp,t4,1a544 <fail>

0001a458 <test_23>:
   1a458:	00000213          	li	tp,0
   1a45c:	00b00137          	lui	sp,0xb00
   1a460:	00000013          	nop
   1a464:	00d000b7          	lui	ra,0xd00
   1a468:	0220a1b3          	mulhsu	gp,ra,sp
   1a46c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a470:	00200293          	li	t0,2
   1a474:	fe5214e3          	bne	tp,t0,1a45c <test_23+0x4>
   1a478:	00009eb7          	lui	t4,0x9
   1a47c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a480:	01700e13          	li	t3,23
   1a484:	0dd19063          	bne	gp,t4,1a544 <fail>

0001a488 <test_24>:
   1a488:	00000213          	li	tp,0
   1a48c:	00b00137          	lui	sp,0xb00
   1a490:	00000013          	nop
   1a494:	00e000b7          	lui	ra,0xe00
   1a498:	00000013          	nop
   1a49c:	0220a1b3          	mulhsu	gp,ra,sp
   1a4a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4a4:	00200293          	li	t0,2
   1a4a8:	fe5212e3          	bne	tp,t0,1a48c <test_24+0x4>
   1a4ac:	0000aeb7          	lui	t4,0xa
   1a4b0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a4b4:	01800e13          	li	t3,24
   1a4b8:	09d19663          	bne	gp,t4,1a544 <fail>

0001a4bc <test_25>:
   1a4bc:	00000213          	li	tp,0
   1a4c0:	00b00137          	lui	sp,0xb00
   1a4c4:	00000013          	nop
   1a4c8:	00000013          	nop
   1a4cc:	00f000b7          	lui	ra,0xf00
   1a4d0:	0220a1b3          	mulhsu	gp,ra,sp
   1a4d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4d8:	00200293          	li	t0,2
   1a4dc:	fe5212e3          	bne	tp,t0,1a4c0 <test_25+0x4>
   1a4e0:	0000aeb7          	lui	t4,0xa
   1a4e4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a4e8:	01900e13          	li	t3,25
   1a4ec:	05d19c63          	bne	gp,t4,1a544 <fail>

0001a4f0 <test_26>:
   1a4f0:	7c0000b7          	lui	ra,0x7c000
   1a4f4:	02102133          	mulhsu	sp,zero,ra
   1a4f8:	00000e93          	li	t4,0
   1a4fc:	01a00e13          	li	t3,26
   1a500:	05d11263          	bne	sp,t4,1a544 <fail>

0001a504 <test_27>:
   1a504:	800000b7          	lui	ra,0x80000
   1a508:	0200a133          	mulhsu	sp,ra,zero
   1a50c:	00000e93          	li	t4,0
   1a510:	01b00e13          	li	t3,27
   1a514:	03d11863          	bne	sp,t4,1a544 <fail>

0001a518 <test_28>:
   1a518:	020020b3          	mulhsu	ra,zero,zero
   1a51c:	00000e93          	li	t4,0
   1a520:	01c00e13          	li	t3,28
   1a524:	03d09063          	bne	ra,t4,1a544 <fail>

0001a528 <test_29>:
   1a528:	021000b7          	lui	ra,0x2100
   1a52c:	02200137          	lui	sp,0x2200
   1a530:	0220a033          	mulhsu	zero,ra,sp
   1a534:	00000e93          	li	t4,0
   1a538:	01d00e13          	li	t3,29
   1a53c:	01d01463          	bne	zero,t4,1a544 <fail>
   1a540:	05c01463          	bne	zero,t3,1a588 <pass>

0001a544 <fail>:
   1a544:	0ff00513          	li	a0,255

0001a548 <.delay_fail>:
   1a548:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1a54c:	fe051ee3          	bnez	a0,1a548 <.delay_fail>
   1a550:	02000537          	lui	a0,0x2000
   1a554:	04500593          	li	a1,69
   1a558:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1a55c:	05200613          	li	a2,82
   1a560:	00c52023          	sw	a2,0(a0)
   1a564:	00c52023          	sw	a2,0(a0)
   1a568:	04f00693          	li	a3,79
   1a56c:	00d52023          	sw	a3,0(a0)
   1a570:	00c52023          	sw	a2,0(a0)
   1a574:	00d00713          	li	a4,13
   1a578:	00e52023          	sw	a4,0(a0)
   1a57c:	00a00793          	li	a5,10
   1a580:	00f52023          	sw	a5,0(a0)
   1a584:	be1f506f          	j	10164 <mulhsu_ret>

0001a588 <pass>:
   1a588:	0ff00513          	li	a0,255

0001a58c <.delay_ok>:
   1a58c:	fff50513          	addi	a0,a0,-1
   1a590:	fe051ee3          	bnez	a0,1a58c <.delay_ok>
   1a594:	02000537          	lui	a0,0x2000
   1a598:	04f00593          	li	a1,79
   1a59c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe5a44>
   1a5a0:	04b00613          	li	a2,75
   1a5a4:	00c52023          	sw	a2,0(a0)
   1a5a8:	00d00693          	li	a3,13
   1a5ac:	00d52023          	sw	a3,0(a0)
   1a5b0:	00a00713          	li	a4,10
   1a5b4:	00e52023          	sw	a4,0(a0)
   1a5b8:	badf506f          	j	10164 <mulhsu_ret>
