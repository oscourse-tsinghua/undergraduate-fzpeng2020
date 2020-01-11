
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
   10080:	5b850513          	addi	a0,a0,1464 # 1a634 <_etext>
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
   100cc:	471010ef          	jal	ra,11d3c <sdram>

000100d0 <sdram_ret>:
   100d0:	201060ef          	jal	ra,16ad0 <lui>

000100d4 <lui_ret>:
   100d4:	19c040ef          	jal	ra,14270 <auipc>

000100d8 <auipc_ret>:
   100d8:	35c090ef          	jal	ra,19434 <j>

000100dc <j_ret>:
   100dc:	241080ef          	jal	ra,18b1c <jal>

000100e0 <jal_ret>:
   100e0:	5d0040ef          	jal	ra,146b0 <jalr>

000100e4 <jalr_ret>:
   100e4:	5f5020ef          	jal	ra,12ed8 <beq>

000100e8 <beq_ret>:
   100e8:	780040ef          	jal	ra,14868 <bne>

000100ec <bne_ret>:
   100ec:	6d4090ef          	jal	ra,197c0 <blt>

000100f0 <blt_ret>:
   100f0:	508010ef          	jal	ra,115f8 <bge>

000100f4 <bge_ret>:
   100f4:	799060ef          	jal	ra,1708c <bltu>

000100f8 <bltu_ret>:
   100f8:	2e9040ef          	jal	ra,14be0 <bgeu>

000100fc <bgeu_ret>:
   100fc:	1a8060ef          	jal	ra,162a4 <lb>

00010100 <lb_ret>:
   10100:	1d8010ef          	jal	ra,112d8 <lh>

00010104 <lh_ret>:
   10104:	49d030ef          	jal	ra,13da0 <lw>

00010108 <lw_ret>:
   10108:	69d050ef          	jal	ra,15fa4 <lbu>

0001010c <lbu_ret>:
   1010c:	06c080ef          	jal	ra,18178 <lhu>

00010110 <lhu_ret>:
   10110:	2d5060ef          	jal	ra,16be4 <sb>

00010114 <sb_ret>:
   10114:	490060ef          	jal	ra,165a4 <sh>

00010118 <sh_ret>:
   10118:	089020ef          	jal	ra,129a0 <sw>

0001011c <sw_ret>:
   1011c:	254040ef          	jal	ra,14370 <addi>

00010120 <addi_ret>:
   10120:	44c050ef          	jal	ra,1556c <slti>

00010124 <slti_ret>:
   10124:	400090ef          	jal	ra,19524 <xori>

00010128 <xori_ret>:
   10128:	5c1070ef          	jal	ra,17ee8 <ori>

0001012c <ori_ret>:
   1012c:	090090ef          	jal	ra,191bc <andi>

00010130 <andi_ret>:
   10130:	510070ef          	jal	ra,17640 <slli>

00010134 <slli_ret>:
   10134:	101030ef          	jal	ra,13a34 <srli>

00010138 <srli_ret>:
   10138:	095010ef          	jal	ra,119cc <srai>

0001013c <srai_ret>:
   1013c:	2ed080ef          	jal	ra,18c28 <add>

00010140 <add_ret>:
   10140:	571010ef          	jal	ra,11eb0 <sub>

00010144 <sub_ret>:
   10144:	375000ef          	jal	ra,10cb8 <sll>

00010148 <sll_ret>:
   10148:	0e1050ef          	jal	ra,15a28 <slt>

0001014c <slt_ret>:
   1014c:	5f8000ef          	jal	ra,10744 <xor>

00010150 <xor_ret>:
   10150:	35c080ef          	jal	ra,184ac <srl>

00010154 <srl_ret>:
   10154:	290030ef          	jal	ra,133e4 <sra>

00010158 <sra_ret>:
   10158:	074000ef          	jal	ra,101cc <or>

0001015c <or_ret>:
   1015c:	021070ef          	jal	ra,1797c <and>

00010160 <and_ret>:
   10160:	1d5090ef          	jal	ra,19b34 <mulh>

00010164 <mulh_ret>:
   10164:	751090ef          	jal	ra,1a0b4 <mulhsu>

00010168 <mulhsu_ret>:
   10168:	685040ef          	jal	ra,14fec <mulhu>

0001016c <mulhu_ret>:
   1016c:	2b8020ef          	jal	ra,12424 <mul>

00010170 <mul_ret>:
   10170:	771030ef          	jal	ra,140e0 <div>

00010174 <div_ret>:
   10174:	0d8030ef          	jal	ra,1324c <divu>

00010178 <divu_ret>:
   10178:	720050ef          	jal	ra,15898 <rem>

0001017c <rem_ret>:
   1017c:	2bc070ef          	jal	ra,17438 <remu>

00010180 <remu_ret>:
   10180:	44c070ef          	jal	ra,175cc <simple>

00010184 <simple_ret>:
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
   101b0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
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
   101ec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   101f0:	00150513          	addi	a0,a0,1
   101f4:	ff1ff06f          	j	101e4 <.prname_next>

000101f8 <.test_name>:
   101f8:	0000726f          	jal	tp,171f8 <test_11+0xc>

000101fc <.prname_done>:
   101fc:	02e00593          	li	a1,46
   10200:	00b62023          	sw	a1,0(a2)
   10204:	00b62023          	sw	a1,0(a2)

00010208 <test_2>:
   10208:	ff0100b7          	lui	ra,0xff010
   1020c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10210:	0f0f1137          	lui	sp,0xf0f1
   10214:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10218:	0020e1b3          	or	gp,ra,sp
   1021c:	ff100eb7          	lui	t4,0xff100
   10220:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10224:	00200e13          	li	t3,2
   10228:	4bd19263          	bne	gp,t4,106cc <fail>

0001022c <test_3>:
   1022c:	0ff010b7          	lui	ra,0xff01
   10230:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   10234:	f0f0f137          	lui	sp,0xf0f0f
   10238:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   1023c:	0020e1b3          	or	gp,ra,sp
   10240:	fff10eb7          	lui	t4,0xfff10
   10244:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10248:	00300e13          	li	t3,3
   1024c:	49d19063          	bne	gp,t4,106cc <fail>

00010250 <test_4>:
   10250:	00ff00b7          	lui	ra,0xff0
   10254:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10258:	0f0f1137          	lui	sp,0xf0f1
   1025c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10260:	0020e1b3          	or	gp,ra,sp
   10264:	0fff1eb7          	lui	t4,0xfff1
   10268:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69cb>
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
   102a4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   102a8:	0020e0b3          	or	ra,ra,sp
   102ac:	ff100eb7          	lui	t4,0xff100
   102b0:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   102b4:	00600e13          	li	t3,6
   102b8:	41d09a63          	bne	ra,t4,106cc <fail>

000102bc <test_7>:
   102bc:	ff0100b7          	lui	ra,0xff010
   102c0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   102c4:	0f0f1137          	lui	sp,0xf0f1
   102c8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   1030c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   1033c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   10378:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   1037c:	0f0f1137          	lui	sp,0xf0f1
   10380:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10384:	0020e1b3          	or	gp,ra,sp
   10388:	00000013          	nop
   1038c:	00000013          	nop
   10390:	00018313          	mv	t1,gp
   10394:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10398:	00200293          	li	t0,2
   1039c:	fc521ce3          	bne	tp,t0,10374 <test_11+0x4>
   103a0:	0fff1eb7          	lui	t4,0xfff1
   103a4:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69cb>
   103a8:	00b00e13          	li	t3,11
   103ac:	33d31063          	bne	t1,t4,106cc <fail>

000103b0 <test_12>:
   103b0:	00000213          	li	tp,0
   103b4:	ff0100b7          	lui	ra,0xff010
   103b8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   103bc:	0f0f1137          	lui	sp,0xf0f1
   103c0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   103ec:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   10424:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10428:	0f0f1137          	lui	sp,0xf0f1
   1042c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10430:	00000013          	nop
   10434:	00000013          	nop
   10438:	0020e1b3          	or	gp,ra,sp
   1043c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10440:	00200293          	li	t0,2
   10444:	fc521ee3          	bne	tp,t0,10420 <test_14+0x4>
   10448:	0fff1eb7          	lui	t4,0xfff1
   1044c:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69cb>
   10450:	00e00e13          	li	t3,14
   10454:	27d19c63          	bne	gp,t4,106cc <fail>

00010458 <test_15>:
   10458:	00000213          	li	tp,0
   1045c:	ff0100b7          	lui	ra,0xff010
   10460:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10464:	00000013          	nop
   10468:	0f0f1137          	lui	sp,0xf0f1
   1046c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   10498:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   104d4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   104d8:	00000013          	nop
   104dc:	00000013          	nop
   104e0:	0f0f1137          	lui	sp,0xf0f1
   104e4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   104e8:	0020e1b3          	or	gp,ra,sp
   104ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   104f0:	00200293          	li	t0,2
   104f4:	fc521ee3          	bne	tp,t0,104d0 <test_17+0x4>
   104f8:	0fff1eb7          	lui	t4,0xfff1
   104fc:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69cb>
   10500:	01100e13          	li	t3,17
   10504:	1dd19463          	bne	gp,t4,106cc <fail>

00010508 <test_18>:
   10508:	00000213          	li	tp,0
   1050c:	0f0f1137          	lui	sp,0xf0f1
   10510:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   1054c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   1057c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10580:	00ff00b7          	lui	ra,0xff0
   10584:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10588:	00000013          	nop
   1058c:	00000013          	nop
   10590:	0020e1b3          	or	gp,ra,sp
   10594:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10598:	00200293          	li	t0,2
   1059c:	fc521ee3          	bne	tp,t0,10578 <test_20+0x4>
   105a0:	0fff1eb7          	lui	t4,0xfff1
   105a4:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69cb>
   105a8:	01400e13          	li	t3,20
   105ac:	13d19063          	bne	gp,t4,106cc <fail>

000105b0 <test_21>:
   105b0:	00000213          	li	tp,0
   105b4:	0f0f1137          	lui	sp,0xf0f1
   105b8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   105fc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   1062c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10630:	00000013          	nop
   10634:	00000013          	nop
   10638:	00ff00b7          	lui	ra,0xff0
   1063c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10640:	0020e1b3          	or	gp,ra,sp
   10644:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10648:	00200293          	li	t0,2
   1064c:	fc521ee3          	bne	tp,t0,10628 <test_23+0x4>
   10650:	0fff1eb7          	lui	t4,0xfff1
   10654:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69cb>
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
   10680:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10684:	0000e133          	or	sp,ra,zero
   10688:	00ff0eb7          	lui	t4,0xff0
   1068c:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5acb>
   10690:	01900e13          	li	t3,25
   10694:	03d11c63          	bne	sp,t4,106cc <fail>

00010698 <test_26>:
   10698:	000060b3          	or	ra,zero,zero
   1069c:	00000e93          	li	t4,0
   106a0:	01a00e13          	li	t3,26
   106a4:	03d09463          	bne	ra,t4,106cc <fail>

000106a8 <test_27>:
   106a8:	111110b7          	lui	ra,0x11111
   106ac:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6add>
   106b0:	22222137          	lui	sp,0x22222
   106b4:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207bee>
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
   106e0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
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
   1070c:	a51ff06f          	j	1015c <or_ret>

00010710 <pass>:
   10710:	0ff00513          	li	a0,255

00010714 <.delay_ok>:
   10714:	fff50513          	addi	a0,a0,-1
   10718:	fe051ee3          	bnez	a0,10714 <.delay_ok>
   1071c:	02000537          	lui	a0,0x2000
   10720:	04f00593          	li	a1,79
   10724:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   10728:	04b00613          	li	a2,75
   1072c:	00c52023          	sw	a2,0(a0)
   10730:	00d00693          	li	a3,13
   10734:	00d52023          	sw	a3,0(a0)
   10738:	00a00713          	li	a4,10
   1073c:	00e52023          	sw	a4,0(a0)
   10740:	a1dff06f          	j	1015c <or_ret>

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
   10764:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
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
   1078c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10790:	0020c1b3          	xor	gp,ra,sp
   10794:	f00ffeb7          	lui	t4,0xf00ff
   10798:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   1079c:	00200e13          	li	t3,2
   107a0:	4bd19063          	bne	gp,t4,10c40 <fail>

000107a4 <test_3>:
   107a4:	0ff010b7          	lui	ra,0xff01
   107a8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   107ac:	f0f0f137          	lui	sp,0xf0f0f
   107b0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   107b4:	0020c1b3          	xor	gp,ra,sp
   107b8:	ff010eb7          	lui	t4,0xff010
   107bc:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   107c0:	00300e13          	li	t3,3
   107c4:	47d19e63          	bne	gp,t4,10c40 <fail>

000107c8 <test_4>:
   107c8:	00ff00b7          	lui	ra,0xff0
   107cc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   107d0:	0f0f1137          	lui	sp,0xf0f1
   107d4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   107d8:	0020c1b3          	xor	gp,ra,sp
   107dc:	0ff01eb7          	lui	t4,0xff01
   107e0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   107e4:	00400e13          	li	t3,4
   107e8:	45d19c63          	bne	gp,t4,10c40 <fail>

000107ec <test_5>:
   107ec:	f00ff0b7          	lui	ra,0xf00ff
   107f0:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   107f4:	f0f0f137          	lui	sp,0xf0f0f
   107f8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   107fc:	0020c1b3          	xor	gp,ra,sp
   10800:	00ff0eb7          	lui	t4,0xff0
   10804:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5acb>
   10808:	00500e13          	li	t3,5
   1080c:	43d19a63          	bne	gp,t4,10c40 <fail>

00010810 <test_6>:
   10810:	ff0100b7          	lui	ra,0xff010
   10814:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10818:	0f0f1137          	lui	sp,0xf0f1
   1081c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10820:	0020c0b3          	xor	ra,ra,sp
   10824:	f00ffeb7          	lui	t4,0xf00ff
   10828:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   1082c:	00600e13          	li	t3,6
   10830:	41d09863          	bne	ra,t4,10c40 <fail>

00010834 <test_7>:
   10834:	ff0100b7          	lui	ra,0xff010
   10838:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1083c:	0f0f1137          	lui	sp,0xf0f1
   10840:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   10880:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   108b0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   108ec:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   108f0:	0f0f1137          	lui	sp,0xf0f1
   108f4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   108f8:	0020c1b3          	xor	gp,ra,sp
   108fc:	00000013          	nop
   10900:	00000013          	nop
   10904:	00018313          	mv	t1,gp
   10908:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1090c:	00200293          	li	t0,2
   10910:	fc521ce3          	bne	tp,t0,108e8 <test_11+0x4>
   10914:	0ff01eb7          	lui	t4,0xff01
   10918:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   1091c:	00b00e13          	li	t3,11
   10920:	33d31063          	bne	t1,t4,10c40 <fail>

00010924 <test_12>:
   10924:	00000213          	li	tp,0
   10928:	ff0100b7          	lui	ra,0xff010
   1092c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10930:	0f0f1137          	lui	sp,0xf0f1
   10934:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   10960:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   10998:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   1099c:	0f0f1137          	lui	sp,0xf0f1
   109a0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   109a4:	00000013          	nop
   109a8:	00000013          	nop
   109ac:	0020c1b3          	xor	gp,ra,sp
   109b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   109b4:	00200293          	li	t0,2
   109b8:	fc521ee3          	bne	tp,t0,10994 <test_14+0x4>
   109bc:	0ff01eb7          	lui	t4,0xff01
   109c0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   109c4:	00e00e13          	li	t3,14
   109c8:	27d19c63          	bne	gp,t4,10c40 <fail>

000109cc <test_15>:
   109cc:	00000213          	li	tp,0
   109d0:	ff0100b7          	lui	ra,0xff010
   109d4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   109d8:	00000013          	nop
   109dc:	0f0f1137          	lui	sp,0xf0f1
   109e0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   10a0c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   10a48:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10a4c:	00000013          	nop
   10a50:	00000013          	nop
   10a54:	0f0f1137          	lui	sp,0xf0f1
   10a58:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10a5c:	0020c1b3          	xor	gp,ra,sp
   10a60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a64:	00200293          	li	t0,2
   10a68:	fc521ee3          	bne	tp,t0,10a44 <test_17+0x4>
   10a6c:	0ff01eb7          	lui	t4,0xff01
   10a70:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   10a74:	01100e13          	li	t3,17
   10a78:	1dd19463          	bne	gp,t4,10c40 <fail>

00010a7c <test_18>:
   10a7c:	00000213          	li	tp,0
   10a80:	0f0f1137          	lui	sp,0xf0f1
   10a84:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   10ac0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   10af0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10af4:	00ff00b7          	lui	ra,0xff0
   10af8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10afc:	00000013          	nop
   10b00:	00000013          	nop
   10b04:	0020c1b3          	xor	gp,ra,sp
   10b08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b0c:	00200293          	li	t0,2
   10b10:	fc521ee3          	bne	tp,t0,10aec <test_20+0x4>
   10b14:	0ff01eb7          	lui	t4,0xff01
   10b18:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   10b1c:	01400e13          	li	t3,20
   10b20:	13d19063          	bne	gp,t4,10c40 <fail>

00010b24 <test_21>:
   10b24:	00000213          	li	tp,0
   10b28:	0f0f1137          	lui	sp,0xf0f1
   10b2c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
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
   10b70:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
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
   10ba0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   10ba4:	00000013          	nop
   10ba8:	00000013          	nop
   10bac:	00ff00b7          	lui	ra,0xff0
   10bb0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10bb4:	0020c1b3          	xor	gp,ra,sp
   10bb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10bbc:	00200293          	li	t0,2
   10bc0:	fc521ee3          	bne	tp,t0,10b9c <test_23+0x4>
   10bc4:	0ff01eb7          	lui	t4,0xff01
   10bc8:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
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
   10bf4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   10bf8:	0000c133          	xor	sp,ra,zero
   10bfc:	00ff0eb7          	lui	t4,0xff0
   10c00:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5acb>
   10c04:	01900e13          	li	t3,25
   10c08:	03d11c63          	bne	sp,t4,10c40 <fail>

00010c0c <test_26>:
   10c0c:	000040b3          	xor	ra,zero,zero
   10c10:	00000e93          	li	t4,0
   10c14:	01a00e13          	li	t3,26
   10c18:	03d09463          	bne	ra,t4,10c40 <fail>

00010c1c <test_27>:
   10c1c:	111110b7          	lui	ra,0x11111
   10c20:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6add>
   10c24:	22222137          	lui	sp,0x22222
   10c28:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207bee>
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
   10c54:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
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
   10c80:	cd0ff06f          	j	10150 <xor_ret>

00010c84 <pass>:
   10c84:	0ff00513          	li	a0,255

00010c88 <.delay_ok>:
   10c88:	fff50513          	addi	a0,a0,-1
   10c8c:	fe051ee3          	bnez	a0,10c88 <.delay_ok>
   10c90:	02000537          	lui	a0,0x2000
   10c94:	04f00593          	li	a1,79
   10c98:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   10c9c:	04b00613          	li	a2,75
   10ca0:	00c52023          	sw	a2,0(a0)
   10ca4:	00d00693          	li	a3,13
   10ca8:	00d52023          	sw	a3,0(a0)
   10cac:	00a00713          	li	a4,10
   10cb0:	00e52023          	sw	a4,0(a0)
   10cb4:	c9cff06f          	j	10150 <xor_ret>

00010cb8 <sll>:
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
   10cd8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   10cdc:	00150513          	addi	a0,a0,1
   10ce0:	ff1ff06f          	j	10cd0 <.prname_next>

00010ce4 <.test_name>:
   10ce4:	006c6c73          	csrrsi	s8,0x6,24

00010ce8 <.prname_done>:
   10ce8:	02e00593          	li	a1,46
   10cec:	00b62023          	sw	a1,0(a2)
   10cf0:	00b62023          	sw	a1,0(a2)

00010cf4 <test_2>:
   10cf4:	00100093          	li	ra,1
   10cf8:	00000113          	li	sp,0
   10cfc:	002091b3          	sll	gp,ra,sp
   10d00:	00100e93          	li	t4,1
   10d04:	00200e13          	li	t3,2
   10d08:	55d19c63          	bne	gp,t4,11260 <fail>

00010d0c <test_3>:
   10d0c:	00100093          	li	ra,1
   10d10:	00100113          	li	sp,1
   10d14:	002091b3          	sll	gp,ra,sp
   10d18:	00200e93          	li	t4,2
   10d1c:	00300e13          	li	t3,3
   10d20:	55d19063          	bne	gp,t4,11260 <fail>

00010d24 <test_4>:
   10d24:	00100093          	li	ra,1
   10d28:	00700113          	li	sp,7
   10d2c:	002091b3          	sll	gp,ra,sp
   10d30:	08000e93          	li	t4,128
   10d34:	00400e13          	li	t3,4
   10d38:	53d19463          	bne	gp,t4,11260 <fail>

00010d3c <test_5>:
   10d3c:	00100093          	li	ra,1
   10d40:	00e00113          	li	sp,14
   10d44:	002091b3          	sll	gp,ra,sp
   10d48:	00004eb7          	lui	t4,0x4
   10d4c:	00500e13          	li	t3,5
   10d50:	51d19863          	bne	gp,t4,11260 <fail>

00010d54 <test_6>:
   10d54:	00100093          	li	ra,1
   10d58:	01f00113          	li	sp,31
   10d5c:	002091b3          	sll	gp,ra,sp
   10d60:	80000eb7          	lui	t4,0x80000
   10d64:	00600e13          	li	t3,6
   10d68:	4fd19c63          	bne	gp,t4,11260 <fail>

00010d6c <test_7>:
   10d6c:	fff00093          	li	ra,-1
   10d70:	00000113          	li	sp,0
   10d74:	002091b3          	sll	gp,ra,sp
   10d78:	fff00e93          	li	t4,-1
   10d7c:	00700e13          	li	t3,7
   10d80:	4fd19063          	bne	gp,t4,11260 <fail>

00010d84 <test_8>:
   10d84:	fff00093          	li	ra,-1
   10d88:	00100113          	li	sp,1
   10d8c:	002091b3          	sll	gp,ra,sp
   10d90:	ffe00e93          	li	t4,-2
   10d94:	00800e13          	li	t3,8
   10d98:	4dd19463          	bne	gp,t4,11260 <fail>

00010d9c <test_9>:
   10d9c:	fff00093          	li	ra,-1
   10da0:	00700113          	li	sp,7
   10da4:	002091b3          	sll	gp,ra,sp
   10da8:	f8000e93          	li	t4,-128
   10dac:	00900e13          	li	t3,9
   10db0:	4bd19863          	bne	gp,t4,11260 <fail>

00010db4 <test_10>:
   10db4:	fff00093          	li	ra,-1
   10db8:	00e00113          	li	sp,14
   10dbc:	002091b3          	sll	gp,ra,sp
   10dc0:	ffffceb7          	lui	t4,0xffffc
   10dc4:	00a00e13          	li	t3,10
   10dc8:	49d19c63          	bne	gp,t4,11260 <fail>

00010dcc <test_11>:
   10dcc:	fff00093          	li	ra,-1
   10dd0:	01f00113          	li	sp,31
   10dd4:	002091b3          	sll	gp,ra,sp
   10dd8:	80000eb7          	lui	t4,0x80000
   10ddc:	00b00e13          	li	t3,11
   10de0:	49d19063          	bne	gp,t4,11260 <fail>

00010de4 <test_12>:
   10de4:	212120b7          	lui	ra,0x21212
   10de8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10dec:	00000113          	li	sp,0
   10df0:	002091b3          	sll	gp,ra,sp
   10df4:	21212eb7          	lui	t4,0x21212
   10df8:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7aed>
   10dfc:	00c00e13          	li	t3,12
   10e00:	47d19063          	bne	gp,t4,11260 <fail>

00010e04 <test_13>:
   10e04:	212120b7          	lui	ra,0x21212
   10e08:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10e0c:	00100113          	li	sp,1
   10e10:	002091b3          	sll	gp,ra,sp
   10e14:	42424eb7          	lui	t4,0x42424
   10e18:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c0e>
   10e1c:	00d00e13          	li	t3,13
   10e20:	45d19063          	bne	gp,t4,11260 <fail>

00010e24 <test_14>:
   10e24:	212120b7          	lui	ra,0x21212
   10e28:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10e2c:	00700113          	li	sp,7
   10e30:	002091b3          	sll	gp,ra,sp
   10e34:	90909eb7          	lui	t4,0x90909
   10e38:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   10e3c:	00e00e13          	li	t3,14
   10e40:	43d19063          	bne	gp,t4,11260 <fail>

00010e44 <test_15>:
   10e44:	212120b7          	lui	ra,0x21212
   10e48:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10e4c:	00e00113          	li	sp,14
   10e50:	002091b3          	sll	gp,ra,sp
   10e54:	48484eb7          	lui	t4,0x48484
   10e58:	00f00e13          	li	t3,15
   10e5c:	41d19263          	bne	gp,t4,11260 <fail>

00010e60 <test_16>:
   10e60:	212120b7          	lui	ra,0x21212
   10e64:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10e68:	01f00113          	li	sp,31
   10e6c:	002091b3          	sll	gp,ra,sp
   10e70:	80000eb7          	lui	t4,0x80000
   10e74:	01000e13          	li	t3,16
   10e78:	3fd19463          	bne	gp,t4,11260 <fail>

00010e7c <test_17>:
   10e7c:	212120b7          	lui	ra,0x21212
   10e80:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10e84:	fe000113          	li	sp,-32
   10e88:	002091b3          	sll	gp,ra,sp
   10e8c:	21212eb7          	lui	t4,0x21212
   10e90:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7aed>
   10e94:	01100e13          	li	t3,17
   10e98:	3dd19463          	bne	gp,t4,11260 <fail>

00010e9c <test_18>:
   10e9c:	212120b7          	lui	ra,0x21212
   10ea0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10ea4:	fe100113          	li	sp,-31
   10ea8:	002091b3          	sll	gp,ra,sp
   10eac:	42424eb7          	lui	t4,0x42424
   10eb0:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c0e>
   10eb4:	01200e13          	li	t3,18
   10eb8:	3bd19463          	bne	gp,t4,11260 <fail>

00010ebc <test_19>:
   10ebc:	212120b7          	lui	ra,0x21212
   10ec0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10ec4:	fe700113          	li	sp,-25
   10ec8:	002091b3          	sll	gp,ra,sp
   10ecc:	90909eb7          	lui	t4,0x90909
   10ed0:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   10ed4:	01300e13          	li	t3,19
   10ed8:	39d19463          	bne	gp,t4,11260 <fail>

00010edc <test_20>:
   10edc:	212120b7          	lui	ra,0x21212
   10ee0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   10ee4:	fee00113          	li	sp,-18
   10ee8:	002091b3          	sll	gp,ra,sp
   10eec:	48484eb7          	lui	t4,0x48484
   10ef0:	01400e13          	li	t3,20
   10ef4:	37d19663          	bne	gp,t4,11260 <fail>

00010ef8 <test_21>:
   10ef8:	212120b7          	lui	ra,0x21212
   10efc:	12008093          	addi	ra,ra,288 # 21212120 <_etext+0x211f7aec>
   10f00:	fff00113          	li	sp,-1
   10f04:	002091b3          	sll	gp,ra,sp
   10f08:	00000e93          	li	t4,0
   10f0c:	01500e13          	li	t3,21
   10f10:	35d19863          	bne	gp,t4,11260 <fail>

00010f14 <test_22>:
   10f14:	00100093          	li	ra,1
   10f18:	00700113          	li	sp,7
   10f1c:	002090b3          	sll	ra,ra,sp
   10f20:	08000e93          	li	t4,128
   10f24:	01600e13          	li	t3,22
   10f28:	33d09c63          	bne	ra,t4,11260 <fail>

00010f2c <test_23>:
   10f2c:	00100093          	li	ra,1
   10f30:	00e00113          	li	sp,14
   10f34:	00209133          	sll	sp,ra,sp
   10f38:	00004eb7          	lui	t4,0x4
   10f3c:	01700e13          	li	t3,23
   10f40:	33d11063          	bne	sp,t4,11260 <fail>

00010f44 <test_24>:
   10f44:	00300093          	li	ra,3
   10f48:	001090b3          	sll	ra,ra,ra
   10f4c:	01800e93          	li	t4,24
   10f50:	01800e13          	li	t3,24
   10f54:	31d09663          	bne	ra,t4,11260 <fail>

00010f58 <test_25>:
   10f58:	00000213          	li	tp,0
   10f5c:	00100093          	li	ra,1
   10f60:	00700113          	li	sp,7
   10f64:	002091b3          	sll	gp,ra,sp
   10f68:	00018313          	mv	t1,gp
   10f6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10f70:	00200293          	li	t0,2
   10f74:	fe5214e3          	bne	tp,t0,10f5c <test_25+0x4>
   10f78:	08000e93          	li	t4,128
   10f7c:	01900e13          	li	t3,25
   10f80:	2fd31063          	bne	t1,t4,11260 <fail>

00010f84 <test_26>:
   10f84:	00000213          	li	tp,0
   10f88:	00100093          	li	ra,1
   10f8c:	00e00113          	li	sp,14
   10f90:	002091b3          	sll	gp,ra,sp
   10f94:	00000013          	nop
   10f98:	00018313          	mv	t1,gp
   10f9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10fa0:	00200293          	li	t0,2
   10fa4:	fe5212e3          	bne	tp,t0,10f88 <test_26+0x4>
   10fa8:	00004eb7          	lui	t4,0x4
   10fac:	01a00e13          	li	t3,26
   10fb0:	2bd31863          	bne	t1,t4,11260 <fail>

00010fb4 <test_27>:
   10fb4:	00000213          	li	tp,0
   10fb8:	00100093          	li	ra,1
   10fbc:	01f00113          	li	sp,31
   10fc0:	002091b3          	sll	gp,ra,sp
   10fc4:	00000013          	nop
   10fc8:	00000013          	nop
   10fcc:	00018313          	mv	t1,gp
   10fd0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10fd4:	00200293          	li	t0,2
   10fd8:	fe5210e3          	bne	tp,t0,10fb8 <test_27+0x4>
   10fdc:	80000eb7          	lui	t4,0x80000
   10fe0:	01b00e13          	li	t3,27
   10fe4:	27d31e63          	bne	t1,t4,11260 <fail>

00010fe8 <test_28>:
   10fe8:	00000213          	li	tp,0
   10fec:	00100093          	li	ra,1
   10ff0:	00700113          	li	sp,7
   10ff4:	002091b3          	sll	gp,ra,sp
   10ff8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10ffc:	00200293          	li	t0,2
   11000:	fe5216e3          	bne	tp,t0,10fec <test_28+0x4>
   11004:	08000e93          	li	t4,128
   11008:	01c00e13          	li	t3,28
   1100c:	25d19a63          	bne	gp,t4,11260 <fail>

00011010 <test_29>:
   11010:	00000213          	li	tp,0
   11014:	00100093          	li	ra,1
   11018:	00e00113          	li	sp,14
   1101c:	00000013          	nop
   11020:	002091b3          	sll	gp,ra,sp
   11024:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11028:	00200293          	li	t0,2
   1102c:	fe5214e3          	bne	tp,t0,11014 <test_29+0x4>
   11030:	00004eb7          	lui	t4,0x4
   11034:	01d00e13          	li	t3,29
   11038:	23d19463          	bne	gp,t4,11260 <fail>

0001103c <test_30>:
   1103c:	00000213          	li	tp,0
   11040:	00100093          	li	ra,1
   11044:	01f00113          	li	sp,31
   11048:	00000013          	nop
   1104c:	00000013          	nop
   11050:	002091b3          	sll	gp,ra,sp
   11054:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11058:	00200293          	li	t0,2
   1105c:	fe5212e3          	bne	tp,t0,11040 <test_30+0x4>
   11060:	80000eb7          	lui	t4,0x80000
   11064:	01e00e13          	li	t3,30
   11068:	1fd19c63          	bne	gp,t4,11260 <fail>

0001106c <test_31>:
   1106c:	00000213          	li	tp,0
   11070:	00100093          	li	ra,1
   11074:	00000013          	nop
   11078:	00700113          	li	sp,7
   1107c:	002091b3          	sll	gp,ra,sp
   11080:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11084:	00200293          	li	t0,2
   11088:	fe5214e3          	bne	tp,t0,11070 <test_31+0x4>
   1108c:	08000e93          	li	t4,128
   11090:	01f00e13          	li	t3,31
   11094:	1dd19663          	bne	gp,t4,11260 <fail>

00011098 <test_32>:
   11098:	00000213          	li	tp,0
   1109c:	00100093          	li	ra,1
   110a0:	00000013          	nop
   110a4:	00e00113          	li	sp,14
   110a8:	00000013          	nop
   110ac:	002091b3          	sll	gp,ra,sp
   110b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110b4:	00200293          	li	t0,2
   110b8:	fe5212e3          	bne	tp,t0,1109c <test_32+0x4>
   110bc:	00004eb7          	lui	t4,0x4
   110c0:	02000e13          	li	t3,32
   110c4:	19d19e63          	bne	gp,t4,11260 <fail>

000110c8 <test_33>:
   110c8:	00000213          	li	tp,0
   110cc:	00100093          	li	ra,1
   110d0:	00000013          	nop
   110d4:	00000013          	nop
   110d8:	01f00113          	li	sp,31
   110dc:	002091b3          	sll	gp,ra,sp
   110e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   110e4:	00200293          	li	t0,2
   110e8:	fe5212e3          	bne	tp,t0,110cc <test_33+0x4>
   110ec:	80000eb7          	lui	t4,0x80000
   110f0:	02100e13          	li	t3,33
   110f4:	17d19663          	bne	gp,t4,11260 <fail>

000110f8 <test_34>:
   110f8:	00000213          	li	tp,0
   110fc:	00700113          	li	sp,7
   11100:	00100093          	li	ra,1
   11104:	002091b3          	sll	gp,ra,sp
   11108:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1110c:	00200293          	li	t0,2
   11110:	fe5216e3          	bne	tp,t0,110fc <test_34+0x4>
   11114:	08000e93          	li	t4,128
   11118:	02200e13          	li	t3,34
   1111c:	15d19263          	bne	gp,t4,11260 <fail>

00011120 <test_35>:
   11120:	00000213          	li	tp,0
   11124:	00e00113          	li	sp,14
   11128:	00100093          	li	ra,1
   1112c:	00000013          	nop
   11130:	002091b3          	sll	gp,ra,sp
   11134:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11138:	00200293          	li	t0,2
   1113c:	fe5214e3          	bne	tp,t0,11124 <test_35+0x4>
   11140:	00004eb7          	lui	t4,0x4
   11144:	02300e13          	li	t3,35
   11148:	11d19c63          	bne	gp,t4,11260 <fail>

0001114c <test_36>:
   1114c:	00000213          	li	tp,0
   11150:	01f00113          	li	sp,31
   11154:	00100093          	li	ra,1
   11158:	00000013          	nop
   1115c:	00000013          	nop
   11160:	002091b3          	sll	gp,ra,sp
   11164:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11168:	00200293          	li	t0,2
   1116c:	fe5212e3          	bne	tp,t0,11150 <test_36+0x4>
   11170:	80000eb7          	lui	t4,0x80000
   11174:	02400e13          	li	t3,36
   11178:	0fd19463          	bne	gp,t4,11260 <fail>

0001117c <test_37>:
   1117c:	00000213          	li	tp,0
   11180:	00700113          	li	sp,7
   11184:	00000013          	nop
   11188:	00100093          	li	ra,1
   1118c:	002091b3          	sll	gp,ra,sp
   11190:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11194:	00200293          	li	t0,2
   11198:	fe5214e3          	bne	tp,t0,11180 <test_37+0x4>
   1119c:	08000e93          	li	t4,128
   111a0:	02500e13          	li	t3,37
   111a4:	0bd19e63          	bne	gp,t4,11260 <fail>

000111a8 <test_38>:
   111a8:	00000213          	li	tp,0
   111ac:	00e00113          	li	sp,14
   111b0:	00000013          	nop
   111b4:	00100093          	li	ra,1
   111b8:	00000013          	nop
   111bc:	002091b3          	sll	gp,ra,sp
   111c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   111c4:	00200293          	li	t0,2
   111c8:	fe5212e3          	bne	tp,t0,111ac <test_38+0x4>
   111cc:	00004eb7          	lui	t4,0x4
   111d0:	02600e13          	li	t3,38
   111d4:	09d19663          	bne	gp,t4,11260 <fail>

000111d8 <test_39>:
   111d8:	00000213          	li	tp,0
   111dc:	01f00113          	li	sp,31
   111e0:	00000013          	nop
   111e4:	00000013          	nop
   111e8:	00100093          	li	ra,1
   111ec:	002091b3          	sll	gp,ra,sp
   111f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   111f4:	00200293          	li	t0,2
   111f8:	fe5212e3          	bne	tp,t0,111dc <test_39+0x4>
   111fc:	80000eb7          	lui	t4,0x80000
   11200:	02700e13          	li	t3,39
   11204:	05d19e63          	bne	gp,t4,11260 <fail>

00011208 <test_40>:
   11208:	00f00093          	li	ra,15
   1120c:	00101133          	sll	sp,zero,ra
   11210:	00000e93          	li	t4,0
   11214:	02800e13          	li	t3,40
   11218:	05d11463          	bne	sp,t4,11260 <fail>

0001121c <test_41>:
   1121c:	02000093          	li	ra,32
   11220:	00009133          	sll	sp,ra,zero
   11224:	02000e93          	li	t4,32
   11228:	02900e13          	li	t3,41
   1122c:	03d11a63          	bne	sp,t4,11260 <fail>

00011230 <test_42>:
   11230:	000010b3          	sll	ra,zero,zero
   11234:	00000e93          	li	t4,0
   11238:	02a00e13          	li	t3,42
   1123c:	03d09263          	bne	ra,t4,11260 <fail>

00011240 <test_43>:
   11240:	40000093          	li	ra,1024
   11244:	00001137          	lui	sp,0x1
   11248:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   1124c:	00209033          	sll	zero,ra,sp
   11250:	00000e93          	li	t4,0
   11254:	02b00e13          	li	t3,43
   11258:	01d01463          	bne	zero,t4,11260 <fail>
   1125c:	05c01463          	bne	zero,t3,112a4 <pass>

00011260 <fail>:
   11260:	0ff00513          	li	a0,255

00011264 <.delay_fail>:
   11264:	fff50513          	addi	a0,a0,-1
   11268:	fe051ee3          	bnez	a0,11264 <.delay_fail>
   1126c:	02000537          	lui	a0,0x2000
   11270:	04500593          	li	a1,69
   11274:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   11278:	05200613          	li	a2,82
   1127c:	00c52023          	sw	a2,0(a0)
   11280:	00c52023          	sw	a2,0(a0)
   11284:	04f00693          	li	a3,79
   11288:	00d52023          	sw	a3,0(a0)
   1128c:	00c52023          	sw	a2,0(a0)
   11290:	00d00713          	li	a4,13
   11294:	00e52023          	sw	a4,0(a0)
   11298:	00a00793          	li	a5,10
   1129c:	00f52023          	sw	a5,0(a0)
   112a0:	ea9fe06f          	j	10148 <sll_ret>

000112a4 <pass>:
   112a4:	0ff00513          	li	a0,255

000112a8 <.delay_ok>:
   112a8:	fff50513          	addi	a0,a0,-1
   112ac:	fe051ee3          	bnez	a0,112a8 <.delay_ok>
   112b0:	02000537          	lui	a0,0x2000
   112b4:	04f00593          	li	a1,79
   112b8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   112bc:	04b00613          	li	a2,75
   112c0:	00c52023          	sw	a2,0(a0)
   112c4:	00d00693          	li	a3,13
   112c8:	00d52023          	sw	a3,0(a0)
   112cc:	00a00713          	li	a4,10
   112d0:	00e52023          	sw	a4,0(a0)
   112d4:	e75fe06f          	j	10148 <sll_ret>

000112d8 <lh>:
   112d8:	0ff00513          	li	a0,255

000112dc <.delay_pr>:
   112dc:	fff50513          	addi	a0,a0,-1
   112e0:	fe051ee3          	bnez	a0,112dc <.delay_pr>
   112e4:	00011537          	lui	a0,0x11
   112e8:	30450513          	addi	a0,a0,772 # 11304 <.test_name>
   112ec:	02000637          	lui	a2,0x2000

000112f0 <.prname_next>:
   112f0:	00050583          	lb	a1,0(a0)
   112f4:	00058a63          	beqz	a1,11308 <.prname_done>
   112f8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   112fc:	00150513          	addi	a0,a0,1
   11300:	ff1ff06f          	j	112f0 <.prname_next>

00011304 <.test_name>:
   11304:	686c                	flw	fa1,84(s0)
	...

00011308 <.prname_done>:
   11308:	02e00593          	li	a1,46
   1130c:	00b62023          	sw	a1,0(a2)
   11310:	00b62023          	sw	a1,0(a2)

00011314 <test_2>:
   11314:	7ffef097          	auipc	ra,0x7ffef
   11318:	cec08093          	addi	ra,ra,-788 # 80000000 <_ram_start>
   1131c:	00009183          	lh	gp,0(ra)
   11320:	0ff00e93          	li	t4,255
   11324:	00200e13          	li	t3,2
   11328:	25d19c63          	bne	gp,t4,11580 <fail>

0001132c <test_3>:
   1132c:	7ffef097          	auipc	ra,0x7ffef
   11330:	cd408093          	addi	ra,ra,-812 # 80000000 <_ram_start>
   11334:	00209183          	lh	gp,2(ra)
   11338:	f0000e93          	li	t4,-256
   1133c:	00300e13          	li	t3,3
   11340:	25d19063          	bne	gp,t4,11580 <fail>

00011344 <test_4>:
   11344:	7ffef097          	auipc	ra,0x7ffef
   11348:	cbc08093          	addi	ra,ra,-836 # 80000000 <_ram_start>
   1134c:	00409183          	lh	gp,4(ra)
   11350:	00001eb7          	lui	t4,0x1
   11354:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   11358:	00400e13          	li	t3,4
   1135c:	23d19263          	bne	gp,t4,11580 <fail>

00011360 <test_5>:
   11360:	7ffef097          	auipc	ra,0x7ffef
   11364:	ca008093          	addi	ra,ra,-864 # 80000000 <_ram_start>
   11368:	00609183          	lh	gp,6(ra)
   1136c:	fffffeb7          	lui	t4,0xfffff
   11370:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11374:	00500e13          	li	t3,5
   11378:	21d19463          	bne	gp,t4,11580 <fail>

0001137c <test_6>:
   1137c:	7ffef097          	auipc	ra,0x7ffef
   11380:	c8a08093          	addi	ra,ra,-886 # 80000006 <tdat4>
   11384:	ffa09183          	lh	gp,-6(ra)
   11388:	0ff00e93          	li	t4,255
   1138c:	00600e13          	li	t3,6
   11390:	1fd19863          	bne	gp,t4,11580 <fail>

00011394 <test_7>:
   11394:	7ffef097          	auipc	ra,0x7ffef
   11398:	c7208093          	addi	ra,ra,-910 # 80000006 <tdat4>
   1139c:	ffc09183          	lh	gp,-4(ra)
   113a0:	f0000e93          	li	t4,-256
   113a4:	00700e13          	li	t3,7
   113a8:	1dd19c63          	bne	gp,t4,11580 <fail>

000113ac <test_8>:
   113ac:	7ffef097          	auipc	ra,0x7ffef
   113b0:	c5a08093          	addi	ra,ra,-934 # 80000006 <tdat4>
   113b4:	ffe09183          	lh	gp,-2(ra)
   113b8:	00001eb7          	lui	t4,0x1
   113bc:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   113c0:	00800e13          	li	t3,8
   113c4:	1bd19e63          	bne	gp,t4,11580 <fail>

000113c8 <test_9>:
   113c8:	7ffef097          	auipc	ra,0x7ffef
   113cc:	c3e08093          	addi	ra,ra,-962 # 80000006 <tdat4>
   113d0:	00009183          	lh	gp,0(ra)
   113d4:	fffffeb7          	lui	t4,0xfffff
   113d8:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   113dc:	00900e13          	li	t3,9
   113e0:	1bd19063          	bne	gp,t4,11580 <fail>

000113e4 <test_10>:
   113e4:	7ffef097          	auipc	ra,0x7ffef
   113e8:	c1c08093          	addi	ra,ra,-996 # 80000000 <_ram_start>
   113ec:	fe008093          	addi	ra,ra,-32
   113f0:	02009183          	lh	gp,32(ra)
   113f4:	0ff00e93          	li	t4,255
   113f8:	00a00e13          	li	t3,10
   113fc:	19d19263          	bne	gp,t4,11580 <fail>

00011400 <test_11>:
   11400:	7ffef097          	auipc	ra,0x7ffef
   11404:	c0008093          	addi	ra,ra,-1024 # 80000000 <_ram_start>
   11408:	ffb08093          	addi	ra,ra,-5
   1140c:	00709183          	lh	gp,7(ra)
   11410:	f0000e93          	li	t4,-256
   11414:	00b00e13          	li	t3,11
   11418:	17d19463          	bne	gp,t4,11580 <fail>

0001141c <test_12>:
   1141c:	00c00e13          	li	t3,12
   11420:	00000213          	li	tp,0
   11424:	7ffef097          	auipc	ra,0x7ffef
   11428:	bde08093          	addi	ra,ra,-1058 # 80000002 <tdat2>
   1142c:	00209183          	lh	gp,2(ra)
   11430:	00018313          	mv	t1,gp
   11434:	00001eb7          	lui	t4,0x1
   11438:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   1143c:	15d31263          	bne	t1,t4,11580 <fail>
   11440:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11444:	00200293          	li	t0,2
   11448:	fc521ee3          	bne	tp,t0,11424 <test_12+0x8>

0001144c <test_13>:
   1144c:	00d00e13          	li	t3,13
   11450:	00000213          	li	tp,0
   11454:	7ffef097          	auipc	ra,0x7ffef
   11458:	bb008093          	addi	ra,ra,-1104 # 80000004 <tdat3>
   1145c:	00209183          	lh	gp,2(ra)
   11460:	00000013          	nop
   11464:	00018313          	mv	t1,gp
   11468:	fffffeb7          	lui	t4,0xfffff
   1146c:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11470:	11d31863          	bne	t1,t4,11580 <fail>
   11474:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11478:	00200293          	li	t0,2
   1147c:	fc521ce3          	bne	tp,t0,11454 <test_13+0x8>

00011480 <test_14>:
   11480:	00e00e13          	li	t3,14
   11484:	00000213          	li	tp,0
   11488:	7ffef097          	auipc	ra,0x7ffef
   1148c:	b7808093          	addi	ra,ra,-1160 # 80000000 <_ram_start>
   11490:	00209183          	lh	gp,2(ra)
   11494:	00000013          	nop
   11498:	00000013          	nop
   1149c:	00018313          	mv	t1,gp
   114a0:	f0000e93          	li	t4,-256
   114a4:	0dd31e63          	bne	t1,t4,11580 <fail>
   114a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   114ac:	00200293          	li	t0,2
   114b0:	fc521ce3          	bne	tp,t0,11488 <test_14+0x8>

000114b4 <test_15>:
   114b4:	00f00e13          	li	t3,15
   114b8:	00000213          	li	tp,0
   114bc:	7ffef097          	auipc	ra,0x7ffef
   114c0:	b4608093          	addi	ra,ra,-1210 # 80000002 <tdat2>
   114c4:	00209183          	lh	gp,2(ra)
   114c8:	00001eb7          	lui	t4,0x1
   114cc:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   114d0:	0bd19863          	bne	gp,t4,11580 <fail>
   114d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   114d8:	00200293          	li	t0,2
   114dc:	fe5210e3          	bne	tp,t0,114bc <test_15+0x8>

000114e0 <test_16>:
   114e0:	01000e13          	li	t3,16
   114e4:	00000213          	li	tp,0
   114e8:	7ffef097          	auipc	ra,0x7ffef
   114ec:	b1c08093          	addi	ra,ra,-1252 # 80000004 <tdat3>
   114f0:	00000013          	nop
   114f4:	00209183          	lh	gp,2(ra)
   114f8:	fffffeb7          	lui	t4,0xfffff
   114fc:	00fe8e93          	addi	t4,t4,15 # fffff00f <_edata+0x7fffef9f>
   11500:	09d19063          	bne	gp,t4,11580 <fail>
   11504:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11508:	00200293          	li	t0,2
   1150c:	fc521ee3          	bne	tp,t0,114e8 <test_16+0x8>

00011510 <test_17>:
   11510:	01100e13          	li	t3,17
   11514:	00000213          	li	tp,0
   11518:	7ffef097          	auipc	ra,0x7ffef
   1151c:	ae808093          	addi	ra,ra,-1304 # 80000000 <_ram_start>
   11520:	00000013          	nop
   11524:	00000013          	nop
   11528:	00209183          	lh	gp,2(ra)
   1152c:	f0000e93          	li	t4,-256
   11530:	05d19863          	bne	gp,t4,11580 <fail>
   11534:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11538:	00200293          	li	t0,2
   1153c:	fc521ee3          	bne	tp,t0,11518 <test_17+0x8>

00011540 <test_18>:
   11540:	7ffef197          	auipc	gp,0x7ffef
   11544:	ac018193          	addi	gp,gp,-1344 # 80000000 <_ram_start>
   11548:	00019103          	lh	sp,0(gp)
   1154c:	00200113          	li	sp,2
   11550:	00200e93          	li	t4,2
   11554:	01200e13          	li	t3,18
   11558:	03d11463          	bne	sp,t4,11580 <fail>

0001155c <test_19>:
   1155c:	7ffef197          	auipc	gp,0x7ffef
   11560:	aa418193          	addi	gp,gp,-1372 # 80000000 <_ram_start>
   11564:	00019103          	lh	sp,0(gp)
   11568:	00000013          	nop
   1156c:	00200113          	li	sp,2
   11570:	00200e93          	li	t4,2
   11574:	01300e13          	li	t3,19
   11578:	01d11463          	bne	sp,t4,11580 <fail>
   1157c:	05c01463          	bne	zero,t3,115c4 <pass>

00011580 <fail>:
   11580:	0ff00513          	li	a0,255

00011584 <.delay_fail>:
   11584:	fff50513          	addi	a0,a0,-1
   11588:	fe051ee3          	bnez	a0,11584 <.delay_fail>
   1158c:	02000537          	lui	a0,0x2000
   11590:	04500593          	li	a1,69
   11594:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   11598:	05200613          	li	a2,82
   1159c:	00c52023          	sw	a2,0(a0)
   115a0:	00c52023          	sw	a2,0(a0)
   115a4:	04f00693          	li	a3,79
   115a8:	00d52023          	sw	a3,0(a0)
   115ac:	00c52023          	sw	a2,0(a0)
   115b0:	00d00713          	li	a4,13
   115b4:	00e52023          	sw	a4,0(a0)
   115b8:	00a00793          	li	a5,10
   115bc:	00f52023          	sw	a5,0(a0)
   115c0:	b45fe06f          	j	10104 <lh_ret>

000115c4 <pass>:
   115c4:	0ff00513          	li	a0,255

000115c8 <.delay_ok>:
   115c8:	fff50513          	addi	a0,a0,-1
   115cc:	fe051ee3          	bnez	a0,115c8 <.delay_ok>
   115d0:	02000537          	lui	a0,0x2000
   115d4:	04f00593          	li	a1,79
   115d8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   115dc:	04b00613          	li	a2,75
   115e0:	00c52023          	sw	a2,0(a0)
   115e4:	00d00693          	li	a3,13
   115e8:	00d52023          	sw	a3,0(a0)
   115ec:	00a00713          	li	a4,10
   115f0:	00e52023          	sw	a4,0(a0)
   115f4:	b11fe06f          	j	10104 <lh_ret>

000115f8 <bge>:
   115f8:	0ff00513          	li	a0,255

000115fc <.delay_pr>:
   115fc:	fff50513          	addi	a0,a0,-1
   11600:	fe051ee3          	bnez	a0,115fc <.delay_pr>
   11604:	00011537          	lui	a0,0x11
   11608:	62450513          	addi	a0,a0,1572 # 11624 <.test_name>
   1160c:	02000637          	lui	a2,0x2000

00011610 <.prname_next>:
   11610:	00050583          	lb	a1,0(a0)
   11614:	00058a63          	beqz	a1,11628 <.prname_done>
   11618:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   1161c:	00150513          	addi	a0,a0,1
   11620:	ff1ff06f          	j	11610 <.prname_next>

00011624 <.test_name>:
   11624:	6762                	flw	fa4,24(sp)
   11626:	0065                	c.nop	25

00011628 <.prname_done>:
   11628:	02e00593          	li	a1,46
   1162c:	00b62023          	sw	a1,0(a2)
   11630:	00b62023          	sw	a1,0(a2)

00011634 <test_2>:
   11634:	00200e13          	li	t3,2
   11638:	00000093          	li	ra,0
   1163c:	00000113          	li	sp,0
   11640:	0020d663          	bge	ra,sp,1164c <test_2+0x18>
   11644:	31c01863          	bne	zero,t3,11954 <fail>
   11648:	01c01663          	bne	zero,t3,11654 <test_3>
   1164c:	fe20dee3          	bge	ra,sp,11648 <test_2+0x14>
   11650:	31c01263          	bne	zero,t3,11954 <fail>

00011654 <test_3>:
   11654:	00300e13          	li	t3,3
   11658:	00100093          	li	ra,1
   1165c:	00100113          	li	sp,1
   11660:	0020d663          	bge	ra,sp,1166c <test_3+0x18>
   11664:	2fc01863          	bne	zero,t3,11954 <fail>
   11668:	01c01663          	bne	zero,t3,11674 <test_4>
   1166c:	fe20dee3          	bge	ra,sp,11668 <test_3+0x14>
   11670:	2fc01263          	bne	zero,t3,11954 <fail>

00011674 <test_4>:
   11674:	00400e13          	li	t3,4
   11678:	fff00093          	li	ra,-1
   1167c:	fff00113          	li	sp,-1
   11680:	0020d663          	bge	ra,sp,1168c <test_4+0x18>
   11684:	2dc01863          	bne	zero,t3,11954 <fail>
   11688:	01c01663          	bne	zero,t3,11694 <test_5>
   1168c:	fe20dee3          	bge	ra,sp,11688 <test_4+0x14>
   11690:	2dc01263          	bne	zero,t3,11954 <fail>

00011694 <test_5>:
   11694:	00500e13          	li	t3,5
   11698:	00100093          	li	ra,1
   1169c:	00000113          	li	sp,0
   116a0:	0020d663          	bge	ra,sp,116ac <test_5+0x18>
   116a4:	2bc01863          	bne	zero,t3,11954 <fail>
   116a8:	01c01663          	bne	zero,t3,116b4 <test_6>
   116ac:	fe20dee3          	bge	ra,sp,116a8 <test_5+0x14>
   116b0:	2bc01263          	bne	zero,t3,11954 <fail>

000116b4 <test_6>:
   116b4:	00600e13          	li	t3,6
   116b8:	00100093          	li	ra,1
   116bc:	fff00113          	li	sp,-1
   116c0:	0020d663          	bge	ra,sp,116cc <test_6+0x18>
   116c4:	29c01863          	bne	zero,t3,11954 <fail>
   116c8:	01c01663          	bne	zero,t3,116d4 <test_7>
   116cc:	fe20dee3          	bge	ra,sp,116c8 <test_6+0x14>
   116d0:	29c01263          	bne	zero,t3,11954 <fail>

000116d4 <test_7>:
   116d4:	00700e13          	li	t3,7
   116d8:	fff00093          	li	ra,-1
   116dc:	ffe00113          	li	sp,-2
   116e0:	0020d663          	bge	ra,sp,116ec <test_7+0x18>
   116e4:	27c01863          	bne	zero,t3,11954 <fail>
   116e8:	01c01663          	bne	zero,t3,116f4 <test_8>
   116ec:	fe20dee3          	bge	ra,sp,116e8 <test_7+0x14>
   116f0:	27c01263          	bne	zero,t3,11954 <fail>

000116f4 <test_8>:
   116f4:	00800e13          	li	t3,8
   116f8:	00000093          	li	ra,0
   116fc:	00100113          	li	sp,1
   11700:	0020d463          	bge	ra,sp,11708 <test_8+0x14>
   11704:	01c01463          	bne	zero,t3,1170c <test_8+0x18>
   11708:	25c01663          	bne	zero,t3,11954 <fail>
   1170c:	fe20dee3          	bge	ra,sp,11708 <test_8+0x14>

00011710 <test_9>:
   11710:	00900e13          	li	t3,9
   11714:	fff00093          	li	ra,-1
   11718:	00100113          	li	sp,1
   1171c:	0020d463          	bge	ra,sp,11724 <test_9+0x14>
   11720:	01c01463          	bne	zero,t3,11728 <test_9+0x18>
   11724:	23c01863          	bne	zero,t3,11954 <fail>
   11728:	fe20dee3          	bge	ra,sp,11724 <test_9+0x14>

0001172c <test_10>:
   1172c:	00a00e13          	li	t3,10
   11730:	ffe00093          	li	ra,-2
   11734:	fff00113          	li	sp,-1
   11738:	0020d463          	bge	ra,sp,11740 <test_10+0x14>
   1173c:	01c01463          	bne	zero,t3,11744 <test_10+0x18>
   11740:	21c01a63          	bne	zero,t3,11954 <fail>
   11744:	fe20dee3          	bge	ra,sp,11740 <test_10+0x14>

00011748 <test_11>:
   11748:	00b00e13          	li	t3,11
   1174c:	ffe00093          	li	ra,-2
   11750:	00100113          	li	sp,1
   11754:	0020d463          	bge	ra,sp,1175c <test_11+0x14>
   11758:	01c01463          	bne	zero,t3,11760 <test_11+0x18>
   1175c:	1fc01c63          	bne	zero,t3,11954 <fail>
   11760:	fe20dee3          	bge	ra,sp,1175c <test_11+0x14>

00011764 <test_12>:
   11764:	00c00e13          	li	t3,12
   11768:	00000213          	li	tp,0
   1176c:	fff00093          	li	ra,-1
   11770:	00000113          	li	sp,0
   11774:	1e20d063          	bge	ra,sp,11954 <fail>
   11778:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1177c:	00200293          	li	t0,2
   11780:	fe5216e3          	bne	tp,t0,1176c <test_12+0x8>

00011784 <test_13>:
   11784:	00d00e13          	li	t3,13
   11788:	00000213          	li	tp,0
   1178c:	fff00093          	li	ra,-1
   11790:	00000113          	li	sp,0
   11794:	00000013          	nop
   11798:	1a20de63          	bge	ra,sp,11954 <fail>
   1179c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   117a0:	00200293          	li	t0,2
   117a4:	fe5214e3          	bne	tp,t0,1178c <test_13+0x8>

000117a8 <test_14>:
   117a8:	00e00e13          	li	t3,14
   117ac:	00000213          	li	tp,0
   117b0:	fff00093          	li	ra,-1
   117b4:	00000113          	li	sp,0
   117b8:	00000013          	nop
   117bc:	00000013          	nop
   117c0:	1820da63          	bge	ra,sp,11954 <fail>
   117c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   117c8:	00200293          	li	t0,2
   117cc:	fe5212e3          	bne	tp,t0,117b0 <test_14+0x8>

000117d0 <test_15>:
   117d0:	00f00e13          	li	t3,15
   117d4:	00000213          	li	tp,0
   117d8:	fff00093          	li	ra,-1
   117dc:	00000013          	nop
   117e0:	00000113          	li	sp,0
   117e4:	1620d863          	bge	ra,sp,11954 <fail>
   117e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   117ec:	00200293          	li	t0,2
   117f0:	fe5214e3          	bne	tp,t0,117d8 <test_15+0x8>

000117f4 <test_16>:
   117f4:	01000e13          	li	t3,16
   117f8:	00000213          	li	tp,0
   117fc:	fff00093          	li	ra,-1
   11800:	00000013          	nop
   11804:	00000113          	li	sp,0
   11808:	00000013          	nop
   1180c:	1420d463          	bge	ra,sp,11954 <fail>
   11810:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11814:	00200293          	li	t0,2
   11818:	fe5212e3          	bne	tp,t0,117fc <test_16+0x8>

0001181c <test_17>:
   1181c:	01100e13          	li	t3,17
   11820:	00000213          	li	tp,0
   11824:	fff00093          	li	ra,-1
   11828:	00000013          	nop
   1182c:	00000013          	nop
   11830:	00000113          	li	sp,0
   11834:	1220d063          	bge	ra,sp,11954 <fail>
   11838:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1183c:	00200293          	li	t0,2
   11840:	fe5212e3          	bne	tp,t0,11824 <test_17+0x8>

00011844 <test_18>:
   11844:	01200e13          	li	t3,18
   11848:	00000213          	li	tp,0
   1184c:	fff00093          	li	ra,-1
   11850:	00000113          	li	sp,0
   11854:	1020d063          	bge	ra,sp,11954 <fail>
   11858:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1185c:	00200293          	li	t0,2
   11860:	fe5216e3          	bne	tp,t0,1184c <test_18+0x8>

00011864 <test_19>:
   11864:	01300e13          	li	t3,19
   11868:	00000213          	li	tp,0
   1186c:	fff00093          	li	ra,-1
   11870:	00000113          	li	sp,0
   11874:	00000013          	nop
   11878:	0c20de63          	bge	ra,sp,11954 <fail>
   1187c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11880:	00200293          	li	t0,2
   11884:	fe5214e3          	bne	tp,t0,1186c <test_19+0x8>

00011888 <test_20>:
   11888:	01400e13          	li	t3,20
   1188c:	00000213          	li	tp,0
   11890:	fff00093          	li	ra,-1
   11894:	00000113          	li	sp,0
   11898:	00000013          	nop
   1189c:	00000013          	nop
   118a0:	0a20da63          	bge	ra,sp,11954 <fail>
   118a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   118a8:	00200293          	li	t0,2
   118ac:	fe5212e3          	bne	tp,t0,11890 <test_20+0x8>

000118b0 <test_21>:
   118b0:	01500e13          	li	t3,21
   118b4:	00000213          	li	tp,0
   118b8:	fff00093          	li	ra,-1
   118bc:	00000013          	nop
   118c0:	00000113          	li	sp,0
   118c4:	0820d863          	bge	ra,sp,11954 <fail>
   118c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   118cc:	00200293          	li	t0,2
   118d0:	fe5214e3          	bne	tp,t0,118b8 <test_21+0x8>

000118d4 <test_22>:
   118d4:	01600e13          	li	t3,22
   118d8:	00000213          	li	tp,0
   118dc:	fff00093          	li	ra,-1
   118e0:	00000013          	nop
   118e4:	00000113          	li	sp,0
   118e8:	00000013          	nop
   118ec:	0620d463          	bge	ra,sp,11954 <fail>
   118f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   118f4:	00200293          	li	t0,2
   118f8:	fe5212e3          	bne	tp,t0,118dc <test_22+0x8>

000118fc <test_23>:
   118fc:	01700e13          	li	t3,23
   11900:	00000213          	li	tp,0
   11904:	fff00093          	li	ra,-1
   11908:	00000013          	nop
   1190c:	00000013          	nop
   11910:	00000113          	li	sp,0
   11914:	0420d063          	bge	ra,sp,11954 <fail>
   11918:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1191c:	00200293          	li	t0,2
   11920:	fe5212e3          	bne	tp,t0,11904 <test_23+0x8>

00011924 <test_24>:
   11924:	00100093          	li	ra,1
   11928:	0000da63          	bgez	ra,1193c <test_24+0x18>
   1192c:	00108093          	addi	ra,ra,1
   11930:	00108093          	addi	ra,ra,1
   11934:	00108093          	addi	ra,ra,1
   11938:	00108093          	addi	ra,ra,1
   1193c:	00108093          	addi	ra,ra,1
   11940:	00108093          	addi	ra,ra,1
   11944:	00300e93          	li	t4,3
   11948:	01800e13          	li	t3,24
   1194c:	01d09463          	bne	ra,t4,11954 <fail>
   11950:	05c01463          	bne	zero,t3,11998 <pass>

00011954 <fail>:
   11954:	0ff00513          	li	a0,255

00011958 <.delay_fail>:
   11958:	fff50513          	addi	a0,a0,-1
   1195c:	fe051ee3          	bnez	a0,11958 <.delay_fail>
   11960:	02000537          	lui	a0,0x2000
   11964:	04500593          	li	a1,69
   11968:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1196c:	05200613          	li	a2,82
   11970:	00c52023          	sw	a2,0(a0)
   11974:	00c52023          	sw	a2,0(a0)
   11978:	04f00693          	li	a3,79
   1197c:	00d52023          	sw	a3,0(a0)
   11980:	00c52023          	sw	a2,0(a0)
   11984:	00d00713          	li	a4,13
   11988:	00e52023          	sw	a4,0(a0)
   1198c:	00a00793          	li	a5,10
   11990:	00f52023          	sw	a5,0(a0)
   11994:	f60fe06f          	j	100f4 <bge_ret>

00011998 <pass>:
   11998:	0ff00513          	li	a0,255

0001199c <.delay_ok>:
   1199c:	fff50513          	addi	a0,a0,-1
   119a0:	fe051ee3          	bnez	a0,1199c <.delay_ok>
   119a4:	02000537          	lui	a0,0x2000
   119a8:	04f00593          	li	a1,79
   119ac:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   119b0:	04b00613          	li	a2,75
   119b4:	00c52023          	sw	a2,0(a0)
   119b8:	00d00693          	li	a3,13
   119bc:	00d52023          	sw	a3,0(a0)
   119c0:	00a00713          	li	a4,10
   119c4:	00e52023          	sw	a4,0(a0)
   119c8:	f2cfe06f          	j	100f4 <bge_ret>

000119cc <srai>:
   119cc:	0ff00513          	li	a0,255

000119d0 <.delay_pr>:
   119d0:	fff50513          	addi	a0,a0,-1
   119d4:	fe051ee3          	bnez	a0,119d0 <.delay_pr>
   119d8:	00012537          	lui	a0,0x12
   119dc:	9f850513          	addi	a0,a0,-1544 # 119f8 <.test_name>
   119e0:	02000637          	lui	a2,0x2000

000119e4 <.prname_next>:
   119e4:	00050583          	lb	a1,0(a0)
   119e8:	00058c63          	beqz	a1,11a00 <.prname_done>
   119ec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   119f0:	00150513          	addi	a0,a0,1
   119f4:	ff1ff06f          	j	119e4 <.prname_next>

000119f8 <.test_name>:
   119f8:	69617273          	csrrci	tp,0x696,2
   119fc:	0000                	unimp
	...

00011a00 <.prname_done>:
   11a00:	02e00593          	li	a1,46
   11a04:	00b62023          	sw	a1,0(a2)
   11a08:	00b62023          	sw	a1,0(a2)

00011a0c <test_2>:
   11a0c:	00000093          	li	ra,0
   11a10:	4000d193          	srai	gp,ra,0x0
   11a14:	00000e93          	li	t4,0
   11a18:	00200e13          	li	t3,2
   11a1c:	2bd19463          	bne	gp,t4,11cc4 <fail>

00011a20 <test_3>:
   11a20:	800000b7          	lui	ra,0x80000
   11a24:	4010d193          	srai	gp,ra,0x1
   11a28:	c0000eb7          	lui	t4,0xc0000
   11a2c:	00300e13          	li	t3,3
   11a30:	29d19a63          	bne	gp,t4,11cc4 <fail>

00011a34 <test_4>:
   11a34:	800000b7          	lui	ra,0x80000
   11a38:	4070d193          	srai	gp,ra,0x7
   11a3c:	ff000eb7          	lui	t4,0xff000
   11a40:	00400e13          	li	t3,4
   11a44:	29d19063          	bne	gp,t4,11cc4 <fail>

00011a48 <test_5>:
   11a48:	800000b7          	lui	ra,0x80000
   11a4c:	40e0d193          	srai	gp,ra,0xe
   11a50:	fffe0eb7          	lui	t4,0xfffe0
   11a54:	00500e13          	li	t3,5
   11a58:	27d19663          	bne	gp,t4,11cc4 <fail>

00011a5c <test_6>:
   11a5c:	800000b7          	lui	ra,0x80000
   11a60:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   11a64:	41f0d193          	srai	gp,ra,0x1f
   11a68:	fff00e93          	li	t4,-1
   11a6c:	00600e13          	li	t3,6
   11a70:	25d19a63          	bne	gp,t4,11cc4 <fail>

00011a74 <test_7>:
   11a74:	800000b7          	lui	ra,0x80000
   11a78:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11a7c:	4000d193          	srai	gp,ra,0x0
   11a80:	80000eb7          	lui	t4,0x80000
   11a84:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   11a88:	00700e13          	li	t3,7
   11a8c:	23d19c63          	bne	gp,t4,11cc4 <fail>

00011a90 <test_8>:
   11a90:	800000b7          	lui	ra,0x80000
   11a94:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11a98:	4010d193          	srai	gp,ra,0x1
   11a9c:	40000eb7          	lui	t4,0x40000
   11aa0:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe59cb>
   11aa4:	00800e13          	li	t3,8
   11aa8:	21d19e63          	bne	gp,t4,11cc4 <fail>

00011aac <test_9>:
   11aac:	800000b7          	lui	ra,0x80000
   11ab0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11ab4:	4070d193          	srai	gp,ra,0x7
   11ab8:	01000eb7          	lui	t4,0x1000
   11abc:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe59cb>
   11ac0:	00900e13          	li	t3,9
   11ac4:	21d19063          	bne	gp,t4,11cc4 <fail>

00011ac8 <test_10>:
   11ac8:	800000b7          	lui	ra,0x80000
   11acc:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11ad0:	40e0d193          	srai	gp,ra,0xe
   11ad4:	00020eb7          	lui	t4,0x20
   11ad8:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   11adc:	00a00e13          	li	t3,10
   11ae0:	1fd19263          	bne	gp,t4,11cc4 <fail>

00011ae4 <test_11>:
   11ae4:	800000b7          	lui	ra,0x80000
   11ae8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11aec:	41f0d193          	srai	gp,ra,0x1f
   11af0:	00000e93          	li	t4,0
   11af4:	00b00e13          	li	t3,11
   11af8:	1dd19663          	bne	gp,t4,11cc4 <fail>

00011afc <test_12>:
   11afc:	818180b7          	lui	ra,0x81818
   11b00:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   11b04:	4000d193          	srai	gp,ra,0x0
   11b08:	81818eb7          	lui	t4,0x81818
   11b0c:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   11b10:	00c00e13          	li	t3,12
   11b14:	1bd19863          	bne	gp,t4,11cc4 <fail>

00011b18 <test_13>:
   11b18:	818180b7          	lui	ra,0x81818
   11b1c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   11b20:	4010d193          	srai	gp,ra,0x1
   11b24:	c0c0ceb7          	lui	t4,0xc0c0c
   11b28:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   11b2c:	00d00e13          	li	t3,13
   11b30:	19d19a63          	bne	gp,t4,11cc4 <fail>

00011b34 <test_14>:
   11b34:	818180b7          	lui	ra,0x81818
   11b38:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   11b3c:	4070d193          	srai	gp,ra,0x7
   11b40:	ff030eb7          	lui	t4,0xff030
   11b44:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   11b48:	00e00e13          	li	t3,14
   11b4c:	17d19c63          	bne	gp,t4,11cc4 <fail>

00011b50 <test_15>:
   11b50:	818180b7          	lui	ra,0x81818
   11b54:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   11b58:	40e0d193          	srai	gp,ra,0xe
   11b5c:	fffe0eb7          	lui	t4,0xfffe0
   11b60:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   11b64:	00f00e13          	li	t3,15
   11b68:	15d19e63          	bne	gp,t4,11cc4 <fail>

00011b6c <test_16>:
   11b6c:	818180b7          	lui	ra,0x81818
   11b70:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   11b74:	41f0d193          	srai	gp,ra,0x1f
   11b78:	fff00e93          	li	t4,-1
   11b7c:	01000e13          	li	t3,16
   11b80:	15d19263          	bne	gp,t4,11cc4 <fail>

00011b84 <test_17>:
   11b84:	800000b7          	lui	ra,0x80000
   11b88:	4070d093          	srai	ra,ra,0x7
   11b8c:	ff000eb7          	lui	t4,0xff000
   11b90:	01100e13          	li	t3,17
   11b94:	13d09863          	bne	ra,t4,11cc4 <fail>

00011b98 <test_18>:
   11b98:	00000213          	li	tp,0
   11b9c:	800000b7          	lui	ra,0x80000
   11ba0:	4070d193          	srai	gp,ra,0x7
   11ba4:	00018313          	mv	t1,gp
   11ba8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11bac:	00200293          	li	t0,2
   11bb0:	fe5216e3          	bne	tp,t0,11b9c <test_18+0x4>
   11bb4:	ff000eb7          	lui	t4,0xff000
   11bb8:	01200e13          	li	t3,18
   11bbc:	11d31463          	bne	t1,t4,11cc4 <fail>

00011bc0 <test_19>:
   11bc0:	00000213          	li	tp,0
   11bc4:	800000b7          	lui	ra,0x80000
   11bc8:	40e0d193          	srai	gp,ra,0xe
   11bcc:	00000013          	nop
   11bd0:	00018313          	mv	t1,gp
   11bd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11bd8:	00200293          	li	t0,2
   11bdc:	fe5214e3          	bne	tp,t0,11bc4 <test_19+0x4>
   11be0:	fffe0eb7          	lui	t4,0xfffe0
   11be4:	01300e13          	li	t3,19
   11be8:	0dd31e63          	bne	t1,t4,11cc4 <fail>

00011bec <test_20>:
   11bec:	00000213          	li	tp,0
   11bf0:	800000b7          	lui	ra,0x80000
   11bf4:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   11bf8:	41f0d193          	srai	gp,ra,0x1f
   11bfc:	00000013          	nop
   11c00:	00000013          	nop
   11c04:	00018313          	mv	t1,gp
   11c08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c0c:	00200293          	li	t0,2
   11c10:	fe5210e3          	bne	tp,t0,11bf0 <test_20+0x4>
   11c14:	fff00e93          	li	t4,-1
   11c18:	01400e13          	li	t3,20
   11c1c:	0bd31463          	bne	t1,t4,11cc4 <fail>

00011c20 <test_21>:
   11c20:	00000213          	li	tp,0
   11c24:	800000b7          	lui	ra,0x80000
   11c28:	4070d193          	srai	gp,ra,0x7
   11c2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c30:	00200293          	li	t0,2
   11c34:	fe5218e3          	bne	tp,t0,11c24 <test_21+0x4>
   11c38:	ff000eb7          	lui	t4,0xff000
   11c3c:	01500e13          	li	t3,21
   11c40:	09d19263          	bne	gp,t4,11cc4 <fail>

00011c44 <test_22>:
   11c44:	00000213          	li	tp,0
   11c48:	800000b7          	lui	ra,0x80000
   11c4c:	00000013          	nop
   11c50:	40e0d193          	srai	gp,ra,0xe
   11c54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c58:	00200293          	li	t0,2
   11c5c:	fe5216e3          	bne	tp,t0,11c48 <test_22+0x4>
   11c60:	fffe0eb7          	lui	t4,0xfffe0
   11c64:	01600e13          	li	t3,22
   11c68:	05d19e63          	bne	gp,t4,11cc4 <fail>

00011c6c <test_23>:
   11c6c:	00000213          	li	tp,0
   11c70:	800000b7          	lui	ra,0x80000
   11c74:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   11c78:	00000013          	nop
   11c7c:	00000013          	nop
   11c80:	41f0d193          	srai	gp,ra,0x1f
   11c84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   11c88:	00200293          	li	t0,2
   11c8c:	fe5212e3          	bne	tp,t0,11c70 <test_23+0x4>
   11c90:	fff00e93          	li	t4,-1
   11c94:	01700e13          	li	t3,23
   11c98:	03d19663          	bne	gp,t4,11cc4 <fail>

00011c9c <test_24>:
   11c9c:	41f05093          	srai	ra,zero,0x1f
   11ca0:	00000e93          	li	t4,0
   11ca4:	01800e13          	li	t3,24
   11ca8:	01d09e63          	bne	ra,t4,11cc4 <fail>

00011cac <test_25>:
   11cac:	02100093          	li	ra,33
   11cb0:	4140d013          	srai	zero,ra,0x14
   11cb4:	00000e93          	li	t4,0
   11cb8:	01900e13          	li	t3,25
   11cbc:	01d01463          	bne	zero,t4,11cc4 <fail>
   11cc0:	05c01463          	bne	zero,t3,11d08 <pass>

00011cc4 <fail>:
   11cc4:	0ff00513          	li	a0,255

00011cc8 <.delay_fail>:
   11cc8:	fff50513          	addi	a0,a0,-1
   11ccc:	fe051ee3          	bnez	a0,11cc8 <.delay_fail>
   11cd0:	02000537          	lui	a0,0x2000
   11cd4:	04500593          	li	a1,69
   11cd8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   11cdc:	05200613          	li	a2,82
   11ce0:	00c52023          	sw	a2,0(a0)
   11ce4:	00c52023          	sw	a2,0(a0)
   11ce8:	04f00693          	li	a3,79
   11cec:	00d52023          	sw	a3,0(a0)
   11cf0:	00c52023          	sw	a2,0(a0)
   11cf4:	00d00713          	li	a4,13
   11cf8:	00e52023          	sw	a4,0(a0)
   11cfc:	00a00793          	li	a5,10
   11d00:	00f52023          	sw	a5,0(a0)
   11d04:	c38fe06f          	j	1013c <srai_ret>

00011d08 <pass>:
   11d08:	0ff00513          	li	a0,255

00011d0c <.delay_ok>:
   11d0c:	fff50513          	addi	a0,a0,-1
   11d10:	fe051ee3          	bnez	a0,11d0c <.delay_ok>
   11d14:	02000537          	lui	a0,0x2000
   11d18:	04f00593          	li	a1,79
   11d1c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   11d20:	04b00613          	li	a2,75
   11d24:	00c52023          	sw	a2,0(a0)
   11d28:	00d00693          	li	a3,13
   11d2c:	00d52023          	sw	a3,0(a0)
   11d30:	00a00713          	li	a4,10
   11d34:	00e52023          	sw	a4,0(a0)
   11d38:	c04fe06f          	j	1013c <srai_ret>

00011d3c <sdram>:
   11d3c:	0ff00513          	li	a0,255

00011d40 <.delay_pr>:
   11d40:	fff50513          	addi	a0,a0,-1
   11d44:	fe051ee3          	bnez	a0,11d40 <.delay_pr>
   11d48:	00012537          	lui	a0,0x12
   11d4c:	d6850513          	addi	a0,a0,-664 # 11d68 <.test_name>
   11d50:	02000637          	lui	a2,0x2000

00011d54 <.prname_next>:
   11d54:	00050583          	lb	a1,0(a0)
   11d58:	00058c63          	beqz	a1,11d70 <.prname_done>
   11d5c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   11d60:	00150513          	addi	a0,a0,1
   11d64:	ff1ff06f          	j	11d54 <.prname_next>

00011d68 <.test_name>:
   11d68:	61726473          	csrrsi	s0,0x617,4
   11d6c:	006d                	c.nop	27
	...

00011d70 <.prname_done>:
   11d70:	02e00593          	li	a1,46
   11d74:	00b62023          	sw	a1,0(a2)
   11d78:	00b62023          	sw	a1,0(a2)
   11d7c:	00002737          	lui	a4,0x2
   11d80:	71070713          	addi	a4,a4,1808 # 2710 <_start-0xd8f0>
   11d84:	00000813          	li	a6,0
   11d88:	00100393          	li	t2,1
   11d8c:	80100537          	lui	a0,0x80100

00011d90 <wait>:
   11d90:	40770733          	sub	a4,a4,t2
   11d94:	fe075ee3          	bgez	a4,11d90 <wait>
   11d98:	02000737          	lui	a4,0x2000
   11d9c:	00018e37          	lui	t3,0x18
   11da0:	6a0e0e13          	addi	t3,t3,1696 # 186a0 <test_17+0x10>
   11da4:	00100393          	li	t2,1
   11da8:	00400413          	li	s0,4

00011dac <back>:
   11dac:	001002b7          	lui	t0,0x100
   11db0:	80100537          	lui	a0,0x80100

00011db4 <sw_8020>:
   11db4:	00552023          	sw	t0,0(a0) # 80100000 <_edata+0xfff90>
   11db8:	801007b7          	lui	a5,0x80100
   11dbc:	00100337          	lui	t1,0x100

00011dc0 <lw_8020>:
   11dc0:	0007a283          	lw	t0,0(a5) # 80100000 <_edata+0xfff90>
   11dc4:	405308b3          	sub	a7,t1,t0
   11dc8:	00088463          	beqz	a7,11dd0 <ok>
   11dcc:	00180813          	addi	a6,a6,1

00011dd0 <ok>:
   11dd0:	fddff0ef          	jal	ra,11dac <back>
   11dd4:	0a80006f          	j	11e7c <pass>

00011dd8 <goto_fail>:
   11dd8:	00050693          	mv	a3,a0
   11ddc:	018000ef          	jal	ra,11df4 <print_uint32>
   11de0:	00028693          	mv	a3,t0
   11de4:	010000ef          	jal	ra,11df4 <print_uint32>
   11de8:	00030693          	mv	a3,t1
   11dec:	008000ef          	jal	ra,11df4 <print_uint32>
   11df0:	0480006f          	j	11e38 <fail>

00011df4 <print_uint32>:
   11df4:	f00005b7          	lui	a1,0xf0000
   11df8:	03a00613          	li	a2,58
   11dfc:	02000737          	lui	a4,0x2000
   11e00:	00800e13          	li	t3,8

00011e04 <loop>:
   11e04:	00d5f533          	and	a0,a1,a3
   11e08:	01c55513          	srli	a0,a0,0x1c
   11e0c:	03050513          	addi	a0,a0,48
   11e10:	00c54463          	blt	a0,a2,11e18 <digit>

00011e14 <char>:
   11e14:	02750513          	addi	a0,a0,39

00011e18 <digit>:
   11e18:	00a72023          	sw	a0,0(a4) # 2000000 <_etext+0x1fe59cc>
   11e1c:	00469693          	slli	a3,a3,0x4
   11e20:	407e0e33          	sub	t3,t3,t2
   11e24:	fe0e10e3          	bnez	t3,11e04 <loop>
   11e28:	02000513          	li	a0,32
   11e2c:	00a72023          	sw	a0,0(a4)
   11e30:	00008067          	ret
   11e34:	05c01463          	bne	zero,t3,11e7c <pass>

00011e38 <fail>:
   11e38:	0ff00513          	li	a0,255

00011e3c <.delay_fail>:
   11e3c:	fff50513          	addi	a0,a0,-1
   11e40:	fe051ee3          	bnez	a0,11e3c <.delay_fail>
   11e44:	02000537          	lui	a0,0x2000
   11e48:	04500593          	li	a1,69
   11e4c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   11e50:	05200613          	li	a2,82
   11e54:	00c52023          	sw	a2,0(a0)
   11e58:	00c52023          	sw	a2,0(a0)
   11e5c:	04f00693          	li	a3,79
   11e60:	00d52023          	sw	a3,0(a0)
   11e64:	00c52023          	sw	a2,0(a0)
   11e68:	00d00713          	li	a4,13
   11e6c:	00e52023          	sw	a4,0(a0)
   11e70:	00a00793          	li	a5,10
   11e74:	00f52023          	sw	a5,0(a0)
   11e78:	a58fe06f          	j	100d0 <sdram_ret>

00011e7c <pass>:
   11e7c:	0ff00513          	li	a0,255

00011e80 <.delay_ok>:
   11e80:	fff50513          	addi	a0,a0,-1
   11e84:	fe051ee3          	bnez	a0,11e80 <.delay_ok>
   11e88:	02000537          	lui	a0,0x2000
   11e8c:	04f00593          	li	a1,79
   11e90:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   11e94:	04b00613          	li	a2,75
   11e98:	00c52023          	sw	a2,0(a0)
   11e9c:	00d00693          	li	a3,13
   11ea0:	00d52023          	sw	a3,0(a0)
   11ea4:	00a00713          	li	a4,10
   11ea8:	00e52023          	sw	a4,0(a0)
   11eac:	a24fe06f          	j	100d0 <sdram_ret>

00011eb0 <sub>:
   11eb0:	0ff00513          	li	a0,255

00011eb4 <.delay_pr>:
   11eb4:	fff50513          	addi	a0,a0,-1
   11eb8:	fe051ee3          	bnez	a0,11eb4 <.delay_pr>
   11ebc:	00012537          	lui	a0,0x12
   11ec0:	edc50513          	addi	a0,a0,-292 # 11edc <.test_name>
   11ec4:	02000637          	lui	a2,0x2000

00011ec8 <.prname_next>:
   11ec8:	00050583          	lb	a1,0(a0)
   11ecc:	00058a63          	beqz	a1,11ee0 <.prname_done>
   11ed0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   11ed4:	00150513          	addi	a0,a0,1
   11ed8:	ff1ff06f          	j	11ec8 <.prname_next>

00011edc <.test_name>:
   11edc:	00627573          	csrrci	a0,0x6,4

00011ee0 <.prname_done>:
   11ee0:	02e00593          	li	a1,46
   11ee4:	00b62023          	sw	a1,0(a2)
   11ee8:	00b62023          	sw	a1,0(a2)

00011eec <test_2>:
   11eec:	00000093          	li	ra,0
   11ef0:	00000113          	li	sp,0
   11ef4:	402081b3          	sub	gp,ra,sp
   11ef8:	00000e93          	li	t4,0
   11efc:	00200e13          	li	t3,2
   11f00:	4bd19663          	bne	gp,t4,123ac <fail>

00011f04 <test_3>:
   11f04:	00100093          	li	ra,1
   11f08:	00100113          	li	sp,1
   11f0c:	402081b3          	sub	gp,ra,sp
   11f10:	00000e93          	li	t4,0
   11f14:	00300e13          	li	t3,3
   11f18:	49d19a63          	bne	gp,t4,123ac <fail>

00011f1c <test_4>:
   11f1c:	00300093          	li	ra,3
   11f20:	00700113          	li	sp,7
   11f24:	402081b3          	sub	gp,ra,sp
   11f28:	ffc00e93          	li	t4,-4
   11f2c:	00400e13          	li	t3,4
   11f30:	47d19e63          	bne	gp,t4,123ac <fail>

00011f34 <test_5>:
   11f34:	00000093          	li	ra,0
   11f38:	ffff8137          	lui	sp,0xffff8
   11f3c:	402081b3          	sub	gp,ra,sp
   11f40:	00008eb7          	lui	t4,0x8
   11f44:	00500e13          	li	t3,5
   11f48:	47d19263          	bne	gp,t4,123ac <fail>

00011f4c <test_6>:
   11f4c:	800000b7          	lui	ra,0x80000
   11f50:	00000113          	li	sp,0
   11f54:	402081b3          	sub	gp,ra,sp
   11f58:	80000eb7          	lui	t4,0x80000
   11f5c:	00600e13          	li	t3,6
   11f60:	45d19663          	bne	gp,t4,123ac <fail>

00011f64 <test_7>:
   11f64:	800000b7          	lui	ra,0x80000
   11f68:	ffff8137          	lui	sp,0xffff8
   11f6c:	402081b3          	sub	gp,ra,sp
   11f70:	80008eb7          	lui	t4,0x80008
   11f74:	00700e13          	li	t3,7
   11f78:	43d19a63          	bne	gp,t4,123ac <fail>

00011f7c <test_8>:
   11f7c:	00000093          	li	ra,0
   11f80:	00008137          	lui	sp,0x8
   11f84:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11f88:	402081b3          	sub	gp,ra,sp
   11f8c:	ffff8eb7          	lui	t4,0xffff8
   11f90:	001e8e93          	addi	t4,t4,1 # ffff8001 <_edata+0x7fff7f91>
   11f94:	00800e13          	li	t3,8
   11f98:	41d19a63          	bne	gp,t4,123ac <fail>

00011f9c <test_9>:
   11f9c:	800000b7          	lui	ra,0x80000
   11fa0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11fa4:	00000113          	li	sp,0
   11fa8:	402081b3          	sub	gp,ra,sp
   11fac:	80000eb7          	lui	t4,0x80000
   11fb0:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   11fb4:	00900e13          	li	t3,9
   11fb8:	3fd19a63          	bne	gp,t4,123ac <fail>

00011fbc <test_10>:
   11fbc:	800000b7          	lui	ra,0x80000
   11fc0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11fc4:	00008137          	lui	sp,0x8
   11fc8:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11fcc:	402081b3          	sub	gp,ra,sp
   11fd0:	7fff8eb7          	lui	t4,0x7fff8
   11fd4:	00a00e13          	li	t3,10
   11fd8:	3dd19a63          	bne	gp,t4,123ac <fail>

00011fdc <test_11>:
   11fdc:	800000b7          	lui	ra,0x80000
   11fe0:	00008137          	lui	sp,0x8
   11fe4:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11fe8:	402081b3          	sub	gp,ra,sp
   11fec:	7fff8eb7          	lui	t4,0x7fff8
   11ff0:	001e8e93          	addi	t4,t4,1 # 7fff8001 <_etext+0x7ffdd9cd>
   11ff4:	00b00e13          	li	t3,11
   11ff8:	3bd19a63          	bne	gp,t4,123ac <fail>

00011ffc <test_12>:
   11ffc:	800000b7          	lui	ra,0x80000
   12000:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   12004:	ffff8137          	lui	sp,0xffff8
   12008:	402081b3          	sub	gp,ra,sp
   1200c:	80008eb7          	lui	t4,0x80008
   12010:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   12014:	00c00e13          	li	t3,12
   12018:	39d19a63          	bne	gp,t4,123ac <fail>

0001201c <test_13>:
   1201c:	00000093          	li	ra,0
   12020:	fff00113          	li	sp,-1
   12024:	402081b3          	sub	gp,ra,sp
   12028:	00100e93          	li	t4,1
   1202c:	00d00e13          	li	t3,13
   12030:	37d19e63          	bne	gp,t4,123ac <fail>

00012034 <test_14>:
   12034:	fff00093          	li	ra,-1
   12038:	00100113          	li	sp,1
   1203c:	402081b3          	sub	gp,ra,sp
   12040:	ffe00e93          	li	t4,-2
   12044:	00e00e13          	li	t3,14
   12048:	37d19263          	bne	gp,t4,123ac <fail>

0001204c <test_15>:
   1204c:	fff00093          	li	ra,-1
   12050:	fff00113          	li	sp,-1
   12054:	402081b3          	sub	gp,ra,sp
   12058:	00000e93          	li	t4,0
   1205c:	00f00e13          	li	t3,15
   12060:	35d19663          	bne	gp,t4,123ac <fail>

00012064 <test_16>:
   12064:	00d00093          	li	ra,13
   12068:	00b00113          	li	sp,11
   1206c:	402080b3          	sub	ra,ra,sp
   12070:	00200e93          	li	t4,2
   12074:	01000e13          	li	t3,16
   12078:	33d09a63          	bne	ra,t4,123ac <fail>

0001207c <test_17>:
   1207c:	00e00093          	li	ra,14
   12080:	00b00113          	li	sp,11
   12084:	40208133          	sub	sp,ra,sp
   12088:	00300e93          	li	t4,3
   1208c:	01100e13          	li	t3,17
   12090:	31d11e63          	bne	sp,t4,123ac <fail>

00012094 <test_18>:
   12094:	00d00093          	li	ra,13
   12098:	401080b3          	sub	ra,ra,ra
   1209c:	00000e93          	li	t4,0
   120a0:	01200e13          	li	t3,18
   120a4:	31d09463          	bne	ra,t4,123ac <fail>

000120a8 <test_19>:
   120a8:	00000213          	li	tp,0
   120ac:	00d00093          	li	ra,13
   120b0:	00b00113          	li	sp,11
   120b4:	402081b3          	sub	gp,ra,sp
   120b8:	00018313          	mv	t1,gp
   120bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   120c0:	00200293          	li	t0,2
   120c4:	fe5214e3          	bne	tp,t0,120ac <test_19+0x4>
   120c8:	00200e93          	li	t4,2
   120cc:	01300e13          	li	t3,19
   120d0:	2dd31e63          	bne	t1,t4,123ac <fail>

000120d4 <test_20>:
   120d4:	00000213          	li	tp,0
   120d8:	00e00093          	li	ra,14
   120dc:	00b00113          	li	sp,11
   120e0:	402081b3          	sub	gp,ra,sp
   120e4:	00000013          	nop
   120e8:	00018313          	mv	t1,gp
   120ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   120f0:	00200293          	li	t0,2
   120f4:	fe5212e3          	bne	tp,t0,120d8 <test_20+0x4>
   120f8:	00300e93          	li	t4,3
   120fc:	01400e13          	li	t3,20
   12100:	2bd31663          	bne	t1,t4,123ac <fail>

00012104 <test_21>:
   12104:	00000213          	li	tp,0
   12108:	00f00093          	li	ra,15
   1210c:	00b00113          	li	sp,11
   12110:	402081b3          	sub	gp,ra,sp
   12114:	00000013          	nop
   12118:	00000013          	nop
   1211c:	00018313          	mv	t1,gp
   12120:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12124:	00200293          	li	t0,2
   12128:	fe5210e3          	bne	tp,t0,12108 <test_21+0x4>
   1212c:	00400e93          	li	t4,4
   12130:	01500e13          	li	t3,21
   12134:	27d31c63          	bne	t1,t4,123ac <fail>

00012138 <test_22>:
   12138:	00000213          	li	tp,0
   1213c:	00d00093          	li	ra,13
   12140:	00b00113          	li	sp,11
   12144:	402081b3          	sub	gp,ra,sp
   12148:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1214c:	00200293          	li	t0,2
   12150:	fe5216e3          	bne	tp,t0,1213c <test_22+0x4>
   12154:	00200e93          	li	t4,2
   12158:	01600e13          	li	t3,22
   1215c:	25d19863          	bne	gp,t4,123ac <fail>

00012160 <test_23>:
   12160:	00000213          	li	tp,0
   12164:	00e00093          	li	ra,14
   12168:	00b00113          	li	sp,11
   1216c:	00000013          	nop
   12170:	402081b3          	sub	gp,ra,sp
   12174:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12178:	00200293          	li	t0,2
   1217c:	fe5214e3          	bne	tp,t0,12164 <test_23+0x4>
   12180:	00300e93          	li	t4,3
   12184:	01700e13          	li	t3,23
   12188:	23d19263          	bne	gp,t4,123ac <fail>

0001218c <test_24>:
   1218c:	00000213          	li	tp,0
   12190:	00f00093          	li	ra,15
   12194:	00b00113          	li	sp,11
   12198:	00000013          	nop
   1219c:	00000013          	nop
   121a0:	402081b3          	sub	gp,ra,sp
   121a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121a8:	00200293          	li	t0,2
   121ac:	fe5212e3          	bne	tp,t0,12190 <test_24+0x4>
   121b0:	00400e93          	li	t4,4
   121b4:	01800e13          	li	t3,24
   121b8:	1fd19a63          	bne	gp,t4,123ac <fail>

000121bc <test_25>:
   121bc:	00000213          	li	tp,0
   121c0:	00d00093          	li	ra,13
   121c4:	00000013          	nop
   121c8:	00b00113          	li	sp,11
   121cc:	402081b3          	sub	gp,ra,sp
   121d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121d4:	00200293          	li	t0,2
   121d8:	fe5214e3          	bne	tp,t0,121c0 <test_25+0x4>
   121dc:	00200e93          	li	t4,2
   121e0:	01900e13          	li	t3,25
   121e4:	1dd19463          	bne	gp,t4,123ac <fail>

000121e8 <test_26>:
   121e8:	00000213          	li	tp,0
   121ec:	00e00093          	li	ra,14
   121f0:	00000013          	nop
   121f4:	00b00113          	li	sp,11
   121f8:	00000013          	nop
   121fc:	402081b3          	sub	gp,ra,sp
   12200:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12204:	00200293          	li	t0,2
   12208:	fe5212e3          	bne	tp,t0,121ec <test_26+0x4>
   1220c:	00300e93          	li	t4,3
   12210:	01a00e13          	li	t3,26
   12214:	19d19c63          	bne	gp,t4,123ac <fail>

00012218 <test_27>:
   12218:	00000213          	li	tp,0
   1221c:	00f00093          	li	ra,15
   12220:	00000013          	nop
   12224:	00000013          	nop
   12228:	00b00113          	li	sp,11
   1222c:	402081b3          	sub	gp,ra,sp
   12230:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12234:	00200293          	li	t0,2
   12238:	fe5212e3          	bne	tp,t0,1221c <test_27+0x4>
   1223c:	00400e93          	li	t4,4
   12240:	01b00e13          	li	t3,27
   12244:	17d19463          	bne	gp,t4,123ac <fail>

00012248 <test_28>:
   12248:	00000213          	li	tp,0
   1224c:	00b00113          	li	sp,11
   12250:	00d00093          	li	ra,13
   12254:	402081b3          	sub	gp,ra,sp
   12258:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1225c:	00200293          	li	t0,2
   12260:	fe5216e3          	bne	tp,t0,1224c <test_28+0x4>
   12264:	00200e93          	li	t4,2
   12268:	01c00e13          	li	t3,28
   1226c:	15d19063          	bne	gp,t4,123ac <fail>

00012270 <test_29>:
   12270:	00000213          	li	tp,0
   12274:	00b00113          	li	sp,11
   12278:	00e00093          	li	ra,14
   1227c:	00000013          	nop
   12280:	402081b3          	sub	gp,ra,sp
   12284:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12288:	00200293          	li	t0,2
   1228c:	fe5214e3          	bne	tp,t0,12274 <test_29+0x4>
   12290:	00300e93          	li	t4,3
   12294:	01d00e13          	li	t3,29
   12298:	11d19a63          	bne	gp,t4,123ac <fail>

0001229c <test_30>:
   1229c:	00000213          	li	tp,0
   122a0:	00b00113          	li	sp,11
   122a4:	00f00093          	li	ra,15
   122a8:	00000013          	nop
   122ac:	00000013          	nop
   122b0:	402081b3          	sub	gp,ra,sp
   122b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   122b8:	00200293          	li	t0,2
   122bc:	fe5212e3          	bne	tp,t0,122a0 <test_30+0x4>
   122c0:	00400e93          	li	t4,4
   122c4:	01e00e13          	li	t3,30
   122c8:	0fd19263          	bne	gp,t4,123ac <fail>

000122cc <test_31>:
   122cc:	00000213          	li	tp,0
   122d0:	00b00113          	li	sp,11
   122d4:	00000013          	nop
   122d8:	00d00093          	li	ra,13
   122dc:	402081b3          	sub	gp,ra,sp
   122e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   122e4:	00200293          	li	t0,2
   122e8:	fe5214e3          	bne	tp,t0,122d0 <test_31+0x4>
   122ec:	00200e93          	li	t4,2
   122f0:	01f00e13          	li	t3,31
   122f4:	0bd19c63          	bne	gp,t4,123ac <fail>

000122f8 <test_32>:
   122f8:	00000213          	li	tp,0
   122fc:	00b00113          	li	sp,11
   12300:	00000013          	nop
   12304:	00e00093          	li	ra,14
   12308:	00000013          	nop
   1230c:	402081b3          	sub	gp,ra,sp
   12310:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12314:	00200293          	li	t0,2
   12318:	fe5212e3          	bne	tp,t0,122fc <test_32+0x4>
   1231c:	00300e93          	li	t4,3
   12320:	02000e13          	li	t3,32
   12324:	09d19463          	bne	gp,t4,123ac <fail>

00012328 <test_33>:
   12328:	00000213          	li	tp,0
   1232c:	00b00113          	li	sp,11
   12330:	00000013          	nop
   12334:	00000013          	nop
   12338:	00f00093          	li	ra,15
   1233c:	402081b3          	sub	gp,ra,sp
   12340:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12344:	00200293          	li	t0,2
   12348:	fe5212e3          	bne	tp,t0,1232c <test_33+0x4>
   1234c:	00400e93          	li	t4,4
   12350:	02100e13          	li	t3,33
   12354:	05d19c63          	bne	gp,t4,123ac <fail>

00012358 <test_34>:
   12358:	ff100093          	li	ra,-15
   1235c:	40100133          	neg	sp,ra
   12360:	00f00e93          	li	t4,15
   12364:	02200e13          	li	t3,34
   12368:	05d11263          	bne	sp,t4,123ac <fail>

0001236c <test_35>:
   1236c:	02000093          	li	ra,32
   12370:	40008133          	sub	sp,ra,zero
   12374:	02000e93          	li	t4,32
   12378:	02300e13          	li	t3,35
   1237c:	03d11863          	bne	sp,t4,123ac <fail>

00012380 <test_36>:
   12380:	400000b3          	neg	ra,zero
   12384:	00000e93          	li	t4,0
   12388:	02400e13          	li	t3,36
   1238c:	03d09063          	bne	ra,t4,123ac <fail>

00012390 <test_37>:
   12390:	01000093          	li	ra,16
   12394:	01e00113          	li	sp,30
   12398:	40208033          	sub	zero,ra,sp
   1239c:	00000e93          	li	t4,0
   123a0:	02500e13          	li	t3,37
   123a4:	01d01463          	bne	zero,t4,123ac <fail>
   123a8:	05c01463          	bne	zero,t3,123f0 <pass>

000123ac <fail>:
   123ac:	0ff00513          	li	a0,255

000123b0 <.delay_fail>:
   123b0:	fff50513          	addi	a0,a0,-1
   123b4:	fe051ee3          	bnez	a0,123b0 <.delay_fail>
   123b8:	02000537          	lui	a0,0x2000
   123bc:	04500593          	li	a1,69
   123c0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   123c4:	05200613          	li	a2,82
   123c8:	00c52023          	sw	a2,0(a0)
   123cc:	00c52023          	sw	a2,0(a0)
   123d0:	04f00693          	li	a3,79
   123d4:	00d52023          	sw	a3,0(a0)
   123d8:	00c52023          	sw	a2,0(a0)
   123dc:	00d00713          	li	a4,13
   123e0:	00e52023          	sw	a4,0(a0)
   123e4:	00a00793          	li	a5,10
   123e8:	00f52023          	sw	a5,0(a0)
   123ec:	d59fd06f          	j	10144 <sub_ret>

000123f0 <pass>:
   123f0:	0ff00513          	li	a0,255

000123f4 <.delay_ok>:
   123f4:	fff50513          	addi	a0,a0,-1
   123f8:	fe051ee3          	bnez	a0,123f4 <.delay_ok>
   123fc:	02000537          	lui	a0,0x2000
   12400:	04f00593          	li	a1,79
   12404:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   12408:	04b00613          	li	a2,75
   1240c:	00c52023          	sw	a2,0(a0)
   12410:	00d00693          	li	a3,13
   12414:	00d52023          	sw	a3,0(a0)
   12418:	00a00713          	li	a4,10
   1241c:	00e52023          	sw	a4,0(a0)
   12420:	d25fd06f          	j	10144 <sub_ret>

00012424 <mul>:
   12424:	0ff00513          	li	a0,255

00012428 <.delay_pr>:
   12428:	fff50513          	addi	a0,a0,-1
   1242c:	fe051ee3          	bnez	a0,12428 <.delay_pr>
   12430:	00012537          	lui	a0,0x12
   12434:	45050513          	addi	a0,a0,1104 # 12450 <.test_name>
   12438:	02000637          	lui	a2,0x2000

0001243c <.prname_next>:
   1243c:	00050583          	lb	a1,0(a0)
   12440:	00058a63          	beqz	a1,12454 <.prname_done>
   12444:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   12448:	00150513          	addi	a0,a0,1
   1244c:	ff1ff06f          	j	1243c <.prname_next>

00012450 <.test_name>:
   12450:	756d                	lui	a0,0xffffb
   12452:	006c                	addi	a1,sp,12

00012454 <.prname_done>:
   12454:	02e00593          	li	a1,46
   12458:	00b62023          	sw	a1,0(a2)
   1245c:	00b62023          	sw	a1,0(a2)

00012460 <test_32>:
   12460:	000080b7          	lui	ra,0x8
   12464:	e0008093          	addi	ra,ra,-512 # 7e00 <_start-0x8200>
   12468:	b6db7137          	lui	sp,0xb6db7
   1246c:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   12470:	022081b3          	mul	gp,ra,sp
   12474:	00001eb7          	lui	t4,0x1
   12478:	200e8e93          	addi	t4,t4,512 # 1200 <_start-0xee00>
   1247c:	02000e13          	li	t3,32
   12480:	4bd19463          	bne	gp,t4,12928 <fail>

00012484 <test_33>:
   12484:	000080b7          	lui	ra,0x8
   12488:	fc008093          	addi	ra,ra,-64 # 7fc0 <_start-0x8040>
   1248c:	b6db7137          	lui	sp,0xb6db7
   12490:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   12494:	022081b3          	mul	gp,ra,sp
   12498:	00001eb7          	lui	t4,0x1
   1249c:	240e8e93          	addi	t4,t4,576 # 1240 <_start-0xedc0>
   124a0:	02100e13          	li	t3,33
   124a4:	49d19263          	bne	gp,t4,12928 <fail>

000124a8 <test_2>:
   124a8:	00000093          	li	ra,0
   124ac:	00000113          	li	sp,0
   124b0:	022081b3          	mul	gp,ra,sp
   124b4:	00000e93          	li	t4,0
   124b8:	00200e13          	li	t3,2
   124bc:	47d19663          	bne	gp,t4,12928 <fail>

000124c0 <test_3>:
   124c0:	00100093          	li	ra,1
   124c4:	00100113          	li	sp,1
   124c8:	022081b3          	mul	gp,ra,sp
   124cc:	00100e93          	li	t4,1
   124d0:	00300e13          	li	t3,3
   124d4:	45d19a63          	bne	gp,t4,12928 <fail>

000124d8 <test_4>:
   124d8:	00300093          	li	ra,3
   124dc:	00700113          	li	sp,7
   124e0:	022081b3          	mul	gp,ra,sp
   124e4:	01500e93          	li	t4,21
   124e8:	00400e13          	li	t3,4
   124ec:	43d19e63          	bne	gp,t4,12928 <fail>

000124f0 <test_5>:
   124f0:	00000093          	li	ra,0
   124f4:	ffff8137          	lui	sp,0xffff8
   124f8:	022081b3          	mul	gp,ra,sp
   124fc:	00000e93          	li	t4,0
   12500:	00500e13          	li	t3,5
   12504:	43d19263          	bne	gp,t4,12928 <fail>

00012508 <test_6>:
   12508:	800000b7          	lui	ra,0x80000
   1250c:	00000113          	li	sp,0
   12510:	022081b3          	mul	gp,ra,sp
   12514:	00000e93          	li	t4,0
   12518:	00600e13          	li	t3,6
   1251c:	41d19663          	bne	gp,t4,12928 <fail>

00012520 <test_7>:
   12520:	800000b7          	lui	ra,0x80000
   12524:	ffff8137          	lui	sp,0xffff8
   12528:	022081b3          	mul	gp,ra,sp
   1252c:	00000e93          	li	t4,0
   12530:	00700e13          	li	t3,7
   12534:	3fd19a63          	bne	gp,t4,12928 <fail>

00012538 <test_30>:
   12538:	aaaab0b7          	lui	ra,0xaaaab
   1253c:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   12540:	00030137          	lui	sp,0x30
   12544:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15849>
   12548:	022081b3          	mul	gp,ra,sp
   1254c:	00010eb7          	lui	t4,0x10
   12550:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12554:	01e00e13          	li	t3,30
   12558:	3dd19863          	bne	gp,t4,12928 <fail>

0001255c <test_31>:
   1255c:	000300b7          	lui	ra,0x30
   12560:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15849>
   12564:	aaaab137          	lui	sp,0xaaaab
   12568:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1256c:	022081b3          	mul	gp,ra,sp
   12570:	00010eb7          	lui	t4,0x10
   12574:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12578:	01f00e13          	li	t3,31
   1257c:	3bd19663          	bne	gp,t4,12928 <fail>

00012580 <test_34>:
   12580:	ff0000b7          	lui	ra,0xff000
   12584:	ff000137          	lui	sp,0xff000
   12588:	022081b3          	mul	gp,ra,sp
   1258c:	00000e93          	li	t4,0
   12590:	02200e13          	li	t3,34
   12594:	39d19a63          	bne	gp,t4,12928 <fail>

00012598 <test_35>:
   12598:	fff00093          	li	ra,-1
   1259c:	fff00113          	li	sp,-1
   125a0:	022081b3          	mul	gp,ra,sp
   125a4:	00100e93          	li	t4,1
   125a8:	02300e13          	li	t3,35
   125ac:	37d19e63          	bne	gp,t4,12928 <fail>

000125b0 <test_36>:
   125b0:	fff00093          	li	ra,-1
   125b4:	00100113          	li	sp,1
   125b8:	022081b3          	mul	gp,ra,sp
   125bc:	fff00e93          	li	t4,-1
   125c0:	02400e13          	li	t3,36
   125c4:	37d19263          	bne	gp,t4,12928 <fail>

000125c8 <test_37>:
   125c8:	00100093          	li	ra,1
   125cc:	fff00113          	li	sp,-1
   125d0:	022081b3          	mul	gp,ra,sp
   125d4:	fff00e93          	li	t4,-1
   125d8:	02500e13          	li	t3,37
   125dc:	35d19663          	bne	gp,t4,12928 <fail>

000125e0 <test_8>:
   125e0:	00d00093          	li	ra,13
   125e4:	00b00113          	li	sp,11
   125e8:	022080b3          	mul	ra,ra,sp
   125ec:	08f00e93          	li	t4,143
   125f0:	00800e13          	li	t3,8
   125f4:	33d09a63          	bne	ra,t4,12928 <fail>

000125f8 <test_9>:
   125f8:	00e00093          	li	ra,14
   125fc:	00b00113          	li	sp,11
   12600:	02208133          	mul	sp,ra,sp
   12604:	09a00e93          	li	t4,154
   12608:	00900e13          	li	t3,9
   1260c:	31d11e63          	bne	sp,t4,12928 <fail>

00012610 <test_10>:
   12610:	00d00093          	li	ra,13
   12614:	021080b3          	mul	ra,ra,ra
   12618:	0a900e93          	li	t4,169
   1261c:	00a00e13          	li	t3,10
   12620:	31d09463          	bne	ra,t4,12928 <fail>

00012624 <test_11>:
   12624:	00000213          	li	tp,0
   12628:	00d00093          	li	ra,13
   1262c:	00b00113          	li	sp,11
   12630:	022081b3          	mul	gp,ra,sp
   12634:	00018313          	mv	t1,gp
   12638:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1263c:	00200293          	li	t0,2
   12640:	fe5214e3          	bne	tp,t0,12628 <test_11+0x4>
   12644:	08f00e93          	li	t4,143
   12648:	00b00e13          	li	t3,11
   1264c:	2dd31e63          	bne	t1,t4,12928 <fail>

00012650 <test_12>:
   12650:	00000213          	li	tp,0
   12654:	00e00093          	li	ra,14
   12658:	00b00113          	li	sp,11
   1265c:	022081b3          	mul	gp,ra,sp
   12660:	00000013          	nop
   12664:	00018313          	mv	t1,gp
   12668:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1266c:	00200293          	li	t0,2
   12670:	fe5212e3          	bne	tp,t0,12654 <test_12+0x4>
   12674:	09a00e93          	li	t4,154
   12678:	00c00e13          	li	t3,12
   1267c:	2bd31663          	bne	t1,t4,12928 <fail>

00012680 <test_13>:
   12680:	00000213          	li	tp,0
   12684:	00f00093          	li	ra,15
   12688:	00b00113          	li	sp,11
   1268c:	022081b3          	mul	gp,ra,sp
   12690:	00000013          	nop
   12694:	00000013          	nop
   12698:	00018313          	mv	t1,gp
   1269c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126a0:	00200293          	li	t0,2
   126a4:	fe5210e3          	bne	tp,t0,12684 <test_13+0x4>
   126a8:	0a500e93          	li	t4,165
   126ac:	00d00e13          	li	t3,13
   126b0:	27d31c63          	bne	t1,t4,12928 <fail>

000126b4 <test_14>:
   126b4:	00000213          	li	tp,0
   126b8:	00d00093          	li	ra,13
   126bc:	00b00113          	li	sp,11
   126c0:	022081b3          	mul	gp,ra,sp
   126c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126c8:	00200293          	li	t0,2
   126cc:	fe5216e3          	bne	tp,t0,126b8 <test_14+0x4>
   126d0:	08f00e93          	li	t4,143
   126d4:	00e00e13          	li	t3,14
   126d8:	25d19863          	bne	gp,t4,12928 <fail>

000126dc <test_15>:
   126dc:	00000213          	li	tp,0
   126e0:	00e00093          	li	ra,14
   126e4:	00b00113          	li	sp,11
   126e8:	00000013          	nop
   126ec:	022081b3          	mul	gp,ra,sp
   126f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126f4:	00200293          	li	t0,2
   126f8:	fe5214e3          	bne	tp,t0,126e0 <test_15+0x4>
   126fc:	09a00e93          	li	t4,154
   12700:	00f00e13          	li	t3,15
   12704:	23d19263          	bne	gp,t4,12928 <fail>

00012708 <test_16>:
   12708:	00000213          	li	tp,0
   1270c:	00f00093          	li	ra,15
   12710:	00b00113          	li	sp,11
   12714:	00000013          	nop
   12718:	00000013          	nop
   1271c:	022081b3          	mul	gp,ra,sp
   12720:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12724:	00200293          	li	t0,2
   12728:	fe5212e3          	bne	tp,t0,1270c <test_16+0x4>
   1272c:	0a500e93          	li	t4,165
   12730:	01000e13          	li	t3,16
   12734:	1fd19a63          	bne	gp,t4,12928 <fail>

00012738 <test_17>:
   12738:	00000213          	li	tp,0
   1273c:	00d00093          	li	ra,13
   12740:	00000013          	nop
   12744:	00b00113          	li	sp,11
   12748:	022081b3          	mul	gp,ra,sp
   1274c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12750:	00200293          	li	t0,2
   12754:	fe5214e3          	bne	tp,t0,1273c <test_17+0x4>
   12758:	08f00e93          	li	t4,143
   1275c:	01100e13          	li	t3,17
   12760:	1dd19463          	bne	gp,t4,12928 <fail>

00012764 <test_18>:
   12764:	00000213          	li	tp,0
   12768:	00e00093          	li	ra,14
   1276c:	00000013          	nop
   12770:	00b00113          	li	sp,11
   12774:	00000013          	nop
   12778:	022081b3          	mul	gp,ra,sp
   1277c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12780:	00200293          	li	t0,2
   12784:	fe5212e3          	bne	tp,t0,12768 <test_18+0x4>
   12788:	09a00e93          	li	t4,154
   1278c:	01200e13          	li	t3,18
   12790:	19d19c63          	bne	gp,t4,12928 <fail>

00012794 <test_19>:
   12794:	00000213          	li	tp,0
   12798:	00f00093          	li	ra,15
   1279c:	00000013          	nop
   127a0:	00000013          	nop
   127a4:	00b00113          	li	sp,11
   127a8:	022081b3          	mul	gp,ra,sp
   127ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   127b0:	00200293          	li	t0,2
   127b4:	fe5212e3          	bne	tp,t0,12798 <test_19+0x4>
   127b8:	0a500e93          	li	t4,165
   127bc:	01300e13          	li	t3,19
   127c0:	17d19463          	bne	gp,t4,12928 <fail>

000127c4 <test_20>:
   127c4:	00000213          	li	tp,0
   127c8:	00b00113          	li	sp,11
   127cc:	00d00093          	li	ra,13
   127d0:	022081b3          	mul	gp,ra,sp
   127d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   127d8:	00200293          	li	t0,2
   127dc:	fe5216e3          	bne	tp,t0,127c8 <test_20+0x4>
   127e0:	08f00e93          	li	t4,143
   127e4:	01400e13          	li	t3,20
   127e8:	15d19063          	bne	gp,t4,12928 <fail>

000127ec <test_21>:
   127ec:	00000213          	li	tp,0
   127f0:	00b00113          	li	sp,11
   127f4:	00e00093          	li	ra,14
   127f8:	00000013          	nop
   127fc:	022081b3          	mul	gp,ra,sp
   12800:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12804:	00200293          	li	t0,2
   12808:	fe5214e3          	bne	tp,t0,127f0 <test_21+0x4>
   1280c:	09a00e93          	li	t4,154
   12810:	01500e13          	li	t3,21
   12814:	11d19a63          	bne	gp,t4,12928 <fail>

00012818 <test_22>:
   12818:	00000213          	li	tp,0
   1281c:	00b00113          	li	sp,11
   12820:	00f00093          	li	ra,15
   12824:	00000013          	nop
   12828:	00000013          	nop
   1282c:	022081b3          	mul	gp,ra,sp
   12830:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12834:	00200293          	li	t0,2
   12838:	fe5212e3          	bne	tp,t0,1281c <test_22+0x4>
   1283c:	0a500e93          	li	t4,165
   12840:	01600e13          	li	t3,22
   12844:	0fd19263          	bne	gp,t4,12928 <fail>

00012848 <test_23>:
   12848:	00000213          	li	tp,0
   1284c:	00b00113          	li	sp,11
   12850:	00000013          	nop
   12854:	00d00093          	li	ra,13
   12858:	022081b3          	mul	gp,ra,sp
   1285c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12860:	00200293          	li	t0,2
   12864:	fe5214e3          	bne	tp,t0,1284c <test_23+0x4>
   12868:	08f00e93          	li	t4,143
   1286c:	01700e13          	li	t3,23
   12870:	0bd19c63          	bne	gp,t4,12928 <fail>

00012874 <test_24>:
   12874:	00000213          	li	tp,0
   12878:	00b00113          	li	sp,11
   1287c:	00000013          	nop
   12880:	00e00093          	li	ra,14
   12884:	00000013          	nop
   12888:	022081b3          	mul	gp,ra,sp
   1288c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12890:	00200293          	li	t0,2
   12894:	fe5212e3          	bne	tp,t0,12878 <test_24+0x4>
   12898:	09a00e93          	li	t4,154
   1289c:	01800e13          	li	t3,24
   128a0:	09d19463          	bne	gp,t4,12928 <fail>

000128a4 <test_25>:
   128a4:	00000213          	li	tp,0
   128a8:	00b00113          	li	sp,11
   128ac:	00000013          	nop
   128b0:	00000013          	nop
   128b4:	00f00093          	li	ra,15
   128b8:	022081b3          	mul	gp,ra,sp
   128bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   128c0:	00200293          	li	t0,2
   128c4:	fe5212e3          	bne	tp,t0,128a8 <test_25+0x4>
   128c8:	0a500e93          	li	t4,165
   128cc:	01900e13          	li	t3,25
   128d0:	05d19c63          	bne	gp,t4,12928 <fail>

000128d4 <test_26>:
   128d4:	01f00093          	li	ra,31
   128d8:	02100133          	mul	sp,zero,ra
   128dc:	00000e93          	li	t4,0
   128e0:	01a00e13          	li	t3,26
   128e4:	05d11263          	bne	sp,t4,12928 <fail>

000128e8 <test_27>:
   128e8:	02000093          	li	ra,32
   128ec:	02008133          	mul	sp,ra,zero
   128f0:	00000e93          	li	t4,0
   128f4:	01b00e13          	li	t3,27
   128f8:	03d11863          	bne	sp,t4,12928 <fail>

000128fc <test_28>:
   128fc:	020000b3          	mul	ra,zero,zero
   12900:	00000e93          	li	t4,0
   12904:	01c00e13          	li	t3,28
   12908:	03d09063          	bne	ra,t4,12928 <fail>

0001290c <test_29>:
   1290c:	02100093          	li	ra,33
   12910:	02200113          	li	sp,34
   12914:	02208033          	mul	zero,ra,sp
   12918:	00000e93          	li	t4,0
   1291c:	01d00e13          	li	t3,29
   12920:	01d01463          	bne	zero,t4,12928 <fail>
   12924:	05c01463          	bne	zero,t3,1296c <pass>

00012928 <fail>:
   12928:	0ff00513          	li	a0,255

0001292c <.delay_fail>:
   1292c:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   12930:	fe051ee3          	bnez	a0,1292c <.delay_fail>
   12934:	02000537          	lui	a0,0x2000
   12938:	04500593          	li	a1,69
   1293c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   12940:	05200613          	li	a2,82
   12944:	00c52023          	sw	a2,0(a0)
   12948:	00c52023          	sw	a2,0(a0)
   1294c:	04f00693          	li	a3,79
   12950:	00d52023          	sw	a3,0(a0)
   12954:	00c52023          	sw	a2,0(a0)
   12958:	00d00713          	li	a4,13
   1295c:	00e52023          	sw	a4,0(a0)
   12960:	00a00793          	li	a5,10
   12964:	00f52023          	sw	a5,0(a0)
   12968:	809fd06f          	j	10170 <mul_ret>

0001296c <pass>:
   1296c:	0ff00513          	li	a0,255

00012970 <.delay_ok>:
   12970:	fff50513          	addi	a0,a0,-1
   12974:	fe051ee3          	bnez	a0,12970 <.delay_ok>
   12978:	02000537          	lui	a0,0x2000
   1297c:	04f00593          	li	a1,79
   12980:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   12984:	04b00613          	li	a2,75
   12988:	00c52023          	sw	a2,0(a0)
   1298c:	00d00693          	li	a3,13
   12990:	00d52023          	sw	a3,0(a0)
   12994:	00a00713          	li	a4,10
   12998:	00e52023          	sw	a4,0(a0)
   1299c:	fd4fd06f          	j	10170 <mul_ret>

000129a0 <sw>:
   129a0:	0ff00513          	li	a0,255

000129a4 <.delay_pr>:
   129a4:	fff50513          	addi	a0,a0,-1
   129a8:	fe051ee3          	bnez	a0,129a4 <.delay_pr>
   129ac:	00013537          	lui	a0,0x13
   129b0:	9cc50513          	addi	a0,a0,-1588 # 129cc <.test_name>
   129b4:	02000637          	lui	a2,0x2000

000129b8 <.prname_next>:
   129b8:	00050583          	lb	a1,0(a0)
   129bc:	00058a63          	beqz	a1,129d0 <.prname_done>
   129c0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   129c4:	00150513          	addi	a0,a0,1
   129c8:	ff1ff06f          	j	129b8 <.prname_next>

000129cc <.test_name>:
   129cc:	00007773          	csrrci	a4,ustatus,0

000129d0 <.prname_done>:
   129d0:	02e00593          	li	a1,46
   129d4:	00b62023          	sw	a1,0(a2)
   129d8:	00b62023          	sw	a1,0(a2)

000129dc <test_2>:
   129dc:	7ffed097          	auipc	ra,0x7ffed
   129e0:	62c08093          	addi	ra,ra,1580 # 80000008 <tdat>
   129e4:	00aa0137          	lui	sp,0xaa0
   129e8:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85a76>
   129ec:	0020a023          	sw	sp,0(ra)
   129f0:	0000a183          	lw	gp,0(ra)
   129f4:	00aa0eb7          	lui	t4,0xaa0
   129f8:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85a76>
   129fc:	00200e13          	li	t3,2
   12a00:	47d19063          	bne	gp,t4,12e60 <fail>

00012a04 <test_3>:
   12a04:	7ffed097          	auipc	ra,0x7ffed
   12a08:	60408093          	addi	ra,ra,1540 # 80000008 <tdat>
   12a0c:	aa00b137          	lui	sp,0xaa00b
   12a10:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   12a14:	0020a223          	sw	sp,4(ra)
   12a18:	0040a183          	lw	gp,4(ra)
   12a1c:	aa00beb7          	lui	t4,0xaa00b
   12a20:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   12a24:	00300e13          	li	t3,3
   12a28:	43d19c63          	bne	gp,t4,12e60 <fail>

00012a2c <test_4>:
   12a2c:	7ffed097          	auipc	ra,0x7ffed
   12a30:	5dc08093          	addi	ra,ra,1500 # 80000008 <tdat>
   12a34:	0aa01137          	lui	sp,0xaa01
   12a38:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e646c>
   12a3c:	0020a423          	sw	sp,8(ra)
   12a40:	0080a183          	lw	gp,8(ra)
   12a44:	0aa01eb7          	lui	t4,0xaa01
   12a48:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e646c>
   12a4c:	00400e13          	li	t3,4
   12a50:	41d19863          	bne	gp,t4,12e60 <fail>

00012a54 <test_5>:
   12a54:	7ffed097          	auipc	ra,0x7ffed
   12a58:	5b408093          	addi	ra,ra,1460 # 80000008 <tdat>
   12a5c:	a00aa137          	lui	sp,0xa00aa
   12a60:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   12a64:	0020a623          	sw	sp,12(ra)
   12a68:	00c0a183          	lw	gp,12(ra)
   12a6c:	a00aaeb7          	lui	t4,0xa00aa
   12a70:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   12a74:	00500e13          	li	t3,5
   12a78:	3fd19463          	bne	gp,t4,12e60 <fail>

00012a7c <test_6>:
   12a7c:	7ffed097          	auipc	ra,0x7ffed
   12a80:	5a808093          	addi	ra,ra,1448 # 80000024 <tdat8>
   12a84:	00aa0137          	lui	sp,0xaa0
   12a88:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85a76>
   12a8c:	fe20aa23          	sw	sp,-12(ra)
   12a90:	ff40a183          	lw	gp,-12(ra)
   12a94:	00aa0eb7          	lui	t4,0xaa0
   12a98:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85a76>
   12a9c:	00600e13          	li	t3,6
   12aa0:	3dd19063          	bne	gp,t4,12e60 <fail>

00012aa4 <test_7>:
   12aa4:	7ffed097          	auipc	ra,0x7ffed
   12aa8:	58008093          	addi	ra,ra,1408 # 80000024 <tdat8>
   12aac:	aa00b137          	lui	sp,0xaa00b
   12ab0:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   12ab4:	fe20ac23          	sw	sp,-8(ra)
   12ab8:	ff80a183          	lw	gp,-8(ra)
   12abc:	aa00beb7          	lui	t4,0xaa00b
   12ac0:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   12ac4:	00700e13          	li	t3,7
   12ac8:	39d19c63          	bne	gp,t4,12e60 <fail>

00012acc <test_8>:
   12acc:	7ffed097          	auipc	ra,0x7ffed
   12ad0:	55808093          	addi	ra,ra,1368 # 80000024 <tdat8>
   12ad4:	0aa01137          	lui	sp,0xaa01
   12ad8:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e646c>
   12adc:	fe20ae23          	sw	sp,-4(ra)
   12ae0:	ffc0a183          	lw	gp,-4(ra)
   12ae4:	0aa01eb7          	lui	t4,0xaa01
   12ae8:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e646c>
   12aec:	00800e13          	li	t3,8
   12af0:	37d19863          	bne	gp,t4,12e60 <fail>

00012af4 <test_9>:
   12af4:	7ffed097          	auipc	ra,0x7ffed
   12af8:	53008093          	addi	ra,ra,1328 # 80000024 <tdat8>
   12afc:	a00aa137          	lui	sp,0xa00aa
   12b00:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   12b04:	0020a023          	sw	sp,0(ra)
   12b08:	0000a183          	lw	gp,0(ra)
   12b0c:	a00aaeb7          	lui	t4,0xa00aa
   12b10:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   12b14:	00900e13          	li	t3,9
   12b18:	35d19463          	bne	gp,t4,12e60 <fail>

00012b1c <test_10>:
   12b1c:	7ffed097          	auipc	ra,0x7ffed
   12b20:	50c08093          	addi	ra,ra,1292 # 80000028 <tdat9>
   12b24:	12345137          	lui	sp,0x12345
   12b28:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b044>
   12b2c:	fe008213          	addi	tp,ra,-32
   12b30:	02222023          	sw	sp,32(tp) # 20 <_start-0xffe0>
   12b34:	0000a183          	lw	gp,0(ra)
   12b38:	12345eb7          	lui	t4,0x12345
   12b3c:	678e8e93          	addi	t4,t4,1656 # 12345678 <_etext+0x1232b044>
   12b40:	00a00e13          	li	t3,10
   12b44:	31d19e63          	bne	gp,t4,12e60 <fail>

00012b48 <test_11>:
   12b48:	7ffed097          	auipc	ra,0x7ffed
   12b4c:	4e008093          	addi	ra,ra,1248 # 80000028 <tdat9>
   12b50:	58213137          	lui	sp,0x58213
   12b54:	09810113          	addi	sp,sp,152 # 58213098 <_etext+0x581f8a64>
   12b58:	ffd08093          	addi	ra,ra,-3
   12b5c:	0020a3a3          	sw	sp,7(ra)
   12b60:	7ffed217          	auipc	tp,0x7ffed
   12b64:	4cc20213          	addi	tp,tp,1228 # 8000002c <tdat10>
   12b68:	00022183          	lw	gp,0(tp) # 0 <_start-0x10000>
   12b6c:	58213eb7          	lui	t4,0x58213
   12b70:	098e8e93          	addi	t4,t4,152 # 58213098 <_etext+0x581f8a64>
   12b74:	00b00e13          	li	t3,11
   12b78:	2fd19463          	bne	gp,t4,12e60 <fail>

00012b7c <test_12>:
   12b7c:	00c00e13          	li	t3,12
   12b80:	00000213          	li	tp,0
   12b84:	aabbd0b7          	lui	ra,0xaabbd
   12b88:	cdd08093          	addi	ra,ra,-803 # aabbccdd <_edata+0x2abbcc6d>
   12b8c:	7ffed117          	auipc	sp,0x7ffed
   12b90:	47c10113          	addi	sp,sp,1148 # 80000008 <tdat>
   12b94:	00112023          	sw	ra,0(sp)
   12b98:	00012183          	lw	gp,0(sp)
   12b9c:	aabbdeb7          	lui	t4,0xaabbd
   12ba0:	cdde8e93          	addi	t4,t4,-803 # aabbccdd <_edata+0x2abbcc6d>
   12ba4:	2bd19e63          	bne	gp,t4,12e60 <fail>
   12ba8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12bac:	00200293          	li	t0,2
   12bb0:	fc521ae3          	bne	tp,t0,12b84 <test_12+0x8>

00012bb4 <test_13>:
   12bb4:	00d00e13          	li	t3,13
   12bb8:	00000213          	li	tp,0
   12bbc:	daabc0b7          	lui	ra,0xdaabc
   12bc0:	ccd08093          	addi	ra,ra,-819 # daabbccd <_edata+0x5aabbc5d>
   12bc4:	7ffed117          	auipc	sp,0x7ffed
   12bc8:	44410113          	addi	sp,sp,1092 # 80000008 <tdat>
   12bcc:	00000013          	nop
   12bd0:	00112223          	sw	ra,4(sp)
   12bd4:	00412183          	lw	gp,4(sp)
   12bd8:	daabceb7          	lui	t4,0xdaabc
   12bdc:	ccde8e93          	addi	t4,t4,-819 # daabbccd <_edata+0x5aabbc5d>
   12be0:	29d19063          	bne	gp,t4,12e60 <fail>
   12be4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12be8:	00200293          	li	t0,2
   12bec:	fc5218e3          	bne	tp,t0,12bbc <test_13+0x8>

00012bf0 <test_14>:
   12bf0:	00e00e13          	li	t3,14
   12bf4:	00000213          	li	tp,0
   12bf8:	ddaac0b7          	lui	ra,0xddaac
   12bfc:	bcc08093          	addi	ra,ra,-1076 # ddaabbcc <_edata+0x5daabb5c>
   12c00:	7ffed117          	auipc	sp,0x7ffed
   12c04:	40810113          	addi	sp,sp,1032 # 80000008 <tdat>
   12c08:	00000013          	nop
   12c0c:	00000013          	nop
   12c10:	00112423          	sw	ra,8(sp)
   12c14:	00812183          	lw	gp,8(sp)
   12c18:	ddaaceb7          	lui	t4,0xddaac
   12c1c:	bcce8e93          	addi	t4,t4,-1076 # ddaabbcc <_edata+0x5daabb5c>
   12c20:	25d19063          	bne	gp,t4,12e60 <fail>
   12c24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12c28:	00200293          	li	t0,2
   12c2c:	fc5216e3          	bne	tp,t0,12bf8 <test_14+0x8>

00012c30 <test_15>:
   12c30:	00f00e13          	li	t3,15
   12c34:	00000213          	li	tp,0
   12c38:	cddab0b7          	lui	ra,0xcddab
   12c3c:	bbc08093          	addi	ra,ra,-1092 # cddaabbc <_edata+0x4ddaab4c>
   12c40:	00000013          	nop
   12c44:	7ffed117          	auipc	sp,0x7ffed
   12c48:	3c410113          	addi	sp,sp,964 # 80000008 <tdat>
   12c4c:	00112623          	sw	ra,12(sp)
   12c50:	00c12183          	lw	gp,12(sp)
   12c54:	cddabeb7          	lui	t4,0xcddab
   12c58:	bbce8e93          	addi	t4,t4,-1092 # cddaabbc <_edata+0x4ddaab4c>
   12c5c:	21d19263          	bne	gp,t4,12e60 <fail>
   12c60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12c64:	00200293          	li	t0,2
   12c68:	fc5218e3          	bne	tp,t0,12c38 <test_15+0x8>

00012c6c <test_16>:
   12c6c:	01000e13          	li	t3,16
   12c70:	00000213          	li	tp,0
   12c74:	ccddb0b7          	lui	ra,0xccddb
   12c78:	abb08093          	addi	ra,ra,-1349 # ccddaabb <_edata+0x4cddaa4b>
   12c7c:	00000013          	nop
   12c80:	7ffed117          	auipc	sp,0x7ffed
   12c84:	38810113          	addi	sp,sp,904 # 80000008 <tdat>
   12c88:	00000013          	nop
   12c8c:	00112823          	sw	ra,16(sp)
   12c90:	01012183          	lw	gp,16(sp)
   12c94:	ccddbeb7          	lui	t4,0xccddb
   12c98:	abbe8e93          	addi	t4,t4,-1349 # ccddaabb <_edata+0x4cddaa4b>
   12c9c:	1dd19263          	bne	gp,t4,12e60 <fail>
   12ca0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12ca4:	00200293          	li	t0,2
   12ca8:	fc5216e3          	bne	tp,t0,12c74 <test_16+0x8>

00012cac <test_17>:
   12cac:	01100e13          	li	t3,17
   12cb0:	00000213          	li	tp,0
   12cb4:	bccde0b7          	lui	ra,0xbccde
   12cb8:	aab08093          	addi	ra,ra,-1365 # bccddaab <_edata+0x3ccdda3b>
   12cbc:	00000013          	nop
   12cc0:	00000013          	nop
   12cc4:	7ffed117          	auipc	sp,0x7ffed
   12cc8:	34410113          	addi	sp,sp,836 # 80000008 <tdat>
   12ccc:	00112a23          	sw	ra,20(sp)
   12cd0:	01412183          	lw	gp,20(sp)
   12cd4:	bccdeeb7          	lui	t4,0xbccde
   12cd8:	aabe8e93          	addi	t4,t4,-1365 # bccddaab <_edata+0x3ccdda3b>
   12cdc:	19d19263          	bne	gp,t4,12e60 <fail>
   12ce0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12ce4:	00200293          	li	t0,2
   12ce8:	fc5216e3          	bne	tp,t0,12cb4 <test_17+0x8>

00012cec <test_18>:
   12cec:	01200e13          	li	t3,18
   12cf0:	00000213          	li	tp,0
   12cf4:	7ffed117          	auipc	sp,0x7ffed
   12cf8:	31410113          	addi	sp,sp,788 # 80000008 <tdat>
   12cfc:	001120b7          	lui	ra,0x112
   12d00:	23308093          	addi	ra,ra,563 # 112233 <_etext+0xf7bff>
   12d04:	00112023          	sw	ra,0(sp)
   12d08:	00012183          	lw	gp,0(sp)
   12d0c:	00112eb7          	lui	t4,0x112
   12d10:	233e8e93          	addi	t4,t4,563 # 112233 <_etext+0xf7bff>
   12d14:	15d19663          	bne	gp,t4,12e60 <fail>
   12d18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d1c:	00200293          	li	t0,2
   12d20:	fc521ae3          	bne	tp,t0,12cf4 <test_18+0x8>

00012d24 <test_19>:
   12d24:	01300e13          	li	t3,19
   12d28:	00000213          	li	tp,0
   12d2c:	7ffed117          	auipc	sp,0x7ffed
   12d30:	2dc10113          	addi	sp,sp,732 # 80000008 <tdat>
   12d34:	300110b7          	lui	ra,0x30011
   12d38:	22308093          	addi	ra,ra,547 # 30011223 <_etext+0x2fff6bef>
   12d3c:	00000013          	nop
   12d40:	00112223          	sw	ra,4(sp)
   12d44:	00412183          	lw	gp,4(sp)
   12d48:	30011eb7          	lui	t4,0x30011
   12d4c:	223e8e93          	addi	t4,t4,547 # 30011223 <_etext+0x2fff6bef>
   12d50:	11d19863          	bne	gp,t4,12e60 <fail>
   12d54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d58:	00200293          	li	t0,2
   12d5c:	fc5218e3          	bne	tp,t0,12d2c <test_19+0x8>

00012d60 <test_20>:
   12d60:	01400e13          	li	t3,20
   12d64:	00000213          	li	tp,0
   12d68:	7ffed117          	auipc	sp,0x7ffed
   12d6c:	2a010113          	addi	sp,sp,672 # 80000008 <tdat>
   12d70:	330010b7          	lui	ra,0x33001
   12d74:	12208093          	addi	ra,ra,290 # 33001122 <_etext+0x32fe6aee>
   12d78:	00000013          	nop
   12d7c:	00000013          	nop
   12d80:	00112423          	sw	ra,8(sp)
   12d84:	00812183          	lw	gp,8(sp)
   12d88:	33001eb7          	lui	t4,0x33001
   12d8c:	122e8e93          	addi	t4,t4,290 # 33001122 <_etext+0x32fe6aee>
   12d90:	0dd19863          	bne	gp,t4,12e60 <fail>
   12d94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d98:	00200293          	li	t0,2
   12d9c:	fc5216e3          	bne	tp,t0,12d68 <test_20+0x8>

00012da0 <test_21>:
   12da0:	01500e13          	li	t3,21
   12da4:	00000213          	li	tp,0
   12da8:	7ffed117          	auipc	sp,0x7ffed
   12dac:	26010113          	addi	sp,sp,608 # 80000008 <tdat>
   12db0:	00000013          	nop
   12db4:	233000b7          	lui	ra,0x23300
   12db8:	11208093          	addi	ra,ra,274 # 23300112 <_etext+0x232e5ade>
   12dbc:	00112623          	sw	ra,12(sp)
   12dc0:	00c12183          	lw	gp,12(sp)
   12dc4:	23300eb7          	lui	t4,0x23300
   12dc8:	112e8e93          	addi	t4,t4,274 # 23300112 <_etext+0x232e5ade>
   12dcc:	09d19a63          	bne	gp,t4,12e60 <fail>
   12dd0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12dd4:	00200293          	li	t0,2
   12dd8:	fc5218e3          	bne	tp,t0,12da8 <test_21+0x8>

00012ddc <test_22>:
   12ddc:	01600e13          	li	t3,22
   12de0:	00000213          	li	tp,0
   12de4:	7ffed117          	auipc	sp,0x7ffed
   12de8:	22410113          	addi	sp,sp,548 # 80000008 <tdat>
   12dec:	00000013          	nop
   12df0:	223300b7          	lui	ra,0x22330
   12df4:	01108093          	addi	ra,ra,17 # 22330011 <_etext+0x223159dd>
   12df8:	00000013          	nop
   12dfc:	00112823          	sw	ra,16(sp)
   12e00:	01012183          	lw	gp,16(sp)
   12e04:	22330eb7          	lui	t4,0x22330
   12e08:	011e8e93          	addi	t4,t4,17 # 22330011 <_etext+0x223159dd>
   12e0c:	05d19a63          	bne	gp,t4,12e60 <fail>
   12e10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e14:	00200293          	li	t0,2
   12e18:	fc5216e3          	bne	tp,t0,12de4 <test_22+0x8>

00012e1c <test_23>:
   12e1c:	01700e13          	li	t3,23
   12e20:	00000213          	li	tp,0
   12e24:	7ffed117          	auipc	sp,0x7ffed
   12e28:	1e410113          	addi	sp,sp,484 # 80000008 <tdat>
   12e2c:	00000013          	nop
   12e30:	00000013          	nop
   12e34:	122330b7          	lui	ra,0x12233
   12e38:	00108093          	addi	ra,ra,1 # 12233001 <_etext+0x122189cd>
   12e3c:	00112a23          	sw	ra,20(sp)
   12e40:	01412183          	lw	gp,20(sp)
   12e44:	12233eb7          	lui	t4,0x12233
   12e48:	001e8e93          	addi	t4,t4,1 # 12233001 <_etext+0x122189cd>
   12e4c:	01d19a63          	bne	gp,t4,12e60 <fail>
   12e50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e54:	00200293          	li	t0,2
   12e58:	fc5216e3          	bne	tp,t0,12e24 <test_23+0x8>
   12e5c:	05c01463          	bne	zero,t3,12ea4 <pass>

00012e60 <fail>:
   12e60:	0ff00513          	li	a0,255

00012e64 <.delay_fail>:
   12e64:	fff50513          	addi	a0,a0,-1
   12e68:	fe051ee3          	bnez	a0,12e64 <.delay_fail>
   12e6c:	02000537          	lui	a0,0x2000
   12e70:	04500593          	li	a1,69
   12e74:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   12e78:	05200613          	li	a2,82
   12e7c:	00c52023          	sw	a2,0(a0)
   12e80:	00c52023          	sw	a2,0(a0)
   12e84:	04f00693          	li	a3,79
   12e88:	00d52023          	sw	a3,0(a0)
   12e8c:	00c52023          	sw	a2,0(a0)
   12e90:	00d00713          	li	a4,13
   12e94:	00e52023          	sw	a4,0(a0)
   12e98:	00a00793          	li	a5,10
   12e9c:	00f52023          	sw	a5,0(a0)
   12ea0:	a7cfd06f          	j	1011c <sw_ret>

00012ea4 <pass>:
   12ea4:	0ff00513          	li	a0,255

00012ea8 <.delay_ok>:
   12ea8:	fff50513          	addi	a0,a0,-1
   12eac:	fe051ee3          	bnez	a0,12ea8 <.delay_ok>
   12eb0:	02000537          	lui	a0,0x2000
   12eb4:	04f00593          	li	a1,79
   12eb8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   12ebc:	04b00613          	li	a2,75
   12ec0:	00c52023          	sw	a2,0(a0)
   12ec4:	00d00693          	li	a3,13
   12ec8:	00d52023          	sw	a3,0(a0)
   12ecc:	00a00713          	li	a4,10
   12ed0:	00e52023          	sw	a4,0(a0)
   12ed4:	a48fd06f          	j	1011c <sw_ret>

00012ed8 <beq>:
   12ed8:	0ff00513          	li	a0,255

00012edc <.delay_pr>:
   12edc:	fff50513          	addi	a0,a0,-1
   12ee0:	fe051ee3          	bnez	a0,12edc <.delay_pr>
   12ee4:	00013537          	lui	a0,0x13
   12ee8:	f0450513          	addi	a0,a0,-252 # 12f04 <.test_name>
   12eec:	02000637          	lui	a2,0x2000

00012ef0 <.prname_next>:
   12ef0:	00050583          	lb	a1,0(a0)
   12ef4:	00058a63          	beqz	a1,12f08 <.prname_done>
   12ef8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   12efc:	00150513          	addi	a0,a0,1
   12f00:	ff1ff06f          	j	12ef0 <.prname_next>

00012f04 <.test_name>:
   12f04:	6562                	flw	fa0,24(sp)
   12f06:	0071                	c.nop	28

00012f08 <.prname_done>:
   12f08:	02e00593          	li	a1,46
   12f0c:	00b62023          	sw	a1,0(a2)
   12f10:	00b62023          	sw	a1,0(a2)

00012f14 <test_2>:
   12f14:	00200e13          	li	t3,2
   12f18:	00000093          	li	ra,0
   12f1c:	00000113          	li	sp,0
   12f20:	00208663          	beq	ra,sp,12f2c <test_2+0x18>
   12f24:	2bc01863          	bne	zero,t3,131d4 <fail>
   12f28:	01c01663          	bne	zero,t3,12f34 <test_3>
   12f2c:	fe208ee3          	beq	ra,sp,12f28 <test_2+0x14>
   12f30:	2bc01263          	bne	zero,t3,131d4 <fail>

00012f34 <test_3>:
   12f34:	00300e13          	li	t3,3
   12f38:	00100093          	li	ra,1
   12f3c:	00100113          	li	sp,1
   12f40:	00208663          	beq	ra,sp,12f4c <test_3+0x18>
   12f44:	29c01863          	bne	zero,t3,131d4 <fail>
   12f48:	01c01663          	bne	zero,t3,12f54 <test_4>
   12f4c:	fe208ee3          	beq	ra,sp,12f48 <test_3+0x14>
   12f50:	29c01263          	bne	zero,t3,131d4 <fail>

00012f54 <test_4>:
   12f54:	00400e13          	li	t3,4
   12f58:	fff00093          	li	ra,-1
   12f5c:	fff00113          	li	sp,-1
   12f60:	00208663          	beq	ra,sp,12f6c <test_4+0x18>
   12f64:	27c01863          	bne	zero,t3,131d4 <fail>
   12f68:	01c01663          	bne	zero,t3,12f74 <test_5>
   12f6c:	fe208ee3          	beq	ra,sp,12f68 <test_4+0x14>
   12f70:	27c01263          	bne	zero,t3,131d4 <fail>

00012f74 <test_5>:
   12f74:	00500e13          	li	t3,5
   12f78:	00000093          	li	ra,0
   12f7c:	00100113          	li	sp,1
   12f80:	00208463          	beq	ra,sp,12f88 <test_5+0x14>
   12f84:	01c01463          	bne	zero,t3,12f8c <test_5+0x18>
   12f88:	25c01663          	bne	zero,t3,131d4 <fail>
   12f8c:	fe208ee3          	beq	ra,sp,12f88 <test_5+0x14>

00012f90 <test_6>:
   12f90:	00600e13          	li	t3,6
   12f94:	00100093          	li	ra,1
   12f98:	00000113          	li	sp,0
   12f9c:	00208463          	beq	ra,sp,12fa4 <test_6+0x14>
   12fa0:	01c01463          	bne	zero,t3,12fa8 <test_6+0x18>
   12fa4:	23c01863          	bne	zero,t3,131d4 <fail>
   12fa8:	fe208ee3          	beq	ra,sp,12fa4 <test_6+0x14>

00012fac <test_7>:
   12fac:	00700e13          	li	t3,7
   12fb0:	fff00093          	li	ra,-1
   12fb4:	00100113          	li	sp,1
   12fb8:	00208463          	beq	ra,sp,12fc0 <test_7+0x14>
   12fbc:	01c01463          	bne	zero,t3,12fc4 <test_7+0x18>
   12fc0:	21c01a63          	bne	zero,t3,131d4 <fail>
   12fc4:	fe208ee3          	beq	ra,sp,12fc0 <test_7+0x14>

00012fc8 <test_8>:
   12fc8:	00800e13          	li	t3,8
   12fcc:	00100093          	li	ra,1
   12fd0:	fff00113          	li	sp,-1
   12fd4:	00208463          	beq	ra,sp,12fdc <test_8+0x14>
   12fd8:	01c01463          	bne	zero,t3,12fe0 <test_8+0x18>
   12fdc:	1fc01c63          	bne	zero,t3,131d4 <fail>
   12fe0:	fe208ee3          	beq	ra,sp,12fdc <test_8+0x14>

00012fe4 <test_9>:
   12fe4:	00900e13          	li	t3,9
   12fe8:	00000213          	li	tp,0
   12fec:	00000093          	li	ra,0
   12ff0:	fff00113          	li	sp,-1
   12ff4:	1e208063          	beq	ra,sp,131d4 <fail>
   12ff8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12ffc:	00200293          	li	t0,2
   13000:	fe5216e3          	bne	tp,t0,12fec <test_9+0x8>

00013004 <test_10>:
   13004:	00a00e13          	li	t3,10
   13008:	00000213          	li	tp,0
   1300c:	00000093          	li	ra,0
   13010:	fff00113          	li	sp,-1
   13014:	00000013          	nop
   13018:	1a208e63          	beq	ra,sp,131d4 <fail>
   1301c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13020:	00200293          	li	t0,2
   13024:	fe5214e3          	bne	tp,t0,1300c <test_10+0x8>

00013028 <test_11>:
   13028:	00b00e13          	li	t3,11
   1302c:	00000213          	li	tp,0
   13030:	00000093          	li	ra,0
   13034:	fff00113          	li	sp,-1
   13038:	00000013          	nop
   1303c:	00000013          	nop
   13040:	18208a63          	beq	ra,sp,131d4 <fail>
   13044:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13048:	00200293          	li	t0,2
   1304c:	fe5212e3          	bne	tp,t0,13030 <test_11+0x8>

00013050 <test_12>:
   13050:	00c00e13          	li	t3,12
   13054:	00000213          	li	tp,0
   13058:	00000093          	li	ra,0
   1305c:	00000013          	nop
   13060:	fff00113          	li	sp,-1
   13064:	16208863          	beq	ra,sp,131d4 <fail>
   13068:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1306c:	00200293          	li	t0,2
   13070:	fe5214e3          	bne	tp,t0,13058 <test_12+0x8>

00013074 <test_13>:
   13074:	00d00e13          	li	t3,13
   13078:	00000213          	li	tp,0
   1307c:	00000093          	li	ra,0
   13080:	00000013          	nop
   13084:	fff00113          	li	sp,-1
   13088:	00000013          	nop
   1308c:	14208463          	beq	ra,sp,131d4 <fail>
   13090:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13094:	00200293          	li	t0,2
   13098:	fe5212e3          	bne	tp,t0,1307c <test_13+0x8>

0001309c <test_14>:
   1309c:	00e00e13          	li	t3,14
   130a0:	00000213          	li	tp,0
   130a4:	00000093          	li	ra,0
   130a8:	00000013          	nop
   130ac:	00000013          	nop
   130b0:	fff00113          	li	sp,-1
   130b4:	12208063          	beq	ra,sp,131d4 <fail>
   130b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   130bc:	00200293          	li	t0,2
   130c0:	fe5212e3          	bne	tp,t0,130a4 <test_14+0x8>

000130c4 <test_15>:
   130c4:	00f00e13          	li	t3,15
   130c8:	00000213          	li	tp,0
   130cc:	00000093          	li	ra,0
   130d0:	fff00113          	li	sp,-1
   130d4:	10208063          	beq	ra,sp,131d4 <fail>
   130d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   130dc:	00200293          	li	t0,2
   130e0:	fe5216e3          	bne	tp,t0,130cc <test_15+0x8>

000130e4 <test_16>:
   130e4:	01000e13          	li	t3,16
   130e8:	00000213          	li	tp,0
   130ec:	00000093          	li	ra,0
   130f0:	fff00113          	li	sp,-1
   130f4:	00000013          	nop
   130f8:	0c208e63          	beq	ra,sp,131d4 <fail>
   130fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13100:	00200293          	li	t0,2
   13104:	fe5214e3          	bne	tp,t0,130ec <test_16+0x8>

00013108 <test_17>:
   13108:	01100e13          	li	t3,17
   1310c:	00000213          	li	tp,0
   13110:	00000093          	li	ra,0
   13114:	fff00113          	li	sp,-1
   13118:	00000013          	nop
   1311c:	00000013          	nop
   13120:	0a208a63          	beq	ra,sp,131d4 <fail>
   13124:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13128:	00200293          	li	t0,2
   1312c:	fe5212e3          	bne	tp,t0,13110 <test_17+0x8>

00013130 <test_18>:
   13130:	01200e13          	li	t3,18
   13134:	00000213          	li	tp,0
   13138:	00000093          	li	ra,0
   1313c:	00000013          	nop
   13140:	fff00113          	li	sp,-1
   13144:	08208863          	beq	ra,sp,131d4 <fail>
   13148:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1314c:	00200293          	li	t0,2
   13150:	fe5214e3          	bne	tp,t0,13138 <test_18+0x8>

00013154 <test_19>:
   13154:	01300e13          	li	t3,19
   13158:	00000213          	li	tp,0
   1315c:	00000093          	li	ra,0
   13160:	00000013          	nop
   13164:	fff00113          	li	sp,-1
   13168:	00000013          	nop
   1316c:	06208463          	beq	ra,sp,131d4 <fail>
   13170:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13174:	00200293          	li	t0,2
   13178:	fe5212e3          	bne	tp,t0,1315c <test_19+0x8>

0001317c <test_20>:
   1317c:	01400e13          	li	t3,20
   13180:	00000213          	li	tp,0
   13184:	00000093          	li	ra,0
   13188:	00000013          	nop
   1318c:	00000013          	nop
   13190:	fff00113          	li	sp,-1
   13194:	04208063          	beq	ra,sp,131d4 <fail>
   13198:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1319c:	00200293          	li	t0,2
   131a0:	fe5212e3          	bne	tp,t0,13184 <test_20+0x8>

000131a4 <test_21>:
   131a4:	00100093          	li	ra,1
   131a8:	00000a63          	beqz	zero,131bc <test_21+0x18>
   131ac:	00108093          	addi	ra,ra,1
   131b0:	00108093          	addi	ra,ra,1
   131b4:	00108093          	addi	ra,ra,1
   131b8:	00108093          	addi	ra,ra,1
   131bc:	00108093          	addi	ra,ra,1
   131c0:	00108093          	addi	ra,ra,1
   131c4:	00300e93          	li	t4,3
   131c8:	01500e13          	li	t3,21
   131cc:	01d09463          	bne	ra,t4,131d4 <fail>
   131d0:	05c01463          	bne	zero,t3,13218 <pass>

000131d4 <fail>:
   131d4:	0ff00513          	li	a0,255

000131d8 <.delay_fail>:
   131d8:	fff50513          	addi	a0,a0,-1
   131dc:	fe051ee3          	bnez	a0,131d8 <.delay_fail>
   131e0:	02000537          	lui	a0,0x2000
   131e4:	04500593          	li	a1,69
   131e8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   131ec:	05200613          	li	a2,82
   131f0:	00c52023          	sw	a2,0(a0)
   131f4:	00c52023          	sw	a2,0(a0)
   131f8:	04f00693          	li	a3,79
   131fc:	00d52023          	sw	a3,0(a0)
   13200:	00c52023          	sw	a2,0(a0)
   13204:	00d00713          	li	a4,13
   13208:	00e52023          	sw	a4,0(a0)
   1320c:	00a00793          	li	a5,10
   13210:	00f52023          	sw	a5,0(a0)
   13214:	ed5fc06f          	j	100e8 <beq_ret>

00013218 <pass>:
   13218:	0ff00513          	li	a0,255

0001321c <.delay_ok>:
   1321c:	fff50513          	addi	a0,a0,-1
   13220:	fe051ee3          	bnez	a0,1321c <.delay_ok>
   13224:	02000537          	lui	a0,0x2000
   13228:	04f00593          	li	a1,79
   1322c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   13230:	04b00613          	li	a2,75
   13234:	00c52023          	sw	a2,0(a0)
   13238:	00d00693          	li	a3,13
   1323c:	00d52023          	sw	a3,0(a0)
   13240:	00a00713          	li	a4,10
   13244:	00e52023          	sw	a4,0(a0)
   13248:	ea1fc06f          	j	100e8 <beq_ret>

0001324c <divu>:
   1324c:	0ff00513          	li	a0,255

00013250 <.delay_pr>:
   13250:	fff50513          	addi	a0,a0,-1
   13254:	fe051ee3          	bnez	a0,13250 <.delay_pr>
   13258:	00013537          	lui	a0,0x13
   1325c:	27850513          	addi	a0,a0,632 # 13278 <.test_name>
   13260:	02000637          	lui	a2,0x2000

00013264 <.prname_next>:
   13264:	00050583          	lb	a1,0(a0)
   13268:	00058c63          	beqz	a1,13280 <.prname_done>
   1326c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   13270:	00150513          	addi	a0,a0,1
   13274:	ff1ff06f          	j	13264 <.prname_next>

00013278 <.test_name>:
   13278:	6964                	flw	fs1,84(a0)
   1327a:	7576                	flw	fa0,124(sp)
   1327c:	0000                	unimp
	...

00013280 <.prname_done>:
   13280:	02e00593          	li	a1,46
   13284:	00b62023          	sw	a1,0(a2)
   13288:	00b62023          	sw	a1,0(a2)

0001328c <test_2>:
   1328c:	01400093          	li	ra,20
   13290:	00600113          	li	sp,6
   13294:	0220d1b3          	divu	gp,ra,sp
   13298:	00300e93          	li	t4,3
   1329c:	00200e13          	li	t3,2
   132a0:	0dd19663          	bne	gp,t4,1336c <fail>

000132a4 <test_3>:
   132a4:	fec00093          	li	ra,-20
   132a8:	00600113          	li	sp,6
   132ac:	0220d1b3          	divu	gp,ra,sp
   132b0:	2aaabeb7          	lui	t4,0x2aaab
   132b4:	aa7e8e93          	addi	t4,t4,-1369 # 2aaaaaa7 <_etext+0x2aa90473>
   132b8:	00300e13          	li	t3,3
   132bc:	0bd19863          	bne	gp,t4,1336c <fail>

000132c0 <test_4>:
   132c0:	01400093          	li	ra,20
   132c4:	ffa00113          	li	sp,-6
   132c8:	0220d1b3          	divu	gp,ra,sp
   132cc:	00000e93          	li	t4,0
   132d0:	00400e13          	li	t3,4
   132d4:	09d19c63          	bne	gp,t4,1336c <fail>

000132d8 <test_5>:
   132d8:	fec00093          	li	ra,-20
   132dc:	ffa00113          	li	sp,-6
   132e0:	0220d1b3          	divu	gp,ra,sp
   132e4:	00000e93          	li	t4,0
   132e8:	00500e13          	li	t3,5
   132ec:	09d19063          	bne	gp,t4,1336c <fail>

000132f0 <test_6>:
   132f0:	800000b7          	lui	ra,0x80000
   132f4:	00100113          	li	sp,1
   132f8:	0220d1b3          	divu	gp,ra,sp
   132fc:	80000eb7          	lui	t4,0x80000
   13300:	00600e13          	li	t3,6
   13304:	07d19463          	bne	gp,t4,1336c <fail>

00013308 <test_7>:
   13308:	800000b7          	lui	ra,0x80000
   1330c:	fff00113          	li	sp,-1
   13310:	0220d1b3          	divu	gp,ra,sp
   13314:	00000e93          	li	t4,0
   13318:	00700e13          	li	t3,7
   1331c:	05d19863          	bne	gp,t4,1336c <fail>

00013320 <test_8>:
   13320:	800000b7          	lui	ra,0x80000
   13324:	00000113          	li	sp,0
   13328:	0220d1b3          	divu	gp,ra,sp
   1332c:	fff00e93          	li	t4,-1
   13330:	00800e13          	li	t3,8
   13334:	03d19c63          	bne	gp,t4,1336c <fail>

00013338 <test_9>:
   13338:	00100093          	li	ra,1
   1333c:	00000113          	li	sp,0
   13340:	0220d1b3          	divu	gp,ra,sp
   13344:	fff00e93          	li	t4,-1
   13348:	00900e13          	li	t3,9
   1334c:	03d19063          	bne	gp,t4,1336c <fail>

00013350 <test_10>:
   13350:	00000093          	li	ra,0
   13354:	00000113          	li	sp,0
   13358:	0220d1b3          	divu	gp,ra,sp
   1335c:	fff00e93          	li	t4,-1
   13360:	00a00e13          	li	t3,10
   13364:	01d19463          	bne	gp,t4,1336c <fail>
   13368:	05c01463          	bne	zero,t3,133b0 <pass>

0001336c <fail>:
   1336c:	0ff00513          	li	a0,255

00013370 <.delay_fail>:
   13370:	fff50513          	addi	a0,a0,-1
   13374:	fe051ee3          	bnez	a0,13370 <.delay_fail>
   13378:	02000537          	lui	a0,0x2000
   1337c:	04500593          	li	a1,69
   13380:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   13384:	05200613          	li	a2,82
   13388:	00c52023          	sw	a2,0(a0)
   1338c:	00c52023          	sw	a2,0(a0)
   13390:	04f00693          	li	a3,79
   13394:	00d52023          	sw	a3,0(a0)
   13398:	00c52023          	sw	a2,0(a0)
   1339c:	00d00713          	li	a4,13
   133a0:	00e52023          	sw	a4,0(a0)
   133a4:	00a00793          	li	a5,10
   133a8:	00f52023          	sw	a5,0(a0)
   133ac:	dcdfc06f          	j	10178 <divu_ret>

000133b0 <pass>:
   133b0:	0ff00513          	li	a0,255

000133b4 <.delay_ok>:
   133b4:	fff50513          	addi	a0,a0,-1
   133b8:	fe051ee3          	bnez	a0,133b4 <.delay_ok>
   133bc:	02000537          	lui	a0,0x2000
   133c0:	04f00593          	li	a1,79
   133c4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   133c8:	04b00613          	li	a2,75
   133cc:	00c52023          	sw	a2,0(a0)
   133d0:	00d00693          	li	a3,13
   133d4:	00d52023          	sw	a3,0(a0)
   133d8:	00a00713          	li	a4,10
   133dc:	00e52023          	sw	a4,0(a0)
   133e0:	d99fc06f          	j	10178 <divu_ret>

000133e4 <sra>:
   133e4:	0ff00513          	li	a0,255

000133e8 <.delay_pr>:
   133e8:	fff50513          	addi	a0,a0,-1
   133ec:	fe051ee3          	bnez	a0,133e8 <.delay_pr>
   133f0:	00013537          	lui	a0,0x13
   133f4:	41050513          	addi	a0,a0,1040 # 13410 <.test_name>
   133f8:	02000637          	lui	a2,0x2000

000133fc <.prname_next>:
   133fc:	00050583          	lb	a1,0(a0)
   13400:	00058a63          	beqz	a1,13414 <.prname_done>
   13404:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   13408:	00150513          	addi	a0,a0,1
   1340c:	ff1ff06f          	j	133fc <.prname_next>

00013410 <.test_name>:
   13410:	00617273          	csrrci	tp,0x6,2

00013414 <.prname_done>:
   13414:	02e00593          	li	a1,46
   13418:	00b62023          	sw	a1,0(a2)
   1341c:	00b62023          	sw	a1,0(a2)

00013420 <test_2>:
   13420:	800000b7          	lui	ra,0x80000
   13424:	00000113          	li	sp,0
   13428:	4020d1b3          	sra	gp,ra,sp
   1342c:	80000eb7          	lui	t4,0x80000
   13430:	00200e13          	li	t3,2
   13434:	59d19463          	bne	gp,t4,139bc <fail>

00013438 <test_3>:
   13438:	800000b7          	lui	ra,0x80000
   1343c:	00100113          	li	sp,1
   13440:	4020d1b3          	sra	gp,ra,sp
   13444:	c0000eb7          	lui	t4,0xc0000
   13448:	00300e13          	li	t3,3
   1344c:	57d19863          	bne	gp,t4,139bc <fail>

00013450 <test_4>:
   13450:	800000b7          	lui	ra,0x80000
   13454:	00700113          	li	sp,7
   13458:	4020d1b3          	sra	gp,ra,sp
   1345c:	ff000eb7          	lui	t4,0xff000
   13460:	00400e13          	li	t3,4
   13464:	55d19c63          	bne	gp,t4,139bc <fail>

00013468 <test_5>:
   13468:	800000b7          	lui	ra,0x80000
   1346c:	00e00113          	li	sp,14
   13470:	4020d1b3          	sra	gp,ra,sp
   13474:	fffe0eb7          	lui	t4,0xfffe0
   13478:	00500e13          	li	t3,5
   1347c:	55d19063          	bne	gp,t4,139bc <fail>

00013480 <test_6>:
   13480:	800000b7          	lui	ra,0x80000
   13484:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   13488:	01f00113          	li	sp,31
   1348c:	4020d1b3          	sra	gp,ra,sp
   13490:	fff00e93          	li	t4,-1
   13494:	00600e13          	li	t3,6
   13498:	53d19263          	bne	gp,t4,139bc <fail>

0001349c <test_7>:
   1349c:	800000b7          	lui	ra,0x80000
   134a0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134a4:	00000113          	li	sp,0
   134a8:	4020d1b3          	sra	gp,ra,sp
   134ac:	80000eb7          	lui	t4,0x80000
   134b0:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   134b4:	00700e13          	li	t3,7
   134b8:	51d19263          	bne	gp,t4,139bc <fail>

000134bc <test_8>:
   134bc:	800000b7          	lui	ra,0x80000
   134c0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134c4:	00100113          	li	sp,1
   134c8:	4020d1b3          	sra	gp,ra,sp
   134cc:	40000eb7          	lui	t4,0x40000
   134d0:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe59cb>
   134d4:	00800e13          	li	t3,8
   134d8:	4fd19263          	bne	gp,t4,139bc <fail>

000134dc <test_9>:
   134dc:	800000b7          	lui	ra,0x80000
   134e0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134e4:	00700113          	li	sp,7
   134e8:	4020d1b3          	sra	gp,ra,sp
   134ec:	01000eb7          	lui	t4,0x1000
   134f0:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe59cb>
   134f4:	00900e13          	li	t3,9
   134f8:	4dd19263          	bne	gp,t4,139bc <fail>

000134fc <test_10>:
   134fc:	800000b7          	lui	ra,0x80000
   13500:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   13504:	00e00113          	li	sp,14
   13508:	4020d1b3          	sra	gp,ra,sp
   1350c:	00020eb7          	lui	t4,0x20
   13510:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   13514:	00a00e13          	li	t3,10
   13518:	4bd19263          	bne	gp,t4,139bc <fail>

0001351c <test_11>:
   1351c:	800000b7          	lui	ra,0x80000
   13520:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   13524:	01f00113          	li	sp,31
   13528:	4020d1b3          	sra	gp,ra,sp
   1352c:	00000e93          	li	t4,0
   13530:	00b00e13          	li	t3,11
   13534:	49d19463          	bne	gp,t4,139bc <fail>

00013538 <test_12>:
   13538:	818180b7          	lui	ra,0x81818
   1353c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13540:	00000113          	li	sp,0
   13544:	4020d1b3          	sra	gp,ra,sp
   13548:	81818eb7          	lui	t4,0x81818
   1354c:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   13550:	00c00e13          	li	t3,12
   13554:	47d19463          	bne	gp,t4,139bc <fail>

00013558 <test_13>:
   13558:	818180b7          	lui	ra,0x81818
   1355c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13560:	00100113          	li	sp,1
   13564:	4020d1b3          	sra	gp,ra,sp
   13568:	c0c0ceb7          	lui	t4,0xc0c0c
   1356c:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   13570:	00d00e13          	li	t3,13
   13574:	45d19463          	bne	gp,t4,139bc <fail>

00013578 <test_14>:
   13578:	818180b7          	lui	ra,0x81818
   1357c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13580:	00700113          	li	sp,7
   13584:	4020d1b3          	sra	gp,ra,sp
   13588:	ff030eb7          	lui	t4,0xff030
   1358c:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   13590:	00e00e13          	li	t3,14
   13594:	43d19463          	bne	gp,t4,139bc <fail>

00013598 <test_15>:
   13598:	818180b7          	lui	ra,0x81818
   1359c:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135a0:	00e00113          	li	sp,14
   135a4:	4020d1b3          	sra	gp,ra,sp
   135a8:	fffe0eb7          	lui	t4,0xfffe0
   135ac:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   135b0:	00f00e13          	li	t3,15
   135b4:	41d19463          	bne	gp,t4,139bc <fail>

000135b8 <test_16>:
   135b8:	818180b7          	lui	ra,0x81818
   135bc:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135c0:	01f00113          	li	sp,31
   135c4:	4020d1b3          	sra	gp,ra,sp
   135c8:	fff00e93          	li	t4,-1
   135cc:	01000e13          	li	t3,16
   135d0:	3fd19663          	bne	gp,t4,139bc <fail>

000135d4 <test_17>:
   135d4:	818180b7          	lui	ra,0x81818
   135d8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135dc:	fc000113          	li	sp,-64
   135e0:	4020d1b3          	sra	gp,ra,sp
   135e4:	81818eb7          	lui	t4,0x81818
   135e8:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   135ec:	01100e13          	li	t3,17
   135f0:	3dd19663          	bne	gp,t4,139bc <fail>

000135f4 <test_18>:
   135f4:	818180b7          	lui	ra,0x81818
   135f8:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135fc:	fc100113          	li	sp,-63
   13600:	4020d1b3          	sra	gp,ra,sp
   13604:	c0c0ceb7          	lui	t4,0xc0c0c
   13608:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   1360c:	01200e13          	li	t3,18
   13610:	3bd19663          	bne	gp,t4,139bc <fail>

00013614 <test_19>:
   13614:	818180b7          	lui	ra,0x81818
   13618:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   1361c:	fc700113          	li	sp,-57
   13620:	4020d1b3          	sra	gp,ra,sp
   13624:	ff030eb7          	lui	t4,0xff030
   13628:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   1362c:	01300e13          	li	t3,19
   13630:	39d19663          	bne	gp,t4,139bc <fail>

00013634 <test_20>:
   13634:	818180b7          	lui	ra,0x81818
   13638:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   1363c:	fce00113          	li	sp,-50
   13640:	4020d1b3          	sra	gp,ra,sp
   13644:	fffe0eb7          	lui	t4,0xfffe0
   13648:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   1364c:	01400e13          	li	t3,20
   13650:	37d19663          	bne	gp,t4,139bc <fail>

00013654 <test_21>:
   13654:	818180b7          	lui	ra,0x81818
   13658:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   1365c:	fff00113          	li	sp,-1
   13660:	4020d1b3          	sra	gp,ra,sp
   13664:	fff00e93          	li	t4,-1
   13668:	01500e13          	li	t3,21
   1366c:	35d19863          	bne	gp,t4,139bc <fail>

00013670 <test_22>:
   13670:	800000b7          	lui	ra,0x80000
   13674:	00700113          	li	sp,7
   13678:	4020d0b3          	sra	ra,ra,sp
   1367c:	ff000eb7          	lui	t4,0xff000
   13680:	01600e13          	li	t3,22
   13684:	33d09c63          	bne	ra,t4,139bc <fail>

00013688 <test_23>:
   13688:	800000b7          	lui	ra,0x80000
   1368c:	00e00113          	li	sp,14
   13690:	4020d133          	sra	sp,ra,sp
   13694:	fffe0eb7          	lui	t4,0xfffe0
   13698:	01700e13          	li	t3,23
   1369c:	33d11063          	bne	sp,t4,139bc <fail>

000136a0 <test_24>:
   136a0:	00700093          	li	ra,7
   136a4:	4010d0b3          	sra	ra,ra,ra
   136a8:	00000e93          	li	t4,0
   136ac:	01800e13          	li	t3,24
   136b0:	31d09663          	bne	ra,t4,139bc <fail>

000136b4 <test_25>:
   136b4:	00000213          	li	tp,0
   136b8:	800000b7          	lui	ra,0x80000
   136bc:	00700113          	li	sp,7
   136c0:	4020d1b3          	sra	gp,ra,sp
   136c4:	00018313          	mv	t1,gp
   136c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   136cc:	00200293          	li	t0,2
   136d0:	fe5214e3          	bne	tp,t0,136b8 <test_25+0x4>
   136d4:	ff000eb7          	lui	t4,0xff000
   136d8:	01900e13          	li	t3,25
   136dc:	2fd31063          	bne	t1,t4,139bc <fail>

000136e0 <test_26>:
   136e0:	00000213          	li	tp,0
   136e4:	800000b7          	lui	ra,0x80000
   136e8:	00e00113          	li	sp,14
   136ec:	4020d1b3          	sra	gp,ra,sp
   136f0:	00000013          	nop
   136f4:	00018313          	mv	t1,gp
   136f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   136fc:	00200293          	li	t0,2
   13700:	fe5212e3          	bne	tp,t0,136e4 <test_26+0x4>
   13704:	fffe0eb7          	lui	t4,0xfffe0
   13708:	01a00e13          	li	t3,26
   1370c:	2bd31863          	bne	t1,t4,139bc <fail>

00013710 <test_27>:
   13710:	00000213          	li	tp,0
   13714:	800000b7          	lui	ra,0x80000
   13718:	01f00113          	li	sp,31
   1371c:	4020d1b3          	sra	gp,ra,sp
   13720:	00000013          	nop
   13724:	00000013          	nop
   13728:	00018313          	mv	t1,gp
   1372c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13730:	00200293          	li	t0,2
   13734:	fe5210e3          	bne	tp,t0,13714 <test_27+0x4>
   13738:	fff00e93          	li	t4,-1
   1373c:	01b00e13          	li	t3,27
   13740:	27d31e63          	bne	t1,t4,139bc <fail>

00013744 <test_28>:
   13744:	00000213          	li	tp,0
   13748:	800000b7          	lui	ra,0x80000
   1374c:	00700113          	li	sp,7
   13750:	4020d1b3          	sra	gp,ra,sp
   13754:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13758:	00200293          	li	t0,2
   1375c:	fe5216e3          	bne	tp,t0,13748 <test_28+0x4>
   13760:	ff000eb7          	lui	t4,0xff000
   13764:	01c00e13          	li	t3,28
   13768:	25d19a63          	bne	gp,t4,139bc <fail>

0001376c <test_29>:
   1376c:	00000213          	li	tp,0
   13770:	800000b7          	lui	ra,0x80000
   13774:	00e00113          	li	sp,14
   13778:	00000013          	nop
   1377c:	4020d1b3          	sra	gp,ra,sp
   13780:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13784:	00200293          	li	t0,2
   13788:	fe5214e3          	bne	tp,t0,13770 <test_29+0x4>
   1378c:	fffe0eb7          	lui	t4,0xfffe0
   13790:	01d00e13          	li	t3,29
   13794:	23d19463          	bne	gp,t4,139bc <fail>

00013798 <test_30>:
   13798:	00000213          	li	tp,0
   1379c:	800000b7          	lui	ra,0x80000
   137a0:	01f00113          	li	sp,31
   137a4:	00000013          	nop
   137a8:	00000013          	nop
   137ac:	4020d1b3          	sra	gp,ra,sp
   137b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   137b4:	00200293          	li	t0,2
   137b8:	fe5212e3          	bne	tp,t0,1379c <test_30+0x4>
   137bc:	fff00e93          	li	t4,-1
   137c0:	01e00e13          	li	t3,30
   137c4:	1fd19c63          	bne	gp,t4,139bc <fail>

000137c8 <test_31>:
   137c8:	00000213          	li	tp,0
   137cc:	800000b7          	lui	ra,0x80000
   137d0:	00000013          	nop
   137d4:	00700113          	li	sp,7
   137d8:	4020d1b3          	sra	gp,ra,sp
   137dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   137e0:	00200293          	li	t0,2
   137e4:	fe5214e3          	bne	tp,t0,137cc <test_31+0x4>
   137e8:	ff000eb7          	lui	t4,0xff000
   137ec:	01f00e13          	li	t3,31
   137f0:	1dd19663          	bne	gp,t4,139bc <fail>

000137f4 <test_32>:
   137f4:	00000213          	li	tp,0
   137f8:	800000b7          	lui	ra,0x80000
   137fc:	00000013          	nop
   13800:	00e00113          	li	sp,14
   13804:	00000013          	nop
   13808:	4020d1b3          	sra	gp,ra,sp
   1380c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13810:	00200293          	li	t0,2
   13814:	fe5212e3          	bne	tp,t0,137f8 <test_32+0x4>
   13818:	fffe0eb7          	lui	t4,0xfffe0
   1381c:	02000e13          	li	t3,32
   13820:	19d19e63          	bne	gp,t4,139bc <fail>

00013824 <test_33>:
   13824:	00000213          	li	tp,0
   13828:	800000b7          	lui	ra,0x80000
   1382c:	00000013          	nop
   13830:	00000013          	nop
   13834:	01f00113          	li	sp,31
   13838:	4020d1b3          	sra	gp,ra,sp
   1383c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13840:	00200293          	li	t0,2
   13844:	fe5212e3          	bne	tp,t0,13828 <test_33+0x4>
   13848:	fff00e93          	li	t4,-1
   1384c:	02100e13          	li	t3,33
   13850:	17d19663          	bne	gp,t4,139bc <fail>

00013854 <test_34>:
   13854:	00000213          	li	tp,0
   13858:	00700113          	li	sp,7
   1385c:	800000b7          	lui	ra,0x80000
   13860:	4020d1b3          	sra	gp,ra,sp
   13864:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13868:	00200293          	li	t0,2
   1386c:	fe5216e3          	bne	tp,t0,13858 <test_34+0x4>
   13870:	ff000eb7          	lui	t4,0xff000
   13874:	02200e13          	li	t3,34
   13878:	15d19263          	bne	gp,t4,139bc <fail>

0001387c <test_35>:
   1387c:	00000213          	li	tp,0
   13880:	00e00113          	li	sp,14
   13884:	800000b7          	lui	ra,0x80000
   13888:	00000013          	nop
   1388c:	4020d1b3          	sra	gp,ra,sp
   13890:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13894:	00200293          	li	t0,2
   13898:	fe5214e3          	bne	tp,t0,13880 <test_35+0x4>
   1389c:	fffe0eb7          	lui	t4,0xfffe0
   138a0:	02300e13          	li	t3,35
   138a4:	11d19c63          	bne	gp,t4,139bc <fail>

000138a8 <test_36>:
   138a8:	00000213          	li	tp,0
   138ac:	01f00113          	li	sp,31
   138b0:	800000b7          	lui	ra,0x80000
   138b4:	00000013          	nop
   138b8:	00000013          	nop
   138bc:	4020d1b3          	sra	gp,ra,sp
   138c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138c4:	00200293          	li	t0,2
   138c8:	fe5212e3          	bne	tp,t0,138ac <test_36+0x4>
   138cc:	fff00e93          	li	t4,-1
   138d0:	02400e13          	li	t3,36
   138d4:	0fd19463          	bne	gp,t4,139bc <fail>

000138d8 <test_37>:
   138d8:	00000213          	li	tp,0
   138dc:	00700113          	li	sp,7
   138e0:	00000013          	nop
   138e4:	800000b7          	lui	ra,0x80000
   138e8:	4020d1b3          	sra	gp,ra,sp
   138ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138f0:	00200293          	li	t0,2
   138f4:	fe5214e3          	bne	tp,t0,138dc <test_37+0x4>
   138f8:	ff000eb7          	lui	t4,0xff000
   138fc:	02500e13          	li	t3,37
   13900:	0bd19e63          	bne	gp,t4,139bc <fail>

00013904 <test_38>:
   13904:	00000213          	li	tp,0
   13908:	00e00113          	li	sp,14
   1390c:	00000013          	nop
   13910:	800000b7          	lui	ra,0x80000
   13914:	00000013          	nop
   13918:	4020d1b3          	sra	gp,ra,sp
   1391c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13920:	00200293          	li	t0,2
   13924:	fe5212e3          	bne	tp,t0,13908 <test_38+0x4>
   13928:	fffe0eb7          	lui	t4,0xfffe0
   1392c:	02600e13          	li	t3,38
   13930:	09d19663          	bne	gp,t4,139bc <fail>

00013934 <test_39>:
   13934:	00000213          	li	tp,0
   13938:	01f00113          	li	sp,31
   1393c:	00000013          	nop
   13940:	00000013          	nop
   13944:	800000b7          	lui	ra,0x80000
   13948:	4020d1b3          	sra	gp,ra,sp
   1394c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13950:	00200293          	li	t0,2
   13954:	fe5212e3          	bne	tp,t0,13938 <test_39+0x4>
   13958:	fff00e93          	li	t4,-1
   1395c:	02700e13          	li	t3,39
   13960:	05d19e63          	bne	gp,t4,139bc <fail>

00013964 <test_40>:
   13964:	00f00093          	li	ra,15
   13968:	40105133          	sra	sp,zero,ra
   1396c:	00000e93          	li	t4,0
   13970:	02800e13          	li	t3,40
   13974:	05d11463          	bne	sp,t4,139bc <fail>

00013978 <test_41>:
   13978:	02000093          	li	ra,32
   1397c:	4000d133          	sra	sp,ra,zero
   13980:	02000e93          	li	t4,32
   13984:	02900e13          	li	t3,41
   13988:	03d11a63          	bne	sp,t4,139bc <fail>

0001398c <test_42>:
   1398c:	400050b3          	sra	ra,zero,zero
   13990:	00000e93          	li	t4,0
   13994:	02a00e13          	li	t3,42
   13998:	03d09263          	bne	ra,t4,139bc <fail>

0001399c <test_43>:
   1399c:	40000093          	li	ra,1024
   139a0:	00001137          	lui	sp,0x1
   139a4:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   139a8:	4020d033          	sra	zero,ra,sp
   139ac:	00000e93          	li	t4,0
   139b0:	02b00e13          	li	t3,43
   139b4:	01d01463          	bne	zero,t4,139bc <fail>
   139b8:	05c01463          	bne	zero,t3,13a00 <pass>

000139bc <fail>:
   139bc:	0ff00513          	li	a0,255

000139c0 <.delay_fail>:
   139c0:	fff50513          	addi	a0,a0,-1
   139c4:	fe051ee3          	bnez	a0,139c0 <.delay_fail>
   139c8:	02000537          	lui	a0,0x2000
   139cc:	04500593          	li	a1,69
   139d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   139d4:	05200613          	li	a2,82
   139d8:	00c52023          	sw	a2,0(a0)
   139dc:	00c52023          	sw	a2,0(a0)
   139e0:	04f00693          	li	a3,79
   139e4:	00d52023          	sw	a3,0(a0)
   139e8:	00c52023          	sw	a2,0(a0)
   139ec:	00d00713          	li	a4,13
   139f0:	00e52023          	sw	a4,0(a0)
   139f4:	00a00793          	li	a5,10
   139f8:	00f52023          	sw	a5,0(a0)
   139fc:	f5cfc06f          	j	10158 <sra_ret>

00013a00 <pass>:
   13a00:	0ff00513          	li	a0,255

00013a04 <.delay_ok>:
   13a04:	fff50513          	addi	a0,a0,-1
   13a08:	fe051ee3          	bnez	a0,13a04 <.delay_ok>
   13a0c:	02000537          	lui	a0,0x2000
   13a10:	04f00593          	li	a1,79
   13a14:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   13a18:	04b00613          	li	a2,75
   13a1c:	00c52023          	sw	a2,0(a0)
   13a20:	00d00693          	li	a3,13
   13a24:	00d52023          	sw	a3,0(a0)
   13a28:	00a00713          	li	a4,10
   13a2c:	00e52023          	sw	a4,0(a0)
   13a30:	f28fc06f          	j	10158 <sra_ret>

00013a34 <srli>:
   13a34:	0ff00513          	li	a0,255

00013a38 <.delay_pr>:
   13a38:	fff50513          	addi	a0,a0,-1
   13a3c:	fe051ee3          	bnez	a0,13a38 <.delay_pr>
   13a40:	00014537          	lui	a0,0x14
   13a44:	a6050513          	addi	a0,a0,-1440 # 13a60 <.test_name>
   13a48:	02000637          	lui	a2,0x2000

00013a4c <.prname_next>:
   13a4c:	00050583          	lb	a1,0(a0)
   13a50:	00058c63          	beqz	a1,13a68 <.prname_done>
   13a54:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   13a58:	00150513          	addi	a0,a0,1
   13a5c:	ff1ff06f          	j	13a4c <.prname_next>

00013a60 <.test_name>:
   13a60:	696c7273          	csrrci	tp,0x696,24
   13a64:	0000                	unimp
	...

00013a68 <.prname_done>:
   13a68:	02e00593          	li	a1,46
   13a6c:	00b62023          	sw	a1,0(a2)
   13a70:	00b62023          	sw	a1,0(a2)

00013a74 <test_2>:
   13a74:	ffff80b7          	lui	ra,0xffff8
   13a78:	0000d193          	srli	gp,ra,0x0
   13a7c:	ffff8eb7          	lui	t4,0xffff8
   13a80:	00200e13          	li	t3,2
   13a84:	2bd19263          	bne	gp,t4,13d28 <fail>

00013a88 <test_3>:
   13a88:	ffff80b7          	lui	ra,0xffff8
   13a8c:	0010d193          	srli	gp,ra,0x1
   13a90:	7fffceb7          	lui	t4,0x7fffc
   13a94:	00300e13          	li	t3,3
   13a98:	29d19863          	bne	gp,t4,13d28 <fail>

00013a9c <test_4>:
   13a9c:	ffff80b7          	lui	ra,0xffff8
   13aa0:	0070d193          	srli	gp,ra,0x7
   13aa4:	02000eb7          	lui	t4,0x2000
   13aa8:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58cc>
   13aac:	00400e13          	li	t3,4
   13ab0:	27d19c63          	bne	gp,t4,13d28 <fail>

00013ab4 <test_5>:
   13ab4:	ffff80b7          	lui	ra,0xffff8
   13ab8:	00e0d193          	srli	gp,ra,0xe
   13abc:	00040eb7          	lui	t4,0x40
   13ac0:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259ca>
   13ac4:	00500e13          	li	t3,5
   13ac8:	27d19063          	bne	gp,t4,13d28 <fail>

00013acc <test_6>:
   13acc:	ffff80b7          	lui	ra,0xffff8
   13ad0:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   13ad4:	00f0d193          	srli	gp,ra,0xf
   13ad8:	00020eb7          	lui	t4,0x20
   13adc:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   13ae0:	00600e13          	li	t3,6
   13ae4:	25d19263          	bne	gp,t4,13d28 <fail>

00013ae8 <test_7>:
   13ae8:	fff00093          	li	ra,-1
   13aec:	0000d193          	srli	gp,ra,0x0
   13af0:	fff00e93          	li	t4,-1
   13af4:	00700e13          	li	t3,7
   13af8:	23d19863          	bne	gp,t4,13d28 <fail>

00013afc <test_8>:
   13afc:	fff00093          	li	ra,-1
   13b00:	0010d193          	srli	gp,ra,0x1
   13b04:	80000eb7          	lui	t4,0x80000
   13b08:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   13b0c:	00800e13          	li	t3,8
   13b10:	21d19c63          	bne	gp,t4,13d28 <fail>

00013b14 <test_9>:
   13b14:	fff00093          	li	ra,-1
   13b18:	0070d193          	srli	gp,ra,0x7
   13b1c:	02000eb7          	lui	t4,0x2000
   13b20:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe59cb>
   13b24:	00900e13          	li	t3,9
   13b28:	21d19063          	bne	gp,t4,13d28 <fail>

00013b2c <test_10>:
   13b2c:	fff00093          	li	ra,-1
   13b30:	00e0d193          	srli	gp,ra,0xe
   13b34:	00040eb7          	lui	t4,0x40
   13b38:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x259cb>
   13b3c:	00a00e13          	li	t3,10
   13b40:	1fd19463          	bne	gp,t4,13d28 <fail>

00013b44 <test_11>:
   13b44:	fff00093          	li	ra,-1
   13b48:	01f0d193          	srli	gp,ra,0x1f
   13b4c:	00100e93          	li	t4,1
   13b50:	00b00e13          	li	t3,11
   13b54:	1dd19a63          	bne	gp,t4,13d28 <fail>

00013b58 <test_12>:
   13b58:	212120b7          	lui	ra,0x21212
   13b5c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   13b60:	0000d193          	srli	gp,ra,0x0
   13b64:	21212eb7          	lui	t4,0x21212
   13b68:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7aed>
   13b6c:	00c00e13          	li	t3,12
   13b70:	1bd19c63          	bne	gp,t4,13d28 <fail>

00013b74 <test_13>:
   13b74:	212120b7          	lui	ra,0x21212
   13b78:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   13b7c:	0010d193          	srli	gp,ra,0x1
   13b80:	10909eb7          	lui	t4,0x10909
   13b84:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eea5c>
   13b88:	00d00e13          	li	t3,13
   13b8c:	19d19e63          	bne	gp,t4,13d28 <fail>

00013b90 <test_14>:
   13b90:	212120b7          	lui	ra,0x21212
   13b94:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   13b98:	0070d193          	srli	gp,ra,0x7
   13b9c:	00424eb7          	lui	t4,0x424
   13ba0:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c0e>
   13ba4:	00e00e13          	li	t3,14
   13ba8:	19d19063          	bne	gp,t4,13d28 <fail>

00013bac <test_15>:
   13bac:	212120b7          	lui	ra,0x21212
   13bb0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   13bb4:	00e0d193          	srli	gp,ra,0xe
   13bb8:	00008eb7          	lui	t4,0x8
   13bbc:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   13bc0:	00f00e13          	li	t3,15
   13bc4:	17d19263          	bne	gp,t4,13d28 <fail>

00013bc8 <test_16>:
   13bc8:	212120b7          	lui	ra,0x21212
   13bcc:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   13bd0:	01f0d193          	srli	gp,ra,0x1f
   13bd4:	00000e93          	li	t4,0
   13bd8:	01000e13          	li	t3,16
   13bdc:	15d19663          	bne	gp,t4,13d28 <fail>

00013be0 <test_21>:
   13be0:	ffff80b7          	lui	ra,0xffff8
   13be4:	0010d093          	srli	ra,ra,0x1
   13be8:	7fffceb7          	lui	t4,0x7fffc
   13bec:	01500e13          	li	t3,21
   13bf0:	13d09c63          	bne	ra,t4,13d28 <fail>

00013bf4 <test_22>:
   13bf4:	00000213          	li	tp,0
   13bf8:	ffff80b7          	lui	ra,0xffff8
   13bfc:	0010d193          	srli	gp,ra,0x1
   13c00:	00018313          	mv	t1,gp
   13c04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c08:	00200293          	li	t0,2
   13c0c:	fe5216e3          	bne	tp,t0,13bf8 <test_22+0x4>
   13c10:	7fffceb7          	lui	t4,0x7fffc
   13c14:	01600e13          	li	t3,22
   13c18:	11d31863          	bne	t1,t4,13d28 <fail>

00013c1c <test_23>:
   13c1c:	00000213          	li	tp,0
   13c20:	ffff80b7          	lui	ra,0xffff8
   13c24:	00e0d193          	srli	gp,ra,0xe
   13c28:	00000013          	nop
   13c2c:	00018313          	mv	t1,gp
   13c30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c34:	00200293          	li	t0,2
   13c38:	fe5214e3          	bne	tp,t0,13c20 <test_23+0x4>
   13c3c:	00040eb7          	lui	t4,0x40
   13c40:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259ca>
   13c44:	01700e13          	li	t3,23
   13c48:	0fd31063          	bne	t1,t4,13d28 <fail>

00013c4c <test_24>:
   13c4c:	00000213          	li	tp,0
   13c50:	ffff80b7          	lui	ra,0xffff8
   13c54:	00f0d193          	srli	gp,ra,0xf
   13c58:	00000013          	nop
   13c5c:	00000013          	nop
   13c60:	00018313          	mv	t1,gp
   13c64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c68:	00200293          	li	t0,2
   13c6c:	fe5212e3          	bne	tp,t0,13c50 <test_24+0x4>
   13c70:	00020eb7          	lui	t4,0x20
   13c74:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   13c78:	01800e13          	li	t3,24
   13c7c:	0bd31663          	bne	t1,t4,13d28 <fail>

00013c80 <test_25>:
   13c80:	00000213          	li	tp,0
   13c84:	ffff80b7          	lui	ra,0xffff8
   13c88:	0010d193          	srli	gp,ra,0x1
   13c8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c90:	00200293          	li	t0,2
   13c94:	fe5218e3          	bne	tp,t0,13c84 <test_25+0x4>
   13c98:	7fffceb7          	lui	t4,0x7fffc
   13c9c:	01900e13          	li	t3,25
   13ca0:	09d19463          	bne	gp,t4,13d28 <fail>

00013ca4 <test_26>:
   13ca4:	00000213          	li	tp,0
   13ca8:	ffff80b7          	lui	ra,0xffff8
   13cac:	00000013          	nop
   13cb0:	00e0d193          	srli	gp,ra,0xe
   13cb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13cb8:	00200293          	li	t0,2
   13cbc:	fe5216e3          	bne	tp,t0,13ca8 <test_26+0x4>
   13cc0:	00040eb7          	lui	t4,0x40
   13cc4:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259ca>
   13cc8:	01a00e13          	li	t3,26
   13ccc:	05d19e63          	bne	gp,t4,13d28 <fail>

00013cd0 <test_27>:
   13cd0:	00000213          	li	tp,0
   13cd4:	ffff80b7          	lui	ra,0xffff8
   13cd8:	00000013          	nop
   13cdc:	00000013          	nop
   13ce0:	00f0d193          	srli	gp,ra,0xf
   13ce4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13ce8:	00200293          	li	t0,2
   13cec:	fe5214e3          	bne	tp,t0,13cd4 <test_27+0x4>
   13cf0:	00020eb7          	lui	t4,0x20
   13cf4:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   13cf8:	01b00e13          	li	t3,27
   13cfc:	03d19663          	bne	gp,t4,13d28 <fail>

00013d00 <test_28>:
   13d00:	01f05093          	srli	ra,zero,0x1f
   13d04:	00000e93          	li	t4,0
   13d08:	01c00e13          	li	t3,28
   13d0c:	01d09e63          	bne	ra,t4,13d28 <fail>

00013d10 <test_29>:
   13d10:	02100093          	li	ra,33
   13d14:	0140d013          	srli	zero,ra,0x14
   13d18:	00000e93          	li	t4,0
   13d1c:	01d00e13          	li	t3,29
   13d20:	01d01463          	bne	zero,t4,13d28 <fail>
   13d24:	05c01463          	bne	zero,t3,13d6c <pass>

00013d28 <fail>:
   13d28:	0ff00513          	li	a0,255

00013d2c <.delay_fail>:
   13d2c:	fff50513          	addi	a0,a0,-1
   13d30:	fe051ee3          	bnez	a0,13d2c <.delay_fail>
   13d34:	02000537          	lui	a0,0x2000
   13d38:	04500593          	li	a1,69
   13d3c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   13d40:	05200613          	li	a2,82
   13d44:	00c52023          	sw	a2,0(a0)
   13d48:	00c52023          	sw	a2,0(a0)
   13d4c:	04f00693          	li	a3,79
   13d50:	00d52023          	sw	a3,0(a0)
   13d54:	00c52023          	sw	a2,0(a0)
   13d58:	00d00713          	li	a4,13
   13d5c:	00e52023          	sw	a4,0(a0)
   13d60:	00a00793          	li	a5,10
   13d64:	00f52023          	sw	a5,0(a0)
   13d68:	bd0fc06f          	j	10138 <srli_ret>

00013d6c <pass>:
   13d6c:	0ff00513          	li	a0,255

00013d70 <.delay_ok>:
   13d70:	fff50513          	addi	a0,a0,-1
   13d74:	fe051ee3          	bnez	a0,13d70 <.delay_ok>
   13d78:	02000537          	lui	a0,0x2000
   13d7c:	04f00593          	li	a1,79
   13d80:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   13d84:	04b00613          	li	a2,75
   13d88:	00c52023          	sw	a2,0(a0)
   13d8c:	00d00693          	li	a3,13
   13d90:	00d52023          	sw	a3,0(a0)
   13d94:	00a00713          	li	a4,10
   13d98:	00e52023          	sw	a4,0(a0)
   13d9c:	b9cfc06f          	j	10138 <srli_ret>

00013da0 <lw>:
   13da0:	0ff00513          	li	a0,255

00013da4 <.delay_pr>:
   13da4:	fff50513          	addi	a0,a0,-1
   13da8:	fe051ee3          	bnez	a0,13da4 <.delay_pr>
   13dac:	00014537          	lui	a0,0x14
   13db0:	dcc50513          	addi	a0,a0,-564 # 13dcc <.test_name>
   13db4:	02000637          	lui	a2,0x2000

00013db8 <.prname_next>:
   13db8:	00050583          	lb	a1,0(a0)
   13dbc:	00058a63          	beqz	a1,13dd0 <.prname_done>
   13dc0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   13dc4:	00150513          	addi	a0,a0,1
   13dc8:	ff1ff06f          	j	13db8 <.prname_next>

00013dcc <.test_name>:
   13dcc:	776c                	flw	fa1,108(a4)
	...

00013dd0 <.prname_done>:
   13dd0:	02e00593          	li	a1,46
   13dd4:	00b62023          	sw	a1,0(a2)
   13dd8:	00b62023          	sw	a1,0(a2)

00013ddc <test_2>:
   13ddc:	7ffec097          	auipc	ra,0x7ffec
   13de0:	25408093          	addi	ra,ra,596 # 80000030 <tdat>
   13de4:	0000a183          	lw	gp,0(ra)
   13de8:	00ff0eb7          	lui	t4,0xff0
   13dec:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5acb>
   13df0:	00200e13          	li	t3,2
   13df4:	27d19a63          	bne	gp,t4,14068 <fail>

00013df8 <test_3>:
   13df8:	7ffec097          	auipc	ra,0x7ffec
   13dfc:	23808093          	addi	ra,ra,568 # 80000030 <tdat>
   13e00:	0040a183          	lw	gp,4(ra)
   13e04:	ff010eb7          	lui	t4,0xff010
   13e08:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13e0c:	00300e13          	li	t3,3
   13e10:	25d19c63          	bne	gp,t4,14068 <fail>

00013e14 <test_4>:
   13e14:	7ffec097          	auipc	ra,0x7ffec
   13e18:	21c08093          	addi	ra,ra,540 # 80000030 <tdat>
   13e1c:	0080a183          	lw	gp,8(ra)
   13e20:	0ff01eb7          	lui	t4,0xff01
   13e24:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   13e28:	00400e13          	li	t3,4
   13e2c:	23d19e63          	bne	gp,t4,14068 <fail>

00013e30 <test_5>:
   13e30:	7ffec097          	auipc	ra,0x7ffec
   13e34:	20008093          	addi	ra,ra,512 # 80000030 <tdat>
   13e38:	00c0a183          	lw	gp,12(ra)
   13e3c:	f00ffeb7          	lui	t4,0xf00ff
   13e40:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13e44:	00500e13          	li	t3,5
   13e48:	23d19063          	bne	gp,t4,14068 <fail>

00013e4c <test_6>:
   13e4c:	7ffec097          	auipc	ra,0x7ffec
   13e50:	1f008093          	addi	ra,ra,496 # 8000003c <tdat4>
   13e54:	ff40a183          	lw	gp,-12(ra)
   13e58:	00ff0eb7          	lui	t4,0xff0
   13e5c:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5acb>
   13e60:	00600e13          	li	t3,6
   13e64:	21d19263          	bne	gp,t4,14068 <fail>

00013e68 <test_7>:
   13e68:	7ffec097          	auipc	ra,0x7ffec
   13e6c:	1d408093          	addi	ra,ra,468 # 8000003c <tdat4>
   13e70:	ff80a183          	lw	gp,-8(ra)
   13e74:	ff010eb7          	lui	t4,0xff010
   13e78:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13e7c:	00700e13          	li	t3,7
   13e80:	1fd19463          	bne	gp,t4,14068 <fail>

00013e84 <test_8>:
   13e84:	7ffec097          	auipc	ra,0x7ffec
   13e88:	1b808093          	addi	ra,ra,440 # 8000003c <tdat4>
   13e8c:	ffc0a183          	lw	gp,-4(ra)
   13e90:	0ff01eb7          	lui	t4,0xff01
   13e94:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   13e98:	00800e13          	li	t3,8
   13e9c:	1dd19663          	bne	gp,t4,14068 <fail>

00013ea0 <test_9>:
   13ea0:	7ffec097          	auipc	ra,0x7ffec
   13ea4:	19c08093          	addi	ra,ra,412 # 8000003c <tdat4>
   13ea8:	0000a183          	lw	gp,0(ra)
   13eac:	f00ffeb7          	lui	t4,0xf00ff
   13eb0:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13eb4:	00900e13          	li	t3,9
   13eb8:	1bd19863          	bne	gp,t4,14068 <fail>

00013ebc <test_10>:
   13ebc:	7ffec097          	auipc	ra,0x7ffec
   13ec0:	17408093          	addi	ra,ra,372 # 80000030 <tdat>
   13ec4:	fe008093          	addi	ra,ra,-32
   13ec8:	0200a183          	lw	gp,32(ra)
   13ecc:	00ff0eb7          	lui	t4,0xff0
   13ed0:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5acb>
   13ed4:	00a00e13          	li	t3,10
   13ed8:	19d19863          	bne	gp,t4,14068 <fail>

00013edc <test_11>:
   13edc:	7ffec097          	auipc	ra,0x7ffec
   13ee0:	15408093          	addi	ra,ra,340 # 80000030 <tdat>
   13ee4:	ffd08093          	addi	ra,ra,-3
   13ee8:	0070a183          	lw	gp,7(ra)
   13eec:	ff010eb7          	lui	t4,0xff010
   13ef0:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13ef4:	00b00e13          	li	t3,11
   13ef8:	17d19863          	bne	gp,t4,14068 <fail>

00013efc <test_12>:
   13efc:	00c00e13          	li	t3,12
   13f00:	00000213          	li	tp,0
   13f04:	7ffec097          	auipc	ra,0x7ffec
   13f08:	13008093          	addi	ra,ra,304 # 80000034 <tdat2>
   13f0c:	0040a183          	lw	gp,4(ra)
   13f10:	00018313          	mv	t1,gp
   13f14:	0ff01eb7          	lui	t4,0xff01
   13f18:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   13f1c:	15d31663          	bne	t1,t4,14068 <fail>
   13f20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f24:	00200293          	li	t0,2
   13f28:	fc521ee3          	bne	tp,t0,13f04 <test_12+0x8>

00013f2c <test_13>:
   13f2c:	00d00e13          	li	t3,13
   13f30:	00000213          	li	tp,0
   13f34:	7ffec097          	auipc	ra,0x7ffec
   13f38:	10408093          	addi	ra,ra,260 # 80000038 <tdat3>
   13f3c:	0040a183          	lw	gp,4(ra)
   13f40:	00000013          	nop
   13f44:	00018313          	mv	t1,gp
   13f48:	f00ffeb7          	lui	t4,0xf00ff
   13f4c:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13f50:	11d31c63          	bne	t1,t4,14068 <fail>
   13f54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f58:	00200293          	li	t0,2
   13f5c:	fc521ce3          	bne	tp,t0,13f34 <test_13+0x8>

00013f60 <test_14>:
   13f60:	00e00e13          	li	t3,14
   13f64:	00000213          	li	tp,0
   13f68:	7ffec097          	auipc	ra,0x7ffec
   13f6c:	0c808093          	addi	ra,ra,200 # 80000030 <tdat>
   13f70:	0040a183          	lw	gp,4(ra)
   13f74:	00000013          	nop
   13f78:	00000013          	nop
   13f7c:	00018313          	mv	t1,gp
   13f80:	ff010eb7          	lui	t4,0xff010
   13f84:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13f88:	0fd31063          	bne	t1,t4,14068 <fail>
   13f8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f90:	00200293          	li	t0,2
   13f94:	fc521ae3          	bne	tp,t0,13f68 <test_14+0x8>

00013f98 <test_15>:
   13f98:	00f00e13          	li	t3,15
   13f9c:	00000213          	li	tp,0
   13fa0:	7ffec097          	auipc	ra,0x7ffec
   13fa4:	09408093          	addi	ra,ra,148 # 80000034 <tdat2>
   13fa8:	0040a183          	lw	gp,4(ra)
   13fac:	0ff01eb7          	lui	t4,0xff01
   13fb0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   13fb4:	0bd19a63          	bne	gp,t4,14068 <fail>
   13fb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13fbc:	00200293          	li	t0,2
   13fc0:	fe5210e3          	bne	tp,t0,13fa0 <test_15+0x8>

00013fc4 <test_16>:
   13fc4:	01000e13          	li	t3,16
   13fc8:	00000213          	li	tp,0
   13fcc:	7ffec097          	auipc	ra,0x7ffec
   13fd0:	06c08093          	addi	ra,ra,108 # 80000038 <tdat3>
   13fd4:	00000013          	nop
   13fd8:	0040a183          	lw	gp,4(ra)
   13fdc:	f00ffeb7          	lui	t4,0xf00ff
   13fe0:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13fe4:	09d19263          	bne	gp,t4,14068 <fail>
   13fe8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13fec:	00200293          	li	t0,2
   13ff0:	fc521ee3          	bne	tp,t0,13fcc <test_16+0x8>

00013ff4 <test_17>:
   13ff4:	01100e13          	li	t3,17
   13ff8:	00000213          	li	tp,0
   13ffc:	7ffec097          	auipc	ra,0x7ffec
   14000:	03408093          	addi	ra,ra,52 # 80000030 <tdat>
   14004:	00000013          	nop
   14008:	00000013          	nop
   1400c:	0040a183          	lw	gp,4(ra)
   14010:	ff010eb7          	lui	t4,0xff010
   14014:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   14018:	05d19863          	bne	gp,t4,14068 <fail>
   1401c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14020:	00200293          	li	t0,2
   14024:	fc521ce3          	bne	tp,t0,13ffc <test_17+0x8>

00014028 <test_18>:
   14028:	7ffec197          	auipc	gp,0x7ffec
   1402c:	00818193          	addi	gp,gp,8 # 80000030 <tdat>
   14030:	0001a103          	lw	sp,0(gp)
   14034:	00200113          	li	sp,2
   14038:	00200e93          	li	t4,2
   1403c:	01200e13          	li	t3,18
   14040:	03d11463          	bne	sp,t4,14068 <fail>

00014044 <test_19>:
   14044:	7ffec197          	auipc	gp,0x7ffec
   14048:	fec18193          	addi	gp,gp,-20 # 80000030 <tdat>
   1404c:	0001a103          	lw	sp,0(gp)
   14050:	00000013          	nop
   14054:	00200113          	li	sp,2
   14058:	00200e93          	li	t4,2
   1405c:	01300e13          	li	t3,19
   14060:	01d11463          	bne	sp,t4,14068 <fail>
   14064:	05c01463          	bne	zero,t3,140ac <pass>

00014068 <fail>:
   14068:	0ff00513          	li	a0,255

0001406c <.delay_fail>:
   1406c:	fff50513          	addi	a0,a0,-1
   14070:	fe051ee3          	bnez	a0,1406c <.delay_fail>
   14074:	02000537          	lui	a0,0x2000
   14078:	04500593          	li	a1,69
   1407c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14080:	05200613          	li	a2,82
   14084:	00c52023          	sw	a2,0(a0)
   14088:	00c52023          	sw	a2,0(a0)
   1408c:	04f00693          	li	a3,79
   14090:	00d52023          	sw	a3,0(a0)
   14094:	00c52023          	sw	a2,0(a0)
   14098:	00d00713          	li	a4,13
   1409c:	00e52023          	sw	a4,0(a0)
   140a0:	00a00793          	li	a5,10
   140a4:	00f52023          	sw	a5,0(a0)
   140a8:	860fc06f          	j	10108 <lw_ret>

000140ac <pass>:
   140ac:	0ff00513          	li	a0,255

000140b0 <.delay_ok>:
   140b0:	fff50513          	addi	a0,a0,-1
   140b4:	fe051ee3          	bnez	a0,140b0 <.delay_ok>
   140b8:	02000537          	lui	a0,0x2000
   140bc:	04f00593          	li	a1,79
   140c0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   140c4:	04b00613          	li	a2,75
   140c8:	00c52023          	sw	a2,0(a0)
   140cc:	00d00693          	li	a3,13
   140d0:	00d52023          	sw	a3,0(a0)
   140d4:	00a00713          	li	a4,10
   140d8:	00e52023          	sw	a4,0(a0)
   140dc:	82cfc06f          	j	10108 <lw_ret>

000140e0 <div>:
   140e0:	0ff00513          	li	a0,255

000140e4 <.delay_pr>:
   140e4:	fff50513          	addi	a0,a0,-1
   140e8:	fe051ee3          	bnez	a0,140e4 <.delay_pr>
   140ec:	00014537          	lui	a0,0x14
   140f0:	10c50513          	addi	a0,a0,268 # 1410c <.test_name>
   140f4:	02000637          	lui	a2,0x2000

000140f8 <.prname_next>:
   140f8:	00050583          	lb	a1,0(a0)
   140fc:	00058a63          	beqz	a1,14110 <.prname_done>
   14100:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   14104:	00150513          	addi	a0,a0,1
   14108:	ff1ff06f          	j	140f8 <.prname_next>

0001410c <.test_name>:
   1410c:	6964                	flw	fs1,84(a0)
   1410e:	0076                	c.slli	zero,0x1d

00014110 <.prname_done>:
   14110:	02e00593          	li	a1,46
   14114:	00b62023          	sw	a1,0(a2)
   14118:	00b62023          	sw	a1,0(a2)

0001411c <test_2>:
   1411c:	01400093          	li	ra,20
   14120:	00600113          	li	sp,6
   14124:	0220c1b3          	div	gp,ra,sp
   14128:	00300e93          	li	t4,3
   1412c:	00200e13          	li	t3,2
   14130:	0dd19463          	bne	gp,t4,141f8 <fail>

00014134 <test_3>:
   14134:	fec00093          	li	ra,-20
   14138:	00600113          	li	sp,6
   1413c:	0220c1b3          	div	gp,ra,sp
   14140:	ffd00e93          	li	t4,-3
   14144:	00300e13          	li	t3,3
   14148:	0bd19863          	bne	gp,t4,141f8 <fail>

0001414c <test_4>:
   1414c:	01400093          	li	ra,20
   14150:	ffa00113          	li	sp,-6
   14154:	0220c1b3          	div	gp,ra,sp
   14158:	ffd00e93          	li	t4,-3
   1415c:	00400e13          	li	t3,4
   14160:	09d19c63          	bne	gp,t4,141f8 <fail>

00014164 <test_5>:
   14164:	fec00093          	li	ra,-20
   14168:	ffa00113          	li	sp,-6
   1416c:	0220c1b3          	div	gp,ra,sp
   14170:	00300e93          	li	t4,3
   14174:	00500e13          	li	t3,5
   14178:	09d19063          	bne	gp,t4,141f8 <fail>

0001417c <test_6>:
   1417c:	800000b7          	lui	ra,0x80000
   14180:	00100113          	li	sp,1
   14184:	0220c1b3          	div	gp,ra,sp
   14188:	80000eb7          	lui	t4,0x80000
   1418c:	00600e13          	li	t3,6
   14190:	07d19463          	bne	gp,t4,141f8 <fail>

00014194 <test_7>:
   14194:	800000b7          	lui	ra,0x80000
   14198:	fff00113          	li	sp,-1
   1419c:	0220c1b3          	div	gp,ra,sp
   141a0:	80000eb7          	lui	t4,0x80000
   141a4:	00700e13          	li	t3,7
   141a8:	05d19863          	bne	gp,t4,141f8 <fail>

000141ac <test_8>:
   141ac:	800000b7          	lui	ra,0x80000
   141b0:	00000113          	li	sp,0
   141b4:	0220c1b3          	div	gp,ra,sp
   141b8:	fff00e93          	li	t4,-1
   141bc:	00800e13          	li	t3,8
   141c0:	03d19c63          	bne	gp,t4,141f8 <fail>

000141c4 <test_9>:
   141c4:	00100093          	li	ra,1
   141c8:	00000113          	li	sp,0
   141cc:	0220c1b3          	div	gp,ra,sp
   141d0:	fff00e93          	li	t4,-1
   141d4:	00900e13          	li	t3,9
   141d8:	03d19063          	bne	gp,t4,141f8 <fail>

000141dc <test_10>:
   141dc:	00000093          	li	ra,0
   141e0:	00000113          	li	sp,0
   141e4:	0220c1b3          	div	gp,ra,sp
   141e8:	fff00e93          	li	t4,-1
   141ec:	00a00e13          	li	t3,10
   141f0:	01d19463          	bne	gp,t4,141f8 <fail>
   141f4:	05c01463          	bne	zero,t3,1423c <pass>

000141f8 <fail>:
   141f8:	0ff00513          	li	a0,255

000141fc <.delay_fail>:
   141fc:	fff50513          	addi	a0,a0,-1
   14200:	fe051ee3          	bnez	a0,141fc <.delay_fail>
   14204:	02000537          	lui	a0,0x2000
   14208:	04500593          	li	a1,69
   1420c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14210:	05200613          	li	a2,82
   14214:	00c52023          	sw	a2,0(a0)
   14218:	00c52023          	sw	a2,0(a0)
   1421c:	04f00693          	li	a3,79
   14220:	00d52023          	sw	a3,0(a0)
   14224:	00c52023          	sw	a2,0(a0)
   14228:	00d00713          	li	a4,13
   1422c:	00e52023          	sw	a4,0(a0)
   14230:	00a00793          	li	a5,10
   14234:	00f52023          	sw	a5,0(a0)
   14238:	f3dfb06f          	j	10174 <div_ret>

0001423c <pass>:
   1423c:	0ff00513          	li	a0,255

00014240 <.delay_ok>:
   14240:	fff50513          	addi	a0,a0,-1
   14244:	fe051ee3          	bnez	a0,14240 <.delay_ok>
   14248:	02000537          	lui	a0,0x2000
   1424c:	04f00593          	li	a1,79
   14250:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14254:	04b00613          	li	a2,75
   14258:	00c52023          	sw	a2,0(a0)
   1425c:	00d00693          	li	a3,13
   14260:	00d52023          	sw	a3,0(a0)
   14264:	00a00713          	li	a4,10
   14268:	00e52023          	sw	a4,0(a0)
   1426c:	f09fb06f          	j	10174 <div_ret>

00014270 <auipc>:
   14270:	0ff00513          	li	a0,255

00014274 <.delay_pr>:
   14274:	fff50513          	addi	a0,a0,-1
   14278:	fe051ee3          	bnez	a0,14274 <.delay_pr>
   1427c:	00014537          	lui	a0,0x14
   14280:	29c50513          	addi	a0,a0,668 # 1429c <.test_name>
   14284:	02000637          	lui	a2,0x2000

00014288 <.prname_next>:
   14288:	00050583          	lb	a1,0(a0)
   1428c:	00058c63          	beqz	a1,142a4 <.prname_done>
   14290:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   14294:	00150513          	addi	a0,a0,1
   14298:	ff1ff06f          	j	14288 <.prname_next>

0001429c <.test_name>:
   1429c:	7561                	lui	a0,0xffff8
   1429e:	7069                	c.lui	zero,0xffffa
   142a0:	00000063          	beqz	zero,142a0 <.test_name+0x4>

000142a4 <.prname_done>:
   142a4:	02e00593          	li	a1,46
   142a8:	00b62023          	sw	a1,0(a2)
   142ac:	00b62023          	sw	a1,0(a2)

000142b0 <test_2>:
   142b0:	00002517          	auipc	a0,0x2
   142b4:	71c50513          	addi	a0,a0,1820 # 169cc <test_22+0x4>
   142b8:	004005ef          	jal	a1,142bc <test_2+0xc>
   142bc:	40b50533          	sub	a0,a0,a1
   142c0:	00002eb7          	lui	t4,0x2
   142c4:	710e8e93          	addi	t4,t4,1808 # 2710 <_start-0xd8f0>
   142c8:	00200e13          	li	t3,2
   142cc:	03d51463          	bne	a0,t4,142f4 <fail>

000142d0 <test_3>:
   142d0:	ffffe517          	auipc	a0,0xffffe
   142d4:	8fc50513          	addi	a0,a0,-1796 # 11bcc <test_19+0xc>
   142d8:	004005ef          	jal	a1,142dc <test_3+0xc>
   142dc:	40b50533          	sub	a0,a0,a1
   142e0:	ffffeeb7          	lui	t4,0xffffe
   142e4:	8f0e8e93          	addi	t4,t4,-1808 # ffffd8f0 <_edata+0x7fffd880>
   142e8:	00300e13          	li	t3,3
   142ec:	01d51463          	bne	a0,t4,142f4 <fail>
   142f0:	05c01463          	bne	zero,t3,14338 <pass>

000142f4 <fail>:
   142f4:	0ff00513          	li	a0,255

000142f8 <.delay_fail>:
   142f8:	fff50513          	addi	a0,a0,-1
   142fc:	fe051ee3          	bnez	a0,142f8 <.delay_fail>
   14300:	02000537          	lui	a0,0x2000
   14304:	04500593          	li	a1,69
   14308:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1430c:	05200613          	li	a2,82
   14310:	00c52023          	sw	a2,0(a0)
   14314:	00c52023          	sw	a2,0(a0)
   14318:	04f00693          	li	a3,79
   1431c:	00d52023          	sw	a3,0(a0)
   14320:	00c52023          	sw	a2,0(a0)
   14324:	00d00713          	li	a4,13
   14328:	00e52023          	sw	a4,0(a0)
   1432c:	00a00793          	li	a5,10
   14330:	00f52023          	sw	a5,0(a0)
   14334:	da5fb06f          	j	100d8 <auipc_ret>

00014338 <pass>:
   14338:	0ff00513          	li	a0,255

0001433c <.delay_ok>:
   1433c:	fff50513          	addi	a0,a0,-1
   14340:	fe051ee3          	bnez	a0,1433c <.delay_ok>
   14344:	02000537          	lui	a0,0x2000
   14348:	04f00593          	li	a1,79
   1434c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14350:	04b00613          	li	a2,75
   14354:	00c52023          	sw	a2,0(a0)
   14358:	00d00693          	li	a3,13
   1435c:	00d52023          	sw	a3,0(a0)
   14360:	00a00713          	li	a4,10
   14364:	00e52023          	sw	a4,0(a0)
   14368:	d71fb06f          	j	100d8 <auipc_ret>
   1436c:	0000                	unimp
	...

00014370 <addi>:
   14370:	0ff00513          	li	a0,255

00014374 <.delay_pr>:
   14374:	fff50513          	addi	a0,a0,-1
   14378:	fe051ee3          	bnez	a0,14374 <.delay_pr>
   1437c:	00014537          	lui	a0,0x14
   14380:	39c50513          	addi	a0,a0,924 # 1439c <.test_name>
   14384:	02000637          	lui	a2,0x2000

00014388 <.prname_next>:
   14388:	00050583          	lb	a1,0(a0)
   1438c:	00058c63          	beqz	a1,143a4 <.prname_done>
   14390:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   14394:	00150513          	addi	a0,a0,1
   14398:	ff1ff06f          	j	14388 <.prname_next>

0001439c <.test_name>:
   1439c:	6461                	lui	s0,0x18
   1439e:	6964                	flw	fs1,84(a0)
   143a0:	0000                	unimp
	...

000143a4 <.prname_done>:
   143a4:	02e00593          	li	a1,46
   143a8:	00b62023          	sw	a1,0(a2)
   143ac:	00b62023          	sw	a1,0(a2)

000143b0 <test_2>:
   143b0:	00000093          	li	ra,0
   143b4:	00008193          	mv	gp,ra
   143b8:	00000e93          	li	t4,0
   143bc:	00200e13          	li	t3,2
   143c0:	27d19c63          	bne	gp,t4,14638 <fail>

000143c4 <test_3>:
   143c4:	00100093          	li	ra,1
   143c8:	00108193          	addi	gp,ra,1 # 80000001 <_edata+0xffffff91>
   143cc:	00200e93          	li	t4,2
   143d0:	00300e13          	li	t3,3
   143d4:	27d19263          	bne	gp,t4,14638 <fail>

000143d8 <test_4>:
   143d8:	00300093          	li	ra,3
   143dc:	00708193          	addi	gp,ra,7
   143e0:	00a00e93          	li	t4,10
   143e4:	00400e13          	li	t3,4
   143e8:	25d19863          	bne	gp,t4,14638 <fail>

000143ec <test_5>:
   143ec:	00000093          	li	ra,0
   143f0:	80008193          	addi	gp,ra,-2048
   143f4:	80000e93          	li	t4,-2048
   143f8:	00500e13          	li	t3,5
   143fc:	23d19e63          	bne	gp,t4,14638 <fail>

00014400 <test_6>:
   14400:	800000b7          	lui	ra,0x80000
   14404:	00008193          	mv	gp,ra
   14408:	80000eb7          	lui	t4,0x80000
   1440c:	00600e13          	li	t3,6
   14410:	23d19463          	bne	gp,t4,14638 <fail>

00014414 <test_7>:
   14414:	800000b7          	lui	ra,0x80000
   14418:	80008193          	addi	gp,ra,-2048 # 7ffff800 <_edata+0xfffff790>
   1441c:	80000eb7          	lui	t4,0x80000
   14420:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_edata+0xfffff790>
   14424:	00700e13          	li	t3,7
   14428:	21d19863          	bne	gp,t4,14638 <fail>

0001442c <test_8>:
   1442c:	00000093          	li	ra,0
   14430:	7ff08193          	addi	gp,ra,2047
   14434:	7ff00e93          	li	t4,2047
   14438:	00800e13          	li	t3,8
   1443c:	1fd19e63          	bne	gp,t4,14638 <fail>

00014440 <test_9>:
   14440:	800000b7          	lui	ra,0x80000
   14444:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14448:	00008193          	mv	gp,ra
   1444c:	80000eb7          	lui	t4,0x80000
   14450:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   14454:	00900e13          	li	t3,9
   14458:	1fd19063          	bne	gp,t4,14638 <fail>

0001445c <test_10>:
   1445c:	800000b7          	lui	ra,0x80000
   14460:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14464:	7ff08193          	addi	gp,ra,2047
   14468:	80000eb7          	lui	t4,0x80000
   1446c:	7fee8e93          	addi	t4,t4,2046 # 800007fe <_edata+0x78e>
   14470:	00a00e13          	li	t3,10
   14474:	1dd19263          	bne	gp,t4,14638 <fail>

00014478 <test_11>:
   14478:	800000b7          	lui	ra,0x80000
   1447c:	7ff08193          	addi	gp,ra,2047 # 800007ff <_edata+0x78f>
   14480:	80000eb7          	lui	t4,0x80000
   14484:	7ffe8e93          	addi	t4,t4,2047 # 800007ff <_edata+0x78f>
   14488:	00b00e13          	li	t3,11
   1448c:	1bd19663          	bne	gp,t4,14638 <fail>

00014490 <test_12>:
   14490:	800000b7          	lui	ra,0x80000
   14494:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14498:	80008193          	addi	gp,ra,-2048
   1449c:	7ffffeb7          	lui	t4,0x7ffff
   144a0:	7ffe8e93          	addi	t4,t4,2047 # 7ffff7ff <_etext+0x7ffe51cb>
   144a4:	00c00e13          	li	t3,12
   144a8:	19d19863          	bne	gp,t4,14638 <fail>

000144ac <test_13>:
   144ac:	00000093          	li	ra,0
   144b0:	fff08193          	addi	gp,ra,-1
   144b4:	fff00e93          	li	t4,-1
   144b8:	00d00e13          	li	t3,13
   144bc:	17d19e63          	bne	gp,t4,14638 <fail>

000144c0 <test_14>:
   144c0:	fff00093          	li	ra,-1
   144c4:	00108193          	addi	gp,ra,1
   144c8:	00000e93          	li	t4,0
   144cc:	00e00e13          	li	t3,14
   144d0:	17d19463          	bne	gp,t4,14638 <fail>

000144d4 <test_15>:
   144d4:	fff00093          	li	ra,-1
   144d8:	fff08193          	addi	gp,ra,-1
   144dc:	ffe00e93          	li	t4,-2
   144e0:	00f00e13          	li	t3,15
   144e4:	15d19a63          	bne	gp,t4,14638 <fail>

000144e8 <test_16>:
   144e8:	800000b7          	lui	ra,0x80000
   144ec:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   144f0:	00108193          	addi	gp,ra,1
   144f4:	80000eb7          	lui	t4,0x80000
   144f8:	01000e13          	li	t3,16
   144fc:	13d19e63          	bne	gp,t4,14638 <fail>

00014500 <test_17>:
   14500:	00d00093          	li	ra,13
   14504:	00b08093          	addi	ra,ra,11
   14508:	01800e93          	li	t4,24
   1450c:	01100e13          	li	t3,17
   14510:	13d09463          	bne	ra,t4,14638 <fail>

00014514 <test_18>:
   14514:	00000213          	li	tp,0
   14518:	00d00093          	li	ra,13
   1451c:	00b08193          	addi	gp,ra,11
   14520:	00018313          	mv	t1,gp
   14524:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14528:	00200293          	li	t0,2
   1452c:	fe5216e3          	bne	tp,t0,14518 <test_18+0x4>
   14530:	01800e93          	li	t4,24
   14534:	01200e13          	li	t3,18
   14538:	11d31063          	bne	t1,t4,14638 <fail>

0001453c <test_19>:
   1453c:	00000213          	li	tp,0
   14540:	00d00093          	li	ra,13
   14544:	00a08193          	addi	gp,ra,10
   14548:	00000013          	nop
   1454c:	00018313          	mv	t1,gp
   14550:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14554:	00200293          	li	t0,2
   14558:	fe5214e3          	bne	tp,t0,14540 <test_19+0x4>
   1455c:	01700e93          	li	t4,23
   14560:	01300e13          	li	t3,19
   14564:	0dd31a63          	bne	t1,t4,14638 <fail>

00014568 <test_20>:
   14568:	00000213          	li	tp,0
   1456c:	00d00093          	li	ra,13
   14570:	00908193          	addi	gp,ra,9
   14574:	00000013          	nop
   14578:	00000013          	nop
   1457c:	00018313          	mv	t1,gp
   14580:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14584:	00200293          	li	t0,2
   14588:	fe5212e3          	bne	tp,t0,1456c <test_20+0x4>
   1458c:	01600e93          	li	t4,22
   14590:	01400e13          	li	t3,20
   14594:	0bd31263          	bne	t1,t4,14638 <fail>

00014598 <test_21>:
   14598:	00000213          	li	tp,0
   1459c:	00d00093          	li	ra,13
   145a0:	00b08193          	addi	gp,ra,11
   145a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   145a8:	00200293          	li	t0,2
   145ac:	fe5218e3          	bne	tp,t0,1459c <test_21+0x4>
   145b0:	01800e93          	li	t4,24
   145b4:	01500e13          	li	t3,21
   145b8:	09d19063          	bne	gp,t4,14638 <fail>

000145bc <test_22>:
   145bc:	00000213          	li	tp,0
   145c0:	00d00093          	li	ra,13
   145c4:	00000013          	nop
   145c8:	00a08193          	addi	gp,ra,10
   145cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   145d0:	00200293          	li	t0,2
   145d4:	fe5216e3          	bne	tp,t0,145c0 <test_22+0x4>
   145d8:	01700e93          	li	t4,23
   145dc:	01600e13          	li	t3,22
   145e0:	05d19c63          	bne	gp,t4,14638 <fail>

000145e4 <test_23>:
   145e4:	00000213          	li	tp,0
   145e8:	00d00093          	li	ra,13
   145ec:	00000013          	nop
   145f0:	00000013          	nop
   145f4:	00908193          	addi	gp,ra,9
   145f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   145fc:	00200293          	li	t0,2
   14600:	fe5214e3          	bne	tp,t0,145e8 <test_23+0x4>
   14604:	01600e93          	li	t4,22
   14608:	01700e13          	li	t3,23
   1460c:	03d19663          	bne	gp,t4,14638 <fail>

00014610 <test_24>:
   14610:	02000093          	li	ra,32
   14614:	02000e93          	li	t4,32
   14618:	01800e13          	li	t3,24
   1461c:	01d09e63          	bne	ra,t4,14638 <fail>

00014620 <test_25>:
   14620:	02100093          	li	ra,33
   14624:	03208013          	addi	zero,ra,50
   14628:	00000e93          	li	t4,0
   1462c:	01900e13          	li	t3,25
   14630:	01d01463          	bne	zero,t4,14638 <fail>
   14634:	05c01463          	bne	zero,t3,1467c <pass>

00014638 <fail>:
   14638:	0ff00513          	li	a0,255

0001463c <.delay_fail>:
   1463c:	fff50513          	addi	a0,a0,-1
   14640:	fe051ee3          	bnez	a0,1463c <.delay_fail>
   14644:	02000537          	lui	a0,0x2000
   14648:	04500593          	li	a1,69
   1464c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14650:	05200613          	li	a2,82
   14654:	00c52023          	sw	a2,0(a0)
   14658:	00c52023          	sw	a2,0(a0)
   1465c:	04f00693          	li	a3,79
   14660:	00d52023          	sw	a3,0(a0)
   14664:	00c52023          	sw	a2,0(a0)
   14668:	00d00713          	li	a4,13
   1466c:	00e52023          	sw	a4,0(a0)
   14670:	00a00793          	li	a5,10
   14674:	00f52023          	sw	a5,0(a0)
   14678:	aa9fb06f          	j	10120 <addi_ret>

0001467c <pass>:
   1467c:	0ff00513          	li	a0,255

00014680 <.delay_ok>:
   14680:	fff50513          	addi	a0,a0,-1
   14684:	fe051ee3          	bnez	a0,14680 <.delay_ok>
   14688:	02000537          	lui	a0,0x2000
   1468c:	04f00593          	li	a1,79
   14690:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14694:	04b00613          	li	a2,75
   14698:	00c52023          	sw	a2,0(a0)
   1469c:	00d00693          	li	a3,13
   146a0:	00d52023          	sw	a3,0(a0)
   146a4:	00a00713          	li	a4,10
   146a8:	00e52023          	sw	a4,0(a0)
   146ac:	a75fb06f          	j	10120 <addi_ret>

000146b0 <jalr>:
   146b0:	0ff00513          	li	a0,255

000146b4 <.delay_pr>:
   146b4:	fff50513          	addi	a0,a0,-1
   146b8:	fe051ee3          	bnez	a0,146b4 <.delay_pr>
   146bc:	00014537          	lui	a0,0x14
   146c0:	6dc50513          	addi	a0,a0,1756 # 146dc <.test_name>
   146c4:	02000637          	lui	a2,0x2000

000146c8 <.prname_next>:
   146c8:	00050583          	lb	a1,0(a0)
   146cc:	00058c63          	beqz	a1,146e4 <.prname_done>
   146d0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   146d4:	00150513          	addi	a0,a0,1
   146d8:	ff1ff06f          	j	146c8 <.prname_next>

000146dc <.test_name>:
   146dc:	616a                	flw	ft2,152(sp)
   146de:	726c                	flw	fa1,100(a2)
   146e0:	0000                	unimp
	...

000146e4 <.prname_done>:
   146e4:	02e00593          	li	a1,46
   146e8:	00b62023          	sw	a1,0(a2)
   146ec:	00b62023          	sw	a1,0(a2)

000146f0 <test_2>:
   146f0:	00200e13          	li	t3,2
   146f4:	00000f93          	li	t6,0
   146f8:	00000117          	auipc	sp,0x0
   146fc:	01810113          	addi	sp,sp,24 # 14710 <target_2>

00014700 <linkaddr_2>:
   14700:	000109e7          	jalr	s3,sp
   14704:	00000013          	nop
   14708:	00000013          	nop
   1470c:	0e40006f          	j	147f0 <fail>

00014710 <target_2>:
   14710:	00000097          	auipc	ra,0x0
   14714:	ff008093          	addi	ra,ra,-16 # 14700 <linkaddr_2>
   14718:	00408093          	addi	ra,ra,4
   1471c:	0d309a63          	bne	ra,s3,147f0 <fail>

00014720 <test_3>:
   14720:	00300e13          	li	t3,3
   14724:	00000f93          	li	t6,0
   14728:	00000197          	auipc	gp,0x0
   1472c:	01418193          	addi	gp,gp,20 # 1473c <target_3>

00014730 <linkaddr_3>:
   14730:	00018067          	jr	gp
   14734:	00000013          	nop
   14738:	0b80006f          	j	147f0 <fail>

0001473c <target_3>:
   1473c:	0a0f9a63          	bnez	t6,147f0 <fail>

00014740 <test_4>:
   14740:	00400e13          	li	t3,4
   14744:	00000213          	li	tp,0
   14748:	00000317          	auipc	t1,0x0
   1474c:	01030313          	addi	t1,t1,16 # 14758 <test_4+0x18>
   14750:	000309e7          	jalr	s3,t1
   14754:	09c01e63          	bne	zero,t3,147f0 <fail>
   14758:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1475c:	00200293          	li	t0,2
   14760:	fe5214e3          	bne	tp,t0,14748 <test_4+0x8>

00014764 <test_5>:
   14764:	00500e13          	li	t3,5
   14768:	00000213          	li	tp,0
   1476c:	00000317          	auipc	t1,0x0
   14770:	01430313          	addi	t1,t1,20 # 14780 <test_5+0x1c>
   14774:	00000013          	nop
   14778:	000309e7          	jalr	s3,t1
   1477c:	07c01a63          	bne	zero,t3,147f0 <fail>
   14780:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14784:	00200293          	li	t0,2
   14788:	fe5212e3          	bne	tp,t0,1476c <test_5+0x8>

0001478c <test_6>:
   1478c:	00600e13          	li	t3,6
   14790:	00000213          	li	tp,0
   14794:	00000317          	auipc	t1,0x0
   14798:	01830313          	addi	t1,t1,24 # 147ac <test_6+0x20>
   1479c:	00000013          	nop
   147a0:	00000013          	nop
   147a4:	000309e7          	jalr	s3,t1
   147a8:	05c01463          	bne	zero,t3,147f0 <fail>
   147ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   147b0:	00200293          	li	t0,2
   147b4:	fe5210e3          	bne	tp,t0,14794 <test_6+0x8>

000147b8 <test_7>:
   147b8:	00100093          	li	ra,1
   147bc:	00000117          	auipc	sp,0x0
   147c0:	01c10113          	addi	sp,sp,28 # 147d8 <test_7+0x20>
   147c4:	ffc109e7          	jalr	s3,-4(sp)
   147c8:	00108093          	addi	ra,ra,1
   147cc:	00108093          	addi	ra,ra,1
   147d0:	00108093          	addi	ra,ra,1
   147d4:	00108093          	addi	ra,ra,1
   147d8:	00108093          	addi	ra,ra,1
   147dc:	00108093          	addi	ra,ra,1
   147e0:	00400e93          	li	t4,4
   147e4:	00700e13          	li	t3,7
   147e8:	01d09463          	bne	ra,t4,147f0 <fail>
   147ec:	05c01463          	bne	zero,t3,14834 <pass>

000147f0 <fail>:
   147f0:	0ff00513          	li	a0,255

000147f4 <.delay_fail>:
   147f4:	fff50513          	addi	a0,a0,-1
   147f8:	fe051ee3          	bnez	a0,147f4 <.delay_fail>
   147fc:	02000537          	lui	a0,0x2000
   14800:	04500593          	li	a1,69
   14804:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14808:	05200613          	li	a2,82
   1480c:	00c52023          	sw	a2,0(a0)
   14810:	00c52023          	sw	a2,0(a0)
   14814:	04f00693          	li	a3,79
   14818:	00d52023          	sw	a3,0(a0)
   1481c:	00c52023          	sw	a2,0(a0)
   14820:	00d00713          	li	a4,13
   14824:	00e52023          	sw	a4,0(a0)
   14828:	00a00793          	li	a5,10
   1482c:	00f52023          	sw	a5,0(a0)
   14830:	8b5fb06f          	j	100e4 <jalr_ret>

00014834 <pass>:
   14834:	0ff00513          	li	a0,255

00014838 <.delay_ok>:
   14838:	fff50513          	addi	a0,a0,-1
   1483c:	fe051ee3          	bnez	a0,14838 <.delay_ok>
   14840:	02000537          	lui	a0,0x2000
   14844:	04f00593          	li	a1,79
   14848:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1484c:	04b00613          	li	a2,75
   14850:	00c52023          	sw	a2,0(a0)
   14854:	00d00693          	li	a3,13
   14858:	00d52023          	sw	a3,0(a0)
   1485c:	00a00713          	li	a4,10
   14860:	00e52023          	sw	a4,0(a0)
   14864:	881fb06f          	j	100e4 <jalr_ret>

00014868 <bne>:
   14868:	0ff00513          	li	a0,255

0001486c <.delay_pr>:
   1486c:	fff50513          	addi	a0,a0,-1
   14870:	fe051ee3          	bnez	a0,1486c <.delay_pr>
   14874:	00015537          	lui	a0,0x15
   14878:	89450513          	addi	a0,a0,-1900 # 14894 <.test_name>
   1487c:	02000637          	lui	a2,0x2000

00014880 <.prname_next>:
   14880:	00050583          	lb	a1,0(a0)
   14884:	00058a63          	beqz	a1,14898 <.prname_done>
   14888:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   1488c:	00150513          	addi	a0,a0,1
   14890:	ff1ff06f          	j	14880 <.prname_next>

00014894 <.test_name>:
   14894:	6e62                	flw	ft8,24(sp)
   14896:	0065                	c.nop	25

00014898 <.prname_done>:
   14898:	02e00593          	li	a1,46
   1489c:	00b62023          	sw	a1,0(a2)
   148a0:	00b62023          	sw	a1,0(a2)

000148a4 <test_2>:
   148a4:	00200e13          	li	t3,2
   148a8:	00000093          	li	ra,0
   148ac:	00100113          	li	sp,1
   148b0:	00209663          	bne	ra,sp,148bc <test_2+0x18>
   148b4:	2bc01a63          	bne	zero,t3,14b68 <fail>
   148b8:	01c01663          	bne	zero,t3,148c4 <test_3>
   148bc:	fe209ee3          	bne	ra,sp,148b8 <test_2+0x14>
   148c0:	2bc01463          	bne	zero,t3,14b68 <fail>

000148c4 <test_3>:
   148c4:	00300e13          	li	t3,3
   148c8:	00100093          	li	ra,1
   148cc:	00000113          	li	sp,0
   148d0:	00209663          	bne	ra,sp,148dc <test_3+0x18>
   148d4:	29c01a63          	bne	zero,t3,14b68 <fail>
   148d8:	01c01663          	bne	zero,t3,148e4 <test_4>
   148dc:	fe209ee3          	bne	ra,sp,148d8 <test_3+0x14>
   148e0:	29c01463          	bne	zero,t3,14b68 <fail>

000148e4 <test_4>:
   148e4:	00400e13          	li	t3,4
   148e8:	fff00093          	li	ra,-1
   148ec:	00100113          	li	sp,1
   148f0:	00209663          	bne	ra,sp,148fc <test_4+0x18>
   148f4:	27c01a63          	bne	zero,t3,14b68 <fail>
   148f8:	01c01663          	bne	zero,t3,14904 <test_5>
   148fc:	fe209ee3          	bne	ra,sp,148f8 <test_4+0x14>
   14900:	27c01463          	bne	zero,t3,14b68 <fail>

00014904 <test_5>:
   14904:	00500e13          	li	t3,5
   14908:	00100093          	li	ra,1
   1490c:	fff00113          	li	sp,-1
   14910:	00209663          	bne	ra,sp,1491c <test_5+0x18>
   14914:	25c01a63          	bne	zero,t3,14b68 <fail>
   14918:	01c01663          	bne	zero,t3,14924 <test_6>
   1491c:	fe209ee3          	bne	ra,sp,14918 <test_5+0x14>
   14920:	25c01463          	bne	zero,t3,14b68 <fail>

00014924 <test_6>:
   14924:	00600e13          	li	t3,6
   14928:	00000093          	li	ra,0
   1492c:	00000113          	li	sp,0
   14930:	00209463          	bne	ra,sp,14938 <test_6+0x14>
   14934:	01c01463          	bne	zero,t3,1493c <test_6+0x18>
   14938:	23c01863          	bne	zero,t3,14b68 <fail>
   1493c:	fe209ee3          	bne	ra,sp,14938 <test_6+0x14>

00014940 <test_7>:
   14940:	00700e13          	li	t3,7
   14944:	00100093          	li	ra,1
   14948:	00100113          	li	sp,1
   1494c:	00209463          	bne	ra,sp,14954 <test_7+0x14>
   14950:	01c01463          	bne	zero,t3,14958 <test_7+0x18>
   14954:	21c01a63          	bne	zero,t3,14b68 <fail>
   14958:	fe209ee3          	bne	ra,sp,14954 <test_7+0x14>

0001495c <test_8>:
   1495c:	00800e13          	li	t3,8
   14960:	fff00093          	li	ra,-1
   14964:	fff00113          	li	sp,-1
   14968:	00209463          	bne	ra,sp,14970 <test_8+0x14>
   1496c:	01c01463          	bne	zero,t3,14974 <test_8+0x18>
   14970:	1fc01c63          	bne	zero,t3,14b68 <fail>
   14974:	fe209ee3          	bne	ra,sp,14970 <test_8+0x14>

00014978 <test_9>:
   14978:	00900e13          	li	t3,9
   1497c:	00000213          	li	tp,0
   14980:	00000093          	li	ra,0
   14984:	00000113          	li	sp,0
   14988:	1e209063          	bne	ra,sp,14b68 <fail>
   1498c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14990:	00200293          	li	t0,2
   14994:	fe5216e3          	bne	tp,t0,14980 <test_9+0x8>

00014998 <test_10>:
   14998:	00a00e13          	li	t3,10
   1499c:	00000213          	li	tp,0
   149a0:	00000093          	li	ra,0
   149a4:	00000113          	li	sp,0
   149a8:	00000013          	nop
   149ac:	1a209e63          	bne	ra,sp,14b68 <fail>
   149b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   149b4:	00200293          	li	t0,2
   149b8:	fe5214e3          	bne	tp,t0,149a0 <test_10+0x8>

000149bc <test_11>:
   149bc:	00b00e13          	li	t3,11
   149c0:	00000213          	li	tp,0
   149c4:	00000093          	li	ra,0
   149c8:	00000113          	li	sp,0
   149cc:	00000013          	nop
   149d0:	00000013          	nop
   149d4:	18209a63          	bne	ra,sp,14b68 <fail>
   149d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   149dc:	00200293          	li	t0,2
   149e0:	fe5212e3          	bne	tp,t0,149c4 <test_11+0x8>

000149e4 <test_12>:
   149e4:	00c00e13          	li	t3,12
   149e8:	00000213          	li	tp,0
   149ec:	00000093          	li	ra,0
   149f0:	00000013          	nop
   149f4:	00000113          	li	sp,0
   149f8:	16209863          	bne	ra,sp,14b68 <fail>
   149fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a00:	00200293          	li	t0,2
   14a04:	fe5214e3          	bne	tp,t0,149ec <test_12+0x8>

00014a08 <test_13>:
   14a08:	00d00e13          	li	t3,13
   14a0c:	00000213          	li	tp,0
   14a10:	00000093          	li	ra,0
   14a14:	00000013          	nop
   14a18:	00000113          	li	sp,0
   14a1c:	00000013          	nop
   14a20:	14209463          	bne	ra,sp,14b68 <fail>
   14a24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a28:	00200293          	li	t0,2
   14a2c:	fe5212e3          	bne	tp,t0,14a10 <test_13+0x8>

00014a30 <test_14>:
   14a30:	00e00e13          	li	t3,14
   14a34:	00000213          	li	tp,0
   14a38:	00000093          	li	ra,0
   14a3c:	00000013          	nop
   14a40:	00000013          	nop
   14a44:	00000113          	li	sp,0
   14a48:	12209063          	bne	ra,sp,14b68 <fail>
   14a4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a50:	00200293          	li	t0,2
   14a54:	fe5212e3          	bne	tp,t0,14a38 <test_14+0x8>

00014a58 <test_15>:
   14a58:	00f00e13          	li	t3,15
   14a5c:	00000213          	li	tp,0
   14a60:	00000093          	li	ra,0
   14a64:	00000113          	li	sp,0
   14a68:	10209063          	bne	ra,sp,14b68 <fail>
   14a6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a70:	00200293          	li	t0,2
   14a74:	fe5216e3          	bne	tp,t0,14a60 <test_15+0x8>

00014a78 <test_16>:
   14a78:	01000e13          	li	t3,16
   14a7c:	00000213          	li	tp,0
   14a80:	00000093          	li	ra,0
   14a84:	00000113          	li	sp,0
   14a88:	00000013          	nop
   14a8c:	0c209e63          	bne	ra,sp,14b68 <fail>
   14a90:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a94:	00200293          	li	t0,2
   14a98:	fe5214e3          	bne	tp,t0,14a80 <test_16+0x8>

00014a9c <test_17>:
   14a9c:	01100e13          	li	t3,17
   14aa0:	00000213          	li	tp,0
   14aa4:	00000093          	li	ra,0
   14aa8:	00000113          	li	sp,0
   14aac:	00000013          	nop
   14ab0:	00000013          	nop
   14ab4:	0a209a63          	bne	ra,sp,14b68 <fail>
   14ab8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14abc:	00200293          	li	t0,2
   14ac0:	fe5212e3          	bne	tp,t0,14aa4 <test_17+0x8>

00014ac4 <test_18>:
   14ac4:	01200e13          	li	t3,18
   14ac8:	00000213          	li	tp,0
   14acc:	00000093          	li	ra,0
   14ad0:	00000013          	nop
   14ad4:	00000113          	li	sp,0
   14ad8:	08209863          	bne	ra,sp,14b68 <fail>
   14adc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ae0:	00200293          	li	t0,2
   14ae4:	fe5214e3          	bne	tp,t0,14acc <test_18+0x8>

00014ae8 <test_19>:
   14ae8:	01300e13          	li	t3,19
   14aec:	00000213          	li	tp,0
   14af0:	00000093          	li	ra,0
   14af4:	00000013          	nop
   14af8:	00000113          	li	sp,0
   14afc:	00000013          	nop
   14b00:	06209463          	bne	ra,sp,14b68 <fail>
   14b04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14b08:	00200293          	li	t0,2
   14b0c:	fe5212e3          	bne	tp,t0,14af0 <test_19+0x8>

00014b10 <test_20>:
   14b10:	01400e13          	li	t3,20
   14b14:	00000213          	li	tp,0
   14b18:	00000093          	li	ra,0
   14b1c:	00000013          	nop
   14b20:	00000013          	nop
   14b24:	00000113          	li	sp,0
   14b28:	04209063          	bne	ra,sp,14b68 <fail>
   14b2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14b30:	00200293          	li	t0,2
   14b34:	fe5212e3          	bne	tp,t0,14b18 <test_20+0x8>

00014b38 <test_21>:
   14b38:	00100093          	li	ra,1
   14b3c:	00009a63          	bnez	ra,14b50 <test_21+0x18>
   14b40:	00108093          	addi	ra,ra,1
   14b44:	00108093          	addi	ra,ra,1
   14b48:	00108093          	addi	ra,ra,1
   14b4c:	00108093          	addi	ra,ra,1
   14b50:	00108093          	addi	ra,ra,1
   14b54:	00108093          	addi	ra,ra,1
   14b58:	00300e93          	li	t4,3
   14b5c:	01500e13          	li	t3,21
   14b60:	01d09463          	bne	ra,t4,14b68 <fail>
   14b64:	05c01463          	bne	zero,t3,14bac <pass>

00014b68 <fail>:
   14b68:	0ff00513          	li	a0,255

00014b6c <.delay_fail>:
   14b6c:	fff50513          	addi	a0,a0,-1
   14b70:	fe051ee3          	bnez	a0,14b6c <.delay_fail>
   14b74:	02000537          	lui	a0,0x2000
   14b78:	04500593          	li	a1,69
   14b7c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14b80:	05200613          	li	a2,82
   14b84:	00c52023          	sw	a2,0(a0)
   14b88:	00c52023          	sw	a2,0(a0)
   14b8c:	04f00693          	li	a3,79
   14b90:	00d52023          	sw	a3,0(a0)
   14b94:	00c52023          	sw	a2,0(a0)
   14b98:	00d00713          	li	a4,13
   14b9c:	00e52023          	sw	a4,0(a0)
   14ba0:	00a00793          	li	a5,10
   14ba4:	00f52023          	sw	a5,0(a0)
   14ba8:	d44fb06f          	j	100ec <bne_ret>

00014bac <pass>:
   14bac:	0ff00513          	li	a0,255

00014bb0 <.delay_ok>:
   14bb0:	fff50513          	addi	a0,a0,-1
   14bb4:	fe051ee3          	bnez	a0,14bb0 <.delay_ok>
   14bb8:	02000537          	lui	a0,0x2000
   14bbc:	04f00593          	li	a1,79
   14bc0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14bc4:	04b00613          	li	a2,75
   14bc8:	00c52023          	sw	a2,0(a0)
   14bcc:	00d00693          	li	a3,13
   14bd0:	00d52023          	sw	a3,0(a0)
   14bd4:	00a00713          	li	a4,10
   14bd8:	00e52023          	sw	a4,0(a0)
   14bdc:	d10fb06f          	j	100ec <bne_ret>

00014be0 <bgeu>:
   14be0:	0ff00513          	li	a0,255

00014be4 <.delay_pr>:
   14be4:	fff50513          	addi	a0,a0,-1
   14be8:	fe051ee3          	bnez	a0,14be4 <.delay_pr>
   14bec:	00015537          	lui	a0,0x15
   14bf0:	c0c50513          	addi	a0,a0,-1012 # 14c0c <.test_name>
   14bf4:	02000637          	lui	a2,0x2000

00014bf8 <.prname_next>:
   14bf8:	00050583          	lb	a1,0(a0)
   14bfc:	00058c63          	beqz	a1,14c14 <.prname_done>
   14c00:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   14c04:	00150513          	addi	a0,a0,1
   14c08:	ff1ff06f          	j	14bf8 <.prname_next>

00014c0c <.test_name>:
   14c0c:	6762                	flw	fa4,24(sp)
   14c0e:	7565                	lui	a0,0xffff9
   14c10:	0000                	unimp
	...

00014c14 <.prname_done>:
   14c14:	02e00593          	li	a1,46
   14c18:	00b62023          	sw	a1,0(a2)
   14c1c:	00b62023          	sw	a1,0(a2)

00014c20 <test_2>:
   14c20:	00200e13          	li	t3,2
   14c24:	00000093          	li	ra,0
   14c28:	00000113          	li	sp,0
   14c2c:	0020f663          	bgeu	ra,sp,14c38 <test_2+0x18>
   14c30:	35c01263          	bne	zero,t3,14f74 <fail>
   14c34:	01c01663          	bne	zero,t3,14c40 <test_3>
   14c38:	fe20fee3          	bgeu	ra,sp,14c34 <test_2+0x14>
   14c3c:	33c01c63          	bne	zero,t3,14f74 <fail>

00014c40 <test_3>:
   14c40:	00300e13          	li	t3,3
   14c44:	00100093          	li	ra,1
   14c48:	00100113          	li	sp,1
   14c4c:	0020f663          	bgeu	ra,sp,14c58 <test_3+0x18>
   14c50:	33c01263          	bne	zero,t3,14f74 <fail>
   14c54:	01c01663          	bne	zero,t3,14c60 <test_4>
   14c58:	fe20fee3          	bgeu	ra,sp,14c54 <test_3+0x14>
   14c5c:	31c01c63          	bne	zero,t3,14f74 <fail>

00014c60 <test_4>:
   14c60:	00400e13          	li	t3,4
   14c64:	fff00093          	li	ra,-1
   14c68:	fff00113          	li	sp,-1
   14c6c:	0020f663          	bgeu	ra,sp,14c78 <test_4+0x18>
   14c70:	31c01263          	bne	zero,t3,14f74 <fail>
   14c74:	01c01663          	bne	zero,t3,14c80 <test_5>
   14c78:	fe20fee3          	bgeu	ra,sp,14c74 <test_4+0x14>
   14c7c:	2fc01c63          	bne	zero,t3,14f74 <fail>

00014c80 <test_5>:
   14c80:	00500e13          	li	t3,5
   14c84:	00100093          	li	ra,1
   14c88:	00000113          	li	sp,0
   14c8c:	0020f663          	bgeu	ra,sp,14c98 <test_5+0x18>
   14c90:	2fc01263          	bne	zero,t3,14f74 <fail>
   14c94:	01c01663          	bne	zero,t3,14ca0 <test_6>
   14c98:	fe20fee3          	bgeu	ra,sp,14c94 <test_5+0x14>
   14c9c:	2dc01c63          	bne	zero,t3,14f74 <fail>

00014ca0 <test_6>:
   14ca0:	00600e13          	li	t3,6
   14ca4:	fff00093          	li	ra,-1
   14ca8:	ffe00113          	li	sp,-2
   14cac:	0020f663          	bgeu	ra,sp,14cb8 <test_6+0x18>
   14cb0:	2dc01263          	bne	zero,t3,14f74 <fail>
   14cb4:	01c01663          	bne	zero,t3,14cc0 <test_7>
   14cb8:	fe20fee3          	bgeu	ra,sp,14cb4 <test_6+0x14>
   14cbc:	2bc01c63          	bne	zero,t3,14f74 <fail>

00014cc0 <test_7>:
   14cc0:	00700e13          	li	t3,7
   14cc4:	fff00093          	li	ra,-1
   14cc8:	00000113          	li	sp,0
   14ccc:	0020f663          	bgeu	ra,sp,14cd8 <test_7+0x18>
   14cd0:	2bc01263          	bne	zero,t3,14f74 <fail>
   14cd4:	01c01663          	bne	zero,t3,14ce0 <test_8>
   14cd8:	fe20fee3          	bgeu	ra,sp,14cd4 <test_7+0x14>
   14cdc:	29c01c63          	bne	zero,t3,14f74 <fail>

00014ce0 <test_8>:
   14ce0:	00800e13          	li	t3,8
   14ce4:	00000093          	li	ra,0
   14ce8:	00100113          	li	sp,1
   14cec:	0020f463          	bgeu	ra,sp,14cf4 <test_8+0x14>
   14cf0:	01c01463          	bne	zero,t3,14cf8 <test_8+0x18>
   14cf4:	29c01063          	bne	zero,t3,14f74 <fail>
   14cf8:	fe20fee3          	bgeu	ra,sp,14cf4 <test_8+0x14>

00014cfc <test_9>:
   14cfc:	00900e13          	li	t3,9
   14d00:	ffe00093          	li	ra,-2
   14d04:	fff00113          	li	sp,-1
   14d08:	0020f463          	bgeu	ra,sp,14d10 <test_9+0x14>
   14d0c:	01c01463          	bne	zero,t3,14d14 <test_9+0x18>
   14d10:	27c01263          	bne	zero,t3,14f74 <fail>
   14d14:	fe20fee3          	bgeu	ra,sp,14d10 <test_9+0x14>

00014d18 <test_10>:
   14d18:	00a00e13          	li	t3,10
   14d1c:	00000093          	li	ra,0
   14d20:	fff00113          	li	sp,-1
   14d24:	0020f463          	bgeu	ra,sp,14d2c <test_10+0x14>
   14d28:	01c01463          	bne	zero,t3,14d30 <test_10+0x18>
   14d2c:	25c01463          	bne	zero,t3,14f74 <fail>
   14d30:	fe20fee3          	bgeu	ra,sp,14d2c <test_10+0x14>

00014d34 <test_11>:
   14d34:	00b00e13          	li	t3,11
   14d38:	800000b7          	lui	ra,0x80000
   14d3c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14d40:	80000137          	lui	sp,0x80000
   14d44:	0020f463          	bgeu	ra,sp,14d4c <test_11+0x18>
   14d48:	01c01463          	bne	zero,t3,14d50 <test_11+0x1c>
   14d4c:	23c01463          	bne	zero,t3,14f74 <fail>
   14d50:	fe20fee3          	bgeu	ra,sp,14d4c <test_11+0x18>

00014d54 <test_12>:
   14d54:	00c00e13          	li	t3,12
   14d58:	00000213          	li	tp,0
   14d5c:	f00000b7          	lui	ra,0xf0000
   14d60:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14d64:	f0000137          	lui	sp,0xf0000
   14d68:	2020f663          	bgeu	ra,sp,14f74 <fail>
   14d6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d70:	00200293          	li	t0,2
   14d74:	fe5214e3          	bne	tp,t0,14d5c <test_12+0x8>

00014d78 <test_13>:
   14d78:	00d00e13          	li	t3,13
   14d7c:	00000213          	li	tp,0
   14d80:	f00000b7          	lui	ra,0xf0000
   14d84:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14d88:	f0000137          	lui	sp,0xf0000
   14d8c:	00000013          	nop
   14d90:	1e20f263          	bgeu	ra,sp,14f74 <fail>
   14d94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d98:	00200293          	li	t0,2
   14d9c:	fe5212e3          	bne	tp,t0,14d80 <test_13+0x8>

00014da0 <test_14>:
   14da0:	00e00e13          	li	t3,14
   14da4:	00000213          	li	tp,0
   14da8:	f00000b7          	lui	ra,0xf0000
   14dac:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14db0:	f0000137          	lui	sp,0xf0000
   14db4:	00000013          	nop
   14db8:	00000013          	nop
   14dbc:	1a20fc63          	bgeu	ra,sp,14f74 <fail>
   14dc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14dc4:	00200293          	li	t0,2
   14dc8:	fe5210e3          	bne	tp,t0,14da8 <test_14+0x8>

00014dcc <test_15>:
   14dcc:	00f00e13          	li	t3,15
   14dd0:	00000213          	li	tp,0
   14dd4:	f00000b7          	lui	ra,0xf0000
   14dd8:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14ddc:	00000013          	nop
   14de0:	f0000137          	lui	sp,0xf0000
   14de4:	1820f863          	bgeu	ra,sp,14f74 <fail>
   14de8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14dec:	00200293          	li	t0,2
   14df0:	fe5212e3          	bne	tp,t0,14dd4 <test_15+0x8>

00014df4 <test_16>:
   14df4:	01000e13          	li	t3,16
   14df8:	00000213          	li	tp,0
   14dfc:	f00000b7          	lui	ra,0xf0000
   14e00:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e04:	00000013          	nop
   14e08:	f0000137          	lui	sp,0xf0000
   14e0c:	00000013          	nop
   14e10:	1620f263          	bgeu	ra,sp,14f74 <fail>
   14e14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e18:	00200293          	li	t0,2
   14e1c:	fe5210e3          	bne	tp,t0,14dfc <test_16+0x8>

00014e20 <test_17>:
   14e20:	01100e13          	li	t3,17
   14e24:	00000213          	li	tp,0
   14e28:	f00000b7          	lui	ra,0xf0000
   14e2c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e30:	00000013          	nop
   14e34:	00000013          	nop
   14e38:	f0000137          	lui	sp,0xf0000
   14e3c:	1220fc63          	bgeu	ra,sp,14f74 <fail>
   14e40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e44:	00200293          	li	t0,2
   14e48:	fe5210e3          	bne	tp,t0,14e28 <test_17+0x8>

00014e4c <test_18>:
   14e4c:	01200e13          	li	t3,18
   14e50:	00000213          	li	tp,0
   14e54:	f00000b7          	lui	ra,0xf0000
   14e58:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e5c:	f0000137          	lui	sp,0xf0000
   14e60:	1020fa63          	bgeu	ra,sp,14f74 <fail>
   14e64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e68:	00200293          	li	t0,2
   14e6c:	fe5214e3          	bne	tp,t0,14e54 <test_18+0x8>

00014e70 <test_19>:
   14e70:	01300e13          	li	t3,19
   14e74:	00000213          	li	tp,0
   14e78:	f00000b7          	lui	ra,0xf0000
   14e7c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e80:	f0000137          	lui	sp,0xf0000
   14e84:	00000013          	nop
   14e88:	0e20f663          	bgeu	ra,sp,14f74 <fail>
   14e8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e90:	00200293          	li	t0,2
   14e94:	fe5212e3          	bne	tp,t0,14e78 <test_19+0x8>

00014e98 <test_20>:
   14e98:	01400e13          	li	t3,20
   14e9c:	00000213          	li	tp,0
   14ea0:	f00000b7          	lui	ra,0xf0000
   14ea4:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14ea8:	f0000137          	lui	sp,0xf0000
   14eac:	00000013          	nop
   14eb0:	00000013          	nop
   14eb4:	0c20f063          	bgeu	ra,sp,14f74 <fail>
   14eb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ebc:	00200293          	li	t0,2
   14ec0:	fe5210e3          	bne	tp,t0,14ea0 <test_20+0x8>

00014ec4 <test_21>:
   14ec4:	01500e13          	li	t3,21
   14ec8:	00000213          	li	tp,0
   14ecc:	f00000b7          	lui	ra,0xf0000
   14ed0:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14ed4:	00000013          	nop
   14ed8:	f0000137          	lui	sp,0xf0000
   14edc:	0820fc63          	bgeu	ra,sp,14f74 <fail>
   14ee0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ee4:	00200293          	li	t0,2
   14ee8:	fe5212e3          	bne	tp,t0,14ecc <test_21+0x8>

00014eec <test_22>:
   14eec:	01600e13          	li	t3,22
   14ef0:	00000213          	li	tp,0
   14ef4:	f00000b7          	lui	ra,0xf0000
   14ef8:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14efc:	00000013          	nop
   14f00:	f0000137          	lui	sp,0xf0000
   14f04:	00000013          	nop
   14f08:	0620f663          	bgeu	ra,sp,14f74 <fail>
   14f0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f10:	00200293          	li	t0,2
   14f14:	fe5210e3          	bne	tp,t0,14ef4 <test_22+0x8>

00014f18 <test_23>:
   14f18:	01700e13          	li	t3,23
   14f1c:	00000213          	li	tp,0
   14f20:	f00000b7          	lui	ra,0xf0000
   14f24:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14f28:	00000013          	nop
   14f2c:	00000013          	nop
   14f30:	f0000137          	lui	sp,0xf0000
   14f34:	0420f063          	bgeu	ra,sp,14f74 <fail>
   14f38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f3c:	00200293          	li	t0,2
   14f40:	fe5210e3          	bne	tp,t0,14f20 <test_23+0x8>

00014f44 <test_24>:
   14f44:	00100093          	li	ra,1
   14f48:	0000fa63          	bgeu	ra,zero,14f5c <test_24+0x18>
   14f4c:	00108093          	addi	ra,ra,1
   14f50:	00108093          	addi	ra,ra,1
   14f54:	00108093          	addi	ra,ra,1
   14f58:	00108093          	addi	ra,ra,1
   14f5c:	00108093          	addi	ra,ra,1
   14f60:	00108093          	addi	ra,ra,1
   14f64:	00300e93          	li	t4,3
   14f68:	01800e13          	li	t3,24
   14f6c:	01d09463          	bne	ra,t4,14f74 <fail>
   14f70:	05c01463          	bne	zero,t3,14fb8 <pass>

00014f74 <fail>:
   14f74:	0ff00513          	li	a0,255

00014f78 <.delay_fail>:
   14f78:	fff50513          	addi	a0,a0,-1 # ffff8fff <_edata+0x7fff8f8f>
   14f7c:	fe051ee3          	bnez	a0,14f78 <.delay_fail>
   14f80:	02000537          	lui	a0,0x2000
   14f84:	04500593          	li	a1,69
   14f88:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14f8c:	05200613          	li	a2,82
   14f90:	00c52023          	sw	a2,0(a0)
   14f94:	00c52023          	sw	a2,0(a0)
   14f98:	04f00693          	li	a3,79
   14f9c:	00d52023          	sw	a3,0(a0)
   14fa0:	00c52023          	sw	a2,0(a0)
   14fa4:	00d00713          	li	a4,13
   14fa8:	00e52023          	sw	a4,0(a0)
   14fac:	00a00793          	li	a5,10
   14fb0:	00f52023          	sw	a5,0(a0)
   14fb4:	948fb06f          	j	100fc <bgeu_ret>

00014fb8 <pass>:
   14fb8:	0ff00513          	li	a0,255

00014fbc <.delay_ok>:
   14fbc:	fff50513          	addi	a0,a0,-1
   14fc0:	fe051ee3          	bnez	a0,14fbc <.delay_ok>
   14fc4:	02000537          	lui	a0,0x2000
   14fc8:	04f00593          	li	a1,79
   14fcc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   14fd0:	04b00613          	li	a2,75
   14fd4:	00c52023          	sw	a2,0(a0)
   14fd8:	00d00693          	li	a3,13
   14fdc:	00d52023          	sw	a3,0(a0)
   14fe0:	00a00713          	li	a4,10
   14fe4:	00e52023          	sw	a4,0(a0)
   14fe8:	914fb06f          	j	100fc <bgeu_ret>

00014fec <mulhu>:
   14fec:	0ff00513          	li	a0,255

00014ff0 <.delay_pr>:
   14ff0:	fff50513          	addi	a0,a0,-1
   14ff4:	fe051ee3          	bnez	a0,14ff0 <.delay_pr>
   14ff8:	00015537          	lui	a0,0x15
   14ffc:	01850513          	addi	a0,a0,24 # 15018 <.test_name>
   15000:	02000637          	lui	a2,0x2000

00015004 <.prname_next>:
   15004:	00050583          	lb	a1,0(a0)
   15008:	00058c63          	beqz	a1,15020 <.prname_done>
   1500c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   15010:	00150513          	addi	a0,a0,1
   15014:	ff1ff06f          	j	15004 <.prname_next>

00015018 <.test_name>:
   15018:	756d                	lui	a0,0xffffb
   1501a:	686c                	flw	fa1,84(s0)
   1501c:	0075                	c.nop	29
	...

00015020 <.prname_done>:
   15020:	02e00593          	li	a1,46
   15024:	00b62023          	sw	a1,0(a2)
   15028:	00b62023          	sw	a1,0(a2)

0001502c <test_2>:
   1502c:	00000093          	li	ra,0
   15030:	00000113          	li	sp,0
   15034:	0220b1b3          	mulhu	gp,ra,sp
   15038:	00000e93          	li	t4,0
   1503c:	00200e13          	li	t3,2
   15040:	4bd19a63          	bne	gp,t4,154f4 <fail>

00015044 <test_3>:
   15044:	00100093          	li	ra,1
   15048:	00100113          	li	sp,1
   1504c:	0220b1b3          	mulhu	gp,ra,sp
   15050:	00000e93          	li	t4,0
   15054:	00300e13          	li	t3,3
   15058:	49d19e63          	bne	gp,t4,154f4 <fail>

0001505c <test_4>:
   1505c:	00300093          	li	ra,3
   15060:	00700113          	li	sp,7
   15064:	0220b1b3          	mulhu	gp,ra,sp
   15068:	00000e93          	li	t4,0
   1506c:	00400e13          	li	t3,4
   15070:	49d19263          	bne	gp,t4,154f4 <fail>

00015074 <test_5>:
   15074:	00000093          	li	ra,0
   15078:	ffff8137          	lui	sp,0xffff8
   1507c:	0220b1b3          	mulhu	gp,ra,sp
   15080:	00000e93          	li	t4,0
   15084:	00500e13          	li	t3,5
   15088:	47d19663          	bne	gp,t4,154f4 <fail>

0001508c <test_6>:
   1508c:	800000b7          	lui	ra,0x80000
   15090:	00000113          	li	sp,0
   15094:	0220b1b3          	mulhu	gp,ra,sp
   15098:	00000e93          	li	t4,0
   1509c:	00600e13          	li	t3,6
   150a0:	45d19a63          	bne	gp,t4,154f4 <fail>

000150a4 <test_7>:
   150a4:	800000b7          	lui	ra,0x80000
   150a8:	ffff8137          	lui	sp,0xffff8
   150ac:	0220b1b3          	mulhu	gp,ra,sp
   150b0:	7fffceb7          	lui	t4,0x7fffc
   150b4:	00700e13          	li	t3,7
   150b8:	43d19e63          	bne	gp,t4,154f4 <fail>

000150bc <test_30>:
   150bc:	aaaab0b7          	lui	ra,0xaaaab
   150c0:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   150c4:	00030137          	lui	sp,0x30
   150c8:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15849>
   150cc:	0220b1b3          	mulhu	gp,ra,sp
   150d0:	00020eb7          	lui	t4,0x20
   150d4:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x58ca>
   150d8:	01e00e13          	li	t3,30
   150dc:	41d19c63          	bne	gp,t4,154f4 <fail>

000150e0 <test_31>:
   150e0:	000300b7          	lui	ra,0x30
   150e4:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15849>
   150e8:	aaaab137          	lui	sp,0xaaaab
   150ec:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   150f0:	0220b1b3          	mulhu	gp,ra,sp
   150f4:	00020eb7          	lui	t4,0x20
   150f8:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x58ca>
   150fc:	01f00e13          	li	t3,31
   15100:	3fd19a63          	bne	gp,t4,154f4 <fail>

00015104 <test_32>:
   15104:	ff0000b7          	lui	ra,0xff000
   15108:	ff000137          	lui	sp,0xff000
   1510c:	0220b1b3          	mulhu	gp,ra,sp
   15110:	fe010eb7          	lui	t4,0xfe010
   15114:	02000e13          	li	t3,32
   15118:	3dd19e63          	bne	gp,t4,154f4 <fail>

0001511c <test_33>:
   1511c:	fff00093          	li	ra,-1
   15120:	fff00113          	li	sp,-1
   15124:	0220b1b3          	mulhu	gp,ra,sp
   15128:	ffe00e93          	li	t4,-2
   1512c:	02100e13          	li	t3,33
   15130:	3dd19263          	bne	gp,t4,154f4 <fail>

00015134 <test_34>:
   15134:	fff00093          	li	ra,-1
   15138:	00100113          	li	sp,1
   1513c:	0220b1b3          	mulhu	gp,ra,sp
   15140:	00000e93          	li	t4,0
   15144:	02200e13          	li	t3,34
   15148:	3bd19663          	bne	gp,t4,154f4 <fail>

0001514c <test_35>:
   1514c:	00100093          	li	ra,1
   15150:	fff00113          	li	sp,-1
   15154:	0220b1b3          	mulhu	gp,ra,sp
   15158:	00000e93          	li	t4,0
   1515c:	02300e13          	li	t3,35
   15160:	39d19a63          	bne	gp,t4,154f4 <fail>

00015164 <test_8>:
   15164:	00d000b7          	lui	ra,0xd00
   15168:	00b00137          	lui	sp,0xb00
   1516c:	0220b0b3          	mulhu	ra,ra,sp
   15170:	00009eb7          	lui	t4,0x9
   15174:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15178:	00800e13          	li	t3,8
   1517c:	37d09c63          	bne	ra,t4,154f4 <fail>

00015180 <test_9>:
   15180:	00e000b7          	lui	ra,0xe00
   15184:	00b00137          	lui	sp,0xb00
   15188:	0220b133          	mulhu	sp,ra,sp
   1518c:	0000aeb7          	lui	t4,0xa
   15190:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15194:	00900e13          	li	t3,9
   15198:	35d11e63          	bne	sp,t4,154f4 <fail>

0001519c <test_10>:
   1519c:	00d000b7          	lui	ra,0xd00
   151a0:	0210b0b3          	mulhu	ra,ra,ra
   151a4:	0000beb7          	lui	t4,0xb
   151a8:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   151ac:	00a00e13          	li	t3,10
   151b0:	35d09263          	bne	ra,t4,154f4 <fail>

000151b4 <test_11>:
   151b4:	00000213          	li	tp,0
   151b8:	00d000b7          	lui	ra,0xd00
   151bc:	00b00137          	lui	sp,0xb00
   151c0:	0220b1b3          	mulhu	gp,ra,sp
   151c4:	00018313          	mv	t1,gp
   151c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   151cc:	00200293          	li	t0,2
   151d0:	fe5214e3          	bne	tp,t0,151b8 <test_11+0x4>
   151d4:	00009eb7          	lui	t4,0x9
   151d8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   151dc:	00b00e13          	li	t3,11
   151e0:	31d31a63          	bne	t1,t4,154f4 <fail>

000151e4 <test_12>:
   151e4:	00000213          	li	tp,0
   151e8:	00e000b7          	lui	ra,0xe00
   151ec:	00b00137          	lui	sp,0xb00
   151f0:	0220b1b3          	mulhu	gp,ra,sp
   151f4:	00000013          	nop
   151f8:	00018313          	mv	t1,gp
   151fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15200:	00200293          	li	t0,2
   15204:	fe5212e3          	bne	tp,t0,151e8 <test_12+0x4>
   15208:	0000aeb7          	lui	t4,0xa
   1520c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15210:	00c00e13          	li	t3,12
   15214:	2fd31063          	bne	t1,t4,154f4 <fail>

00015218 <test_13>:
   15218:	00000213          	li	tp,0
   1521c:	00f000b7          	lui	ra,0xf00
   15220:	00b00137          	lui	sp,0xb00
   15224:	0220b1b3          	mulhu	gp,ra,sp
   15228:	00000013          	nop
   1522c:	00000013          	nop
   15230:	00018313          	mv	t1,gp
   15234:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15238:	00200293          	li	t0,2
   1523c:	fe5210e3          	bne	tp,t0,1521c <test_13+0x4>
   15240:	0000aeb7          	lui	t4,0xa
   15244:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15248:	00d00e13          	li	t3,13
   1524c:	2bd31463          	bne	t1,t4,154f4 <fail>

00015250 <test_14>:
   15250:	00000213          	li	tp,0
   15254:	00d000b7          	lui	ra,0xd00
   15258:	00b00137          	lui	sp,0xb00
   1525c:	0220b1b3          	mulhu	gp,ra,sp
   15260:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15264:	00200293          	li	t0,2
   15268:	fe5216e3          	bne	tp,t0,15254 <test_14+0x4>
   1526c:	00009eb7          	lui	t4,0x9
   15270:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15274:	00e00e13          	li	t3,14
   15278:	27d19e63          	bne	gp,t4,154f4 <fail>

0001527c <test_15>:
   1527c:	00000213          	li	tp,0
   15280:	00e000b7          	lui	ra,0xe00
   15284:	00b00137          	lui	sp,0xb00
   15288:	00000013          	nop
   1528c:	0220b1b3          	mulhu	gp,ra,sp
   15290:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15294:	00200293          	li	t0,2
   15298:	fe5214e3          	bne	tp,t0,15280 <test_15+0x4>
   1529c:	0000aeb7          	lui	t4,0xa
   152a0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   152a4:	00f00e13          	li	t3,15
   152a8:	25d19663          	bne	gp,t4,154f4 <fail>

000152ac <test_16>:
   152ac:	00000213          	li	tp,0
   152b0:	00f000b7          	lui	ra,0xf00
   152b4:	00b00137          	lui	sp,0xb00
   152b8:	00000013          	nop
   152bc:	00000013          	nop
   152c0:	0220b1b3          	mulhu	gp,ra,sp
   152c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   152c8:	00200293          	li	t0,2
   152cc:	fe5212e3          	bne	tp,t0,152b0 <test_16+0x4>
   152d0:	0000aeb7          	lui	t4,0xa
   152d4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   152d8:	01000e13          	li	t3,16
   152dc:	21d19c63          	bne	gp,t4,154f4 <fail>

000152e0 <test_17>:
   152e0:	00000213          	li	tp,0
   152e4:	00d000b7          	lui	ra,0xd00
   152e8:	00000013          	nop
   152ec:	00b00137          	lui	sp,0xb00
   152f0:	0220b1b3          	mulhu	gp,ra,sp
   152f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   152f8:	00200293          	li	t0,2
   152fc:	fe5214e3          	bne	tp,t0,152e4 <test_17+0x4>
   15300:	00009eb7          	lui	t4,0x9
   15304:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15308:	01100e13          	li	t3,17
   1530c:	1fd19463          	bne	gp,t4,154f4 <fail>

00015310 <test_18>:
   15310:	00000213          	li	tp,0
   15314:	00e000b7          	lui	ra,0xe00
   15318:	00000013          	nop
   1531c:	00b00137          	lui	sp,0xb00
   15320:	00000013          	nop
   15324:	0220b1b3          	mulhu	gp,ra,sp
   15328:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1532c:	00200293          	li	t0,2
   15330:	fe5212e3          	bne	tp,t0,15314 <test_18+0x4>
   15334:	0000aeb7          	lui	t4,0xa
   15338:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1533c:	01200e13          	li	t3,18
   15340:	1bd19a63          	bne	gp,t4,154f4 <fail>

00015344 <test_19>:
   15344:	00000213          	li	tp,0
   15348:	00f000b7          	lui	ra,0xf00
   1534c:	00000013          	nop
   15350:	00000013          	nop
   15354:	00b00137          	lui	sp,0xb00
   15358:	0220b1b3          	mulhu	gp,ra,sp
   1535c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15360:	00200293          	li	t0,2
   15364:	fe5212e3          	bne	tp,t0,15348 <test_19+0x4>
   15368:	0000aeb7          	lui	t4,0xa
   1536c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15370:	01300e13          	li	t3,19
   15374:	19d19063          	bne	gp,t4,154f4 <fail>

00015378 <test_20>:
   15378:	00000213          	li	tp,0
   1537c:	00b00137          	lui	sp,0xb00
   15380:	00d000b7          	lui	ra,0xd00
   15384:	0220b1b3          	mulhu	gp,ra,sp
   15388:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1538c:	00200293          	li	t0,2
   15390:	fe5216e3          	bne	tp,t0,1537c <test_20+0x4>
   15394:	00009eb7          	lui	t4,0x9
   15398:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1539c:	01400e13          	li	t3,20
   153a0:	15d19a63          	bne	gp,t4,154f4 <fail>

000153a4 <test_21>:
   153a4:	00000213          	li	tp,0
   153a8:	00b00137          	lui	sp,0xb00
   153ac:	00e000b7          	lui	ra,0xe00
   153b0:	00000013          	nop
   153b4:	0220b1b3          	mulhu	gp,ra,sp
   153b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153bc:	00200293          	li	t0,2
   153c0:	fe5214e3          	bne	tp,t0,153a8 <test_21+0x4>
   153c4:	0000aeb7          	lui	t4,0xa
   153c8:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   153cc:	01500e13          	li	t3,21
   153d0:	13d19263          	bne	gp,t4,154f4 <fail>

000153d4 <test_22>:
   153d4:	00000213          	li	tp,0
   153d8:	00b00137          	lui	sp,0xb00
   153dc:	00f000b7          	lui	ra,0xf00
   153e0:	00000013          	nop
   153e4:	00000013          	nop
   153e8:	0220b1b3          	mulhu	gp,ra,sp
   153ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153f0:	00200293          	li	t0,2
   153f4:	fe5212e3          	bne	tp,t0,153d8 <test_22+0x4>
   153f8:	0000aeb7          	lui	t4,0xa
   153fc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15400:	01600e13          	li	t3,22
   15404:	0fd19863          	bne	gp,t4,154f4 <fail>

00015408 <test_23>:
   15408:	00000213          	li	tp,0
   1540c:	00b00137          	lui	sp,0xb00
   15410:	00000013          	nop
   15414:	00d000b7          	lui	ra,0xd00
   15418:	0220b1b3          	mulhu	gp,ra,sp
   1541c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15420:	00200293          	li	t0,2
   15424:	fe5214e3          	bne	tp,t0,1540c <test_23+0x4>
   15428:	00009eb7          	lui	t4,0x9
   1542c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15430:	01700e13          	li	t3,23
   15434:	0dd19063          	bne	gp,t4,154f4 <fail>

00015438 <test_24>:
   15438:	00000213          	li	tp,0
   1543c:	00b00137          	lui	sp,0xb00
   15440:	00000013          	nop
   15444:	00e000b7          	lui	ra,0xe00
   15448:	00000013          	nop
   1544c:	0220b1b3          	mulhu	gp,ra,sp
   15450:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15454:	00200293          	li	t0,2
   15458:	fe5212e3          	bne	tp,t0,1543c <test_24+0x4>
   1545c:	0000aeb7          	lui	t4,0xa
   15460:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15464:	01800e13          	li	t3,24
   15468:	09d19663          	bne	gp,t4,154f4 <fail>

0001546c <test_25>:
   1546c:	00000213          	li	tp,0
   15470:	00b00137          	lui	sp,0xb00
   15474:	00000013          	nop
   15478:	00000013          	nop
   1547c:	00f000b7          	lui	ra,0xf00
   15480:	0220b1b3          	mulhu	gp,ra,sp
   15484:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15488:	00200293          	li	t0,2
   1548c:	fe5212e3          	bne	tp,t0,15470 <test_25+0x4>
   15490:	0000aeb7          	lui	t4,0xa
   15494:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15498:	01900e13          	li	t3,25
   1549c:	05d19c63          	bne	gp,t4,154f4 <fail>

000154a0 <test_26>:
   154a0:	7c0000b7          	lui	ra,0x7c000
   154a4:	02103133          	mulhu	sp,zero,ra
   154a8:	00000e93          	li	t4,0
   154ac:	01a00e13          	li	t3,26
   154b0:	05d11263          	bne	sp,t4,154f4 <fail>

000154b4 <test_27>:
   154b4:	800000b7          	lui	ra,0x80000
   154b8:	0200b133          	mulhu	sp,ra,zero
   154bc:	00000e93          	li	t4,0
   154c0:	01b00e13          	li	t3,27
   154c4:	03d11863          	bne	sp,t4,154f4 <fail>

000154c8 <test_28>:
   154c8:	020030b3          	mulhu	ra,zero,zero
   154cc:	00000e93          	li	t4,0
   154d0:	01c00e13          	li	t3,28
   154d4:	03d09063          	bne	ra,t4,154f4 <fail>

000154d8 <test_29>:
   154d8:	021000b7          	lui	ra,0x2100
   154dc:	02200137          	lui	sp,0x2200
   154e0:	0220b033          	mulhu	zero,ra,sp
   154e4:	00000e93          	li	t4,0
   154e8:	01d00e13          	li	t3,29
   154ec:	01d01463          	bne	zero,t4,154f4 <fail>
   154f0:	05c01463          	bne	zero,t3,15538 <pass>

000154f4 <fail>:
   154f4:	0ff00513          	li	a0,255

000154f8 <.delay_fail>:
   154f8:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   154fc:	fe051ee3          	bnez	a0,154f8 <.delay_fail>
   15500:	02000537          	lui	a0,0x2000
   15504:	04500593          	li	a1,69
   15508:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1550c:	05200613          	li	a2,82
   15510:	00c52023          	sw	a2,0(a0)
   15514:	00c52023          	sw	a2,0(a0)
   15518:	04f00693          	li	a3,79
   1551c:	00d52023          	sw	a3,0(a0)
   15520:	00c52023          	sw	a2,0(a0)
   15524:	00d00713          	li	a4,13
   15528:	00e52023          	sw	a4,0(a0)
   1552c:	00a00793          	li	a5,10
   15530:	00f52023          	sw	a5,0(a0)
   15534:	c39fa06f          	j	1016c <mulhu_ret>

00015538 <pass>:
   15538:	0ff00513          	li	a0,255

0001553c <.delay_ok>:
   1553c:	fff50513          	addi	a0,a0,-1
   15540:	fe051ee3          	bnez	a0,1553c <.delay_ok>
   15544:	02000537          	lui	a0,0x2000
   15548:	04f00593          	li	a1,79
   1554c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   15550:	04b00613          	li	a2,75
   15554:	00c52023          	sw	a2,0(a0)
   15558:	00d00693          	li	a3,13
   1555c:	00d52023          	sw	a3,0(a0)
   15560:	00a00713          	li	a4,10
   15564:	00e52023          	sw	a4,0(a0)
   15568:	c05fa06f          	j	1016c <mulhu_ret>

0001556c <slti>:
   1556c:	0ff00513          	li	a0,255

00015570 <.delay_pr>:
   15570:	fff50513          	addi	a0,a0,-1
   15574:	fe051ee3          	bnez	a0,15570 <.delay_pr>
   15578:	00015537          	lui	a0,0x15
   1557c:	59850513          	addi	a0,a0,1432 # 15598 <.test_name>
   15580:	02000637          	lui	a2,0x2000

00015584 <.prname_next>:
   15584:	00050583          	lb	a1,0(a0)
   15588:	00058c63          	beqz	a1,155a0 <.prname_done>
   1558c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   15590:	00150513          	addi	a0,a0,1
   15594:	ff1ff06f          	j	15584 <.prname_next>

00015598 <.test_name>:
   15598:	69746c73          	csrrsi	s8,0x697,8
   1559c:	0000                	unimp
	...

000155a0 <.prname_done>:
   155a0:	02e00593          	li	a1,46
   155a4:	00b62023          	sw	a1,0(a2)
   155a8:	00b62023          	sw	a1,0(a2)

000155ac <test_2>:
   155ac:	00000093          	li	ra,0
   155b0:	0000a193          	slti	gp,ra,0
   155b4:	00000e93          	li	t4,0
   155b8:	00200e13          	li	t3,2
   155bc:	27d19263          	bne	gp,t4,15820 <fail>

000155c0 <test_3>:
   155c0:	00100093          	li	ra,1
   155c4:	0010a193          	slti	gp,ra,1
   155c8:	00000e93          	li	t4,0
   155cc:	00300e13          	li	t3,3
   155d0:	25d19863          	bne	gp,t4,15820 <fail>

000155d4 <test_4>:
   155d4:	00300093          	li	ra,3
   155d8:	0070a193          	slti	gp,ra,7
   155dc:	00100e93          	li	t4,1
   155e0:	00400e13          	li	t3,4
   155e4:	23d19e63          	bne	gp,t4,15820 <fail>

000155e8 <test_5>:
   155e8:	00700093          	li	ra,7
   155ec:	0030a193          	slti	gp,ra,3
   155f0:	00000e93          	li	t4,0
   155f4:	00500e13          	li	t3,5
   155f8:	23d19463          	bne	gp,t4,15820 <fail>

000155fc <test_6>:
   155fc:	00000093          	li	ra,0
   15600:	8000a193          	slti	gp,ra,-2048
   15604:	00000e93          	li	t4,0
   15608:	00600e13          	li	t3,6
   1560c:	21d19a63          	bne	gp,t4,15820 <fail>

00015610 <test_7>:
   15610:	800000b7          	lui	ra,0x80000
   15614:	0000a193          	slti	gp,ra,0
   15618:	00100e93          	li	t4,1
   1561c:	00700e13          	li	t3,7
   15620:	21d19063          	bne	gp,t4,15820 <fail>

00015624 <test_8>:
   15624:	800000b7          	lui	ra,0x80000
   15628:	8000a193          	slti	gp,ra,-2048
   1562c:	00100e93          	li	t4,1
   15630:	00800e13          	li	t3,8
   15634:	1fd19663          	bne	gp,t4,15820 <fail>

00015638 <test_9>:
   15638:	00000093          	li	ra,0
   1563c:	7ff0a193          	slti	gp,ra,2047
   15640:	00100e93          	li	t4,1
   15644:	00900e13          	li	t3,9
   15648:	1dd19c63          	bne	gp,t4,15820 <fail>

0001564c <test_10>:
   1564c:	800000b7          	lui	ra,0x80000
   15650:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15654:	0000a193          	slti	gp,ra,0
   15658:	00000e93          	li	t4,0
   1565c:	00a00e13          	li	t3,10
   15660:	1dd19063          	bne	gp,t4,15820 <fail>

00015664 <test_11>:
   15664:	800000b7          	lui	ra,0x80000
   15668:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1566c:	7ff0a193          	slti	gp,ra,2047
   15670:	00000e93          	li	t4,0
   15674:	00b00e13          	li	t3,11
   15678:	1bd19463          	bne	gp,t4,15820 <fail>

0001567c <test_12>:
   1567c:	800000b7          	lui	ra,0x80000
   15680:	7ff0a193          	slti	gp,ra,2047
   15684:	00100e93          	li	t4,1
   15688:	00c00e13          	li	t3,12
   1568c:	19d19a63          	bne	gp,t4,15820 <fail>

00015690 <test_13>:
   15690:	800000b7          	lui	ra,0x80000
   15694:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15698:	8000a193          	slti	gp,ra,-2048
   1569c:	00000e93          	li	t4,0
   156a0:	00d00e13          	li	t3,13
   156a4:	17d19e63          	bne	gp,t4,15820 <fail>

000156a8 <test_14>:
   156a8:	00000093          	li	ra,0
   156ac:	fff0a193          	slti	gp,ra,-1
   156b0:	00000e93          	li	t4,0
   156b4:	00e00e13          	li	t3,14
   156b8:	17d19463          	bne	gp,t4,15820 <fail>

000156bc <test_15>:
   156bc:	fff00093          	li	ra,-1
   156c0:	0010a193          	slti	gp,ra,1
   156c4:	00100e93          	li	t4,1
   156c8:	00f00e13          	li	t3,15
   156cc:	15d19a63          	bne	gp,t4,15820 <fail>

000156d0 <test_16>:
   156d0:	fff00093          	li	ra,-1
   156d4:	fff0a193          	slti	gp,ra,-1
   156d8:	00000e93          	li	t4,0
   156dc:	01000e13          	li	t3,16
   156e0:	15d19063          	bne	gp,t4,15820 <fail>

000156e4 <test_17>:
   156e4:	00b00093          	li	ra,11
   156e8:	00d0b093          	sltiu	ra,ra,13
   156ec:	00100e93          	li	t4,1
   156f0:	01100e13          	li	t3,17
   156f4:	13d09663          	bne	ra,t4,15820 <fail>

000156f8 <test_18>:
   156f8:	00000213          	li	tp,0
   156fc:	00f00093          	li	ra,15
   15700:	00a0a193          	slti	gp,ra,10
   15704:	00018313          	mv	t1,gp
   15708:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1570c:	00200293          	li	t0,2
   15710:	fe5216e3          	bne	tp,t0,156fc <test_18+0x4>
   15714:	00000e93          	li	t4,0
   15718:	01200e13          	li	t3,18
   1571c:	11d31263          	bne	t1,t4,15820 <fail>

00015720 <test_19>:
   15720:	00000213          	li	tp,0
   15724:	00a00093          	li	ra,10
   15728:	0100a193          	slti	gp,ra,16
   1572c:	00000013          	nop
   15730:	00018313          	mv	t1,gp
   15734:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15738:	00200293          	li	t0,2
   1573c:	fe5214e3          	bne	tp,t0,15724 <test_19+0x4>
   15740:	00100e93          	li	t4,1
   15744:	01300e13          	li	t3,19
   15748:	0dd31c63          	bne	t1,t4,15820 <fail>

0001574c <test_20>:
   1574c:	00000213          	li	tp,0
   15750:	01000093          	li	ra,16
   15754:	0090a193          	slti	gp,ra,9
   15758:	00000013          	nop
   1575c:	00000013          	nop
   15760:	00018313          	mv	t1,gp
   15764:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15768:	00200293          	li	t0,2
   1576c:	fe5212e3          	bne	tp,t0,15750 <test_20+0x4>
   15770:	00000e93          	li	t4,0
   15774:	01400e13          	li	t3,20
   15778:	0bd31463          	bne	t1,t4,15820 <fail>

0001577c <test_21>:
   1577c:	00000213          	li	tp,0
   15780:	00b00093          	li	ra,11
   15784:	00f0a193          	slti	gp,ra,15
   15788:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1578c:	00200293          	li	t0,2
   15790:	fe5218e3          	bne	tp,t0,15780 <test_21+0x4>
   15794:	00100e93          	li	t4,1
   15798:	01500e13          	li	t3,21
   1579c:	09d19263          	bne	gp,t4,15820 <fail>

000157a0 <test_22>:
   157a0:	00000213          	li	tp,0
   157a4:	01100093          	li	ra,17
   157a8:	00000013          	nop
   157ac:	0080a193          	slti	gp,ra,8
   157b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   157b4:	00200293          	li	t0,2
   157b8:	fe5216e3          	bne	tp,t0,157a4 <test_22+0x4>
   157bc:	00000e93          	li	t4,0
   157c0:	01600e13          	li	t3,22
   157c4:	05d19e63          	bne	gp,t4,15820 <fail>

000157c8 <test_23>:
   157c8:	00000213          	li	tp,0
   157cc:	00c00093          	li	ra,12
   157d0:	00000013          	nop
   157d4:	00000013          	nop
   157d8:	00e0a193          	slti	gp,ra,14
   157dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   157e0:	00200293          	li	t0,2
   157e4:	fe5214e3          	bne	tp,t0,157cc <test_23+0x4>
   157e8:	00100e93          	li	t4,1
   157ec:	01700e13          	li	t3,23
   157f0:	03d19863          	bne	gp,t4,15820 <fail>

000157f4 <test_24>:
   157f4:	fff02093          	slti	ra,zero,-1
   157f8:	00000e93          	li	t4,0
   157fc:	01800e13          	li	t3,24
   15800:	03d09063          	bne	ra,t4,15820 <fail>

00015804 <test_25>:
   15804:	00ff00b7          	lui	ra,0xff0
   15808:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   1580c:	fff0a013          	slti	zero,ra,-1
   15810:	00000e93          	li	t4,0
   15814:	01900e13          	li	t3,25
   15818:	01d01463          	bne	zero,t4,15820 <fail>
   1581c:	05c01463          	bne	zero,t3,15864 <pass>

00015820 <fail>:
   15820:	0ff00513          	li	a0,255

00015824 <.delay_fail>:
   15824:	fff50513          	addi	a0,a0,-1
   15828:	fe051ee3          	bnez	a0,15824 <.delay_fail>
   1582c:	02000537          	lui	a0,0x2000
   15830:	04500593          	li	a1,69
   15834:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   15838:	05200613          	li	a2,82
   1583c:	00c52023          	sw	a2,0(a0)
   15840:	00c52023          	sw	a2,0(a0)
   15844:	04f00693          	li	a3,79
   15848:	00d52023          	sw	a3,0(a0)
   1584c:	00c52023          	sw	a2,0(a0)
   15850:	00d00713          	li	a4,13
   15854:	00e52023          	sw	a4,0(a0)
   15858:	00a00793          	li	a5,10
   1585c:	00f52023          	sw	a5,0(a0)
   15860:	8c5fa06f          	j	10124 <slti_ret>

00015864 <pass>:
   15864:	0ff00513          	li	a0,255

00015868 <.delay_ok>:
   15868:	fff50513          	addi	a0,a0,-1
   1586c:	fe051ee3          	bnez	a0,15868 <.delay_ok>
   15870:	02000537          	lui	a0,0x2000
   15874:	04f00593          	li	a1,79
   15878:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1587c:	04b00613          	li	a2,75
   15880:	00c52023          	sw	a2,0(a0)
   15884:	00d00693          	li	a3,13
   15888:	00d52023          	sw	a3,0(a0)
   1588c:	00a00713          	li	a4,10
   15890:	00e52023          	sw	a4,0(a0)
   15894:	891fa06f          	j	10124 <slti_ret>

00015898 <rem>:
   15898:	0ff00513          	li	a0,255

0001589c <.delay_pr>:
   1589c:	fff50513          	addi	a0,a0,-1
   158a0:	fe051ee3          	bnez	a0,1589c <.delay_pr>
   158a4:	00016537          	lui	a0,0x16
   158a8:	8c450513          	addi	a0,a0,-1852 # 158c4 <.test_name>
   158ac:	02000637          	lui	a2,0x2000

000158b0 <.prname_next>:
   158b0:	00050583          	lb	a1,0(a0)
   158b4:	00058a63          	beqz	a1,158c8 <.prname_done>
   158b8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   158bc:	00150513          	addi	a0,a0,1
   158c0:	ff1ff06f          	j	158b0 <.prname_next>

000158c4 <.test_name>:
   158c4:	6572                	flw	fa0,28(sp)
   158c6:	006d                	c.nop	27

000158c8 <.prname_done>:
   158c8:	02e00593          	li	a1,46
   158cc:	00b62023          	sw	a1,0(a2)
   158d0:	00b62023          	sw	a1,0(a2)

000158d4 <test_2>:
   158d4:	01400093          	li	ra,20
   158d8:	00600113          	li	sp,6
   158dc:	0220e1b3          	rem	gp,ra,sp
   158e0:	00200e93          	li	t4,2
   158e4:	00200e13          	li	t3,2
   158e8:	0dd19463          	bne	gp,t4,159b0 <fail>

000158ec <test_3>:
   158ec:	fec00093          	li	ra,-20
   158f0:	00600113          	li	sp,6
   158f4:	0220e1b3          	rem	gp,ra,sp
   158f8:	ffe00e93          	li	t4,-2
   158fc:	00300e13          	li	t3,3
   15900:	0bd19863          	bne	gp,t4,159b0 <fail>

00015904 <test_4>:
   15904:	01400093          	li	ra,20
   15908:	ffa00113          	li	sp,-6
   1590c:	0220e1b3          	rem	gp,ra,sp
   15910:	00200e93          	li	t4,2
   15914:	00400e13          	li	t3,4
   15918:	09d19c63          	bne	gp,t4,159b0 <fail>

0001591c <test_5>:
   1591c:	fec00093          	li	ra,-20
   15920:	ffa00113          	li	sp,-6
   15924:	0220e1b3          	rem	gp,ra,sp
   15928:	ffe00e93          	li	t4,-2
   1592c:	00500e13          	li	t3,5
   15930:	09d19063          	bne	gp,t4,159b0 <fail>

00015934 <test_6>:
   15934:	800000b7          	lui	ra,0x80000
   15938:	00100113          	li	sp,1
   1593c:	0220e1b3          	rem	gp,ra,sp
   15940:	00000e93          	li	t4,0
   15944:	00600e13          	li	t3,6
   15948:	07d19463          	bne	gp,t4,159b0 <fail>

0001594c <test_7>:
   1594c:	800000b7          	lui	ra,0x80000
   15950:	fff00113          	li	sp,-1
   15954:	0220e1b3          	rem	gp,ra,sp
   15958:	00000e93          	li	t4,0
   1595c:	00700e13          	li	t3,7
   15960:	05d19863          	bne	gp,t4,159b0 <fail>

00015964 <test_8>:
   15964:	800000b7          	lui	ra,0x80000
   15968:	00000113          	li	sp,0
   1596c:	0220e1b3          	rem	gp,ra,sp
   15970:	80000eb7          	lui	t4,0x80000
   15974:	00800e13          	li	t3,8
   15978:	03d19c63          	bne	gp,t4,159b0 <fail>

0001597c <test_9>:
   1597c:	00100093          	li	ra,1
   15980:	00000113          	li	sp,0
   15984:	0220e1b3          	rem	gp,ra,sp
   15988:	00100e93          	li	t4,1
   1598c:	00900e13          	li	t3,9
   15990:	03d19063          	bne	gp,t4,159b0 <fail>

00015994 <test_10>:
   15994:	00000093          	li	ra,0
   15998:	00000113          	li	sp,0
   1599c:	0220e1b3          	rem	gp,ra,sp
   159a0:	00000e93          	li	t4,0
   159a4:	00a00e13          	li	t3,10
   159a8:	01d19463          	bne	gp,t4,159b0 <fail>
   159ac:	05c01463          	bne	zero,t3,159f4 <pass>

000159b0 <fail>:
   159b0:	0ff00513          	li	a0,255

000159b4 <.delay_fail>:
   159b4:	fff50513          	addi	a0,a0,-1
   159b8:	fe051ee3          	bnez	a0,159b4 <.delay_fail>
   159bc:	02000537          	lui	a0,0x2000
   159c0:	04500593          	li	a1,69
   159c4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   159c8:	05200613          	li	a2,82
   159cc:	00c52023          	sw	a2,0(a0)
   159d0:	00c52023          	sw	a2,0(a0)
   159d4:	04f00693          	li	a3,79
   159d8:	00d52023          	sw	a3,0(a0)
   159dc:	00c52023          	sw	a2,0(a0)
   159e0:	00d00713          	li	a4,13
   159e4:	00e52023          	sw	a4,0(a0)
   159e8:	00a00793          	li	a5,10
   159ec:	00f52023          	sw	a5,0(a0)
   159f0:	f8cfa06f          	j	1017c <rem_ret>

000159f4 <pass>:
   159f4:	0ff00513          	li	a0,255

000159f8 <.delay_ok>:
   159f8:	fff50513          	addi	a0,a0,-1
   159fc:	fe051ee3          	bnez	a0,159f8 <.delay_ok>
   15a00:	02000537          	lui	a0,0x2000
   15a04:	04f00593          	li	a1,79
   15a08:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   15a0c:	04b00613          	li	a2,75
   15a10:	00c52023          	sw	a2,0(a0)
   15a14:	00d00693          	li	a3,13
   15a18:	00d52023          	sw	a3,0(a0)
   15a1c:	00a00713          	li	a4,10
   15a20:	00e52023          	sw	a4,0(a0)
   15a24:	f58fa06f          	j	1017c <rem_ret>

00015a28 <slt>:
   15a28:	0ff00513          	li	a0,255

00015a2c <.delay_pr>:
   15a2c:	fff50513          	addi	a0,a0,-1
   15a30:	fe051ee3          	bnez	a0,15a2c <.delay_pr>
   15a34:	00016537          	lui	a0,0x16
   15a38:	a5450513          	addi	a0,a0,-1452 # 15a54 <.test_name>
   15a3c:	02000637          	lui	a2,0x2000

00015a40 <.prname_next>:
   15a40:	00050583          	lb	a1,0(a0)
   15a44:	00058a63          	beqz	a1,15a58 <.prname_done>
   15a48:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   15a4c:	00150513          	addi	a0,a0,1
   15a50:	ff1ff06f          	j	15a40 <.prname_next>

00015a54 <.test_name>:
   15a54:	00746c73          	csrrsi	s8,0x7,8

00015a58 <.prname_done>:
   15a58:	02e00593          	li	a1,46
   15a5c:	00b62023          	sw	a1,0(a2)
   15a60:	00b62023          	sw	a1,0(a2)

00015a64 <test_2>:
   15a64:	00000093          	li	ra,0
   15a68:	00000113          	li	sp,0
   15a6c:	0020a1b3          	slt	gp,ra,sp
   15a70:	00000e93          	li	t4,0
   15a74:	00200e13          	li	t3,2
   15a78:	4bd19a63          	bne	gp,t4,15f2c <fail>

00015a7c <test_3>:
   15a7c:	00100093          	li	ra,1
   15a80:	00100113          	li	sp,1
   15a84:	0020a1b3          	slt	gp,ra,sp
   15a88:	00000e93          	li	t4,0
   15a8c:	00300e13          	li	t3,3
   15a90:	49d19e63          	bne	gp,t4,15f2c <fail>

00015a94 <test_4>:
   15a94:	00300093          	li	ra,3
   15a98:	00700113          	li	sp,7
   15a9c:	0020a1b3          	slt	gp,ra,sp
   15aa0:	00100e93          	li	t4,1
   15aa4:	00400e13          	li	t3,4
   15aa8:	49d19263          	bne	gp,t4,15f2c <fail>

00015aac <test_5>:
   15aac:	00700093          	li	ra,7
   15ab0:	00300113          	li	sp,3
   15ab4:	0020a1b3          	slt	gp,ra,sp
   15ab8:	00000e93          	li	t4,0
   15abc:	00500e13          	li	t3,5
   15ac0:	47d19663          	bne	gp,t4,15f2c <fail>

00015ac4 <test_6>:
   15ac4:	00000093          	li	ra,0
   15ac8:	ffff8137          	lui	sp,0xffff8
   15acc:	0020a1b3          	slt	gp,ra,sp
   15ad0:	00000e93          	li	t4,0
   15ad4:	00600e13          	li	t3,6
   15ad8:	45d19a63          	bne	gp,t4,15f2c <fail>

00015adc <test_7>:
   15adc:	800000b7          	lui	ra,0x80000
   15ae0:	00000113          	li	sp,0
   15ae4:	0020a1b3          	slt	gp,ra,sp
   15ae8:	00100e93          	li	t4,1
   15aec:	00700e13          	li	t3,7
   15af0:	43d19e63          	bne	gp,t4,15f2c <fail>

00015af4 <test_8>:
   15af4:	800000b7          	lui	ra,0x80000
   15af8:	ffff8137          	lui	sp,0xffff8
   15afc:	0020a1b3          	slt	gp,ra,sp
   15b00:	00100e93          	li	t4,1
   15b04:	00800e13          	li	t3,8
   15b08:	43d19263          	bne	gp,t4,15f2c <fail>

00015b0c <test_9>:
   15b0c:	00000093          	li	ra,0
   15b10:	00008137          	lui	sp,0x8
   15b14:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15b18:	0020a1b3          	slt	gp,ra,sp
   15b1c:	00100e93          	li	t4,1
   15b20:	00900e13          	li	t3,9
   15b24:	41d19463          	bne	gp,t4,15f2c <fail>

00015b28 <test_10>:
   15b28:	800000b7          	lui	ra,0x80000
   15b2c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15b30:	00000113          	li	sp,0
   15b34:	0020a1b3          	slt	gp,ra,sp
   15b38:	00000e93          	li	t4,0
   15b3c:	00a00e13          	li	t3,10
   15b40:	3fd19663          	bne	gp,t4,15f2c <fail>

00015b44 <test_11>:
   15b44:	800000b7          	lui	ra,0x80000
   15b48:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15b4c:	00008137          	lui	sp,0x8
   15b50:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15b54:	0020a1b3          	slt	gp,ra,sp
   15b58:	00000e93          	li	t4,0
   15b5c:	00b00e13          	li	t3,11
   15b60:	3dd19663          	bne	gp,t4,15f2c <fail>

00015b64 <test_12>:
   15b64:	800000b7          	lui	ra,0x80000
   15b68:	00008137          	lui	sp,0x8
   15b6c:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15b70:	0020a1b3          	slt	gp,ra,sp
   15b74:	00100e93          	li	t4,1
   15b78:	00c00e13          	li	t3,12
   15b7c:	3bd19863          	bne	gp,t4,15f2c <fail>

00015b80 <test_13>:
   15b80:	800000b7          	lui	ra,0x80000
   15b84:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15b88:	ffff8137          	lui	sp,0xffff8
   15b8c:	0020a1b3          	slt	gp,ra,sp
   15b90:	00000e93          	li	t4,0
   15b94:	00d00e13          	li	t3,13
   15b98:	39d19a63          	bne	gp,t4,15f2c <fail>

00015b9c <test_14>:
   15b9c:	00000093          	li	ra,0
   15ba0:	fff00113          	li	sp,-1
   15ba4:	0020a1b3          	slt	gp,ra,sp
   15ba8:	00000e93          	li	t4,0
   15bac:	00e00e13          	li	t3,14
   15bb0:	37d19e63          	bne	gp,t4,15f2c <fail>

00015bb4 <test_15>:
   15bb4:	fff00093          	li	ra,-1
   15bb8:	00100113          	li	sp,1
   15bbc:	0020a1b3          	slt	gp,ra,sp
   15bc0:	00100e93          	li	t4,1
   15bc4:	00f00e13          	li	t3,15
   15bc8:	37d19263          	bne	gp,t4,15f2c <fail>

00015bcc <test_16>:
   15bcc:	fff00093          	li	ra,-1
   15bd0:	fff00113          	li	sp,-1
   15bd4:	0020a1b3          	slt	gp,ra,sp
   15bd8:	00000e93          	li	t4,0
   15bdc:	01000e13          	li	t3,16
   15be0:	35d19663          	bne	gp,t4,15f2c <fail>

00015be4 <test_17>:
   15be4:	00e00093          	li	ra,14
   15be8:	00d00113          	li	sp,13
   15bec:	0020a0b3          	slt	ra,ra,sp
   15bf0:	00000e93          	li	t4,0
   15bf4:	01100e13          	li	t3,17
   15bf8:	33d09a63          	bne	ra,t4,15f2c <fail>

00015bfc <test_18>:
   15bfc:	00b00093          	li	ra,11
   15c00:	00d00113          	li	sp,13
   15c04:	0020a133          	slt	sp,ra,sp
   15c08:	00100e93          	li	t4,1
   15c0c:	01200e13          	li	t3,18
   15c10:	31d11e63          	bne	sp,t4,15f2c <fail>

00015c14 <test_19>:
   15c14:	00d00093          	li	ra,13
   15c18:	0010a0b3          	slt	ra,ra,ra
   15c1c:	00000e93          	li	t4,0
   15c20:	01300e13          	li	t3,19
   15c24:	31d09463          	bne	ra,t4,15f2c <fail>

00015c28 <test_20>:
   15c28:	00000213          	li	tp,0
   15c2c:	00b00093          	li	ra,11
   15c30:	00d00113          	li	sp,13
   15c34:	0020a1b3          	slt	gp,ra,sp
   15c38:	00018313          	mv	t1,gp
   15c3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15c40:	00200293          	li	t0,2
   15c44:	fe5214e3          	bne	tp,t0,15c2c <test_20+0x4>
   15c48:	00100e93          	li	t4,1
   15c4c:	01400e13          	li	t3,20
   15c50:	2dd31e63          	bne	t1,t4,15f2c <fail>

00015c54 <test_21>:
   15c54:	00000213          	li	tp,0
   15c58:	00e00093          	li	ra,14
   15c5c:	00d00113          	li	sp,13
   15c60:	0020a1b3          	slt	gp,ra,sp
   15c64:	00000013          	nop
   15c68:	00018313          	mv	t1,gp
   15c6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15c70:	00200293          	li	t0,2
   15c74:	fe5212e3          	bne	tp,t0,15c58 <test_21+0x4>
   15c78:	00000e93          	li	t4,0
   15c7c:	01500e13          	li	t3,21
   15c80:	2bd31663          	bne	t1,t4,15f2c <fail>

00015c84 <test_22>:
   15c84:	00000213          	li	tp,0
   15c88:	00c00093          	li	ra,12
   15c8c:	00d00113          	li	sp,13
   15c90:	0020a1b3          	slt	gp,ra,sp
   15c94:	00000013          	nop
   15c98:	00000013          	nop
   15c9c:	00018313          	mv	t1,gp
   15ca0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ca4:	00200293          	li	t0,2
   15ca8:	fe5210e3          	bne	tp,t0,15c88 <test_22+0x4>
   15cac:	00100e93          	li	t4,1
   15cb0:	01600e13          	li	t3,22
   15cb4:	27d31c63          	bne	t1,t4,15f2c <fail>

00015cb8 <test_23>:
   15cb8:	00000213          	li	tp,0
   15cbc:	00e00093          	li	ra,14
   15cc0:	00d00113          	li	sp,13
   15cc4:	0020a1b3          	slt	gp,ra,sp
   15cc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ccc:	00200293          	li	t0,2
   15cd0:	fe5216e3          	bne	tp,t0,15cbc <test_23+0x4>
   15cd4:	00000e93          	li	t4,0
   15cd8:	01700e13          	li	t3,23
   15cdc:	25d19863          	bne	gp,t4,15f2c <fail>

00015ce0 <test_24>:
   15ce0:	00000213          	li	tp,0
   15ce4:	00b00093          	li	ra,11
   15ce8:	00d00113          	li	sp,13
   15cec:	00000013          	nop
   15cf0:	0020a1b3          	slt	gp,ra,sp
   15cf4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15cf8:	00200293          	li	t0,2
   15cfc:	fe5214e3          	bne	tp,t0,15ce4 <test_24+0x4>
   15d00:	00100e93          	li	t4,1
   15d04:	01800e13          	li	t3,24
   15d08:	23d19263          	bne	gp,t4,15f2c <fail>

00015d0c <test_25>:
   15d0c:	00000213          	li	tp,0
   15d10:	00f00093          	li	ra,15
   15d14:	00d00113          	li	sp,13
   15d18:	00000013          	nop
   15d1c:	00000013          	nop
   15d20:	0020a1b3          	slt	gp,ra,sp
   15d24:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d28:	00200293          	li	t0,2
   15d2c:	fe5212e3          	bne	tp,t0,15d10 <test_25+0x4>
   15d30:	00000e93          	li	t4,0
   15d34:	01900e13          	li	t3,25
   15d38:	1fd19a63          	bne	gp,t4,15f2c <fail>

00015d3c <test_26>:
   15d3c:	00000213          	li	tp,0
   15d40:	00a00093          	li	ra,10
   15d44:	00000013          	nop
   15d48:	00d00113          	li	sp,13
   15d4c:	0020a1b3          	slt	gp,ra,sp
   15d50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d54:	00200293          	li	t0,2
   15d58:	fe5214e3          	bne	tp,t0,15d40 <test_26+0x4>
   15d5c:	00100e93          	li	t4,1
   15d60:	01a00e13          	li	t3,26
   15d64:	1dd19463          	bne	gp,t4,15f2c <fail>

00015d68 <test_27>:
   15d68:	00000213          	li	tp,0
   15d6c:	01000093          	li	ra,16
   15d70:	00000013          	nop
   15d74:	00d00113          	li	sp,13
   15d78:	00000013          	nop
   15d7c:	0020a1b3          	slt	gp,ra,sp
   15d80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d84:	00200293          	li	t0,2
   15d88:	fe5212e3          	bne	tp,t0,15d6c <test_27+0x4>
   15d8c:	00000e93          	li	t4,0
   15d90:	01b00e13          	li	t3,27
   15d94:	19d19c63          	bne	gp,t4,15f2c <fail>

00015d98 <test_28>:
   15d98:	00000213          	li	tp,0
   15d9c:	00900093          	li	ra,9
   15da0:	00000013          	nop
   15da4:	00000013          	nop
   15da8:	00d00113          	li	sp,13
   15dac:	0020a1b3          	slt	gp,ra,sp
   15db0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15db4:	00200293          	li	t0,2
   15db8:	fe5212e3          	bne	tp,t0,15d9c <test_28+0x4>
   15dbc:	00100e93          	li	t4,1
   15dc0:	01c00e13          	li	t3,28
   15dc4:	17d19463          	bne	gp,t4,15f2c <fail>

00015dc8 <test_29>:
   15dc8:	00000213          	li	tp,0
   15dcc:	00d00113          	li	sp,13
   15dd0:	01100093          	li	ra,17
   15dd4:	0020a1b3          	slt	gp,ra,sp
   15dd8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ddc:	00200293          	li	t0,2
   15de0:	fe5216e3          	bne	tp,t0,15dcc <test_29+0x4>
   15de4:	00000e93          	li	t4,0
   15de8:	01d00e13          	li	t3,29
   15dec:	15d19063          	bne	gp,t4,15f2c <fail>

00015df0 <test_30>:
   15df0:	00000213          	li	tp,0
   15df4:	00d00113          	li	sp,13
   15df8:	00800093          	li	ra,8
   15dfc:	00000013          	nop
   15e00:	0020a1b3          	slt	gp,ra,sp
   15e04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e08:	00200293          	li	t0,2
   15e0c:	fe5214e3          	bne	tp,t0,15df4 <test_30+0x4>
   15e10:	00100e93          	li	t4,1
   15e14:	01e00e13          	li	t3,30
   15e18:	11d19a63          	bne	gp,t4,15f2c <fail>

00015e1c <test_31>:
   15e1c:	00000213          	li	tp,0
   15e20:	00d00113          	li	sp,13
   15e24:	01200093          	li	ra,18
   15e28:	00000013          	nop
   15e2c:	00000013          	nop
   15e30:	0020a1b3          	slt	gp,ra,sp
   15e34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e38:	00200293          	li	t0,2
   15e3c:	fe5212e3          	bne	tp,t0,15e20 <test_31+0x4>
   15e40:	00000e93          	li	t4,0
   15e44:	01f00e13          	li	t3,31
   15e48:	0fd19263          	bne	gp,t4,15f2c <fail>

00015e4c <test_32>:
   15e4c:	00000213          	li	tp,0
   15e50:	00d00113          	li	sp,13
   15e54:	00000013          	nop
   15e58:	00700093          	li	ra,7
   15e5c:	0020a1b3          	slt	gp,ra,sp
   15e60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e64:	00200293          	li	t0,2
   15e68:	fe5214e3          	bne	tp,t0,15e50 <test_32+0x4>
   15e6c:	00100e93          	li	t4,1
   15e70:	02000e13          	li	t3,32
   15e74:	0bd19c63          	bne	gp,t4,15f2c <fail>

00015e78 <test_33>:
   15e78:	00000213          	li	tp,0
   15e7c:	00d00113          	li	sp,13
   15e80:	00000013          	nop
   15e84:	01300093          	li	ra,19
   15e88:	00000013          	nop
   15e8c:	0020a1b3          	slt	gp,ra,sp
   15e90:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e94:	00200293          	li	t0,2
   15e98:	fe5212e3          	bne	tp,t0,15e7c <test_33+0x4>
   15e9c:	00000e93          	li	t4,0
   15ea0:	02100e13          	li	t3,33
   15ea4:	09d19463          	bne	gp,t4,15f2c <fail>

00015ea8 <test_34>:
   15ea8:	00000213          	li	tp,0
   15eac:	00d00113          	li	sp,13
   15eb0:	00000013          	nop
   15eb4:	00000013          	nop
   15eb8:	00600093          	li	ra,6
   15ebc:	0020a1b3          	slt	gp,ra,sp
   15ec0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ec4:	00200293          	li	t0,2
   15ec8:	fe5212e3          	bne	tp,t0,15eac <test_34+0x4>
   15ecc:	00100e93          	li	t4,1
   15ed0:	02200e13          	li	t3,34
   15ed4:	05d19c63          	bne	gp,t4,15f2c <fail>

00015ed8 <test_35>:
   15ed8:	fff00093          	li	ra,-1
   15edc:	00102133          	sgtz	sp,ra
   15ee0:	00000e93          	li	t4,0
   15ee4:	02300e13          	li	t3,35
   15ee8:	05d11263          	bne	sp,t4,15f2c <fail>

00015eec <test_36>:
   15eec:	fff00093          	li	ra,-1
   15ef0:	0000a133          	sltz	sp,ra
   15ef4:	00100e93          	li	t4,1
   15ef8:	02400e13          	li	t3,36
   15efc:	03d11863          	bne	sp,t4,15f2c <fail>

00015f00 <test_37>:
   15f00:	000020b3          	sltz	ra,zero
   15f04:	00000e93          	li	t4,0
   15f08:	02500e13          	li	t3,37
   15f0c:	03d09063          	bne	ra,t4,15f2c <fail>

00015f10 <test_38>:
   15f10:	01000093          	li	ra,16
   15f14:	01e00113          	li	sp,30
   15f18:	0020a033          	slt	zero,ra,sp
   15f1c:	00000e93          	li	t4,0
   15f20:	02600e13          	li	t3,38
   15f24:	01d01463          	bne	zero,t4,15f2c <fail>
   15f28:	05c01463          	bne	zero,t3,15f70 <pass>

00015f2c <fail>:
   15f2c:	0ff00513          	li	a0,255

00015f30 <.delay_fail>:
   15f30:	fff50513          	addi	a0,a0,-1
   15f34:	fe051ee3          	bnez	a0,15f30 <.delay_fail>
   15f38:	02000537          	lui	a0,0x2000
   15f3c:	04500593          	li	a1,69
   15f40:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   15f44:	05200613          	li	a2,82
   15f48:	00c52023          	sw	a2,0(a0)
   15f4c:	00c52023          	sw	a2,0(a0)
   15f50:	04f00693          	li	a3,79
   15f54:	00d52023          	sw	a3,0(a0)
   15f58:	00c52023          	sw	a2,0(a0)
   15f5c:	00d00713          	li	a4,13
   15f60:	00e52023          	sw	a4,0(a0)
   15f64:	00a00793          	li	a5,10
   15f68:	00f52023          	sw	a5,0(a0)
   15f6c:	9e0fa06f          	j	1014c <slt_ret>

00015f70 <pass>:
   15f70:	0ff00513          	li	a0,255

00015f74 <.delay_ok>:
   15f74:	fff50513          	addi	a0,a0,-1
   15f78:	fe051ee3          	bnez	a0,15f74 <.delay_ok>
   15f7c:	02000537          	lui	a0,0x2000
   15f80:	04f00593          	li	a1,79
   15f84:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   15f88:	04b00613          	li	a2,75
   15f8c:	00c52023          	sw	a2,0(a0)
   15f90:	00d00693          	li	a3,13
   15f94:	00d52023          	sw	a3,0(a0)
   15f98:	00a00713          	li	a4,10
   15f9c:	00e52023          	sw	a4,0(a0)
   15fa0:	9acfa06f          	j	1014c <slt_ret>

00015fa4 <lbu>:
   15fa4:	0ff00513          	li	a0,255

00015fa8 <.delay_pr>:
   15fa8:	fff50513          	addi	a0,a0,-1
   15fac:	fe051ee3          	bnez	a0,15fa8 <.delay_pr>
   15fb0:	00016537          	lui	a0,0x16
   15fb4:	fd050513          	addi	a0,a0,-48 # 15fd0 <.test_name>
   15fb8:	02000637          	lui	a2,0x2000

00015fbc <.prname_next>:
   15fbc:	00050583          	lb	a1,0(a0)
   15fc0:	00058a63          	beqz	a1,15fd4 <.prname_done>
   15fc4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   15fc8:	00150513          	addi	a0,a0,1
   15fcc:	ff1ff06f          	j	15fbc <.prname_next>

00015fd0 <.test_name>:
   15fd0:	626c                	flw	fa1,68(a2)
   15fd2:	0075                	c.nop	29

00015fd4 <.prname_done>:
   15fd4:	02e00593          	li	a1,46
   15fd8:	00b62023          	sw	a1,0(a2)
   15fdc:	00b62023          	sw	a1,0(a2)

00015fe0 <test_2>:
   15fe0:	7ffea097          	auipc	ra,0x7ffea
   15fe4:	06008093          	addi	ra,ra,96 # 80000040 <tdat>
   15fe8:	0000c183          	lbu	gp,0(ra)
   15fec:	0ff00e93          	li	t4,255
   15ff0:	00200e13          	li	t3,2
   15ff4:	23d19c63          	bne	gp,t4,1622c <fail>

00015ff8 <test_3>:
   15ff8:	7ffea097          	auipc	ra,0x7ffea
   15ffc:	04808093          	addi	ra,ra,72 # 80000040 <tdat>
   16000:	0010c183          	lbu	gp,1(ra)
   16004:	00000e93          	li	t4,0
   16008:	00300e13          	li	t3,3
   1600c:	23d19063          	bne	gp,t4,1622c <fail>

00016010 <test_4>:
   16010:	7ffea097          	auipc	ra,0x7ffea
   16014:	03008093          	addi	ra,ra,48 # 80000040 <tdat>
   16018:	0020c183          	lbu	gp,2(ra)
   1601c:	0f000e93          	li	t4,240
   16020:	00400e13          	li	t3,4
   16024:	21d19463          	bne	gp,t4,1622c <fail>

00016028 <test_5>:
   16028:	7ffea097          	auipc	ra,0x7ffea
   1602c:	01808093          	addi	ra,ra,24 # 80000040 <tdat>
   16030:	0030c183          	lbu	gp,3(ra)
   16034:	00f00e93          	li	t4,15
   16038:	00500e13          	li	t3,5
   1603c:	1fd19863          	bne	gp,t4,1622c <fail>

00016040 <test_6>:
   16040:	7ffea097          	auipc	ra,0x7ffea
   16044:	00308093          	addi	ra,ra,3 # 80000043 <tdat4>
   16048:	ffd0c183          	lbu	gp,-3(ra)
   1604c:	0ff00e93          	li	t4,255
   16050:	00600e13          	li	t3,6
   16054:	1dd19c63          	bne	gp,t4,1622c <fail>

00016058 <test_7>:
   16058:	7ffea097          	auipc	ra,0x7ffea
   1605c:	feb08093          	addi	ra,ra,-21 # 80000043 <tdat4>
   16060:	ffe0c183          	lbu	gp,-2(ra)
   16064:	00000e93          	li	t4,0
   16068:	00700e13          	li	t3,7
   1606c:	1dd19063          	bne	gp,t4,1622c <fail>

00016070 <test_8>:
   16070:	7ffea097          	auipc	ra,0x7ffea
   16074:	fd308093          	addi	ra,ra,-45 # 80000043 <tdat4>
   16078:	fff0c183          	lbu	gp,-1(ra)
   1607c:	0f000e93          	li	t4,240
   16080:	00800e13          	li	t3,8
   16084:	1bd19463          	bne	gp,t4,1622c <fail>

00016088 <test_9>:
   16088:	7ffea097          	auipc	ra,0x7ffea
   1608c:	fbb08093          	addi	ra,ra,-69 # 80000043 <tdat4>
   16090:	0000c183          	lbu	gp,0(ra)
   16094:	00f00e93          	li	t4,15
   16098:	00900e13          	li	t3,9
   1609c:	19d19863          	bne	gp,t4,1622c <fail>

000160a0 <test_10>:
   160a0:	7ffea097          	auipc	ra,0x7ffea
   160a4:	fa008093          	addi	ra,ra,-96 # 80000040 <tdat>
   160a8:	fe008093          	addi	ra,ra,-32
   160ac:	0200c183          	lbu	gp,32(ra)
   160b0:	0ff00e93          	li	t4,255
   160b4:	00a00e13          	li	t3,10
   160b8:	17d19a63          	bne	gp,t4,1622c <fail>

000160bc <test_11>:
   160bc:	7ffea097          	auipc	ra,0x7ffea
   160c0:	f8408093          	addi	ra,ra,-124 # 80000040 <tdat>
   160c4:	ffa08093          	addi	ra,ra,-6
   160c8:	0070c183          	lbu	gp,7(ra)
   160cc:	00000e93          	li	t4,0
   160d0:	00b00e13          	li	t3,11
   160d4:	15d19c63          	bne	gp,t4,1622c <fail>

000160d8 <test_12>:
   160d8:	00c00e13          	li	t3,12
   160dc:	00000213          	li	tp,0
   160e0:	7ffea097          	auipc	ra,0x7ffea
   160e4:	f6108093          	addi	ra,ra,-159 # 80000041 <tdat2>
   160e8:	0010c183          	lbu	gp,1(ra)
   160ec:	00018313          	mv	t1,gp
   160f0:	0f000e93          	li	t4,240
   160f4:	13d31c63          	bne	t1,t4,1622c <fail>
   160f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   160fc:	00200293          	li	t0,2
   16100:	fe5210e3          	bne	tp,t0,160e0 <test_12+0x8>

00016104 <test_13>:
   16104:	00d00e13          	li	t3,13
   16108:	00000213          	li	tp,0
   1610c:	7ffea097          	auipc	ra,0x7ffea
   16110:	f3608093          	addi	ra,ra,-202 # 80000042 <tdat3>
   16114:	0010c183          	lbu	gp,1(ra)
   16118:	00000013          	nop
   1611c:	00018313          	mv	t1,gp
   16120:	00f00e93          	li	t4,15
   16124:	11d31463          	bne	t1,t4,1622c <fail>
   16128:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1612c:	00200293          	li	t0,2
   16130:	fc521ee3          	bne	tp,t0,1610c <test_13+0x8>

00016134 <test_14>:
   16134:	00e00e13          	li	t3,14
   16138:	00000213          	li	tp,0
   1613c:	7ffea097          	auipc	ra,0x7ffea
   16140:	f0408093          	addi	ra,ra,-252 # 80000040 <tdat>
   16144:	0010c183          	lbu	gp,1(ra)
   16148:	00000013          	nop
   1614c:	00000013          	nop
   16150:	00018313          	mv	t1,gp
   16154:	00000e93          	li	t4,0
   16158:	0dd31a63          	bne	t1,t4,1622c <fail>
   1615c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16160:	00200293          	li	t0,2
   16164:	fc521ce3          	bne	tp,t0,1613c <test_14+0x8>

00016168 <test_15>:
   16168:	00f00e13          	li	t3,15
   1616c:	00000213          	li	tp,0
   16170:	7ffea097          	auipc	ra,0x7ffea
   16174:	ed108093          	addi	ra,ra,-303 # 80000041 <tdat2>
   16178:	0010c183          	lbu	gp,1(ra)
   1617c:	0f000e93          	li	t4,240
   16180:	0bd19663          	bne	gp,t4,1622c <fail>
   16184:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16188:	00200293          	li	t0,2
   1618c:	fe5212e3          	bne	tp,t0,16170 <test_15+0x8>

00016190 <test_16>:
   16190:	01000e13          	li	t3,16
   16194:	00000213          	li	tp,0
   16198:	7ffea097          	auipc	ra,0x7ffea
   1619c:	eaa08093          	addi	ra,ra,-342 # 80000042 <tdat3>
   161a0:	00000013          	nop
   161a4:	0010c183          	lbu	gp,1(ra)
   161a8:	00f00e93          	li	t4,15
   161ac:	09d19063          	bne	gp,t4,1622c <fail>
   161b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161b4:	00200293          	li	t0,2
   161b8:	fe5210e3          	bne	tp,t0,16198 <test_16+0x8>

000161bc <test_17>:
   161bc:	01100e13          	li	t3,17
   161c0:	00000213          	li	tp,0
   161c4:	7ffea097          	auipc	ra,0x7ffea
   161c8:	e7c08093          	addi	ra,ra,-388 # 80000040 <tdat>
   161cc:	00000013          	nop
   161d0:	00000013          	nop
   161d4:	0010c183          	lbu	gp,1(ra)
   161d8:	00000e93          	li	t4,0
   161dc:	05d19863          	bne	gp,t4,1622c <fail>
   161e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161e4:	00200293          	li	t0,2
   161e8:	fc521ee3          	bne	tp,t0,161c4 <test_17+0x8>

000161ec <test_18>:
   161ec:	7ffea197          	auipc	gp,0x7ffea
   161f0:	e5418193          	addi	gp,gp,-428 # 80000040 <tdat>
   161f4:	0001c103          	lbu	sp,0(gp)
   161f8:	00200113          	li	sp,2
   161fc:	00200e93          	li	t4,2
   16200:	01200e13          	li	t3,18
   16204:	03d11463          	bne	sp,t4,1622c <fail>

00016208 <test_19>:
   16208:	7ffea197          	auipc	gp,0x7ffea
   1620c:	e3818193          	addi	gp,gp,-456 # 80000040 <tdat>
   16210:	0001c103          	lbu	sp,0(gp)
   16214:	00000013          	nop
   16218:	00200113          	li	sp,2
   1621c:	00200e93          	li	t4,2
   16220:	01300e13          	li	t3,19
   16224:	01d11463          	bne	sp,t4,1622c <fail>
   16228:	05c01463          	bne	zero,t3,16270 <pass>

0001622c <fail>:
   1622c:	0ff00513          	li	a0,255

00016230 <.delay_fail>:
   16230:	fff50513          	addi	a0,a0,-1
   16234:	fe051ee3          	bnez	a0,16230 <.delay_fail>
   16238:	02000537          	lui	a0,0x2000
   1623c:	04500593          	li	a1,69
   16240:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16244:	05200613          	li	a2,82
   16248:	00c52023          	sw	a2,0(a0)
   1624c:	00c52023          	sw	a2,0(a0)
   16250:	04f00693          	li	a3,79
   16254:	00d52023          	sw	a3,0(a0)
   16258:	00c52023          	sw	a2,0(a0)
   1625c:	00d00713          	li	a4,13
   16260:	00e52023          	sw	a4,0(a0)
   16264:	00a00793          	li	a5,10
   16268:	00f52023          	sw	a5,0(a0)
   1626c:	ea1f906f          	j	1010c <lbu_ret>

00016270 <pass>:
   16270:	0ff00513          	li	a0,255

00016274 <.delay_ok>:
   16274:	fff50513          	addi	a0,a0,-1
   16278:	fe051ee3          	bnez	a0,16274 <.delay_ok>
   1627c:	02000537          	lui	a0,0x2000
   16280:	04f00593          	li	a1,79
   16284:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16288:	04b00613          	li	a2,75
   1628c:	00c52023          	sw	a2,0(a0)
   16290:	00d00693          	li	a3,13
   16294:	00d52023          	sw	a3,0(a0)
   16298:	00a00713          	li	a4,10
   1629c:	00e52023          	sw	a4,0(a0)
   162a0:	e6df906f          	j	1010c <lbu_ret>

000162a4 <lb>:
   162a4:	0ff00513          	li	a0,255

000162a8 <.delay_pr>:
   162a8:	fff50513          	addi	a0,a0,-1
   162ac:	fe051ee3          	bnez	a0,162a8 <.delay_pr>
   162b0:	00016537          	lui	a0,0x16
   162b4:	2d050513          	addi	a0,a0,720 # 162d0 <.test_name>
   162b8:	02000637          	lui	a2,0x2000

000162bc <.prname_next>:
   162bc:	00050583          	lb	a1,0(a0)
   162c0:	00058a63          	beqz	a1,162d4 <.prname_done>
   162c4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   162c8:	00150513          	addi	a0,a0,1
   162cc:	ff1ff06f          	j	162bc <.prname_next>

000162d0 <.test_name>:
   162d0:	626c                	flw	fa1,68(a2)
	...

000162d4 <.prname_done>:
   162d4:	02e00593          	li	a1,46
   162d8:	00b62023          	sw	a1,0(a2)
   162dc:	00b62023          	sw	a1,0(a2)

000162e0 <test_2>:
   162e0:	7ffea097          	auipc	ra,0x7ffea
   162e4:	d6408093          	addi	ra,ra,-668 # 80000044 <tdat>
   162e8:	00008183          	lb	gp,0(ra)
   162ec:	fff00e93          	li	t4,-1
   162f0:	00200e13          	li	t3,2
   162f4:	23d19c63          	bne	gp,t4,1652c <fail>

000162f8 <test_3>:
   162f8:	7ffea097          	auipc	ra,0x7ffea
   162fc:	d4c08093          	addi	ra,ra,-692 # 80000044 <tdat>
   16300:	00108183          	lb	gp,1(ra)
   16304:	00000e93          	li	t4,0
   16308:	00300e13          	li	t3,3
   1630c:	23d19063          	bne	gp,t4,1652c <fail>

00016310 <test_4>:
   16310:	7ffea097          	auipc	ra,0x7ffea
   16314:	d3408093          	addi	ra,ra,-716 # 80000044 <tdat>
   16318:	00208183          	lb	gp,2(ra)
   1631c:	ff000e93          	li	t4,-16
   16320:	00400e13          	li	t3,4
   16324:	21d19463          	bne	gp,t4,1652c <fail>

00016328 <test_5>:
   16328:	7ffea097          	auipc	ra,0x7ffea
   1632c:	d1c08093          	addi	ra,ra,-740 # 80000044 <tdat>
   16330:	00308183          	lb	gp,3(ra)
   16334:	00f00e93          	li	t4,15
   16338:	00500e13          	li	t3,5
   1633c:	1fd19863          	bne	gp,t4,1652c <fail>

00016340 <test_6>:
   16340:	7ffea097          	auipc	ra,0x7ffea
   16344:	d0708093          	addi	ra,ra,-761 # 80000047 <tdat4>
   16348:	ffd08183          	lb	gp,-3(ra)
   1634c:	fff00e93          	li	t4,-1
   16350:	00600e13          	li	t3,6
   16354:	1dd19c63          	bne	gp,t4,1652c <fail>

00016358 <test_7>:
   16358:	7ffea097          	auipc	ra,0x7ffea
   1635c:	cef08093          	addi	ra,ra,-785 # 80000047 <tdat4>
   16360:	ffe08183          	lb	gp,-2(ra)
   16364:	00000e93          	li	t4,0
   16368:	00700e13          	li	t3,7
   1636c:	1dd19063          	bne	gp,t4,1652c <fail>

00016370 <test_8>:
   16370:	7ffea097          	auipc	ra,0x7ffea
   16374:	cd708093          	addi	ra,ra,-809 # 80000047 <tdat4>
   16378:	fff08183          	lb	gp,-1(ra)
   1637c:	ff000e93          	li	t4,-16
   16380:	00800e13          	li	t3,8
   16384:	1bd19463          	bne	gp,t4,1652c <fail>

00016388 <test_9>:
   16388:	7ffea097          	auipc	ra,0x7ffea
   1638c:	cbf08093          	addi	ra,ra,-833 # 80000047 <tdat4>
   16390:	00008183          	lb	gp,0(ra)
   16394:	00f00e93          	li	t4,15
   16398:	00900e13          	li	t3,9
   1639c:	19d19863          	bne	gp,t4,1652c <fail>

000163a0 <test_10>:
   163a0:	7ffea097          	auipc	ra,0x7ffea
   163a4:	ca408093          	addi	ra,ra,-860 # 80000044 <tdat>
   163a8:	fe008093          	addi	ra,ra,-32
   163ac:	02008183          	lb	gp,32(ra)
   163b0:	fff00e93          	li	t4,-1
   163b4:	00a00e13          	li	t3,10
   163b8:	17d19a63          	bne	gp,t4,1652c <fail>

000163bc <test_11>:
   163bc:	7ffea097          	auipc	ra,0x7ffea
   163c0:	c8808093          	addi	ra,ra,-888 # 80000044 <tdat>
   163c4:	ffa08093          	addi	ra,ra,-6
   163c8:	00708183          	lb	gp,7(ra)
   163cc:	00000e93          	li	t4,0
   163d0:	00b00e13          	li	t3,11
   163d4:	15d19c63          	bne	gp,t4,1652c <fail>

000163d8 <test_12>:
   163d8:	00c00e13          	li	t3,12
   163dc:	00000213          	li	tp,0
   163e0:	7ffea097          	auipc	ra,0x7ffea
   163e4:	c6508093          	addi	ra,ra,-923 # 80000045 <tdat2>
   163e8:	00108183          	lb	gp,1(ra)
   163ec:	00018313          	mv	t1,gp
   163f0:	ff000e93          	li	t4,-16
   163f4:	13d31c63          	bne	t1,t4,1652c <fail>
   163f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   163fc:	00200293          	li	t0,2
   16400:	fe5210e3          	bne	tp,t0,163e0 <test_12+0x8>

00016404 <test_13>:
   16404:	00d00e13          	li	t3,13
   16408:	00000213          	li	tp,0
   1640c:	7ffea097          	auipc	ra,0x7ffea
   16410:	c3a08093          	addi	ra,ra,-966 # 80000046 <tdat3>
   16414:	00108183          	lb	gp,1(ra)
   16418:	00000013          	nop
   1641c:	00018313          	mv	t1,gp
   16420:	00f00e93          	li	t4,15
   16424:	11d31463          	bne	t1,t4,1652c <fail>
   16428:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1642c:	00200293          	li	t0,2
   16430:	fc521ee3          	bne	tp,t0,1640c <test_13+0x8>

00016434 <test_14>:
   16434:	00e00e13          	li	t3,14
   16438:	00000213          	li	tp,0
   1643c:	7ffea097          	auipc	ra,0x7ffea
   16440:	c0808093          	addi	ra,ra,-1016 # 80000044 <tdat>
   16444:	00108183          	lb	gp,1(ra)
   16448:	00000013          	nop
   1644c:	00000013          	nop
   16450:	00018313          	mv	t1,gp
   16454:	00000e93          	li	t4,0
   16458:	0dd31a63          	bne	t1,t4,1652c <fail>
   1645c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16460:	00200293          	li	t0,2
   16464:	fc521ce3          	bne	tp,t0,1643c <test_14+0x8>

00016468 <test_15>:
   16468:	00f00e13          	li	t3,15
   1646c:	00000213          	li	tp,0
   16470:	7ffea097          	auipc	ra,0x7ffea
   16474:	bd508093          	addi	ra,ra,-1067 # 80000045 <tdat2>
   16478:	00108183          	lb	gp,1(ra)
   1647c:	ff000e93          	li	t4,-16
   16480:	0bd19663          	bne	gp,t4,1652c <fail>
   16484:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16488:	00200293          	li	t0,2
   1648c:	fe5212e3          	bne	tp,t0,16470 <test_15+0x8>

00016490 <test_16>:
   16490:	01000e13          	li	t3,16
   16494:	00000213          	li	tp,0
   16498:	7ffea097          	auipc	ra,0x7ffea
   1649c:	bae08093          	addi	ra,ra,-1106 # 80000046 <tdat3>
   164a0:	00000013          	nop
   164a4:	00108183          	lb	gp,1(ra)
   164a8:	00f00e93          	li	t4,15
   164ac:	09d19063          	bne	gp,t4,1652c <fail>
   164b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164b4:	00200293          	li	t0,2
   164b8:	fe5210e3          	bne	tp,t0,16498 <test_16+0x8>

000164bc <test_17>:
   164bc:	01100e13          	li	t3,17
   164c0:	00000213          	li	tp,0
   164c4:	7ffea097          	auipc	ra,0x7ffea
   164c8:	b8008093          	addi	ra,ra,-1152 # 80000044 <tdat>
   164cc:	00000013          	nop
   164d0:	00000013          	nop
   164d4:	00108183          	lb	gp,1(ra)
   164d8:	00000e93          	li	t4,0
   164dc:	05d19863          	bne	gp,t4,1652c <fail>
   164e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164e4:	00200293          	li	t0,2
   164e8:	fc521ee3          	bne	tp,t0,164c4 <test_17+0x8>

000164ec <test_18>:
   164ec:	7ffea197          	auipc	gp,0x7ffea
   164f0:	b5818193          	addi	gp,gp,-1192 # 80000044 <tdat>
   164f4:	00018103          	lb	sp,0(gp)
   164f8:	00200113          	li	sp,2
   164fc:	00200e93          	li	t4,2
   16500:	01200e13          	li	t3,18
   16504:	03d11463          	bne	sp,t4,1652c <fail>

00016508 <test_19>:
   16508:	7ffea197          	auipc	gp,0x7ffea
   1650c:	b3c18193          	addi	gp,gp,-1220 # 80000044 <tdat>
   16510:	00018103          	lb	sp,0(gp)
   16514:	00000013          	nop
   16518:	00200113          	li	sp,2
   1651c:	00200e93          	li	t4,2
   16520:	01300e13          	li	t3,19
   16524:	01d11463          	bne	sp,t4,1652c <fail>
   16528:	05c01463          	bne	zero,t3,16570 <pass>

0001652c <fail>:
   1652c:	0ff00513          	li	a0,255

00016530 <.delay_fail>:
   16530:	fff50513          	addi	a0,a0,-1
   16534:	fe051ee3          	bnez	a0,16530 <.delay_fail>
   16538:	02000537          	lui	a0,0x2000
   1653c:	04500593          	li	a1,69
   16540:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16544:	05200613          	li	a2,82
   16548:	00c52023          	sw	a2,0(a0)
   1654c:	00c52023          	sw	a2,0(a0)
   16550:	04f00693          	li	a3,79
   16554:	00d52023          	sw	a3,0(a0)
   16558:	00c52023          	sw	a2,0(a0)
   1655c:	00d00713          	li	a4,13
   16560:	00e52023          	sw	a4,0(a0)
   16564:	00a00793          	li	a5,10
   16568:	00f52023          	sw	a5,0(a0)
   1656c:	b95f906f          	j	10100 <lb_ret>

00016570 <pass>:
   16570:	0ff00513          	li	a0,255

00016574 <.delay_ok>:
   16574:	fff50513          	addi	a0,a0,-1
   16578:	fe051ee3          	bnez	a0,16574 <.delay_ok>
   1657c:	02000537          	lui	a0,0x2000
   16580:	04f00593          	li	a1,79
   16584:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16588:	04b00613          	li	a2,75
   1658c:	00c52023          	sw	a2,0(a0)
   16590:	00d00693          	li	a3,13
   16594:	00d52023          	sw	a3,0(a0)
   16598:	00a00713          	li	a4,10
   1659c:	00e52023          	sw	a4,0(a0)
   165a0:	b61f906f          	j	10100 <lb_ret>

000165a4 <sh>:
   165a4:	0ff00513          	li	a0,255

000165a8 <.delay_pr>:
   165a8:	fff50513          	addi	a0,a0,-1
   165ac:	fe051ee3          	bnez	a0,165a8 <.delay_pr>
   165b0:	00016537          	lui	a0,0x16
   165b4:	5d050513          	addi	a0,a0,1488 # 165d0 <.test_name>
   165b8:	02000637          	lui	a2,0x2000

000165bc <.prname_next>:
   165bc:	00050583          	lb	a1,0(a0)
   165c0:	00058a63          	beqz	a1,165d4 <.prname_done>
   165c4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   165c8:	00150513          	addi	a0,a0,1
   165cc:	ff1ff06f          	j	165bc <.prname_next>

000165d0 <.test_name>:
   165d0:	00006873          	csrrsi	a6,ustatus,0

000165d4 <.prname_done>:
   165d4:	02e00593          	li	a1,46
   165d8:	00b62023          	sw	a1,0(a2)
   165dc:	00b62023          	sw	a1,0(a2)

000165e0 <test_2>:
   165e0:	7ffea097          	auipc	ra,0x7ffea
   165e4:	a6808093          	addi	ra,ra,-1432 # 80000048 <tdat>
   165e8:	0aa00113          	li	sp,170
   165ec:	00209023          	sh	sp,0(ra)
   165f0:	00009183          	lh	gp,0(ra)
   165f4:	0aa00e93          	li	t4,170
   165f8:	00200e13          	li	t3,2
   165fc:	45d19e63          	bne	gp,t4,16a58 <fail>

00016600 <test_3>:
   16600:	7ffea097          	auipc	ra,0x7ffea
   16604:	a4808093          	addi	ra,ra,-1464 # 80000048 <tdat>
   16608:	ffffb137          	lui	sp,0xffffb
   1660c:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   16610:	00209123          	sh	sp,2(ra)
   16614:	00209183          	lh	gp,2(ra)
   16618:	ffffbeb7          	lui	t4,0xffffb
   1661c:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   16620:	00300e13          	li	t3,3
   16624:	43d19a63          	bne	gp,t4,16a58 <fail>

00016628 <test_4>:
   16628:	7ffea097          	auipc	ra,0x7ffea
   1662c:	a2008093          	addi	ra,ra,-1504 # 80000048 <tdat>
   16630:	beef1137          	lui	sp,0xbeef1
   16634:	aa010113          	addi	sp,sp,-1376 # beef0aa0 <_edata+0x3eef0a30>
   16638:	00209223          	sh	sp,4(ra)
   1663c:	0040a183          	lw	gp,4(ra)
   16640:	beef1eb7          	lui	t4,0xbeef1
   16644:	aa0e8e93          	addi	t4,t4,-1376 # beef0aa0 <_edata+0x3eef0a30>
   16648:	00400e13          	li	t3,4
   1664c:	41d19663          	bne	gp,t4,16a58 <fail>

00016650 <test_5>:
   16650:	7ffea097          	auipc	ra,0x7ffea
   16654:	9f808093          	addi	ra,ra,-1544 # 80000048 <tdat>
   16658:	ffffa137          	lui	sp,0xffffa
   1665c:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   16660:	00209323          	sh	sp,6(ra)
   16664:	00609183          	lh	gp,6(ra)
   16668:	ffffaeb7          	lui	t4,0xffffa
   1666c:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   16670:	00500e13          	li	t3,5
   16674:	3fd19263          	bne	gp,t4,16a58 <fail>

00016678 <test_6>:
   16678:	7ffea097          	auipc	ra,0x7ffea
   1667c:	9de08093          	addi	ra,ra,-1570 # 80000056 <tdat8>
   16680:	0aa00113          	li	sp,170
   16684:	fe209d23          	sh	sp,-6(ra)
   16688:	ffa09183          	lh	gp,-6(ra)
   1668c:	0aa00e93          	li	t4,170
   16690:	00600e13          	li	t3,6
   16694:	3dd19263          	bne	gp,t4,16a58 <fail>

00016698 <test_7>:
   16698:	7ffea097          	auipc	ra,0x7ffea
   1669c:	9be08093          	addi	ra,ra,-1602 # 80000056 <tdat8>
   166a0:	ffffb137          	lui	sp,0xffffb
   166a4:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   166a8:	fe209e23          	sh	sp,-4(ra)
   166ac:	ffc09183          	lh	gp,-4(ra)
   166b0:	ffffbeb7          	lui	t4,0xffffb
   166b4:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   166b8:	00700e13          	li	t3,7
   166bc:	39d19e63          	bne	gp,t4,16a58 <fail>

000166c0 <test_8>:
   166c0:	7ffea097          	auipc	ra,0x7ffea
   166c4:	99608093          	addi	ra,ra,-1642 # 80000056 <tdat8>
   166c8:	00001137          	lui	sp,0x1
   166cc:	aa010113          	addi	sp,sp,-1376 # aa0 <_start-0xf560>
   166d0:	fe209f23          	sh	sp,-2(ra)
   166d4:	ffe09183          	lh	gp,-2(ra)
   166d8:	00001eb7          	lui	t4,0x1
   166dc:	aa0e8e93          	addi	t4,t4,-1376 # aa0 <_start-0xf560>
   166e0:	00800e13          	li	t3,8
   166e4:	37d19a63          	bne	gp,t4,16a58 <fail>

000166e8 <test_9>:
   166e8:	7ffea097          	auipc	ra,0x7ffea
   166ec:	96e08093          	addi	ra,ra,-1682 # 80000056 <tdat8>
   166f0:	ffffa137          	lui	sp,0xffffa
   166f4:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   166f8:	00209023          	sh	sp,0(ra)
   166fc:	00009183          	lh	gp,0(ra)
   16700:	ffffaeb7          	lui	t4,0xffffa
   16704:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   16708:	00900e13          	li	t3,9
   1670c:	35d19663          	bne	gp,t4,16a58 <fail>

00016710 <test_10>:
   16710:	7ffea097          	auipc	ra,0x7ffea
   16714:	94808093          	addi	ra,ra,-1720 # 80000058 <tdat9>
   16718:	12345137          	lui	sp,0x12345
   1671c:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b044>
   16720:	fe008213          	addi	tp,ra,-32
   16724:	02221023          	sh	sp,32(tp) # 20 <_start-0xffe0>
   16728:	00009183          	lh	gp,0(ra)
   1672c:	00005eb7          	lui	t4,0x5
   16730:	678e8e93          	addi	t4,t4,1656 # 5678 <_start-0xa988>
   16734:	00a00e13          	li	t3,10
   16738:	33d19063          	bne	gp,t4,16a58 <fail>

0001673c <test_11>:
   1673c:	7ffea097          	auipc	ra,0x7ffea
   16740:	91c08093          	addi	ra,ra,-1764 # 80000058 <tdat9>
   16744:	00003137          	lui	sp,0x3
   16748:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   1674c:	ffb08093          	addi	ra,ra,-5
   16750:	002093a3          	sh	sp,7(ra)
   16754:	7ffea217          	auipc	tp,0x7ffea
   16758:	90620213          	addi	tp,tp,-1786 # 8000005a <tdat10>
   1675c:	00021183          	lh	gp,0(tp) # 0 <_start-0x10000>
   16760:	00003eb7          	lui	t4,0x3
   16764:	098e8e93          	addi	t4,t4,152 # 3098 <_start-0xcf68>
   16768:	00b00e13          	li	t3,11
   1676c:	2fd19663          	bne	gp,t4,16a58 <fail>

00016770 <test_12>:
   16770:	00c00e13          	li	t3,12
   16774:	00000213          	li	tp,0
   16778:	ffffd0b7          	lui	ra,0xffffd
   1677c:	cdd08093          	addi	ra,ra,-803 # ffffccdd <_edata+0x7fffcc6d>
   16780:	7ffea117          	auipc	sp,0x7ffea
   16784:	8c810113          	addi	sp,sp,-1848 # 80000048 <tdat>
   16788:	00111023          	sh	ra,0(sp)
   1678c:	00011183          	lh	gp,0(sp)
   16790:	ffffdeb7          	lui	t4,0xffffd
   16794:	cdde8e93          	addi	t4,t4,-803 # ffffccdd <_edata+0x7fffcc6d>
   16798:	2dd19063          	bne	gp,t4,16a58 <fail>
   1679c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   167a0:	00200293          	li	t0,2
   167a4:	fc521ae3          	bne	tp,t0,16778 <test_12+0x8>

000167a8 <test_13>:
   167a8:	00d00e13          	li	t3,13
   167ac:	00000213          	li	tp,0
   167b0:	ffffc0b7          	lui	ra,0xffffc
   167b4:	ccd08093          	addi	ra,ra,-819 # ffffbccd <_edata+0x7fffbc5d>
   167b8:	7ffea117          	auipc	sp,0x7ffea
   167bc:	89010113          	addi	sp,sp,-1904 # 80000048 <tdat>
   167c0:	00000013          	nop
   167c4:	00111123          	sh	ra,2(sp)
   167c8:	00211183          	lh	gp,2(sp)
   167cc:	ffffceb7          	lui	t4,0xffffc
   167d0:	ccde8e93          	addi	t4,t4,-819 # ffffbccd <_edata+0x7fffbc5d>
   167d4:	29d19263          	bne	gp,t4,16a58 <fail>
   167d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   167dc:	00200293          	li	t0,2
   167e0:	fc5218e3          	bne	tp,t0,167b0 <test_13+0x8>

000167e4 <test_14>:
   167e4:	00e00e13          	li	t3,14
   167e8:	00000213          	li	tp,0
   167ec:	ffffc0b7          	lui	ra,0xffffc
   167f0:	bcc08093          	addi	ra,ra,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   167f4:	7ffea117          	auipc	sp,0x7ffea
   167f8:	85410113          	addi	sp,sp,-1964 # 80000048 <tdat>
   167fc:	00000013          	nop
   16800:	00000013          	nop
   16804:	00111223          	sh	ra,4(sp)
   16808:	00411183          	lh	gp,4(sp)
   1680c:	ffffceb7          	lui	t4,0xffffc
   16810:	bcce8e93          	addi	t4,t4,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   16814:	25d19263          	bne	gp,t4,16a58 <fail>
   16818:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1681c:	00200293          	li	t0,2
   16820:	fc5216e3          	bne	tp,t0,167ec <test_14+0x8>

00016824 <test_15>:
   16824:	00f00e13          	li	t3,15
   16828:	00000213          	li	tp,0
   1682c:	ffffb0b7          	lui	ra,0xffffb
   16830:	bbc08093          	addi	ra,ra,-1092 # ffffabbc <_edata+0x7fffab4c>
   16834:	00000013          	nop
   16838:	7ffea117          	auipc	sp,0x7ffea
   1683c:	81010113          	addi	sp,sp,-2032 # 80000048 <tdat>
   16840:	00111323          	sh	ra,6(sp)
   16844:	00611183          	lh	gp,6(sp)
   16848:	ffffbeb7          	lui	t4,0xffffb
   1684c:	bbce8e93          	addi	t4,t4,-1092 # ffffabbc <_edata+0x7fffab4c>
   16850:	21d19463          	bne	gp,t4,16a58 <fail>
   16854:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16858:	00200293          	li	t0,2
   1685c:	fc5218e3          	bne	tp,t0,1682c <test_15+0x8>

00016860 <test_16>:
   16860:	01000e13          	li	t3,16
   16864:	00000213          	li	tp,0
   16868:	ffffb0b7          	lui	ra,0xffffb
   1686c:	abb08093          	addi	ra,ra,-1349 # ffffaabb <_edata+0x7fffaa4b>
   16870:	00000013          	nop
   16874:	7ffe9117          	auipc	sp,0x7ffe9
   16878:	7d410113          	addi	sp,sp,2004 # 80000048 <tdat>
   1687c:	00000013          	nop
   16880:	00111423          	sh	ra,8(sp)
   16884:	00811183          	lh	gp,8(sp)
   16888:	ffffbeb7          	lui	t4,0xffffb
   1688c:	abbe8e93          	addi	t4,t4,-1349 # ffffaabb <_edata+0x7fffaa4b>
   16890:	1dd19463          	bne	gp,t4,16a58 <fail>
   16894:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16898:	00200293          	li	t0,2
   1689c:	fc5216e3          	bne	tp,t0,16868 <test_16+0x8>

000168a0 <test_17>:
   168a0:	01100e13          	li	t3,17
   168a4:	00000213          	li	tp,0
   168a8:	ffffe0b7          	lui	ra,0xffffe
   168ac:	aab08093          	addi	ra,ra,-1365 # ffffdaab <_edata+0x7fffda3b>
   168b0:	00000013          	nop
   168b4:	00000013          	nop
   168b8:	7ffe9117          	auipc	sp,0x7ffe9
   168bc:	79010113          	addi	sp,sp,1936 # 80000048 <tdat>
   168c0:	00111523          	sh	ra,10(sp)
   168c4:	00a11183          	lh	gp,10(sp)
   168c8:	ffffeeb7          	lui	t4,0xffffe
   168cc:	aabe8e93          	addi	t4,t4,-1365 # ffffdaab <_edata+0x7fffda3b>
   168d0:	19d19463          	bne	gp,t4,16a58 <fail>
   168d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   168d8:	00200293          	li	t0,2
   168dc:	fc5216e3          	bne	tp,t0,168a8 <test_17+0x8>

000168e0 <test_18>:
   168e0:	01200e13          	li	t3,18
   168e4:	00000213          	li	tp,0
   168e8:	7ffe9117          	auipc	sp,0x7ffe9
   168ec:	76010113          	addi	sp,sp,1888 # 80000048 <tdat>
   168f0:	000020b7          	lui	ra,0x2
   168f4:	23308093          	addi	ra,ra,563 # 2233 <_start-0xddcd>
   168f8:	00111023          	sh	ra,0(sp)
   168fc:	00011183          	lh	gp,0(sp)
   16900:	00002eb7          	lui	t4,0x2
   16904:	233e8e93          	addi	t4,t4,563 # 2233 <_start-0xddcd>
   16908:	15d19863          	bne	gp,t4,16a58 <fail>
   1690c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16910:	00200293          	li	t0,2
   16914:	fc521ae3          	bne	tp,t0,168e8 <test_18+0x8>

00016918 <test_19>:
   16918:	01300e13          	li	t3,19
   1691c:	00000213          	li	tp,0
   16920:	7ffe9117          	auipc	sp,0x7ffe9
   16924:	72810113          	addi	sp,sp,1832 # 80000048 <tdat>
   16928:	000010b7          	lui	ra,0x1
   1692c:	22308093          	addi	ra,ra,547 # 1223 <_start-0xeddd>
   16930:	00000013          	nop
   16934:	00111123          	sh	ra,2(sp)
   16938:	00211183          	lh	gp,2(sp)
   1693c:	00001eb7          	lui	t4,0x1
   16940:	223e8e93          	addi	t4,t4,547 # 1223 <_start-0xeddd>
   16944:	11d19a63          	bne	gp,t4,16a58 <fail>
   16948:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1694c:	00200293          	li	t0,2
   16950:	fc5218e3          	bne	tp,t0,16920 <test_19+0x8>

00016954 <test_20>:
   16954:	01400e13          	li	t3,20
   16958:	00000213          	li	tp,0
   1695c:	7ffe9117          	auipc	sp,0x7ffe9
   16960:	6ec10113          	addi	sp,sp,1772 # 80000048 <tdat>
   16964:	000010b7          	lui	ra,0x1
   16968:	12208093          	addi	ra,ra,290 # 1122 <_start-0xeede>
   1696c:	00000013          	nop
   16970:	00000013          	nop
   16974:	00111223          	sh	ra,4(sp)
   16978:	00411183          	lh	gp,4(sp)
   1697c:	00001eb7          	lui	t4,0x1
   16980:	122e8e93          	addi	t4,t4,290 # 1122 <_start-0xeede>
   16984:	0dd19a63          	bne	gp,t4,16a58 <fail>
   16988:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1698c:	00200293          	li	t0,2
   16990:	fc5216e3          	bne	tp,t0,1695c <test_20+0x8>

00016994 <test_21>:
   16994:	01500e13          	li	t3,21
   16998:	00000213          	li	tp,0
   1699c:	7ffe9117          	auipc	sp,0x7ffe9
   169a0:	6ac10113          	addi	sp,sp,1708 # 80000048 <tdat>
   169a4:	00000013          	nop
   169a8:	11200093          	li	ra,274
   169ac:	00111323          	sh	ra,6(sp)
   169b0:	00611183          	lh	gp,6(sp)
   169b4:	11200e93          	li	t4,274
   169b8:	0bd19063          	bne	gp,t4,16a58 <fail>
   169bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   169c0:	00200293          	li	t0,2
   169c4:	fc521ce3          	bne	tp,t0,1699c <test_21+0x8>

000169c8 <test_22>:
   169c8:	01600e13          	li	t3,22
   169cc:	00000213          	li	tp,0
   169d0:	7ffe9117          	auipc	sp,0x7ffe9
   169d4:	67810113          	addi	sp,sp,1656 # 80000048 <tdat>
   169d8:	00000013          	nop
   169dc:	01100093          	li	ra,17
   169e0:	00000013          	nop
   169e4:	00111423          	sh	ra,8(sp)
   169e8:	00811183          	lh	gp,8(sp)
   169ec:	01100e93          	li	t4,17
   169f0:	07d19463          	bne	gp,t4,16a58 <fail>
   169f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   169f8:	00200293          	li	t0,2
   169fc:	fc521ae3          	bne	tp,t0,169d0 <test_22+0x8>

00016a00 <test_23>:
   16a00:	01700e13          	li	t3,23
   16a04:	00000213          	li	tp,0
   16a08:	7ffe9117          	auipc	sp,0x7ffe9
   16a0c:	64010113          	addi	sp,sp,1600 # 80000048 <tdat>
   16a10:	00000013          	nop
   16a14:	00000013          	nop
   16a18:	000030b7          	lui	ra,0x3
   16a1c:	00108093          	addi	ra,ra,1 # 3001 <_start-0xcfff>
   16a20:	00111523          	sh	ra,10(sp)
   16a24:	00a11183          	lh	gp,10(sp)
   16a28:	00003eb7          	lui	t4,0x3
   16a2c:	001e8e93          	addi	t4,t4,1 # 3001 <_start-0xcfff>
   16a30:	03d19463          	bne	gp,t4,16a58 <fail>
   16a34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16a38:	00200293          	li	t0,2
   16a3c:	fc5216e3          	bne	tp,t0,16a08 <test_23+0x8>
   16a40:	0000c537          	lui	a0,0xc
   16a44:	eef50513          	addi	a0,a0,-273 # beef <_start-0x4111>
   16a48:	7ffe9597          	auipc	a1,0x7ffe9
   16a4c:	60058593          	addi	a1,a1,1536 # 80000048 <tdat>
   16a50:	00a59323          	sh	a0,6(a1)
   16a54:	05c01463          	bne	zero,t3,16a9c <pass>

00016a58 <fail>:
   16a58:	0ff00513          	li	a0,255

00016a5c <.delay_fail>:
   16a5c:	fff50513          	addi	a0,a0,-1
   16a60:	fe051ee3          	bnez	a0,16a5c <.delay_fail>
   16a64:	02000537          	lui	a0,0x2000
   16a68:	04500593          	li	a1,69
   16a6c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16a70:	05200613          	li	a2,82
   16a74:	00c52023          	sw	a2,0(a0)
   16a78:	00c52023          	sw	a2,0(a0)
   16a7c:	04f00693          	li	a3,79
   16a80:	00d52023          	sw	a3,0(a0)
   16a84:	00c52023          	sw	a2,0(a0)
   16a88:	00d00713          	li	a4,13
   16a8c:	00e52023          	sw	a4,0(a0)
   16a90:	00a00793          	li	a5,10
   16a94:	00f52023          	sw	a5,0(a0)
   16a98:	e80f906f          	j	10118 <sh_ret>

00016a9c <pass>:
   16a9c:	0ff00513          	li	a0,255

00016aa0 <.delay_ok>:
   16aa0:	fff50513          	addi	a0,a0,-1
   16aa4:	fe051ee3          	bnez	a0,16aa0 <.delay_ok>
   16aa8:	02000537          	lui	a0,0x2000
   16aac:	04f00593          	li	a1,79
   16ab0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16ab4:	04b00613          	li	a2,75
   16ab8:	00c52023          	sw	a2,0(a0)
   16abc:	00d00693          	li	a3,13
   16ac0:	00d52023          	sw	a3,0(a0)
   16ac4:	00a00713          	li	a4,10
   16ac8:	00e52023          	sw	a4,0(a0)
   16acc:	e4cf906f          	j	10118 <sh_ret>

00016ad0 <lui>:
   16ad0:	0ff00513          	li	a0,255

00016ad4 <.delay_pr>:
   16ad4:	fff50513          	addi	a0,a0,-1
   16ad8:	fe051ee3          	bnez	a0,16ad4 <.delay_pr>
   16adc:	00017537          	lui	a0,0x17
   16ae0:	afc50513          	addi	a0,a0,-1284 # 16afc <.test_name>
   16ae4:	02000637          	lui	a2,0x2000

00016ae8 <.prname_next>:
   16ae8:	00050583          	lb	a1,0(a0)
   16aec:	00058a63          	beqz	a1,16b00 <.prname_done>
   16af0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   16af4:	00150513          	addi	a0,a0,1
   16af8:	ff1ff06f          	j	16ae8 <.prname_next>

00016afc <.test_name>:
   16afc:	756c                	flw	fa1,108(a0)
   16afe:	0069                	c.nop	26

00016b00 <.prname_done>:
   16b00:	02e00593          	li	a1,46
   16b04:	00b62023          	sw	a1,0(a2)
   16b08:	00b62023          	sw	a1,0(a2)

00016b0c <test_2>:
   16b0c:	000000b7          	lui	ra,0x0
   16b10:	00000e93          	li	t4,0
   16b14:	00200e13          	li	t3,2
   16b18:	05d09a63          	bne	ra,t4,16b6c <fail>

00016b1c <test_3>:
   16b1c:	fffff0b7          	lui	ra,0xfffff
   16b20:	4010d093          	srai	ra,ra,0x1
   16b24:	80000e93          	li	t4,-2048
   16b28:	00300e13          	li	t3,3
   16b2c:	05d09063          	bne	ra,t4,16b6c <fail>

00016b30 <test_4>:
   16b30:	7ffff0b7          	lui	ra,0x7ffff
   16b34:	4140d093          	srai	ra,ra,0x14
   16b38:	7ff00e93          	li	t4,2047
   16b3c:	00400e13          	li	t3,4
   16b40:	03d09663          	bne	ra,t4,16b6c <fail>

00016b44 <test_5>:
   16b44:	800000b7          	lui	ra,0x80000
   16b48:	4140d093          	srai	ra,ra,0x14
   16b4c:	80000e93          	li	t4,-2048
   16b50:	00500e13          	li	t3,5
   16b54:	01d09c63          	bne	ra,t4,16b6c <fail>

00016b58 <test_6>:
   16b58:	80000037          	lui	zero,0x80000
   16b5c:	00000e93          	li	t4,0
   16b60:	00600e13          	li	t3,6
   16b64:	01d01463          	bne	zero,t4,16b6c <fail>
   16b68:	05c01463          	bne	zero,t3,16bb0 <pass>

00016b6c <fail>:
   16b6c:	0ff00513          	li	a0,255

00016b70 <.delay_fail>:
   16b70:	fff50513          	addi	a0,a0,-1
   16b74:	fe051ee3          	bnez	a0,16b70 <.delay_fail>
   16b78:	02000537          	lui	a0,0x2000
   16b7c:	04500593          	li	a1,69
   16b80:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16b84:	05200613          	li	a2,82
   16b88:	00c52023          	sw	a2,0(a0)
   16b8c:	00c52023          	sw	a2,0(a0)
   16b90:	04f00693          	li	a3,79
   16b94:	00d52023          	sw	a3,0(a0)
   16b98:	00c52023          	sw	a2,0(a0)
   16b9c:	00d00713          	li	a4,13
   16ba0:	00e52023          	sw	a4,0(a0)
   16ba4:	00a00793          	li	a5,10
   16ba8:	00f52023          	sw	a5,0(a0)
   16bac:	d28f906f          	j	100d4 <lui_ret>

00016bb0 <pass>:
   16bb0:	0ff00513          	li	a0,255

00016bb4 <.delay_ok>:
   16bb4:	fff50513          	addi	a0,a0,-1
   16bb8:	fe051ee3          	bnez	a0,16bb4 <.delay_ok>
   16bbc:	02000537          	lui	a0,0x2000
   16bc0:	04f00593          	li	a1,79
   16bc4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   16bc8:	04b00613          	li	a2,75
   16bcc:	00c52023          	sw	a2,0(a0)
   16bd0:	00d00693          	li	a3,13
   16bd4:	00d52023          	sw	a3,0(a0)
   16bd8:	00a00713          	li	a4,10
   16bdc:	00e52023          	sw	a4,0(a0)
   16be0:	cf4f906f          	j	100d4 <lui_ret>

00016be4 <sb>:
   16be4:	0ff00513          	li	a0,255

00016be8 <.delay_pr>:
   16be8:	fff50513          	addi	a0,a0,-1
   16bec:	fe051ee3          	bnez	a0,16be8 <.delay_pr>
   16bf0:	00017537          	lui	a0,0x17
   16bf4:	c1050513          	addi	a0,a0,-1008 # 16c10 <.test_name>
   16bf8:	02000637          	lui	a2,0x2000

00016bfc <.prname_next>:
   16bfc:	00050583          	lb	a1,0(a0)
   16c00:	00058a63          	beqz	a1,16c14 <.prname_done>
   16c04:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   16c08:	00150513          	addi	a0,a0,1
   16c0c:	ff1ff06f          	j	16bfc <.prname_next>

00016c10 <.test_name>:
   16c10:	00006273          	csrrsi	tp,ustatus,0

00016c14 <.prname_done>:
   16c14:	02e00593          	li	a1,46
   16c18:	00b62023          	sw	a1,0(a2)
   16c1c:	00b62023          	sw	a1,0(a2)

00016c20 <test_2>:
   16c20:	7ffe9097          	auipc	ra,0x7ffe9
   16c24:	43c08093          	addi	ra,ra,1084 # 8000005c <tdat>
   16c28:	faa00113          	li	sp,-86
   16c2c:	00208023          	sb	sp,0(ra)
   16c30:	00008183          	lb	gp,0(ra)
   16c34:	faa00e93          	li	t4,-86
   16c38:	00200e13          	li	t3,2
   16c3c:	3dd19c63          	bne	gp,t4,17014 <fail>

00016c40 <test_3>:
   16c40:	7ffe9097          	auipc	ra,0x7ffe9
   16c44:	41c08093          	addi	ra,ra,1052 # 8000005c <tdat>
   16c48:	00000113          	li	sp,0
   16c4c:	002080a3          	sb	sp,1(ra)
   16c50:	00108183          	lb	gp,1(ra)
   16c54:	00000e93          	li	t4,0
   16c58:	00300e13          	li	t3,3
   16c5c:	3bd19c63          	bne	gp,t4,17014 <fail>

00016c60 <test_4>:
   16c60:	7ffe9097          	auipc	ra,0x7ffe9
   16c64:	3fc08093          	addi	ra,ra,1020 # 8000005c <tdat>
   16c68:	fffff137          	lui	sp,0xfffff
   16c6c:	fa010113          	addi	sp,sp,-96 # ffffefa0 <_edata+0x7fffef30>
   16c70:	00208123          	sb	sp,2(ra)
   16c74:	00209183          	lh	gp,2(ra)
   16c78:	fffffeb7          	lui	t4,0xfffff
   16c7c:	fa0e8e93          	addi	t4,t4,-96 # ffffefa0 <_edata+0x7fffef30>
   16c80:	00400e13          	li	t3,4
   16c84:	39d19863          	bne	gp,t4,17014 <fail>

00016c88 <test_5>:
   16c88:	7ffe9097          	auipc	ra,0x7ffe9
   16c8c:	3d408093          	addi	ra,ra,980 # 8000005c <tdat>
   16c90:	00a00113          	li	sp,10
   16c94:	002081a3          	sb	sp,3(ra)
   16c98:	00308183          	lb	gp,3(ra)
   16c9c:	00a00e93          	li	t4,10
   16ca0:	00500e13          	li	t3,5
   16ca4:	37d19863          	bne	gp,t4,17014 <fail>

00016ca8 <test_6>:
   16ca8:	7ffe9097          	auipc	ra,0x7ffe9
   16cac:	3bb08093          	addi	ra,ra,955 # 80000063 <tdat8>
   16cb0:	faa00113          	li	sp,-86
   16cb4:	fe208ea3          	sb	sp,-3(ra)
   16cb8:	ffd08183          	lb	gp,-3(ra)
   16cbc:	faa00e93          	li	t4,-86
   16cc0:	00600e13          	li	t3,6
   16cc4:	35d19863          	bne	gp,t4,17014 <fail>

00016cc8 <test_7>:
   16cc8:	7ffe9097          	auipc	ra,0x7ffe9
   16ccc:	39b08093          	addi	ra,ra,923 # 80000063 <tdat8>
   16cd0:	00000113          	li	sp,0
   16cd4:	fe208f23          	sb	sp,-2(ra)
   16cd8:	ffe08183          	lb	gp,-2(ra)
   16cdc:	00000e93          	li	t4,0
   16ce0:	00700e13          	li	t3,7
   16ce4:	33d19863          	bne	gp,t4,17014 <fail>

00016ce8 <test_8>:
   16ce8:	7ffe9097          	auipc	ra,0x7ffe9
   16cec:	37b08093          	addi	ra,ra,891 # 80000063 <tdat8>
   16cf0:	fa000113          	li	sp,-96
   16cf4:	fe208fa3          	sb	sp,-1(ra)
   16cf8:	fff08183          	lb	gp,-1(ra)
   16cfc:	fa000e93          	li	t4,-96
   16d00:	00800e13          	li	t3,8
   16d04:	31d19863          	bne	gp,t4,17014 <fail>

00016d08 <test_9>:
   16d08:	7ffe9097          	auipc	ra,0x7ffe9
   16d0c:	35b08093          	addi	ra,ra,859 # 80000063 <tdat8>
   16d10:	00a00113          	li	sp,10
   16d14:	00208023          	sb	sp,0(ra)
   16d18:	00008183          	lb	gp,0(ra)
   16d1c:	00a00e93          	li	t4,10
   16d20:	00900e13          	li	t3,9
   16d24:	2fd19863          	bne	gp,t4,17014 <fail>

00016d28 <test_10>:
   16d28:	7ffe9097          	auipc	ra,0x7ffe9
   16d2c:	33c08093          	addi	ra,ra,828 # 80000064 <tdat9>
   16d30:	12345137          	lui	sp,0x12345
   16d34:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b044>
   16d38:	fe008213          	addi	tp,ra,-32
   16d3c:	02220023          	sb	sp,32(tp) # 20 <_start-0xffe0>
   16d40:	00008183          	lb	gp,0(ra)
   16d44:	07800e93          	li	t4,120
   16d48:	00a00e13          	li	t3,10
   16d4c:	2dd19463          	bne	gp,t4,17014 <fail>

00016d50 <test_11>:
   16d50:	7ffe9097          	auipc	ra,0x7ffe9
   16d54:	31408093          	addi	ra,ra,788 # 80000064 <tdat9>
   16d58:	00003137          	lui	sp,0x3
   16d5c:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   16d60:	ffa08093          	addi	ra,ra,-6
   16d64:	002083a3          	sb	sp,7(ra)
   16d68:	7ffe9217          	auipc	tp,0x7ffe9
   16d6c:	2fd20213          	addi	tp,tp,765 # 80000065 <tdat10>
   16d70:	00020183          	lb	gp,0(tp) # 0 <_start-0x10000>
   16d74:	f9800e93          	li	t4,-104
   16d78:	00b00e13          	li	t3,11
   16d7c:	29d19c63          	bne	gp,t4,17014 <fail>

00016d80 <test_12>:
   16d80:	00c00e13          	li	t3,12
   16d84:	00000213          	li	tp,0
   16d88:	fdd00093          	li	ra,-35
   16d8c:	7ffe9117          	auipc	sp,0x7ffe9
   16d90:	2d010113          	addi	sp,sp,720 # 8000005c <tdat>
   16d94:	00110023          	sb	ra,0(sp)
   16d98:	00010183          	lb	gp,0(sp)
   16d9c:	fdd00e93          	li	t4,-35
   16da0:	27d19a63          	bne	gp,t4,17014 <fail>
   16da4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16da8:	00200293          	li	t0,2
   16dac:	fc521ee3          	bne	tp,t0,16d88 <test_12+0x8>

00016db0 <test_13>:
   16db0:	00d00e13          	li	t3,13
   16db4:	00000213          	li	tp,0
   16db8:	fcd00093          	li	ra,-51
   16dbc:	7ffe9117          	auipc	sp,0x7ffe9
   16dc0:	2a010113          	addi	sp,sp,672 # 8000005c <tdat>
   16dc4:	00000013          	nop
   16dc8:	001100a3          	sb	ra,1(sp)
   16dcc:	00110183          	lb	gp,1(sp)
   16dd0:	fcd00e93          	li	t4,-51
   16dd4:	25d19063          	bne	gp,t4,17014 <fail>
   16dd8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ddc:	00200293          	li	t0,2
   16de0:	fc521ce3          	bne	tp,t0,16db8 <test_13+0x8>

00016de4 <test_14>:
   16de4:	00e00e13          	li	t3,14
   16de8:	00000213          	li	tp,0
   16dec:	fcc00093          	li	ra,-52
   16df0:	7ffe9117          	auipc	sp,0x7ffe9
   16df4:	26c10113          	addi	sp,sp,620 # 8000005c <tdat>
   16df8:	00000013          	nop
   16dfc:	00000013          	nop
   16e00:	00110123          	sb	ra,2(sp)
   16e04:	00210183          	lb	gp,2(sp)
   16e08:	fcc00e93          	li	t4,-52
   16e0c:	21d19463          	bne	gp,t4,17014 <fail>
   16e10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e14:	00200293          	li	t0,2
   16e18:	fc521ae3          	bne	tp,t0,16dec <test_14+0x8>

00016e1c <test_15>:
   16e1c:	00f00e13          	li	t3,15
   16e20:	00000213          	li	tp,0
   16e24:	fbc00093          	li	ra,-68
   16e28:	00000013          	nop
   16e2c:	7ffe9117          	auipc	sp,0x7ffe9
   16e30:	23010113          	addi	sp,sp,560 # 8000005c <tdat>
   16e34:	001101a3          	sb	ra,3(sp)
   16e38:	00310183          	lb	gp,3(sp)
   16e3c:	fbc00e93          	li	t4,-68
   16e40:	1dd19a63          	bne	gp,t4,17014 <fail>
   16e44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e48:	00200293          	li	t0,2
   16e4c:	fc521ce3          	bne	tp,t0,16e24 <test_15+0x8>

00016e50 <test_16>:
   16e50:	01000e13          	li	t3,16
   16e54:	00000213          	li	tp,0
   16e58:	fbb00093          	li	ra,-69
   16e5c:	00000013          	nop
   16e60:	7ffe9117          	auipc	sp,0x7ffe9
   16e64:	1fc10113          	addi	sp,sp,508 # 8000005c <tdat>
   16e68:	00000013          	nop
   16e6c:	00110223          	sb	ra,4(sp)
   16e70:	00410183          	lb	gp,4(sp)
   16e74:	fbb00e93          	li	t4,-69
   16e78:	19d19e63          	bne	gp,t4,17014 <fail>
   16e7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e80:	00200293          	li	t0,2
   16e84:	fc521ae3          	bne	tp,t0,16e58 <test_16+0x8>

00016e88 <test_17>:
   16e88:	01100e13          	li	t3,17
   16e8c:	00000213          	li	tp,0
   16e90:	fab00093          	li	ra,-85
   16e94:	00000013          	nop
   16e98:	00000013          	nop
   16e9c:	7ffe9117          	auipc	sp,0x7ffe9
   16ea0:	1c010113          	addi	sp,sp,448 # 8000005c <tdat>
   16ea4:	001102a3          	sb	ra,5(sp)
   16ea8:	00510183          	lb	gp,5(sp)
   16eac:	fab00e93          	li	t4,-85
   16eb0:	17d19263          	bne	gp,t4,17014 <fail>
   16eb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16eb8:	00200293          	li	t0,2
   16ebc:	fc521ae3          	bne	tp,t0,16e90 <test_17+0x8>

00016ec0 <test_18>:
   16ec0:	01200e13          	li	t3,18
   16ec4:	00000213          	li	tp,0
   16ec8:	7ffe9117          	auipc	sp,0x7ffe9
   16ecc:	19410113          	addi	sp,sp,404 # 8000005c <tdat>
   16ed0:	03300093          	li	ra,51
   16ed4:	00110023          	sb	ra,0(sp)
   16ed8:	00010183          	lb	gp,0(sp)
   16edc:	03300e93          	li	t4,51
   16ee0:	13d19a63          	bne	gp,t4,17014 <fail>
   16ee4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ee8:	00200293          	li	t0,2
   16eec:	fc521ee3          	bne	tp,t0,16ec8 <test_18+0x8>

00016ef0 <test_19>:
   16ef0:	01300e13          	li	t3,19
   16ef4:	00000213          	li	tp,0
   16ef8:	7ffe9117          	auipc	sp,0x7ffe9
   16efc:	16410113          	addi	sp,sp,356 # 8000005c <tdat>
   16f00:	02300093          	li	ra,35
   16f04:	00000013          	nop
   16f08:	001100a3          	sb	ra,1(sp)
   16f0c:	00110183          	lb	gp,1(sp)
   16f10:	02300e93          	li	t4,35
   16f14:	11d19063          	bne	gp,t4,17014 <fail>
   16f18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f1c:	00200293          	li	t0,2
   16f20:	fc521ce3          	bne	tp,t0,16ef8 <test_19+0x8>

00016f24 <test_20>:
   16f24:	01400e13          	li	t3,20
   16f28:	00000213          	li	tp,0
   16f2c:	7ffe9117          	auipc	sp,0x7ffe9
   16f30:	13010113          	addi	sp,sp,304 # 8000005c <tdat>
   16f34:	02200093          	li	ra,34
   16f38:	00000013          	nop
   16f3c:	00000013          	nop
   16f40:	00110123          	sb	ra,2(sp)
   16f44:	00210183          	lb	gp,2(sp)
   16f48:	02200e93          	li	t4,34
   16f4c:	0dd19463          	bne	gp,t4,17014 <fail>
   16f50:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f54:	00200293          	li	t0,2
   16f58:	fc521ae3          	bne	tp,t0,16f2c <test_20+0x8>

00016f5c <test_21>:
   16f5c:	01500e13          	li	t3,21
   16f60:	00000213          	li	tp,0
   16f64:	7ffe9117          	auipc	sp,0x7ffe9
   16f68:	0f810113          	addi	sp,sp,248 # 8000005c <tdat>
   16f6c:	00000013          	nop
   16f70:	01200093          	li	ra,18
   16f74:	001101a3          	sb	ra,3(sp)
   16f78:	00310183          	lb	gp,3(sp)
   16f7c:	01200e93          	li	t4,18
   16f80:	09d19a63          	bne	gp,t4,17014 <fail>
   16f84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f88:	00200293          	li	t0,2
   16f8c:	fc521ce3          	bne	tp,t0,16f64 <test_21+0x8>

00016f90 <test_22>:
   16f90:	01600e13          	li	t3,22
   16f94:	00000213          	li	tp,0
   16f98:	7ffe9117          	auipc	sp,0x7ffe9
   16f9c:	0c410113          	addi	sp,sp,196 # 8000005c <tdat>
   16fa0:	00000013          	nop
   16fa4:	01100093          	li	ra,17
   16fa8:	00000013          	nop
   16fac:	00110223          	sb	ra,4(sp)
   16fb0:	00410183          	lb	gp,4(sp)
   16fb4:	01100e93          	li	t4,17
   16fb8:	05d19e63          	bne	gp,t4,17014 <fail>
   16fbc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16fc0:	00200293          	li	t0,2
   16fc4:	fc521ae3          	bne	tp,t0,16f98 <test_22+0x8>

00016fc8 <test_23>:
   16fc8:	01700e13          	li	t3,23
   16fcc:	00000213          	li	tp,0
   16fd0:	7ffe9117          	auipc	sp,0x7ffe9
   16fd4:	08c10113          	addi	sp,sp,140 # 8000005c <tdat>
   16fd8:	00000013          	nop
   16fdc:	00000013          	nop
   16fe0:	00100093          	li	ra,1
   16fe4:	001102a3          	sb	ra,5(sp)
   16fe8:	00510183          	lb	gp,5(sp)
   16fec:	00100e93          	li	t4,1
   16ff0:	03d19263          	bne	gp,t4,17014 <fail>
   16ff4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ff8:	00200293          	li	t0,2
   16ffc:	fc521ae3          	bne	tp,t0,16fd0 <test_23+0x8>
   17000:	0ef00513          	li	a0,239
   17004:	7ffe9597          	auipc	a1,0x7ffe9
   17008:	05858593          	addi	a1,a1,88 # 8000005c <tdat>
   1700c:	00a581a3          	sb	a0,3(a1)
   17010:	05c01463          	bne	zero,t3,17058 <pass>

00017014 <fail>:
   17014:	0ff00513          	li	a0,255

00017018 <.delay_fail>:
   17018:	fff50513          	addi	a0,a0,-1
   1701c:	fe051ee3          	bnez	a0,17018 <.delay_fail>
   17020:	02000537          	lui	a0,0x2000
   17024:	04500593          	li	a1,69
   17028:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1702c:	05200613          	li	a2,82
   17030:	00c52023          	sw	a2,0(a0)
   17034:	00c52023          	sw	a2,0(a0)
   17038:	04f00693          	li	a3,79
   1703c:	00d52023          	sw	a3,0(a0)
   17040:	00c52023          	sw	a2,0(a0)
   17044:	00d00713          	li	a4,13
   17048:	00e52023          	sw	a4,0(a0)
   1704c:	00a00793          	li	a5,10
   17050:	00f52023          	sw	a5,0(a0)
   17054:	8c0f906f          	j	10114 <sb_ret>

00017058 <pass>:
   17058:	0ff00513          	li	a0,255

0001705c <.delay_ok>:
   1705c:	fff50513          	addi	a0,a0,-1
   17060:	fe051ee3          	bnez	a0,1705c <.delay_ok>
   17064:	02000537          	lui	a0,0x2000
   17068:	04f00593          	li	a1,79
   1706c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   17070:	04b00613          	li	a2,75
   17074:	00c52023          	sw	a2,0(a0)
   17078:	00d00693          	li	a3,13
   1707c:	00d52023          	sw	a3,0(a0)
   17080:	00a00713          	li	a4,10
   17084:	00e52023          	sw	a4,0(a0)
   17088:	88cf906f          	j	10114 <sb_ret>

0001708c <bltu>:
   1708c:	0ff00513          	li	a0,255

00017090 <.delay_pr>:
   17090:	fff50513          	addi	a0,a0,-1
   17094:	fe051ee3          	bnez	a0,17090 <.delay_pr>
   17098:	00017537          	lui	a0,0x17
   1709c:	0b850513          	addi	a0,a0,184 # 170b8 <.test_name>
   170a0:	02000637          	lui	a2,0x2000

000170a4 <.prname_next>:
   170a4:	00050583          	lb	a1,0(a0)
   170a8:	00058c63          	beqz	a1,170c0 <.prname_done>
   170ac:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   170b0:	00150513          	addi	a0,a0,1
   170b4:	ff1ff06f          	j	170a4 <.prname_next>

000170b8 <.test_name>:
   170b8:	6c62                	flw	fs8,24(sp)
   170ba:	7574                	flw	fa3,108(a0)
   170bc:	0000                	unimp
	...

000170c0 <.prname_done>:
   170c0:	02e00593          	li	a1,46
   170c4:	00b62023          	sw	a1,0(a2)
   170c8:	00b62023          	sw	a1,0(a2)

000170cc <test_2>:
   170cc:	00200e13          	li	t3,2
   170d0:	00000093          	li	ra,0
   170d4:	00100113          	li	sp,1
   170d8:	0020e663          	bltu	ra,sp,170e4 <test_2+0x18>
   170dc:	2fc01263          	bne	zero,t3,173c0 <fail>
   170e0:	01c01663          	bne	zero,t3,170ec <test_3>
   170e4:	fe20eee3          	bltu	ra,sp,170e0 <test_2+0x14>
   170e8:	2dc01c63          	bne	zero,t3,173c0 <fail>

000170ec <test_3>:
   170ec:	00300e13          	li	t3,3
   170f0:	ffe00093          	li	ra,-2
   170f4:	fff00113          	li	sp,-1
   170f8:	0020e663          	bltu	ra,sp,17104 <test_3+0x18>
   170fc:	2dc01263          	bne	zero,t3,173c0 <fail>
   17100:	01c01663          	bne	zero,t3,1710c <test_4>
   17104:	fe20eee3          	bltu	ra,sp,17100 <test_3+0x14>
   17108:	2bc01c63          	bne	zero,t3,173c0 <fail>

0001710c <test_4>:
   1710c:	00400e13          	li	t3,4
   17110:	00000093          	li	ra,0
   17114:	fff00113          	li	sp,-1
   17118:	0020e663          	bltu	ra,sp,17124 <test_4+0x18>
   1711c:	2bc01263          	bne	zero,t3,173c0 <fail>
   17120:	01c01663          	bne	zero,t3,1712c <test_5>
   17124:	fe20eee3          	bltu	ra,sp,17120 <test_4+0x14>
   17128:	29c01c63          	bne	zero,t3,173c0 <fail>

0001712c <test_5>:
   1712c:	00500e13          	li	t3,5
   17130:	00100093          	li	ra,1
   17134:	00000113          	li	sp,0
   17138:	0020e463          	bltu	ra,sp,17140 <test_5+0x14>
   1713c:	01c01463          	bne	zero,t3,17144 <test_5+0x18>
   17140:	29c01063          	bne	zero,t3,173c0 <fail>
   17144:	fe20eee3          	bltu	ra,sp,17140 <test_5+0x14>

00017148 <test_6>:
   17148:	00600e13          	li	t3,6
   1714c:	fff00093          	li	ra,-1
   17150:	ffe00113          	li	sp,-2
   17154:	0020e463          	bltu	ra,sp,1715c <test_6+0x14>
   17158:	01c01463          	bne	zero,t3,17160 <test_6+0x18>
   1715c:	27c01263          	bne	zero,t3,173c0 <fail>
   17160:	fe20eee3          	bltu	ra,sp,1715c <test_6+0x14>

00017164 <test_7>:
   17164:	00700e13          	li	t3,7
   17168:	fff00093          	li	ra,-1
   1716c:	00000113          	li	sp,0
   17170:	0020e463          	bltu	ra,sp,17178 <test_7+0x14>
   17174:	01c01463          	bne	zero,t3,1717c <test_7+0x18>
   17178:	25c01463          	bne	zero,t3,173c0 <fail>
   1717c:	fe20eee3          	bltu	ra,sp,17178 <test_7+0x14>

00017180 <test_8>:
   17180:	00800e13          	li	t3,8
   17184:	800000b7          	lui	ra,0x80000
   17188:	80000137          	lui	sp,0x80000
   1718c:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   17190:	0020e463          	bltu	ra,sp,17198 <test_8+0x18>
   17194:	01c01463          	bne	zero,t3,1719c <test_8+0x1c>
   17198:	23c01463          	bne	zero,t3,173c0 <fail>
   1719c:	fe20eee3          	bltu	ra,sp,17198 <test_8+0x18>

000171a0 <test_9>:
   171a0:	00900e13          	li	t3,9
   171a4:	00000213          	li	tp,0
   171a8:	f00000b7          	lui	ra,0xf0000
   171ac:	f0000137          	lui	sp,0xf0000
   171b0:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   171b4:	2020e663          	bltu	ra,sp,173c0 <fail>
   171b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   171bc:	00200293          	li	t0,2
   171c0:	fe5214e3          	bne	tp,t0,171a8 <test_9+0x8>

000171c4 <test_10>:
   171c4:	00a00e13          	li	t3,10
   171c8:	00000213          	li	tp,0
   171cc:	f00000b7          	lui	ra,0xf0000
   171d0:	f0000137          	lui	sp,0xf0000
   171d4:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   171d8:	00000013          	nop
   171dc:	1e20e263          	bltu	ra,sp,173c0 <fail>
   171e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   171e4:	00200293          	li	t0,2
   171e8:	fe5212e3          	bne	tp,t0,171cc <test_10+0x8>

000171ec <test_11>:
   171ec:	00b00e13          	li	t3,11
   171f0:	00000213          	li	tp,0
   171f4:	f00000b7          	lui	ra,0xf0000
   171f8:	f0000137          	lui	sp,0xf0000
   171fc:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17200:	00000013          	nop
   17204:	00000013          	nop
   17208:	1a20ec63          	bltu	ra,sp,173c0 <fail>
   1720c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17210:	00200293          	li	t0,2
   17214:	fe5210e3          	bne	tp,t0,171f4 <test_11+0x8>

00017218 <test_12>:
   17218:	00c00e13          	li	t3,12
   1721c:	00000213          	li	tp,0
   17220:	f00000b7          	lui	ra,0xf0000
   17224:	00000013          	nop
   17228:	f0000137          	lui	sp,0xf0000
   1722c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17230:	1820e863          	bltu	ra,sp,173c0 <fail>
   17234:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17238:	00200293          	li	t0,2
   1723c:	fe5212e3          	bne	tp,t0,17220 <test_12+0x8>

00017240 <test_13>:
   17240:	00d00e13          	li	t3,13
   17244:	00000213          	li	tp,0
   17248:	f00000b7          	lui	ra,0xf0000
   1724c:	00000013          	nop
   17250:	f0000137          	lui	sp,0xf0000
   17254:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17258:	00000013          	nop
   1725c:	1620e263          	bltu	ra,sp,173c0 <fail>
   17260:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17264:	00200293          	li	t0,2
   17268:	fe5210e3          	bne	tp,t0,17248 <test_13+0x8>

0001726c <test_14>:
   1726c:	00e00e13          	li	t3,14
   17270:	00000213          	li	tp,0
   17274:	f00000b7          	lui	ra,0xf0000
   17278:	00000013          	nop
   1727c:	00000013          	nop
   17280:	f0000137          	lui	sp,0xf0000
   17284:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17288:	1220ec63          	bltu	ra,sp,173c0 <fail>
   1728c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17290:	00200293          	li	t0,2
   17294:	fe5210e3          	bne	tp,t0,17274 <test_14+0x8>

00017298 <test_15>:
   17298:	00f00e13          	li	t3,15
   1729c:	00000213          	li	tp,0
   172a0:	f00000b7          	lui	ra,0xf0000
   172a4:	f0000137          	lui	sp,0xf0000
   172a8:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   172ac:	1020ea63          	bltu	ra,sp,173c0 <fail>
   172b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172b4:	00200293          	li	t0,2
   172b8:	fe5214e3          	bne	tp,t0,172a0 <test_15+0x8>

000172bc <test_16>:
   172bc:	01000e13          	li	t3,16
   172c0:	00000213          	li	tp,0
   172c4:	f00000b7          	lui	ra,0xf0000
   172c8:	f0000137          	lui	sp,0xf0000
   172cc:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   172d0:	00000013          	nop
   172d4:	0e20e663          	bltu	ra,sp,173c0 <fail>
   172d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172dc:	00200293          	li	t0,2
   172e0:	fe5212e3          	bne	tp,t0,172c4 <test_16+0x8>

000172e4 <test_17>:
   172e4:	01100e13          	li	t3,17
   172e8:	00000213          	li	tp,0
   172ec:	f00000b7          	lui	ra,0xf0000
   172f0:	f0000137          	lui	sp,0xf0000
   172f4:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   172f8:	00000013          	nop
   172fc:	00000013          	nop
   17300:	0c20e063          	bltu	ra,sp,173c0 <fail>
   17304:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17308:	00200293          	li	t0,2
   1730c:	fe5210e3          	bne	tp,t0,172ec <test_17+0x8>

00017310 <test_18>:
   17310:	01200e13          	li	t3,18
   17314:	00000213          	li	tp,0
   17318:	f00000b7          	lui	ra,0xf0000
   1731c:	00000013          	nop
   17320:	f0000137          	lui	sp,0xf0000
   17324:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17328:	0820ec63          	bltu	ra,sp,173c0 <fail>
   1732c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17330:	00200293          	li	t0,2
   17334:	fe5212e3          	bne	tp,t0,17318 <test_18+0x8>

00017338 <test_19>:
   17338:	01300e13          	li	t3,19
   1733c:	00000213          	li	tp,0
   17340:	f00000b7          	lui	ra,0xf0000
   17344:	00000013          	nop
   17348:	f0000137          	lui	sp,0xf0000
   1734c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17350:	00000013          	nop
   17354:	0620e663          	bltu	ra,sp,173c0 <fail>
   17358:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1735c:	00200293          	li	t0,2
   17360:	fe5210e3          	bne	tp,t0,17340 <test_19+0x8>

00017364 <test_20>:
   17364:	01400e13          	li	t3,20
   17368:	00000213          	li	tp,0
   1736c:	f00000b7          	lui	ra,0xf0000
   17370:	00000013          	nop
   17374:	00000013          	nop
   17378:	f0000137          	lui	sp,0xf0000
   1737c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17380:	0420e063          	bltu	ra,sp,173c0 <fail>
   17384:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17388:	00200293          	li	t0,2
   1738c:	fe5210e3          	bne	tp,t0,1736c <test_20+0x8>

00017390 <test_21>:
   17390:	00100093          	li	ra,1
   17394:	00106a63          	bltu	zero,ra,173a8 <test_21+0x18>
   17398:	00108093          	addi	ra,ra,1 # f0000001 <_edata+0x6fffff91>
   1739c:	00108093          	addi	ra,ra,1
   173a0:	00108093          	addi	ra,ra,1
   173a4:	00108093          	addi	ra,ra,1
   173a8:	00108093          	addi	ra,ra,1
   173ac:	00108093          	addi	ra,ra,1
   173b0:	00300e93          	li	t4,3
   173b4:	01500e13          	li	t3,21
   173b8:	01d09463          	bne	ra,t4,173c0 <fail>
   173bc:	05c01463          	bne	zero,t3,17404 <pass>

000173c0 <fail>:
   173c0:	0ff00513          	li	a0,255

000173c4 <.delay_fail>:
   173c4:	fff50513          	addi	a0,a0,-1
   173c8:	fe051ee3          	bnez	a0,173c4 <.delay_fail>
   173cc:	02000537          	lui	a0,0x2000
   173d0:	04500593          	li	a1,69
   173d4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   173d8:	05200613          	li	a2,82
   173dc:	00c52023          	sw	a2,0(a0)
   173e0:	00c52023          	sw	a2,0(a0)
   173e4:	04f00693          	li	a3,79
   173e8:	00d52023          	sw	a3,0(a0)
   173ec:	00c52023          	sw	a2,0(a0)
   173f0:	00d00713          	li	a4,13
   173f4:	00e52023          	sw	a4,0(a0)
   173f8:	00a00793          	li	a5,10
   173fc:	00f52023          	sw	a5,0(a0)
   17400:	cf9f806f          	j	100f8 <bltu_ret>

00017404 <pass>:
   17404:	0ff00513          	li	a0,255

00017408 <.delay_ok>:
   17408:	fff50513          	addi	a0,a0,-1
   1740c:	fe051ee3          	bnez	a0,17408 <.delay_ok>
   17410:	02000537          	lui	a0,0x2000
   17414:	04f00593          	li	a1,79
   17418:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1741c:	04b00613          	li	a2,75
   17420:	00c52023          	sw	a2,0(a0)
   17424:	00d00693          	li	a3,13
   17428:	00d52023          	sw	a3,0(a0)
   1742c:	00a00713          	li	a4,10
   17430:	00e52023          	sw	a4,0(a0)
   17434:	cc5f806f          	j	100f8 <bltu_ret>

00017438 <remu>:
   17438:	0ff00513          	li	a0,255

0001743c <.delay_pr>:
   1743c:	fff50513          	addi	a0,a0,-1
   17440:	fe051ee3          	bnez	a0,1743c <.delay_pr>
   17444:	00017537          	lui	a0,0x17
   17448:	46450513          	addi	a0,a0,1124 # 17464 <.test_name>
   1744c:	02000637          	lui	a2,0x2000

00017450 <.prname_next>:
   17450:	00050583          	lb	a1,0(a0)
   17454:	00058c63          	beqz	a1,1746c <.prname_done>
   17458:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   1745c:	00150513          	addi	a0,a0,1
   17460:	ff1ff06f          	j	17450 <.prname_next>

00017464 <.test_name>:
   17464:	6572                	flw	fa0,28(sp)
   17466:	756d                	lui	a0,0xffffb
   17468:	0000                	unimp
	...

0001746c <.prname_done>:
   1746c:	02e00593          	li	a1,46
   17470:	00b62023          	sw	a1,0(a2)
   17474:	00b62023          	sw	a1,0(a2)

00017478 <test_2>:
   17478:	01400093          	li	ra,20
   1747c:	00600113          	li	sp,6
   17480:	0220f1b3          	remu	gp,ra,sp
   17484:	00200e93          	li	t4,2
   17488:	00200e13          	li	t3,2
   1748c:	0dd19463          	bne	gp,t4,17554 <fail>

00017490 <test_3>:
   17490:	fec00093          	li	ra,-20
   17494:	00600113          	li	sp,6
   17498:	0220f1b3          	remu	gp,ra,sp
   1749c:	00200e93          	li	t4,2
   174a0:	00300e13          	li	t3,3
   174a4:	0bd19863          	bne	gp,t4,17554 <fail>

000174a8 <test_4>:
   174a8:	01400093          	li	ra,20
   174ac:	ffa00113          	li	sp,-6
   174b0:	0220f1b3          	remu	gp,ra,sp
   174b4:	01400e93          	li	t4,20
   174b8:	00400e13          	li	t3,4
   174bc:	09d19c63          	bne	gp,t4,17554 <fail>

000174c0 <test_5>:
   174c0:	fec00093          	li	ra,-20
   174c4:	ffa00113          	li	sp,-6
   174c8:	0220f1b3          	remu	gp,ra,sp
   174cc:	fec00e93          	li	t4,-20
   174d0:	00500e13          	li	t3,5
   174d4:	09d19063          	bne	gp,t4,17554 <fail>

000174d8 <test_6>:
   174d8:	800000b7          	lui	ra,0x80000
   174dc:	00100113          	li	sp,1
   174e0:	0220f1b3          	remu	gp,ra,sp
   174e4:	00000e93          	li	t4,0
   174e8:	00600e13          	li	t3,6
   174ec:	07d19463          	bne	gp,t4,17554 <fail>

000174f0 <test_7>:
   174f0:	800000b7          	lui	ra,0x80000
   174f4:	fff00113          	li	sp,-1
   174f8:	0220f1b3          	remu	gp,ra,sp
   174fc:	80000eb7          	lui	t4,0x80000
   17500:	00700e13          	li	t3,7
   17504:	05d19863          	bne	gp,t4,17554 <fail>

00017508 <test_8>:
   17508:	800000b7          	lui	ra,0x80000
   1750c:	00000113          	li	sp,0
   17510:	0220f1b3          	remu	gp,ra,sp
   17514:	80000eb7          	lui	t4,0x80000
   17518:	00800e13          	li	t3,8
   1751c:	03d19c63          	bne	gp,t4,17554 <fail>

00017520 <test_9>:
   17520:	00100093          	li	ra,1
   17524:	00000113          	li	sp,0
   17528:	0220f1b3          	remu	gp,ra,sp
   1752c:	00100e93          	li	t4,1
   17530:	00900e13          	li	t3,9
   17534:	03d19063          	bne	gp,t4,17554 <fail>

00017538 <test_10>:
   17538:	00000093          	li	ra,0
   1753c:	00000113          	li	sp,0
   17540:	0220f1b3          	remu	gp,ra,sp
   17544:	00000e93          	li	t4,0
   17548:	00a00e13          	li	t3,10
   1754c:	01d19463          	bne	gp,t4,17554 <fail>
   17550:	05c01463          	bne	zero,t3,17598 <pass>

00017554 <fail>:
   17554:	0ff00513          	li	a0,255

00017558 <.delay_fail>:
   17558:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1755c:	fe051ee3          	bnez	a0,17558 <.delay_fail>
   17560:	02000537          	lui	a0,0x2000
   17564:	04500593          	li	a1,69
   17568:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1756c:	05200613          	li	a2,82
   17570:	00c52023          	sw	a2,0(a0)
   17574:	00c52023          	sw	a2,0(a0)
   17578:	04f00693          	li	a3,79
   1757c:	00d52023          	sw	a3,0(a0)
   17580:	00c52023          	sw	a2,0(a0)
   17584:	00d00713          	li	a4,13
   17588:	00e52023          	sw	a4,0(a0)
   1758c:	00a00793          	li	a5,10
   17590:	00f52023          	sw	a5,0(a0)
   17594:	bedf806f          	j	10180 <remu_ret>

00017598 <pass>:
   17598:	0ff00513          	li	a0,255

0001759c <.delay_ok>:
   1759c:	fff50513          	addi	a0,a0,-1
   175a0:	fe051ee3          	bnez	a0,1759c <.delay_ok>
   175a4:	02000537          	lui	a0,0x2000
   175a8:	04f00593          	li	a1,79
   175ac:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   175b0:	04b00613          	li	a2,75
   175b4:	00c52023          	sw	a2,0(a0)
   175b8:	00d00693          	li	a3,13
   175bc:	00d52023          	sw	a3,0(a0)
   175c0:	00a00713          	li	a4,10
   175c4:	00e52023          	sw	a4,0(a0)
   175c8:	bb9f806f          	j	10180 <remu_ret>

000175cc <simple>:
   175cc:	0ff00513          	li	a0,255

000175d0 <.delay_pr>:
   175d0:	fff50513          	addi	a0,a0,-1
   175d4:	fe051ee3          	bnez	a0,175d0 <.delay_pr>
   175d8:	00017537          	lui	a0,0x17
   175dc:	5f850513          	addi	a0,a0,1528 # 175f8 <.test_name>
   175e0:	02000637          	lui	a2,0x2000

000175e4 <.prname_next>:
   175e4:	00050583          	lb	a1,0(a0)
   175e8:	00058c63          	beqz	a1,17600 <.prname_done>
   175ec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   175f0:	00150513          	addi	a0,a0,1
   175f4:	ff1ff06f          	j	175e4 <.prname_next>

000175f8 <.test_name>:
   175f8:	706d6973          	csrrsi	s2,0x706,26
   175fc:	656c                	flw	fa1,76(a0)
	...

00017600 <.prname_done>:
   17600:	02e00593          	li	a1,46
   17604:	00b62023          	sw	a1,0(a2)
   17608:	00b62023          	sw	a1,0(a2)
   1760c:	0ff00513          	li	a0,255

00017610 <.delay_ok>:
   17610:	fff50513          	addi	a0,a0,-1
   17614:	fe051ee3          	bnez	a0,17610 <.delay_ok>
   17618:	02000537          	lui	a0,0x2000
   1761c:	04f00593          	li	a1,79
   17620:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   17624:	04b00613          	li	a2,75
   17628:	00c52023          	sw	a2,0(a0)
   1762c:	00d00693          	li	a3,13
   17630:	00d52023          	sw	a3,0(a0)
   17634:	00a00713          	li	a4,10
   17638:	00e52023          	sw	a4,0(a0)
   1763c:	b49f806f          	j	10184 <simple_ret>

00017640 <slli>:
   17640:	0ff00513          	li	a0,255

00017644 <.delay_pr>:
   17644:	fff50513          	addi	a0,a0,-1
   17648:	fe051ee3          	bnez	a0,17644 <.delay_pr>
   1764c:	00017537          	lui	a0,0x17
   17650:	66c50513          	addi	a0,a0,1644 # 1766c <.test_name>
   17654:	02000637          	lui	a2,0x2000

00017658 <.prname_next>:
   17658:	00050583          	lb	a1,0(a0)
   1765c:	00058c63          	beqz	a1,17674 <.prname_done>
   17660:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   17664:	00150513          	addi	a0,a0,1
   17668:	ff1ff06f          	j	17658 <.prname_next>

0001766c <.test_name>:
   1766c:	696c6c73          	csrrsi	s8,0x696,24
   17670:	0000                	unimp
	...

00017674 <.prname_done>:
   17674:	02e00593          	li	a1,46
   17678:	00b62023          	sw	a1,0(a2)
   1767c:	00b62023          	sw	a1,0(a2)

00017680 <test_2>:
   17680:	00100093          	li	ra,1
   17684:	00009193          	slli	gp,ra,0x0
   17688:	00100e93          	li	t4,1
   1768c:	00200e13          	li	t3,2
   17690:	27d19a63          	bne	gp,t4,17904 <fail>

00017694 <test_3>:
   17694:	00100093          	li	ra,1
   17698:	00109193          	slli	gp,ra,0x1
   1769c:	00200e93          	li	t4,2
   176a0:	00300e13          	li	t3,3
   176a4:	27d19063          	bne	gp,t4,17904 <fail>

000176a8 <test_4>:
   176a8:	00100093          	li	ra,1
   176ac:	00709193          	slli	gp,ra,0x7
   176b0:	08000e93          	li	t4,128
   176b4:	00400e13          	li	t3,4
   176b8:	25d19663          	bne	gp,t4,17904 <fail>

000176bc <test_5>:
   176bc:	00100093          	li	ra,1
   176c0:	00e09193          	slli	gp,ra,0xe
   176c4:	00004eb7          	lui	t4,0x4
   176c8:	00500e13          	li	t3,5
   176cc:	23d19c63          	bne	gp,t4,17904 <fail>

000176d0 <test_6>:
   176d0:	00100093          	li	ra,1
   176d4:	01f09193          	slli	gp,ra,0x1f
   176d8:	80000eb7          	lui	t4,0x80000
   176dc:	00600e13          	li	t3,6
   176e0:	23d19263          	bne	gp,t4,17904 <fail>

000176e4 <test_7>:
   176e4:	fff00093          	li	ra,-1
   176e8:	00009193          	slli	gp,ra,0x0
   176ec:	fff00e93          	li	t4,-1
   176f0:	00700e13          	li	t3,7
   176f4:	21d19863          	bne	gp,t4,17904 <fail>

000176f8 <test_8>:
   176f8:	fff00093          	li	ra,-1
   176fc:	00109193          	slli	gp,ra,0x1
   17700:	ffe00e93          	li	t4,-2
   17704:	00800e13          	li	t3,8
   17708:	1fd19e63          	bne	gp,t4,17904 <fail>

0001770c <test_9>:
   1770c:	fff00093          	li	ra,-1
   17710:	00709193          	slli	gp,ra,0x7
   17714:	f8000e93          	li	t4,-128
   17718:	00900e13          	li	t3,9
   1771c:	1fd19463          	bne	gp,t4,17904 <fail>

00017720 <test_10>:
   17720:	fff00093          	li	ra,-1
   17724:	00e09193          	slli	gp,ra,0xe
   17728:	ffffceb7          	lui	t4,0xffffc
   1772c:	00a00e13          	li	t3,10
   17730:	1dd19a63          	bne	gp,t4,17904 <fail>

00017734 <test_11>:
   17734:	fff00093          	li	ra,-1
   17738:	01f09193          	slli	gp,ra,0x1f
   1773c:	80000eb7          	lui	t4,0x80000
   17740:	00b00e13          	li	t3,11
   17744:	1dd19063          	bne	gp,t4,17904 <fail>

00017748 <test_12>:
   17748:	212120b7          	lui	ra,0x21212
   1774c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   17750:	00009193          	slli	gp,ra,0x0
   17754:	21212eb7          	lui	t4,0x21212
   17758:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7aed>
   1775c:	00c00e13          	li	t3,12
   17760:	1bd19263          	bne	gp,t4,17904 <fail>

00017764 <test_13>:
   17764:	212120b7          	lui	ra,0x21212
   17768:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   1776c:	00109193          	slli	gp,ra,0x1
   17770:	42424eb7          	lui	t4,0x42424
   17774:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c0e>
   17778:	00d00e13          	li	t3,13
   1777c:	19d19463          	bne	gp,t4,17904 <fail>

00017780 <test_14>:
   17780:	212120b7          	lui	ra,0x21212
   17784:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   17788:	00709193          	slli	gp,ra,0x7
   1778c:	90909eb7          	lui	t4,0x90909
   17790:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   17794:	00e00e13          	li	t3,14
   17798:	17d19663          	bne	gp,t4,17904 <fail>

0001779c <test_15>:
   1779c:	212120b7          	lui	ra,0x21212
   177a0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   177a4:	00e09193          	slli	gp,ra,0xe
   177a8:	48484eb7          	lui	t4,0x48484
   177ac:	00f00e13          	li	t3,15
   177b0:	15d19a63          	bne	gp,t4,17904 <fail>

000177b4 <test_16>:
   177b4:	212120b7          	lui	ra,0x21212
   177b8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   177bc:	01f09193          	slli	gp,ra,0x1f
   177c0:	80000eb7          	lui	t4,0x80000
   177c4:	01000e13          	li	t3,16
   177c8:	13d19e63          	bne	gp,t4,17904 <fail>

000177cc <test_17>:
   177cc:	00100093          	li	ra,1
   177d0:	00709093          	slli	ra,ra,0x7
   177d4:	08000e93          	li	t4,128
   177d8:	01100e13          	li	t3,17
   177dc:	13d09463          	bne	ra,t4,17904 <fail>

000177e0 <test_18>:
   177e0:	00000213          	li	tp,0
   177e4:	00100093          	li	ra,1
   177e8:	00709193          	slli	gp,ra,0x7
   177ec:	00018313          	mv	t1,gp
   177f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   177f4:	00200293          	li	t0,2
   177f8:	fe5216e3          	bne	tp,t0,177e4 <test_18+0x4>
   177fc:	08000e93          	li	t4,128
   17800:	01200e13          	li	t3,18
   17804:	11d31063          	bne	t1,t4,17904 <fail>

00017808 <test_19>:
   17808:	00000213          	li	tp,0
   1780c:	00100093          	li	ra,1
   17810:	00e09193          	slli	gp,ra,0xe
   17814:	00000013          	nop
   17818:	00018313          	mv	t1,gp
   1781c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17820:	00200293          	li	t0,2
   17824:	fe5214e3          	bne	tp,t0,1780c <test_19+0x4>
   17828:	00004eb7          	lui	t4,0x4
   1782c:	01300e13          	li	t3,19
   17830:	0dd31a63          	bne	t1,t4,17904 <fail>

00017834 <test_20>:
   17834:	00000213          	li	tp,0
   17838:	00100093          	li	ra,1
   1783c:	01f09193          	slli	gp,ra,0x1f
   17840:	00000013          	nop
   17844:	00000013          	nop
   17848:	00018313          	mv	t1,gp
   1784c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17850:	00200293          	li	t0,2
   17854:	fe5212e3          	bne	tp,t0,17838 <test_20+0x4>
   17858:	80000eb7          	lui	t4,0x80000
   1785c:	01400e13          	li	t3,20
   17860:	0bd31263          	bne	t1,t4,17904 <fail>

00017864 <test_21>:
   17864:	00000213          	li	tp,0
   17868:	00100093          	li	ra,1
   1786c:	00709193          	slli	gp,ra,0x7
   17870:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17874:	00200293          	li	t0,2
   17878:	fe5218e3          	bne	tp,t0,17868 <test_21+0x4>
   1787c:	08000e93          	li	t4,128
   17880:	01500e13          	li	t3,21
   17884:	09d19063          	bne	gp,t4,17904 <fail>

00017888 <test_22>:
   17888:	00000213          	li	tp,0
   1788c:	00100093          	li	ra,1
   17890:	00000013          	nop
   17894:	00e09193          	slli	gp,ra,0xe
   17898:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1789c:	00200293          	li	t0,2
   178a0:	fe5216e3          	bne	tp,t0,1788c <test_22+0x4>
   178a4:	00004eb7          	lui	t4,0x4
   178a8:	01600e13          	li	t3,22
   178ac:	05d19c63          	bne	gp,t4,17904 <fail>

000178b0 <test_23>:
   178b0:	00000213          	li	tp,0
   178b4:	00100093          	li	ra,1
   178b8:	00000013          	nop
   178bc:	00000013          	nop
   178c0:	01f09193          	slli	gp,ra,0x1f
   178c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   178c8:	00200293          	li	t0,2
   178cc:	fe5214e3          	bne	tp,t0,178b4 <test_23+0x4>
   178d0:	80000eb7          	lui	t4,0x80000
   178d4:	01700e13          	li	t3,23
   178d8:	03d19663          	bne	gp,t4,17904 <fail>

000178dc <test_24>:
   178dc:	01f01093          	slli	ra,zero,0x1f
   178e0:	00000e93          	li	t4,0
   178e4:	01800e13          	li	t3,24
   178e8:	01d09e63          	bne	ra,t4,17904 <fail>

000178ec <test_25>:
   178ec:	02100093          	li	ra,33
   178f0:	01409013          	slli	zero,ra,0x14
   178f4:	00000e93          	li	t4,0
   178f8:	01900e13          	li	t3,25
   178fc:	01d01463          	bne	zero,t4,17904 <fail>
   17900:	05c01463          	bne	zero,t3,17948 <pass>

00017904 <fail>:
   17904:	0ff00513          	li	a0,255

00017908 <.delay_fail>:
   17908:	fff50513          	addi	a0,a0,-1
   1790c:	fe051ee3          	bnez	a0,17908 <.delay_fail>
   17910:	02000537          	lui	a0,0x2000
   17914:	04500593          	li	a1,69
   17918:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1791c:	05200613          	li	a2,82
   17920:	00c52023          	sw	a2,0(a0)
   17924:	00c52023          	sw	a2,0(a0)
   17928:	04f00693          	li	a3,79
   1792c:	00d52023          	sw	a3,0(a0)
   17930:	00c52023          	sw	a2,0(a0)
   17934:	00d00713          	li	a4,13
   17938:	00e52023          	sw	a4,0(a0)
   1793c:	00a00793          	li	a5,10
   17940:	00f52023          	sw	a5,0(a0)
   17944:	ff0f806f          	j	10134 <slli_ret>

00017948 <pass>:
   17948:	0ff00513          	li	a0,255

0001794c <.delay_ok>:
   1794c:	fff50513          	addi	a0,a0,-1
   17950:	fe051ee3          	bnez	a0,1794c <.delay_ok>
   17954:	02000537          	lui	a0,0x2000
   17958:	04f00593          	li	a1,79
   1795c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   17960:	04b00613          	li	a2,75
   17964:	00c52023          	sw	a2,0(a0)
   17968:	00d00693          	li	a3,13
   1796c:	00d52023          	sw	a3,0(a0)
   17970:	00a00713          	li	a4,10
   17974:	00e52023          	sw	a4,0(a0)
   17978:	fbcf806f          	j	10134 <slli_ret>

0001797c <and>:
   1797c:	0ff00513          	li	a0,255

00017980 <.delay_pr>:
   17980:	fff50513          	addi	a0,a0,-1
   17984:	fe051ee3          	bnez	a0,17980 <.delay_pr>
   17988:	00018537          	lui	a0,0x18
   1798c:	9a850513          	addi	a0,a0,-1624 # 179a8 <.test_name>
   17990:	02000637          	lui	a2,0x2000

00017994 <.prname_next>:
   17994:	00050583          	lb	a1,0(a0)
   17998:	00058a63          	beqz	a1,179ac <.prname_done>
   1799c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   179a0:	00150513          	addi	a0,a0,1
   179a4:	ff1ff06f          	j	17994 <.prname_next>

000179a8 <.test_name>:
   179a8:	6e61                	lui	t3,0x18
   179aa:	0064                	addi	s1,sp,12

000179ac <.prname_done>:
   179ac:	02e00593          	li	a1,46
   179b0:	00b62023          	sw	a1,0(a2)
   179b4:	00b62023          	sw	a1,0(a2)

000179b8 <test_2>:
   179b8:	ff0100b7          	lui	ra,0xff010
   179bc:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   179c0:	0f0f1137          	lui	sp,0xf0f1
   179c4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   179c8:	0020f1b3          	and	gp,ra,sp
   179cc:	0f001eb7          	lui	t4,0xf001
   179d0:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68cc>
   179d4:	00200e13          	li	t3,2
   179d8:	49d19c63          	bne	gp,t4,17e70 <fail>

000179dc <test_3>:
   179dc:	0ff010b7          	lui	ra,0xff01
   179e0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   179e4:	f0f0f137          	lui	sp,0xf0f0f
   179e8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   179ec:	0020f1b3          	and	gp,ra,sp
   179f0:	00f00eb7          	lui	t4,0xf00
   179f4:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5abc>
   179f8:	00300e13          	li	t3,3
   179fc:	47d19a63          	bne	gp,t4,17e70 <fail>

00017a00 <test_4>:
   17a00:	00ff00b7          	lui	ra,0xff0
   17a04:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17a08:	0f0f1137          	lui	sp,0xf0f1
   17a0c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17a10:	0020f1b3          	and	gp,ra,sp
   17a14:	000f0eb7          	lui	t4,0xf0
   17a18:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59db>
   17a1c:	00400e13          	li	t3,4
   17a20:	45d19863          	bne	gp,t4,17e70 <fail>

00017a24 <test_5>:
   17a24:	f00ff0b7          	lui	ra,0xf00ff
   17a28:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   17a2c:	f0f0f137          	lui	sp,0xf0f0f
   17a30:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17a34:	0020f1b3          	and	gp,ra,sp
   17a38:	f000feb7          	lui	t4,0xf000f
   17a3c:	00500e13          	li	t3,5
   17a40:	43d19863          	bne	gp,t4,17e70 <fail>

00017a44 <test_6>:
   17a44:	ff0100b7          	lui	ra,0xff010
   17a48:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17a4c:	0f0f1137          	lui	sp,0xf0f1
   17a50:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17a54:	0020f0b3          	and	ra,ra,sp
   17a58:	0f001eb7          	lui	t4,0xf001
   17a5c:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68cc>
   17a60:	00600e13          	li	t3,6
   17a64:	41d09663          	bne	ra,t4,17e70 <fail>

00017a68 <test_7>:
   17a68:	0ff010b7          	lui	ra,0xff01
   17a6c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17a70:	f0f0f137          	lui	sp,0xf0f0f
   17a74:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17a78:	0020f133          	and	sp,ra,sp
   17a7c:	00f00eb7          	lui	t4,0xf00
   17a80:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5abc>
   17a84:	00700e13          	li	t3,7
   17a88:	3fd11463          	bne	sp,t4,17e70 <fail>

00017a8c <test_8>:
   17a8c:	ff0100b7          	lui	ra,0xff010
   17a90:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17a94:	0010f0b3          	and	ra,ra,ra
   17a98:	ff010eb7          	lui	t4,0xff010
   17a9c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   17aa0:	00800e13          	li	t3,8
   17aa4:	3dd09663          	bne	ra,t4,17e70 <fail>

00017aa8 <test_9>:
   17aa8:	00000213          	li	tp,0
   17aac:	ff0100b7          	lui	ra,0xff010
   17ab0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17ab4:	0f0f1137          	lui	sp,0xf0f1
   17ab8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17abc:	0020f1b3          	and	gp,ra,sp
   17ac0:	00018313          	mv	t1,gp
   17ac4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17ac8:	00200293          	li	t0,2
   17acc:	fe5210e3          	bne	tp,t0,17aac <test_9+0x4>
   17ad0:	0f001eb7          	lui	t4,0xf001
   17ad4:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68cc>
   17ad8:	00900e13          	li	t3,9
   17adc:	39d31a63          	bne	t1,t4,17e70 <fail>

00017ae0 <test_10>:
   17ae0:	00000213          	li	tp,0
   17ae4:	0ff010b7          	lui	ra,0xff01
   17ae8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17aec:	f0f0f137          	lui	sp,0xf0f0f
   17af0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17af4:	0020f1b3          	and	gp,ra,sp
   17af8:	00000013          	nop
   17afc:	00018313          	mv	t1,gp
   17b00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b04:	00200293          	li	t0,2
   17b08:	fc521ee3          	bne	tp,t0,17ae4 <test_10+0x4>
   17b0c:	00f00eb7          	lui	t4,0xf00
   17b10:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5abc>
   17b14:	00a00e13          	li	t3,10
   17b18:	35d31c63          	bne	t1,t4,17e70 <fail>

00017b1c <test_11>:
   17b1c:	00000213          	li	tp,0
   17b20:	00ff00b7          	lui	ra,0xff0
   17b24:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17b28:	0f0f1137          	lui	sp,0xf0f1
   17b2c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17b30:	0020f1b3          	and	gp,ra,sp
   17b34:	00000013          	nop
   17b38:	00000013          	nop
   17b3c:	00018313          	mv	t1,gp
   17b40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b44:	00200293          	li	t0,2
   17b48:	fc521ce3          	bne	tp,t0,17b20 <test_11+0x4>
   17b4c:	000f0eb7          	lui	t4,0xf0
   17b50:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59db>
   17b54:	00b00e13          	li	t3,11
   17b58:	31d31c63          	bne	t1,t4,17e70 <fail>

00017b5c <test_12>:
   17b5c:	00000213          	li	tp,0
   17b60:	ff0100b7          	lui	ra,0xff010
   17b64:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17b68:	0f0f1137          	lui	sp,0xf0f1
   17b6c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17b70:	0020f1b3          	and	gp,ra,sp
   17b74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b78:	00200293          	li	t0,2
   17b7c:	fe5212e3          	bne	tp,t0,17b60 <test_12+0x4>
   17b80:	0f001eb7          	lui	t4,0xf001
   17b84:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68cc>
   17b88:	00c00e13          	li	t3,12
   17b8c:	2fd19263          	bne	gp,t4,17e70 <fail>

00017b90 <test_13>:
   17b90:	00000213          	li	tp,0
   17b94:	0ff010b7          	lui	ra,0xff01
   17b98:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17b9c:	f0f0f137          	lui	sp,0xf0f0f
   17ba0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17ba4:	00000013          	nop
   17ba8:	0020f1b3          	and	gp,ra,sp
   17bac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bb0:	00200293          	li	t0,2
   17bb4:	fe5210e3          	bne	tp,t0,17b94 <test_13+0x4>
   17bb8:	00f00eb7          	lui	t4,0xf00
   17bbc:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5abc>
   17bc0:	00d00e13          	li	t3,13
   17bc4:	2bd19663          	bne	gp,t4,17e70 <fail>

00017bc8 <test_14>:
   17bc8:	00000213          	li	tp,0
   17bcc:	00ff00b7          	lui	ra,0xff0
   17bd0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17bd4:	0f0f1137          	lui	sp,0xf0f1
   17bd8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17bdc:	00000013          	nop
   17be0:	00000013          	nop
   17be4:	0020f1b3          	and	gp,ra,sp
   17be8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bec:	00200293          	li	t0,2
   17bf0:	fc521ee3          	bne	tp,t0,17bcc <test_14+0x4>
   17bf4:	000f0eb7          	lui	t4,0xf0
   17bf8:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59db>
   17bfc:	00e00e13          	li	t3,14
   17c00:	27d19863          	bne	gp,t4,17e70 <fail>

00017c04 <test_15>:
   17c04:	00000213          	li	tp,0
   17c08:	ff0100b7          	lui	ra,0xff010
   17c0c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17c10:	00000013          	nop
   17c14:	0f0f1137          	lui	sp,0xf0f1
   17c18:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17c1c:	0020f1b3          	and	gp,ra,sp
   17c20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c24:	00200293          	li	t0,2
   17c28:	fe5210e3          	bne	tp,t0,17c08 <test_15+0x4>
   17c2c:	0f001eb7          	lui	t4,0xf001
   17c30:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68cc>
   17c34:	00f00e13          	li	t3,15
   17c38:	23d19c63          	bne	gp,t4,17e70 <fail>

00017c3c <test_16>:
   17c3c:	00000213          	li	tp,0
   17c40:	0ff010b7          	lui	ra,0xff01
   17c44:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17c48:	00000013          	nop
   17c4c:	f0f0f137          	lui	sp,0xf0f0f
   17c50:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17c54:	00000013          	nop
   17c58:	0020f1b3          	and	gp,ra,sp
   17c5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c60:	00200293          	li	t0,2
   17c64:	fc521ee3          	bne	tp,t0,17c40 <test_16+0x4>
   17c68:	00f00eb7          	lui	t4,0xf00
   17c6c:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5abc>
   17c70:	01000e13          	li	t3,16
   17c74:	1fd19e63          	bne	gp,t4,17e70 <fail>

00017c78 <test_17>:
   17c78:	00000213          	li	tp,0
   17c7c:	00ff00b7          	lui	ra,0xff0
   17c80:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17c84:	00000013          	nop
   17c88:	00000013          	nop
   17c8c:	0f0f1137          	lui	sp,0xf0f1
   17c90:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17c94:	0020f1b3          	and	gp,ra,sp
   17c98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c9c:	00200293          	li	t0,2
   17ca0:	fc521ee3          	bne	tp,t0,17c7c <test_17+0x4>
   17ca4:	000f0eb7          	lui	t4,0xf0
   17ca8:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59db>
   17cac:	01100e13          	li	t3,17
   17cb0:	1dd19063          	bne	gp,t4,17e70 <fail>

00017cb4 <test_18>:
   17cb4:	00000213          	li	tp,0
   17cb8:	0f0f1137          	lui	sp,0xf0f1
   17cbc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17cc0:	ff0100b7          	lui	ra,0xff010
   17cc4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17cc8:	0020f1b3          	and	gp,ra,sp
   17ccc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17cd0:	00200293          	li	t0,2
   17cd4:	fe5212e3          	bne	tp,t0,17cb8 <test_18+0x4>
   17cd8:	0f001eb7          	lui	t4,0xf001
   17cdc:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68cc>
   17ce0:	01200e13          	li	t3,18
   17ce4:	19d19663          	bne	gp,t4,17e70 <fail>

00017ce8 <test_19>:
   17ce8:	00000213          	li	tp,0
   17cec:	f0f0f137          	lui	sp,0xf0f0f
   17cf0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17cf4:	0ff010b7          	lui	ra,0xff01
   17cf8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17cfc:	00000013          	nop
   17d00:	0020f1b3          	and	gp,ra,sp
   17d04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d08:	00200293          	li	t0,2
   17d0c:	fe5210e3          	bne	tp,t0,17cec <test_19+0x4>
   17d10:	00f00eb7          	lui	t4,0xf00
   17d14:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5abc>
   17d18:	01300e13          	li	t3,19
   17d1c:	15d19a63          	bne	gp,t4,17e70 <fail>

00017d20 <test_20>:
   17d20:	00000213          	li	tp,0
   17d24:	0f0f1137          	lui	sp,0xf0f1
   17d28:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17d2c:	00ff00b7          	lui	ra,0xff0
   17d30:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17d34:	00000013          	nop
   17d38:	00000013          	nop
   17d3c:	0020f1b3          	and	gp,ra,sp
   17d40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d44:	00200293          	li	t0,2
   17d48:	fc521ee3          	bne	tp,t0,17d24 <test_20+0x4>
   17d4c:	000f0eb7          	lui	t4,0xf0
   17d50:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59db>
   17d54:	01400e13          	li	t3,20
   17d58:	11d19c63          	bne	gp,t4,17e70 <fail>

00017d5c <test_21>:
   17d5c:	00000213          	li	tp,0
   17d60:	0f0f1137          	lui	sp,0xf0f1
   17d64:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17d68:	00000013          	nop
   17d6c:	ff0100b7          	lui	ra,0xff010
   17d70:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17d74:	0020f1b3          	and	gp,ra,sp
   17d78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d7c:	00200293          	li	t0,2
   17d80:	fe5210e3          	bne	tp,t0,17d60 <test_21+0x4>
   17d84:	0f001eb7          	lui	t4,0xf001
   17d88:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68cc>
   17d8c:	01500e13          	li	t3,21
   17d90:	0fd19063          	bne	gp,t4,17e70 <fail>

00017d94 <test_22>:
   17d94:	00000213          	li	tp,0
   17d98:	f0f0f137          	lui	sp,0xf0f0f
   17d9c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17da0:	00000013          	nop
   17da4:	0ff010b7          	lui	ra,0xff01
   17da8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17dac:	00000013          	nop
   17db0:	0020f1b3          	and	gp,ra,sp
   17db4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17db8:	00200293          	li	t0,2
   17dbc:	fc521ee3          	bne	tp,t0,17d98 <test_22+0x4>
   17dc0:	00f00eb7          	lui	t4,0xf00
   17dc4:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5abc>
   17dc8:	01600e13          	li	t3,22
   17dcc:	0bd19263          	bne	gp,t4,17e70 <fail>

00017dd0 <test_23>:
   17dd0:	00000213          	li	tp,0
   17dd4:	0f0f1137          	lui	sp,0xf0f1
   17dd8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68db>
   17ddc:	00000013          	nop
   17de0:	00000013          	nop
   17de4:	00ff00b7          	lui	ra,0xff0
   17de8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17dec:	0020f1b3          	and	gp,ra,sp
   17df0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17df4:	00200293          	li	t0,2
   17df8:	fc521ee3          	bne	tp,t0,17dd4 <test_23+0x4>
   17dfc:	000f0eb7          	lui	t4,0xf0
   17e00:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59db>
   17e04:	01700e13          	li	t3,23
   17e08:	07d19463          	bne	gp,t4,17e70 <fail>

00017e0c <test_24>:
   17e0c:	ff0100b7          	lui	ra,0xff010
   17e10:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17e14:	00107133          	and	sp,zero,ra
   17e18:	00000e93          	li	t4,0
   17e1c:	01800e13          	li	t3,24
   17e20:	05d11863          	bne	sp,t4,17e70 <fail>

00017e24 <test_25>:
   17e24:	00ff00b7          	lui	ra,0xff0
   17e28:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17e2c:	0000f133          	and	sp,ra,zero
   17e30:	00000e93          	li	t4,0
   17e34:	01900e13          	li	t3,25
   17e38:	03d11c63          	bne	sp,t4,17e70 <fail>

00017e3c <test_26>:
   17e3c:	000070b3          	and	ra,zero,zero
   17e40:	00000e93          	li	t4,0
   17e44:	01a00e13          	li	t3,26
   17e48:	03d09463          	bne	ra,t4,17e70 <fail>

00017e4c <test_27>:
   17e4c:	111110b7          	lui	ra,0x11111
   17e50:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6add>
   17e54:	22222137          	lui	sp,0x22222
   17e58:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207bee>
   17e5c:	0020f033          	and	zero,ra,sp
   17e60:	00000e93          	li	t4,0
   17e64:	01b00e13          	li	t3,27
   17e68:	01d01463          	bne	zero,t4,17e70 <fail>
   17e6c:	05c01463          	bne	zero,t3,17eb4 <pass>

00017e70 <fail>:
   17e70:	0ff00513          	li	a0,255

00017e74 <.delay_fail>:
   17e74:	fff50513          	addi	a0,a0,-1
   17e78:	fe051ee3          	bnez	a0,17e74 <.delay_fail>
   17e7c:	02000537          	lui	a0,0x2000
   17e80:	04500593          	li	a1,69
   17e84:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   17e88:	05200613          	li	a2,82
   17e8c:	00c52023          	sw	a2,0(a0)
   17e90:	00c52023          	sw	a2,0(a0)
   17e94:	04f00693          	li	a3,79
   17e98:	00d52023          	sw	a3,0(a0)
   17e9c:	00c52023          	sw	a2,0(a0)
   17ea0:	00d00713          	li	a4,13
   17ea4:	00e52023          	sw	a4,0(a0)
   17ea8:	00a00793          	li	a5,10
   17eac:	00f52023          	sw	a5,0(a0)
   17eb0:	ab0f806f          	j	10160 <and_ret>

00017eb4 <pass>:
   17eb4:	0ff00513          	li	a0,255

00017eb8 <.delay_ok>:
   17eb8:	fff50513          	addi	a0,a0,-1
   17ebc:	fe051ee3          	bnez	a0,17eb8 <.delay_ok>
   17ec0:	02000537          	lui	a0,0x2000
   17ec4:	04f00593          	li	a1,79
   17ec8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   17ecc:	04b00613          	li	a2,75
   17ed0:	00c52023          	sw	a2,0(a0)
   17ed4:	00d00693          	li	a3,13
   17ed8:	00d52023          	sw	a3,0(a0)
   17edc:	00a00713          	li	a4,10
   17ee0:	00e52023          	sw	a4,0(a0)
   17ee4:	a7cf806f          	j	10160 <and_ret>

00017ee8 <ori>:
   17ee8:	0ff00513          	li	a0,255

00017eec <.delay_pr>:
   17eec:	fff50513          	addi	a0,a0,-1
   17ef0:	fe051ee3          	bnez	a0,17eec <.delay_pr>
   17ef4:	00018537          	lui	a0,0x18
   17ef8:	f1450513          	addi	a0,a0,-236 # 17f14 <.test_name>
   17efc:	02000637          	lui	a2,0x2000

00017f00 <.prname_next>:
   17f00:	00050583          	lb	a1,0(a0)
   17f04:	00058a63          	beqz	a1,17f18 <.prname_done>
   17f08:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   17f0c:	00150513          	addi	a0,a0,1
   17f10:	ff1ff06f          	j	17f00 <.prname_next>

00017f14 <.test_name>:
   17f14:	0069726f          	jal	tp,aef1a <_etext+0x948e6>

00017f18 <.prname_done>:
   17f18:	02e00593          	li	a1,46
   17f1c:	00b62023          	sw	a1,0(a2)
   17f20:	00b62023          	sw	a1,0(a2)

00017f24 <test_2>:
   17f24:	ff0100b7          	lui	ra,0xff010
   17f28:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17f2c:	f0f0e193          	ori	gp,ra,-241
   17f30:	f0f00e93          	li	t4,-241
   17f34:	00200e13          	li	t3,2
   17f38:	1dd19463          	bne	gp,t4,18100 <fail>

00017f3c <test_3>:
   17f3c:	0ff010b7          	lui	ra,0xff01
   17f40:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17f44:	0f00e193          	ori	gp,ra,240
   17f48:	0ff01eb7          	lui	t4,0xff01
   17f4c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   17f50:	00300e13          	li	t3,3
   17f54:	1bd19663          	bne	gp,t4,18100 <fail>

00017f58 <test_4>:
   17f58:	00ff00b7          	lui	ra,0xff0
   17f5c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17f60:	70f0e193          	ori	gp,ra,1807
   17f64:	00ff0eb7          	lui	t4,0xff0
   17f68:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd61cb>
   17f6c:	00400e13          	li	t3,4
   17f70:	19d19863          	bne	gp,t4,18100 <fail>

00017f74 <test_5>:
   17f74:	f00ff0b7          	lui	ra,0xf00ff
   17f78:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   17f7c:	0f00e193          	ori	gp,ra,240
   17f80:	f00ffeb7          	lui	t4,0xf00ff
   17f84:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   17f88:	00500e13          	li	t3,5
   17f8c:	17d19a63          	bne	gp,t4,18100 <fail>

00017f90 <test_6>:
   17f90:	ff0100b7          	lui	ra,0xff010
   17f94:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17f98:	0f00e093          	ori	ra,ra,240
   17f9c:	ff010eb7          	lui	t4,0xff010
   17fa0:	ff0e8e93          	addi	t4,t4,-16 # ff00fff0 <_edata+0x7f00ff80>
   17fa4:	00600e13          	li	t3,6
   17fa8:	15d09c63          	bne	ra,t4,18100 <fail>

00017fac <test_7>:
   17fac:	00000213          	li	tp,0
   17fb0:	0ff010b7          	lui	ra,0xff01
   17fb4:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   17fb8:	0f00e193          	ori	gp,ra,240
   17fbc:	00018313          	mv	t1,gp
   17fc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17fc4:	00200293          	li	t0,2
   17fc8:	fe5214e3          	bne	tp,t0,17fb0 <test_7+0x4>
   17fcc:	0ff01eb7          	lui	t4,0xff01
   17fd0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   17fd4:	00700e13          	li	t3,7
   17fd8:	13d31463          	bne	t1,t4,18100 <fail>

00017fdc <test_8>:
   17fdc:	00000213          	li	tp,0
   17fe0:	00ff00b7          	lui	ra,0xff0
   17fe4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   17fe8:	70f0e193          	ori	gp,ra,1807
   17fec:	00000013          	nop
   17ff0:	00018313          	mv	t1,gp
   17ff4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17ff8:	00200293          	li	t0,2
   17ffc:	fe5212e3          	bne	tp,t0,17fe0 <test_8+0x4>
   18000:	00ff0eb7          	lui	t4,0xff0
   18004:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd61cb>
   18008:	00800e13          	li	t3,8
   1800c:	0fd31a63          	bne	t1,t4,18100 <fail>

00018010 <test_9>:
   18010:	00000213          	li	tp,0
   18014:	f00ff0b7          	lui	ra,0xf00ff
   18018:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   1801c:	0f00e193          	ori	gp,ra,240
   18020:	00000013          	nop
   18024:	00000013          	nop
   18028:	00018313          	mv	t1,gp
   1802c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18030:	00200293          	li	t0,2
   18034:	fe5210e3          	bne	tp,t0,18014 <test_9+0x4>
   18038:	f00ffeb7          	lui	t4,0xf00ff
   1803c:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   18040:	00900e13          	li	t3,9
   18044:	0bd31e63          	bne	t1,t4,18100 <fail>

00018048 <test_10>:
   18048:	00000213          	li	tp,0
   1804c:	0ff010b7          	lui	ra,0xff01
   18050:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   18054:	0f00e193          	ori	gp,ra,240
   18058:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1805c:	00200293          	li	t0,2
   18060:	fe5216e3          	bne	tp,t0,1804c <test_10+0x4>
   18064:	0ff01eb7          	lui	t4,0xff01
   18068:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69bc>
   1806c:	00a00e13          	li	t3,10
   18070:	09d19863          	bne	gp,t4,18100 <fail>

00018074 <test_11>:
   18074:	00000213          	li	tp,0
   18078:	00ff00b7          	lui	ra,0xff0
   1807c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   18080:	00000013          	nop
   18084:	f0f0e193          	ori	gp,ra,-241
   18088:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1808c:	00200293          	li	t0,2
   18090:	fe5214e3          	bne	tp,t0,18078 <test_11+0x4>
   18094:	fff00e93          	li	t4,-1
   18098:	00b00e13          	li	t3,11
   1809c:	07d19263          	bne	gp,t4,18100 <fail>

000180a0 <test_12>:
   180a0:	00000213          	li	tp,0
   180a4:	f00ff0b7          	lui	ra,0xf00ff
   180a8:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   180ac:	00000013          	nop
   180b0:	00000013          	nop
   180b4:	0f00e193          	ori	gp,ra,240
   180b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   180bc:	00200293          	li	t0,2
   180c0:	fe5212e3          	bne	tp,t0,180a4 <test_12+0x4>
   180c4:	f00ffeb7          	lui	t4,0xf00ff
   180c8:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   180cc:	00c00e13          	li	t3,12
   180d0:	03d19863          	bne	gp,t4,18100 <fail>

000180d4 <test_13>:
   180d4:	0f006093          	ori	ra,zero,240
   180d8:	0f000e93          	li	t4,240
   180dc:	00d00e13          	li	t3,13
   180e0:	03d09063          	bne	ra,t4,18100 <fail>

000180e4 <test_14>:
   180e4:	00ff00b7          	lui	ra,0xff0
   180e8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   180ec:	70f0e013          	ori	zero,ra,1807
   180f0:	00000e93          	li	t4,0
   180f4:	00e00e13          	li	t3,14
   180f8:	01d01463          	bne	zero,t4,18100 <fail>
   180fc:	05c01463          	bne	zero,t3,18144 <pass>

00018100 <fail>:
   18100:	0ff00513          	li	a0,255

00018104 <.delay_fail>:
   18104:	fff50513          	addi	a0,a0,-1
   18108:	fe051ee3          	bnez	a0,18104 <.delay_fail>
   1810c:	02000537          	lui	a0,0x2000
   18110:	04500593          	li	a1,69
   18114:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   18118:	05200613          	li	a2,82
   1811c:	00c52023          	sw	a2,0(a0)
   18120:	00c52023          	sw	a2,0(a0)
   18124:	04f00693          	li	a3,79
   18128:	00d52023          	sw	a3,0(a0)
   1812c:	00c52023          	sw	a2,0(a0)
   18130:	00d00713          	li	a4,13
   18134:	00e52023          	sw	a4,0(a0)
   18138:	00a00793          	li	a5,10
   1813c:	00f52023          	sw	a5,0(a0)
   18140:	fedf706f          	j	1012c <ori_ret>

00018144 <pass>:
   18144:	0ff00513          	li	a0,255

00018148 <.delay_ok>:
   18148:	fff50513          	addi	a0,a0,-1
   1814c:	fe051ee3          	bnez	a0,18148 <.delay_ok>
   18150:	02000537          	lui	a0,0x2000
   18154:	04f00593          	li	a1,79
   18158:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1815c:	04b00613          	li	a2,75
   18160:	00c52023          	sw	a2,0(a0)
   18164:	00d00693          	li	a3,13
   18168:	00d52023          	sw	a3,0(a0)
   1816c:	00a00713          	li	a4,10
   18170:	00e52023          	sw	a4,0(a0)
   18174:	fb9f706f          	j	1012c <ori_ret>

00018178 <lhu>:
   18178:	0ff00513          	li	a0,255

0001817c <.delay_pr>:
   1817c:	fff50513          	addi	a0,a0,-1
   18180:	fe051ee3          	bnez	a0,1817c <.delay_pr>
   18184:	00018537          	lui	a0,0x18
   18188:	1a450513          	addi	a0,a0,420 # 181a4 <.test_name>
   1818c:	02000637          	lui	a2,0x2000

00018190 <.prname_next>:
   18190:	00050583          	lb	a1,0(a0)
   18194:	00058a63          	beqz	a1,181a8 <.prname_done>
   18198:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   1819c:	00150513          	addi	a0,a0,1
   181a0:	ff1ff06f          	j	18190 <.prname_next>

000181a4 <.test_name>:
   181a4:	686c                	flw	fa1,84(s0)
   181a6:	0075                	c.nop	29

000181a8 <.prname_done>:
   181a8:	02e00593          	li	a1,46
   181ac:	00b62023          	sw	a1,0(a2)
   181b0:	00b62023          	sw	a1,0(a2)

000181b4 <test_2>:
   181b4:	7ffe8097          	auipc	ra,0x7ffe8
   181b8:	eb408093          	addi	ra,ra,-332 # 80000068 <tdat>
   181bc:	0000d183          	lhu	gp,0(ra)
   181c0:	0ff00e93          	li	t4,255
   181c4:	00200e13          	li	t3,2
   181c8:	27d19663          	bne	gp,t4,18434 <fail>

000181cc <test_3>:
   181cc:	7ffe8097          	auipc	ra,0x7ffe8
   181d0:	e9c08093          	addi	ra,ra,-356 # 80000068 <tdat>
   181d4:	0020d183          	lhu	gp,2(ra)
   181d8:	00010eb7          	lui	t4,0x10
   181dc:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   181e0:	00300e13          	li	t3,3
   181e4:	25d19863          	bne	gp,t4,18434 <fail>

000181e8 <test_4>:
   181e8:	7ffe8097          	auipc	ra,0x7ffe8
   181ec:	e8008093          	addi	ra,ra,-384 # 80000068 <tdat>
   181f0:	0040d183          	lhu	gp,4(ra)
   181f4:	00001eb7          	lui	t4,0x1
   181f8:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   181fc:	00400e13          	li	t3,4
   18200:	23d19a63          	bne	gp,t4,18434 <fail>

00018204 <test_5>:
   18204:	7ffe8097          	auipc	ra,0x7ffe8
   18208:	e6408093          	addi	ra,ra,-412 # 80000068 <tdat>
   1820c:	0060d183          	lhu	gp,6(ra)
   18210:	0000feb7          	lui	t4,0xf
   18214:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   18218:	00500e13          	li	t3,5
   1821c:	21d19c63          	bne	gp,t4,18434 <fail>

00018220 <test_6>:
   18220:	7ffe8097          	auipc	ra,0x7ffe8
   18224:	e4e08093          	addi	ra,ra,-434 # 8000006e <tdat4>
   18228:	ffa0d183          	lhu	gp,-6(ra)
   1822c:	0ff00e93          	li	t4,255
   18230:	00600e13          	li	t3,6
   18234:	21d19063          	bne	gp,t4,18434 <fail>

00018238 <test_7>:
   18238:	7ffe8097          	auipc	ra,0x7ffe8
   1823c:	e3608093          	addi	ra,ra,-458 # 8000006e <tdat4>
   18240:	ffc0d183          	lhu	gp,-4(ra)
   18244:	00010eb7          	lui	t4,0x10
   18248:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   1824c:	00700e13          	li	t3,7
   18250:	1fd19263          	bne	gp,t4,18434 <fail>

00018254 <test_8>:
   18254:	7ffe8097          	auipc	ra,0x7ffe8
   18258:	e1a08093          	addi	ra,ra,-486 # 8000006e <tdat4>
   1825c:	ffe0d183          	lhu	gp,-2(ra)
   18260:	00001eb7          	lui	t4,0x1
   18264:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   18268:	00800e13          	li	t3,8
   1826c:	1dd19463          	bne	gp,t4,18434 <fail>

00018270 <test_9>:
   18270:	7ffe8097          	auipc	ra,0x7ffe8
   18274:	dfe08093          	addi	ra,ra,-514 # 8000006e <tdat4>
   18278:	0000d183          	lhu	gp,0(ra)
   1827c:	0000feb7          	lui	t4,0xf
   18280:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   18284:	00900e13          	li	t3,9
   18288:	1bd19663          	bne	gp,t4,18434 <fail>

0001828c <test_10>:
   1828c:	7ffe8097          	auipc	ra,0x7ffe8
   18290:	ddc08093          	addi	ra,ra,-548 # 80000068 <tdat>
   18294:	fe008093          	addi	ra,ra,-32
   18298:	0200d183          	lhu	gp,32(ra)
   1829c:	0ff00e93          	li	t4,255
   182a0:	00a00e13          	li	t3,10
   182a4:	19d19863          	bne	gp,t4,18434 <fail>

000182a8 <test_11>:
   182a8:	7ffe8097          	auipc	ra,0x7ffe8
   182ac:	dc008093          	addi	ra,ra,-576 # 80000068 <tdat>
   182b0:	ffb08093          	addi	ra,ra,-5
   182b4:	0070d183          	lhu	gp,7(ra)
   182b8:	00010eb7          	lui	t4,0x10
   182bc:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   182c0:	00b00e13          	li	t3,11
   182c4:	17d19863          	bne	gp,t4,18434 <fail>

000182c8 <test_12>:
   182c8:	00c00e13          	li	t3,12
   182cc:	00000213          	li	tp,0
   182d0:	7ffe8097          	auipc	ra,0x7ffe8
   182d4:	d9a08093          	addi	ra,ra,-614 # 8000006a <tdat2>
   182d8:	0020d183          	lhu	gp,2(ra)
   182dc:	00018313          	mv	t1,gp
   182e0:	00001eb7          	lui	t4,0x1
   182e4:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   182e8:	15d31663          	bne	t1,t4,18434 <fail>
   182ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   182f0:	00200293          	li	t0,2
   182f4:	fc521ee3          	bne	tp,t0,182d0 <test_12+0x8>

000182f8 <test_13>:
   182f8:	00d00e13          	li	t3,13
   182fc:	00000213          	li	tp,0
   18300:	7ffe8097          	auipc	ra,0x7ffe8
   18304:	d6c08093          	addi	ra,ra,-660 # 8000006c <tdat3>
   18308:	0020d183          	lhu	gp,2(ra)
   1830c:	00000013          	nop
   18310:	00018313          	mv	t1,gp
   18314:	0000feb7          	lui	t4,0xf
   18318:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   1831c:	11d31c63          	bne	t1,t4,18434 <fail>
   18320:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18324:	00200293          	li	t0,2
   18328:	fc521ce3          	bne	tp,t0,18300 <test_13+0x8>

0001832c <test_14>:
   1832c:	00e00e13          	li	t3,14
   18330:	00000213          	li	tp,0
   18334:	7ffe8097          	auipc	ra,0x7ffe8
   18338:	d3408093          	addi	ra,ra,-716 # 80000068 <tdat>
   1833c:	0020d183          	lhu	gp,2(ra)
   18340:	00000013          	nop
   18344:	00000013          	nop
   18348:	00018313          	mv	t1,gp
   1834c:	00010eb7          	lui	t4,0x10
   18350:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   18354:	0fd31063          	bne	t1,t4,18434 <fail>
   18358:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1835c:	00200293          	li	t0,2
   18360:	fc521ae3          	bne	tp,t0,18334 <test_14+0x8>

00018364 <test_15>:
   18364:	00f00e13          	li	t3,15
   18368:	00000213          	li	tp,0
   1836c:	7ffe8097          	auipc	ra,0x7ffe8
   18370:	cfe08093          	addi	ra,ra,-770 # 8000006a <tdat2>
   18374:	0020d183          	lhu	gp,2(ra)
   18378:	00001eb7          	lui	t4,0x1
   1837c:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   18380:	0bd19a63          	bne	gp,t4,18434 <fail>
   18384:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18388:	00200293          	li	t0,2
   1838c:	fe5210e3          	bne	tp,t0,1836c <test_15+0x8>

00018390 <test_16>:
   18390:	01000e13          	li	t3,16
   18394:	00000213          	li	tp,0
   18398:	7ffe8097          	auipc	ra,0x7ffe8
   1839c:	cd408093          	addi	ra,ra,-812 # 8000006c <tdat3>
   183a0:	00000013          	nop
   183a4:	0020d183          	lhu	gp,2(ra)
   183a8:	0000feb7          	lui	t4,0xf
   183ac:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   183b0:	09d19263          	bne	gp,t4,18434 <fail>
   183b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   183b8:	00200293          	li	t0,2
   183bc:	fc521ee3          	bne	tp,t0,18398 <test_16+0x8>

000183c0 <test_17>:
   183c0:	01100e13          	li	t3,17
   183c4:	00000213          	li	tp,0
   183c8:	7ffe8097          	auipc	ra,0x7ffe8
   183cc:	ca008093          	addi	ra,ra,-864 # 80000068 <tdat>
   183d0:	00000013          	nop
   183d4:	00000013          	nop
   183d8:	0020d183          	lhu	gp,2(ra)
   183dc:	00010eb7          	lui	t4,0x10
   183e0:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   183e4:	05d19863          	bne	gp,t4,18434 <fail>
   183e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   183ec:	00200293          	li	t0,2
   183f0:	fc521ce3          	bne	tp,t0,183c8 <test_17+0x8>

000183f4 <test_18>:
   183f4:	7ffe8197          	auipc	gp,0x7ffe8
   183f8:	c7418193          	addi	gp,gp,-908 # 80000068 <tdat>
   183fc:	0001d103          	lhu	sp,0(gp)
   18400:	00200113          	li	sp,2
   18404:	00200e93          	li	t4,2
   18408:	01200e13          	li	t3,18
   1840c:	03d11463          	bne	sp,t4,18434 <fail>

00018410 <test_19>:
   18410:	7ffe8197          	auipc	gp,0x7ffe8
   18414:	c5818193          	addi	gp,gp,-936 # 80000068 <tdat>
   18418:	0001d103          	lhu	sp,0(gp)
   1841c:	00000013          	nop
   18420:	00200113          	li	sp,2
   18424:	00200e93          	li	t4,2
   18428:	01300e13          	li	t3,19
   1842c:	01d11463          	bne	sp,t4,18434 <fail>
   18430:	05c01463          	bne	zero,t3,18478 <pass>

00018434 <fail>:
   18434:	0ff00513          	li	a0,255

00018438 <.delay_fail>:
   18438:	fff50513          	addi	a0,a0,-1
   1843c:	fe051ee3          	bnez	a0,18438 <.delay_fail>
   18440:	02000537          	lui	a0,0x2000
   18444:	04500593          	li	a1,69
   18448:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1844c:	05200613          	li	a2,82
   18450:	00c52023          	sw	a2,0(a0)
   18454:	00c52023          	sw	a2,0(a0)
   18458:	04f00693          	li	a3,79
   1845c:	00d52023          	sw	a3,0(a0)
   18460:	00c52023          	sw	a2,0(a0)
   18464:	00d00713          	li	a4,13
   18468:	00e52023          	sw	a4,0(a0)
   1846c:	00a00793          	li	a5,10
   18470:	00f52023          	sw	a5,0(a0)
   18474:	c9df706f          	j	10110 <lhu_ret>

00018478 <pass>:
   18478:	0ff00513          	li	a0,255

0001847c <.delay_ok>:
   1847c:	fff50513          	addi	a0,a0,-1
   18480:	fe051ee3          	bnez	a0,1847c <.delay_ok>
   18484:	02000537          	lui	a0,0x2000
   18488:	04f00593          	li	a1,79
   1848c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   18490:	04b00613          	li	a2,75
   18494:	00c52023          	sw	a2,0(a0)
   18498:	00d00693          	li	a3,13
   1849c:	00d52023          	sw	a3,0(a0)
   184a0:	00a00713          	li	a4,10
   184a4:	00e52023          	sw	a4,0(a0)
   184a8:	c69f706f          	j	10110 <lhu_ret>

000184ac <srl>:
   184ac:	0ff00513          	li	a0,255

000184b0 <.delay_pr>:
   184b0:	fff50513          	addi	a0,a0,-1
   184b4:	fe051ee3          	bnez	a0,184b0 <.delay_pr>
   184b8:	00018537          	lui	a0,0x18
   184bc:	4d850513          	addi	a0,a0,1240 # 184d8 <.test_name>
   184c0:	02000637          	lui	a2,0x2000

000184c4 <.prname_next>:
   184c4:	00050583          	lb	a1,0(a0)
   184c8:	00058a63          	beqz	a1,184dc <.prname_done>
   184cc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   184d0:	00150513          	addi	a0,a0,1
   184d4:	ff1ff06f          	j	184c4 <.prname_next>

000184d8 <.test_name>:
   184d8:	006c7273          	csrrci	tp,0x6,24

000184dc <.prname_done>:
   184dc:	02e00593          	li	a1,46
   184e0:	00b62023          	sw	a1,0(a2)
   184e4:	00b62023          	sw	a1,0(a2)

000184e8 <test_2>:
   184e8:	ffff80b7          	lui	ra,0xffff8
   184ec:	00000113          	li	sp,0
   184f0:	0020d1b3          	srl	gp,ra,sp
   184f4:	ffff8eb7          	lui	t4,0xffff8
   184f8:	00200e13          	li	t3,2
   184fc:	5bd19463          	bne	gp,t4,18aa4 <fail>

00018500 <test_3>:
   18500:	ffff80b7          	lui	ra,0xffff8
   18504:	00100113          	li	sp,1
   18508:	0020d1b3          	srl	gp,ra,sp
   1850c:	7fffceb7          	lui	t4,0x7fffc
   18510:	00300e13          	li	t3,3
   18514:	59d19863          	bne	gp,t4,18aa4 <fail>

00018518 <test_4>:
   18518:	ffff80b7          	lui	ra,0xffff8
   1851c:	00700113          	li	sp,7
   18520:	0020d1b3          	srl	gp,ra,sp
   18524:	02000eb7          	lui	t4,0x2000
   18528:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58cc>
   1852c:	00400e13          	li	t3,4
   18530:	57d19a63          	bne	gp,t4,18aa4 <fail>

00018534 <test_5>:
   18534:	ffff80b7          	lui	ra,0xffff8
   18538:	00e00113          	li	sp,14
   1853c:	0020d1b3          	srl	gp,ra,sp
   18540:	00040eb7          	lui	t4,0x40
   18544:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259ca>
   18548:	00500e13          	li	t3,5
   1854c:	55d19c63          	bne	gp,t4,18aa4 <fail>

00018550 <test_6>:
   18550:	ffff80b7          	lui	ra,0xffff8
   18554:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   18558:	00f00113          	li	sp,15
   1855c:	0020d1b3          	srl	gp,ra,sp
   18560:	00020eb7          	lui	t4,0x20
   18564:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   18568:	00600e13          	li	t3,6
   1856c:	53d19c63          	bne	gp,t4,18aa4 <fail>

00018570 <test_7>:
   18570:	fff00093          	li	ra,-1
   18574:	00000113          	li	sp,0
   18578:	0020d1b3          	srl	gp,ra,sp
   1857c:	fff00e93          	li	t4,-1
   18580:	00700e13          	li	t3,7
   18584:	53d19063          	bne	gp,t4,18aa4 <fail>

00018588 <test_8>:
   18588:	fff00093          	li	ra,-1
   1858c:	00100113          	li	sp,1
   18590:	0020d1b3          	srl	gp,ra,sp
   18594:	80000eb7          	lui	t4,0x80000
   18598:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   1859c:	00800e13          	li	t3,8
   185a0:	51d19263          	bne	gp,t4,18aa4 <fail>

000185a4 <test_9>:
   185a4:	fff00093          	li	ra,-1
   185a8:	00700113          	li	sp,7
   185ac:	0020d1b3          	srl	gp,ra,sp
   185b0:	02000eb7          	lui	t4,0x2000
   185b4:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe59cb>
   185b8:	00900e13          	li	t3,9
   185bc:	4fd19463          	bne	gp,t4,18aa4 <fail>

000185c0 <test_10>:
   185c0:	fff00093          	li	ra,-1
   185c4:	00e00113          	li	sp,14
   185c8:	0020d1b3          	srl	gp,ra,sp
   185cc:	00040eb7          	lui	t4,0x40
   185d0:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x259cb>
   185d4:	00a00e13          	li	t3,10
   185d8:	4dd19663          	bne	gp,t4,18aa4 <fail>

000185dc <test_11>:
   185dc:	fff00093          	li	ra,-1
   185e0:	01f00113          	li	sp,31
   185e4:	0020d1b3          	srl	gp,ra,sp
   185e8:	00100e93          	li	t4,1
   185ec:	00b00e13          	li	t3,11
   185f0:	4bd19a63          	bne	gp,t4,18aa4 <fail>

000185f4 <test_12>:
   185f4:	212120b7          	lui	ra,0x21212
   185f8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   185fc:	00000113          	li	sp,0
   18600:	0020d1b3          	srl	gp,ra,sp
   18604:	21212eb7          	lui	t4,0x21212
   18608:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7aed>
   1860c:	00c00e13          	li	t3,12
   18610:	49d19a63          	bne	gp,t4,18aa4 <fail>

00018614 <test_13>:
   18614:	212120b7          	lui	ra,0x21212
   18618:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   1861c:	00100113          	li	sp,1
   18620:	0020d1b3          	srl	gp,ra,sp
   18624:	10909eb7          	lui	t4,0x10909
   18628:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eea5c>
   1862c:	00d00e13          	li	t3,13
   18630:	47d19a63          	bne	gp,t4,18aa4 <fail>

00018634 <test_14>:
   18634:	212120b7          	lui	ra,0x21212
   18638:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   1863c:	00700113          	li	sp,7
   18640:	0020d1b3          	srl	gp,ra,sp
   18644:	00424eb7          	lui	t4,0x424
   18648:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c0e>
   1864c:	00e00e13          	li	t3,14
   18650:	45d19a63          	bne	gp,t4,18aa4 <fail>

00018654 <test_15>:
   18654:	212120b7          	lui	ra,0x21212
   18658:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   1865c:	00e00113          	li	sp,14
   18660:	0020d1b3          	srl	gp,ra,sp
   18664:	00008eb7          	lui	t4,0x8
   18668:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   1866c:	00f00e13          	li	t3,15
   18670:	43d19a63          	bne	gp,t4,18aa4 <fail>

00018674 <test_16>:
   18674:	212120b7          	lui	ra,0x21212
   18678:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   1867c:	01f00113          	li	sp,31
   18680:	0020d1b3          	srl	gp,ra,sp
   18684:	00000e93          	li	t4,0
   18688:	01000e13          	li	t3,16
   1868c:	41d19c63          	bne	gp,t4,18aa4 <fail>

00018690 <test_17>:
   18690:	212120b7          	lui	ra,0x21212
   18694:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   18698:	fe000113          	li	sp,-32
   1869c:	0020d1b3          	srl	gp,ra,sp
   186a0:	21212eb7          	lui	t4,0x21212
   186a4:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7aed>
   186a8:	01100e13          	li	t3,17
   186ac:	3fd19c63          	bne	gp,t4,18aa4 <fail>

000186b0 <test_18>:
   186b0:	212120b7          	lui	ra,0x21212
   186b4:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   186b8:	fe100113          	li	sp,-31
   186bc:	0020d1b3          	srl	gp,ra,sp
   186c0:	10909eb7          	lui	t4,0x10909
   186c4:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eea5c>
   186c8:	01200e13          	li	t3,18
   186cc:	3dd19c63          	bne	gp,t4,18aa4 <fail>

000186d0 <test_19>:
   186d0:	212120b7          	lui	ra,0x21212
   186d4:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   186d8:	fe700113          	li	sp,-25
   186dc:	0020d1b3          	srl	gp,ra,sp
   186e0:	00424eb7          	lui	t4,0x424
   186e4:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c0e>
   186e8:	01300e13          	li	t3,19
   186ec:	3bd19c63          	bne	gp,t4,18aa4 <fail>

000186f0 <test_20>:
   186f0:	212120b7          	lui	ra,0x21212
   186f4:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   186f8:	fee00113          	li	sp,-18
   186fc:	0020d1b3          	srl	gp,ra,sp
   18700:	00008eb7          	lui	t4,0x8
   18704:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   18708:	01400e13          	li	t3,20
   1870c:	39d19c63          	bne	gp,t4,18aa4 <fail>

00018710 <test_21>:
   18710:	212120b7          	lui	ra,0x21212
   18714:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7aed>
   18718:	fff00113          	li	sp,-1
   1871c:	0020d1b3          	srl	gp,ra,sp
   18720:	00000e93          	li	t4,0
   18724:	01500e13          	li	t3,21
   18728:	37d19e63          	bne	gp,t4,18aa4 <fail>

0001872c <test_22>:
   1872c:	ffff80b7          	lui	ra,0xffff8
   18730:	00100113          	li	sp,1
   18734:	0020d0b3          	srl	ra,ra,sp
   18738:	7fffceb7          	lui	t4,0x7fffc
   1873c:	01600e13          	li	t3,22
   18740:	37d09263          	bne	ra,t4,18aa4 <fail>

00018744 <test_23>:
   18744:	ffff80b7          	lui	ra,0xffff8
   18748:	00e00113          	li	sp,14
   1874c:	0020d133          	srl	sp,ra,sp
   18750:	00040eb7          	lui	t4,0x40
   18754:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259ca>
   18758:	01700e13          	li	t3,23
   1875c:	35d11463          	bne	sp,t4,18aa4 <fail>

00018760 <test_24>:
   18760:	00700093          	li	ra,7
   18764:	0010d0b3          	srl	ra,ra,ra
   18768:	00000e93          	li	t4,0
   1876c:	01800e13          	li	t3,24
   18770:	33d09a63          	bne	ra,t4,18aa4 <fail>

00018774 <test_25>:
   18774:	00000213          	li	tp,0
   18778:	ffff80b7          	lui	ra,0xffff8
   1877c:	00100113          	li	sp,1
   18780:	0020d1b3          	srl	gp,ra,sp
   18784:	00018313          	mv	t1,gp
   18788:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1878c:	00200293          	li	t0,2
   18790:	fe5214e3          	bne	tp,t0,18778 <test_25+0x4>
   18794:	7fffceb7          	lui	t4,0x7fffc
   18798:	01900e13          	li	t3,25
   1879c:	31d31463          	bne	t1,t4,18aa4 <fail>

000187a0 <test_26>:
   187a0:	00000213          	li	tp,0
   187a4:	ffff80b7          	lui	ra,0xffff8
   187a8:	00e00113          	li	sp,14
   187ac:	0020d1b3          	srl	gp,ra,sp
   187b0:	00000013          	nop
   187b4:	00018313          	mv	t1,gp
   187b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   187bc:	00200293          	li	t0,2
   187c0:	fe5212e3          	bne	tp,t0,187a4 <test_26+0x4>
   187c4:	00040eb7          	lui	t4,0x40
   187c8:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259ca>
   187cc:	01a00e13          	li	t3,26
   187d0:	2dd31a63          	bne	t1,t4,18aa4 <fail>

000187d4 <test_27>:
   187d4:	00000213          	li	tp,0
   187d8:	ffff80b7          	lui	ra,0xffff8
   187dc:	00f00113          	li	sp,15
   187e0:	0020d1b3          	srl	gp,ra,sp
   187e4:	00000013          	nop
   187e8:	00000013          	nop
   187ec:	00018313          	mv	t1,gp
   187f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   187f4:	00200293          	li	t0,2
   187f8:	fe5210e3          	bne	tp,t0,187d8 <test_27+0x4>
   187fc:	00020eb7          	lui	t4,0x20
   18800:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   18804:	01b00e13          	li	t3,27
   18808:	29d31e63          	bne	t1,t4,18aa4 <fail>

0001880c <test_28>:
   1880c:	00000213          	li	tp,0
   18810:	ffff80b7          	lui	ra,0xffff8
   18814:	00100113          	li	sp,1
   18818:	0020d1b3          	srl	gp,ra,sp
   1881c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18820:	00200293          	li	t0,2
   18824:	fe5216e3          	bne	tp,t0,18810 <test_28+0x4>
   18828:	7fffceb7          	lui	t4,0x7fffc
   1882c:	01c00e13          	li	t3,28
   18830:	27d19a63          	bne	gp,t4,18aa4 <fail>

00018834 <test_29>:
   18834:	00000213          	li	tp,0
   18838:	ffff80b7          	lui	ra,0xffff8
   1883c:	00700113          	li	sp,7
   18840:	00000013          	nop
   18844:	0020d1b3          	srl	gp,ra,sp
   18848:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1884c:	00200293          	li	t0,2
   18850:	fe5214e3          	bne	tp,t0,18838 <test_29+0x4>
   18854:	02000eb7          	lui	t4,0x2000
   18858:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58cc>
   1885c:	01d00e13          	li	t3,29
   18860:	25d19263          	bne	gp,t4,18aa4 <fail>

00018864 <test_30>:
   18864:	00000213          	li	tp,0
   18868:	ffff80b7          	lui	ra,0xffff8
   1886c:	00f00113          	li	sp,15
   18870:	00000013          	nop
   18874:	00000013          	nop
   18878:	0020d1b3          	srl	gp,ra,sp
   1887c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18880:	00200293          	li	t0,2
   18884:	fe5212e3          	bne	tp,t0,18868 <test_30+0x4>
   18888:	00020eb7          	lui	t4,0x20
   1888c:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   18890:	01e00e13          	li	t3,30
   18894:	21d19863          	bne	gp,t4,18aa4 <fail>

00018898 <test_31>:
   18898:	00000213          	li	tp,0
   1889c:	ffff80b7          	lui	ra,0xffff8
   188a0:	00000013          	nop
   188a4:	00100113          	li	sp,1
   188a8:	0020d1b3          	srl	gp,ra,sp
   188ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188b0:	00200293          	li	t0,2
   188b4:	fe5214e3          	bne	tp,t0,1889c <test_31+0x4>
   188b8:	7fffceb7          	lui	t4,0x7fffc
   188bc:	01f00e13          	li	t3,31
   188c0:	1fd19263          	bne	gp,t4,18aa4 <fail>

000188c4 <test_32>:
   188c4:	00000213          	li	tp,0
   188c8:	ffff80b7          	lui	ra,0xffff8
   188cc:	00000013          	nop
   188d0:	00700113          	li	sp,7
   188d4:	00000013          	nop
   188d8:	0020d1b3          	srl	gp,ra,sp
   188dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188e0:	00200293          	li	t0,2
   188e4:	fe5212e3          	bne	tp,t0,188c8 <test_32+0x4>
   188e8:	02000eb7          	lui	t4,0x2000
   188ec:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58cc>
   188f0:	02000e13          	li	t3,32
   188f4:	1bd19863          	bne	gp,t4,18aa4 <fail>

000188f8 <test_33>:
   188f8:	00000213          	li	tp,0
   188fc:	ffff80b7          	lui	ra,0xffff8
   18900:	00000013          	nop
   18904:	00000013          	nop
   18908:	00f00113          	li	sp,15
   1890c:	0020d1b3          	srl	gp,ra,sp
   18910:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18914:	00200293          	li	t0,2
   18918:	fe5212e3          	bne	tp,t0,188fc <test_33+0x4>
   1891c:	00020eb7          	lui	t4,0x20
   18920:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   18924:	02100e13          	li	t3,33
   18928:	17d19e63          	bne	gp,t4,18aa4 <fail>

0001892c <test_34>:
   1892c:	00000213          	li	tp,0
   18930:	00100113          	li	sp,1
   18934:	ffff80b7          	lui	ra,0xffff8
   18938:	0020d1b3          	srl	gp,ra,sp
   1893c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18940:	00200293          	li	t0,2
   18944:	fe5216e3          	bne	tp,t0,18930 <test_34+0x4>
   18948:	7fffceb7          	lui	t4,0x7fffc
   1894c:	02200e13          	li	t3,34
   18950:	15d19a63          	bne	gp,t4,18aa4 <fail>

00018954 <test_35>:
   18954:	00000213          	li	tp,0
   18958:	00700113          	li	sp,7
   1895c:	ffff80b7          	lui	ra,0xffff8
   18960:	00000013          	nop
   18964:	0020d1b3          	srl	gp,ra,sp
   18968:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1896c:	00200293          	li	t0,2
   18970:	fe5214e3          	bne	tp,t0,18958 <test_35+0x4>
   18974:	02000eb7          	lui	t4,0x2000
   18978:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58cc>
   1897c:	02300e13          	li	t3,35
   18980:	13d19263          	bne	gp,t4,18aa4 <fail>

00018984 <test_36>:
   18984:	00000213          	li	tp,0
   18988:	00f00113          	li	sp,15
   1898c:	ffff80b7          	lui	ra,0xffff8
   18990:	00000013          	nop
   18994:	00000013          	nop
   18998:	0020d1b3          	srl	gp,ra,sp
   1899c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189a0:	00200293          	li	t0,2
   189a4:	fe5212e3          	bne	tp,t0,18988 <test_36+0x4>
   189a8:	00020eb7          	lui	t4,0x20
   189ac:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   189b0:	02400e13          	li	t3,36
   189b4:	0fd19863          	bne	gp,t4,18aa4 <fail>

000189b8 <test_37>:
   189b8:	00000213          	li	tp,0
   189bc:	00100113          	li	sp,1
   189c0:	00000013          	nop
   189c4:	ffff80b7          	lui	ra,0xffff8
   189c8:	0020d1b3          	srl	gp,ra,sp
   189cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189d0:	00200293          	li	t0,2
   189d4:	fe5214e3          	bne	tp,t0,189bc <test_37+0x4>
   189d8:	7fffceb7          	lui	t4,0x7fffc
   189dc:	02500e13          	li	t3,37
   189e0:	0dd19263          	bne	gp,t4,18aa4 <fail>

000189e4 <test_38>:
   189e4:	00000213          	li	tp,0
   189e8:	00700113          	li	sp,7
   189ec:	00000013          	nop
   189f0:	ffff80b7          	lui	ra,0xffff8
   189f4:	00000013          	nop
   189f8:	0020d1b3          	srl	gp,ra,sp
   189fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a00:	00200293          	li	t0,2
   18a04:	fe5212e3          	bne	tp,t0,189e8 <test_38+0x4>
   18a08:	02000eb7          	lui	t4,0x2000
   18a0c:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58cc>
   18a10:	02600e13          	li	t3,38
   18a14:	09d19863          	bne	gp,t4,18aa4 <fail>

00018a18 <test_39>:
   18a18:	00000213          	li	tp,0
   18a1c:	00f00113          	li	sp,15
   18a20:	00000013          	nop
   18a24:	00000013          	nop
   18a28:	ffff80b7          	lui	ra,0xffff8
   18a2c:	0020d1b3          	srl	gp,ra,sp
   18a30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a34:	00200293          	li	t0,2
   18a38:	fe5212e3          	bne	tp,t0,18a1c <test_39+0x4>
   18a3c:	00020eb7          	lui	t4,0x20
   18a40:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59cb>
   18a44:	02700e13          	li	t3,39
   18a48:	05d19e63          	bne	gp,t4,18aa4 <fail>

00018a4c <test_40>:
   18a4c:	00f00093          	li	ra,15
   18a50:	00105133          	srl	sp,zero,ra
   18a54:	00000e93          	li	t4,0
   18a58:	02800e13          	li	t3,40
   18a5c:	05d11463          	bne	sp,t4,18aa4 <fail>

00018a60 <test_41>:
   18a60:	02000093          	li	ra,32
   18a64:	0000d133          	srl	sp,ra,zero
   18a68:	02000e93          	li	t4,32
   18a6c:	02900e13          	li	t3,41
   18a70:	03d11a63          	bne	sp,t4,18aa4 <fail>

00018a74 <test_42>:
   18a74:	000050b3          	srl	ra,zero,zero
   18a78:	00000e93          	li	t4,0
   18a7c:	02a00e13          	li	t3,42
   18a80:	03d09263          	bne	ra,t4,18aa4 <fail>

00018a84 <test_43>:
   18a84:	40000093          	li	ra,1024
   18a88:	00001137          	lui	sp,0x1
   18a8c:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   18a90:	0020d033          	srl	zero,ra,sp
   18a94:	00000e93          	li	t4,0
   18a98:	02b00e13          	li	t3,43
   18a9c:	01d01463          	bne	zero,t4,18aa4 <fail>
   18aa0:	05c01463          	bne	zero,t3,18ae8 <pass>

00018aa4 <fail>:
   18aa4:	0ff00513          	li	a0,255

00018aa8 <.delay_fail>:
   18aa8:	fff50513          	addi	a0,a0,-1
   18aac:	fe051ee3          	bnez	a0,18aa8 <.delay_fail>
   18ab0:	02000537          	lui	a0,0x2000
   18ab4:	04500593          	li	a1,69
   18ab8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   18abc:	05200613          	li	a2,82
   18ac0:	00c52023          	sw	a2,0(a0)
   18ac4:	00c52023          	sw	a2,0(a0)
   18ac8:	04f00693          	li	a3,79
   18acc:	00d52023          	sw	a3,0(a0)
   18ad0:	00c52023          	sw	a2,0(a0)
   18ad4:	00d00713          	li	a4,13
   18ad8:	00e52023          	sw	a4,0(a0)
   18adc:	00a00793          	li	a5,10
   18ae0:	00f52023          	sw	a5,0(a0)
   18ae4:	e70f706f          	j	10154 <srl_ret>

00018ae8 <pass>:
   18ae8:	0ff00513          	li	a0,255

00018aec <.delay_ok>:
   18aec:	fff50513          	addi	a0,a0,-1
   18af0:	fe051ee3          	bnez	a0,18aec <.delay_ok>
   18af4:	02000537          	lui	a0,0x2000
   18af8:	04f00593          	li	a1,79
   18afc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   18b00:	04b00613          	li	a2,75
   18b04:	00c52023          	sw	a2,0(a0)
   18b08:	00d00693          	li	a3,13
   18b0c:	00d52023          	sw	a3,0(a0)
   18b10:	00a00713          	li	a4,10
   18b14:	00e52023          	sw	a4,0(a0)
   18b18:	e3cf706f          	j	10154 <srl_ret>

00018b1c <jal>:
   18b1c:	0ff00513          	li	a0,255

00018b20 <.delay_pr>:
   18b20:	fff50513          	addi	a0,a0,-1
   18b24:	fe051ee3          	bnez	a0,18b20 <.delay_pr>
   18b28:	00019537          	lui	a0,0x19
   18b2c:	b4850513          	addi	a0,a0,-1208 # 18b48 <.test_name>
   18b30:	02000637          	lui	a2,0x2000

00018b34 <.prname_next>:
   18b34:	00050583          	lb	a1,0(a0)
   18b38:	00058a63          	beqz	a1,18b4c <.prname_done>
   18b3c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   18b40:	00150513          	addi	a0,a0,1
   18b44:	ff1ff06f          	j	18b34 <.prname_next>

00018b48 <.test_name>:
   18b48:	616a                	flw	ft2,152(sp)
   18b4a:	006c                	addi	a1,sp,12

00018b4c <.prname_done>:
   18b4c:	02e00593          	li	a1,46
   18b50:	00b62023          	sw	a1,0(a2)
   18b54:	00b62023          	sw	a1,0(a2)

00018b58 <test_2>:
   18b58:	00200e13          	li	t3,2
   18b5c:	00000093          	li	ra,0

00018b60 <linkaddr_2>:
   18b60:	010000ef          	jal	ra,18b70 <target_2>
   18b64:	00000013          	nop
   18b68:	00000013          	nop
   18b6c:	0440006f          	j	18bb0 <fail>

00018b70 <target_2>:
   18b70:	00000117          	auipc	sp,0x0
   18b74:	ff010113          	addi	sp,sp,-16 # 18b60 <linkaddr_2>
   18b78:	00410113          	addi	sp,sp,4
   18b7c:	02111a63          	bne	sp,ra,18bb0 <fail>

00018b80 <test_3>:
   18b80:	00100113          	li	sp,1
   18b84:	014000ef          	jal	ra,18b98 <test_3+0x18>
   18b88:	00110113          	addi	sp,sp,1
   18b8c:	00110113          	addi	sp,sp,1
   18b90:	00110113          	addi	sp,sp,1
   18b94:	00110113          	addi	sp,sp,1
   18b98:	00110113          	addi	sp,sp,1
   18b9c:	00110113          	addi	sp,sp,1
   18ba0:	00300e93          	li	t4,3
   18ba4:	00300e13          	li	t3,3
   18ba8:	01d11463          	bne	sp,t4,18bb0 <fail>
   18bac:	05c01463          	bne	zero,t3,18bf4 <pass>

00018bb0 <fail>:
   18bb0:	0ff00513          	li	a0,255

00018bb4 <.delay_fail>:
   18bb4:	fff50513          	addi	a0,a0,-1
   18bb8:	fe051ee3          	bnez	a0,18bb4 <.delay_fail>
   18bbc:	02000537          	lui	a0,0x2000
   18bc0:	04500593          	li	a1,69
   18bc4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   18bc8:	05200613          	li	a2,82
   18bcc:	00c52023          	sw	a2,0(a0)
   18bd0:	00c52023          	sw	a2,0(a0)
   18bd4:	04f00693          	li	a3,79
   18bd8:	00d52023          	sw	a3,0(a0)
   18bdc:	00c52023          	sw	a2,0(a0)
   18be0:	00d00713          	li	a4,13
   18be4:	00e52023          	sw	a4,0(a0)
   18be8:	00a00793          	li	a5,10
   18bec:	00f52023          	sw	a5,0(a0)
   18bf0:	cf0f706f          	j	100e0 <jal_ret>

00018bf4 <pass>:
   18bf4:	0ff00513          	li	a0,255

00018bf8 <.delay_ok>:
   18bf8:	fff50513          	addi	a0,a0,-1
   18bfc:	fe051ee3          	bnez	a0,18bf8 <.delay_ok>
   18c00:	02000537          	lui	a0,0x2000
   18c04:	04f00593          	li	a1,79
   18c08:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   18c0c:	04b00613          	li	a2,75
   18c10:	00c52023          	sw	a2,0(a0)
   18c14:	00d00693          	li	a3,13
   18c18:	00d52023          	sw	a3,0(a0)
   18c1c:	00a00713          	li	a4,10
   18c20:	00e52023          	sw	a4,0(a0)
   18c24:	cbcf706f          	j	100e0 <jal_ret>

00018c28 <add>:
   18c28:	0ff00513          	li	a0,255

00018c2c <.delay_pr>:
   18c2c:	fff50513          	addi	a0,a0,-1
   18c30:	fe051ee3          	bnez	a0,18c2c <.delay_pr>
   18c34:	00019537          	lui	a0,0x19
   18c38:	c5450513          	addi	a0,a0,-940 # 18c54 <.test_name>
   18c3c:	02000637          	lui	a2,0x2000

00018c40 <.prname_next>:
   18c40:	00050583          	lb	a1,0(a0)
   18c44:	00058a63          	beqz	a1,18c58 <.prname_done>
   18c48:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   18c4c:	00150513          	addi	a0,a0,1
   18c50:	ff1ff06f          	j	18c40 <.prname_next>

00018c54 <.test_name>:
   18c54:	6461                	lui	s0,0x18
   18c56:	0064                	addi	s1,sp,12

00018c58 <.prname_done>:
   18c58:	02e00593          	li	a1,46
   18c5c:	00b62023          	sw	a1,0(a2)
   18c60:	00b62023          	sw	a1,0(a2)

00018c64 <test_2>:
   18c64:	00000093          	li	ra,0
   18c68:	00000113          	li	sp,0
   18c6c:	002081b3          	add	gp,ra,sp
   18c70:	00000e93          	li	t4,0
   18c74:	00200e13          	li	t3,2
   18c78:	4dd19663          	bne	gp,t4,19144 <fail>

00018c7c <test_3>:
   18c7c:	00100093          	li	ra,1
   18c80:	00100113          	li	sp,1
   18c84:	002081b3          	add	gp,ra,sp
   18c88:	00200e93          	li	t4,2
   18c8c:	00300e13          	li	t3,3
   18c90:	4bd19a63          	bne	gp,t4,19144 <fail>

00018c94 <test_4>:
   18c94:	00300093          	li	ra,3
   18c98:	00700113          	li	sp,7
   18c9c:	002081b3          	add	gp,ra,sp
   18ca0:	00a00e93          	li	t4,10
   18ca4:	00400e13          	li	t3,4
   18ca8:	49d19e63          	bne	gp,t4,19144 <fail>

00018cac <test_5>:
   18cac:	00000093          	li	ra,0
   18cb0:	ffff8137          	lui	sp,0xffff8
   18cb4:	002081b3          	add	gp,ra,sp
   18cb8:	ffff8eb7          	lui	t4,0xffff8
   18cbc:	00500e13          	li	t3,5
   18cc0:	49d19263          	bne	gp,t4,19144 <fail>

00018cc4 <test_6>:
   18cc4:	800000b7          	lui	ra,0x80000
   18cc8:	00000113          	li	sp,0
   18ccc:	002081b3          	add	gp,ra,sp
   18cd0:	80000eb7          	lui	t4,0x80000
   18cd4:	00600e13          	li	t3,6
   18cd8:	47d19663          	bne	gp,t4,19144 <fail>

00018cdc <test_7>:
   18cdc:	800000b7          	lui	ra,0x80000
   18ce0:	ffff8137          	lui	sp,0xffff8
   18ce4:	002081b3          	add	gp,ra,sp
   18ce8:	7fff8eb7          	lui	t4,0x7fff8
   18cec:	00700e13          	li	t3,7
   18cf0:	45d19a63          	bne	gp,t4,19144 <fail>

00018cf4 <test_8>:
   18cf4:	00000093          	li	ra,0
   18cf8:	00008137          	lui	sp,0x8
   18cfc:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18d00:	002081b3          	add	gp,ra,sp
   18d04:	00008eb7          	lui	t4,0x8
   18d08:	fffe8e93          	addi	t4,t4,-1 # 7fff <_start-0x8001>
   18d0c:	00800e13          	li	t3,8
   18d10:	43d19a63          	bne	gp,t4,19144 <fail>

00018d14 <test_9>:
   18d14:	800000b7          	lui	ra,0x80000
   18d18:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18d1c:	00000113          	li	sp,0
   18d20:	002081b3          	add	gp,ra,sp
   18d24:	80000eb7          	lui	t4,0x80000
   18d28:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   18d2c:	00900e13          	li	t3,9
   18d30:	41d19a63          	bne	gp,t4,19144 <fail>

00018d34 <test_10>:
   18d34:	800000b7          	lui	ra,0x80000
   18d38:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18d3c:	00008137          	lui	sp,0x8
   18d40:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18d44:	002081b3          	add	gp,ra,sp
   18d48:	80008eb7          	lui	t4,0x80008
   18d4c:	ffee8e93          	addi	t4,t4,-2 # 80007ffe <_edata+0x7f8e>
   18d50:	00a00e13          	li	t3,10
   18d54:	3fd19863          	bne	gp,t4,19144 <fail>

00018d58 <test_11>:
   18d58:	800000b7          	lui	ra,0x80000
   18d5c:	00008137          	lui	sp,0x8
   18d60:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18d64:	002081b3          	add	gp,ra,sp
   18d68:	80008eb7          	lui	t4,0x80008
   18d6c:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   18d70:	00b00e13          	li	t3,11
   18d74:	3dd19863          	bne	gp,t4,19144 <fail>

00018d78 <test_12>:
   18d78:	800000b7          	lui	ra,0x80000
   18d7c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18d80:	ffff8137          	lui	sp,0xffff8
   18d84:	002081b3          	add	gp,ra,sp
   18d88:	7fff8eb7          	lui	t4,0x7fff8
   18d8c:	fffe8e93          	addi	t4,t4,-1 # 7fff7fff <_etext+0x7ffdd9cb>
   18d90:	00c00e13          	li	t3,12
   18d94:	3bd19863          	bne	gp,t4,19144 <fail>

00018d98 <test_13>:
   18d98:	00000093          	li	ra,0
   18d9c:	fff00113          	li	sp,-1
   18da0:	002081b3          	add	gp,ra,sp
   18da4:	fff00e93          	li	t4,-1
   18da8:	00d00e13          	li	t3,13
   18dac:	39d19c63          	bne	gp,t4,19144 <fail>

00018db0 <test_14>:
   18db0:	fff00093          	li	ra,-1
   18db4:	00100113          	li	sp,1
   18db8:	002081b3          	add	gp,ra,sp
   18dbc:	00000e93          	li	t4,0
   18dc0:	00e00e13          	li	t3,14
   18dc4:	39d19063          	bne	gp,t4,19144 <fail>

00018dc8 <test_15>:
   18dc8:	fff00093          	li	ra,-1
   18dcc:	fff00113          	li	sp,-1
   18dd0:	002081b3          	add	gp,ra,sp
   18dd4:	ffe00e93          	li	t4,-2
   18dd8:	00f00e13          	li	t3,15
   18ddc:	37d19463          	bne	gp,t4,19144 <fail>

00018de0 <test_16>:
   18de0:	00100093          	li	ra,1
   18de4:	80000137          	lui	sp,0x80000
   18de8:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   18dec:	002081b3          	add	gp,ra,sp
   18df0:	80000eb7          	lui	t4,0x80000
   18df4:	01000e13          	li	t3,16
   18df8:	35d19663          	bne	gp,t4,19144 <fail>

00018dfc <test_17>:
   18dfc:	00d00093          	li	ra,13
   18e00:	00b00113          	li	sp,11
   18e04:	002080b3          	add	ra,ra,sp
   18e08:	01800e93          	li	t4,24
   18e0c:	01100e13          	li	t3,17
   18e10:	33d09a63          	bne	ra,t4,19144 <fail>

00018e14 <test_18>:
   18e14:	00e00093          	li	ra,14
   18e18:	00b00113          	li	sp,11
   18e1c:	00208133          	add	sp,ra,sp
   18e20:	01900e93          	li	t4,25
   18e24:	01200e13          	li	t3,18
   18e28:	31d11e63          	bne	sp,t4,19144 <fail>

00018e2c <test_19>:
   18e2c:	00d00093          	li	ra,13
   18e30:	001080b3          	add	ra,ra,ra
   18e34:	01a00e93          	li	t4,26
   18e38:	01300e13          	li	t3,19
   18e3c:	31d09463          	bne	ra,t4,19144 <fail>

00018e40 <test_20>:
   18e40:	00000213          	li	tp,0
   18e44:	00d00093          	li	ra,13
   18e48:	00b00113          	li	sp,11
   18e4c:	002081b3          	add	gp,ra,sp
   18e50:	00018313          	mv	t1,gp
   18e54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e58:	00200293          	li	t0,2
   18e5c:	fe5214e3          	bne	tp,t0,18e44 <test_20+0x4>
   18e60:	01800e93          	li	t4,24
   18e64:	01400e13          	li	t3,20
   18e68:	2dd31e63          	bne	t1,t4,19144 <fail>

00018e6c <test_21>:
   18e6c:	00000213          	li	tp,0
   18e70:	00e00093          	li	ra,14
   18e74:	00b00113          	li	sp,11
   18e78:	002081b3          	add	gp,ra,sp
   18e7c:	00000013          	nop
   18e80:	00018313          	mv	t1,gp
   18e84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e88:	00200293          	li	t0,2
   18e8c:	fe5212e3          	bne	tp,t0,18e70 <test_21+0x4>
   18e90:	01900e93          	li	t4,25
   18e94:	01500e13          	li	t3,21
   18e98:	2bd31663          	bne	t1,t4,19144 <fail>

00018e9c <test_22>:
   18e9c:	00000213          	li	tp,0
   18ea0:	00f00093          	li	ra,15
   18ea4:	00b00113          	li	sp,11
   18ea8:	002081b3          	add	gp,ra,sp
   18eac:	00000013          	nop
   18eb0:	00000013          	nop
   18eb4:	00018313          	mv	t1,gp
   18eb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ebc:	00200293          	li	t0,2
   18ec0:	fe5210e3          	bne	tp,t0,18ea0 <test_22+0x4>
   18ec4:	01a00e93          	li	t4,26
   18ec8:	01600e13          	li	t3,22
   18ecc:	27d31c63          	bne	t1,t4,19144 <fail>

00018ed0 <test_23>:
   18ed0:	00000213          	li	tp,0
   18ed4:	00d00093          	li	ra,13
   18ed8:	00b00113          	li	sp,11
   18edc:	002081b3          	add	gp,ra,sp
   18ee0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ee4:	00200293          	li	t0,2
   18ee8:	fe5216e3          	bne	tp,t0,18ed4 <test_23+0x4>
   18eec:	01800e93          	li	t4,24
   18ef0:	01700e13          	li	t3,23
   18ef4:	25d19863          	bne	gp,t4,19144 <fail>

00018ef8 <test_24>:
   18ef8:	00000213          	li	tp,0
   18efc:	00e00093          	li	ra,14
   18f00:	00b00113          	li	sp,11
   18f04:	00000013          	nop
   18f08:	002081b3          	add	gp,ra,sp
   18f0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f10:	00200293          	li	t0,2
   18f14:	fe5214e3          	bne	tp,t0,18efc <test_24+0x4>
   18f18:	01900e93          	li	t4,25
   18f1c:	01800e13          	li	t3,24
   18f20:	23d19263          	bne	gp,t4,19144 <fail>

00018f24 <test_25>:
   18f24:	00000213          	li	tp,0
   18f28:	00f00093          	li	ra,15
   18f2c:	00b00113          	li	sp,11
   18f30:	00000013          	nop
   18f34:	00000013          	nop
   18f38:	002081b3          	add	gp,ra,sp
   18f3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f40:	00200293          	li	t0,2
   18f44:	fe5212e3          	bne	tp,t0,18f28 <test_25+0x4>
   18f48:	01a00e93          	li	t4,26
   18f4c:	01900e13          	li	t3,25
   18f50:	1fd19a63          	bne	gp,t4,19144 <fail>

00018f54 <test_26>:
   18f54:	00000213          	li	tp,0
   18f58:	00d00093          	li	ra,13
   18f5c:	00000013          	nop
   18f60:	00b00113          	li	sp,11
   18f64:	002081b3          	add	gp,ra,sp
   18f68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f6c:	00200293          	li	t0,2
   18f70:	fe5214e3          	bne	tp,t0,18f58 <test_26+0x4>
   18f74:	01800e93          	li	t4,24
   18f78:	01a00e13          	li	t3,26
   18f7c:	1dd19463          	bne	gp,t4,19144 <fail>

00018f80 <test_27>:
   18f80:	00000213          	li	tp,0
   18f84:	00e00093          	li	ra,14
   18f88:	00000013          	nop
   18f8c:	00b00113          	li	sp,11
   18f90:	00000013          	nop
   18f94:	002081b3          	add	gp,ra,sp
   18f98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f9c:	00200293          	li	t0,2
   18fa0:	fe5212e3          	bne	tp,t0,18f84 <test_27+0x4>
   18fa4:	01900e93          	li	t4,25
   18fa8:	01b00e13          	li	t3,27
   18fac:	19d19c63          	bne	gp,t4,19144 <fail>

00018fb0 <test_28>:
   18fb0:	00000213          	li	tp,0
   18fb4:	00f00093          	li	ra,15
   18fb8:	00000013          	nop
   18fbc:	00000013          	nop
   18fc0:	00b00113          	li	sp,11
   18fc4:	002081b3          	add	gp,ra,sp
   18fc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18fcc:	00200293          	li	t0,2
   18fd0:	fe5212e3          	bne	tp,t0,18fb4 <test_28+0x4>
   18fd4:	01a00e93          	li	t4,26
   18fd8:	01c00e13          	li	t3,28
   18fdc:	17d19463          	bne	gp,t4,19144 <fail>

00018fe0 <test_29>:
   18fe0:	00000213          	li	tp,0
   18fe4:	00b00113          	li	sp,11
   18fe8:	00d00093          	li	ra,13
   18fec:	002081b3          	add	gp,ra,sp
   18ff0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ff4:	00200293          	li	t0,2
   18ff8:	fe5216e3          	bne	tp,t0,18fe4 <test_29+0x4>
   18ffc:	01800e93          	li	t4,24
   19000:	01d00e13          	li	t3,29
   19004:	15d19063          	bne	gp,t4,19144 <fail>

00019008 <test_30>:
   19008:	00000213          	li	tp,0
   1900c:	00b00113          	li	sp,11
   19010:	00e00093          	li	ra,14
   19014:	00000013          	nop
   19018:	002081b3          	add	gp,ra,sp
   1901c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19020:	00200293          	li	t0,2
   19024:	fe5214e3          	bne	tp,t0,1900c <test_30+0x4>
   19028:	01900e93          	li	t4,25
   1902c:	01e00e13          	li	t3,30
   19030:	11d19a63          	bne	gp,t4,19144 <fail>

00019034 <test_31>:
   19034:	00000213          	li	tp,0
   19038:	00b00113          	li	sp,11
   1903c:	00f00093          	li	ra,15
   19040:	00000013          	nop
   19044:	00000013          	nop
   19048:	002081b3          	add	gp,ra,sp
   1904c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19050:	00200293          	li	t0,2
   19054:	fe5212e3          	bne	tp,t0,19038 <test_31+0x4>
   19058:	01a00e93          	li	t4,26
   1905c:	01f00e13          	li	t3,31
   19060:	0fd19263          	bne	gp,t4,19144 <fail>

00019064 <test_32>:
   19064:	00000213          	li	tp,0
   19068:	00b00113          	li	sp,11
   1906c:	00000013          	nop
   19070:	00d00093          	li	ra,13
   19074:	002081b3          	add	gp,ra,sp
   19078:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1907c:	00200293          	li	t0,2
   19080:	fe5214e3          	bne	tp,t0,19068 <test_32+0x4>
   19084:	01800e93          	li	t4,24
   19088:	02000e13          	li	t3,32
   1908c:	0bd19c63          	bne	gp,t4,19144 <fail>

00019090 <test_33>:
   19090:	00000213          	li	tp,0
   19094:	00b00113          	li	sp,11
   19098:	00000013          	nop
   1909c:	00e00093          	li	ra,14
   190a0:	00000013          	nop
   190a4:	002081b3          	add	gp,ra,sp
   190a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   190ac:	00200293          	li	t0,2
   190b0:	fe5212e3          	bne	tp,t0,19094 <test_33+0x4>
   190b4:	01900e93          	li	t4,25
   190b8:	02100e13          	li	t3,33
   190bc:	09d19463          	bne	gp,t4,19144 <fail>

000190c0 <test_34>:
   190c0:	00000213          	li	tp,0
   190c4:	00b00113          	li	sp,11
   190c8:	00000013          	nop
   190cc:	00000013          	nop
   190d0:	00f00093          	li	ra,15
   190d4:	002081b3          	add	gp,ra,sp
   190d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   190dc:	00200293          	li	t0,2
   190e0:	fe5212e3          	bne	tp,t0,190c4 <test_34+0x4>
   190e4:	01a00e93          	li	t4,26
   190e8:	02200e13          	li	t3,34
   190ec:	05d19c63          	bne	gp,t4,19144 <fail>

000190f0 <test_35>:
   190f0:	00f00093          	li	ra,15
   190f4:	00100133          	add	sp,zero,ra
   190f8:	00f00e93          	li	t4,15
   190fc:	02300e13          	li	t3,35
   19100:	05d11263          	bne	sp,t4,19144 <fail>

00019104 <test_36>:
   19104:	02000093          	li	ra,32
   19108:	00008133          	add	sp,ra,zero
   1910c:	02000e93          	li	t4,32
   19110:	02400e13          	li	t3,36
   19114:	03d11863          	bne	sp,t4,19144 <fail>

00019118 <test_37>:
   19118:	000000b3          	add	ra,zero,zero
   1911c:	00000e93          	li	t4,0
   19120:	02500e13          	li	t3,37
   19124:	03d09063          	bne	ra,t4,19144 <fail>

00019128 <test_38>:
   19128:	01000093          	li	ra,16
   1912c:	01e00113          	li	sp,30
   19130:	00208033          	add	zero,ra,sp
   19134:	00000e93          	li	t4,0
   19138:	02600e13          	li	t3,38
   1913c:	01d01463          	bne	zero,t4,19144 <fail>
   19140:	05c01463          	bne	zero,t3,19188 <pass>

00019144 <fail>:
   19144:	0ff00513          	li	a0,255

00019148 <.delay_fail>:
   19148:	fff50513          	addi	a0,a0,-1
   1914c:	fe051ee3          	bnez	a0,19148 <.delay_fail>
   19150:	02000537          	lui	a0,0x2000
   19154:	04500593          	li	a1,69
   19158:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1915c:	05200613          	li	a2,82
   19160:	00c52023          	sw	a2,0(a0)
   19164:	00c52023          	sw	a2,0(a0)
   19168:	04f00693          	li	a3,79
   1916c:	00d52023          	sw	a3,0(a0)
   19170:	00c52023          	sw	a2,0(a0)
   19174:	00d00713          	li	a4,13
   19178:	00e52023          	sw	a4,0(a0)
   1917c:	00a00793          	li	a5,10
   19180:	00f52023          	sw	a5,0(a0)
   19184:	fbdf606f          	j	10140 <add_ret>

00019188 <pass>:
   19188:	0ff00513          	li	a0,255

0001918c <.delay_ok>:
   1918c:	fff50513          	addi	a0,a0,-1
   19190:	fe051ee3          	bnez	a0,1918c <.delay_ok>
   19194:	02000537          	lui	a0,0x2000
   19198:	04f00593          	li	a1,79
   1919c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   191a0:	04b00613          	li	a2,75
   191a4:	00c52023          	sw	a2,0(a0)
   191a8:	00d00693          	li	a3,13
   191ac:	00d52023          	sw	a3,0(a0)
   191b0:	00a00713          	li	a4,10
   191b4:	00e52023          	sw	a4,0(a0)
   191b8:	f89f606f          	j	10140 <add_ret>

000191bc <andi>:
   191bc:	0ff00513          	li	a0,255

000191c0 <.delay_pr>:
   191c0:	fff50513          	addi	a0,a0,-1
   191c4:	fe051ee3          	bnez	a0,191c0 <.delay_pr>
   191c8:	00019537          	lui	a0,0x19
   191cc:	1e850513          	addi	a0,a0,488 # 191e8 <.test_name>
   191d0:	02000637          	lui	a2,0x2000

000191d4 <.prname_next>:
   191d4:	00050583          	lb	a1,0(a0)
   191d8:	00058c63          	beqz	a1,191f0 <.prname_done>
   191dc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   191e0:	00150513          	addi	a0,a0,1
   191e4:	ff1ff06f          	j	191d4 <.prname_next>

000191e8 <.test_name>:
   191e8:	6e61                	lui	t3,0x18
   191ea:	6964                	flw	fs1,84(a0)
   191ec:	0000                	unimp
	...

000191f0 <.prname_done>:
   191f0:	02e00593          	li	a1,46
   191f4:	00b62023          	sw	a1,0(a2)
   191f8:	00b62023          	sw	a1,0(a2)

000191fc <test_2>:
   191fc:	ff0100b7          	lui	ra,0xff010
   19200:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   19204:	f0f0f193          	andi	gp,ra,-241
   19208:	ff010eb7          	lui	t4,0xff010
   1920c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   19210:	00200e13          	li	t3,2
   19214:	1bd19463          	bne	gp,t4,193bc <fail>

00019218 <test_3>:
   19218:	0ff010b7          	lui	ra,0xff01
   1921c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   19220:	0f00f193          	andi	gp,ra,240
   19224:	0f000e93          	li	t4,240
   19228:	00300e13          	li	t3,3
   1922c:	19d19863          	bne	gp,t4,193bc <fail>

00019230 <test_4>:
   19230:	00ff00b7          	lui	ra,0xff0
   19234:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   19238:	70f0f193          	andi	gp,ra,1807
   1923c:	00f00e93          	li	t4,15
   19240:	00400e13          	li	t3,4
   19244:	17d19c63          	bne	gp,t4,193bc <fail>

00019248 <test_5>:
   19248:	f00ff0b7          	lui	ra,0xf00ff
   1924c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19250:	0f00f193          	andi	gp,ra,240
   19254:	00000e93          	li	t4,0
   19258:	00500e13          	li	t3,5
   1925c:	17d19063          	bne	gp,t4,193bc <fail>

00019260 <test_6>:
   19260:	ff0100b7          	lui	ra,0xff010
   19264:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   19268:	0f00f093          	andi	ra,ra,240
   1926c:	00000e93          	li	t4,0
   19270:	00600e13          	li	t3,6
   19274:	15d09463          	bne	ra,t4,193bc <fail>

00019278 <test_7>:
   19278:	00000213          	li	tp,0
   1927c:	0ff010b7          	lui	ra,0xff01
   19280:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   19284:	70f0f193          	andi	gp,ra,1807
   19288:	00018313          	mv	t1,gp
   1928c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19290:	00200293          	li	t0,2
   19294:	fe5214e3          	bne	tp,t0,1927c <test_7+0x4>
   19298:	70000e93          	li	t4,1792
   1929c:	00700e13          	li	t3,7
   192a0:	11d31e63          	bne	t1,t4,193bc <fail>

000192a4 <test_8>:
   192a4:	00000213          	li	tp,0
   192a8:	00ff00b7          	lui	ra,0xff0
   192ac:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   192b0:	0f00f193          	andi	gp,ra,240
   192b4:	00000013          	nop
   192b8:	00018313          	mv	t1,gp
   192bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   192c0:	00200293          	li	t0,2
   192c4:	fe5212e3          	bne	tp,t0,192a8 <test_8+0x4>
   192c8:	0f000e93          	li	t4,240
   192cc:	00800e13          	li	t3,8
   192d0:	0fd31663          	bne	t1,t4,193bc <fail>

000192d4 <test_9>:
   192d4:	00000213          	li	tp,0
   192d8:	f00ff0b7          	lui	ra,0xf00ff
   192dc:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   192e0:	f0f0f193          	andi	gp,ra,-241
   192e4:	00000013          	nop
   192e8:	00000013          	nop
   192ec:	00018313          	mv	t1,gp
   192f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   192f4:	00200293          	li	t0,2
   192f8:	fe5210e3          	bne	tp,t0,192d8 <test_9+0x4>
   192fc:	f00ffeb7          	lui	t4,0xf00ff
   19300:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   19304:	00900e13          	li	t3,9
   19308:	0bd31a63          	bne	t1,t4,193bc <fail>

0001930c <test_10>:
   1930c:	00000213          	li	tp,0
   19310:	0ff010b7          	lui	ra,0xff01
   19314:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   19318:	70f0f193          	andi	gp,ra,1807
   1931c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19320:	00200293          	li	t0,2
   19324:	fe5216e3          	bne	tp,t0,19310 <test_10+0x4>
   19328:	70000e93          	li	t4,1792
   1932c:	00a00e13          	li	t3,10
   19330:	09d19663          	bne	gp,t4,193bc <fail>

00019334 <test_11>:
   19334:	00000213          	li	tp,0
   19338:	00ff00b7          	lui	ra,0xff0
   1933c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   19340:	00000013          	nop
   19344:	0f00f193          	andi	gp,ra,240
   19348:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1934c:	00200293          	li	t0,2
   19350:	fe5214e3          	bne	tp,t0,19338 <test_11+0x4>
   19354:	0f000e93          	li	t4,240
   19358:	00b00e13          	li	t3,11
   1935c:	07d19063          	bne	gp,t4,193bc <fail>

00019360 <test_12>:
   19360:	00000213          	li	tp,0
   19364:	f00ff0b7          	lui	ra,0xf00ff
   19368:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   1936c:	00000013          	nop
   19370:	00000013          	nop
   19374:	70f0f193          	andi	gp,ra,1807
   19378:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1937c:	00200293          	li	t0,2
   19380:	fe5212e3          	bne	tp,t0,19364 <test_12+0x4>
   19384:	00f00e93          	li	t4,15
   19388:	00c00e13          	li	t3,12
   1938c:	03d19863          	bne	gp,t4,193bc <fail>

00019390 <test_13>:
   19390:	0f007093          	andi	ra,zero,240
   19394:	00000e93          	li	t4,0
   19398:	00d00e13          	li	t3,13
   1939c:	03d09063          	bne	ra,t4,193bc <fail>

000193a0 <test_14>:
   193a0:	00ff00b7          	lui	ra,0xff0
   193a4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   193a8:	70f0f013          	andi	zero,ra,1807
   193ac:	00000e93          	li	t4,0
   193b0:	00e00e13          	li	t3,14
   193b4:	01d01463          	bne	zero,t4,193bc <fail>
   193b8:	05c01463          	bne	zero,t3,19400 <pass>

000193bc <fail>:
   193bc:	0ff00513          	li	a0,255

000193c0 <.delay_fail>:
   193c0:	fff50513          	addi	a0,a0,-1
   193c4:	fe051ee3          	bnez	a0,193c0 <.delay_fail>
   193c8:	02000537          	lui	a0,0x2000
   193cc:	04500593          	li	a1,69
   193d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   193d4:	05200613          	li	a2,82
   193d8:	00c52023          	sw	a2,0(a0)
   193dc:	00c52023          	sw	a2,0(a0)
   193e0:	04f00693          	li	a3,79
   193e4:	00d52023          	sw	a3,0(a0)
   193e8:	00c52023          	sw	a2,0(a0)
   193ec:	00d00713          	li	a4,13
   193f0:	00e52023          	sw	a4,0(a0)
   193f4:	00a00793          	li	a5,10
   193f8:	00f52023          	sw	a5,0(a0)
   193fc:	d35f606f          	j	10130 <andi_ret>

00019400 <pass>:
   19400:	0ff00513          	li	a0,255

00019404 <.delay_ok>:
   19404:	fff50513          	addi	a0,a0,-1
   19408:	fe051ee3          	bnez	a0,19404 <.delay_ok>
   1940c:	02000537          	lui	a0,0x2000
   19410:	04f00593          	li	a1,79
   19414:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   19418:	04b00613          	li	a2,75
   1941c:	00c52023          	sw	a2,0(a0)
   19420:	00d00693          	li	a3,13
   19424:	00d52023          	sw	a3,0(a0)
   19428:	00a00713          	li	a4,10
   1942c:	00e52023          	sw	a4,0(a0)
   19430:	d01f606f          	j	10130 <andi_ret>

00019434 <j>:
   19434:	0ff00513          	li	a0,255

00019438 <.delay_pr>:
   19438:	fff50513          	addi	a0,a0,-1
   1943c:	fe051ee3          	bnez	a0,19438 <.delay_pr>
   19440:	00019537          	lui	a0,0x19
   19444:	46050513          	addi	a0,a0,1120 # 19460 <.test_name>
   19448:	02000637          	lui	a2,0x2000

0001944c <.prname_next>:
   1944c:	00050583          	lb	a1,0(a0)
   19450:	00058a63          	beqz	a1,19464 <.prname_done>
   19454:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   19458:	00150513          	addi	a0,a0,1
   1945c:	ff1ff06f          	j	1944c <.prname_next>

00019460 <.test_name>:
   19460:	006a                	c.slli	zero,0x1a
	...

00019464 <.prname_done>:
   19464:	02e00593          	li	a1,46
   19468:	00b62023          	sw	a1,0(a2)
   1946c:	00b62023          	sw	a1,0(a2)
   19470:	00200e13          	li	t3,2
   19474:	0080006f          	j	1947c <test_2>
   19478:	0340006f          	j	194ac <fail>

0001947c <test_2>:
   1947c:	00100093          	li	ra,1
   19480:	0140006f          	j	19494 <test_2+0x18>
   19484:	00108093          	addi	ra,ra,1
   19488:	00108093          	addi	ra,ra,1
   1948c:	00108093          	addi	ra,ra,1
   19490:	00108093          	addi	ra,ra,1
   19494:	00108093          	addi	ra,ra,1
   19498:	00108093          	addi	ra,ra,1
   1949c:	00300e93          	li	t4,3
   194a0:	00300e13          	li	t3,3
   194a4:	01d09463          	bne	ra,t4,194ac <fail>
   194a8:	05c01463          	bne	zero,t3,194f0 <pass>

000194ac <fail>:
   194ac:	0ff00513          	li	a0,255

000194b0 <.delay_fail>:
   194b0:	fff50513          	addi	a0,a0,-1
   194b4:	fe051ee3          	bnez	a0,194b0 <.delay_fail>
   194b8:	02000537          	lui	a0,0x2000
   194bc:	04500593          	li	a1,69
   194c0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   194c4:	05200613          	li	a2,82
   194c8:	00c52023          	sw	a2,0(a0)
   194cc:	00c52023          	sw	a2,0(a0)
   194d0:	04f00693          	li	a3,79
   194d4:	00d52023          	sw	a3,0(a0)
   194d8:	00c52023          	sw	a2,0(a0)
   194dc:	00d00713          	li	a4,13
   194e0:	00e52023          	sw	a4,0(a0)
   194e4:	00a00793          	li	a5,10
   194e8:	00f52023          	sw	a5,0(a0)
   194ec:	bf1f606f          	j	100dc <j_ret>

000194f0 <pass>:
   194f0:	0ff00513          	li	a0,255

000194f4 <.delay_ok>:
   194f4:	fff50513          	addi	a0,a0,-1
   194f8:	fe051ee3          	bnez	a0,194f4 <.delay_ok>
   194fc:	02000537          	lui	a0,0x2000
   19500:	04f00593          	li	a1,79
   19504:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   19508:	04b00613          	li	a2,75
   1950c:	00c52023          	sw	a2,0(a0)
   19510:	00d00693          	li	a3,13
   19514:	00d52023          	sw	a3,0(a0)
   19518:	00a00713          	li	a4,10
   1951c:	00e52023          	sw	a4,0(a0)
   19520:	bbdf606f          	j	100dc <j_ret>

00019524 <xori>:
   19524:	0ff00513          	li	a0,255

00019528 <.delay_pr>:
   19528:	fff50513          	addi	a0,a0,-1
   1952c:	fe051ee3          	bnez	a0,19528 <.delay_pr>
   19530:	00019537          	lui	a0,0x19
   19534:	55050513          	addi	a0,a0,1360 # 19550 <.test_name>
   19538:	02000637          	lui	a2,0x2000

0001953c <.prname_next>:
   1953c:	00050583          	lb	a1,0(a0)
   19540:	00058c63          	beqz	a1,19558 <.prname_done>
   19544:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   19548:	00150513          	addi	a0,a0,1
   1954c:	ff1ff06f          	j	1953c <.prname_next>

00019550 <.test_name>:
   19550:	6f78                	flw	fa4,92(a4)
   19552:	6972                	flw	fs2,28(sp)
   19554:	0000                	unimp
	...

00019558 <.prname_done>:
   19558:	02e00593          	li	a1,46
   1955c:	00b62023          	sw	a1,0(a2)
   19560:	00b62023          	sw	a1,0(a2)

00019564 <test_2>:
   19564:	00ff10b7          	lui	ra,0xff1
   19568:	f0008093          	addi	ra,ra,-256 # ff0f00 <_etext+0xfd68cc>
   1956c:	f0f0c193          	xori	gp,ra,-241
   19570:	ff00feb7          	lui	t4,0xff00f
   19574:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   19578:	00200e13          	li	t3,2
   1957c:	1dd19663          	bne	gp,t4,19748 <fail>

00019580 <test_3>:
   19580:	0ff010b7          	lui	ra,0xff01
   19584:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   19588:	0f00c193          	xori	gp,ra,240
   1958c:	0ff01eb7          	lui	t4,0xff01
   19590:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee68cc>
   19594:	00300e13          	li	t3,3
   19598:	1bd19863          	bne	gp,t4,19748 <fail>

0001959c <test_4>:
   1959c:	00ff10b7          	lui	ra,0xff1
   195a0:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd62cb>
   195a4:	70f0c193          	xori	gp,ra,1807
   195a8:	00ff1eb7          	lui	t4,0xff1
   195ac:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd69bc>
   195b0:	00400e13          	li	t3,4
   195b4:	19d19a63          	bne	gp,t4,19748 <fail>

000195b8 <test_5>:
   195b8:	f00ff0b7          	lui	ra,0xf00ff
   195bc:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   195c0:	0f00c193          	xori	gp,ra,240
   195c4:	f00ffeb7          	lui	t4,0xf00ff
   195c8:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   195cc:	00500e13          	li	t3,5
   195d0:	17d19c63          	bne	gp,t4,19748 <fail>

000195d4 <test_6>:
   195d4:	ff00f0b7          	lui	ra,0xff00f
   195d8:	70008093          	addi	ra,ra,1792 # ff00f700 <_edata+0x7f00f690>
   195dc:	70f0c093          	xori	ra,ra,1807
   195e0:	ff00feb7          	lui	t4,0xff00f
   195e4:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   195e8:	00600e13          	li	t3,6
   195ec:	15d09e63          	bne	ra,t4,19748 <fail>

000195f0 <test_7>:
   195f0:	00000213          	li	tp,0
   195f4:	0ff010b7          	lui	ra,0xff01
   195f8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   195fc:	0f00c193          	xori	gp,ra,240
   19600:	00018313          	mv	t1,gp
   19604:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19608:	00200293          	li	t0,2
   1960c:	fe5214e3          	bne	tp,t0,195f4 <test_7+0x4>
   19610:	0ff01eb7          	lui	t4,0xff01
   19614:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee68cc>
   19618:	00700e13          	li	t3,7
   1961c:	13d31663          	bne	t1,t4,19748 <fail>

00019620 <test_8>:
   19620:	00000213          	li	tp,0
   19624:	00ff10b7          	lui	ra,0xff1
   19628:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd62cb>
   1962c:	70f0c193          	xori	gp,ra,1807
   19630:	00000013          	nop
   19634:	00018313          	mv	t1,gp
   19638:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1963c:	00200293          	li	t0,2
   19640:	fe5212e3          	bne	tp,t0,19624 <test_8+0x4>
   19644:	00ff1eb7          	lui	t4,0xff1
   19648:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd69bc>
   1964c:	00800e13          	li	t3,8
   19650:	0fd31c63          	bne	t1,t4,19748 <fail>

00019654 <test_9>:
   19654:	00000213          	li	tp,0
   19658:	f00ff0b7          	lui	ra,0xf00ff
   1965c:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19660:	0f00c193          	xori	gp,ra,240
   19664:	00000013          	nop
   19668:	00000013          	nop
   1966c:	00018313          	mv	t1,gp
   19670:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19674:	00200293          	li	t0,2
   19678:	fe5210e3          	bne	tp,t0,19658 <test_9+0x4>
   1967c:	f00ffeb7          	lui	t4,0xf00ff
   19680:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   19684:	00900e13          	li	t3,9
   19688:	0dd31063          	bne	t1,t4,19748 <fail>

0001968c <test_10>:
   1968c:	00000213          	li	tp,0
   19690:	0ff010b7          	lui	ra,0xff01
   19694:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69bc>
   19698:	0f00c193          	xori	gp,ra,240
   1969c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   196a0:	00200293          	li	t0,2
   196a4:	fe5216e3          	bne	tp,t0,19690 <test_10+0x4>
   196a8:	0ff01eb7          	lui	t4,0xff01
   196ac:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee68cc>
   196b0:	00a00e13          	li	t3,10
   196b4:	09d19a63          	bne	gp,t4,19748 <fail>

000196b8 <test_11>:
   196b8:	00000213          	li	tp,0
   196bc:	00ff10b7          	lui	ra,0xff1
   196c0:	fff08093          	addi	ra,ra,-1 # ff0fff <_etext+0xfd69cb>
   196c4:	00000013          	nop
   196c8:	00f0c193          	xori	gp,ra,15
   196cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   196d0:	00200293          	li	t0,2
   196d4:	fe5214e3          	bne	tp,t0,196bc <test_11+0x4>
   196d8:	00ff1eb7          	lui	t4,0xff1
   196dc:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd69bc>
   196e0:	00b00e13          	li	t3,11
   196e4:	07d19263          	bne	gp,t4,19748 <fail>

000196e8 <test_12>:
   196e8:	00000213          	li	tp,0
   196ec:	f00ff0b7          	lui	ra,0xf00ff
   196f0:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   196f4:	00000013          	nop
   196f8:	00000013          	nop
   196fc:	0f00c193          	xori	gp,ra,240
   19700:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19704:	00200293          	li	t0,2
   19708:	fe5212e3          	bne	tp,t0,196ec <test_12+0x4>
   1970c:	f00ffeb7          	lui	t4,0xf00ff
   19710:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   19714:	00c00e13          	li	t3,12
   19718:	03d19863          	bne	gp,t4,19748 <fail>

0001971c <test_13>:
   1971c:	0f004093          	xori	ra,zero,240
   19720:	0f000e93          	li	t4,240
   19724:	00d00e13          	li	t3,13
   19728:	03d09063          	bne	ra,t4,19748 <fail>

0001972c <test_14>:
   1972c:	00ff00b7          	lui	ra,0xff0
   19730:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5acb>
   19734:	70f0c013          	xori	zero,ra,1807
   19738:	00000e93          	li	t4,0
   1973c:	00e00e13          	li	t3,14
   19740:	01d01463          	bne	zero,t4,19748 <fail>
   19744:	05c01463          	bne	zero,t3,1978c <pass>

00019748 <fail>:
   19748:	0ff00513          	li	a0,255

0001974c <.delay_fail>:
   1974c:	fff50513          	addi	a0,a0,-1
   19750:	fe051ee3          	bnez	a0,1974c <.delay_fail>
   19754:	02000537          	lui	a0,0x2000
   19758:	04500593          	li	a1,69
   1975c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   19760:	05200613          	li	a2,82
   19764:	00c52023          	sw	a2,0(a0)
   19768:	00c52023          	sw	a2,0(a0)
   1976c:	04f00693          	li	a3,79
   19770:	00d52023          	sw	a3,0(a0)
   19774:	00c52023          	sw	a2,0(a0)
   19778:	00d00713          	li	a4,13
   1977c:	00e52023          	sw	a4,0(a0)
   19780:	00a00793          	li	a5,10
   19784:	00f52023          	sw	a5,0(a0)
   19788:	9a1f606f          	j	10128 <xori_ret>

0001978c <pass>:
   1978c:	0ff00513          	li	a0,255

00019790 <.delay_ok>:
   19790:	fff50513          	addi	a0,a0,-1
   19794:	fe051ee3          	bnez	a0,19790 <.delay_ok>
   19798:	02000537          	lui	a0,0x2000
   1979c:	04f00593          	li	a1,79
   197a0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   197a4:	04b00613          	li	a2,75
   197a8:	00c52023          	sw	a2,0(a0)
   197ac:	00d00693          	li	a3,13
   197b0:	00d52023          	sw	a3,0(a0)
   197b4:	00a00713          	li	a4,10
   197b8:	00e52023          	sw	a4,0(a0)
   197bc:	96df606f          	j	10128 <xori_ret>

000197c0 <blt>:
   197c0:	0ff00513          	li	a0,255

000197c4 <.delay_pr>:
   197c4:	fff50513          	addi	a0,a0,-1
   197c8:	fe051ee3          	bnez	a0,197c4 <.delay_pr>
   197cc:	00019537          	lui	a0,0x19
   197d0:	7ec50513          	addi	a0,a0,2028 # 197ec <.test_name>
   197d4:	02000637          	lui	a2,0x2000

000197d8 <.prname_next>:
   197d8:	00050583          	lb	a1,0(a0)
   197dc:	00058a63          	beqz	a1,197f0 <.prname_done>
   197e0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   197e4:	00150513          	addi	a0,a0,1
   197e8:	ff1ff06f          	j	197d8 <.prname_next>

000197ec <.test_name>:
   197ec:	6c62                	flw	fs8,24(sp)
   197ee:	0074                	addi	a3,sp,12

000197f0 <.prname_done>:
   197f0:	02e00593          	li	a1,46
   197f4:	00b62023          	sw	a1,0(a2)
   197f8:	00b62023          	sw	a1,0(a2)

000197fc <test_2>:
   197fc:	00200e13          	li	t3,2
   19800:	00000093          	li	ra,0
   19804:	00100113          	li	sp,1
   19808:	0020c663          	blt	ra,sp,19814 <test_2+0x18>
   1980c:	2bc01863          	bne	zero,t3,19abc <fail>
   19810:	01c01663          	bne	zero,t3,1981c <test_3>
   19814:	fe20cee3          	blt	ra,sp,19810 <test_2+0x14>
   19818:	2bc01263          	bne	zero,t3,19abc <fail>

0001981c <test_3>:
   1981c:	00300e13          	li	t3,3
   19820:	fff00093          	li	ra,-1
   19824:	00100113          	li	sp,1
   19828:	0020c663          	blt	ra,sp,19834 <test_3+0x18>
   1982c:	29c01863          	bne	zero,t3,19abc <fail>
   19830:	01c01663          	bne	zero,t3,1983c <test_4>
   19834:	fe20cee3          	blt	ra,sp,19830 <test_3+0x14>
   19838:	29c01263          	bne	zero,t3,19abc <fail>

0001983c <test_4>:
   1983c:	00400e13          	li	t3,4
   19840:	ffe00093          	li	ra,-2
   19844:	fff00113          	li	sp,-1
   19848:	0020c663          	blt	ra,sp,19854 <test_4+0x18>
   1984c:	27c01863          	bne	zero,t3,19abc <fail>
   19850:	01c01663          	bne	zero,t3,1985c <test_5>
   19854:	fe20cee3          	blt	ra,sp,19850 <test_4+0x14>
   19858:	27c01263          	bne	zero,t3,19abc <fail>

0001985c <test_5>:
   1985c:	00500e13          	li	t3,5
   19860:	00100093          	li	ra,1
   19864:	00000113          	li	sp,0
   19868:	0020c463          	blt	ra,sp,19870 <test_5+0x14>
   1986c:	01c01463          	bne	zero,t3,19874 <test_5+0x18>
   19870:	25c01663          	bne	zero,t3,19abc <fail>
   19874:	fe20cee3          	blt	ra,sp,19870 <test_5+0x14>

00019878 <test_6>:
   19878:	00600e13          	li	t3,6
   1987c:	00100093          	li	ra,1
   19880:	fff00113          	li	sp,-1
   19884:	0020c463          	blt	ra,sp,1988c <test_6+0x14>
   19888:	01c01463          	bne	zero,t3,19890 <test_6+0x18>
   1988c:	23c01863          	bne	zero,t3,19abc <fail>
   19890:	fe20cee3          	blt	ra,sp,1988c <test_6+0x14>

00019894 <test_7>:
   19894:	00700e13          	li	t3,7
   19898:	fff00093          	li	ra,-1
   1989c:	ffe00113          	li	sp,-2
   198a0:	0020c463          	blt	ra,sp,198a8 <test_7+0x14>
   198a4:	01c01463          	bne	zero,t3,198ac <test_7+0x18>
   198a8:	21c01a63          	bne	zero,t3,19abc <fail>
   198ac:	fe20cee3          	blt	ra,sp,198a8 <test_7+0x14>

000198b0 <test_8>:
   198b0:	00800e13          	li	t3,8
   198b4:	00100093          	li	ra,1
   198b8:	ffe00113          	li	sp,-2
   198bc:	0020c463          	blt	ra,sp,198c4 <test_8+0x14>
   198c0:	01c01463          	bne	zero,t3,198c8 <test_8+0x18>
   198c4:	1fc01c63          	bne	zero,t3,19abc <fail>
   198c8:	fe20cee3          	blt	ra,sp,198c4 <test_8+0x14>

000198cc <test_9>:
   198cc:	00900e13          	li	t3,9
   198d0:	00000213          	li	tp,0
   198d4:	00000093          	li	ra,0
   198d8:	fff00113          	li	sp,-1
   198dc:	1e20c063          	blt	ra,sp,19abc <fail>
   198e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   198e4:	00200293          	li	t0,2
   198e8:	fe5216e3          	bne	tp,t0,198d4 <test_9+0x8>

000198ec <test_10>:
   198ec:	00a00e13          	li	t3,10
   198f0:	00000213          	li	tp,0
   198f4:	00000093          	li	ra,0
   198f8:	fff00113          	li	sp,-1
   198fc:	00000013          	nop
   19900:	1a20ce63          	blt	ra,sp,19abc <fail>
   19904:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19908:	00200293          	li	t0,2
   1990c:	fe5214e3          	bne	tp,t0,198f4 <test_10+0x8>

00019910 <test_11>:
   19910:	00b00e13          	li	t3,11
   19914:	00000213          	li	tp,0
   19918:	00000093          	li	ra,0
   1991c:	fff00113          	li	sp,-1
   19920:	00000013          	nop
   19924:	00000013          	nop
   19928:	1820ca63          	blt	ra,sp,19abc <fail>
   1992c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19930:	00200293          	li	t0,2
   19934:	fe5212e3          	bne	tp,t0,19918 <test_11+0x8>

00019938 <test_12>:
   19938:	00c00e13          	li	t3,12
   1993c:	00000213          	li	tp,0
   19940:	00000093          	li	ra,0
   19944:	00000013          	nop
   19948:	fff00113          	li	sp,-1
   1994c:	1620c863          	blt	ra,sp,19abc <fail>
   19950:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19954:	00200293          	li	t0,2
   19958:	fe5214e3          	bne	tp,t0,19940 <test_12+0x8>

0001995c <test_13>:
   1995c:	00d00e13          	li	t3,13
   19960:	00000213          	li	tp,0
   19964:	00000093          	li	ra,0
   19968:	00000013          	nop
   1996c:	fff00113          	li	sp,-1
   19970:	00000013          	nop
   19974:	1420c463          	blt	ra,sp,19abc <fail>
   19978:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1997c:	00200293          	li	t0,2
   19980:	fe5212e3          	bne	tp,t0,19964 <test_13+0x8>

00019984 <test_14>:
   19984:	00e00e13          	li	t3,14
   19988:	00000213          	li	tp,0
   1998c:	00000093          	li	ra,0
   19990:	00000013          	nop
   19994:	00000013          	nop
   19998:	fff00113          	li	sp,-1
   1999c:	1220c063          	blt	ra,sp,19abc <fail>
   199a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199a4:	00200293          	li	t0,2
   199a8:	fe5212e3          	bne	tp,t0,1998c <test_14+0x8>

000199ac <test_15>:
   199ac:	00f00e13          	li	t3,15
   199b0:	00000213          	li	tp,0
   199b4:	00000093          	li	ra,0
   199b8:	fff00113          	li	sp,-1
   199bc:	1020c063          	blt	ra,sp,19abc <fail>
   199c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199c4:	00200293          	li	t0,2
   199c8:	fe5216e3          	bne	tp,t0,199b4 <test_15+0x8>

000199cc <test_16>:
   199cc:	01000e13          	li	t3,16
   199d0:	00000213          	li	tp,0
   199d4:	00000093          	li	ra,0
   199d8:	fff00113          	li	sp,-1
   199dc:	00000013          	nop
   199e0:	0c20ce63          	blt	ra,sp,19abc <fail>
   199e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199e8:	00200293          	li	t0,2
   199ec:	fe5214e3          	bne	tp,t0,199d4 <test_16+0x8>

000199f0 <test_17>:
   199f0:	01100e13          	li	t3,17
   199f4:	00000213          	li	tp,0
   199f8:	00000093          	li	ra,0
   199fc:	fff00113          	li	sp,-1
   19a00:	00000013          	nop
   19a04:	00000013          	nop
   19a08:	0a20ca63          	blt	ra,sp,19abc <fail>
   19a0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a10:	00200293          	li	t0,2
   19a14:	fe5212e3          	bne	tp,t0,199f8 <test_17+0x8>

00019a18 <test_18>:
   19a18:	01200e13          	li	t3,18
   19a1c:	00000213          	li	tp,0
   19a20:	00000093          	li	ra,0
   19a24:	00000013          	nop
   19a28:	fff00113          	li	sp,-1
   19a2c:	0820c863          	blt	ra,sp,19abc <fail>
   19a30:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a34:	00200293          	li	t0,2
   19a38:	fe5214e3          	bne	tp,t0,19a20 <test_18+0x8>

00019a3c <test_19>:
   19a3c:	01300e13          	li	t3,19
   19a40:	00000213          	li	tp,0
   19a44:	00000093          	li	ra,0
   19a48:	00000013          	nop
   19a4c:	fff00113          	li	sp,-1
   19a50:	00000013          	nop
   19a54:	0620c463          	blt	ra,sp,19abc <fail>
   19a58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a5c:	00200293          	li	t0,2
   19a60:	fe5212e3          	bne	tp,t0,19a44 <test_19+0x8>

00019a64 <test_20>:
   19a64:	01400e13          	li	t3,20
   19a68:	00000213          	li	tp,0
   19a6c:	00000093          	li	ra,0
   19a70:	00000013          	nop
   19a74:	00000013          	nop
   19a78:	fff00113          	li	sp,-1
   19a7c:	0420c063          	blt	ra,sp,19abc <fail>
   19a80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a84:	00200293          	li	t0,2
   19a88:	fe5212e3          	bne	tp,t0,19a6c <test_20+0x8>

00019a8c <test_21>:
   19a8c:	00100093          	li	ra,1
   19a90:	00104a63          	bgtz	ra,19aa4 <test_21+0x18>
   19a94:	00108093          	addi	ra,ra,1
   19a98:	00108093          	addi	ra,ra,1
   19a9c:	00108093          	addi	ra,ra,1
   19aa0:	00108093          	addi	ra,ra,1
   19aa4:	00108093          	addi	ra,ra,1
   19aa8:	00108093          	addi	ra,ra,1
   19aac:	00300e93          	li	t4,3
   19ab0:	01500e13          	li	t3,21
   19ab4:	01d09463          	bne	ra,t4,19abc <fail>
   19ab8:	05c01463          	bne	zero,t3,19b00 <pass>

00019abc <fail>:
   19abc:	0ff00513          	li	a0,255

00019ac0 <.delay_fail>:
   19ac0:	fff50513          	addi	a0,a0,-1
   19ac4:	fe051ee3          	bnez	a0,19ac0 <.delay_fail>
   19ac8:	02000537          	lui	a0,0x2000
   19acc:	04500593          	li	a1,69
   19ad0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   19ad4:	05200613          	li	a2,82
   19ad8:	00c52023          	sw	a2,0(a0)
   19adc:	00c52023          	sw	a2,0(a0)
   19ae0:	04f00693          	li	a3,79
   19ae4:	00d52023          	sw	a3,0(a0)
   19ae8:	00c52023          	sw	a2,0(a0)
   19aec:	00d00713          	li	a4,13
   19af0:	00e52023          	sw	a4,0(a0)
   19af4:	00a00793          	li	a5,10
   19af8:	00f52023          	sw	a5,0(a0)
   19afc:	df4f606f          	j	100f0 <blt_ret>

00019b00 <pass>:
   19b00:	0ff00513          	li	a0,255

00019b04 <.delay_ok>:
   19b04:	fff50513          	addi	a0,a0,-1
   19b08:	fe051ee3          	bnez	a0,19b04 <.delay_ok>
   19b0c:	02000537          	lui	a0,0x2000
   19b10:	04f00593          	li	a1,79
   19b14:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   19b18:	04b00613          	li	a2,75
   19b1c:	00c52023          	sw	a2,0(a0)
   19b20:	00d00693          	li	a3,13
   19b24:	00d52023          	sw	a3,0(a0)
   19b28:	00a00713          	li	a4,10
   19b2c:	00e52023          	sw	a4,0(a0)
   19b30:	dc0f606f          	j	100f0 <blt_ret>

00019b34 <mulh>:
   19b34:	0ff00513          	li	a0,255

00019b38 <.delay_pr>:
   19b38:	fff50513          	addi	a0,a0,-1
   19b3c:	fe051ee3          	bnez	a0,19b38 <.delay_pr>
   19b40:	0001a537          	lui	a0,0x1a
   19b44:	b6050513          	addi	a0,a0,-1184 # 19b60 <.test_name>
   19b48:	02000637          	lui	a2,0x2000

00019b4c <.prname_next>:
   19b4c:	00050583          	lb	a1,0(a0)
   19b50:	00058c63          	beqz	a1,19b68 <.prname_done>
   19b54:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   19b58:	00150513          	addi	a0,a0,1
   19b5c:	ff1ff06f          	j	19b4c <.prname_next>

00019b60 <.test_name>:
   19b60:	756d                	lui	a0,0xffffb
   19b62:	686c                	flw	fa1,84(s0)
   19b64:	0000                	unimp
	...

00019b68 <.prname_done>:
   19b68:	02e00593          	li	a1,46
   19b6c:	00b62023          	sw	a1,0(a2)
   19b70:	00b62023          	sw	a1,0(a2)

00019b74 <test_2>:
   19b74:	00000093          	li	ra,0
   19b78:	00000113          	li	sp,0
   19b7c:	022091b3          	mulh	gp,ra,sp
   19b80:	00000e93          	li	t4,0
   19b84:	00200e13          	li	t3,2
   19b88:	4bd19a63          	bne	gp,t4,1a03c <fail>

00019b8c <test_3>:
   19b8c:	00100093          	li	ra,1
   19b90:	00100113          	li	sp,1
   19b94:	022091b3          	mulh	gp,ra,sp
   19b98:	00000e93          	li	t4,0
   19b9c:	00300e13          	li	t3,3
   19ba0:	49d19e63          	bne	gp,t4,1a03c <fail>

00019ba4 <test_4>:
   19ba4:	00300093          	li	ra,3
   19ba8:	00700113          	li	sp,7
   19bac:	022091b3          	mulh	gp,ra,sp
   19bb0:	00000e93          	li	t4,0
   19bb4:	00400e13          	li	t3,4
   19bb8:	49d19263          	bne	gp,t4,1a03c <fail>

00019bbc <test_5>:
   19bbc:	00000093          	li	ra,0
   19bc0:	ffff8137          	lui	sp,0xffff8
   19bc4:	022091b3          	mulh	gp,ra,sp
   19bc8:	00000e93          	li	t4,0
   19bcc:	00500e13          	li	t3,5
   19bd0:	47d19663          	bne	gp,t4,1a03c <fail>

00019bd4 <test_6>:
   19bd4:	800000b7          	lui	ra,0x80000
   19bd8:	00000113          	li	sp,0
   19bdc:	022091b3          	mulh	gp,ra,sp
   19be0:	00000e93          	li	t4,0
   19be4:	00600e13          	li	t3,6
   19be8:	45d19a63          	bne	gp,t4,1a03c <fail>

00019bec <test_7>:
   19bec:	800000b7          	lui	ra,0x80000
   19bf0:	00000113          	li	sp,0
   19bf4:	022091b3          	mulh	gp,ra,sp
   19bf8:	00000e93          	li	t4,0
   19bfc:	00700e13          	li	t3,7
   19c00:	43d19e63          	bne	gp,t4,1a03c <fail>

00019c04 <test_30>:
   19c04:	aaaab0b7          	lui	ra,0xaaaab
   19c08:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19c0c:	00030137          	lui	sp,0x30
   19c10:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15849>
   19c14:	022091b3          	mulh	gp,ra,sp
   19c18:	ffff0eb7          	lui	t4,0xffff0
   19c1c:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19c20:	01e00e13          	li	t3,30
   19c24:	41d19c63          	bne	gp,t4,1a03c <fail>

00019c28 <test_31>:
   19c28:	000300b7          	lui	ra,0x30
   19c2c:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15849>
   19c30:	aaaab137          	lui	sp,0xaaaab
   19c34:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19c38:	022091b3          	mulh	gp,ra,sp
   19c3c:	ffff0eb7          	lui	t4,0xffff0
   19c40:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19c44:	01f00e13          	li	t3,31
   19c48:	3fd19a63          	bne	gp,t4,1a03c <fail>

00019c4c <test_32>:
   19c4c:	ff0000b7          	lui	ra,0xff000
   19c50:	ff000137          	lui	sp,0xff000
   19c54:	022091b3          	mulh	gp,ra,sp
   19c58:	00010eb7          	lui	t4,0x10
   19c5c:	02000e13          	li	t3,32
   19c60:	3dd19e63          	bne	gp,t4,1a03c <fail>

00019c64 <test_33>:
   19c64:	fff00093          	li	ra,-1
   19c68:	fff00113          	li	sp,-1
   19c6c:	022091b3          	mulh	gp,ra,sp
   19c70:	00000e93          	li	t4,0
   19c74:	02100e13          	li	t3,33
   19c78:	3dd19263          	bne	gp,t4,1a03c <fail>

00019c7c <test_34>:
   19c7c:	fff00093          	li	ra,-1
   19c80:	00100113          	li	sp,1
   19c84:	022091b3          	mulh	gp,ra,sp
   19c88:	fff00e93          	li	t4,-1
   19c8c:	02200e13          	li	t3,34
   19c90:	3bd19663          	bne	gp,t4,1a03c <fail>

00019c94 <test_35>:
   19c94:	00100093          	li	ra,1
   19c98:	fff00113          	li	sp,-1
   19c9c:	022091b3          	mulh	gp,ra,sp
   19ca0:	fff00e93          	li	t4,-1
   19ca4:	02300e13          	li	t3,35
   19ca8:	39d19a63          	bne	gp,t4,1a03c <fail>

00019cac <test_8>:
   19cac:	00d000b7          	lui	ra,0xd00
   19cb0:	00b00137          	lui	sp,0xb00
   19cb4:	022090b3          	mulh	ra,ra,sp
   19cb8:	00009eb7          	lui	t4,0x9
   19cbc:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19cc0:	00800e13          	li	t3,8
   19cc4:	37d09c63          	bne	ra,t4,1a03c <fail>

00019cc8 <test_9>:
   19cc8:	00e000b7          	lui	ra,0xe00
   19ccc:	00b00137          	lui	sp,0xb00
   19cd0:	02209133          	mulh	sp,ra,sp
   19cd4:	0000aeb7          	lui	t4,0xa
   19cd8:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19cdc:	00900e13          	li	t3,9
   19ce0:	35d11e63          	bne	sp,t4,1a03c <fail>

00019ce4 <test_10>:
   19ce4:	00d000b7          	lui	ra,0xd00
   19ce8:	021090b3          	mulh	ra,ra,ra
   19cec:	0000beb7          	lui	t4,0xb
   19cf0:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   19cf4:	00a00e13          	li	t3,10
   19cf8:	35d09263          	bne	ra,t4,1a03c <fail>

00019cfc <test_11>:
   19cfc:	00000213          	li	tp,0
   19d00:	00d000b7          	lui	ra,0xd00
   19d04:	00b00137          	lui	sp,0xb00
   19d08:	022091b3          	mulh	gp,ra,sp
   19d0c:	00018313          	mv	t1,gp
   19d10:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d14:	00200293          	li	t0,2
   19d18:	fe5214e3          	bne	tp,t0,19d00 <test_11+0x4>
   19d1c:	00009eb7          	lui	t4,0x9
   19d20:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19d24:	00b00e13          	li	t3,11
   19d28:	31d31a63          	bne	t1,t4,1a03c <fail>

00019d2c <test_12>:
   19d2c:	00000213          	li	tp,0
   19d30:	00e000b7          	lui	ra,0xe00
   19d34:	00b00137          	lui	sp,0xb00
   19d38:	022091b3          	mulh	gp,ra,sp
   19d3c:	00000013          	nop
   19d40:	00018313          	mv	t1,gp
   19d44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d48:	00200293          	li	t0,2
   19d4c:	fe5212e3          	bne	tp,t0,19d30 <test_12+0x4>
   19d50:	0000aeb7          	lui	t4,0xa
   19d54:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19d58:	00c00e13          	li	t3,12
   19d5c:	2fd31063          	bne	t1,t4,1a03c <fail>

00019d60 <test_13>:
   19d60:	00000213          	li	tp,0
   19d64:	00f000b7          	lui	ra,0xf00
   19d68:	00b00137          	lui	sp,0xb00
   19d6c:	022091b3          	mulh	gp,ra,sp
   19d70:	00000013          	nop
   19d74:	00000013          	nop
   19d78:	00018313          	mv	t1,gp
   19d7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d80:	00200293          	li	t0,2
   19d84:	fe5210e3          	bne	tp,t0,19d64 <test_13+0x4>
   19d88:	0000aeb7          	lui	t4,0xa
   19d8c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19d90:	00d00e13          	li	t3,13
   19d94:	2bd31463          	bne	t1,t4,1a03c <fail>

00019d98 <test_14>:
   19d98:	00000213          	li	tp,0
   19d9c:	00d000b7          	lui	ra,0xd00
   19da0:	00b00137          	lui	sp,0xb00
   19da4:	022091b3          	mulh	gp,ra,sp
   19da8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19dac:	00200293          	li	t0,2
   19db0:	fe5216e3          	bne	tp,t0,19d9c <test_14+0x4>
   19db4:	00009eb7          	lui	t4,0x9
   19db8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19dbc:	00e00e13          	li	t3,14
   19dc0:	27d19e63          	bne	gp,t4,1a03c <fail>

00019dc4 <test_15>:
   19dc4:	00000213          	li	tp,0
   19dc8:	00e000b7          	lui	ra,0xe00
   19dcc:	00b00137          	lui	sp,0xb00
   19dd0:	00000013          	nop
   19dd4:	022091b3          	mulh	gp,ra,sp
   19dd8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ddc:	00200293          	li	t0,2
   19de0:	fe5214e3          	bne	tp,t0,19dc8 <test_15+0x4>
   19de4:	0000aeb7          	lui	t4,0xa
   19de8:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19dec:	00f00e13          	li	t3,15
   19df0:	25d19663          	bne	gp,t4,1a03c <fail>

00019df4 <test_16>:
   19df4:	00000213          	li	tp,0
   19df8:	00f000b7          	lui	ra,0xf00
   19dfc:	00b00137          	lui	sp,0xb00
   19e00:	00000013          	nop
   19e04:	00000013          	nop
   19e08:	022091b3          	mulh	gp,ra,sp
   19e0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e10:	00200293          	li	t0,2
   19e14:	fe5212e3          	bne	tp,t0,19df8 <test_16+0x4>
   19e18:	0000aeb7          	lui	t4,0xa
   19e1c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19e20:	01000e13          	li	t3,16
   19e24:	21d19c63          	bne	gp,t4,1a03c <fail>

00019e28 <test_17>:
   19e28:	00000213          	li	tp,0
   19e2c:	00d000b7          	lui	ra,0xd00
   19e30:	00000013          	nop
   19e34:	00b00137          	lui	sp,0xb00
   19e38:	022091b3          	mulh	gp,ra,sp
   19e3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e40:	00200293          	li	t0,2
   19e44:	fe5214e3          	bne	tp,t0,19e2c <test_17+0x4>
   19e48:	00009eb7          	lui	t4,0x9
   19e4c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19e50:	01100e13          	li	t3,17
   19e54:	1fd19463          	bne	gp,t4,1a03c <fail>

00019e58 <test_18>:
   19e58:	00000213          	li	tp,0
   19e5c:	00e000b7          	lui	ra,0xe00
   19e60:	00000013          	nop
   19e64:	00b00137          	lui	sp,0xb00
   19e68:	00000013          	nop
   19e6c:	022091b3          	mulh	gp,ra,sp
   19e70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e74:	00200293          	li	t0,2
   19e78:	fe5212e3          	bne	tp,t0,19e5c <test_18+0x4>
   19e7c:	0000aeb7          	lui	t4,0xa
   19e80:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19e84:	01200e13          	li	t3,18
   19e88:	1bd19a63          	bne	gp,t4,1a03c <fail>

00019e8c <test_19>:
   19e8c:	00000213          	li	tp,0
   19e90:	00f000b7          	lui	ra,0xf00
   19e94:	00000013          	nop
   19e98:	00000013          	nop
   19e9c:	00b00137          	lui	sp,0xb00
   19ea0:	022091b3          	mulh	gp,ra,sp
   19ea4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ea8:	00200293          	li	t0,2
   19eac:	fe5212e3          	bne	tp,t0,19e90 <test_19+0x4>
   19eb0:	0000aeb7          	lui	t4,0xa
   19eb4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19eb8:	01300e13          	li	t3,19
   19ebc:	19d19063          	bne	gp,t4,1a03c <fail>

00019ec0 <test_20>:
   19ec0:	00000213          	li	tp,0
   19ec4:	00b00137          	lui	sp,0xb00
   19ec8:	00d000b7          	lui	ra,0xd00
   19ecc:	022091b3          	mulh	gp,ra,sp
   19ed0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19ed4:	00200293          	li	t0,2
   19ed8:	fe5216e3          	bne	tp,t0,19ec4 <test_20+0x4>
   19edc:	00009eb7          	lui	t4,0x9
   19ee0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19ee4:	01400e13          	li	t3,20
   19ee8:	15d19a63          	bne	gp,t4,1a03c <fail>

00019eec <test_21>:
   19eec:	00000213          	li	tp,0
   19ef0:	00b00137          	lui	sp,0xb00
   19ef4:	00e000b7          	lui	ra,0xe00
   19ef8:	00000013          	nop
   19efc:	022091b3          	mulh	gp,ra,sp
   19f00:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f04:	00200293          	li	t0,2
   19f08:	fe5214e3          	bne	tp,t0,19ef0 <test_21+0x4>
   19f0c:	0000aeb7          	lui	t4,0xa
   19f10:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19f14:	01500e13          	li	t3,21
   19f18:	13d19263          	bne	gp,t4,1a03c <fail>

00019f1c <test_22>:
   19f1c:	00000213          	li	tp,0
   19f20:	00b00137          	lui	sp,0xb00
   19f24:	00f000b7          	lui	ra,0xf00
   19f28:	00000013          	nop
   19f2c:	00000013          	nop
   19f30:	022091b3          	mulh	gp,ra,sp
   19f34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f38:	00200293          	li	t0,2
   19f3c:	fe5212e3          	bne	tp,t0,19f20 <test_22+0x4>
   19f40:	0000aeb7          	lui	t4,0xa
   19f44:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19f48:	01600e13          	li	t3,22
   19f4c:	0fd19863          	bne	gp,t4,1a03c <fail>

00019f50 <test_23>:
   19f50:	00000213          	li	tp,0
   19f54:	00b00137          	lui	sp,0xb00
   19f58:	00000013          	nop
   19f5c:	00d000b7          	lui	ra,0xd00
   19f60:	022091b3          	mulh	gp,ra,sp
   19f64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f68:	00200293          	li	t0,2
   19f6c:	fe5214e3          	bne	tp,t0,19f54 <test_23+0x4>
   19f70:	00009eb7          	lui	t4,0x9
   19f74:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19f78:	01700e13          	li	t3,23
   19f7c:	0dd19063          	bne	gp,t4,1a03c <fail>

00019f80 <test_24>:
   19f80:	00000213          	li	tp,0
   19f84:	00b00137          	lui	sp,0xb00
   19f88:	00000013          	nop
   19f8c:	00e000b7          	lui	ra,0xe00
   19f90:	00000013          	nop
   19f94:	022091b3          	mulh	gp,ra,sp
   19f98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f9c:	00200293          	li	t0,2
   19fa0:	fe5212e3          	bne	tp,t0,19f84 <test_24+0x4>
   19fa4:	0000aeb7          	lui	t4,0xa
   19fa8:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19fac:	01800e13          	li	t3,24
   19fb0:	09d19663          	bne	gp,t4,1a03c <fail>

00019fb4 <test_25>:
   19fb4:	00000213          	li	tp,0
   19fb8:	00b00137          	lui	sp,0xb00
   19fbc:	00000013          	nop
   19fc0:	00000013          	nop
   19fc4:	00f000b7          	lui	ra,0xf00
   19fc8:	022091b3          	mulh	gp,ra,sp
   19fcc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19fd0:	00200293          	li	t0,2
   19fd4:	fe5212e3          	bne	tp,t0,19fb8 <test_25+0x4>
   19fd8:	0000aeb7          	lui	t4,0xa
   19fdc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19fe0:	01900e13          	li	t3,25
   19fe4:	05d19c63          	bne	gp,t4,1a03c <fail>

00019fe8 <test_26>:
   19fe8:	7c0000b7          	lui	ra,0x7c000
   19fec:	02101133          	mulh	sp,zero,ra
   19ff0:	00000e93          	li	t4,0
   19ff4:	01a00e13          	li	t3,26
   19ff8:	05d11263          	bne	sp,t4,1a03c <fail>

00019ffc <test_27>:
   19ffc:	800000b7          	lui	ra,0x80000
   1a000:	02009133          	mulh	sp,ra,zero
   1a004:	00000e93          	li	t4,0
   1a008:	01b00e13          	li	t3,27
   1a00c:	03d11863          	bne	sp,t4,1a03c <fail>

0001a010 <test_28>:
   1a010:	020010b3          	mulh	ra,zero,zero
   1a014:	00000e93          	li	t4,0
   1a018:	01c00e13          	li	t3,28
   1a01c:	03d09063          	bne	ra,t4,1a03c <fail>

0001a020 <test_29>:
   1a020:	021000b7          	lui	ra,0x2100
   1a024:	02200137          	lui	sp,0x2200
   1a028:	02209033          	mulh	zero,ra,sp
   1a02c:	00000e93          	li	t4,0
   1a030:	01d00e13          	li	t3,29
   1a034:	01d01463          	bne	zero,t4,1a03c <fail>
   1a038:	05c01463          	bne	zero,t3,1a080 <pass>

0001a03c <fail>:
   1a03c:	0ff00513          	li	a0,255

0001a040 <.delay_fail>:
   1a040:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1a044:	fe051ee3          	bnez	a0,1a040 <.delay_fail>
   1a048:	02000537          	lui	a0,0x2000
   1a04c:	04500593          	li	a1,69
   1a050:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1a054:	05200613          	li	a2,82
   1a058:	00c52023          	sw	a2,0(a0)
   1a05c:	00c52023          	sw	a2,0(a0)
   1a060:	04f00693          	li	a3,79
   1a064:	00d52023          	sw	a3,0(a0)
   1a068:	00c52023          	sw	a2,0(a0)
   1a06c:	00d00713          	li	a4,13
   1a070:	00e52023          	sw	a4,0(a0)
   1a074:	00a00793          	li	a5,10
   1a078:	00f52023          	sw	a5,0(a0)
   1a07c:	8e8f606f          	j	10164 <mulh_ret>

0001a080 <pass>:
   1a080:	0ff00513          	li	a0,255

0001a084 <.delay_ok>:
   1a084:	fff50513          	addi	a0,a0,-1
   1a088:	fe051ee3          	bnez	a0,1a084 <.delay_ok>
   1a08c:	02000537          	lui	a0,0x2000
   1a090:	04f00593          	li	a1,79
   1a094:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1a098:	04b00613          	li	a2,75
   1a09c:	00c52023          	sw	a2,0(a0)
   1a0a0:	00d00693          	li	a3,13
   1a0a4:	00d52023          	sw	a3,0(a0)
   1a0a8:	00a00713          	li	a4,10
   1a0ac:	00e52023          	sw	a4,0(a0)
   1a0b0:	8b4f606f          	j	10164 <mulh_ret>

0001a0b4 <mulhsu>:
   1a0b4:	0ff00513          	li	a0,255

0001a0b8 <.delay_pr>:
   1a0b8:	fff50513          	addi	a0,a0,-1
   1a0bc:	fe051ee3          	bnez	a0,1a0b8 <.delay_pr>
   1a0c0:	0001a537          	lui	a0,0x1a
   1a0c4:	0e050513          	addi	a0,a0,224 # 1a0e0 <.test_name>
   1a0c8:	02000637          	lui	a2,0x2000

0001a0cc <.prname_next>:
   1a0cc:	00050583          	lb	a1,0(a0)
   1a0d0:	00058c63          	beqz	a1,1a0e8 <.prname_done>
   1a0d4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59cc>
   1a0d8:	00150513          	addi	a0,a0,1
   1a0dc:	ff1ff06f          	j	1a0cc <.prname_next>

0001a0e0 <.test_name>:
   1a0e0:	756d                	lui	a0,0xffffb
   1a0e2:	686c                	flw	fa1,84(s0)
   1a0e4:	00007573          	csrrci	a0,ustatus,0

0001a0e8 <.prname_done>:
   1a0e8:	02e00593          	li	a1,46
   1a0ec:	00b62023          	sw	a1,0(a2)
   1a0f0:	00b62023          	sw	a1,0(a2)

0001a0f4 <test_2>:
   1a0f4:	00000093          	li	ra,0
   1a0f8:	00000113          	li	sp,0
   1a0fc:	0220a1b3          	mulhsu	gp,ra,sp
   1a100:	00000e93          	li	t4,0
   1a104:	00200e13          	li	t3,2
   1a108:	4bd19a63          	bne	gp,t4,1a5bc <fail>

0001a10c <test_3>:
   1a10c:	00100093          	li	ra,1
   1a110:	00100113          	li	sp,1
   1a114:	0220a1b3          	mulhsu	gp,ra,sp
   1a118:	00000e93          	li	t4,0
   1a11c:	00300e13          	li	t3,3
   1a120:	49d19e63          	bne	gp,t4,1a5bc <fail>

0001a124 <test_4>:
   1a124:	00300093          	li	ra,3
   1a128:	00700113          	li	sp,7
   1a12c:	0220a1b3          	mulhsu	gp,ra,sp
   1a130:	00000e93          	li	t4,0
   1a134:	00400e13          	li	t3,4
   1a138:	49d19263          	bne	gp,t4,1a5bc <fail>

0001a13c <test_5>:
   1a13c:	00000093          	li	ra,0
   1a140:	ffff8137          	lui	sp,0xffff8
   1a144:	0220a1b3          	mulhsu	gp,ra,sp
   1a148:	00000e93          	li	t4,0
   1a14c:	00500e13          	li	t3,5
   1a150:	47d19663          	bne	gp,t4,1a5bc <fail>

0001a154 <test_6>:
   1a154:	800000b7          	lui	ra,0x80000
   1a158:	00000113          	li	sp,0
   1a15c:	0220a1b3          	mulhsu	gp,ra,sp
   1a160:	00000e93          	li	t4,0
   1a164:	00600e13          	li	t3,6
   1a168:	45d19a63          	bne	gp,t4,1a5bc <fail>

0001a16c <test_7>:
   1a16c:	800000b7          	lui	ra,0x80000
   1a170:	ffff8137          	lui	sp,0xffff8
   1a174:	0220a1b3          	mulhsu	gp,ra,sp
   1a178:	80004eb7          	lui	t4,0x80004
   1a17c:	00700e13          	li	t3,7
   1a180:	43d19e63          	bne	gp,t4,1a5bc <fail>

0001a184 <test_30>:
   1a184:	aaaab0b7          	lui	ra,0xaaaab
   1a188:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a18c:	00030137          	lui	sp,0x30
   1a190:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15849>
   1a194:	0220a1b3          	mulhsu	gp,ra,sp
   1a198:	ffff0eb7          	lui	t4,0xffff0
   1a19c:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   1a1a0:	01e00e13          	li	t3,30
   1a1a4:	41d19c63          	bne	gp,t4,1a5bc <fail>

0001a1a8 <test_31>:
   1a1a8:	000300b7          	lui	ra,0x30
   1a1ac:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15849>
   1a1b0:	aaaab137          	lui	sp,0xaaaab
   1a1b4:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a1b8:	0220a1b3          	mulhsu	gp,ra,sp
   1a1bc:	00020eb7          	lui	t4,0x20
   1a1c0:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x58ca>
   1a1c4:	01f00e13          	li	t3,31
   1a1c8:	3fd19a63          	bne	gp,t4,1a5bc <fail>

0001a1cc <test_32>:
   1a1cc:	ff0000b7          	lui	ra,0xff000
   1a1d0:	ff000137          	lui	sp,0xff000
   1a1d4:	0220a1b3          	mulhsu	gp,ra,sp
   1a1d8:	ff010eb7          	lui	t4,0xff010
   1a1dc:	02000e13          	li	t3,32
   1a1e0:	3dd19e63          	bne	gp,t4,1a5bc <fail>

0001a1e4 <test_33>:
   1a1e4:	fff00093          	li	ra,-1
   1a1e8:	fff00113          	li	sp,-1
   1a1ec:	0220a1b3          	mulhsu	gp,ra,sp
   1a1f0:	fff00e93          	li	t4,-1
   1a1f4:	02100e13          	li	t3,33
   1a1f8:	3dd19263          	bne	gp,t4,1a5bc <fail>

0001a1fc <test_34>:
   1a1fc:	fff00093          	li	ra,-1
   1a200:	00100113          	li	sp,1
   1a204:	0220a1b3          	mulhsu	gp,ra,sp
   1a208:	fff00e93          	li	t4,-1
   1a20c:	02200e13          	li	t3,34
   1a210:	3bd19663          	bne	gp,t4,1a5bc <fail>

0001a214 <test_35>:
   1a214:	00100093          	li	ra,1
   1a218:	fff00113          	li	sp,-1
   1a21c:	0220a1b3          	mulhsu	gp,ra,sp
   1a220:	00000e93          	li	t4,0
   1a224:	02300e13          	li	t3,35
   1a228:	39d19a63          	bne	gp,t4,1a5bc <fail>

0001a22c <test_8>:
   1a22c:	00d000b7          	lui	ra,0xd00
   1a230:	00b00137          	lui	sp,0xb00
   1a234:	0220a0b3          	mulhsu	ra,ra,sp
   1a238:	00009eb7          	lui	t4,0x9
   1a23c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a240:	00800e13          	li	t3,8
   1a244:	37d09c63          	bne	ra,t4,1a5bc <fail>

0001a248 <test_9>:
   1a248:	00e000b7          	lui	ra,0xe00
   1a24c:	00b00137          	lui	sp,0xb00
   1a250:	0220a133          	mulhsu	sp,ra,sp
   1a254:	0000aeb7          	lui	t4,0xa
   1a258:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a25c:	00900e13          	li	t3,9
   1a260:	35d11e63          	bne	sp,t4,1a5bc <fail>

0001a264 <test_10>:
   1a264:	00d000b7          	lui	ra,0xd00
   1a268:	0210a0b3          	mulhsu	ra,ra,ra
   1a26c:	0000beb7          	lui	t4,0xb
   1a270:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   1a274:	00a00e13          	li	t3,10
   1a278:	35d09263          	bne	ra,t4,1a5bc <fail>

0001a27c <test_11>:
   1a27c:	00000213          	li	tp,0
   1a280:	00d000b7          	lui	ra,0xd00
   1a284:	00b00137          	lui	sp,0xb00
   1a288:	0220a1b3          	mulhsu	gp,ra,sp
   1a28c:	00018313          	mv	t1,gp
   1a290:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a294:	00200293          	li	t0,2
   1a298:	fe5214e3          	bne	tp,t0,1a280 <test_11+0x4>
   1a29c:	00009eb7          	lui	t4,0x9
   1a2a0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a2a4:	00b00e13          	li	t3,11
   1a2a8:	31d31a63          	bne	t1,t4,1a5bc <fail>

0001a2ac <test_12>:
   1a2ac:	00000213          	li	tp,0
   1a2b0:	00e000b7          	lui	ra,0xe00
   1a2b4:	00b00137          	lui	sp,0xb00
   1a2b8:	0220a1b3          	mulhsu	gp,ra,sp
   1a2bc:	00000013          	nop
   1a2c0:	00018313          	mv	t1,gp
   1a2c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a2c8:	00200293          	li	t0,2
   1a2cc:	fe5212e3          	bne	tp,t0,1a2b0 <test_12+0x4>
   1a2d0:	0000aeb7          	lui	t4,0xa
   1a2d4:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a2d8:	00c00e13          	li	t3,12
   1a2dc:	2fd31063          	bne	t1,t4,1a5bc <fail>

0001a2e0 <test_13>:
   1a2e0:	00000213          	li	tp,0
   1a2e4:	00f000b7          	lui	ra,0xf00
   1a2e8:	00b00137          	lui	sp,0xb00
   1a2ec:	0220a1b3          	mulhsu	gp,ra,sp
   1a2f0:	00000013          	nop
   1a2f4:	00000013          	nop
   1a2f8:	00018313          	mv	t1,gp
   1a2fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a300:	00200293          	li	t0,2
   1a304:	fe5210e3          	bne	tp,t0,1a2e4 <test_13+0x4>
   1a308:	0000aeb7          	lui	t4,0xa
   1a30c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a310:	00d00e13          	li	t3,13
   1a314:	2bd31463          	bne	t1,t4,1a5bc <fail>

0001a318 <test_14>:
   1a318:	00000213          	li	tp,0
   1a31c:	00d000b7          	lui	ra,0xd00
   1a320:	00b00137          	lui	sp,0xb00
   1a324:	0220a1b3          	mulhsu	gp,ra,sp
   1a328:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a32c:	00200293          	li	t0,2
   1a330:	fe5216e3          	bne	tp,t0,1a31c <test_14+0x4>
   1a334:	00009eb7          	lui	t4,0x9
   1a338:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a33c:	00e00e13          	li	t3,14
   1a340:	27d19e63          	bne	gp,t4,1a5bc <fail>

0001a344 <test_15>:
   1a344:	00000213          	li	tp,0
   1a348:	00e000b7          	lui	ra,0xe00
   1a34c:	00b00137          	lui	sp,0xb00
   1a350:	00000013          	nop
   1a354:	0220a1b3          	mulhsu	gp,ra,sp
   1a358:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a35c:	00200293          	li	t0,2
   1a360:	fe5214e3          	bne	tp,t0,1a348 <test_15+0x4>
   1a364:	0000aeb7          	lui	t4,0xa
   1a368:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a36c:	00f00e13          	li	t3,15
   1a370:	25d19663          	bne	gp,t4,1a5bc <fail>

0001a374 <test_16>:
   1a374:	00000213          	li	tp,0
   1a378:	00f000b7          	lui	ra,0xf00
   1a37c:	00b00137          	lui	sp,0xb00
   1a380:	00000013          	nop
   1a384:	00000013          	nop
   1a388:	0220a1b3          	mulhsu	gp,ra,sp
   1a38c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a390:	00200293          	li	t0,2
   1a394:	fe5212e3          	bne	tp,t0,1a378 <test_16+0x4>
   1a398:	0000aeb7          	lui	t4,0xa
   1a39c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a3a0:	01000e13          	li	t3,16
   1a3a4:	21d19c63          	bne	gp,t4,1a5bc <fail>

0001a3a8 <test_17>:
   1a3a8:	00000213          	li	tp,0
   1a3ac:	00d000b7          	lui	ra,0xd00
   1a3b0:	00000013          	nop
   1a3b4:	00b00137          	lui	sp,0xb00
   1a3b8:	0220a1b3          	mulhsu	gp,ra,sp
   1a3bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a3c0:	00200293          	li	t0,2
   1a3c4:	fe5214e3          	bne	tp,t0,1a3ac <test_17+0x4>
   1a3c8:	00009eb7          	lui	t4,0x9
   1a3cc:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a3d0:	01100e13          	li	t3,17
   1a3d4:	1fd19463          	bne	gp,t4,1a5bc <fail>

0001a3d8 <test_18>:
   1a3d8:	00000213          	li	tp,0
   1a3dc:	00e000b7          	lui	ra,0xe00
   1a3e0:	00000013          	nop
   1a3e4:	00b00137          	lui	sp,0xb00
   1a3e8:	00000013          	nop
   1a3ec:	0220a1b3          	mulhsu	gp,ra,sp
   1a3f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a3f4:	00200293          	li	t0,2
   1a3f8:	fe5212e3          	bne	tp,t0,1a3dc <test_18+0x4>
   1a3fc:	0000aeb7          	lui	t4,0xa
   1a400:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a404:	01200e13          	li	t3,18
   1a408:	1bd19a63          	bne	gp,t4,1a5bc <fail>

0001a40c <test_19>:
   1a40c:	00000213          	li	tp,0
   1a410:	00f000b7          	lui	ra,0xf00
   1a414:	00000013          	nop
   1a418:	00000013          	nop
   1a41c:	00b00137          	lui	sp,0xb00
   1a420:	0220a1b3          	mulhsu	gp,ra,sp
   1a424:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a428:	00200293          	li	t0,2
   1a42c:	fe5212e3          	bne	tp,t0,1a410 <test_19+0x4>
   1a430:	0000aeb7          	lui	t4,0xa
   1a434:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a438:	01300e13          	li	t3,19
   1a43c:	19d19063          	bne	gp,t4,1a5bc <fail>

0001a440 <test_20>:
   1a440:	00000213          	li	tp,0
   1a444:	00b00137          	lui	sp,0xb00
   1a448:	00d000b7          	lui	ra,0xd00
   1a44c:	0220a1b3          	mulhsu	gp,ra,sp
   1a450:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a454:	00200293          	li	t0,2
   1a458:	fe5216e3          	bne	tp,t0,1a444 <test_20+0x4>
   1a45c:	00009eb7          	lui	t4,0x9
   1a460:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a464:	01400e13          	li	t3,20
   1a468:	15d19a63          	bne	gp,t4,1a5bc <fail>

0001a46c <test_21>:
   1a46c:	00000213          	li	tp,0
   1a470:	00b00137          	lui	sp,0xb00
   1a474:	00e000b7          	lui	ra,0xe00
   1a478:	00000013          	nop
   1a47c:	0220a1b3          	mulhsu	gp,ra,sp
   1a480:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a484:	00200293          	li	t0,2
   1a488:	fe5214e3          	bne	tp,t0,1a470 <test_21+0x4>
   1a48c:	0000aeb7          	lui	t4,0xa
   1a490:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a494:	01500e13          	li	t3,21
   1a498:	13d19263          	bne	gp,t4,1a5bc <fail>

0001a49c <test_22>:
   1a49c:	00000213          	li	tp,0
   1a4a0:	00b00137          	lui	sp,0xb00
   1a4a4:	00f000b7          	lui	ra,0xf00
   1a4a8:	00000013          	nop
   1a4ac:	00000013          	nop
   1a4b0:	0220a1b3          	mulhsu	gp,ra,sp
   1a4b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4b8:	00200293          	li	t0,2
   1a4bc:	fe5212e3          	bne	tp,t0,1a4a0 <test_22+0x4>
   1a4c0:	0000aeb7          	lui	t4,0xa
   1a4c4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a4c8:	01600e13          	li	t3,22
   1a4cc:	0fd19863          	bne	gp,t4,1a5bc <fail>

0001a4d0 <test_23>:
   1a4d0:	00000213          	li	tp,0
   1a4d4:	00b00137          	lui	sp,0xb00
   1a4d8:	00000013          	nop
   1a4dc:	00d000b7          	lui	ra,0xd00
   1a4e0:	0220a1b3          	mulhsu	gp,ra,sp
   1a4e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4e8:	00200293          	li	t0,2
   1a4ec:	fe5214e3          	bne	tp,t0,1a4d4 <test_23+0x4>
   1a4f0:	00009eb7          	lui	t4,0x9
   1a4f4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a4f8:	01700e13          	li	t3,23
   1a4fc:	0dd19063          	bne	gp,t4,1a5bc <fail>

0001a500 <test_24>:
   1a500:	00000213          	li	tp,0
   1a504:	00b00137          	lui	sp,0xb00
   1a508:	00000013          	nop
   1a50c:	00e000b7          	lui	ra,0xe00
   1a510:	00000013          	nop
   1a514:	0220a1b3          	mulhsu	gp,ra,sp
   1a518:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a51c:	00200293          	li	t0,2
   1a520:	fe5212e3          	bne	tp,t0,1a504 <test_24+0x4>
   1a524:	0000aeb7          	lui	t4,0xa
   1a528:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a52c:	01800e13          	li	t3,24
   1a530:	09d19663          	bne	gp,t4,1a5bc <fail>

0001a534 <test_25>:
   1a534:	00000213          	li	tp,0
   1a538:	00b00137          	lui	sp,0xb00
   1a53c:	00000013          	nop
   1a540:	00000013          	nop
   1a544:	00f000b7          	lui	ra,0xf00
   1a548:	0220a1b3          	mulhsu	gp,ra,sp
   1a54c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a550:	00200293          	li	t0,2
   1a554:	fe5212e3          	bne	tp,t0,1a538 <test_25+0x4>
   1a558:	0000aeb7          	lui	t4,0xa
   1a55c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a560:	01900e13          	li	t3,25
   1a564:	05d19c63          	bne	gp,t4,1a5bc <fail>

0001a568 <test_26>:
   1a568:	7c0000b7          	lui	ra,0x7c000
   1a56c:	02102133          	mulhsu	sp,zero,ra
   1a570:	00000e93          	li	t4,0
   1a574:	01a00e13          	li	t3,26
   1a578:	05d11263          	bne	sp,t4,1a5bc <fail>

0001a57c <test_27>:
   1a57c:	800000b7          	lui	ra,0x80000
   1a580:	0200a133          	mulhsu	sp,ra,zero
   1a584:	00000e93          	li	t4,0
   1a588:	01b00e13          	li	t3,27
   1a58c:	03d11863          	bne	sp,t4,1a5bc <fail>

0001a590 <test_28>:
   1a590:	020020b3          	mulhsu	ra,zero,zero
   1a594:	00000e93          	li	t4,0
   1a598:	01c00e13          	li	t3,28
   1a59c:	03d09063          	bne	ra,t4,1a5bc <fail>

0001a5a0 <test_29>:
   1a5a0:	021000b7          	lui	ra,0x2100
   1a5a4:	02200137          	lui	sp,0x2200
   1a5a8:	0220a033          	mulhsu	zero,ra,sp
   1a5ac:	00000e93          	li	t4,0
   1a5b0:	01d00e13          	li	t3,29
   1a5b4:	01d01463          	bne	zero,t4,1a5bc <fail>
   1a5b8:	05c01463          	bne	zero,t3,1a600 <pass>

0001a5bc <fail>:
   1a5bc:	0ff00513          	li	a0,255

0001a5c0 <.delay_fail>:
   1a5c0:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1a5c4:	fe051ee3          	bnez	a0,1a5c0 <.delay_fail>
   1a5c8:	02000537          	lui	a0,0x2000
   1a5cc:	04500593          	li	a1,69
   1a5d0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1a5d4:	05200613          	li	a2,82
   1a5d8:	00c52023          	sw	a2,0(a0)
   1a5dc:	00c52023          	sw	a2,0(a0)
   1a5e0:	04f00693          	li	a3,79
   1a5e4:	00d52023          	sw	a3,0(a0)
   1a5e8:	00c52023          	sw	a2,0(a0)
   1a5ec:	00d00713          	li	a4,13
   1a5f0:	00e52023          	sw	a4,0(a0)
   1a5f4:	00a00793          	li	a5,10
   1a5f8:	00f52023          	sw	a5,0(a0)
   1a5fc:	b6df506f          	j	10168 <mulhsu_ret>

0001a600 <pass>:
   1a600:	0ff00513          	li	a0,255

0001a604 <.delay_ok>:
   1a604:	fff50513          	addi	a0,a0,-1
   1a608:	fe051ee3          	bnez	a0,1a604 <.delay_ok>
   1a60c:	02000537          	lui	a0,0x2000
   1a610:	04f00593          	li	a1,79
   1a614:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59cc>
   1a618:	04b00613          	li	a2,75
   1a61c:	00c52023          	sw	a2,0(a0)
   1a620:	00d00693          	li	a3,13
   1a624:	00d52023          	sw	a3,0(a0)
   1a628:	00a00713          	li	a4,10
   1a62c:	00e52023          	sw	a4,0(a0)
   1a630:	b39f506f          	j	10168 <mulhsu_ret>
