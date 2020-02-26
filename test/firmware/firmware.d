
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
   10080:	5c050513          	addi	a0,a0,1472 # 1a63c <_etext>
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
   100d0:	209060ef          	jal	ra,16ad8 <lui>

000100d4 <lui_ret>:
   100d4:	1a4040ef          	jal	ra,14278 <auipc>

000100d8 <auipc_ret>:
   100d8:	364090ef          	jal	ra,1943c <j>

000100dc <j_ret>:
   100dc:	249080ef          	jal	ra,18b24 <jal>

000100e0 <jal_ret>:
   100e0:	5d8040ef          	jal	ra,146b8 <jalr>

000100e4 <jalr_ret>:
   100e4:	5fd020ef          	jal	ra,12ee0 <beq>

000100e8 <beq_ret>:
   100e8:	788040ef          	jal	ra,14870 <bne>

000100ec <bne_ret>:
   100ec:	6dc090ef          	jal	ra,197c8 <blt>

000100f0 <blt_ret>:
   100f0:	508010ef          	jal	ra,115f8 <bge>

000100f4 <bge_ret>:
   100f4:	7a1060ef          	jal	ra,17094 <bltu>

000100f8 <bltu_ret>:
   100f8:	2f1040ef          	jal	ra,14be8 <bgeu>

000100fc <bgeu_ret>:
   100fc:	1b0060ef          	jal	ra,162ac <lb>

00010100 <lb_ret>:
   10100:	1d8010ef          	jal	ra,112d8 <lh>

00010104 <lh_ret>:
   10104:	4a5030ef          	jal	ra,13da8 <lw>

00010108 <lw_ret>:
   10108:	6a5050ef          	jal	ra,15fac <lbu>

0001010c <lbu_ret>:
   1010c:	074080ef          	jal	ra,18180 <lhu>

00010110 <lhu_ret>:
   10110:	2dd060ef          	jal	ra,16bec <sb>

00010114 <sb_ret>:
   10114:	498060ef          	jal	ra,165ac <sh>

00010118 <sh_ret>:
   10118:	091020ef          	jal	ra,129a8 <sw>

0001011c <sw_ret>:
   1011c:	25c040ef          	jal	ra,14378 <addi>

00010120 <addi_ret>:
   10120:	454050ef          	jal	ra,15574 <slti>

00010124 <slti_ret>:
   10124:	408090ef          	jal	ra,1952c <xori>

00010128 <xori_ret>:
   10128:	5c9070ef          	jal	ra,17ef0 <ori>

0001012c <ori_ret>:
   1012c:	098090ef          	jal	ra,191c4 <andi>

00010130 <andi_ret>:
   10130:	518070ef          	jal	ra,17648 <slli>

00010134 <slli_ret>:
   10134:	109030ef          	jal	ra,13a3c <srli>

00010138 <srli_ret>:
   10138:	095010ef          	jal	ra,119cc <srai>

0001013c <srai_ret>:
   1013c:	2f5080ef          	jal	ra,18c30 <add>

00010140 <add_ret>:
   10140:	579010ef          	jal	ra,11eb8 <sub>

00010144 <sub_ret>:
   10144:	375000ef          	jal	ra,10cb8 <sll>

00010148 <sll_ret>:
   10148:	0e9050ef          	jal	ra,15a30 <slt>

0001014c <slt_ret>:
   1014c:	5f8000ef          	jal	ra,10744 <xor>

00010150 <xor_ret>:
   10150:	364080ef          	jal	ra,184b4 <srl>

00010154 <srl_ret>:
   10154:	298030ef          	jal	ra,133ec <sra>

00010158 <sra_ret>:
   10158:	074000ef          	jal	ra,101cc <or>

0001015c <or_ret>:
   1015c:	029070ef          	jal	ra,17984 <and>

00010160 <and_ret>:
   10160:	1dd090ef          	jal	ra,19b3c <mulh>

00010164 <mulh_ret>:
   10164:	759090ef          	jal	ra,1a0bc <mulhsu>

00010168 <mulhsu_ret>:
   10168:	68d040ef          	jal	ra,14ff4 <mulhu>

0001016c <mulhu_ret>:
   1016c:	2c0020ef          	jal	ra,1242c <mul>

00010170 <mul_ret>:
   10170:	779030ef          	jal	ra,140e8 <div>

00010174 <div_ret>:
   10174:	0e0030ef          	jal	ra,13254 <divu>

00010178 <divu_ret>:
   10178:	728050ef          	jal	ra,158a0 <rem>

0001017c <rem_ret>:
   1017c:	2c4070ef          	jal	ra,17440 <remu>

00010180 <remu_ret>:
   10180:	454070ef          	jal	ra,175d4 <simple>

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
   101b0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   101ec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   101f0:	00150513          	addi	a0,a0,1
   101f4:	ff1ff06f          	j	101e4 <.prname_next>

000101f8 <.test_name>:
   101f8:	0000726f          	jal	tp,171f8 <test_11+0x4>

000101fc <.prname_done>:
   101fc:	02e00593          	li	a1,46
   10200:	00b62023          	sw	a1,0(a2)
   10204:	00b62023          	sw	a1,0(a2)

00010208 <test_2>:
   10208:	ff0100b7          	lui	ra,0xff010
   1020c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10210:	0f0f1137          	lui	sp,0xf0f1
   10214:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10218:	0020e1b3          	or	gp,ra,sp
   1021c:	ff100eb7          	lui	t4,0xff100
   10220:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   10224:	00200e13          	li	t3,2
   10228:	4bd19263          	bne	gp,t4,106cc <fail>

0001022c <test_3>:
   1022c:	0ff010b7          	lui	ra,0xff01
   10230:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   10234:	f0f0f137          	lui	sp,0xf0f0f
   10238:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   1023c:	0020e1b3          	or	gp,ra,sp
   10240:	fff10eb7          	lui	t4,0xfff10
   10244:	ff0e8e93          	addi	t4,t4,-16 # fff0fff0 <_edata+0x7ff0ff80>
   10248:	00300e13          	li	t3,3
   1024c:	49d19063          	bne	gp,t4,106cc <fail>

00010250 <test_4>:
   10250:	00ff00b7          	lui	ra,0xff0
   10254:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10258:	0f0f1137          	lui	sp,0xf0f1
   1025c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10260:	0020e1b3          	or	gp,ra,sp
   10264:	0fff1eb7          	lui	t4,0xfff1
   10268:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69c3>
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
   102a4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   102a8:	0020e0b3          	or	ra,ra,sp
   102ac:	ff100eb7          	lui	t4,0xff100
   102b0:	f0fe8e93          	addi	t4,t4,-241 # ff0fff0f <_edata+0x7f0ffe9f>
   102b4:	00600e13          	li	t3,6
   102b8:	41d09a63          	bne	ra,t4,106cc <fail>

000102bc <test_7>:
   102bc:	ff0100b7          	lui	ra,0xff010
   102c0:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   102c4:	0f0f1137          	lui	sp,0xf0f1
   102c8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   1030c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   1033c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   10378:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   1037c:	0f0f1137          	lui	sp,0xf0f1
   10380:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10384:	0020e1b3          	or	gp,ra,sp
   10388:	00000013          	nop
   1038c:	00000013          	nop
   10390:	00018313          	mv	t1,gp
   10394:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10398:	00200293          	li	t0,2
   1039c:	fc521ce3          	bne	tp,t0,10374 <test_11+0x4>
   103a0:	0fff1eb7          	lui	t4,0xfff1
   103a4:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69c3>
   103a8:	00b00e13          	li	t3,11
   103ac:	33d31063          	bne	t1,t4,106cc <fail>

000103b0 <test_12>:
   103b0:	00000213          	li	tp,0
   103b4:	ff0100b7          	lui	ra,0xff010
   103b8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   103bc:	0f0f1137          	lui	sp,0xf0f1
   103c0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   103ec:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   10424:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10428:	0f0f1137          	lui	sp,0xf0f1
   1042c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10430:	00000013          	nop
   10434:	00000013          	nop
   10438:	0020e1b3          	or	gp,ra,sp
   1043c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10440:	00200293          	li	t0,2
   10444:	fc521ee3          	bne	tp,t0,10420 <test_14+0x4>
   10448:	0fff1eb7          	lui	t4,0xfff1
   1044c:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69c3>
   10450:	00e00e13          	li	t3,14
   10454:	27d19c63          	bne	gp,t4,106cc <fail>

00010458 <test_15>:
   10458:	00000213          	li	tp,0
   1045c:	ff0100b7          	lui	ra,0xff010
   10460:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10464:	00000013          	nop
   10468:	0f0f1137          	lui	sp,0xf0f1
   1046c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   10498:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   104d4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   104d8:	00000013          	nop
   104dc:	00000013          	nop
   104e0:	0f0f1137          	lui	sp,0xf0f1
   104e4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   104e8:	0020e1b3          	or	gp,ra,sp
   104ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   104f0:	00200293          	li	t0,2
   104f4:	fc521ee3          	bne	tp,t0,104d0 <test_17+0x4>
   104f8:	0fff1eb7          	lui	t4,0xfff1
   104fc:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69c3>
   10500:	01100e13          	li	t3,17
   10504:	1dd19463          	bne	gp,t4,106cc <fail>

00010508 <test_18>:
   10508:	00000213          	li	tp,0
   1050c:	0f0f1137          	lui	sp,0xf0f1
   10510:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   1054c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   1057c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10580:	00ff00b7          	lui	ra,0xff0
   10584:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10588:	00000013          	nop
   1058c:	00000013          	nop
   10590:	0020e1b3          	or	gp,ra,sp
   10594:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10598:	00200293          	li	t0,2
   1059c:	fc521ee3          	bne	tp,t0,10578 <test_20+0x4>
   105a0:	0fff1eb7          	lui	t4,0xfff1
   105a4:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69c3>
   105a8:	01400e13          	li	t3,20
   105ac:	13d19063          	bne	gp,t4,106cc <fail>

000105b0 <test_21>:
   105b0:	00000213          	li	tp,0
   105b4:	0f0f1137          	lui	sp,0xf0f1
   105b8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   105fc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   1062c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10630:	00000013          	nop
   10634:	00000013          	nop
   10638:	00ff00b7          	lui	ra,0xff0
   1063c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10640:	0020e1b3          	or	gp,ra,sp
   10644:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10648:	00200293          	li	t0,2
   1064c:	fc521ee3          	bne	tp,t0,10628 <test_23+0x4>
   10650:	0fff1eb7          	lui	t4,0xfff1
   10654:	fffe8e93          	addi	t4,t4,-1 # fff0fff <_etext+0xffd69c3>
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
   10680:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10684:	0000e133          	or	sp,ra,zero
   10688:	00ff0eb7          	lui	t4,0xff0
   1068c:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5ac3>
   10690:	01900e13          	li	t3,25
   10694:	03d11c63          	bne	sp,t4,106cc <fail>

00010698 <test_26>:
   10698:	000060b3          	or	ra,zero,zero
   1069c:	00000e93          	li	t4,0
   106a0:	01a00e13          	li	t3,26
   106a4:	03d09463          	bne	ra,t4,106cc <fail>

000106a8 <test_27>:
   106a8:	111110b7          	lui	ra,0x11111
   106ac:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6ad5>
   106b0:	22222137          	lui	sp,0x22222
   106b4:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207be6>
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
   106e0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   10724:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   10764:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
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
   1078c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10790:	0020c1b3          	xor	gp,ra,sp
   10794:	f00ffeb7          	lui	t4,0xf00ff
   10798:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   1079c:	00200e13          	li	t3,2
   107a0:	4bd19063          	bne	gp,t4,10c40 <fail>

000107a4 <test_3>:
   107a4:	0ff010b7          	lui	ra,0xff01
   107a8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   107ac:	f0f0f137          	lui	sp,0xf0f0f
   107b0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   107b4:	0020c1b3          	xor	gp,ra,sp
   107b8:	ff010eb7          	lui	t4,0xff010
   107bc:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   107c0:	00300e13          	li	t3,3
   107c4:	47d19e63          	bne	gp,t4,10c40 <fail>

000107c8 <test_4>:
   107c8:	00ff00b7          	lui	ra,0xff0
   107cc:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   107d0:	0f0f1137          	lui	sp,0xf0f1
   107d4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   107d8:	0020c1b3          	xor	gp,ra,sp
   107dc:	0ff01eb7          	lui	t4,0xff01
   107e0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   107e4:	00400e13          	li	t3,4
   107e8:	45d19c63          	bne	gp,t4,10c40 <fail>

000107ec <test_5>:
   107ec:	f00ff0b7          	lui	ra,0xf00ff
   107f0:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   107f4:	f0f0f137          	lui	sp,0xf0f0f
   107f8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   107fc:	0020c1b3          	xor	gp,ra,sp
   10800:	00ff0eb7          	lui	t4,0xff0
   10804:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5ac3>
   10808:	00500e13          	li	t3,5
   1080c:	43d19a63          	bne	gp,t4,10c40 <fail>

00010810 <test_6>:
   10810:	ff0100b7          	lui	ra,0xff010
   10814:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10818:	0f0f1137          	lui	sp,0xf0f1
   1081c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10820:	0020c0b3          	xor	ra,ra,sp
   10824:	f00ffeb7          	lui	t4,0xf00ff
   10828:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   1082c:	00600e13          	li	t3,6
   10830:	41d09863          	bne	ra,t4,10c40 <fail>

00010834 <test_7>:
   10834:	ff0100b7          	lui	ra,0xff010
   10838:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1083c:	0f0f1137          	lui	sp,0xf0f1
   10840:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   10880:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   108b0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   108ec:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   108f0:	0f0f1137          	lui	sp,0xf0f1
   108f4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   108f8:	0020c1b3          	xor	gp,ra,sp
   108fc:	00000013          	nop
   10900:	00000013          	nop
   10904:	00018313          	mv	t1,gp
   10908:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1090c:	00200293          	li	t0,2
   10910:	fc521ce3          	bne	tp,t0,108e8 <test_11+0x4>
   10914:	0ff01eb7          	lui	t4,0xff01
   10918:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   1091c:	00b00e13          	li	t3,11
   10920:	33d31063          	bne	t1,t4,10c40 <fail>

00010924 <test_12>:
   10924:	00000213          	li	tp,0
   10928:	ff0100b7          	lui	ra,0xff010
   1092c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   10930:	0f0f1137          	lui	sp,0xf0f1
   10934:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   10960:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   10998:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   1099c:	0f0f1137          	lui	sp,0xf0f1
   109a0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   109a4:	00000013          	nop
   109a8:	00000013          	nop
   109ac:	0020c1b3          	xor	gp,ra,sp
   109b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   109b4:	00200293          	li	t0,2
   109b8:	fc521ee3          	bne	tp,t0,10994 <test_14+0x4>
   109bc:	0ff01eb7          	lui	t4,0xff01
   109c0:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   109c4:	00e00e13          	li	t3,14
   109c8:	27d19c63          	bne	gp,t4,10c40 <fail>

000109cc <test_15>:
   109cc:	00000213          	li	tp,0
   109d0:	ff0100b7          	lui	ra,0xff010
   109d4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   109d8:	00000013          	nop
   109dc:	0f0f1137          	lui	sp,0xf0f1
   109e0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   10a0c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   10a48:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10a4c:	00000013          	nop
   10a50:	00000013          	nop
   10a54:	0f0f1137          	lui	sp,0xf0f1
   10a58:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10a5c:	0020c1b3          	xor	gp,ra,sp
   10a60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10a64:	00200293          	li	t0,2
   10a68:	fc521ee3          	bne	tp,t0,10a44 <test_17+0x4>
   10a6c:	0ff01eb7          	lui	t4,0xff01
   10a70:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   10a74:	01100e13          	li	t3,17
   10a78:	1dd19463          	bne	gp,t4,10c40 <fail>

00010a7c <test_18>:
   10a7c:	00000213          	li	tp,0
   10a80:	0f0f1137          	lui	sp,0xf0f1
   10a84:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   10ac0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   10af0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10af4:	00ff00b7          	lui	ra,0xff0
   10af8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10afc:	00000013          	nop
   10b00:	00000013          	nop
   10b04:	0020c1b3          	xor	gp,ra,sp
   10b08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10b0c:	00200293          	li	t0,2
   10b10:	fc521ee3          	bne	tp,t0,10aec <test_20+0x4>
   10b14:	0ff01eb7          	lui	t4,0xff01
   10b18:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   10b1c:	01400e13          	li	t3,20
   10b20:	13d19063          	bne	gp,t4,10c40 <fail>

00010b24 <test_21>:
   10b24:	00000213          	li	tp,0
   10b28:	0f0f1137          	lui	sp,0xf0f1
   10b2c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
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
   10b70:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
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
   10ba0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   10ba4:	00000013          	nop
   10ba8:	00000013          	nop
   10bac:	00ff00b7          	lui	ra,0xff0
   10bb0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10bb4:	0020c1b3          	xor	gp,ra,sp
   10bb8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   10bbc:	00200293          	li	t0,2
   10bc0:	fc521ee3          	bne	tp,t0,10b9c <test_23+0x4>
   10bc4:	0ff01eb7          	lui	t4,0xff01
   10bc8:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
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
   10bf4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   10bf8:	0000c133          	xor	sp,ra,zero
   10bfc:	00ff0eb7          	lui	t4,0xff0
   10c00:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5ac3>
   10c04:	01900e13          	li	t3,25
   10c08:	03d11c63          	bne	sp,t4,10c40 <fail>

00010c0c <test_26>:
   10c0c:	000040b3          	xor	ra,zero,zero
   10c10:	00000e93          	li	t4,0
   10c14:	01a00e13          	li	t3,26
   10c18:	03d09463          	bne	ra,t4,10c40 <fail>

00010c1c <test_27>:
   10c1c:	111110b7          	lui	ra,0x11111
   10c20:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6ad5>
   10c24:	22222137          	lui	sp,0x22222
   10c28:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207be6>
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
   10c54:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   10c98:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   10cd8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
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
   10de8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10dec:	00000113          	li	sp,0
   10df0:	002091b3          	sll	gp,ra,sp
   10df4:	21212eb7          	lui	t4,0x21212
   10df8:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7ae5>
   10dfc:	00c00e13          	li	t3,12
   10e00:	47d19063          	bne	gp,t4,11260 <fail>

00010e04 <test_13>:
   10e04:	212120b7          	lui	ra,0x21212
   10e08:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10e0c:	00100113          	li	sp,1
   10e10:	002091b3          	sll	gp,ra,sp
   10e14:	42424eb7          	lui	t4,0x42424
   10e18:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c06>
   10e1c:	00d00e13          	li	t3,13
   10e20:	45d19063          	bne	gp,t4,11260 <fail>

00010e24 <test_14>:
   10e24:	212120b7          	lui	ra,0x21212
   10e28:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10e2c:	00700113          	li	sp,7
   10e30:	002091b3          	sll	gp,ra,sp
   10e34:	90909eb7          	lui	t4,0x90909
   10e38:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   10e3c:	00e00e13          	li	t3,14
   10e40:	43d19063          	bne	gp,t4,11260 <fail>

00010e44 <test_15>:
   10e44:	212120b7          	lui	ra,0x21212
   10e48:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10e4c:	00e00113          	li	sp,14
   10e50:	002091b3          	sll	gp,ra,sp
   10e54:	48484eb7          	lui	t4,0x48484
   10e58:	00f00e13          	li	t3,15
   10e5c:	41d19263          	bne	gp,t4,11260 <fail>

00010e60 <test_16>:
   10e60:	212120b7          	lui	ra,0x21212
   10e64:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10e68:	01f00113          	li	sp,31
   10e6c:	002091b3          	sll	gp,ra,sp
   10e70:	80000eb7          	lui	t4,0x80000
   10e74:	01000e13          	li	t3,16
   10e78:	3fd19463          	bne	gp,t4,11260 <fail>

00010e7c <test_17>:
   10e7c:	212120b7          	lui	ra,0x21212
   10e80:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10e84:	fe000113          	li	sp,-32
   10e88:	002091b3          	sll	gp,ra,sp
   10e8c:	21212eb7          	lui	t4,0x21212
   10e90:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7ae5>
   10e94:	01100e13          	li	t3,17
   10e98:	3dd19463          	bne	gp,t4,11260 <fail>

00010e9c <test_18>:
   10e9c:	212120b7          	lui	ra,0x21212
   10ea0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10ea4:	fe100113          	li	sp,-31
   10ea8:	002091b3          	sll	gp,ra,sp
   10eac:	42424eb7          	lui	t4,0x42424
   10eb0:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c06>
   10eb4:	01200e13          	li	t3,18
   10eb8:	3bd19463          	bne	gp,t4,11260 <fail>

00010ebc <test_19>:
   10ebc:	212120b7          	lui	ra,0x21212
   10ec0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10ec4:	fe700113          	li	sp,-25
   10ec8:	002091b3          	sll	gp,ra,sp
   10ecc:	90909eb7          	lui	t4,0x90909
   10ed0:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   10ed4:	01300e13          	li	t3,19
   10ed8:	39d19463          	bne	gp,t4,11260 <fail>

00010edc <test_20>:
   10edc:	212120b7          	lui	ra,0x21212
   10ee0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   10ee4:	fee00113          	li	sp,-18
   10ee8:	002091b3          	sll	gp,ra,sp
   10eec:	48484eb7          	lui	t4,0x48484
   10ef0:	01400e13          	li	t3,20
   10ef4:	37d19663          	bne	gp,t4,11260 <fail>

00010ef8 <test_21>:
   10ef8:	212120b7          	lui	ra,0x21212
   10efc:	12008093          	addi	ra,ra,288 # 21212120 <_etext+0x211f7ae4>
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
   11274:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   112b8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   112f8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
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
   11594:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   115d8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   11618:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
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
   11968:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   119ac:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   119ec:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
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
   11aa0:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe59c3>
   11aa4:	00800e13          	li	t3,8
   11aa8:	21d19e63          	bne	gp,t4,11cc4 <fail>

00011aac <test_9>:
   11aac:	800000b7          	lui	ra,0x80000
   11ab0:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11ab4:	4070d193          	srai	gp,ra,0x7
   11ab8:	01000eb7          	lui	t4,0x1000
   11abc:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe59c3>
   11ac0:	00900e13          	li	t3,9
   11ac4:	21d19063          	bne	gp,t4,11cc4 <fail>

00011ac8 <test_10>:
   11ac8:	800000b7          	lui	ra,0x80000
   11acc:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11ad0:	40e0d193          	srai	gp,ra,0xe
   11ad4:	00020eb7          	lui	t4,0x20
   11ad8:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
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
   11cd8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   11d1c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
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
   11d5c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
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
   11da0:	6a0e0e13          	addi	t3,t3,1696 # 186a0 <test_17+0x8>
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
   11dd0:	00028693          	mv	a3,t0
   11dd4:	028000ef          	jal	ra,11dfc <print_uint32>
   11dd8:	fd5ff0ef          	jal	ra,11dac <back>
   11ddc:	0a80006f          	j	11e84 <pass>

00011de0 <goto_fail>:
   11de0:	00050693          	mv	a3,a0
   11de4:	018000ef          	jal	ra,11dfc <print_uint32>
   11de8:	00028693          	mv	a3,t0
   11dec:	010000ef          	jal	ra,11dfc <print_uint32>
   11df0:	00030693          	mv	a3,t1
   11df4:	008000ef          	jal	ra,11dfc <print_uint32>
   11df8:	0480006f          	j	11e40 <fail>

00011dfc <print_uint32>:
   11dfc:	f00005b7          	lui	a1,0xf0000
   11e00:	03a00613          	li	a2,58
   11e04:	02000737          	lui	a4,0x2000
   11e08:	00800e13          	li	t3,8

00011e0c <loop>:
   11e0c:	00d5f533          	and	a0,a1,a3
   11e10:	01c55513          	srli	a0,a0,0x1c
   11e14:	03050513          	addi	a0,a0,48
   11e18:	00c54463          	blt	a0,a2,11e20 <digit>

00011e1c <char>:
   11e1c:	02750513          	addi	a0,a0,39

00011e20 <digit>:
   11e20:	00a72023          	sw	a0,0(a4) # 2000000 <_etext+0x1fe59c4>
   11e24:	00469693          	slli	a3,a3,0x4
   11e28:	407e0e33          	sub	t3,t3,t2
   11e2c:	fe0e10e3          	bnez	t3,11e0c <loop>
   11e30:	02000513          	li	a0,32
   11e34:	00a72023          	sw	a0,0(a4)
   11e38:	00008067          	ret
   11e3c:	05c01463          	bne	zero,t3,11e84 <pass>

00011e40 <fail>:
   11e40:	0ff00513          	li	a0,255

00011e44 <.delay_fail>:
   11e44:	fff50513          	addi	a0,a0,-1
   11e48:	fe051ee3          	bnez	a0,11e44 <.delay_fail>
   11e4c:	02000537          	lui	a0,0x2000
   11e50:	04500593          	li	a1,69
   11e54:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   11e58:	05200613          	li	a2,82
   11e5c:	00c52023          	sw	a2,0(a0)
   11e60:	00c52023          	sw	a2,0(a0)
   11e64:	04f00693          	li	a3,79
   11e68:	00d52023          	sw	a3,0(a0)
   11e6c:	00c52023          	sw	a2,0(a0)
   11e70:	00d00713          	li	a4,13
   11e74:	00e52023          	sw	a4,0(a0)
   11e78:	00a00793          	li	a5,10
   11e7c:	00f52023          	sw	a5,0(a0)
   11e80:	a50fe06f          	j	100d0 <sdram_ret>

00011e84 <pass>:
   11e84:	0ff00513          	li	a0,255

00011e88 <.delay_ok>:
   11e88:	fff50513          	addi	a0,a0,-1
   11e8c:	fe051ee3          	bnez	a0,11e88 <.delay_ok>
   11e90:	02000537          	lui	a0,0x2000
   11e94:	04f00593          	li	a1,79
   11e98:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   11e9c:	04b00613          	li	a2,75
   11ea0:	00c52023          	sw	a2,0(a0)
   11ea4:	00d00693          	li	a3,13
   11ea8:	00d52023          	sw	a3,0(a0)
   11eac:	00a00713          	li	a4,10
   11eb0:	00e52023          	sw	a4,0(a0)
   11eb4:	a1cfe06f          	j	100d0 <sdram_ret>

00011eb8 <sub>:
   11eb8:	0ff00513          	li	a0,255

00011ebc <.delay_pr>:
   11ebc:	fff50513          	addi	a0,a0,-1
   11ec0:	fe051ee3          	bnez	a0,11ebc <.delay_pr>
   11ec4:	00012537          	lui	a0,0x12
   11ec8:	ee450513          	addi	a0,a0,-284 # 11ee4 <.test_name>
   11ecc:	02000637          	lui	a2,0x2000

00011ed0 <.prname_next>:
   11ed0:	00050583          	lb	a1,0(a0)
   11ed4:	00058a63          	beqz	a1,11ee8 <.prname_done>
   11ed8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   11edc:	00150513          	addi	a0,a0,1
   11ee0:	ff1ff06f          	j	11ed0 <.prname_next>

00011ee4 <.test_name>:
   11ee4:	00627573          	csrrci	a0,0x6,4

00011ee8 <.prname_done>:
   11ee8:	02e00593          	li	a1,46
   11eec:	00b62023          	sw	a1,0(a2)
   11ef0:	00b62023          	sw	a1,0(a2)

00011ef4 <test_2>:
   11ef4:	00000093          	li	ra,0
   11ef8:	00000113          	li	sp,0
   11efc:	402081b3          	sub	gp,ra,sp
   11f00:	00000e93          	li	t4,0
   11f04:	00200e13          	li	t3,2
   11f08:	4bd19663          	bne	gp,t4,123b4 <fail>

00011f0c <test_3>:
   11f0c:	00100093          	li	ra,1
   11f10:	00100113          	li	sp,1
   11f14:	402081b3          	sub	gp,ra,sp
   11f18:	00000e93          	li	t4,0
   11f1c:	00300e13          	li	t3,3
   11f20:	49d19a63          	bne	gp,t4,123b4 <fail>

00011f24 <test_4>:
   11f24:	00300093          	li	ra,3
   11f28:	00700113          	li	sp,7
   11f2c:	402081b3          	sub	gp,ra,sp
   11f30:	ffc00e93          	li	t4,-4
   11f34:	00400e13          	li	t3,4
   11f38:	47d19e63          	bne	gp,t4,123b4 <fail>

00011f3c <test_5>:
   11f3c:	00000093          	li	ra,0
   11f40:	ffff8137          	lui	sp,0xffff8
   11f44:	402081b3          	sub	gp,ra,sp
   11f48:	00008eb7          	lui	t4,0x8
   11f4c:	00500e13          	li	t3,5
   11f50:	47d19263          	bne	gp,t4,123b4 <fail>

00011f54 <test_6>:
   11f54:	800000b7          	lui	ra,0x80000
   11f58:	00000113          	li	sp,0
   11f5c:	402081b3          	sub	gp,ra,sp
   11f60:	80000eb7          	lui	t4,0x80000
   11f64:	00600e13          	li	t3,6
   11f68:	45d19663          	bne	gp,t4,123b4 <fail>

00011f6c <test_7>:
   11f6c:	800000b7          	lui	ra,0x80000
   11f70:	ffff8137          	lui	sp,0xffff8
   11f74:	402081b3          	sub	gp,ra,sp
   11f78:	80008eb7          	lui	t4,0x80008
   11f7c:	00700e13          	li	t3,7
   11f80:	43d19a63          	bne	gp,t4,123b4 <fail>

00011f84 <test_8>:
   11f84:	00000093          	li	ra,0
   11f88:	00008137          	lui	sp,0x8
   11f8c:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11f90:	402081b3          	sub	gp,ra,sp
   11f94:	ffff8eb7          	lui	t4,0xffff8
   11f98:	001e8e93          	addi	t4,t4,1 # ffff8001 <_edata+0x7fff7f91>
   11f9c:	00800e13          	li	t3,8
   11fa0:	41d19a63          	bne	gp,t4,123b4 <fail>

00011fa4 <test_9>:
   11fa4:	800000b7          	lui	ra,0x80000
   11fa8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11fac:	00000113          	li	sp,0
   11fb0:	402081b3          	sub	gp,ra,sp
   11fb4:	80000eb7          	lui	t4,0x80000
   11fb8:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   11fbc:	00900e13          	li	t3,9
   11fc0:	3fd19a63          	bne	gp,t4,123b4 <fail>

00011fc4 <test_10>:
   11fc4:	800000b7          	lui	ra,0x80000
   11fc8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   11fcc:	00008137          	lui	sp,0x8
   11fd0:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11fd4:	402081b3          	sub	gp,ra,sp
   11fd8:	7fff8eb7          	lui	t4,0x7fff8
   11fdc:	00a00e13          	li	t3,10
   11fe0:	3dd19a63          	bne	gp,t4,123b4 <fail>

00011fe4 <test_11>:
   11fe4:	800000b7          	lui	ra,0x80000
   11fe8:	00008137          	lui	sp,0x8
   11fec:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   11ff0:	402081b3          	sub	gp,ra,sp
   11ff4:	7fff8eb7          	lui	t4,0x7fff8
   11ff8:	001e8e93          	addi	t4,t4,1 # 7fff8001 <_etext+0x7ffdd9c5>
   11ffc:	00b00e13          	li	t3,11
   12000:	3bd19a63          	bne	gp,t4,123b4 <fail>

00012004 <test_12>:
   12004:	800000b7          	lui	ra,0x80000
   12008:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1200c:	ffff8137          	lui	sp,0xffff8
   12010:	402081b3          	sub	gp,ra,sp
   12014:	80008eb7          	lui	t4,0x80008
   12018:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   1201c:	00c00e13          	li	t3,12
   12020:	39d19a63          	bne	gp,t4,123b4 <fail>

00012024 <test_13>:
   12024:	00000093          	li	ra,0
   12028:	fff00113          	li	sp,-1
   1202c:	402081b3          	sub	gp,ra,sp
   12030:	00100e93          	li	t4,1
   12034:	00d00e13          	li	t3,13
   12038:	37d19e63          	bne	gp,t4,123b4 <fail>

0001203c <test_14>:
   1203c:	fff00093          	li	ra,-1
   12040:	00100113          	li	sp,1
   12044:	402081b3          	sub	gp,ra,sp
   12048:	ffe00e93          	li	t4,-2
   1204c:	00e00e13          	li	t3,14
   12050:	37d19263          	bne	gp,t4,123b4 <fail>

00012054 <test_15>:
   12054:	fff00093          	li	ra,-1
   12058:	fff00113          	li	sp,-1
   1205c:	402081b3          	sub	gp,ra,sp
   12060:	00000e93          	li	t4,0
   12064:	00f00e13          	li	t3,15
   12068:	35d19663          	bne	gp,t4,123b4 <fail>

0001206c <test_16>:
   1206c:	00d00093          	li	ra,13
   12070:	00b00113          	li	sp,11
   12074:	402080b3          	sub	ra,ra,sp
   12078:	00200e93          	li	t4,2
   1207c:	01000e13          	li	t3,16
   12080:	33d09a63          	bne	ra,t4,123b4 <fail>

00012084 <test_17>:
   12084:	00e00093          	li	ra,14
   12088:	00b00113          	li	sp,11
   1208c:	40208133          	sub	sp,ra,sp
   12090:	00300e93          	li	t4,3
   12094:	01100e13          	li	t3,17
   12098:	31d11e63          	bne	sp,t4,123b4 <fail>

0001209c <test_18>:
   1209c:	00d00093          	li	ra,13
   120a0:	401080b3          	sub	ra,ra,ra
   120a4:	00000e93          	li	t4,0
   120a8:	01200e13          	li	t3,18
   120ac:	31d09463          	bne	ra,t4,123b4 <fail>

000120b0 <test_19>:
   120b0:	00000213          	li	tp,0
   120b4:	00d00093          	li	ra,13
   120b8:	00b00113          	li	sp,11
   120bc:	402081b3          	sub	gp,ra,sp
   120c0:	00018313          	mv	t1,gp
   120c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   120c8:	00200293          	li	t0,2
   120cc:	fe5214e3          	bne	tp,t0,120b4 <test_19+0x4>
   120d0:	00200e93          	li	t4,2
   120d4:	01300e13          	li	t3,19
   120d8:	2dd31e63          	bne	t1,t4,123b4 <fail>

000120dc <test_20>:
   120dc:	00000213          	li	tp,0
   120e0:	00e00093          	li	ra,14
   120e4:	00b00113          	li	sp,11
   120e8:	402081b3          	sub	gp,ra,sp
   120ec:	00000013          	nop
   120f0:	00018313          	mv	t1,gp
   120f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   120f8:	00200293          	li	t0,2
   120fc:	fe5212e3          	bne	tp,t0,120e0 <test_20+0x4>
   12100:	00300e93          	li	t4,3
   12104:	01400e13          	li	t3,20
   12108:	2bd31663          	bne	t1,t4,123b4 <fail>

0001210c <test_21>:
   1210c:	00000213          	li	tp,0
   12110:	00f00093          	li	ra,15
   12114:	00b00113          	li	sp,11
   12118:	402081b3          	sub	gp,ra,sp
   1211c:	00000013          	nop
   12120:	00000013          	nop
   12124:	00018313          	mv	t1,gp
   12128:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1212c:	00200293          	li	t0,2
   12130:	fe5210e3          	bne	tp,t0,12110 <test_21+0x4>
   12134:	00400e93          	li	t4,4
   12138:	01500e13          	li	t3,21
   1213c:	27d31c63          	bne	t1,t4,123b4 <fail>

00012140 <test_22>:
   12140:	00000213          	li	tp,0
   12144:	00d00093          	li	ra,13
   12148:	00b00113          	li	sp,11
   1214c:	402081b3          	sub	gp,ra,sp
   12150:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12154:	00200293          	li	t0,2
   12158:	fe5216e3          	bne	tp,t0,12144 <test_22+0x4>
   1215c:	00200e93          	li	t4,2
   12160:	01600e13          	li	t3,22
   12164:	25d19863          	bne	gp,t4,123b4 <fail>

00012168 <test_23>:
   12168:	00000213          	li	tp,0
   1216c:	00e00093          	li	ra,14
   12170:	00b00113          	li	sp,11
   12174:	00000013          	nop
   12178:	402081b3          	sub	gp,ra,sp
   1217c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12180:	00200293          	li	t0,2
   12184:	fe5214e3          	bne	tp,t0,1216c <test_23+0x4>
   12188:	00300e93          	li	t4,3
   1218c:	01700e13          	li	t3,23
   12190:	23d19263          	bne	gp,t4,123b4 <fail>

00012194 <test_24>:
   12194:	00000213          	li	tp,0
   12198:	00f00093          	li	ra,15
   1219c:	00b00113          	li	sp,11
   121a0:	00000013          	nop
   121a4:	00000013          	nop
   121a8:	402081b3          	sub	gp,ra,sp
   121ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121b0:	00200293          	li	t0,2
   121b4:	fe5212e3          	bne	tp,t0,12198 <test_24+0x4>
   121b8:	00400e93          	li	t4,4
   121bc:	01800e13          	li	t3,24
   121c0:	1fd19a63          	bne	gp,t4,123b4 <fail>

000121c4 <test_25>:
   121c4:	00000213          	li	tp,0
   121c8:	00d00093          	li	ra,13
   121cc:	00000013          	nop
   121d0:	00b00113          	li	sp,11
   121d4:	402081b3          	sub	gp,ra,sp
   121d8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   121dc:	00200293          	li	t0,2
   121e0:	fe5214e3          	bne	tp,t0,121c8 <test_25+0x4>
   121e4:	00200e93          	li	t4,2
   121e8:	01900e13          	li	t3,25
   121ec:	1dd19463          	bne	gp,t4,123b4 <fail>

000121f0 <test_26>:
   121f0:	00000213          	li	tp,0
   121f4:	00e00093          	li	ra,14
   121f8:	00000013          	nop
   121fc:	00b00113          	li	sp,11
   12200:	00000013          	nop
   12204:	402081b3          	sub	gp,ra,sp
   12208:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1220c:	00200293          	li	t0,2
   12210:	fe5212e3          	bne	tp,t0,121f4 <test_26+0x4>
   12214:	00300e93          	li	t4,3
   12218:	01a00e13          	li	t3,26
   1221c:	19d19c63          	bne	gp,t4,123b4 <fail>

00012220 <test_27>:
   12220:	00000213          	li	tp,0
   12224:	00f00093          	li	ra,15
   12228:	00000013          	nop
   1222c:	00000013          	nop
   12230:	00b00113          	li	sp,11
   12234:	402081b3          	sub	gp,ra,sp
   12238:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1223c:	00200293          	li	t0,2
   12240:	fe5212e3          	bne	tp,t0,12224 <test_27+0x4>
   12244:	00400e93          	li	t4,4
   12248:	01b00e13          	li	t3,27
   1224c:	17d19463          	bne	gp,t4,123b4 <fail>

00012250 <test_28>:
   12250:	00000213          	li	tp,0
   12254:	00b00113          	li	sp,11
   12258:	00d00093          	li	ra,13
   1225c:	402081b3          	sub	gp,ra,sp
   12260:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12264:	00200293          	li	t0,2
   12268:	fe5216e3          	bne	tp,t0,12254 <test_28+0x4>
   1226c:	00200e93          	li	t4,2
   12270:	01c00e13          	li	t3,28
   12274:	15d19063          	bne	gp,t4,123b4 <fail>

00012278 <test_29>:
   12278:	00000213          	li	tp,0
   1227c:	00b00113          	li	sp,11
   12280:	00e00093          	li	ra,14
   12284:	00000013          	nop
   12288:	402081b3          	sub	gp,ra,sp
   1228c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12290:	00200293          	li	t0,2
   12294:	fe5214e3          	bne	tp,t0,1227c <test_29+0x4>
   12298:	00300e93          	li	t4,3
   1229c:	01d00e13          	li	t3,29
   122a0:	11d19a63          	bne	gp,t4,123b4 <fail>

000122a4 <test_30>:
   122a4:	00000213          	li	tp,0
   122a8:	00b00113          	li	sp,11
   122ac:	00f00093          	li	ra,15
   122b0:	00000013          	nop
   122b4:	00000013          	nop
   122b8:	402081b3          	sub	gp,ra,sp
   122bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   122c0:	00200293          	li	t0,2
   122c4:	fe5212e3          	bne	tp,t0,122a8 <test_30+0x4>
   122c8:	00400e93          	li	t4,4
   122cc:	01e00e13          	li	t3,30
   122d0:	0fd19263          	bne	gp,t4,123b4 <fail>

000122d4 <test_31>:
   122d4:	00000213          	li	tp,0
   122d8:	00b00113          	li	sp,11
   122dc:	00000013          	nop
   122e0:	00d00093          	li	ra,13
   122e4:	402081b3          	sub	gp,ra,sp
   122e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   122ec:	00200293          	li	t0,2
   122f0:	fe5214e3          	bne	tp,t0,122d8 <test_31+0x4>
   122f4:	00200e93          	li	t4,2
   122f8:	01f00e13          	li	t3,31
   122fc:	0bd19c63          	bne	gp,t4,123b4 <fail>

00012300 <test_32>:
   12300:	00000213          	li	tp,0
   12304:	00b00113          	li	sp,11
   12308:	00000013          	nop
   1230c:	00e00093          	li	ra,14
   12310:	00000013          	nop
   12314:	402081b3          	sub	gp,ra,sp
   12318:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1231c:	00200293          	li	t0,2
   12320:	fe5212e3          	bne	tp,t0,12304 <test_32+0x4>
   12324:	00300e93          	li	t4,3
   12328:	02000e13          	li	t3,32
   1232c:	09d19463          	bne	gp,t4,123b4 <fail>

00012330 <test_33>:
   12330:	00000213          	li	tp,0
   12334:	00b00113          	li	sp,11
   12338:	00000013          	nop
   1233c:	00000013          	nop
   12340:	00f00093          	li	ra,15
   12344:	402081b3          	sub	gp,ra,sp
   12348:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1234c:	00200293          	li	t0,2
   12350:	fe5212e3          	bne	tp,t0,12334 <test_33+0x4>
   12354:	00400e93          	li	t4,4
   12358:	02100e13          	li	t3,33
   1235c:	05d19c63          	bne	gp,t4,123b4 <fail>

00012360 <test_34>:
   12360:	ff100093          	li	ra,-15
   12364:	40100133          	neg	sp,ra
   12368:	00f00e93          	li	t4,15
   1236c:	02200e13          	li	t3,34
   12370:	05d11263          	bne	sp,t4,123b4 <fail>

00012374 <test_35>:
   12374:	02000093          	li	ra,32
   12378:	40008133          	sub	sp,ra,zero
   1237c:	02000e93          	li	t4,32
   12380:	02300e13          	li	t3,35
   12384:	03d11863          	bne	sp,t4,123b4 <fail>

00012388 <test_36>:
   12388:	400000b3          	neg	ra,zero
   1238c:	00000e93          	li	t4,0
   12390:	02400e13          	li	t3,36
   12394:	03d09063          	bne	ra,t4,123b4 <fail>

00012398 <test_37>:
   12398:	01000093          	li	ra,16
   1239c:	01e00113          	li	sp,30
   123a0:	40208033          	sub	zero,ra,sp
   123a4:	00000e93          	li	t4,0
   123a8:	02500e13          	li	t3,37
   123ac:	01d01463          	bne	zero,t4,123b4 <fail>
   123b0:	05c01463          	bne	zero,t3,123f8 <pass>

000123b4 <fail>:
   123b4:	0ff00513          	li	a0,255

000123b8 <.delay_fail>:
   123b8:	fff50513          	addi	a0,a0,-1
   123bc:	fe051ee3          	bnez	a0,123b8 <.delay_fail>
   123c0:	02000537          	lui	a0,0x2000
   123c4:	04500593          	li	a1,69
   123c8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   123cc:	05200613          	li	a2,82
   123d0:	00c52023          	sw	a2,0(a0)
   123d4:	00c52023          	sw	a2,0(a0)
   123d8:	04f00693          	li	a3,79
   123dc:	00d52023          	sw	a3,0(a0)
   123e0:	00c52023          	sw	a2,0(a0)
   123e4:	00d00713          	li	a4,13
   123e8:	00e52023          	sw	a4,0(a0)
   123ec:	00a00793          	li	a5,10
   123f0:	00f52023          	sw	a5,0(a0)
   123f4:	d51fd06f          	j	10144 <sub_ret>

000123f8 <pass>:
   123f8:	0ff00513          	li	a0,255

000123fc <.delay_ok>:
   123fc:	fff50513          	addi	a0,a0,-1
   12400:	fe051ee3          	bnez	a0,123fc <.delay_ok>
   12404:	02000537          	lui	a0,0x2000
   12408:	04f00593          	li	a1,79
   1240c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   12410:	04b00613          	li	a2,75
   12414:	00c52023          	sw	a2,0(a0)
   12418:	00d00693          	li	a3,13
   1241c:	00d52023          	sw	a3,0(a0)
   12420:	00a00713          	li	a4,10
   12424:	00e52023          	sw	a4,0(a0)
   12428:	d1dfd06f          	j	10144 <sub_ret>

0001242c <mul>:
   1242c:	0ff00513          	li	a0,255

00012430 <.delay_pr>:
   12430:	fff50513          	addi	a0,a0,-1
   12434:	fe051ee3          	bnez	a0,12430 <.delay_pr>
   12438:	00012537          	lui	a0,0x12
   1243c:	45850513          	addi	a0,a0,1112 # 12458 <.test_name>
   12440:	02000637          	lui	a2,0x2000

00012444 <.prname_next>:
   12444:	00050583          	lb	a1,0(a0)
   12448:	00058a63          	beqz	a1,1245c <.prname_done>
   1244c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   12450:	00150513          	addi	a0,a0,1
   12454:	ff1ff06f          	j	12444 <.prname_next>

00012458 <.test_name>:
   12458:	756d                	lui	a0,0xffffb
   1245a:	006c                	addi	a1,sp,12

0001245c <.prname_done>:
   1245c:	02e00593          	li	a1,46
   12460:	00b62023          	sw	a1,0(a2)
   12464:	00b62023          	sw	a1,0(a2)

00012468 <test_32>:
   12468:	000080b7          	lui	ra,0x8
   1246c:	e0008093          	addi	ra,ra,-512 # 7e00 <_start-0x8200>
   12470:	b6db7137          	lui	sp,0xb6db7
   12474:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   12478:	022081b3          	mul	gp,ra,sp
   1247c:	00001eb7          	lui	t4,0x1
   12480:	200e8e93          	addi	t4,t4,512 # 1200 <_start-0xee00>
   12484:	02000e13          	li	t3,32
   12488:	4bd19463          	bne	gp,t4,12930 <fail>

0001248c <test_33>:
   1248c:	000080b7          	lui	ra,0x8
   12490:	fc008093          	addi	ra,ra,-64 # 7fc0 <_start-0x8040>
   12494:	b6db7137          	lui	sp,0xb6db7
   12498:	db710113          	addi	sp,sp,-585 # b6db6db7 <_edata+0x36db6d47>
   1249c:	022081b3          	mul	gp,ra,sp
   124a0:	00001eb7          	lui	t4,0x1
   124a4:	240e8e93          	addi	t4,t4,576 # 1240 <_start-0xedc0>
   124a8:	02100e13          	li	t3,33
   124ac:	49d19263          	bne	gp,t4,12930 <fail>

000124b0 <test_2>:
   124b0:	00000093          	li	ra,0
   124b4:	00000113          	li	sp,0
   124b8:	022081b3          	mul	gp,ra,sp
   124bc:	00000e93          	li	t4,0
   124c0:	00200e13          	li	t3,2
   124c4:	47d19663          	bne	gp,t4,12930 <fail>

000124c8 <test_3>:
   124c8:	00100093          	li	ra,1
   124cc:	00100113          	li	sp,1
   124d0:	022081b3          	mul	gp,ra,sp
   124d4:	00100e93          	li	t4,1
   124d8:	00300e13          	li	t3,3
   124dc:	45d19a63          	bne	gp,t4,12930 <fail>

000124e0 <test_4>:
   124e0:	00300093          	li	ra,3
   124e4:	00700113          	li	sp,7
   124e8:	022081b3          	mul	gp,ra,sp
   124ec:	01500e93          	li	t4,21
   124f0:	00400e13          	li	t3,4
   124f4:	43d19e63          	bne	gp,t4,12930 <fail>

000124f8 <test_5>:
   124f8:	00000093          	li	ra,0
   124fc:	ffff8137          	lui	sp,0xffff8
   12500:	022081b3          	mul	gp,ra,sp
   12504:	00000e93          	li	t4,0
   12508:	00500e13          	li	t3,5
   1250c:	43d19263          	bne	gp,t4,12930 <fail>

00012510 <test_6>:
   12510:	800000b7          	lui	ra,0x80000
   12514:	00000113          	li	sp,0
   12518:	022081b3          	mul	gp,ra,sp
   1251c:	00000e93          	li	t4,0
   12520:	00600e13          	li	t3,6
   12524:	41d19663          	bne	gp,t4,12930 <fail>

00012528 <test_7>:
   12528:	800000b7          	lui	ra,0x80000
   1252c:	ffff8137          	lui	sp,0xffff8
   12530:	022081b3          	mul	gp,ra,sp
   12534:	00000e93          	li	t4,0
   12538:	00700e13          	li	t3,7
   1253c:	3fd19a63          	bne	gp,t4,12930 <fail>

00012540 <test_30>:
   12540:	aaaab0b7          	lui	ra,0xaaaab
   12544:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   12548:	00030137          	lui	sp,0x30
   1254c:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15841>
   12550:	022081b3          	mul	gp,ra,sp
   12554:	00010eb7          	lui	t4,0x10
   12558:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   1255c:	01e00e13          	li	t3,30
   12560:	3dd19863          	bne	gp,t4,12930 <fail>

00012564 <test_31>:
   12564:	000300b7          	lui	ra,0x30
   12568:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15841>
   1256c:	aaaab137          	lui	sp,0xaaaab
   12570:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   12574:	022081b3          	mul	gp,ra,sp
   12578:	00010eb7          	lui	t4,0x10
   1257c:	f7fe8e93          	addi	t4,t4,-129 # ff7f <_start-0x81>
   12580:	01f00e13          	li	t3,31
   12584:	3bd19663          	bne	gp,t4,12930 <fail>

00012588 <test_34>:
   12588:	ff0000b7          	lui	ra,0xff000
   1258c:	ff000137          	lui	sp,0xff000
   12590:	022081b3          	mul	gp,ra,sp
   12594:	00000e93          	li	t4,0
   12598:	02200e13          	li	t3,34
   1259c:	39d19a63          	bne	gp,t4,12930 <fail>

000125a0 <test_35>:
   125a0:	fff00093          	li	ra,-1
   125a4:	fff00113          	li	sp,-1
   125a8:	022081b3          	mul	gp,ra,sp
   125ac:	00100e93          	li	t4,1
   125b0:	02300e13          	li	t3,35
   125b4:	37d19e63          	bne	gp,t4,12930 <fail>

000125b8 <test_36>:
   125b8:	fff00093          	li	ra,-1
   125bc:	00100113          	li	sp,1
   125c0:	022081b3          	mul	gp,ra,sp
   125c4:	fff00e93          	li	t4,-1
   125c8:	02400e13          	li	t3,36
   125cc:	37d19263          	bne	gp,t4,12930 <fail>

000125d0 <test_37>:
   125d0:	00100093          	li	ra,1
   125d4:	fff00113          	li	sp,-1
   125d8:	022081b3          	mul	gp,ra,sp
   125dc:	fff00e93          	li	t4,-1
   125e0:	02500e13          	li	t3,37
   125e4:	35d19663          	bne	gp,t4,12930 <fail>

000125e8 <test_8>:
   125e8:	00d00093          	li	ra,13
   125ec:	00b00113          	li	sp,11
   125f0:	022080b3          	mul	ra,ra,sp
   125f4:	08f00e93          	li	t4,143
   125f8:	00800e13          	li	t3,8
   125fc:	33d09a63          	bne	ra,t4,12930 <fail>

00012600 <test_9>:
   12600:	00e00093          	li	ra,14
   12604:	00b00113          	li	sp,11
   12608:	02208133          	mul	sp,ra,sp
   1260c:	09a00e93          	li	t4,154
   12610:	00900e13          	li	t3,9
   12614:	31d11e63          	bne	sp,t4,12930 <fail>

00012618 <test_10>:
   12618:	00d00093          	li	ra,13
   1261c:	021080b3          	mul	ra,ra,ra
   12620:	0a900e93          	li	t4,169
   12624:	00a00e13          	li	t3,10
   12628:	31d09463          	bne	ra,t4,12930 <fail>

0001262c <test_11>:
   1262c:	00000213          	li	tp,0
   12630:	00d00093          	li	ra,13
   12634:	00b00113          	li	sp,11
   12638:	022081b3          	mul	gp,ra,sp
   1263c:	00018313          	mv	t1,gp
   12640:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12644:	00200293          	li	t0,2
   12648:	fe5214e3          	bne	tp,t0,12630 <test_11+0x4>
   1264c:	08f00e93          	li	t4,143
   12650:	00b00e13          	li	t3,11
   12654:	2dd31e63          	bne	t1,t4,12930 <fail>

00012658 <test_12>:
   12658:	00000213          	li	tp,0
   1265c:	00e00093          	li	ra,14
   12660:	00b00113          	li	sp,11
   12664:	022081b3          	mul	gp,ra,sp
   12668:	00000013          	nop
   1266c:	00018313          	mv	t1,gp
   12670:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12674:	00200293          	li	t0,2
   12678:	fe5212e3          	bne	tp,t0,1265c <test_12+0x4>
   1267c:	09a00e93          	li	t4,154
   12680:	00c00e13          	li	t3,12
   12684:	2bd31663          	bne	t1,t4,12930 <fail>

00012688 <test_13>:
   12688:	00000213          	li	tp,0
   1268c:	00f00093          	li	ra,15
   12690:	00b00113          	li	sp,11
   12694:	022081b3          	mul	gp,ra,sp
   12698:	00000013          	nop
   1269c:	00000013          	nop
   126a0:	00018313          	mv	t1,gp
   126a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126a8:	00200293          	li	t0,2
   126ac:	fe5210e3          	bne	tp,t0,1268c <test_13+0x4>
   126b0:	0a500e93          	li	t4,165
   126b4:	00d00e13          	li	t3,13
   126b8:	27d31c63          	bne	t1,t4,12930 <fail>

000126bc <test_14>:
   126bc:	00000213          	li	tp,0
   126c0:	00d00093          	li	ra,13
   126c4:	00b00113          	li	sp,11
   126c8:	022081b3          	mul	gp,ra,sp
   126cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126d0:	00200293          	li	t0,2
   126d4:	fe5216e3          	bne	tp,t0,126c0 <test_14+0x4>
   126d8:	08f00e93          	li	t4,143
   126dc:	00e00e13          	li	t3,14
   126e0:	25d19863          	bne	gp,t4,12930 <fail>

000126e4 <test_15>:
   126e4:	00000213          	li	tp,0
   126e8:	00e00093          	li	ra,14
   126ec:	00b00113          	li	sp,11
   126f0:	00000013          	nop
   126f4:	022081b3          	mul	gp,ra,sp
   126f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   126fc:	00200293          	li	t0,2
   12700:	fe5214e3          	bne	tp,t0,126e8 <test_15+0x4>
   12704:	09a00e93          	li	t4,154
   12708:	00f00e13          	li	t3,15
   1270c:	23d19263          	bne	gp,t4,12930 <fail>

00012710 <test_16>:
   12710:	00000213          	li	tp,0
   12714:	00f00093          	li	ra,15
   12718:	00b00113          	li	sp,11
   1271c:	00000013          	nop
   12720:	00000013          	nop
   12724:	022081b3          	mul	gp,ra,sp
   12728:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1272c:	00200293          	li	t0,2
   12730:	fe5212e3          	bne	tp,t0,12714 <test_16+0x4>
   12734:	0a500e93          	li	t4,165
   12738:	01000e13          	li	t3,16
   1273c:	1fd19a63          	bne	gp,t4,12930 <fail>

00012740 <test_17>:
   12740:	00000213          	li	tp,0
   12744:	00d00093          	li	ra,13
   12748:	00000013          	nop
   1274c:	00b00113          	li	sp,11
   12750:	022081b3          	mul	gp,ra,sp
   12754:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12758:	00200293          	li	t0,2
   1275c:	fe5214e3          	bne	tp,t0,12744 <test_17+0x4>
   12760:	08f00e93          	li	t4,143
   12764:	01100e13          	li	t3,17
   12768:	1dd19463          	bne	gp,t4,12930 <fail>

0001276c <test_18>:
   1276c:	00000213          	li	tp,0
   12770:	00e00093          	li	ra,14
   12774:	00000013          	nop
   12778:	00b00113          	li	sp,11
   1277c:	00000013          	nop
   12780:	022081b3          	mul	gp,ra,sp
   12784:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12788:	00200293          	li	t0,2
   1278c:	fe5212e3          	bne	tp,t0,12770 <test_18+0x4>
   12790:	09a00e93          	li	t4,154
   12794:	01200e13          	li	t3,18
   12798:	19d19c63          	bne	gp,t4,12930 <fail>

0001279c <test_19>:
   1279c:	00000213          	li	tp,0
   127a0:	00f00093          	li	ra,15
   127a4:	00000013          	nop
   127a8:	00000013          	nop
   127ac:	00b00113          	li	sp,11
   127b0:	022081b3          	mul	gp,ra,sp
   127b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   127b8:	00200293          	li	t0,2
   127bc:	fe5212e3          	bne	tp,t0,127a0 <test_19+0x4>
   127c0:	0a500e93          	li	t4,165
   127c4:	01300e13          	li	t3,19
   127c8:	17d19463          	bne	gp,t4,12930 <fail>

000127cc <test_20>:
   127cc:	00000213          	li	tp,0
   127d0:	00b00113          	li	sp,11
   127d4:	00d00093          	li	ra,13
   127d8:	022081b3          	mul	gp,ra,sp
   127dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   127e0:	00200293          	li	t0,2
   127e4:	fe5216e3          	bne	tp,t0,127d0 <test_20+0x4>
   127e8:	08f00e93          	li	t4,143
   127ec:	01400e13          	li	t3,20
   127f0:	15d19063          	bne	gp,t4,12930 <fail>

000127f4 <test_21>:
   127f4:	00000213          	li	tp,0
   127f8:	00b00113          	li	sp,11
   127fc:	00e00093          	li	ra,14
   12800:	00000013          	nop
   12804:	022081b3          	mul	gp,ra,sp
   12808:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1280c:	00200293          	li	t0,2
   12810:	fe5214e3          	bne	tp,t0,127f8 <test_21+0x4>
   12814:	09a00e93          	li	t4,154
   12818:	01500e13          	li	t3,21
   1281c:	11d19a63          	bne	gp,t4,12930 <fail>

00012820 <test_22>:
   12820:	00000213          	li	tp,0
   12824:	00b00113          	li	sp,11
   12828:	00f00093          	li	ra,15
   1282c:	00000013          	nop
   12830:	00000013          	nop
   12834:	022081b3          	mul	gp,ra,sp
   12838:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1283c:	00200293          	li	t0,2
   12840:	fe5212e3          	bne	tp,t0,12824 <test_22+0x4>
   12844:	0a500e93          	li	t4,165
   12848:	01600e13          	li	t3,22
   1284c:	0fd19263          	bne	gp,t4,12930 <fail>

00012850 <test_23>:
   12850:	00000213          	li	tp,0
   12854:	00b00113          	li	sp,11
   12858:	00000013          	nop
   1285c:	00d00093          	li	ra,13
   12860:	022081b3          	mul	gp,ra,sp
   12864:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12868:	00200293          	li	t0,2
   1286c:	fe5214e3          	bne	tp,t0,12854 <test_23+0x4>
   12870:	08f00e93          	li	t4,143
   12874:	01700e13          	li	t3,23
   12878:	0bd19c63          	bne	gp,t4,12930 <fail>

0001287c <test_24>:
   1287c:	00000213          	li	tp,0
   12880:	00b00113          	li	sp,11
   12884:	00000013          	nop
   12888:	00e00093          	li	ra,14
   1288c:	00000013          	nop
   12890:	022081b3          	mul	gp,ra,sp
   12894:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12898:	00200293          	li	t0,2
   1289c:	fe5212e3          	bne	tp,t0,12880 <test_24+0x4>
   128a0:	09a00e93          	li	t4,154
   128a4:	01800e13          	li	t3,24
   128a8:	09d19463          	bne	gp,t4,12930 <fail>

000128ac <test_25>:
   128ac:	00000213          	li	tp,0
   128b0:	00b00113          	li	sp,11
   128b4:	00000013          	nop
   128b8:	00000013          	nop
   128bc:	00f00093          	li	ra,15
   128c0:	022081b3          	mul	gp,ra,sp
   128c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   128c8:	00200293          	li	t0,2
   128cc:	fe5212e3          	bne	tp,t0,128b0 <test_25+0x4>
   128d0:	0a500e93          	li	t4,165
   128d4:	01900e13          	li	t3,25
   128d8:	05d19c63          	bne	gp,t4,12930 <fail>

000128dc <test_26>:
   128dc:	01f00093          	li	ra,31
   128e0:	02100133          	mul	sp,zero,ra
   128e4:	00000e93          	li	t4,0
   128e8:	01a00e13          	li	t3,26
   128ec:	05d11263          	bne	sp,t4,12930 <fail>

000128f0 <test_27>:
   128f0:	02000093          	li	ra,32
   128f4:	02008133          	mul	sp,ra,zero
   128f8:	00000e93          	li	t4,0
   128fc:	01b00e13          	li	t3,27
   12900:	03d11863          	bne	sp,t4,12930 <fail>

00012904 <test_28>:
   12904:	020000b3          	mul	ra,zero,zero
   12908:	00000e93          	li	t4,0
   1290c:	01c00e13          	li	t3,28
   12910:	03d09063          	bne	ra,t4,12930 <fail>

00012914 <test_29>:
   12914:	02100093          	li	ra,33
   12918:	02200113          	li	sp,34
   1291c:	02208033          	mul	zero,ra,sp
   12920:	00000e93          	li	t4,0
   12924:	01d00e13          	li	t3,29
   12928:	01d01463          	bne	zero,t4,12930 <fail>
   1292c:	05c01463          	bne	zero,t3,12974 <pass>

00012930 <fail>:
   12930:	0ff00513          	li	a0,255

00012934 <.delay_fail>:
   12934:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   12938:	fe051ee3          	bnez	a0,12934 <.delay_fail>
   1293c:	02000537          	lui	a0,0x2000
   12940:	04500593          	li	a1,69
   12944:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   12948:	05200613          	li	a2,82
   1294c:	00c52023          	sw	a2,0(a0)
   12950:	00c52023          	sw	a2,0(a0)
   12954:	04f00693          	li	a3,79
   12958:	00d52023          	sw	a3,0(a0)
   1295c:	00c52023          	sw	a2,0(a0)
   12960:	00d00713          	li	a4,13
   12964:	00e52023          	sw	a4,0(a0)
   12968:	00a00793          	li	a5,10
   1296c:	00f52023          	sw	a5,0(a0)
   12970:	801fd06f          	j	10170 <mul_ret>

00012974 <pass>:
   12974:	0ff00513          	li	a0,255

00012978 <.delay_ok>:
   12978:	fff50513          	addi	a0,a0,-1
   1297c:	fe051ee3          	bnez	a0,12978 <.delay_ok>
   12980:	02000537          	lui	a0,0x2000
   12984:	04f00593          	li	a1,79
   12988:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1298c:	04b00613          	li	a2,75
   12990:	00c52023          	sw	a2,0(a0)
   12994:	00d00693          	li	a3,13
   12998:	00d52023          	sw	a3,0(a0)
   1299c:	00a00713          	li	a4,10
   129a0:	00e52023          	sw	a4,0(a0)
   129a4:	fccfd06f          	j	10170 <mul_ret>

000129a8 <sw>:
   129a8:	0ff00513          	li	a0,255

000129ac <.delay_pr>:
   129ac:	fff50513          	addi	a0,a0,-1
   129b0:	fe051ee3          	bnez	a0,129ac <.delay_pr>
   129b4:	00013537          	lui	a0,0x13
   129b8:	9d450513          	addi	a0,a0,-1580 # 129d4 <.test_name>
   129bc:	02000637          	lui	a2,0x2000

000129c0 <.prname_next>:
   129c0:	00050583          	lb	a1,0(a0)
   129c4:	00058a63          	beqz	a1,129d8 <.prname_done>
   129c8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   129cc:	00150513          	addi	a0,a0,1
   129d0:	ff1ff06f          	j	129c0 <.prname_next>

000129d4 <.test_name>:
   129d4:	00007773          	csrrci	a4,ustatus,0

000129d8 <.prname_done>:
   129d8:	02e00593          	li	a1,46
   129dc:	00b62023          	sw	a1,0(a2)
   129e0:	00b62023          	sw	a1,0(a2)

000129e4 <test_2>:
   129e4:	7ffed097          	auipc	ra,0x7ffed
   129e8:	62408093          	addi	ra,ra,1572 # 80000008 <tdat>
   129ec:	00aa0137          	lui	sp,0xaa0
   129f0:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85a6e>
   129f4:	0020a023          	sw	sp,0(ra)
   129f8:	0000a183          	lw	gp,0(ra)
   129fc:	00aa0eb7          	lui	t4,0xaa0
   12a00:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85a6e>
   12a04:	00200e13          	li	t3,2
   12a08:	47d19063          	bne	gp,t4,12e68 <fail>

00012a0c <test_3>:
   12a0c:	7ffed097          	auipc	ra,0x7ffed
   12a10:	5fc08093          	addi	ra,ra,1532 # 80000008 <tdat>
   12a14:	aa00b137          	lui	sp,0xaa00b
   12a18:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   12a1c:	0020a223          	sw	sp,4(ra)
   12a20:	0040a183          	lw	gp,4(ra)
   12a24:	aa00beb7          	lui	t4,0xaa00b
   12a28:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   12a2c:	00300e13          	li	t3,3
   12a30:	43d19c63          	bne	gp,t4,12e68 <fail>

00012a34 <test_4>:
   12a34:	7ffed097          	auipc	ra,0x7ffed
   12a38:	5d408093          	addi	ra,ra,1492 # 80000008 <tdat>
   12a3c:	0aa01137          	lui	sp,0xaa01
   12a40:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e6464>
   12a44:	0020a423          	sw	sp,8(ra)
   12a48:	0080a183          	lw	gp,8(ra)
   12a4c:	0aa01eb7          	lui	t4,0xaa01
   12a50:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e6464>
   12a54:	00400e13          	li	t3,4
   12a58:	41d19863          	bne	gp,t4,12e68 <fail>

00012a5c <test_5>:
   12a5c:	7ffed097          	auipc	ra,0x7ffed
   12a60:	5ac08093          	addi	ra,ra,1452 # 80000008 <tdat>
   12a64:	a00aa137          	lui	sp,0xa00aa
   12a68:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   12a6c:	0020a623          	sw	sp,12(ra)
   12a70:	00c0a183          	lw	gp,12(ra)
   12a74:	a00aaeb7          	lui	t4,0xa00aa
   12a78:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   12a7c:	00500e13          	li	t3,5
   12a80:	3fd19463          	bne	gp,t4,12e68 <fail>

00012a84 <test_6>:
   12a84:	7ffed097          	auipc	ra,0x7ffed
   12a88:	5a008093          	addi	ra,ra,1440 # 80000024 <tdat8>
   12a8c:	00aa0137          	lui	sp,0xaa0
   12a90:	0aa10113          	addi	sp,sp,170 # aa00aa <_etext+0xa85a6e>
   12a94:	fe20aa23          	sw	sp,-12(ra)
   12a98:	ff40a183          	lw	gp,-12(ra)
   12a9c:	00aa0eb7          	lui	t4,0xaa0
   12aa0:	0aae8e93          	addi	t4,t4,170 # aa00aa <_etext+0xa85a6e>
   12aa4:	00600e13          	li	t3,6
   12aa8:	3dd19063          	bne	gp,t4,12e68 <fail>

00012aac <test_7>:
   12aac:	7ffed097          	auipc	ra,0x7ffed
   12ab0:	57808093          	addi	ra,ra,1400 # 80000024 <tdat8>
   12ab4:	aa00b137          	lui	sp,0xaa00b
   12ab8:	a0010113          	addi	sp,sp,-1536 # aa00aa00 <_edata+0x2a00a990>
   12abc:	fe20ac23          	sw	sp,-8(ra)
   12ac0:	ff80a183          	lw	gp,-8(ra)
   12ac4:	aa00beb7          	lui	t4,0xaa00b
   12ac8:	a00e8e93          	addi	t4,t4,-1536 # aa00aa00 <_edata+0x2a00a990>
   12acc:	00700e13          	li	t3,7
   12ad0:	39d19c63          	bne	gp,t4,12e68 <fail>

00012ad4 <test_8>:
   12ad4:	7ffed097          	auipc	ra,0x7ffed
   12ad8:	55008093          	addi	ra,ra,1360 # 80000024 <tdat8>
   12adc:	0aa01137          	lui	sp,0xaa01
   12ae0:	aa010113          	addi	sp,sp,-1376 # aa00aa0 <_etext+0xa9e6464>
   12ae4:	fe20ae23          	sw	sp,-4(ra)
   12ae8:	ffc0a183          	lw	gp,-4(ra)
   12aec:	0aa01eb7          	lui	t4,0xaa01
   12af0:	aa0e8e93          	addi	t4,t4,-1376 # aa00aa0 <_etext+0xa9e6464>
   12af4:	00800e13          	li	t3,8
   12af8:	37d19863          	bne	gp,t4,12e68 <fail>

00012afc <test_9>:
   12afc:	7ffed097          	auipc	ra,0x7ffed
   12b00:	52808093          	addi	ra,ra,1320 # 80000024 <tdat8>
   12b04:	a00aa137          	lui	sp,0xa00aa
   12b08:	00a10113          	addi	sp,sp,10 # a00aa00a <_edata+0x200a9f9a>
   12b0c:	0020a023          	sw	sp,0(ra)
   12b10:	0000a183          	lw	gp,0(ra)
   12b14:	a00aaeb7          	lui	t4,0xa00aa
   12b18:	00ae8e93          	addi	t4,t4,10 # a00aa00a <_edata+0x200a9f9a>
   12b1c:	00900e13          	li	t3,9
   12b20:	35d19463          	bne	gp,t4,12e68 <fail>

00012b24 <test_10>:
   12b24:	7ffed097          	auipc	ra,0x7ffed
   12b28:	50408093          	addi	ra,ra,1284 # 80000028 <tdat9>
   12b2c:	12345137          	lui	sp,0x12345
   12b30:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b03c>
   12b34:	fe008213          	addi	tp,ra,-32
   12b38:	02222023          	sw	sp,32(tp) # 20 <_start-0xffe0>
   12b3c:	0000a183          	lw	gp,0(ra)
   12b40:	12345eb7          	lui	t4,0x12345
   12b44:	678e8e93          	addi	t4,t4,1656 # 12345678 <_etext+0x1232b03c>
   12b48:	00a00e13          	li	t3,10
   12b4c:	31d19e63          	bne	gp,t4,12e68 <fail>

00012b50 <test_11>:
   12b50:	7ffed097          	auipc	ra,0x7ffed
   12b54:	4d808093          	addi	ra,ra,1240 # 80000028 <tdat9>
   12b58:	58213137          	lui	sp,0x58213
   12b5c:	09810113          	addi	sp,sp,152 # 58213098 <_etext+0x581f8a5c>
   12b60:	ffd08093          	addi	ra,ra,-3
   12b64:	0020a3a3          	sw	sp,7(ra)
   12b68:	7ffed217          	auipc	tp,0x7ffed
   12b6c:	4c420213          	addi	tp,tp,1220 # 8000002c <tdat10>
   12b70:	00022183          	lw	gp,0(tp) # 0 <_start-0x10000>
   12b74:	58213eb7          	lui	t4,0x58213
   12b78:	098e8e93          	addi	t4,t4,152 # 58213098 <_etext+0x581f8a5c>
   12b7c:	00b00e13          	li	t3,11
   12b80:	2fd19463          	bne	gp,t4,12e68 <fail>

00012b84 <test_12>:
   12b84:	00c00e13          	li	t3,12
   12b88:	00000213          	li	tp,0
   12b8c:	aabbd0b7          	lui	ra,0xaabbd
   12b90:	cdd08093          	addi	ra,ra,-803 # aabbccdd <_edata+0x2abbcc6d>
   12b94:	7ffed117          	auipc	sp,0x7ffed
   12b98:	47410113          	addi	sp,sp,1140 # 80000008 <tdat>
   12b9c:	00112023          	sw	ra,0(sp)
   12ba0:	00012183          	lw	gp,0(sp)
   12ba4:	aabbdeb7          	lui	t4,0xaabbd
   12ba8:	cdde8e93          	addi	t4,t4,-803 # aabbccdd <_edata+0x2abbcc6d>
   12bac:	2bd19e63          	bne	gp,t4,12e68 <fail>
   12bb0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12bb4:	00200293          	li	t0,2
   12bb8:	fc521ae3          	bne	tp,t0,12b8c <test_12+0x8>

00012bbc <test_13>:
   12bbc:	00d00e13          	li	t3,13
   12bc0:	00000213          	li	tp,0
   12bc4:	daabc0b7          	lui	ra,0xdaabc
   12bc8:	ccd08093          	addi	ra,ra,-819 # daabbccd <_edata+0x5aabbc5d>
   12bcc:	7ffed117          	auipc	sp,0x7ffed
   12bd0:	43c10113          	addi	sp,sp,1084 # 80000008 <tdat>
   12bd4:	00000013          	nop
   12bd8:	00112223          	sw	ra,4(sp)
   12bdc:	00412183          	lw	gp,4(sp)
   12be0:	daabceb7          	lui	t4,0xdaabc
   12be4:	ccde8e93          	addi	t4,t4,-819 # daabbccd <_edata+0x5aabbc5d>
   12be8:	29d19063          	bne	gp,t4,12e68 <fail>
   12bec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12bf0:	00200293          	li	t0,2
   12bf4:	fc5218e3          	bne	tp,t0,12bc4 <test_13+0x8>

00012bf8 <test_14>:
   12bf8:	00e00e13          	li	t3,14
   12bfc:	00000213          	li	tp,0
   12c00:	ddaac0b7          	lui	ra,0xddaac
   12c04:	bcc08093          	addi	ra,ra,-1076 # ddaabbcc <_edata+0x5daabb5c>
   12c08:	7ffed117          	auipc	sp,0x7ffed
   12c0c:	40010113          	addi	sp,sp,1024 # 80000008 <tdat>
   12c10:	00000013          	nop
   12c14:	00000013          	nop
   12c18:	00112423          	sw	ra,8(sp)
   12c1c:	00812183          	lw	gp,8(sp)
   12c20:	ddaaceb7          	lui	t4,0xddaac
   12c24:	bcce8e93          	addi	t4,t4,-1076 # ddaabbcc <_edata+0x5daabb5c>
   12c28:	25d19063          	bne	gp,t4,12e68 <fail>
   12c2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12c30:	00200293          	li	t0,2
   12c34:	fc5216e3          	bne	tp,t0,12c00 <test_14+0x8>

00012c38 <test_15>:
   12c38:	00f00e13          	li	t3,15
   12c3c:	00000213          	li	tp,0
   12c40:	cddab0b7          	lui	ra,0xcddab
   12c44:	bbc08093          	addi	ra,ra,-1092 # cddaabbc <_edata+0x4ddaab4c>
   12c48:	00000013          	nop
   12c4c:	7ffed117          	auipc	sp,0x7ffed
   12c50:	3bc10113          	addi	sp,sp,956 # 80000008 <tdat>
   12c54:	00112623          	sw	ra,12(sp)
   12c58:	00c12183          	lw	gp,12(sp)
   12c5c:	cddabeb7          	lui	t4,0xcddab
   12c60:	bbce8e93          	addi	t4,t4,-1092 # cddaabbc <_edata+0x4ddaab4c>
   12c64:	21d19263          	bne	gp,t4,12e68 <fail>
   12c68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12c6c:	00200293          	li	t0,2
   12c70:	fc5218e3          	bne	tp,t0,12c40 <test_15+0x8>

00012c74 <test_16>:
   12c74:	01000e13          	li	t3,16
   12c78:	00000213          	li	tp,0
   12c7c:	ccddb0b7          	lui	ra,0xccddb
   12c80:	abb08093          	addi	ra,ra,-1349 # ccddaabb <_edata+0x4cddaa4b>
   12c84:	00000013          	nop
   12c88:	7ffed117          	auipc	sp,0x7ffed
   12c8c:	38010113          	addi	sp,sp,896 # 80000008 <tdat>
   12c90:	00000013          	nop
   12c94:	00112823          	sw	ra,16(sp)
   12c98:	01012183          	lw	gp,16(sp)
   12c9c:	ccddbeb7          	lui	t4,0xccddb
   12ca0:	abbe8e93          	addi	t4,t4,-1349 # ccddaabb <_edata+0x4cddaa4b>
   12ca4:	1dd19263          	bne	gp,t4,12e68 <fail>
   12ca8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12cac:	00200293          	li	t0,2
   12cb0:	fc5216e3          	bne	tp,t0,12c7c <test_16+0x8>

00012cb4 <test_17>:
   12cb4:	01100e13          	li	t3,17
   12cb8:	00000213          	li	tp,0
   12cbc:	bccde0b7          	lui	ra,0xbccde
   12cc0:	aab08093          	addi	ra,ra,-1365 # bccddaab <_edata+0x3ccdda3b>
   12cc4:	00000013          	nop
   12cc8:	00000013          	nop
   12ccc:	7ffed117          	auipc	sp,0x7ffed
   12cd0:	33c10113          	addi	sp,sp,828 # 80000008 <tdat>
   12cd4:	00112a23          	sw	ra,20(sp)
   12cd8:	01412183          	lw	gp,20(sp)
   12cdc:	bccdeeb7          	lui	t4,0xbccde
   12ce0:	aabe8e93          	addi	t4,t4,-1365 # bccddaab <_edata+0x3ccdda3b>
   12ce4:	19d19263          	bne	gp,t4,12e68 <fail>
   12ce8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12cec:	00200293          	li	t0,2
   12cf0:	fc5216e3          	bne	tp,t0,12cbc <test_17+0x8>

00012cf4 <test_18>:
   12cf4:	01200e13          	li	t3,18
   12cf8:	00000213          	li	tp,0
   12cfc:	7ffed117          	auipc	sp,0x7ffed
   12d00:	30c10113          	addi	sp,sp,780 # 80000008 <tdat>
   12d04:	001120b7          	lui	ra,0x112
   12d08:	23308093          	addi	ra,ra,563 # 112233 <_etext+0xf7bf7>
   12d0c:	00112023          	sw	ra,0(sp)
   12d10:	00012183          	lw	gp,0(sp)
   12d14:	00112eb7          	lui	t4,0x112
   12d18:	233e8e93          	addi	t4,t4,563 # 112233 <_etext+0xf7bf7>
   12d1c:	15d19663          	bne	gp,t4,12e68 <fail>
   12d20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d24:	00200293          	li	t0,2
   12d28:	fc521ae3          	bne	tp,t0,12cfc <test_18+0x8>

00012d2c <test_19>:
   12d2c:	01300e13          	li	t3,19
   12d30:	00000213          	li	tp,0
   12d34:	7ffed117          	auipc	sp,0x7ffed
   12d38:	2d410113          	addi	sp,sp,724 # 80000008 <tdat>
   12d3c:	300110b7          	lui	ra,0x30011
   12d40:	22308093          	addi	ra,ra,547 # 30011223 <_etext+0x2fff6be7>
   12d44:	00000013          	nop
   12d48:	00112223          	sw	ra,4(sp)
   12d4c:	00412183          	lw	gp,4(sp)
   12d50:	30011eb7          	lui	t4,0x30011
   12d54:	223e8e93          	addi	t4,t4,547 # 30011223 <_etext+0x2fff6be7>
   12d58:	11d19863          	bne	gp,t4,12e68 <fail>
   12d5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12d60:	00200293          	li	t0,2
   12d64:	fc5218e3          	bne	tp,t0,12d34 <test_19+0x8>

00012d68 <test_20>:
   12d68:	01400e13          	li	t3,20
   12d6c:	00000213          	li	tp,0
   12d70:	7ffed117          	auipc	sp,0x7ffed
   12d74:	29810113          	addi	sp,sp,664 # 80000008 <tdat>
   12d78:	330010b7          	lui	ra,0x33001
   12d7c:	12208093          	addi	ra,ra,290 # 33001122 <_etext+0x32fe6ae6>
   12d80:	00000013          	nop
   12d84:	00000013          	nop
   12d88:	00112423          	sw	ra,8(sp)
   12d8c:	00812183          	lw	gp,8(sp)
   12d90:	33001eb7          	lui	t4,0x33001
   12d94:	122e8e93          	addi	t4,t4,290 # 33001122 <_etext+0x32fe6ae6>
   12d98:	0dd19863          	bne	gp,t4,12e68 <fail>
   12d9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12da0:	00200293          	li	t0,2
   12da4:	fc5216e3          	bne	tp,t0,12d70 <test_20+0x8>

00012da8 <test_21>:
   12da8:	01500e13          	li	t3,21
   12dac:	00000213          	li	tp,0
   12db0:	7ffed117          	auipc	sp,0x7ffed
   12db4:	25810113          	addi	sp,sp,600 # 80000008 <tdat>
   12db8:	00000013          	nop
   12dbc:	233000b7          	lui	ra,0x23300
   12dc0:	11208093          	addi	ra,ra,274 # 23300112 <_etext+0x232e5ad6>
   12dc4:	00112623          	sw	ra,12(sp)
   12dc8:	00c12183          	lw	gp,12(sp)
   12dcc:	23300eb7          	lui	t4,0x23300
   12dd0:	112e8e93          	addi	t4,t4,274 # 23300112 <_etext+0x232e5ad6>
   12dd4:	09d19a63          	bne	gp,t4,12e68 <fail>
   12dd8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12ddc:	00200293          	li	t0,2
   12de0:	fc5218e3          	bne	tp,t0,12db0 <test_21+0x8>

00012de4 <test_22>:
   12de4:	01600e13          	li	t3,22
   12de8:	00000213          	li	tp,0
   12dec:	7ffed117          	auipc	sp,0x7ffed
   12df0:	21c10113          	addi	sp,sp,540 # 80000008 <tdat>
   12df4:	00000013          	nop
   12df8:	223300b7          	lui	ra,0x22330
   12dfc:	01108093          	addi	ra,ra,17 # 22330011 <_etext+0x223159d5>
   12e00:	00000013          	nop
   12e04:	00112823          	sw	ra,16(sp)
   12e08:	01012183          	lw	gp,16(sp)
   12e0c:	22330eb7          	lui	t4,0x22330
   12e10:	011e8e93          	addi	t4,t4,17 # 22330011 <_etext+0x223159d5>
   12e14:	05d19a63          	bne	gp,t4,12e68 <fail>
   12e18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e1c:	00200293          	li	t0,2
   12e20:	fc5216e3          	bne	tp,t0,12dec <test_22+0x8>

00012e24 <test_23>:
   12e24:	01700e13          	li	t3,23
   12e28:	00000213          	li	tp,0
   12e2c:	7ffed117          	auipc	sp,0x7ffed
   12e30:	1dc10113          	addi	sp,sp,476 # 80000008 <tdat>
   12e34:	00000013          	nop
   12e38:	00000013          	nop
   12e3c:	122330b7          	lui	ra,0x12233
   12e40:	00108093          	addi	ra,ra,1 # 12233001 <_etext+0x122189c5>
   12e44:	00112a23          	sw	ra,20(sp)
   12e48:	01412183          	lw	gp,20(sp)
   12e4c:	12233eb7          	lui	t4,0x12233
   12e50:	001e8e93          	addi	t4,t4,1 # 12233001 <_etext+0x122189c5>
   12e54:	01d19a63          	bne	gp,t4,12e68 <fail>
   12e58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   12e5c:	00200293          	li	t0,2
   12e60:	fc5216e3          	bne	tp,t0,12e2c <test_23+0x8>
   12e64:	05c01463          	bne	zero,t3,12eac <pass>

00012e68 <fail>:
   12e68:	0ff00513          	li	a0,255

00012e6c <.delay_fail>:
   12e6c:	fff50513          	addi	a0,a0,-1
   12e70:	fe051ee3          	bnez	a0,12e6c <.delay_fail>
   12e74:	02000537          	lui	a0,0x2000
   12e78:	04500593          	li	a1,69
   12e7c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   12e80:	05200613          	li	a2,82
   12e84:	00c52023          	sw	a2,0(a0)
   12e88:	00c52023          	sw	a2,0(a0)
   12e8c:	04f00693          	li	a3,79
   12e90:	00d52023          	sw	a3,0(a0)
   12e94:	00c52023          	sw	a2,0(a0)
   12e98:	00d00713          	li	a4,13
   12e9c:	00e52023          	sw	a4,0(a0)
   12ea0:	00a00793          	li	a5,10
   12ea4:	00f52023          	sw	a5,0(a0)
   12ea8:	a74fd06f          	j	1011c <sw_ret>

00012eac <pass>:
   12eac:	0ff00513          	li	a0,255

00012eb0 <.delay_ok>:
   12eb0:	fff50513          	addi	a0,a0,-1
   12eb4:	fe051ee3          	bnez	a0,12eb0 <.delay_ok>
   12eb8:	02000537          	lui	a0,0x2000
   12ebc:	04f00593          	li	a1,79
   12ec0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   12ec4:	04b00613          	li	a2,75
   12ec8:	00c52023          	sw	a2,0(a0)
   12ecc:	00d00693          	li	a3,13
   12ed0:	00d52023          	sw	a3,0(a0)
   12ed4:	00a00713          	li	a4,10
   12ed8:	00e52023          	sw	a4,0(a0)
   12edc:	a40fd06f          	j	1011c <sw_ret>

00012ee0 <beq>:
   12ee0:	0ff00513          	li	a0,255

00012ee4 <.delay_pr>:
   12ee4:	fff50513          	addi	a0,a0,-1
   12ee8:	fe051ee3          	bnez	a0,12ee4 <.delay_pr>
   12eec:	00013537          	lui	a0,0x13
   12ef0:	f0c50513          	addi	a0,a0,-244 # 12f0c <.test_name>
   12ef4:	02000637          	lui	a2,0x2000

00012ef8 <.prname_next>:
   12ef8:	00050583          	lb	a1,0(a0)
   12efc:	00058a63          	beqz	a1,12f10 <.prname_done>
   12f00:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   12f04:	00150513          	addi	a0,a0,1
   12f08:	ff1ff06f          	j	12ef8 <.prname_next>

00012f0c <.test_name>:
   12f0c:	6562                	flw	fa0,24(sp)
   12f0e:	0071                	c.nop	28

00012f10 <.prname_done>:
   12f10:	02e00593          	li	a1,46
   12f14:	00b62023          	sw	a1,0(a2)
   12f18:	00b62023          	sw	a1,0(a2)

00012f1c <test_2>:
   12f1c:	00200e13          	li	t3,2
   12f20:	00000093          	li	ra,0
   12f24:	00000113          	li	sp,0
   12f28:	00208663          	beq	ra,sp,12f34 <test_2+0x18>
   12f2c:	2bc01863          	bne	zero,t3,131dc <fail>
   12f30:	01c01663          	bne	zero,t3,12f3c <test_3>
   12f34:	fe208ee3          	beq	ra,sp,12f30 <test_2+0x14>
   12f38:	2bc01263          	bne	zero,t3,131dc <fail>

00012f3c <test_3>:
   12f3c:	00300e13          	li	t3,3
   12f40:	00100093          	li	ra,1
   12f44:	00100113          	li	sp,1
   12f48:	00208663          	beq	ra,sp,12f54 <test_3+0x18>
   12f4c:	29c01863          	bne	zero,t3,131dc <fail>
   12f50:	01c01663          	bne	zero,t3,12f5c <test_4>
   12f54:	fe208ee3          	beq	ra,sp,12f50 <test_3+0x14>
   12f58:	29c01263          	bne	zero,t3,131dc <fail>

00012f5c <test_4>:
   12f5c:	00400e13          	li	t3,4
   12f60:	fff00093          	li	ra,-1
   12f64:	fff00113          	li	sp,-1
   12f68:	00208663          	beq	ra,sp,12f74 <test_4+0x18>
   12f6c:	27c01863          	bne	zero,t3,131dc <fail>
   12f70:	01c01663          	bne	zero,t3,12f7c <test_5>
   12f74:	fe208ee3          	beq	ra,sp,12f70 <test_4+0x14>
   12f78:	27c01263          	bne	zero,t3,131dc <fail>

00012f7c <test_5>:
   12f7c:	00500e13          	li	t3,5
   12f80:	00000093          	li	ra,0
   12f84:	00100113          	li	sp,1
   12f88:	00208463          	beq	ra,sp,12f90 <test_5+0x14>
   12f8c:	01c01463          	bne	zero,t3,12f94 <test_5+0x18>
   12f90:	25c01663          	bne	zero,t3,131dc <fail>
   12f94:	fe208ee3          	beq	ra,sp,12f90 <test_5+0x14>

00012f98 <test_6>:
   12f98:	00600e13          	li	t3,6
   12f9c:	00100093          	li	ra,1
   12fa0:	00000113          	li	sp,0
   12fa4:	00208463          	beq	ra,sp,12fac <test_6+0x14>
   12fa8:	01c01463          	bne	zero,t3,12fb0 <test_6+0x18>
   12fac:	23c01863          	bne	zero,t3,131dc <fail>
   12fb0:	fe208ee3          	beq	ra,sp,12fac <test_6+0x14>

00012fb4 <test_7>:
   12fb4:	00700e13          	li	t3,7
   12fb8:	fff00093          	li	ra,-1
   12fbc:	00100113          	li	sp,1
   12fc0:	00208463          	beq	ra,sp,12fc8 <test_7+0x14>
   12fc4:	01c01463          	bne	zero,t3,12fcc <test_7+0x18>
   12fc8:	21c01a63          	bne	zero,t3,131dc <fail>
   12fcc:	fe208ee3          	beq	ra,sp,12fc8 <test_7+0x14>

00012fd0 <test_8>:
   12fd0:	00800e13          	li	t3,8
   12fd4:	00100093          	li	ra,1
   12fd8:	fff00113          	li	sp,-1
   12fdc:	00208463          	beq	ra,sp,12fe4 <test_8+0x14>
   12fe0:	01c01463          	bne	zero,t3,12fe8 <test_8+0x18>
   12fe4:	1fc01c63          	bne	zero,t3,131dc <fail>
   12fe8:	fe208ee3          	beq	ra,sp,12fe4 <test_8+0x14>

00012fec <test_9>:
   12fec:	00900e13          	li	t3,9
   12ff0:	00000213          	li	tp,0
   12ff4:	00000093          	li	ra,0
   12ff8:	fff00113          	li	sp,-1
   12ffc:	1e208063          	beq	ra,sp,131dc <fail>
   13000:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13004:	00200293          	li	t0,2
   13008:	fe5216e3          	bne	tp,t0,12ff4 <test_9+0x8>

0001300c <test_10>:
   1300c:	00a00e13          	li	t3,10
   13010:	00000213          	li	tp,0
   13014:	00000093          	li	ra,0
   13018:	fff00113          	li	sp,-1
   1301c:	00000013          	nop
   13020:	1a208e63          	beq	ra,sp,131dc <fail>
   13024:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13028:	00200293          	li	t0,2
   1302c:	fe5214e3          	bne	tp,t0,13014 <test_10+0x8>

00013030 <test_11>:
   13030:	00b00e13          	li	t3,11
   13034:	00000213          	li	tp,0
   13038:	00000093          	li	ra,0
   1303c:	fff00113          	li	sp,-1
   13040:	00000013          	nop
   13044:	00000013          	nop
   13048:	18208a63          	beq	ra,sp,131dc <fail>
   1304c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13050:	00200293          	li	t0,2
   13054:	fe5212e3          	bne	tp,t0,13038 <test_11+0x8>

00013058 <test_12>:
   13058:	00c00e13          	li	t3,12
   1305c:	00000213          	li	tp,0
   13060:	00000093          	li	ra,0
   13064:	00000013          	nop
   13068:	fff00113          	li	sp,-1
   1306c:	16208863          	beq	ra,sp,131dc <fail>
   13070:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13074:	00200293          	li	t0,2
   13078:	fe5214e3          	bne	tp,t0,13060 <test_12+0x8>

0001307c <test_13>:
   1307c:	00d00e13          	li	t3,13
   13080:	00000213          	li	tp,0
   13084:	00000093          	li	ra,0
   13088:	00000013          	nop
   1308c:	fff00113          	li	sp,-1
   13090:	00000013          	nop
   13094:	14208463          	beq	ra,sp,131dc <fail>
   13098:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1309c:	00200293          	li	t0,2
   130a0:	fe5212e3          	bne	tp,t0,13084 <test_13+0x8>

000130a4 <test_14>:
   130a4:	00e00e13          	li	t3,14
   130a8:	00000213          	li	tp,0
   130ac:	00000093          	li	ra,0
   130b0:	00000013          	nop
   130b4:	00000013          	nop
   130b8:	fff00113          	li	sp,-1
   130bc:	12208063          	beq	ra,sp,131dc <fail>
   130c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   130c4:	00200293          	li	t0,2
   130c8:	fe5212e3          	bne	tp,t0,130ac <test_14+0x8>

000130cc <test_15>:
   130cc:	00f00e13          	li	t3,15
   130d0:	00000213          	li	tp,0
   130d4:	00000093          	li	ra,0
   130d8:	fff00113          	li	sp,-1
   130dc:	10208063          	beq	ra,sp,131dc <fail>
   130e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   130e4:	00200293          	li	t0,2
   130e8:	fe5216e3          	bne	tp,t0,130d4 <test_15+0x8>

000130ec <test_16>:
   130ec:	01000e13          	li	t3,16
   130f0:	00000213          	li	tp,0
   130f4:	00000093          	li	ra,0
   130f8:	fff00113          	li	sp,-1
   130fc:	00000013          	nop
   13100:	0c208e63          	beq	ra,sp,131dc <fail>
   13104:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13108:	00200293          	li	t0,2
   1310c:	fe5214e3          	bne	tp,t0,130f4 <test_16+0x8>

00013110 <test_17>:
   13110:	01100e13          	li	t3,17
   13114:	00000213          	li	tp,0
   13118:	00000093          	li	ra,0
   1311c:	fff00113          	li	sp,-1
   13120:	00000013          	nop
   13124:	00000013          	nop
   13128:	0a208a63          	beq	ra,sp,131dc <fail>
   1312c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13130:	00200293          	li	t0,2
   13134:	fe5212e3          	bne	tp,t0,13118 <test_17+0x8>

00013138 <test_18>:
   13138:	01200e13          	li	t3,18
   1313c:	00000213          	li	tp,0
   13140:	00000093          	li	ra,0
   13144:	00000013          	nop
   13148:	fff00113          	li	sp,-1
   1314c:	08208863          	beq	ra,sp,131dc <fail>
   13150:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13154:	00200293          	li	t0,2
   13158:	fe5214e3          	bne	tp,t0,13140 <test_18+0x8>

0001315c <test_19>:
   1315c:	01300e13          	li	t3,19
   13160:	00000213          	li	tp,0
   13164:	00000093          	li	ra,0
   13168:	00000013          	nop
   1316c:	fff00113          	li	sp,-1
   13170:	00000013          	nop
   13174:	06208463          	beq	ra,sp,131dc <fail>
   13178:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1317c:	00200293          	li	t0,2
   13180:	fe5212e3          	bne	tp,t0,13164 <test_19+0x8>

00013184 <test_20>:
   13184:	01400e13          	li	t3,20
   13188:	00000213          	li	tp,0
   1318c:	00000093          	li	ra,0
   13190:	00000013          	nop
   13194:	00000013          	nop
   13198:	fff00113          	li	sp,-1
   1319c:	04208063          	beq	ra,sp,131dc <fail>
   131a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   131a4:	00200293          	li	t0,2
   131a8:	fe5212e3          	bne	tp,t0,1318c <test_20+0x8>

000131ac <test_21>:
   131ac:	00100093          	li	ra,1
   131b0:	00000a63          	beqz	zero,131c4 <test_21+0x18>
   131b4:	00108093          	addi	ra,ra,1
   131b8:	00108093          	addi	ra,ra,1
   131bc:	00108093          	addi	ra,ra,1
   131c0:	00108093          	addi	ra,ra,1
   131c4:	00108093          	addi	ra,ra,1
   131c8:	00108093          	addi	ra,ra,1
   131cc:	00300e93          	li	t4,3
   131d0:	01500e13          	li	t3,21
   131d4:	01d09463          	bne	ra,t4,131dc <fail>
   131d8:	05c01463          	bne	zero,t3,13220 <pass>

000131dc <fail>:
   131dc:	0ff00513          	li	a0,255

000131e0 <.delay_fail>:
   131e0:	fff50513          	addi	a0,a0,-1
   131e4:	fe051ee3          	bnez	a0,131e0 <.delay_fail>
   131e8:	02000537          	lui	a0,0x2000
   131ec:	04500593          	li	a1,69
   131f0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   131f4:	05200613          	li	a2,82
   131f8:	00c52023          	sw	a2,0(a0)
   131fc:	00c52023          	sw	a2,0(a0)
   13200:	04f00693          	li	a3,79
   13204:	00d52023          	sw	a3,0(a0)
   13208:	00c52023          	sw	a2,0(a0)
   1320c:	00d00713          	li	a4,13
   13210:	00e52023          	sw	a4,0(a0)
   13214:	00a00793          	li	a5,10
   13218:	00f52023          	sw	a5,0(a0)
   1321c:	ecdfc06f          	j	100e8 <beq_ret>

00013220 <pass>:
   13220:	0ff00513          	li	a0,255

00013224 <.delay_ok>:
   13224:	fff50513          	addi	a0,a0,-1
   13228:	fe051ee3          	bnez	a0,13224 <.delay_ok>
   1322c:	02000537          	lui	a0,0x2000
   13230:	04f00593          	li	a1,79
   13234:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   13238:	04b00613          	li	a2,75
   1323c:	00c52023          	sw	a2,0(a0)
   13240:	00d00693          	li	a3,13
   13244:	00d52023          	sw	a3,0(a0)
   13248:	00a00713          	li	a4,10
   1324c:	00e52023          	sw	a4,0(a0)
   13250:	e99fc06f          	j	100e8 <beq_ret>

00013254 <divu>:
   13254:	0ff00513          	li	a0,255

00013258 <.delay_pr>:
   13258:	fff50513          	addi	a0,a0,-1
   1325c:	fe051ee3          	bnez	a0,13258 <.delay_pr>
   13260:	00013537          	lui	a0,0x13
   13264:	28050513          	addi	a0,a0,640 # 13280 <.test_name>
   13268:	02000637          	lui	a2,0x2000

0001326c <.prname_next>:
   1326c:	00050583          	lb	a1,0(a0)
   13270:	00058c63          	beqz	a1,13288 <.prname_done>
   13274:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   13278:	00150513          	addi	a0,a0,1
   1327c:	ff1ff06f          	j	1326c <.prname_next>

00013280 <.test_name>:
   13280:	6964                	flw	fs1,84(a0)
   13282:	7576                	flw	fa0,124(sp)
   13284:	0000                	unimp
	...

00013288 <.prname_done>:
   13288:	02e00593          	li	a1,46
   1328c:	00b62023          	sw	a1,0(a2)
   13290:	00b62023          	sw	a1,0(a2)

00013294 <test_2>:
   13294:	01400093          	li	ra,20
   13298:	00600113          	li	sp,6
   1329c:	0220d1b3          	divu	gp,ra,sp
   132a0:	00300e93          	li	t4,3
   132a4:	00200e13          	li	t3,2
   132a8:	0dd19663          	bne	gp,t4,13374 <fail>

000132ac <test_3>:
   132ac:	fec00093          	li	ra,-20
   132b0:	00600113          	li	sp,6
   132b4:	0220d1b3          	divu	gp,ra,sp
   132b8:	2aaabeb7          	lui	t4,0x2aaab
   132bc:	aa7e8e93          	addi	t4,t4,-1369 # 2aaaaaa7 <_etext+0x2aa9046b>
   132c0:	00300e13          	li	t3,3
   132c4:	0bd19863          	bne	gp,t4,13374 <fail>

000132c8 <test_4>:
   132c8:	01400093          	li	ra,20
   132cc:	ffa00113          	li	sp,-6
   132d0:	0220d1b3          	divu	gp,ra,sp
   132d4:	00000e93          	li	t4,0
   132d8:	00400e13          	li	t3,4
   132dc:	09d19c63          	bne	gp,t4,13374 <fail>

000132e0 <test_5>:
   132e0:	fec00093          	li	ra,-20
   132e4:	ffa00113          	li	sp,-6
   132e8:	0220d1b3          	divu	gp,ra,sp
   132ec:	00000e93          	li	t4,0
   132f0:	00500e13          	li	t3,5
   132f4:	09d19063          	bne	gp,t4,13374 <fail>

000132f8 <test_6>:
   132f8:	800000b7          	lui	ra,0x80000
   132fc:	00100113          	li	sp,1
   13300:	0220d1b3          	divu	gp,ra,sp
   13304:	80000eb7          	lui	t4,0x80000
   13308:	00600e13          	li	t3,6
   1330c:	07d19463          	bne	gp,t4,13374 <fail>

00013310 <test_7>:
   13310:	800000b7          	lui	ra,0x80000
   13314:	fff00113          	li	sp,-1
   13318:	0220d1b3          	divu	gp,ra,sp
   1331c:	00000e93          	li	t4,0
   13320:	00700e13          	li	t3,7
   13324:	05d19863          	bne	gp,t4,13374 <fail>

00013328 <test_8>:
   13328:	800000b7          	lui	ra,0x80000
   1332c:	00000113          	li	sp,0
   13330:	0220d1b3          	divu	gp,ra,sp
   13334:	fff00e93          	li	t4,-1
   13338:	00800e13          	li	t3,8
   1333c:	03d19c63          	bne	gp,t4,13374 <fail>

00013340 <test_9>:
   13340:	00100093          	li	ra,1
   13344:	00000113          	li	sp,0
   13348:	0220d1b3          	divu	gp,ra,sp
   1334c:	fff00e93          	li	t4,-1
   13350:	00900e13          	li	t3,9
   13354:	03d19063          	bne	gp,t4,13374 <fail>

00013358 <test_10>:
   13358:	00000093          	li	ra,0
   1335c:	00000113          	li	sp,0
   13360:	0220d1b3          	divu	gp,ra,sp
   13364:	fff00e93          	li	t4,-1
   13368:	00a00e13          	li	t3,10
   1336c:	01d19463          	bne	gp,t4,13374 <fail>
   13370:	05c01463          	bne	zero,t3,133b8 <pass>

00013374 <fail>:
   13374:	0ff00513          	li	a0,255

00013378 <.delay_fail>:
   13378:	fff50513          	addi	a0,a0,-1
   1337c:	fe051ee3          	bnez	a0,13378 <.delay_fail>
   13380:	02000537          	lui	a0,0x2000
   13384:	04500593          	li	a1,69
   13388:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1338c:	05200613          	li	a2,82
   13390:	00c52023          	sw	a2,0(a0)
   13394:	00c52023          	sw	a2,0(a0)
   13398:	04f00693          	li	a3,79
   1339c:	00d52023          	sw	a3,0(a0)
   133a0:	00c52023          	sw	a2,0(a0)
   133a4:	00d00713          	li	a4,13
   133a8:	00e52023          	sw	a4,0(a0)
   133ac:	00a00793          	li	a5,10
   133b0:	00f52023          	sw	a5,0(a0)
   133b4:	dc5fc06f          	j	10178 <divu_ret>

000133b8 <pass>:
   133b8:	0ff00513          	li	a0,255

000133bc <.delay_ok>:
   133bc:	fff50513          	addi	a0,a0,-1
   133c0:	fe051ee3          	bnez	a0,133bc <.delay_ok>
   133c4:	02000537          	lui	a0,0x2000
   133c8:	04f00593          	li	a1,79
   133cc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   133d0:	04b00613          	li	a2,75
   133d4:	00c52023          	sw	a2,0(a0)
   133d8:	00d00693          	li	a3,13
   133dc:	00d52023          	sw	a3,0(a0)
   133e0:	00a00713          	li	a4,10
   133e4:	00e52023          	sw	a4,0(a0)
   133e8:	d91fc06f          	j	10178 <divu_ret>

000133ec <sra>:
   133ec:	0ff00513          	li	a0,255

000133f0 <.delay_pr>:
   133f0:	fff50513          	addi	a0,a0,-1
   133f4:	fe051ee3          	bnez	a0,133f0 <.delay_pr>
   133f8:	00013537          	lui	a0,0x13
   133fc:	41850513          	addi	a0,a0,1048 # 13418 <.test_name>
   13400:	02000637          	lui	a2,0x2000

00013404 <.prname_next>:
   13404:	00050583          	lb	a1,0(a0)
   13408:	00058a63          	beqz	a1,1341c <.prname_done>
   1340c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   13410:	00150513          	addi	a0,a0,1
   13414:	ff1ff06f          	j	13404 <.prname_next>

00013418 <.test_name>:
   13418:	00617273          	csrrci	tp,0x6,2

0001341c <.prname_done>:
   1341c:	02e00593          	li	a1,46
   13420:	00b62023          	sw	a1,0(a2)
   13424:	00b62023          	sw	a1,0(a2)

00013428 <test_2>:
   13428:	800000b7          	lui	ra,0x80000
   1342c:	00000113          	li	sp,0
   13430:	4020d1b3          	sra	gp,ra,sp
   13434:	80000eb7          	lui	t4,0x80000
   13438:	00200e13          	li	t3,2
   1343c:	59d19463          	bne	gp,t4,139c4 <fail>

00013440 <test_3>:
   13440:	800000b7          	lui	ra,0x80000
   13444:	00100113          	li	sp,1
   13448:	4020d1b3          	sra	gp,ra,sp
   1344c:	c0000eb7          	lui	t4,0xc0000
   13450:	00300e13          	li	t3,3
   13454:	57d19863          	bne	gp,t4,139c4 <fail>

00013458 <test_4>:
   13458:	800000b7          	lui	ra,0x80000
   1345c:	00700113          	li	sp,7
   13460:	4020d1b3          	sra	gp,ra,sp
   13464:	ff000eb7          	lui	t4,0xff000
   13468:	00400e13          	li	t3,4
   1346c:	55d19c63          	bne	gp,t4,139c4 <fail>

00013470 <test_5>:
   13470:	800000b7          	lui	ra,0x80000
   13474:	00e00113          	li	sp,14
   13478:	4020d1b3          	sra	gp,ra,sp
   1347c:	fffe0eb7          	lui	t4,0xfffe0
   13480:	00500e13          	li	t3,5
   13484:	55d19063          	bne	gp,t4,139c4 <fail>

00013488 <test_6>:
   13488:	800000b7          	lui	ra,0x80000
   1348c:	00108093          	addi	ra,ra,1 # 80000001 <_edata+0xffffff91>
   13490:	01f00113          	li	sp,31
   13494:	4020d1b3          	sra	gp,ra,sp
   13498:	fff00e93          	li	t4,-1
   1349c:	00600e13          	li	t3,6
   134a0:	53d19263          	bne	gp,t4,139c4 <fail>

000134a4 <test_7>:
   134a4:	800000b7          	lui	ra,0x80000
   134a8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134ac:	00000113          	li	sp,0
   134b0:	4020d1b3          	sra	gp,ra,sp
   134b4:	80000eb7          	lui	t4,0x80000
   134b8:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   134bc:	00700e13          	li	t3,7
   134c0:	51d19263          	bne	gp,t4,139c4 <fail>

000134c4 <test_8>:
   134c4:	800000b7          	lui	ra,0x80000
   134c8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134cc:	00100113          	li	sp,1
   134d0:	4020d1b3          	sra	gp,ra,sp
   134d4:	40000eb7          	lui	t4,0x40000
   134d8:	fffe8e93          	addi	t4,t4,-1 # 3fffffff <_etext+0x3ffe59c3>
   134dc:	00800e13          	li	t3,8
   134e0:	4fd19263          	bne	gp,t4,139c4 <fail>

000134e4 <test_9>:
   134e4:	800000b7          	lui	ra,0x80000
   134e8:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   134ec:	00700113          	li	sp,7
   134f0:	4020d1b3          	sra	gp,ra,sp
   134f4:	01000eb7          	lui	t4,0x1000
   134f8:	fffe8e93          	addi	t4,t4,-1 # ffffff <_etext+0xfe59c3>
   134fc:	00900e13          	li	t3,9
   13500:	4dd19263          	bne	gp,t4,139c4 <fail>

00013504 <test_10>:
   13504:	800000b7          	lui	ra,0x80000
   13508:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1350c:	00e00113          	li	sp,14
   13510:	4020d1b3          	sra	gp,ra,sp
   13514:	00020eb7          	lui	t4,0x20
   13518:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   1351c:	00a00e13          	li	t3,10
   13520:	4bd19263          	bne	gp,t4,139c4 <fail>

00013524 <test_11>:
   13524:	800000b7          	lui	ra,0x80000
   13528:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1352c:	01f00113          	li	sp,31
   13530:	4020d1b3          	sra	gp,ra,sp
   13534:	00000e93          	li	t4,0
   13538:	00b00e13          	li	t3,11
   1353c:	49d19463          	bne	gp,t4,139c4 <fail>

00013540 <test_12>:
   13540:	818180b7          	lui	ra,0x81818
   13544:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13548:	00000113          	li	sp,0
   1354c:	4020d1b3          	sra	gp,ra,sp
   13550:	81818eb7          	lui	t4,0x81818
   13554:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   13558:	00c00e13          	li	t3,12
   1355c:	47d19463          	bne	gp,t4,139c4 <fail>

00013560 <test_13>:
   13560:	818180b7          	lui	ra,0x81818
   13564:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13568:	00100113          	li	sp,1
   1356c:	4020d1b3          	sra	gp,ra,sp
   13570:	c0c0ceb7          	lui	t4,0xc0c0c
   13574:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   13578:	00d00e13          	li	t3,13
   1357c:	45d19463          	bne	gp,t4,139c4 <fail>

00013580 <test_14>:
   13580:	818180b7          	lui	ra,0x81818
   13584:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13588:	00700113          	li	sp,7
   1358c:	4020d1b3          	sra	gp,ra,sp
   13590:	ff030eb7          	lui	t4,0xff030
   13594:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   13598:	00e00e13          	li	t3,14
   1359c:	43d19463          	bne	gp,t4,139c4 <fail>

000135a0 <test_15>:
   135a0:	818180b7          	lui	ra,0x81818
   135a4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135a8:	00e00113          	li	sp,14
   135ac:	4020d1b3          	sra	gp,ra,sp
   135b0:	fffe0eb7          	lui	t4,0xfffe0
   135b4:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   135b8:	00f00e13          	li	t3,15
   135bc:	41d19463          	bne	gp,t4,139c4 <fail>

000135c0 <test_16>:
   135c0:	818180b7          	lui	ra,0x81818
   135c4:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135c8:	01f00113          	li	sp,31
   135cc:	4020d1b3          	sra	gp,ra,sp
   135d0:	fff00e93          	li	t4,-1
   135d4:	01000e13          	li	t3,16
   135d8:	3fd19663          	bne	gp,t4,139c4 <fail>

000135dc <test_17>:
   135dc:	818180b7          	lui	ra,0x81818
   135e0:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   135e4:	fc000113          	li	sp,-64
   135e8:	4020d1b3          	sra	gp,ra,sp
   135ec:	81818eb7          	lui	t4,0x81818
   135f0:	181e8e93          	addi	t4,t4,385 # 81818181 <_edata+0x1818111>
   135f4:	01100e13          	li	t3,17
   135f8:	3dd19663          	bne	gp,t4,139c4 <fail>

000135fc <test_18>:
   135fc:	818180b7          	lui	ra,0x81818
   13600:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13604:	fc100113          	li	sp,-63
   13608:	4020d1b3          	sra	gp,ra,sp
   1360c:	c0c0ceb7          	lui	t4,0xc0c0c
   13610:	0c0e8e93          	addi	t4,t4,192 # c0c0c0c0 <_edata+0x40c0c050>
   13614:	01200e13          	li	t3,18
   13618:	3bd19663          	bne	gp,t4,139c4 <fail>

0001361c <test_19>:
   1361c:	818180b7          	lui	ra,0x81818
   13620:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13624:	fc700113          	li	sp,-57
   13628:	4020d1b3          	sra	gp,ra,sp
   1362c:	ff030eb7          	lui	t4,0xff030
   13630:	303e8e93          	addi	t4,t4,771 # ff030303 <_edata+0x7f030293>
   13634:	01300e13          	li	t3,19
   13638:	39d19663          	bne	gp,t4,139c4 <fail>

0001363c <test_20>:
   1363c:	818180b7          	lui	ra,0x81818
   13640:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13644:	fce00113          	li	sp,-50
   13648:	4020d1b3          	sra	gp,ra,sp
   1364c:	fffe0eb7          	lui	t4,0xfffe0
   13650:	606e8e93          	addi	t4,t4,1542 # fffe0606 <_edata+0x7ffe0596>
   13654:	01400e13          	li	t3,20
   13658:	37d19663          	bne	gp,t4,139c4 <fail>

0001365c <test_21>:
   1365c:	818180b7          	lui	ra,0x81818
   13660:	18108093          	addi	ra,ra,385 # 81818181 <_edata+0x1818111>
   13664:	fff00113          	li	sp,-1
   13668:	4020d1b3          	sra	gp,ra,sp
   1366c:	fff00e93          	li	t4,-1
   13670:	01500e13          	li	t3,21
   13674:	35d19863          	bne	gp,t4,139c4 <fail>

00013678 <test_22>:
   13678:	800000b7          	lui	ra,0x80000
   1367c:	00700113          	li	sp,7
   13680:	4020d0b3          	sra	ra,ra,sp
   13684:	ff000eb7          	lui	t4,0xff000
   13688:	01600e13          	li	t3,22
   1368c:	33d09c63          	bne	ra,t4,139c4 <fail>

00013690 <test_23>:
   13690:	800000b7          	lui	ra,0x80000
   13694:	00e00113          	li	sp,14
   13698:	4020d133          	sra	sp,ra,sp
   1369c:	fffe0eb7          	lui	t4,0xfffe0
   136a0:	01700e13          	li	t3,23
   136a4:	33d11063          	bne	sp,t4,139c4 <fail>

000136a8 <test_24>:
   136a8:	00700093          	li	ra,7
   136ac:	4010d0b3          	sra	ra,ra,ra
   136b0:	00000e93          	li	t4,0
   136b4:	01800e13          	li	t3,24
   136b8:	31d09663          	bne	ra,t4,139c4 <fail>

000136bc <test_25>:
   136bc:	00000213          	li	tp,0
   136c0:	800000b7          	lui	ra,0x80000
   136c4:	00700113          	li	sp,7
   136c8:	4020d1b3          	sra	gp,ra,sp
   136cc:	00018313          	mv	t1,gp
   136d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   136d4:	00200293          	li	t0,2
   136d8:	fe5214e3          	bne	tp,t0,136c0 <test_25+0x4>
   136dc:	ff000eb7          	lui	t4,0xff000
   136e0:	01900e13          	li	t3,25
   136e4:	2fd31063          	bne	t1,t4,139c4 <fail>

000136e8 <test_26>:
   136e8:	00000213          	li	tp,0
   136ec:	800000b7          	lui	ra,0x80000
   136f0:	00e00113          	li	sp,14
   136f4:	4020d1b3          	sra	gp,ra,sp
   136f8:	00000013          	nop
   136fc:	00018313          	mv	t1,gp
   13700:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13704:	00200293          	li	t0,2
   13708:	fe5212e3          	bne	tp,t0,136ec <test_26+0x4>
   1370c:	fffe0eb7          	lui	t4,0xfffe0
   13710:	01a00e13          	li	t3,26
   13714:	2bd31863          	bne	t1,t4,139c4 <fail>

00013718 <test_27>:
   13718:	00000213          	li	tp,0
   1371c:	800000b7          	lui	ra,0x80000
   13720:	01f00113          	li	sp,31
   13724:	4020d1b3          	sra	gp,ra,sp
   13728:	00000013          	nop
   1372c:	00000013          	nop
   13730:	00018313          	mv	t1,gp
   13734:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13738:	00200293          	li	t0,2
   1373c:	fe5210e3          	bne	tp,t0,1371c <test_27+0x4>
   13740:	fff00e93          	li	t4,-1
   13744:	01b00e13          	li	t3,27
   13748:	27d31e63          	bne	t1,t4,139c4 <fail>

0001374c <test_28>:
   1374c:	00000213          	li	tp,0
   13750:	800000b7          	lui	ra,0x80000
   13754:	00700113          	li	sp,7
   13758:	4020d1b3          	sra	gp,ra,sp
   1375c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13760:	00200293          	li	t0,2
   13764:	fe5216e3          	bne	tp,t0,13750 <test_28+0x4>
   13768:	ff000eb7          	lui	t4,0xff000
   1376c:	01c00e13          	li	t3,28
   13770:	25d19a63          	bne	gp,t4,139c4 <fail>

00013774 <test_29>:
   13774:	00000213          	li	tp,0
   13778:	800000b7          	lui	ra,0x80000
   1377c:	00e00113          	li	sp,14
   13780:	00000013          	nop
   13784:	4020d1b3          	sra	gp,ra,sp
   13788:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1378c:	00200293          	li	t0,2
   13790:	fe5214e3          	bne	tp,t0,13778 <test_29+0x4>
   13794:	fffe0eb7          	lui	t4,0xfffe0
   13798:	01d00e13          	li	t3,29
   1379c:	23d19463          	bne	gp,t4,139c4 <fail>

000137a0 <test_30>:
   137a0:	00000213          	li	tp,0
   137a4:	800000b7          	lui	ra,0x80000
   137a8:	01f00113          	li	sp,31
   137ac:	00000013          	nop
   137b0:	00000013          	nop
   137b4:	4020d1b3          	sra	gp,ra,sp
   137b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   137bc:	00200293          	li	t0,2
   137c0:	fe5212e3          	bne	tp,t0,137a4 <test_30+0x4>
   137c4:	fff00e93          	li	t4,-1
   137c8:	01e00e13          	li	t3,30
   137cc:	1fd19c63          	bne	gp,t4,139c4 <fail>

000137d0 <test_31>:
   137d0:	00000213          	li	tp,0
   137d4:	800000b7          	lui	ra,0x80000
   137d8:	00000013          	nop
   137dc:	00700113          	li	sp,7
   137e0:	4020d1b3          	sra	gp,ra,sp
   137e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   137e8:	00200293          	li	t0,2
   137ec:	fe5214e3          	bne	tp,t0,137d4 <test_31+0x4>
   137f0:	ff000eb7          	lui	t4,0xff000
   137f4:	01f00e13          	li	t3,31
   137f8:	1dd19663          	bne	gp,t4,139c4 <fail>

000137fc <test_32>:
   137fc:	00000213          	li	tp,0
   13800:	800000b7          	lui	ra,0x80000
   13804:	00000013          	nop
   13808:	00e00113          	li	sp,14
   1380c:	00000013          	nop
   13810:	4020d1b3          	sra	gp,ra,sp
   13814:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13818:	00200293          	li	t0,2
   1381c:	fe5212e3          	bne	tp,t0,13800 <test_32+0x4>
   13820:	fffe0eb7          	lui	t4,0xfffe0
   13824:	02000e13          	li	t3,32
   13828:	19d19e63          	bne	gp,t4,139c4 <fail>

0001382c <test_33>:
   1382c:	00000213          	li	tp,0
   13830:	800000b7          	lui	ra,0x80000
   13834:	00000013          	nop
   13838:	00000013          	nop
   1383c:	01f00113          	li	sp,31
   13840:	4020d1b3          	sra	gp,ra,sp
   13844:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13848:	00200293          	li	t0,2
   1384c:	fe5212e3          	bne	tp,t0,13830 <test_33+0x4>
   13850:	fff00e93          	li	t4,-1
   13854:	02100e13          	li	t3,33
   13858:	17d19663          	bne	gp,t4,139c4 <fail>

0001385c <test_34>:
   1385c:	00000213          	li	tp,0
   13860:	00700113          	li	sp,7
   13864:	800000b7          	lui	ra,0x80000
   13868:	4020d1b3          	sra	gp,ra,sp
   1386c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13870:	00200293          	li	t0,2
   13874:	fe5216e3          	bne	tp,t0,13860 <test_34+0x4>
   13878:	ff000eb7          	lui	t4,0xff000
   1387c:	02200e13          	li	t3,34
   13880:	15d19263          	bne	gp,t4,139c4 <fail>

00013884 <test_35>:
   13884:	00000213          	li	tp,0
   13888:	00e00113          	li	sp,14
   1388c:	800000b7          	lui	ra,0x80000
   13890:	00000013          	nop
   13894:	4020d1b3          	sra	gp,ra,sp
   13898:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1389c:	00200293          	li	t0,2
   138a0:	fe5214e3          	bne	tp,t0,13888 <test_35+0x4>
   138a4:	fffe0eb7          	lui	t4,0xfffe0
   138a8:	02300e13          	li	t3,35
   138ac:	11d19c63          	bne	gp,t4,139c4 <fail>

000138b0 <test_36>:
   138b0:	00000213          	li	tp,0
   138b4:	01f00113          	li	sp,31
   138b8:	800000b7          	lui	ra,0x80000
   138bc:	00000013          	nop
   138c0:	00000013          	nop
   138c4:	4020d1b3          	sra	gp,ra,sp
   138c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138cc:	00200293          	li	t0,2
   138d0:	fe5212e3          	bne	tp,t0,138b4 <test_36+0x4>
   138d4:	fff00e93          	li	t4,-1
   138d8:	02400e13          	li	t3,36
   138dc:	0fd19463          	bne	gp,t4,139c4 <fail>

000138e0 <test_37>:
   138e0:	00000213          	li	tp,0
   138e4:	00700113          	li	sp,7
   138e8:	00000013          	nop
   138ec:	800000b7          	lui	ra,0x80000
   138f0:	4020d1b3          	sra	gp,ra,sp
   138f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   138f8:	00200293          	li	t0,2
   138fc:	fe5214e3          	bne	tp,t0,138e4 <test_37+0x4>
   13900:	ff000eb7          	lui	t4,0xff000
   13904:	02500e13          	li	t3,37
   13908:	0bd19e63          	bne	gp,t4,139c4 <fail>

0001390c <test_38>:
   1390c:	00000213          	li	tp,0
   13910:	00e00113          	li	sp,14
   13914:	00000013          	nop
   13918:	800000b7          	lui	ra,0x80000
   1391c:	00000013          	nop
   13920:	4020d1b3          	sra	gp,ra,sp
   13924:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13928:	00200293          	li	t0,2
   1392c:	fe5212e3          	bne	tp,t0,13910 <test_38+0x4>
   13930:	fffe0eb7          	lui	t4,0xfffe0
   13934:	02600e13          	li	t3,38
   13938:	09d19663          	bne	gp,t4,139c4 <fail>

0001393c <test_39>:
   1393c:	00000213          	li	tp,0
   13940:	01f00113          	li	sp,31
   13944:	00000013          	nop
   13948:	00000013          	nop
   1394c:	800000b7          	lui	ra,0x80000
   13950:	4020d1b3          	sra	gp,ra,sp
   13954:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13958:	00200293          	li	t0,2
   1395c:	fe5212e3          	bne	tp,t0,13940 <test_39+0x4>
   13960:	fff00e93          	li	t4,-1
   13964:	02700e13          	li	t3,39
   13968:	05d19e63          	bne	gp,t4,139c4 <fail>

0001396c <test_40>:
   1396c:	00f00093          	li	ra,15
   13970:	40105133          	sra	sp,zero,ra
   13974:	00000e93          	li	t4,0
   13978:	02800e13          	li	t3,40
   1397c:	05d11463          	bne	sp,t4,139c4 <fail>

00013980 <test_41>:
   13980:	02000093          	li	ra,32
   13984:	4000d133          	sra	sp,ra,zero
   13988:	02000e93          	li	t4,32
   1398c:	02900e13          	li	t3,41
   13990:	03d11a63          	bne	sp,t4,139c4 <fail>

00013994 <test_42>:
   13994:	400050b3          	sra	ra,zero,zero
   13998:	00000e93          	li	t4,0
   1399c:	02a00e13          	li	t3,42
   139a0:	03d09263          	bne	ra,t4,139c4 <fail>

000139a4 <test_43>:
   139a4:	40000093          	li	ra,1024
   139a8:	00001137          	lui	sp,0x1
   139ac:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   139b0:	4020d033          	sra	zero,ra,sp
   139b4:	00000e93          	li	t4,0
   139b8:	02b00e13          	li	t3,43
   139bc:	01d01463          	bne	zero,t4,139c4 <fail>
   139c0:	05c01463          	bne	zero,t3,13a08 <pass>

000139c4 <fail>:
   139c4:	0ff00513          	li	a0,255

000139c8 <.delay_fail>:
   139c8:	fff50513          	addi	a0,a0,-1
   139cc:	fe051ee3          	bnez	a0,139c8 <.delay_fail>
   139d0:	02000537          	lui	a0,0x2000
   139d4:	04500593          	li	a1,69
   139d8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   139dc:	05200613          	li	a2,82
   139e0:	00c52023          	sw	a2,0(a0)
   139e4:	00c52023          	sw	a2,0(a0)
   139e8:	04f00693          	li	a3,79
   139ec:	00d52023          	sw	a3,0(a0)
   139f0:	00c52023          	sw	a2,0(a0)
   139f4:	00d00713          	li	a4,13
   139f8:	00e52023          	sw	a4,0(a0)
   139fc:	00a00793          	li	a5,10
   13a00:	00f52023          	sw	a5,0(a0)
   13a04:	f54fc06f          	j	10158 <sra_ret>

00013a08 <pass>:
   13a08:	0ff00513          	li	a0,255

00013a0c <.delay_ok>:
   13a0c:	fff50513          	addi	a0,a0,-1
   13a10:	fe051ee3          	bnez	a0,13a0c <.delay_ok>
   13a14:	02000537          	lui	a0,0x2000
   13a18:	04f00593          	li	a1,79
   13a1c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   13a20:	04b00613          	li	a2,75
   13a24:	00c52023          	sw	a2,0(a0)
   13a28:	00d00693          	li	a3,13
   13a2c:	00d52023          	sw	a3,0(a0)
   13a30:	00a00713          	li	a4,10
   13a34:	00e52023          	sw	a4,0(a0)
   13a38:	f20fc06f          	j	10158 <sra_ret>

00013a3c <srli>:
   13a3c:	0ff00513          	li	a0,255

00013a40 <.delay_pr>:
   13a40:	fff50513          	addi	a0,a0,-1
   13a44:	fe051ee3          	bnez	a0,13a40 <.delay_pr>
   13a48:	00014537          	lui	a0,0x14
   13a4c:	a6850513          	addi	a0,a0,-1432 # 13a68 <.test_name>
   13a50:	02000637          	lui	a2,0x2000

00013a54 <.prname_next>:
   13a54:	00050583          	lb	a1,0(a0)
   13a58:	00058c63          	beqz	a1,13a70 <.prname_done>
   13a5c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   13a60:	00150513          	addi	a0,a0,1
   13a64:	ff1ff06f          	j	13a54 <.prname_next>

00013a68 <.test_name>:
   13a68:	696c7273          	csrrci	tp,0x696,24
   13a6c:	0000                	unimp
	...

00013a70 <.prname_done>:
   13a70:	02e00593          	li	a1,46
   13a74:	00b62023          	sw	a1,0(a2)
   13a78:	00b62023          	sw	a1,0(a2)

00013a7c <test_2>:
   13a7c:	ffff80b7          	lui	ra,0xffff8
   13a80:	0000d193          	srli	gp,ra,0x0
   13a84:	ffff8eb7          	lui	t4,0xffff8
   13a88:	00200e13          	li	t3,2
   13a8c:	2bd19263          	bne	gp,t4,13d30 <fail>

00013a90 <test_3>:
   13a90:	ffff80b7          	lui	ra,0xffff8
   13a94:	0010d193          	srli	gp,ra,0x1
   13a98:	7fffceb7          	lui	t4,0x7fffc
   13a9c:	00300e13          	li	t3,3
   13aa0:	29d19863          	bne	gp,t4,13d30 <fail>

00013aa4 <test_4>:
   13aa4:	ffff80b7          	lui	ra,0xffff8
   13aa8:	0070d193          	srli	gp,ra,0x7
   13aac:	02000eb7          	lui	t4,0x2000
   13ab0:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58c4>
   13ab4:	00400e13          	li	t3,4
   13ab8:	27d19c63          	bne	gp,t4,13d30 <fail>

00013abc <test_5>:
   13abc:	ffff80b7          	lui	ra,0xffff8
   13ac0:	00e0d193          	srli	gp,ra,0xe
   13ac4:	00040eb7          	lui	t4,0x40
   13ac8:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259c2>
   13acc:	00500e13          	li	t3,5
   13ad0:	27d19063          	bne	gp,t4,13d30 <fail>

00013ad4 <test_6>:
   13ad4:	ffff80b7          	lui	ra,0xffff8
   13ad8:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   13adc:	00f0d193          	srli	gp,ra,0xf
   13ae0:	00020eb7          	lui	t4,0x20
   13ae4:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   13ae8:	00600e13          	li	t3,6
   13aec:	25d19263          	bne	gp,t4,13d30 <fail>

00013af0 <test_7>:
   13af0:	fff00093          	li	ra,-1
   13af4:	0000d193          	srli	gp,ra,0x0
   13af8:	fff00e93          	li	t4,-1
   13afc:	00700e13          	li	t3,7
   13b00:	23d19863          	bne	gp,t4,13d30 <fail>

00013b04 <test_8>:
   13b04:	fff00093          	li	ra,-1
   13b08:	0010d193          	srli	gp,ra,0x1
   13b0c:	80000eb7          	lui	t4,0x80000
   13b10:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   13b14:	00800e13          	li	t3,8
   13b18:	21d19c63          	bne	gp,t4,13d30 <fail>

00013b1c <test_9>:
   13b1c:	fff00093          	li	ra,-1
   13b20:	0070d193          	srli	gp,ra,0x7
   13b24:	02000eb7          	lui	t4,0x2000
   13b28:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe59c3>
   13b2c:	00900e13          	li	t3,9
   13b30:	21d19063          	bne	gp,t4,13d30 <fail>

00013b34 <test_10>:
   13b34:	fff00093          	li	ra,-1
   13b38:	00e0d193          	srli	gp,ra,0xe
   13b3c:	00040eb7          	lui	t4,0x40
   13b40:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x259c3>
   13b44:	00a00e13          	li	t3,10
   13b48:	1fd19463          	bne	gp,t4,13d30 <fail>

00013b4c <test_11>:
   13b4c:	fff00093          	li	ra,-1
   13b50:	01f0d193          	srli	gp,ra,0x1f
   13b54:	00100e93          	li	t4,1
   13b58:	00b00e13          	li	t3,11
   13b5c:	1dd19a63          	bne	gp,t4,13d30 <fail>

00013b60 <test_12>:
   13b60:	212120b7          	lui	ra,0x21212
   13b64:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   13b68:	0000d193          	srli	gp,ra,0x0
   13b6c:	21212eb7          	lui	t4,0x21212
   13b70:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7ae5>
   13b74:	00c00e13          	li	t3,12
   13b78:	1bd19c63          	bne	gp,t4,13d30 <fail>

00013b7c <test_13>:
   13b7c:	212120b7          	lui	ra,0x21212
   13b80:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   13b84:	0010d193          	srli	gp,ra,0x1
   13b88:	10909eb7          	lui	t4,0x10909
   13b8c:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eea54>
   13b90:	00d00e13          	li	t3,13
   13b94:	19d19e63          	bne	gp,t4,13d30 <fail>

00013b98 <test_14>:
   13b98:	212120b7          	lui	ra,0x21212
   13b9c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   13ba0:	0070d193          	srli	gp,ra,0x7
   13ba4:	00424eb7          	lui	t4,0x424
   13ba8:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c06>
   13bac:	00e00e13          	li	t3,14
   13bb0:	19d19063          	bne	gp,t4,13d30 <fail>

00013bb4 <test_15>:
   13bb4:	212120b7          	lui	ra,0x21212
   13bb8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   13bbc:	00e0d193          	srli	gp,ra,0xe
   13bc0:	00008eb7          	lui	t4,0x8
   13bc4:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   13bc8:	00f00e13          	li	t3,15
   13bcc:	17d19263          	bne	gp,t4,13d30 <fail>

00013bd0 <test_16>:
   13bd0:	212120b7          	lui	ra,0x21212
   13bd4:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   13bd8:	01f0d193          	srli	gp,ra,0x1f
   13bdc:	00000e93          	li	t4,0
   13be0:	01000e13          	li	t3,16
   13be4:	15d19663          	bne	gp,t4,13d30 <fail>

00013be8 <test_21>:
   13be8:	ffff80b7          	lui	ra,0xffff8
   13bec:	0010d093          	srli	ra,ra,0x1
   13bf0:	7fffceb7          	lui	t4,0x7fffc
   13bf4:	01500e13          	li	t3,21
   13bf8:	13d09c63          	bne	ra,t4,13d30 <fail>

00013bfc <test_22>:
   13bfc:	00000213          	li	tp,0
   13c00:	ffff80b7          	lui	ra,0xffff8
   13c04:	0010d193          	srli	gp,ra,0x1
   13c08:	00018313          	mv	t1,gp
   13c0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c10:	00200293          	li	t0,2
   13c14:	fe5216e3          	bne	tp,t0,13c00 <test_22+0x4>
   13c18:	7fffceb7          	lui	t4,0x7fffc
   13c1c:	01600e13          	li	t3,22
   13c20:	11d31863          	bne	t1,t4,13d30 <fail>

00013c24 <test_23>:
   13c24:	00000213          	li	tp,0
   13c28:	ffff80b7          	lui	ra,0xffff8
   13c2c:	00e0d193          	srli	gp,ra,0xe
   13c30:	00000013          	nop
   13c34:	00018313          	mv	t1,gp
   13c38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c3c:	00200293          	li	t0,2
   13c40:	fe5214e3          	bne	tp,t0,13c28 <test_23+0x4>
   13c44:	00040eb7          	lui	t4,0x40
   13c48:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259c2>
   13c4c:	01700e13          	li	t3,23
   13c50:	0fd31063          	bne	t1,t4,13d30 <fail>

00013c54 <test_24>:
   13c54:	00000213          	li	tp,0
   13c58:	ffff80b7          	lui	ra,0xffff8
   13c5c:	00f0d193          	srli	gp,ra,0xf
   13c60:	00000013          	nop
   13c64:	00000013          	nop
   13c68:	00018313          	mv	t1,gp
   13c6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c70:	00200293          	li	t0,2
   13c74:	fe5212e3          	bne	tp,t0,13c58 <test_24+0x4>
   13c78:	00020eb7          	lui	t4,0x20
   13c7c:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   13c80:	01800e13          	li	t3,24
   13c84:	0bd31663          	bne	t1,t4,13d30 <fail>

00013c88 <test_25>:
   13c88:	00000213          	li	tp,0
   13c8c:	ffff80b7          	lui	ra,0xffff8
   13c90:	0010d193          	srli	gp,ra,0x1
   13c94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13c98:	00200293          	li	t0,2
   13c9c:	fe5218e3          	bne	tp,t0,13c8c <test_25+0x4>
   13ca0:	7fffceb7          	lui	t4,0x7fffc
   13ca4:	01900e13          	li	t3,25
   13ca8:	09d19463          	bne	gp,t4,13d30 <fail>

00013cac <test_26>:
   13cac:	00000213          	li	tp,0
   13cb0:	ffff80b7          	lui	ra,0xffff8
   13cb4:	00000013          	nop
   13cb8:	00e0d193          	srli	gp,ra,0xe
   13cbc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13cc0:	00200293          	li	t0,2
   13cc4:	fe5216e3          	bne	tp,t0,13cb0 <test_26+0x4>
   13cc8:	00040eb7          	lui	t4,0x40
   13ccc:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259c2>
   13cd0:	01a00e13          	li	t3,26
   13cd4:	05d19e63          	bne	gp,t4,13d30 <fail>

00013cd8 <test_27>:
   13cd8:	00000213          	li	tp,0
   13cdc:	ffff80b7          	lui	ra,0xffff8
   13ce0:	00000013          	nop
   13ce4:	00000013          	nop
   13ce8:	00f0d193          	srli	gp,ra,0xf
   13cec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13cf0:	00200293          	li	t0,2
   13cf4:	fe5214e3          	bne	tp,t0,13cdc <test_27+0x4>
   13cf8:	00020eb7          	lui	t4,0x20
   13cfc:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   13d00:	01b00e13          	li	t3,27
   13d04:	03d19663          	bne	gp,t4,13d30 <fail>

00013d08 <test_28>:
   13d08:	01f05093          	srli	ra,zero,0x1f
   13d0c:	00000e93          	li	t4,0
   13d10:	01c00e13          	li	t3,28
   13d14:	01d09e63          	bne	ra,t4,13d30 <fail>

00013d18 <test_29>:
   13d18:	02100093          	li	ra,33
   13d1c:	0140d013          	srli	zero,ra,0x14
   13d20:	00000e93          	li	t4,0
   13d24:	01d00e13          	li	t3,29
   13d28:	01d01463          	bne	zero,t4,13d30 <fail>
   13d2c:	05c01463          	bne	zero,t3,13d74 <pass>

00013d30 <fail>:
   13d30:	0ff00513          	li	a0,255

00013d34 <.delay_fail>:
   13d34:	fff50513          	addi	a0,a0,-1
   13d38:	fe051ee3          	bnez	a0,13d34 <.delay_fail>
   13d3c:	02000537          	lui	a0,0x2000
   13d40:	04500593          	li	a1,69
   13d44:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   13d48:	05200613          	li	a2,82
   13d4c:	00c52023          	sw	a2,0(a0)
   13d50:	00c52023          	sw	a2,0(a0)
   13d54:	04f00693          	li	a3,79
   13d58:	00d52023          	sw	a3,0(a0)
   13d5c:	00c52023          	sw	a2,0(a0)
   13d60:	00d00713          	li	a4,13
   13d64:	00e52023          	sw	a4,0(a0)
   13d68:	00a00793          	li	a5,10
   13d6c:	00f52023          	sw	a5,0(a0)
   13d70:	bc8fc06f          	j	10138 <srli_ret>

00013d74 <pass>:
   13d74:	0ff00513          	li	a0,255

00013d78 <.delay_ok>:
   13d78:	fff50513          	addi	a0,a0,-1
   13d7c:	fe051ee3          	bnez	a0,13d78 <.delay_ok>
   13d80:	02000537          	lui	a0,0x2000
   13d84:	04f00593          	li	a1,79
   13d88:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   13d8c:	04b00613          	li	a2,75
   13d90:	00c52023          	sw	a2,0(a0)
   13d94:	00d00693          	li	a3,13
   13d98:	00d52023          	sw	a3,0(a0)
   13d9c:	00a00713          	li	a4,10
   13da0:	00e52023          	sw	a4,0(a0)
   13da4:	b94fc06f          	j	10138 <srli_ret>

00013da8 <lw>:
   13da8:	0ff00513          	li	a0,255

00013dac <.delay_pr>:
   13dac:	fff50513          	addi	a0,a0,-1
   13db0:	fe051ee3          	bnez	a0,13dac <.delay_pr>
   13db4:	00014537          	lui	a0,0x14
   13db8:	dd450513          	addi	a0,a0,-556 # 13dd4 <.test_name>
   13dbc:	02000637          	lui	a2,0x2000

00013dc0 <.prname_next>:
   13dc0:	00050583          	lb	a1,0(a0)
   13dc4:	00058a63          	beqz	a1,13dd8 <.prname_done>
   13dc8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   13dcc:	00150513          	addi	a0,a0,1
   13dd0:	ff1ff06f          	j	13dc0 <.prname_next>

00013dd4 <.test_name>:
   13dd4:	776c                	flw	fa1,108(a4)
	...

00013dd8 <.prname_done>:
   13dd8:	02e00593          	li	a1,46
   13ddc:	00b62023          	sw	a1,0(a2)
   13de0:	00b62023          	sw	a1,0(a2)

00013de4 <test_2>:
   13de4:	7ffec097          	auipc	ra,0x7ffec
   13de8:	24c08093          	addi	ra,ra,588 # 80000030 <tdat>
   13dec:	0000a183          	lw	gp,0(ra)
   13df0:	00ff0eb7          	lui	t4,0xff0
   13df4:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5ac3>
   13df8:	00200e13          	li	t3,2
   13dfc:	27d19a63          	bne	gp,t4,14070 <fail>

00013e00 <test_3>:
   13e00:	7ffec097          	auipc	ra,0x7ffec
   13e04:	23008093          	addi	ra,ra,560 # 80000030 <tdat>
   13e08:	0040a183          	lw	gp,4(ra)
   13e0c:	ff010eb7          	lui	t4,0xff010
   13e10:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13e14:	00300e13          	li	t3,3
   13e18:	25d19c63          	bne	gp,t4,14070 <fail>

00013e1c <test_4>:
   13e1c:	7ffec097          	auipc	ra,0x7ffec
   13e20:	21408093          	addi	ra,ra,532 # 80000030 <tdat>
   13e24:	0080a183          	lw	gp,8(ra)
   13e28:	0ff01eb7          	lui	t4,0xff01
   13e2c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   13e30:	00400e13          	li	t3,4
   13e34:	23d19e63          	bne	gp,t4,14070 <fail>

00013e38 <test_5>:
   13e38:	7ffec097          	auipc	ra,0x7ffec
   13e3c:	1f808093          	addi	ra,ra,504 # 80000030 <tdat>
   13e40:	00c0a183          	lw	gp,12(ra)
   13e44:	f00ffeb7          	lui	t4,0xf00ff
   13e48:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13e4c:	00500e13          	li	t3,5
   13e50:	23d19063          	bne	gp,t4,14070 <fail>

00013e54 <test_6>:
   13e54:	7ffec097          	auipc	ra,0x7ffec
   13e58:	1e808093          	addi	ra,ra,488 # 8000003c <tdat4>
   13e5c:	ff40a183          	lw	gp,-12(ra)
   13e60:	00ff0eb7          	lui	t4,0xff0
   13e64:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5ac3>
   13e68:	00600e13          	li	t3,6
   13e6c:	21d19263          	bne	gp,t4,14070 <fail>

00013e70 <test_7>:
   13e70:	7ffec097          	auipc	ra,0x7ffec
   13e74:	1cc08093          	addi	ra,ra,460 # 8000003c <tdat4>
   13e78:	ff80a183          	lw	gp,-8(ra)
   13e7c:	ff010eb7          	lui	t4,0xff010
   13e80:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13e84:	00700e13          	li	t3,7
   13e88:	1fd19463          	bne	gp,t4,14070 <fail>

00013e8c <test_8>:
   13e8c:	7ffec097          	auipc	ra,0x7ffec
   13e90:	1b008093          	addi	ra,ra,432 # 8000003c <tdat4>
   13e94:	ffc0a183          	lw	gp,-4(ra)
   13e98:	0ff01eb7          	lui	t4,0xff01
   13e9c:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   13ea0:	00800e13          	li	t3,8
   13ea4:	1dd19663          	bne	gp,t4,14070 <fail>

00013ea8 <test_9>:
   13ea8:	7ffec097          	auipc	ra,0x7ffec
   13eac:	19408093          	addi	ra,ra,404 # 8000003c <tdat4>
   13eb0:	0000a183          	lw	gp,0(ra)
   13eb4:	f00ffeb7          	lui	t4,0xf00ff
   13eb8:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13ebc:	00900e13          	li	t3,9
   13ec0:	1bd19863          	bne	gp,t4,14070 <fail>

00013ec4 <test_10>:
   13ec4:	7ffec097          	auipc	ra,0x7ffec
   13ec8:	16c08093          	addi	ra,ra,364 # 80000030 <tdat>
   13ecc:	fe008093          	addi	ra,ra,-32
   13ed0:	0200a183          	lw	gp,32(ra)
   13ed4:	00ff0eb7          	lui	t4,0xff0
   13ed8:	0ffe8e93          	addi	t4,t4,255 # ff00ff <_etext+0xfd5ac3>
   13edc:	00a00e13          	li	t3,10
   13ee0:	19d19863          	bne	gp,t4,14070 <fail>

00013ee4 <test_11>:
   13ee4:	7ffec097          	auipc	ra,0x7ffec
   13ee8:	14c08093          	addi	ra,ra,332 # 80000030 <tdat>
   13eec:	ffd08093          	addi	ra,ra,-3
   13ef0:	0070a183          	lw	gp,7(ra)
   13ef4:	ff010eb7          	lui	t4,0xff010
   13ef8:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13efc:	00b00e13          	li	t3,11
   13f00:	17d19863          	bne	gp,t4,14070 <fail>

00013f04 <test_12>:
   13f04:	00c00e13          	li	t3,12
   13f08:	00000213          	li	tp,0
   13f0c:	7ffec097          	auipc	ra,0x7ffec
   13f10:	12808093          	addi	ra,ra,296 # 80000034 <tdat2>
   13f14:	0040a183          	lw	gp,4(ra)
   13f18:	00018313          	mv	t1,gp
   13f1c:	0ff01eb7          	lui	t4,0xff01
   13f20:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   13f24:	15d31663          	bne	t1,t4,14070 <fail>
   13f28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f2c:	00200293          	li	t0,2
   13f30:	fc521ee3          	bne	tp,t0,13f0c <test_12+0x8>

00013f34 <test_13>:
   13f34:	00d00e13          	li	t3,13
   13f38:	00000213          	li	tp,0
   13f3c:	7ffec097          	auipc	ra,0x7ffec
   13f40:	0fc08093          	addi	ra,ra,252 # 80000038 <tdat3>
   13f44:	0040a183          	lw	gp,4(ra)
   13f48:	00000013          	nop
   13f4c:	00018313          	mv	t1,gp
   13f50:	f00ffeb7          	lui	t4,0xf00ff
   13f54:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13f58:	11d31c63          	bne	t1,t4,14070 <fail>
   13f5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f60:	00200293          	li	t0,2
   13f64:	fc521ce3          	bne	tp,t0,13f3c <test_13+0x8>

00013f68 <test_14>:
   13f68:	00e00e13          	li	t3,14
   13f6c:	00000213          	li	tp,0
   13f70:	7ffec097          	auipc	ra,0x7ffec
   13f74:	0c008093          	addi	ra,ra,192 # 80000030 <tdat>
   13f78:	0040a183          	lw	gp,4(ra)
   13f7c:	00000013          	nop
   13f80:	00000013          	nop
   13f84:	00018313          	mv	t1,gp
   13f88:	ff010eb7          	lui	t4,0xff010
   13f8c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   13f90:	0fd31063          	bne	t1,t4,14070 <fail>
   13f94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13f98:	00200293          	li	t0,2
   13f9c:	fc521ae3          	bne	tp,t0,13f70 <test_14+0x8>

00013fa0 <test_15>:
   13fa0:	00f00e13          	li	t3,15
   13fa4:	00000213          	li	tp,0
   13fa8:	7ffec097          	auipc	ra,0x7ffec
   13fac:	08c08093          	addi	ra,ra,140 # 80000034 <tdat2>
   13fb0:	0040a183          	lw	gp,4(ra)
   13fb4:	0ff01eb7          	lui	t4,0xff01
   13fb8:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   13fbc:	0bd19a63          	bne	gp,t4,14070 <fail>
   13fc0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13fc4:	00200293          	li	t0,2
   13fc8:	fe5210e3          	bne	tp,t0,13fa8 <test_15+0x8>

00013fcc <test_16>:
   13fcc:	01000e13          	li	t3,16
   13fd0:	00000213          	li	tp,0
   13fd4:	7ffec097          	auipc	ra,0x7ffec
   13fd8:	06408093          	addi	ra,ra,100 # 80000038 <tdat3>
   13fdc:	00000013          	nop
   13fe0:	0040a183          	lw	gp,4(ra)
   13fe4:	f00ffeb7          	lui	t4,0xf00ff
   13fe8:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   13fec:	09d19263          	bne	gp,t4,14070 <fail>
   13ff0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   13ff4:	00200293          	li	t0,2
   13ff8:	fc521ee3          	bne	tp,t0,13fd4 <test_16+0x8>

00013ffc <test_17>:
   13ffc:	01100e13          	li	t3,17
   14000:	00000213          	li	tp,0
   14004:	7ffec097          	auipc	ra,0x7ffec
   14008:	02c08093          	addi	ra,ra,44 # 80000030 <tdat>
   1400c:	00000013          	nop
   14010:	00000013          	nop
   14014:	0040a183          	lw	gp,4(ra)
   14018:	ff010eb7          	lui	t4,0xff010
   1401c:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   14020:	05d19863          	bne	gp,t4,14070 <fail>
   14024:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14028:	00200293          	li	t0,2
   1402c:	fc521ce3          	bne	tp,t0,14004 <test_17+0x8>

00014030 <test_18>:
   14030:	7ffec197          	auipc	gp,0x7ffec
   14034:	00018193          	mv	gp,gp
   14038:	0001a103          	lw	sp,0(gp) # 80000030 <tdat>
   1403c:	00200113          	li	sp,2
   14040:	00200e93          	li	t4,2
   14044:	01200e13          	li	t3,18
   14048:	03d11463          	bne	sp,t4,14070 <fail>

0001404c <test_19>:
   1404c:	7ffec197          	auipc	gp,0x7ffec
   14050:	fe418193          	addi	gp,gp,-28 # 80000030 <tdat>
   14054:	0001a103          	lw	sp,0(gp)
   14058:	00000013          	nop
   1405c:	00200113          	li	sp,2
   14060:	00200e93          	li	t4,2
   14064:	01300e13          	li	t3,19
   14068:	01d11463          	bne	sp,t4,14070 <fail>
   1406c:	05c01463          	bne	zero,t3,140b4 <pass>

00014070 <fail>:
   14070:	0ff00513          	li	a0,255

00014074 <.delay_fail>:
   14074:	fff50513          	addi	a0,a0,-1
   14078:	fe051ee3          	bnez	a0,14074 <.delay_fail>
   1407c:	02000537          	lui	a0,0x2000
   14080:	04500593          	li	a1,69
   14084:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14088:	05200613          	li	a2,82
   1408c:	00c52023          	sw	a2,0(a0)
   14090:	00c52023          	sw	a2,0(a0)
   14094:	04f00693          	li	a3,79
   14098:	00d52023          	sw	a3,0(a0)
   1409c:	00c52023          	sw	a2,0(a0)
   140a0:	00d00713          	li	a4,13
   140a4:	00e52023          	sw	a4,0(a0)
   140a8:	00a00793          	li	a5,10
   140ac:	00f52023          	sw	a5,0(a0)
   140b0:	858fc06f          	j	10108 <lw_ret>

000140b4 <pass>:
   140b4:	0ff00513          	li	a0,255

000140b8 <.delay_ok>:
   140b8:	fff50513          	addi	a0,a0,-1
   140bc:	fe051ee3          	bnez	a0,140b8 <.delay_ok>
   140c0:	02000537          	lui	a0,0x2000
   140c4:	04f00593          	li	a1,79
   140c8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   140cc:	04b00613          	li	a2,75
   140d0:	00c52023          	sw	a2,0(a0)
   140d4:	00d00693          	li	a3,13
   140d8:	00d52023          	sw	a3,0(a0)
   140dc:	00a00713          	li	a4,10
   140e0:	00e52023          	sw	a4,0(a0)
   140e4:	824fc06f          	j	10108 <lw_ret>

000140e8 <div>:
   140e8:	0ff00513          	li	a0,255

000140ec <.delay_pr>:
   140ec:	fff50513          	addi	a0,a0,-1
   140f0:	fe051ee3          	bnez	a0,140ec <.delay_pr>
   140f4:	00014537          	lui	a0,0x14
   140f8:	11450513          	addi	a0,a0,276 # 14114 <.test_name>
   140fc:	02000637          	lui	a2,0x2000

00014100 <.prname_next>:
   14100:	00050583          	lb	a1,0(a0)
   14104:	00058a63          	beqz	a1,14118 <.prname_done>
   14108:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   1410c:	00150513          	addi	a0,a0,1
   14110:	ff1ff06f          	j	14100 <.prname_next>

00014114 <.test_name>:
   14114:	6964                	flw	fs1,84(a0)
   14116:	0076                	c.slli	zero,0x1d

00014118 <.prname_done>:
   14118:	02e00593          	li	a1,46
   1411c:	00b62023          	sw	a1,0(a2)
   14120:	00b62023          	sw	a1,0(a2)

00014124 <test_2>:
   14124:	01400093          	li	ra,20
   14128:	00600113          	li	sp,6
   1412c:	0220c1b3          	div	gp,ra,sp
   14130:	00300e93          	li	t4,3
   14134:	00200e13          	li	t3,2
   14138:	0dd19463          	bne	gp,t4,14200 <fail>

0001413c <test_3>:
   1413c:	fec00093          	li	ra,-20
   14140:	00600113          	li	sp,6
   14144:	0220c1b3          	div	gp,ra,sp
   14148:	ffd00e93          	li	t4,-3
   1414c:	00300e13          	li	t3,3
   14150:	0bd19863          	bne	gp,t4,14200 <fail>

00014154 <test_4>:
   14154:	01400093          	li	ra,20
   14158:	ffa00113          	li	sp,-6
   1415c:	0220c1b3          	div	gp,ra,sp
   14160:	ffd00e93          	li	t4,-3
   14164:	00400e13          	li	t3,4
   14168:	09d19c63          	bne	gp,t4,14200 <fail>

0001416c <test_5>:
   1416c:	fec00093          	li	ra,-20
   14170:	ffa00113          	li	sp,-6
   14174:	0220c1b3          	div	gp,ra,sp
   14178:	00300e93          	li	t4,3
   1417c:	00500e13          	li	t3,5
   14180:	09d19063          	bne	gp,t4,14200 <fail>

00014184 <test_6>:
   14184:	800000b7          	lui	ra,0x80000
   14188:	00100113          	li	sp,1
   1418c:	0220c1b3          	div	gp,ra,sp
   14190:	80000eb7          	lui	t4,0x80000
   14194:	00600e13          	li	t3,6
   14198:	07d19463          	bne	gp,t4,14200 <fail>

0001419c <test_7>:
   1419c:	800000b7          	lui	ra,0x80000
   141a0:	fff00113          	li	sp,-1
   141a4:	0220c1b3          	div	gp,ra,sp
   141a8:	80000eb7          	lui	t4,0x80000
   141ac:	00700e13          	li	t3,7
   141b0:	05d19863          	bne	gp,t4,14200 <fail>

000141b4 <test_8>:
   141b4:	800000b7          	lui	ra,0x80000
   141b8:	00000113          	li	sp,0
   141bc:	0220c1b3          	div	gp,ra,sp
   141c0:	fff00e93          	li	t4,-1
   141c4:	00800e13          	li	t3,8
   141c8:	03d19c63          	bne	gp,t4,14200 <fail>

000141cc <test_9>:
   141cc:	00100093          	li	ra,1
   141d0:	00000113          	li	sp,0
   141d4:	0220c1b3          	div	gp,ra,sp
   141d8:	fff00e93          	li	t4,-1
   141dc:	00900e13          	li	t3,9
   141e0:	03d19063          	bne	gp,t4,14200 <fail>

000141e4 <test_10>:
   141e4:	00000093          	li	ra,0
   141e8:	00000113          	li	sp,0
   141ec:	0220c1b3          	div	gp,ra,sp
   141f0:	fff00e93          	li	t4,-1
   141f4:	00a00e13          	li	t3,10
   141f8:	01d19463          	bne	gp,t4,14200 <fail>
   141fc:	05c01463          	bne	zero,t3,14244 <pass>

00014200 <fail>:
   14200:	0ff00513          	li	a0,255

00014204 <.delay_fail>:
   14204:	fff50513          	addi	a0,a0,-1
   14208:	fe051ee3          	bnez	a0,14204 <.delay_fail>
   1420c:	02000537          	lui	a0,0x2000
   14210:	04500593          	li	a1,69
   14214:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14218:	05200613          	li	a2,82
   1421c:	00c52023          	sw	a2,0(a0)
   14220:	00c52023          	sw	a2,0(a0)
   14224:	04f00693          	li	a3,79
   14228:	00d52023          	sw	a3,0(a0)
   1422c:	00c52023          	sw	a2,0(a0)
   14230:	00d00713          	li	a4,13
   14234:	00e52023          	sw	a4,0(a0)
   14238:	00a00793          	li	a5,10
   1423c:	00f52023          	sw	a5,0(a0)
   14240:	f35fb06f          	j	10174 <div_ret>

00014244 <pass>:
   14244:	0ff00513          	li	a0,255

00014248 <.delay_ok>:
   14248:	fff50513          	addi	a0,a0,-1
   1424c:	fe051ee3          	bnez	a0,14248 <.delay_ok>
   14250:	02000537          	lui	a0,0x2000
   14254:	04f00593          	li	a1,79
   14258:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1425c:	04b00613          	li	a2,75
   14260:	00c52023          	sw	a2,0(a0)
   14264:	00d00693          	li	a3,13
   14268:	00d52023          	sw	a3,0(a0)
   1426c:	00a00713          	li	a4,10
   14270:	00e52023          	sw	a4,0(a0)
   14274:	f01fb06f          	j	10174 <div_ret>

00014278 <auipc>:
   14278:	0ff00513          	li	a0,255

0001427c <.delay_pr>:
   1427c:	fff50513          	addi	a0,a0,-1
   14280:	fe051ee3          	bnez	a0,1427c <.delay_pr>
   14284:	00014537          	lui	a0,0x14
   14288:	2a450513          	addi	a0,a0,676 # 142a4 <.test_name>
   1428c:	02000637          	lui	a2,0x2000

00014290 <.prname_next>:
   14290:	00050583          	lb	a1,0(a0)
   14294:	00058c63          	beqz	a1,142ac <.prname_done>
   14298:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   1429c:	00150513          	addi	a0,a0,1
   142a0:	ff1ff06f          	j	14290 <.prname_next>

000142a4 <.test_name>:
   142a4:	7561                	lui	a0,0xffff8
   142a6:	7069                	c.lui	zero,0xffffa
   142a8:	00000063          	beqz	zero,142a8 <.test_name+0x4>

000142ac <.prname_done>:
   142ac:	02e00593          	li	a1,46
   142b0:	00b62023          	sw	a1,0(a2)
   142b4:	00b62023          	sw	a1,0(a2)

000142b8 <test_2>:
   142b8:	00002517          	auipc	a0,0x2
   142bc:	71c50513          	addi	a0,a0,1820 # 169d4 <test_22+0x4>
   142c0:	004005ef          	jal	a1,142c4 <test_2+0xc>
   142c4:	40b50533          	sub	a0,a0,a1
   142c8:	00002eb7          	lui	t4,0x2
   142cc:	710e8e93          	addi	t4,t4,1808 # 2710 <_start-0xd8f0>
   142d0:	00200e13          	li	t3,2
   142d4:	03d51463          	bne	a0,t4,142fc <fail>

000142d8 <test_3>:
   142d8:	ffffe517          	auipc	a0,0xffffe
   142dc:	8fc50513          	addi	a0,a0,-1796 # 11bd4 <test_19+0x14>
   142e0:	004005ef          	jal	a1,142e4 <test_3+0xc>
   142e4:	40b50533          	sub	a0,a0,a1
   142e8:	ffffeeb7          	lui	t4,0xffffe
   142ec:	8f0e8e93          	addi	t4,t4,-1808 # ffffd8f0 <_edata+0x7fffd880>
   142f0:	00300e13          	li	t3,3
   142f4:	01d51463          	bne	a0,t4,142fc <fail>
   142f8:	05c01463          	bne	zero,t3,14340 <pass>

000142fc <fail>:
   142fc:	0ff00513          	li	a0,255

00014300 <.delay_fail>:
   14300:	fff50513          	addi	a0,a0,-1
   14304:	fe051ee3          	bnez	a0,14300 <.delay_fail>
   14308:	02000537          	lui	a0,0x2000
   1430c:	04500593          	li	a1,69
   14310:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14314:	05200613          	li	a2,82
   14318:	00c52023          	sw	a2,0(a0)
   1431c:	00c52023          	sw	a2,0(a0)
   14320:	04f00693          	li	a3,79
   14324:	00d52023          	sw	a3,0(a0)
   14328:	00c52023          	sw	a2,0(a0)
   1432c:	00d00713          	li	a4,13
   14330:	00e52023          	sw	a4,0(a0)
   14334:	00a00793          	li	a5,10
   14338:	00f52023          	sw	a5,0(a0)
   1433c:	d9dfb06f          	j	100d8 <auipc_ret>

00014340 <pass>:
   14340:	0ff00513          	li	a0,255

00014344 <.delay_ok>:
   14344:	fff50513          	addi	a0,a0,-1
   14348:	fe051ee3          	bnez	a0,14344 <.delay_ok>
   1434c:	02000537          	lui	a0,0x2000
   14350:	04f00593          	li	a1,79
   14354:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14358:	04b00613          	li	a2,75
   1435c:	00c52023          	sw	a2,0(a0)
   14360:	00d00693          	li	a3,13
   14364:	00d52023          	sw	a3,0(a0)
   14368:	00a00713          	li	a4,10
   1436c:	00e52023          	sw	a4,0(a0)
   14370:	d69fb06f          	j	100d8 <auipc_ret>
   14374:	0000                	unimp
	...

00014378 <addi>:
   14378:	0ff00513          	li	a0,255

0001437c <.delay_pr>:
   1437c:	fff50513          	addi	a0,a0,-1
   14380:	fe051ee3          	bnez	a0,1437c <.delay_pr>
   14384:	00014537          	lui	a0,0x14
   14388:	3a450513          	addi	a0,a0,932 # 143a4 <.test_name>
   1438c:	02000637          	lui	a2,0x2000

00014390 <.prname_next>:
   14390:	00050583          	lb	a1,0(a0)
   14394:	00058c63          	beqz	a1,143ac <.prname_done>
   14398:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   1439c:	00150513          	addi	a0,a0,1
   143a0:	ff1ff06f          	j	14390 <.prname_next>

000143a4 <.test_name>:
   143a4:	6461                	lui	s0,0x18
   143a6:	6964                	flw	fs1,84(a0)
   143a8:	0000                	unimp
	...

000143ac <.prname_done>:
   143ac:	02e00593          	li	a1,46
   143b0:	00b62023          	sw	a1,0(a2)
   143b4:	00b62023          	sw	a1,0(a2)

000143b8 <test_2>:
   143b8:	00000093          	li	ra,0
   143bc:	00008193          	mv	gp,ra
   143c0:	00000e93          	li	t4,0
   143c4:	00200e13          	li	t3,2
   143c8:	27d19c63          	bne	gp,t4,14640 <fail>

000143cc <test_3>:
   143cc:	00100093          	li	ra,1
   143d0:	00108193          	addi	gp,ra,1 # 80000001 <_edata+0xffffff91>
   143d4:	00200e93          	li	t4,2
   143d8:	00300e13          	li	t3,3
   143dc:	27d19263          	bne	gp,t4,14640 <fail>

000143e0 <test_4>:
   143e0:	00300093          	li	ra,3
   143e4:	00708193          	addi	gp,ra,7
   143e8:	00a00e93          	li	t4,10
   143ec:	00400e13          	li	t3,4
   143f0:	25d19863          	bne	gp,t4,14640 <fail>

000143f4 <test_5>:
   143f4:	00000093          	li	ra,0
   143f8:	80008193          	addi	gp,ra,-2048
   143fc:	80000e93          	li	t4,-2048
   14400:	00500e13          	li	t3,5
   14404:	23d19e63          	bne	gp,t4,14640 <fail>

00014408 <test_6>:
   14408:	800000b7          	lui	ra,0x80000
   1440c:	00008193          	mv	gp,ra
   14410:	80000eb7          	lui	t4,0x80000
   14414:	00600e13          	li	t3,6
   14418:	23d19463          	bne	gp,t4,14640 <fail>

0001441c <test_7>:
   1441c:	800000b7          	lui	ra,0x80000
   14420:	80008193          	addi	gp,ra,-2048 # 7ffff800 <_edata+0xfffff790>
   14424:	80000eb7          	lui	t4,0x80000
   14428:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_edata+0xfffff790>
   1442c:	00700e13          	li	t3,7
   14430:	21d19863          	bne	gp,t4,14640 <fail>

00014434 <test_8>:
   14434:	00000093          	li	ra,0
   14438:	7ff08193          	addi	gp,ra,2047
   1443c:	7ff00e93          	li	t4,2047
   14440:	00800e13          	li	t3,8
   14444:	1fd19e63          	bne	gp,t4,14640 <fail>

00014448 <test_9>:
   14448:	800000b7          	lui	ra,0x80000
   1444c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14450:	00008193          	mv	gp,ra
   14454:	80000eb7          	lui	t4,0x80000
   14458:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   1445c:	00900e13          	li	t3,9
   14460:	1fd19063          	bne	gp,t4,14640 <fail>

00014464 <test_10>:
   14464:	800000b7          	lui	ra,0x80000
   14468:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1446c:	7ff08193          	addi	gp,ra,2047
   14470:	80000eb7          	lui	t4,0x80000
   14474:	7fee8e93          	addi	t4,t4,2046 # 800007fe <_edata+0x78e>
   14478:	00a00e13          	li	t3,10
   1447c:	1dd19263          	bne	gp,t4,14640 <fail>

00014480 <test_11>:
   14480:	800000b7          	lui	ra,0x80000
   14484:	7ff08193          	addi	gp,ra,2047 # 800007ff <_edata+0x78f>
   14488:	80000eb7          	lui	t4,0x80000
   1448c:	7ffe8e93          	addi	t4,t4,2047 # 800007ff <_edata+0x78f>
   14490:	00b00e13          	li	t3,11
   14494:	1bd19663          	bne	gp,t4,14640 <fail>

00014498 <test_12>:
   14498:	800000b7          	lui	ra,0x80000
   1449c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   144a0:	80008193          	addi	gp,ra,-2048
   144a4:	7ffffeb7          	lui	t4,0x7ffff
   144a8:	7ffe8e93          	addi	t4,t4,2047 # 7ffff7ff <_etext+0x7ffe51c3>
   144ac:	00c00e13          	li	t3,12
   144b0:	19d19863          	bne	gp,t4,14640 <fail>

000144b4 <test_13>:
   144b4:	00000093          	li	ra,0
   144b8:	fff08193          	addi	gp,ra,-1
   144bc:	fff00e93          	li	t4,-1
   144c0:	00d00e13          	li	t3,13
   144c4:	17d19e63          	bne	gp,t4,14640 <fail>

000144c8 <test_14>:
   144c8:	fff00093          	li	ra,-1
   144cc:	00108193          	addi	gp,ra,1
   144d0:	00000e93          	li	t4,0
   144d4:	00e00e13          	li	t3,14
   144d8:	17d19463          	bne	gp,t4,14640 <fail>

000144dc <test_15>:
   144dc:	fff00093          	li	ra,-1
   144e0:	fff08193          	addi	gp,ra,-1
   144e4:	ffe00e93          	li	t4,-2
   144e8:	00f00e13          	li	t3,15
   144ec:	15d19a63          	bne	gp,t4,14640 <fail>

000144f0 <test_16>:
   144f0:	800000b7          	lui	ra,0x80000
   144f4:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   144f8:	00108193          	addi	gp,ra,1
   144fc:	80000eb7          	lui	t4,0x80000
   14500:	01000e13          	li	t3,16
   14504:	13d19e63          	bne	gp,t4,14640 <fail>

00014508 <test_17>:
   14508:	00d00093          	li	ra,13
   1450c:	00b08093          	addi	ra,ra,11
   14510:	01800e93          	li	t4,24
   14514:	01100e13          	li	t3,17
   14518:	13d09463          	bne	ra,t4,14640 <fail>

0001451c <test_18>:
   1451c:	00000213          	li	tp,0
   14520:	00d00093          	li	ra,13
   14524:	00b08193          	addi	gp,ra,11
   14528:	00018313          	mv	t1,gp
   1452c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14530:	00200293          	li	t0,2
   14534:	fe5216e3          	bne	tp,t0,14520 <test_18+0x4>
   14538:	01800e93          	li	t4,24
   1453c:	01200e13          	li	t3,18
   14540:	11d31063          	bne	t1,t4,14640 <fail>

00014544 <test_19>:
   14544:	00000213          	li	tp,0
   14548:	00d00093          	li	ra,13
   1454c:	00a08193          	addi	gp,ra,10
   14550:	00000013          	nop
   14554:	00018313          	mv	t1,gp
   14558:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1455c:	00200293          	li	t0,2
   14560:	fe5214e3          	bne	tp,t0,14548 <test_19+0x4>
   14564:	01700e93          	li	t4,23
   14568:	01300e13          	li	t3,19
   1456c:	0dd31a63          	bne	t1,t4,14640 <fail>

00014570 <test_20>:
   14570:	00000213          	li	tp,0
   14574:	00d00093          	li	ra,13
   14578:	00908193          	addi	gp,ra,9
   1457c:	00000013          	nop
   14580:	00000013          	nop
   14584:	00018313          	mv	t1,gp
   14588:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1458c:	00200293          	li	t0,2
   14590:	fe5212e3          	bne	tp,t0,14574 <test_20+0x4>
   14594:	01600e93          	li	t4,22
   14598:	01400e13          	li	t3,20
   1459c:	0bd31263          	bne	t1,t4,14640 <fail>

000145a0 <test_21>:
   145a0:	00000213          	li	tp,0
   145a4:	00d00093          	li	ra,13
   145a8:	00b08193          	addi	gp,ra,11
   145ac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   145b0:	00200293          	li	t0,2
   145b4:	fe5218e3          	bne	tp,t0,145a4 <test_21+0x4>
   145b8:	01800e93          	li	t4,24
   145bc:	01500e13          	li	t3,21
   145c0:	09d19063          	bne	gp,t4,14640 <fail>

000145c4 <test_22>:
   145c4:	00000213          	li	tp,0
   145c8:	00d00093          	li	ra,13
   145cc:	00000013          	nop
   145d0:	00a08193          	addi	gp,ra,10
   145d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   145d8:	00200293          	li	t0,2
   145dc:	fe5216e3          	bne	tp,t0,145c8 <test_22+0x4>
   145e0:	01700e93          	li	t4,23
   145e4:	01600e13          	li	t3,22
   145e8:	05d19c63          	bne	gp,t4,14640 <fail>

000145ec <test_23>:
   145ec:	00000213          	li	tp,0
   145f0:	00d00093          	li	ra,13
   145f4:	00000013          	nop
   145f8:	00000013          	nop
   145fc:	00908193          	addi	gp,ra,9
   14600:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14604:	00200293          	li	t0,2
   14608:	fe5214e3          	bne	tp,t0,145f0 <test_23+0x4>
   1460c:	01600e93          	li	t4,22
   14610:	01700e13          	li	t3,23
   14614:	03d19663          	bne	gp,t4,14640 <fail>

00014618 <test_24>:
   14618:	02000093          	li	ra,32
   1461c:	02000e93          	li	t4,32
   14620:	01800e13          	li	t3,24
   14624:	01d09e63          	bne	ra,t4,14640 <fail>

00014628 <test_25>:
   14628:	02100093          	li	ra,33
   1462c:	03208013          	addi	zero,ra,50
   14630:	00000e93          	li	t4,0
   14634:	01900e13          	li	t3,25
   14638:	01d01463          	bne	zero,t4,14640 <fail>
   1463c:	05c01463          	bne	zero,t3,14684 <pass>

00014640 <fail>:
   14640:	0ff00513          	li	a0,255

00014644 <.delay_fail>:
   14644:	fff50513          	addi	a0,a0,-1
   14648:	fe051ee3          	bnez	a0,14644 <.delay_fail>
   1464c:	02000537          	lui	a0,0x2000
   14650:	04500593          	li	a1,69
   14654:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14658:	05200613          	li	a2,82
   1465c:	00c52023          	sw	a2,0(a0)
   14660:	00c52023          	sw	a2,0(a0)
   14664:	04f00693          	li	a3,79
   14668:	00d52023          	sw	a3,0(a0)
   1466c:	00c52023          	sw	a2,0(a0)
   14670:	00d00713          	li	a4,13
   14674:	00e52023          	sw	a4,0(a0)
   14678:	00a00793          	li	a5,10
   1467c:	00f52023          	sw	a5,0(a0)
   14680:	aa1fb06f          	j	10120 <addi_ret>

00014684 <pass>:
   14684:	0ff00513          	li	a0,255

00014688 <.delay_ok>:
   14688:	fff50513          	addi	a0,a0,-1
   1468c:	fe051ee3          	bnez	a0,14688 <.delay_ok>
   14690:	02000537          	lui	a0,0x2000
   14694:	04f00593          	li	a1,79
   14698:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1469c:	04b00613          	li	a2,75
   146a0:	00c52023          	sw	a2,0(a0)
   146a4:	00d00693          	li	a3,13
   146a8:	00d52023          	sw	a3,0(a0)
   146ac:	00a00713          	li	a4,10
   146b0:	00e52023          	sw	a4,0(a0)
   146b4:	a6dfb06f          	j	10120 <addi_ret>

000146b8 <jalr>:
   146b8:	0ff00513          	li	a0,255

000146bc <.delay_pr>:
   146bc:	fff50513          	addi	a0,a0,-1
   146c0:	fe051ee3          	bnez	a0,146bc <.delay_pr>
   146c4:	00014537          	lui	a0,0x14
   146c8:	6e450513          	addi	a0,a0,1764 # 146e4 <.test_name>
   146cc:	02000637          	lui	a2,0x2000

000146d0 <.prname_next>:
   146d0:	00050583          	lb	a1,0(a0)
   146d4:	00058c63          	beqz	a1,146ec <.prname_done>
   146d8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   146dc:	00150513          	addi	a0,a0,1
   146e0:	ff1ff06f          	j	146d0 <.prname_next>

000146e4 <.test_name>:
   146e4:	616a                	flw	ft2,152(sp)
   146e6:	726c                	flw	fa1,100(a2)
   146e8:	0000                	unimp
	...

000146ec <.prname_done>:
   146ec:	02e00593          	li	a1,46
   146f0:	00b62023          	sw	a1,0(a2)
   146f4:	00b62023          	sw	a1,0(a2)

000146f8 <test_2>:
   146f8:	00200e13          	li	t3,2
   146fc:	00000f93          	li	t6,0
   14700:	00000117          	auipc	sp,0x0
   14704:	01810113          	addi	sp,sp,24 # 14718 <target_2>

00014708 <linkaddr_2>:
   14708:	000109e7          	jalr	s3,sp
   1470c:	00000013          	nop
   14710:	00000013          	nop
   14714:	0e40006f          	j	147f8 <fail>

00014718 <target_2>:
   14718:	00000097          	auipc	ra,0x0
   1471c:	ff008093          	addi	ra,ra,-16 # 14708 <linkaddr_2>
   14720:	00408093          	addi	ra,ra,4
   14724:	0d309a63          	bne	ra,s3,147f8 <fail>

00014728 <test_3>:
   14728:	00300e13          	li	t3,3
   1472c:	00000f93          	li	t6,0
   14730:	00000197          	auipc	gp,0x0
   14734:	01418193          	addi	gp,gp,20 # 14744 <target_3>

00014738 <linkaddr_3>:
   14738:	00018067          	jr	gp
   1473c:	00000013          	nop
   14740:	0b80006f          	j	147f8 <fail>

00014744 <target_3>:
   14744:	0a0f9a63          	bnez	t6,147f8 <fail>

00014748 <test_4>:
   14748:	00400e13          	li	t3,4
   1474c:	00000213          	li	tp,0
   14750:	00000317          	auipc	t1,0x0
   14754:	01030313          	addi	t1,t1,16 # 14760 <test_4+0x18>
   14758:	000309e7          	jalr	s3,t1
   1475c:	09c01e63          	bne	zero,t3,147f8 <fail>
   14760:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14764:	00200293          	li	t0,2
   14768:	fe5214e3          	bne	tp,t0,14750 <test_4+0x8>

0001476c <test_5>:
   1476c:	00500e13          	li	t3,5
   14770:	00000213          	li	tp,0
   14774:	00000317          	auipc	t1,0x0
   14778:	01430313          	addi	t1,t1,20 # 14788 <test_5+0x1c>
   1477c:	00000013          	nop
   14780:	000309e7          	jalr	s3,t1
   14784:	07c01a63          	bne	zero,t3,147f8 <fail>
   14788:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1478c:	00200293          	li	t0,2
   14790:	fe5212e3          	bne	tp,t0,14774 <test_5+0x8>

00014794 <test_6>:
   14794:	00600e13          	li	t3,6
   14798:	00000213          	li	tp,0
   1479c:	00000317          	auipc	t1,0x0
   147a0:	01830313          	addi	t1,t1,24 # 147b4 <test_6+0x20>
   147a4:	00000013          	nop
   147a8:	00000013          	nop
   147ac:	000309e7          	jalr	s3,t1
   147b0:	05c01463          	bne	zero,t3,147f8 <fail>
   147b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   147b8:	00200293          	li	t0,2
   147bc:	fe5210e3          	bne	tp,t0,1479c <test_6+0x8>

000147c0 <test_7>:
   147c0:	00100093          	li	ra,1
   147c4:	00000117          	auipc	sp,0x0
   147c8:	01c10113          	addi	sp,sp,28 # 147e0 <test_7+0x20>
   147cc:	ffc109e7          	jalr	s3,-4(sp)
   147d0:	00108093          	addi	ra,ra,1
   147d4:	00108093          	addi	ra,ra,1
   147d8:	00108093          	addi	ra,ra,1
   147dc:	00108093          	addi	ra,ra,1
   147e0:	00108093          	addi	ra,ra,1
   147e4:	00108093          	addi	ra,ra,1
   147e8:	00400e93          	li	t4,4
   147ec:	00700e13          	li	t3,7
   147f0:	01d09463          	bne	ra,t4,147f8 <fail>
   147f4:	05c01463          	bne	zero,t3,1483c <pass>

000147f8 <fail>:
   147f8:	0ff00513          	li	a0,255

000147fc <.delay_fail>:
   147fc:	fff50513          	addi	a0,a0,-1
   14800:	fe051ee3          	bnez	a0,147fc <.delay_fail>
   14804:	02000537          	lui	a0,0x2000
   14808:	04500593          	li	a1,69
   1480c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14810:	05200613          	li	a2,82
   14814:	00c52023          	sw	a2,0(a0)
   14818:	00c52023          	sw	a2,0(a0)
   1481c:	04f00693          	li	a3,79
   14820:	00d52023          	sw	a3,0(a0)
   14824:	00c52023          	sw	a2,0(a0)
   14828:	00d00713          	li	a4,13
   1482c:	00e52023          	sw	a4,0(a0)
   14830:	00a00793          	li	a5,10
   14834:	00f52023          	sw	a5,0(a0)
   14838:	8adfb06f          	j	100e4 <jalr_ret>

0001483c <pass>:
   1483c:	0ff00513          	li	a0,255

00014840 <.delay_ok>:
   14840:	fff50513          	addi	a0,a0,-1
   14844:	fe051ee3          	bnez	a0,14840 <.delay_ok>
   14848:	02000537          	lui	a0,0x2000
   1484c:	04f00593          	li	a1,79
   14850:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14854:	04b00613          	li	a2,75
   14858:	00c52023          	sw	a2,0(a0)
   1485c:	00d00693          	li	a3,13
   14860:	00d52023          	sw	a3,0(a0)
   14864:	00a00713          	li	a4,10
   14868:	00e52023          	sw	a4,0(a0)
   1486c:	879fb06f          	j	100e4 <jalr_ret>

00014870 <bne>:
   14870:	0ff00513          	li	a0,255

00014874 <.delay_pr>:
   14874:	fff50513          	addi	a0,a0,-1
   14878:	fe051ee3          	bnez	a0,14874 <.delay_pr>
   1487c:	00015537          	lui	a0,0x15
   14880:	89c50513          	addi	a0,a0,-1892 # 1489c <.test_name>
   14884:	02000637          	lui	a2,0x2000

00014888 <.prname_next>:
   14888:	00050583          	lb	a1,0(a0)
   1488c:	00058a63          	beqz	a1,148a0 <.prname_done>
   14890:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   14894:	00150513          	addi	a0,a0,1
   14898:	ff1ff06f          	j	14888 <.prname_next>

0001489c <.test_name>:
   1489c:	6e62                	flw	ft8,24(sp)
   1489e:	0065                	c.nop	25

000148a0 <.prname_done>:
   148a0:	02e00593          	li	a1,46
   148a4:	00b62023          	sw	a1,0(a2)
   148a8:	00b62023          	sw	a1,0(a2)

000148ac <test_2>:
   148ac:	00200e13          	li	t3,2
   148b0:	00000093          	li	ra,0
   148b4:	00100113          	li	sp,1
   148b8:	00209663          	bne	ra,sp,148c4 <test_2+0x18>
   148bc:	2bc01a63          	bne	zero,t3,14b70 <fail>
   148c0:	01c01663          	bne	zero,t3,148cc <test_3>
   148c4:	fe209ee3          	bne	ra,sp,148c0 <test_2+0x14>
   148c8:	2bc01463          	bne	zero,t3,14b70 <fail>

000148cc <test_3>:
   148cc:	00300e13          	li	t3,3
   148d0:	00100093          	li	ra,1
   148d4:	00000113          	li	sp,0
   148d8:	00209663          	bne	ra,sp,148e4 <test_3+0x18>
   148dc:	29c01a63          	bne	zero,t3,14b70 <fail>
   148e0:	01c01663          	bne	zero,t3,148ec <test_4>
   148e4:	fe209ee3          	bne	ra,sp,148e0 <test_3+0x14>
   148e8:	29c01463          	bne	zero,t3,14b70 <fail>

000148ec <test_4>:
   148ec:	00400e13          	li	t3,4
   148f0:	fff00093          	li	ra,-1
   148f4:	00100113          	li	sp,1
   148f8:	00209663          	bne	ra,sp,14904 <test_4+0x18>
   148fc:	27c01a63          	bne	zero,t3,14b70 <fail>
   14900:	01c01663          	bne	zero,t3,1490c <test_5>
   14904:	fe209ee3          	bne	ra,sp,14900 <test_4+0x14>
   14908:	27c01463          	bne	zero,t3,14b70 <fail>

0001490c <test_5>:
   1490c:	00500e13          	li	t3,5
   14910:	00100093          	li	ra,1
   14914:	fff00113          	li	sp,-1
   14918:	00209663          	bne	ra,sp,14924 <test_5+0x18>
   1491c:	25c01a63          	bne	zero,t3,14b70 <fail>
   14920:	01c01663          	bne	zero,t3,1492c <test_6>
   14924:	fe209ee3          	bne	ra,sp,14920 <test_5+0x14>
   14928:	25c01463          	bne	zero,t3,14b70 <fail>

0001492c <test_6>:
   1492c:	00600e13          	li	t3,6
   14930:	00000093          	li	ra,0
   14934:	00000113          	li	sp,0
   14938:	00209463          	bne	ra,sp,14940 <test_6+0x14>
   1493c:	01c01463          	bne	zero,t3,14944 <test_6+0x18>
   14940:	23c01863          	bne	zero,t3,14b70 <fail>
   14944:	fe209ee3          	bne	ra,sp,14940 <test_6+0x14>

00014948 <test_7>:
   14948:	00700e13          	li	t3,7
   1494c:	00100093          	li	ra,1
   14950:	00100113          	li	sp,1
   14954:	00209463          	bne	ra,sp,1495c <test_7+0x14>
   14958:	01c01463          	bne	zero,t3,14960 <test_7+0x18>
   1495c:	21c01a63          	bne	zero,t3,14b70 <fail>
   14960:	fe209ee3          	bne	ra,sp,1495c <test_7+0x14>

00014964 <test_8>:
   14964:	00800e13          	li	t3,8
   14968:	fff00093          	li	ra,-1
   1496c:	fff00113          	li	sp,-1
   14970:	00209463          	bne	ra,sp,14978 <test_8+0x14>
   14974:	01c01463          	bne	zero,t3,1497c <test_8+0x18>
   14978:	1fc01c63          	bne	zero,t3,14b70 <fail>
   1497c:	fe209ee3          	bne	ra,sp,14978 <test_8+0x14>

00014980 <test_9>:
   14980:	00900e13          	li	t3,9
   14984:	00000213          	li	tp,0
   14988:	00000093          	li	ra,0
   1498c:	00000113          	li	sp,0
   14990:	1e209063          	bne	ra,sp,14b70 <fail>
   14994:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14998:	00200293          	li	t0,2
   1499c:	fe5216e3          	bne	tp,t0,14988 <test_9+0x8>

000149a0 <test_10>:
   149a0:	00a00e13          	li	t3,10
   149a4:	00000213          	li	tp,0
   149a8:	00000093          	li	ra,0
   149ac:	00000113          	li	sp,0
   149b0:	00000013          	nop
   149b4:	1a209e63          	bne	ra,sp,14b70 <fail>
   149b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   149bc:	00200293          	li	t0,2
   149c0:	fe5214e3          	bne	tp,t0,149a8 <test_10+0x8>

000149c4 <test_11>:
   149c4:	00b00e13          	li	t3,11
   149c8:	00000213          	li	tp,0
   149cc:	00000093          	li	ra,0
   149d0:	00000113          	li	sp,0
   149d4:	00000013          	nop
   149d8:	00000013          	nop
   149dc:	18209a63          	bne	ra,sp,14b70 <fail>
   149e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   149e4:	00200293          	li	t0,2
   149e8:	fe5212e3          	bne	tp,t0,149cc <test_11+0x8>

000149ec <test_12>:
   149ec:	00c00e13          	li	t3,12
   149f0:	00000213          	li	tp,0
   149f4:	00000093          	li	ra,0
   149f8:	00000013          	nop
   149fc:	00000113          	li	sp,0
   14a00:	16209863          	bne	ra,sp,14b70 <fail>
   14a04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a08:	00200293          	li	t0,2
   14a0c:	fe5214e3          	bne	tp,t0,149f4 <test_12+0x8>

00014a10 <test_13>:
   14a10:	00d00e13          	li	t3,13
   14a14:	00000213          	li	tp,0
   14a18:	00000093          	li	ra,0
   14a1c:	00000013          	nop
   14a20:	00000113          	li	sp,0
   14a24:	00000013          	nop
   14a28:	14209463          	bne	ra,sp,14b70 <fail>
   14a2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a30:	00200293          	li	t0,2
   14a34:	fe5212e3          	bne	tp,t0,14a18 <test_13+0x8>

00014a38 <test_14>:
   14a38:	00e00e13          	li	t3,14
   14a3c:	00000213          	li	tp,0
   14a40:	00000093          	li	ra,0
   14a44:	00000013          	nop
   14a48:	00000013          	nop
   14a4c:	00000113          	li	sp,0
   14a50:	12209063          	bne	ra,sp,14b70 <fail>
   14a54:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a58:	00200293          	li	t0,2
   14a5c:	fe5212e3          	bne	tp,t0,14a40 <test_14+0x8>

00014a60 <test_15>:
   14a60:	00f00e13          	li	t3,15
   14a64:	00000213          	li	tp,0
   14a68:	00000093          	li	ra,0
   14a6c:	00000113          	li	sp,0
   14a70:	10209063          	bne	ra,sp,14b70 <fail>
   14a74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a78:	00200293          	li	t0,2
   14a7c:	fe5216e3          	bne	tp,t0,14a68 <test_15+0x8>

00014a80 <test_16>:
   14a80:	01000e13          	li	t3,16
   14a84:	00000213          	li	tp,0
   14a88:	00000093          	li	ra,0
   14a8c:	00000113          	li	sp,0
   14a90:	00000013          	nop
   14a94:	0c209e63          	bne	ra,sp,14b70 <fail>
   14a98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14a9c:	00200293          	li	t0,2
   14aa0:	fe5214e3          	bne	tp,t0,14a88 <test_16+0x8>

00014aa4 <test_17>:
   14aa4:	01100e13          	li	t3,17
   14aa8:	00000213          	li	tp,0
   14aac:	00000093          	li	ra,0
   14ab0:	00000113          	li	sp,0
   14ab4:	00000013          	nop
   14ab8:	00000013          	nop
   14abc:	0a209a63          	bne	ra,sp,14b70 <fail>
   14ac0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ac4:	00200293          	li	t0,2
   14ac8:	fe5212e3          	bne	tp,t0,14aac <test_17+0x8>

00014acc <test_18>:
   14acc:	01200e13          	li	t3,18
   14ad0:	00000213          	li	tp,0
   14ad4:	00000093          	li	ra,0
   14ad8:	00000013          	nop
   14adc:	00000113          	li	sp,0
   14ae0:	08209863          	bne	ra,sp,14b70 <fail>
   14ae4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ae8:	00200293          	li	t0,2
   14aec:	fe5214e3          	bne	tp,t0,14ad4 <test_18+0x8>

00014af0 <test_19>:
   14af0:	01300e13          	li	t3,19
   14af4:	00000213          	li	tp,0
   14af8:	00000093          	li	ra,0
   14afc:	00000013          	nop
   14b00:	00000113          	li	sp,0
   14b04:	00000013          	nop
   14b08:	06209463          	bne	ra,sp,14b70 <fail>
   14b0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14b10:	00200293          	li	t0,2
   14b14:	fe5212e3          	bne	tp,t0,14af8 <test_19+0x8>

00014b18 <test_20>:
   14b18:	01400e13          	li	t3,20
   14b1c:	00000213          	li	tp,0
   14b20:	00000093          	li	ra,0
   14b24:	00000013          	nop
   14b28:	00000013          	nop
   14b2c:	00000113          	li	sp,0
   14b30:	04209063          	bne	ra,sp,14b70 <fail>
   14b34:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14b38:	00200293          	li	t0,2
   14b3c:	fe5212e3          	bne	tp,t0,14b20 <test_20+0x8>

00014b40 <test_21>:
   14b40:	00100093          	li	ra,1
   14b44:	00009a63          	bnez	ra,14b58 <test_21+0x18>
   14b48:	00108093          	addi	ra,ra,1
   14b4c:	00108093          	addi	ra,ra,1
   14b50:	00108093          	addi	ra,ra,1
   14b54:	00108093          	addi	ra,ra,1
   14b58:	00108093          	addi	ra,ra,1
   14b5c:	00108093          	addi	ra,ra,1
   14b60:	00300e93          	li	t4,3
   14b64:	01500e13          	li	t3,21
   14b68:	01d09463          	bne	ra,t4,14b70 <fail>
   14b6c:	05c01463          	bne	zero,t3,14bb4 <pass>

00014b70 <fail>:
   14b70:	0ff00513          	li	a0,255

00014b74 <.delay_fail>:
   14b74:	fff50513          	addi	a0,a0,-1
   14b78:	fe051ee3          	bnez	a0,14b74 <.delay_fail>
   14b7c:	02000537          	lui	a0,0x2000
   14b80:	04500593          	li	a1,69
   14b84:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14b88:	05200613          	li	a2,82
   14b8c:	00c52023          	sw	a2,0(a0)
   14b90:	00c52023          	sw	a2,0(a0)
   14b94:	04f00693          	li	a3,79
   14b98:	00d52023          	sw	a3,0(a0)
   14b9c:	00c52023          	sw	a2,0(a0)
   14ba0:	00d00713          	li	a4,13
   14ba4:	00e52023          	sw	a4,0(a0)
   14ba8:	00a00793          	li	a5,10
   14bac:	00f52023          	sw	a5,0(a0)
   14bb0:	d3cfb06f          	j	100ec <bne_ret>

00014bb4 <pass>:
   14bb4:	0ff00513          	li	a0,255

00014bb8 <.delay_ok>:
   14bb8:	fff50513          	addi	a0,a0,-1
   14bbc:	fe051ee3          	bnez	a0,14bb8 <.delay_ok>
   14bc0:	02000537          	lui	a0,0x2000
   14bc4:	04f00593          	li	a1,79
   14bc8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14bcc:	04b00613          	li	a2,75
   14bd0:	00c52023          	sw	a2,0(a0)
   14bd4:	00d00693          	li	a3,13
   14bd8:	00d52023          	sw	a3,0(a0)
   14bdc:	00a00713          	li	a4,10
   14be0:	00e52023          	sw	a4,0(a0)
   14be4:	d08fb06f          	j	100ec <bne_ret>

00014be8 <bgeu>:
   14be8:	0ff00513          	li	a0,255

00014bec <.delay_pr>:
   14bec:	fff50513          	addi	a0,a0,-1
   14bf0:	fe051ee3          	bnez	a0,14bec <.delay_pr>
   14bf4:	00015537          	lui	a0,0x15
   14bf8:	c1450513          	addi	a0,a0,-1004 # 14c14 <.test_name>
   14bfc:	02000637          	lui	a2,0x2000

00014c00 <.prname_next>:
   14c00:	00050583          	lb	a1,0(a0)
   14c04:	00058c63          	beqz	a1,14c1c <.prname_done>
   14c08:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   14c0c:	00150513          	addi	a0,a0,1
   14c10:	ff1ff06f          	j	14c00 <.prname_next>

00014c14 <.test_name>:
   14c14:	6762                	flw	fa4,24(sp)
   14c16:	7565                	lui	a0,0xffff9
   14c18:	0000                	unimp
	...

00014c1c <.prname_done>:
   14c1c:	02e00593          	li	a1,46
   14c20:	00b62023          	sw	a1,0(a2)
   14c24:	00b62023          	sw	a1,0(a2)

00014c28 <test_2>:
   14c28:	00200e13          	li	t3,2
   14c2c:	00000093          	li	ra,0
   14c30:	00000113          	li	sp,0
   14c34:	0020f663          	bgeu	ra,sp,14c40 <test_2+0x18>
   14c38:	35c01263          	bne	zero,t3,14f7c <fail>
   14c3c:	01c01663          	bne	zero,t3,14c48 <test_3>
   14c40:	fe20fee3          	bgeu	ra,sp,14c3c <test_2+0x14>
   14c44:	33c01c63          	bne	zero,t3,14f7c <fail>

00014c48 <test_3>:
   14c48:	00300e13          	li	t3,3
   14c4c:	00100093          	li	ra,1
   14c50:	00100113          	li	sp,1
   14c54:	0020f663          	bgeu	ra,sp,14c60 <test_3+0x18>
   14c58:	33c01263          	bne	zero,t3,14f7c <fail>
   14c5c:	01c01663          	bne	zero,t3,14c68 <test_4>
   14c60:	fe20fee3          	bgeu	ra,sp,14c5c <test_3+0x14>
   14c64:	31c01c63          	bne	zero,t3,14f7c <fail>

00014c68 <test_4>:
   14c68:	00400e13          	li	t3,4
   14c6c:	fff00093          	li	ra,-1
   14c70:	fff00113          	li	sp,-1
   14c74:	0020f663          	bgeu	ra,sp,14c80 <test_4+0x18>
   14c78:	31c01263          	bne	zero,t3,14f7c <fail>
   14c7c:	01c01663          	bne	zero,t3,14c88 <test_5>
   14c80:	fe20fee3          	bgeu	ra,sp,14c7c <test_4+0x14>
   14c84:	2fc01c63          	bne	zero,t3,14f7c <fail>

00014c88 <test_5>:
   14c88:	00500e13          	li	t3,5
   14c8c:	00100093          	li	ra,1
   14c90:	00000113          	li	sp,0
   14c94:	0020f663          	bgeu	ra,sp,14ca0 <test_5+0x18>
   14c98:	2fc01263          	bne	zero,t3,14f7c <fail>
   14c9c:	01c01663          	bne	zero,t3,14ca8 <test_6>
   14ca0:	fe20fee3          	bgeu	ra,sp,14c9c <test_5+0x14>
   14ca4:	2dc01c63          	bne	zero,t3,14f7c <fail>

00014ca8 <test_6>:
   14ca8:	00600e13          	li	t3,6
   14cac:	fff00093          	li	ra,-1
   14cb0:	ffe00113          	li	sp,-2
   14cb4:	0020f663          	bgeu	ra,sp,14cc0 <test_6+0x18>
   14cb8:	2dc01263          	bne	zero,t3,14f7c <fail>
   14cbc:	01c01663          	bne	zero,t3,14cc8 <test_7>
   14cc0:	fe20fee3          	bgeu	ra,sp,14cbc <test_6+0x14>
   14cc4:	2bc01c63          	bne	zero,t3,14f7c <fail>

00014cc8 <test_7>:
   14cc8:	00700e13          	li	t3,7
   14ccc:	fff00093          	li	ra,-1
   14cd0:	00000113          	li	sp,0
   14cd4:	0020f663          	bgeu	ra,sp,14ce0 <test_7+0x18>
   14cd8:	2bc01263          	bne	zero,t3,14f7c <fail>
   14cdc:	01c01663          	bne	zero,t3,14ce8 <test_8>
   14ce0:	fe20fee3          	bgeu	ra,sp,14cdc <test_7+0x14>
   14ce4:	29c01c63          	bne	zero,t3,14f7c <fail>

00014ce8 <test_8>:
   14ce8:	00800e13          	li	t3,8
   14cec:	00000093          	li	ra,0
   14cf0:	00100113          	li	sp,1
   14cf4:	0020f463          	bgeu	ra,sp,14cfc <test_8+0x14>
   14cf8:	01c01463          	bne	zero,t3,14d00 <test_8+0x18>
   14cfc:	29c01063          	bne	zero,t3,14f7c <fail>
   14d00:	fe20fee3          	bgeu	ra,sp,14cfc <test_8+0x14>

00014d04 <test_9>:
   14d04:	00900e13          	li	t3,9
   14d08:	ffe00093          	li	ra,-2
   14d0c:	fff00113          	li	sp,-1
   14d10:	0020f463          	bgeu	ra,sp,14d18 <test_9+0x14>
   14d14:	01c01463          	bne	zero,t3,14d1c <test_9+0x18>
   14d18:	27c01263          	bne	zero,t3,14f7c <fail>
   14d1c:	fe20fee3          	bgeu	ra,sp,14d18 <test_9+0x14>

00014d20 <test_10>:
   14d20:	00a00e13          	li	t3,10
   14d24:	00000093          	li	ra,0
   14d28:	fff00113          	li	sp,-1
   14d2c:	0020f463          	bgeu	ra,sp,14d34 <test_10+0x14>
   14d30:	01c01463          	bne	zero,t3,14d38 <test_10+0x18>
   14d34:	25c01463          	bne	zero,t3,14f7c <fail>
   14d38:	fe20fee3          	bgeu	ra,sp,14d34 <test_10+0x14>

00014d3c <test_11>:
   14d3c:	00b00e13          	li	t3,11
   14d40:	800000b7          	lui	ra,0x80000
   14d44:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   14d48:	80000137          	lui	sp,0x80000
   14d4c:	0020f463          	bgeu	ra,sp,14d54 <test_11+0x18>
   14d50:	01c01463          	bne	zero,t3,14d58 <test_11+0x1c>
   14d54:	23c01463          	bne	zero,t3,14f7c <fail>
   14d58:	fe20fee3          	bgeu	ra,sp,14d54 <test_11+0x18>

00014d5c <test_12>:
   14d5c:	00c00e13          	li	t3,12
   14d60:	00000213          	li	tp,0
   14d64:	f00000b7          	lui	ra,0xf0000
   14d68:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14d6c:	f0000137          	lui	sp,0xf0000
   14d70:	2020f663          	bgeu	ra,sp,14f7c <fail>
   14d74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14d78:	00200293          	li	t0,2
   14d7c:	fe5214e3          	bne	tp,t0,14d64 <test_12+0x8>

00014d80 <test_13>:
   14d80:	00d00e13          	li	t3,13
   14d84:	00000213          	li	tp,0
   14d88:	f00000b7          	lui	ra,0xf0000
   14d8c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14d90:	f0000137          	lui	sp,0xf0000
   14d94:	00000013          	nop
   14d98:	1e20f263          	bgeu	ra,sp,14f7c <fail>
   14d9c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14da0:	00200293          	li	t0,2
   14da4:	fe5212e3          	bne	tp,t0,14d88 <test_13+0x8>

00014da8 <test_14>:
   14da8:	00e00e13          	li	t3,14
   14dac:	00000213          	li	tp,0
   14db0:	f00000b7          	lui	ra,0xf0000
   14db4:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14db8:	f0000137          	lui	sp,0xf0000
   14dbc:	00000013          	nop
   14dc0:	00000013          	nop
   14dc4:	1a20fc63          	bgeu	ra,sp,14f7c <fail>
   14dc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14dcc:	00200293          	li	t0,2
   14dd0:	fe5210e3          	bne	tp,t0,14db0 <test_14+0x8>

00014dd4 <test_15>:
   14dd4:	00f00e13          	li	t3,15
   14dd8:	00000213          	li	tp,0
   14ddc:	f00000b7          	lui	ra,0xf0000
   14de0:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14de4:	00000013          	nop
   14de8:	f0000137          	lui	sp,0xf0000
   14dec:	1820f863          	bgeu	ra,sp,14f7c <fail>
   14df0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14df4:	00200293          	li	t0,2
   14df8:	fe5212e3          	bne	tp,t0,14ddc <test_15+0x8>

00014dfc <test_16>:
   14dfc:	01000e13          	li	t3,16
   14e00:	00000213          	li	tp,0
   14e04:	f00000b7          	lui	ra,0xf0000
   14e08:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e0c:	00000013          	nop
   14e10:	f0000137          	lui	sp,0xf0000
   14e14:	00000013          	nop
   14e18:	1620f263          	bgeu	ra,sp,14f7c <fail>
   14e1c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e20:	00200293          	li	t0,2
   14e24:	fe5210e3          	bne	tp,t0,14e04 <test_16+0x8>

00014e28 <test_17>:
   14e28:	01100e13          	li	t3,17
   14e2c:	00000213          	li	tp,0
   14e30:	f00000b7          	lui	ra,0xf0000
   14e34:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e38:	00000013          	nop
   14e3c:	00000013          	nop
   14e40:	f0000137          	lui	sp,0xf0000
   14e44:	1220fc63          	bgeu	ra,sp,14f7c <fail>
   14e48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e4c:	00200293          	li	t0,2
   14e50:	fe5210e3          	bne	tp,t0,14e30 <test_17+0x8>

00014e54 <test_18>:
   14e54:	01200e13          	li	t3,18
   14e58:	00000213          	li	tp,0
   14e5c:	f00000b7          	lui	ra,0xf0000
   14e60:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e64:	f0000137          	lui	sp,0xf0000
   14e68:	1020fa63          	bgeu	ra,sp,14f7c <fail>
   14e6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e70:	00200293          	li	t0,2
   14e74:	fe5214e3          	bne	tp,t0,14e5c <test_18+0x8>

00014e78 <test_19>:
   14e78:	01300e13          	li	t3,19
   14e7c:	00000213          	li	tp,0
   14e80:	f00000b7          	lui	ra,0xf0000
   14e84:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14e88:	f0000137          	lui	sp,0xf0000
   14e8c:	00000013          	nop
   14e90:	0e20f663          	bgeu	ra,sp,14f7c <fail>
   14e94:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14e98:	00200293          	li	t0,2
   14e9c:	fe5212e3          	bne	tp,t0,14e80 <test_19+0x8>

00014ea0 <test_20>:
   14ea0:	01400e13          	li	t3,20
   14ea4:	00000213          	li	tp,0
   14ea8:	f00000b7          	lui	ra,0xf0000
   14eac:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14eb0:	f0000137          	lui	sp,0xf0000
   14eb4:	00000013          	nop
   14eb8:	00000013          	nop
   14ebc:	0c20f063          	bgeu	ra,sp,14f7c <fail>
   14ec0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14ec4:	00200293          	li	t0,2
   14ec8:	fe5210e3          	bne	tp,t0,14ea8 <test_20+0x8>

00014ecc <test_21>:
   14ecc:	01500e13          	li	t3,21
   14ed0:	00000213          	li	tp,0
   14ed4:	f00000b7          	lui	ra,0xf0000
   14ed8:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14edc:	00000013          	nop
   14ee0:	f0000137          	lui	sp,0xf0000
   14ee4:	0820fc63          	bgeu	ra,sp,14f7c <fail>
   14ee8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14eec:	00200293          	li	t0,2
   14ef0:	fe5212e3          	bne	tp,t0,14ed4 <test_21+0x8>

00014ef4 <test_22>:
   14ef4:	01600e13          	li	t3,22
   14ef8:	00000213          	li	tp,0
   14efc:	f00000b7          	lui	ra,0xf0000
   14f00:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14f04:	00000013          	nop
   14f08:	f0000137          	lui	sp,0xf0000
   14f0c:	00000013          	nop
   14f10:	0620f663          	bgeu	ra,sp,14f7c <fail>
   14f14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f18:	00200293          	li	t0,2
   14f1c:	fe5210e3          	bne	tp,t0,14efc <test_22+0x8>

00014f20 <test_23>:
   14f20:	01700e13          	li	t3,23
   14f24:	00000213          	li	tp,0
   14f28:	f00000b7          	lui	ra,0xf0000
   14f2c:	fff08093          	addi	ra,ra,-1 # efffffff <_edata+0x6fffff8f>
   14f30:	00000013          	nop
   14f34:	00000013          	nop
   14f38:	f0000137          	lui	sp,0xf0000
   14f3c:	0420f063          	bgeu	ra,sp,14f7c <fail>
   14f40:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   14f44:	00200293          	li	t0,2
   14f48:	fe5210e3          	bne	tp,t0,14f28 <test_23+0x8>

00014f4c <test_24>:
   14f4c:	00100093          	li	ra,1
   14f50:	0000fa63          	bgeu	ra,zero,14f64 <test_24+0x18>
   14f54:	00108093          	addi	ra,ra,1
   14f58:	00108093          	addi	ra,ra,1
   14f5c:	00108093          	addi	ra,ra,1
   14f60:	00108093          	addi	ra,ra,1
   14f64:	00108093          	addi	ra,ra,1
   14f68:	00108093          	addi	ra,ra,1
   14f6c:	00300e93          	li	t4,3
   14f70:	01800e13          	li	t3,24
   14f74:	01d09463          	bne	ra,t4,14f7c <fail>
   14f78:	05c01463          	bne	zero,t3,14fc0 <pass>

00014f7c <fail>:
   14f7c:	0ff00513          	li	a0,255

00014f80 <.delay_fail>:
   14f80:	fff50513          	addi	a0,a0,-1 # ffff8fff <_edata+0x7fff8f8f>
   14f84:	fe051ee3          	bnez	a0,14f80 <.delay_fail>
   14f88:	02000537          	lui	a0,0x2000
   14f8c:	04500593          	li	a1,69
   14f90:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14f94:	05200613          	li	a2,82
   14f98:	00c52023          	sw	a2,0(a0)
   14f9c:	00c52023          	sw	a2,0(a0)
   14fa0:	04f00693          	li	a3,79
   14fa4:	00d52023          	sw	a3,0(a0)
   14fa8:	00c52023          	sw	a2,0(a0)
   14fac:	00d00713          	li	a4,13
   14fb0:	00e52023          	sw	a4,0(a0)
   14fb4:	00a00793          	li	a5,10
   14fb8:	00f52023          	sw	a5,0(a0)
   14fbc:	940fb06f          	j	100fc <bgeu_ret>

00014fc0 <pass>:
   14fc0:	0ff00513          	li	a0,255

00014fc4 <.delay_ok>:
   14fc4:	fff50513          	addi	a0,a0,-1
   14fc8:	fe051ee3          	bnez	a0,14fc4 <.delay_ok>
   14fcc:	02000537          	lui	a0,0x2000
   14fd0:	04f00593          	li	a1,79
   14fd4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   14fd8:	04b00613          	li	a2,75
   14fdc:	00c52023          	sw	a2,0(a0)
   14fe0:	00d00693          	li	a3,13
   14fe4:	00d52023          	sw	a3,0(a0)
   14fe8:	00a00713          	li	a4,10
   14fec:	00e52023          	sw	a4,0(a0)
   14ff0:	90cfb06f          	j	100fc <bgeu_ret>

00014ff4 <mulhu>:
   14ff4:	0ff00513          	li	a0,255

00014ff8 <.delay_pr>:
   14ff8:	fff50513          	addi	a0,a0,-1
   14ffc:	fe051ee3          	bnez	a0,14ff8 <.delay_pr>
   15000:	00015537          	lui	a0,0x15
   15004:	02050513          	addi	a0,a0,32 # 15020 <.test_name>
   15008:	02000637          	lui	a2,0x2000

0001500c <.prname_next>:
   1500c:	00050583          	lb	a1,0(a0)
   15010:	00058c63          	beqz	a1,15028 <.prname_done>
   15014:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   15018:	00150513          	addi	a0,a0,1
   1501c:	ff1ff06f          	j	1500c <.prname_next>

00015020 <.test_name>:
   15020:	756d                	lui	a0,0xffffb
   15022:	686c                	flw	fa1,84(s0)
   15024:	0075                	c.nop	29
	...

00015028 <.prname_done>:
   15028:	02e00593          	li	a1,46
   1502c:	00b62023          	sw	a1,0(a2)
   15030:	00b62023          	sw	a1,0(a2)

00015034 <test_2>:
   15034:	00000093          	li	ra,0
   15038:	00000113          	li	sp,0
   1503c:	0220b1b3          	mulhu	gp,ra,sp
   15040:	00000e93          	li	t4,0
   15044:	00200e13          	li	t3,2
   15048:	4bd19a63          	bne	gp,t4,154fc <fail>

0001504c <test_3>:
   1504c:	00100093          	li	ra,1
   15050:	00100113          	li	sp,1
   15054:	0220b1b3          	mulhu	gp,ra,sp
   15058:	00000e93          	li	t4,0
   1505c:	00300e13          	li	t3,3
   15060:	49d19e63          	bne	gp,t4,154fc <fail>

00015064 <test_4>:
   15064:	00300093          	li	ra,3
   15068:	00700113          	li	sp,7
   1506c:	0220b1b3          	mulhu	gp,ra,sp
   15070:	00000e93          	li	t4,0
   15074:	00400e13          	li	t3,4
   15078:	49d19263          	bne	gp,t4,154fc <fail>

0001507c <test_5>:
   1507c:	00000093          	li	ra,0
   15080:	ffff8137          	lui	sp,0xffff8
   15084:	0220b1b3          	mulhu	gp,ra,sp
   15088:	00000e93          	li	t4,0
   1508c:	00500e13          	li	t3,5
   15090:	47d19663          	bne	gp,t4,154fc <fail>

00015094 <test_6>:
   15094:	800000b7          	lui	ra,0x80000
   15098:	00000113          	li	sp,0
   1509c:	0220b1b3          	mulhu	gp,ra,sp
   150a0:	00000e93          	li	t4,0
   150a4:	00600e13          	li	t3,6
   150a8:	45d19a63          	bne	gp,t4,154fc <fail>

000150ac <test_7>:
   150ac:	800000b7          	lui	ra,0x80000
   150b0:	ffff8137          	lui	sp,0xffff8
   150b4:	0220b1b3          	mulhu	gp,ra,sp
   150b8:	7fffceb7          	lui	t4,0x7fffc
   150bc:	00700e13          	li	t3,7
   150c0:	43d19e63          	bne	gp,t4,154fc <fail>

000150c4 <test_30>:
   150c4:	aaaab0b7          	lui	ra,0xaaaab
   150c8:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   150cc:	00030137          	lui	sp,0x30
   150d0:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15841>
   150d4:	0220b1b3          	mulhu	gp,ra,sp
   150d8:	00020eb7          	lui	t4,0x20
   150dc:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x58c2>
   150e0:	01e00e13          	li	t3,30
   150e4:	41d19c63          	bne	gp,t4,154fc <fail>

000150e8 <test_31>:
   150e8:	000300b7          	lui	ra,0x30
   150ec:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15841>
   150f0:	aaaab137          	lui	sp,0xaaaab
   150f4:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   150f8:	0220b1b3          	mulhu	gp,ra,sp
   150fc:	00020eb7          	lui	t4,0x20
   15100:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x58c2>
   15104:	01f00e13          	li	t3,31
   15108:	3fd19a63          	bne	gp,t4,154fc <fail>

0001510c <test_32>:
   1510c:	ff0000b7          	lui	ra,0xff000
   15110:	ff000137          	lui	sp,0xff000
   15114:	0220b1b3          	mulhu	gp,ra,sp
   15118:	fe010eb7          	lui	t4,0xfe010
   1511c:	02000e13          	li	t3,32
   15120:	3dd19e63          	bne	gp,t4,154fc <fail>

00015124 <test_33>:
   15124:	fff00093          	li	ra,-1
   15128:	fff00113          	li	sp,-1
   1512c:	0220b1b3          	mulhu	gp,ra,sp
   15130:	ffe00e93          	li	t4,-2
   15134:	02100e13          	li	t3,33
   15138:	3dd19263          	bne	gp,t4,154fc <fail>

0001513c <test_34>:
   1513c:	fff00093          	li	ra,-1
   15140:	00100113          	li	sp,1
   15144:	0220b1b3          	mulhu	gp,ra,sp
   15148:	00000e93          	li	t4,0
   1514c:	02200e13          	li	t3,34
   15150:	3bd19663          	bne	gp,t4,154fc <fail>

00015154 <test_35>:
   15154:	00100093          	li	ra,1
   15158:	fff00113          	li	sp,-1
   1515c:	0220b1b3          	mulhu	gp,ra,sp
   15160:	00000e93          	li	t4,0
   15164:	02300e13          	li	t3,35
   15168:	39d19a63          	bne	gp,t4,154fc <fail>

0001516c <test_8>:
   1516c:	00d000b7          	lui	ra,0xd00
   15170:	00b00137          	lui	sp,0xb00
   15174:	0220b0b3          	mulhu	ra,ra,sp
   15178:	00009eb7          	lui	t4,0x9
   1517c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15180:	00800e13          	li	t3,8
   15184:	37d09c63          	bne	ra,t4,154fc <fail>

00015188 <test_9>:
   15188:	00e000b7          	lui	ra,0xe00
   1518c:	00b00137          	lui	sp,0xb00
   15190:	0220b133          	mulhu	sp,ra,sp
   15194:	0000aeb7          	lui	t4,0xa
   15198:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1519c:	00900e13          	li	t3,9
   151a0:	35d11e63          	bne	sp,t4,154fc <fail>

000151a4 <test_10>:
   151a4:	00d000b7          	lui	ra,0xd00
   151a8:	0210b0b3          	mulhu	ra,ra,ra
   151ac:	0000beb7          	lui	t4,0xb
   151b0:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   151b4:	00a00e13          	li	t3,10
   151b8:	35d09263          	bne	ra,t4,154fc <fail>

000151bc <test_11>:
   151bc:	00000213          	li	tp,0
   151c0:	00d000b7          	lui	ra,0xd00
   151c4:	00b00137          	lui	sp,0xb00
   151c8:	0220b1b3          	mulhu	gp,ra,sp
   151cc:	00018313          	mv	t1,gp
   151d0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   151d4:	00200293          	li	t0,2
   151d8:	fe5214e3          	bne	tp,t0,151c0 <test_11+0x4>
   151dc:	00009eb7          	lui	t4,0x9
   151e0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   151e4:	00b00e13          	li	t3,11
   151e8:	31d31a63          	bne	t1,t4,154fc <fail>

000151ec <test_12>:
   151ec:	00000213          	li	tp,0
   151f0:	00e000b7          	lui	ra,0xe00
   151f4:	00b00137          	lui	sp,0xb00
   151f8:	0220b1b3          	mulhu	gp,ra,sp
   151fc:	00000013          	nop
   15200:	00018313          	mv	t1,gp
   15204:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15208:	00200293          	li	t0,2
   1520c:	fe5212e3          	bne	tp,t0,151f0 <test_12+0x4>
   15210:	0000aeb7          	lui	t4,0xa
   15214:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15218:	00c00e13          	li	t3,12
   1521c:	2fd31063          	bne	t1,t4,154fc <fail>

00015220 <test_13>:
   15220:	00000213          	li	tp,0
   15224:	00f000b7          	lui	ra,0xf00
   15228:	00b00137          	lui	sp,0xb00
   1522c:	0220b1b3          	mulhu	gp,ra,sp
   15230:	00000013          	nop
   15234:	00000013          	nop
   15238:	00018313          	mv	t1,gp
   1523c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15240:	00200293          	li	t0,2
   15244:	fe5210e3          	bne	tp,t0,15224 <test_13+0x4>
   15248:	0000aeb7          	lui	t4,0xa
   1524c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15250:	00d00e13          	li	t3,13
   15254:	2bd31463          	bne	t1,t4,154fc <fail>

00015258 <test_14>:
   15258:	00000213          	li	tp,0
   1525c:	00d000b7          	lui	ra,0xd00
   15260:	00b00137          	lui	sp,0xb00
   15264:	0220b1b3          	mulhu	gp,ra,sp
   15268:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1526c:	00200293          	li	t0,2
   15270:	fe5216e3          	bne	tp,t0,1525c <test_14+0x4>
   15274:	00009eb7          	lui	t4,0x9
   15278:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1527c:	00e00e13          	li	t3,14
   15280:	27d19e63          	bne	gp,t4,154fc <fail>

00015284 <test_15>:
   15284:	00000213          	li	tp,0
   15288:	00e000b7          	lui	ra,0xe00
   1528c:	00b00137          	lui	sp,0xb00
   15290:	00000013          	nop
   15294:	0220b1b3          	mulhu	gp,ra,sp
   15298:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1529c:	00200293          	li	t0,2
   152a0:	fe5214e3          	bne	tp,t0,15288 <test_15+0x4>
   152a4:	0000aeb7          	lui	t4,0xa
   152a8:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   152ac:	00f00e13          	li	t3,15
   152b0:	25d19663          	bne	gp,t4,154fc <fail>

000152b4 <test_16>:
   152b4:	00000213          	li	tp,0
   152b8:	00f000b7          	lui	ra,0xf00
   152bc:	00b00137          	lui	sp,0xb00
   152c0:	00000013          	nop
   152c4:	00000013          	nop
   152c8:	0220b1b3          	mulhu	gp,ra,sp
   152cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   152d0:	00200293          	li	t0,2
   152d4:	fe5212e3          	bne	tp,t0,152b8 <test_16+0x4>
   152d8:	0000aeb7          	lui	t4,0xa
   152dc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   152e0:	01000e13          	li	t3,16
   152e4:	21d19c63          	bne	gp,t4,154fc <fail>

000152e8 <test_17>:
   152e8:	00000213          	li	tp,0
   152ec:	00d000b7          	lui	ra,0xd00
   152f0:	00000013          	nop
   152f4:	00b00137          	lui	sp,0xb00
   152f8:	0220b1b3          	mulhu	gp,ra,sp
   152fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15300:	00200293          	li	t0,2
   15304:	fe5214e3          	bne	tp,t0,152ec <test_17+0x4>
   15308:	00009eb7          	lui	t4,0x9
   1530c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15310:	01100e13          	li	t3,17
   15314:	1fd19463          	bne	gp,t4,154fc <fail>

00015318 <test_18>:
   15318:	00000213          	li	tp,0
   1531c:	00e000b7          	lui	ra,0xe00
   15320:	00000013          	nop
   15324:	00b00137          	lui	sp,0xb00
   15328:	00000013          	nop
   1532c:	0220b1b3          	mulhu	gp,ra,sp
   15330:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15334:	00200293          	li	t0,2
   15338:	fe5212e3          	bne	tp,t0,1531c <test_18+0x4>
   1533c:	0000aeb7          	lui	t4,0xa
   15340:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   15344:	01200e13          	li	t3,18
   15348:	1bd19a63          	bne	gp,t4,154fc <fail>

0001534c <test_19>:
   1534c:	00000213          	li	tp,0
   15350:	00f000b7          	lui	ra,0xf00
   15354:	00000013          	nop
   15358:	00000013          	nop
   1535c:	00b00137          	lui	sp,0xb00
   15360:	0220b1b3          	mulhu	gp,ra,sp
   15364:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15368:	00200293          	li	t0,2
   1536c:	fe5212e3          	bne	tp,t0,15350 <test_19+0x4>
   15370:	0000aeb7          	lui	t4,0xa
   15374:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15378:	01300e13          	li	t3,19
   1537c:	19d19063          	bne	gp,t4,154fc <fail>

00015380 <test_20>:
   15380:	00000213          	li	tp,0
   15384:	00b00137          	lui	sp,0xb00
   15388:	00d000b7          	lui	ra,0xd00
   1538c:	0220b1b3          	mulhu	gp,ra,sp
   15390:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15394:	00200293          	li	t0,2
   15398:	fe5216e3          	bne	tp,t0,15384 <test_20+0x4>
   1539c:	00009eb7          	lui	t4,0x9
   153a0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   153a4:	01400e13          	li	t3,20
   153a8:	15d19a63          	bne	gp,t4,154fc <fail>

000153ac <test_21>:
   153ac:	00000213          	li	tp,0
   153b0:	00b00137          	lui	sp,0xb00
   153b4:	00e000b7          	lui	ra,0xe00
   153b8:	00000013          	nop
   153bc:	0220b1b3          	mulhu	gp,ra,sp
   153c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153c4:	00200293          	li	t0,2
   153c8:	fe5214e3          	bne	tp,t0,153b0 <test_21+0x4>
   153cc:	0000aeb7          	lui	t4,0xa
   153d0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   153d4:	01500e13          	li	t3,21
   153d8:	13d19263          	bne	gp,t4,154fc <fail>

000153dc <test_22>:
   153dc:	00000213          	li	tp,0
   153e0:	00b00137          	lui	sp,0xb00
   153e4:	00f000b7          	lui	ra,0xf00
   153e8:	00000013          	nop
   153ec:	00000013          	nop
   153f0:	0220b1b3          	mulhu	gp,ra,sp
   153f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   153f8:	00200293          	li	t0,2
   153fc:	fe5212e3          	bne	tp,t0,153e0 <test_22+0x4>
   15400:	0000aeb7          	lui	t4,0xa
   15404:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   15408:	01600e13          	li	t3,22
   1540c:	0fd19863          	bne	gp,t4,154fc <fail>

00015410 <test_23>:
   15410:	00000213          	li	tp,0
   15414:	00b00137          	lui	sp,0xb00
   15418:	00000013          	nop
   1541c:	00d000b7          	lui	ra,0xd00
   15420:	0220b1b3          	mulhu	gp,ra,sp
   15424:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15428:	00200293          	li	t0,2
   1542c:	fe5214e3          	bne	tp,t0,15414 <test_23+0x4>
   15430:	00009eb7          	lui	t4,0x9
   15434:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   15438:	01700e13          	li	t3,23
   1543c:	0dd19063          	bne	gp,t4,154fc <fail>

00015440 <test_24>:
   15440:	00000213          	li	tp,0
   15444:	00b00137          	lui	sp,0xb00
   15448:	00000013          	nop
   1544c:	00e000b7          	lui	ra,0xe00
   15450:	00000013          	nop
   15454:	0220b1b3          	mulhu	gp,ra,sp
   15458:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1545c:	00200293          	li	t0,2
   15460:	fe5212e3          	bne	tp,t0,15444 <test_24+0x4>
   15464:	0000aeb7          	lui	t4,0xa
   15468:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1546c:	01800e13          	li	t3,24
   15470:	09d19663          	bne	gp,t4,154fc <fail>

00015474 <test_25>:
   15474:	00000213          	li	tp,0
   15478:	00b00137          	lui	sp,0xb00
   1547c:	00000013          	nop
   15480:	00000013          	nop
   15484:	00f000b7          	lui	ra,0xf00
   15488:	0220b1b3          	mulhu	gp,ra,sp
   1548c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15490:	00200293          	li	t0,2
   15494:	fe5212e3          	bne	tp,t0,15478 <test_25+0x4>
   15498:	0000aeb7          	lui	t4,0xa
   1549c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   154a0:	01900e13          	li	t3,25
   154a4:	05d19c63          	bne	gp,t4,154fc <fail>

000154a8 <test_26>:
   154a8:	7c0000b7          	lui	ra,0x7c000
   154ac:	02103133          	mulhu	sp,zero,ra
   154b0:	00000e93          	li	t4,0
   154b4:	01a00e13          	li	t3,26
   154b8:	05d11263          	bne	sp,t4,154fc <fail>

000154bc <test_27>:
   154bc:	800000b7          	lui	ra,0x80000
   154c0:	0200b133          	mulhu	sp,ra,zero
   154c4:	00000e93          	li	t4,0
   154c8:	01b00e13          	li	t3,27
   154cc:	03d11863          	bne	sp,t4,154fc <fail>

000154d0 <test_28>:
   154d0:	020030b3          	mulhu	ra,zero,zero
   154d4:	00000e93          	li	t4,0
   154d8:	01c00e13          	li	t3,28
   154dc:	03d09063          	bne	ra,t4,154fc <fail>

000154e0 <test_29>:
   154e0:	021000b7          	lui	ra,0x2100
   154e4:	02200137          	lui	sp,0x2200
   154e8:	0220b033          	mulhu	zero,ra,sp
   154ec:	00000e93          	li	t4,0
   154f0:	01d00e13          	li	t3,29
   154f4:	01d01463          	bne	zero,t4,154fc <fail>
   154f8:	05c01463          	bne	zero,t3,15540 <pass>

000154fc <fail>:
   154fc:	0ff00513          	li	a0,255

00015500 <.delay_fail>:
   15500:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   15504:	fe051ee3          	bnez	a0,15500 <.delay_fail>
   15508:	02000537          	lui	a0,0x2000
   1550c:	04500593          	li	a1,69
   15510:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   15514:	05200613          	li	a2,82
   15518:	00c52023          	sw	a2,0(a0)
   1551c:	00c52023          	sw	a2,0(a0)
   15520:	04f00693          	li	a3,79
   15524:	00d52023          	sw	a3,0(a0)
   15528:	00c52023          	sw	a2,0(a0)
   1552c:	00d00713          	li	a4,13
   15530:	00e52023          	sw	a4,0(a0)
   15534:	00a00793          	li	a5,10
   15538:	00f52023          	sw	a5,0(a0)
   1553c:	c31fa06f          	j	1016c <mulhu_ret>

00015540 <pass>:
   15540:	0ff00513          	li	a0,255

00015544 <.delay_ok>:
   15544:	fff50513          	addi	a0,a0,-1
   15548:	fe051ee3          	bnez	a0,15544 <.delay_ok>
   1554c:	02000537          	lui	a0,0x2000
   15550:	04f00593          	li	a1,79
   15554:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   15558:	04b00613          	li	a2,75
   1555c:	00c52023          	sw	a2,0(a0)
   15560:	00d00693          	li	a3,13
   15564:	00d52023          	sw	a3,0(a0)
   15568:	00a00713          	li	a4,10
   1556c:	00e52023          	sw	a4,0(a0)
   15570:	bfdfa06f          	j	1016c <mulhu_ret>

00015574 <slti>:
   15574:	0ff00513          	li	a0,255

00015578 <.delay_pr>:
   15578:	fff50513          	addi	a0,a0,-1
   1557c:	fe051ee3          	bnez	a0,15578 <.delay_pr>
   15580:	00015537          	lui	a0,0x15
   15584:	5a050513          	addi	a0,a0,1440 # 155a0 <.test_name>
   15588:	02000637          	lui	a2,0x2000

0001558c <.prname_next>:
   1558c:	00050583          	lb	a1,0(a0)
   15590:	00058c63          	beqz	a1,155a8 <.prname_done>
   15594:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   15598:	00150513          	addi	a0,a0,1
   1559c:	ff1ff06f          	j	1558c <.prname_next>

000155a0 <.test_name>:
   155a0:	69746c73          	csrrsi	s8,0x697,8
   155a4:	0000                	unimp
	...

000155a8 <.prname_done>:
   155a8:	02e00593          	li	a1,46
   155ac:	00b62023          	sw	a1,0(a2)
   155b0:	00b62023          	sw	a1,0(a2)

000155b4 <test_2>:
   155b4:	00000093          	li	ra,0
   155b8:	0000a193          	slti	gp,ra,0
   155bc:	00000e93          	li	t4,0
   155c0:	00200e13          	li	t3,2
   155c4:	27d19263          	bne	gp,t4,15828 <fail>

000155c8 <test_3>:
   155c8:	00100093          	li	ra,1
   155cc:	0010a193          	slti	gp,ra,1
   155d0:	00000e93          	li	t4,0
   155d4:	00300e13          	li	t3,3
   155d8:	25d19863          	bne	gp,t4,15828 <fail>

000155dc <test_4>:
   155dc:	00300093          	li	ra,3
   155e0:	0070a193          	slti	gp,ra,7
   155e4:	00100e93          	li	t4,1
   155e8:	00400e13          	li	t3,4
   155ec:	23d19e63          	bne	gp,t4,15828 <fail>

000155f0 <test_5>:
   155f0:	00700093          	li	ra,7
   155f4:	0030a193          	slti	gp,ra,3
   155f8:	00000e93          	li	t4,0
   155fc:	00500e13          	li	t3,5
   15600:	23d19463          	bne	gp,t4,15828 <fail>

00015604 <test_6>:
   15604:	00000093          	li	ra,0
   15608:	8000a193          	slti	gp,ra,-2048
   1560c:	00000e93          	li	t4,0
   15610:	00600e13          	li	t3,6
   15614:	21d19a63          	bne	gp,t4,15828 <fail>

00015618 <test_7>:
   15618:	800000b7          	lui	ra,0x80000
   1561c:	0000a193          	slti	gp,ra,0
   15620:	00100e93          	li	t4,1
   15624:	00700e13          	li	t3,7
   15628:	21d19063          	bne	gp,t4,15828 <fail>

0001562c <test_8>:
   1562c:	800000b7          	lui	ra,0x80000
   15630:	8000a193          	slti	gp,ra,-2048
   15634:	00100e93          	li	t4,1
   15638:	00800e13          	li	t3,8
   1563c:	1fd19663          	bne	gp,t4,15828 <fail>

00015640 <test_9>:
   15640:	00000093          	li	ra,0
   15644:	7ff0a193          	slti	gp,ra,2047
   15648:	00100e93          	li	t4,1
   1564c:	00900e13          	li	t3,9
   15650:	1dd19c63          	bne	gp,t4,15828 <fail>

00015654 <test_10>:
   15654:	800000b7          	lui	ra,0x80000
   15658:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   1565c:	0000a193          	slti	gp,ra,0
   15660:	00000e93          	li	t4,0
   15664:	00a00e13          	li	t3,10
   15668:	1dd19063          	bne	gp,t4,15828 <fail>

0001566c <test_11>:
   1566c:	800000b7          	lui	ra,0x80000
   15670:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15674:	7ff0a193          	slti	gp,ra,2047
   15678:	00000e93          	li	t4,0
   1567c:	00b00e13          	li	t3,11
   15680:	1bd19463          	bne	gp,t4,15828 <fail>

00015684 <test_12>:
   15684:	800000b7          	lui	ra,0x80000
   15688:	7ff0a193          	slti	gp,ra,2047
   1568c:	00100e93          	li	t4,1
   15690:	00c00e13          	li	t3,12
   15694:	19d19a63          	bne	gp,t4,15828 <fail>

00015698 <test_13>:
   15698:	800000b7          	lui	ra,0x80000
   1569c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   156a0:	8000a193          	slti	gp,ra,-2048
   156a4:	00000e93          	li	t4,0
   156a8:	00d00e13          	li	t3,13
   156ac:	17d19e63          	bne	gp,t4,15828 <fail>

000156b0 <test_14>:
   156b0:	00000093          	li	ra,0
   156b4:	fff0a193          	slti	gp,ra,-1
   156b8:	00000e93          	li	t4,0
   156bc:	00e00e13          	li	t3,14
   156c0:	17d19463          	bne	gp,t4,15828 <fail>

000156c4 <test_15>:
   156c4:	fff00093          	li	ra,-1
   156c8:	0010a193          	slti	gp,ra,1
   156cc:	00100e93          	li	t4,1
   156d0:	00f00e13          	li	t3,15
   156d4:	15d19a63          	bne	gp,t4,15828 <fail>

000156d8 <test_16>:
   156d8:	fff00093          	li	ra,-1
   156dc:	fff0a193          	slti	gp,ra,-1
   156e0:	00000e93          	li	t4,0
   156e4:	01000e13          	li	t3,16
   156e8:	15d19063          	bne	gp,t4,15828 <fail>

000156ec <test_17>:
   156ec:	00b00093          	li	ra,11
   156f0:	00d0b093          	sltiu	ra,ra,13
   156f4:	00100e93          	li	t4,1
   156f8:	01100e13          	li	t3,17
   156fc:	13d09663          	bne	ra,t4,15828 <fail>

00015700 <test_18>:
   15700:	00000213          	li	tp,0
   15704:	00f00093          	li	ra,15
   15708:	00a0a193          	slti	gp,ra,10
   1570c:	00018313          	mv	t1,gp
   15710:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15714:	00200293          	li	t0,2
   15718:	fe5216e3          	bne	tp,t0,15704 <test_18+0x4>
   1571c:	00000e93          	li	t4,0
   15720:	01200e13          	li	t3,18
   15724:	11d31263          	bne	t1,t4,15828 <fail>

00015728 <test_19>:
   15728:	00000213          	li	tp,0
   1572c:	00a00093          	li	ra,10
   15730:	0100a193          	slti	gp,ra,16
   15734:	00000013          	nop
   15738:	00018313          	mv	t1,gp
   1573c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15740:	00200293          	li	t0,2
   15744:	fe5214e3          	bne	tp,t0,1572c <test_19+0x4>
   15748:	00100e93          	li	t4,1
   1574c:	01300e13          	li	t3,19
   15750:	0dd31c63          	bne	t1,t4,15828 <fail>

00015754 <test_20>:
   15754:	00000213          	li	tp,0
   15758:	01000093          	li	ra,16
   1575c:	0090a193          	slti	gp,ra,9
   15760:	00000013          	nop
   15764:	00000013          	nop
   15768:	00018313          	mv	t1,gp
   1576c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15770:	00200293          	li	t0,2
   15774:	fe5212e3          	bne	tp,t0,15758 <test_20+0x4>
   15778:	00000e93          	li	t4,0
   1577c:	01400e13          	li	t3,20
   15780:	0bd31463          	bne	t1,t4,15828 <fail>

00015784 <test_21>:
   15784:	00000213          	li	tp,0
   15788:	00b00093          	li	ra,11
   1578c:	00f0a193          	slti	gp,ra,15
   15790:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15794:	00200293          	li	t0,2
   15798:	fe5218e3          	bne	tp,t0,15788 <test_21+0x4>
   1579c:	00100e93          	li	t4,1
   157a0:	01500e13          	li	t3,21
   157a4:	09d19263          	bne	gp,t4,15828 <fail>

000157a8 <test_22>:
   157a8:	00000213          	li	tp,0
   157ac:	01100093          	li	ra,17
   157b0:	00000013          	nop
   157b4:	0080a193          	slti	gp,ra,8
   157b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   157bc:	00200293          	li	t0,2
   157c0:	fe5216e3          	bne	tp,t0,157ac <test_22+0x4>
   157c4:	00000e93          	li	t4,0
   157c8:	01600e13          	li	t3,22
   157cc:	05d19e63          	bne	gp,t4,15828 <fail>

000157d0 <test_23>:
   157d0:	00000213          	li	tp,0
   157d4:	00c00093          	li	ra,12
   157d8:	00000013          	nop
   157dc:	00000013          	nop
   157e0:	00e0a193          	slti	gp,ra,14
   157e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   157e8:	00200293          	li	t0,2
   157ec:	fe5214e3          	bne	tp,t0,157d4 <test_23+0x4>
   157f0:	00100e93          	li	t4,1
   157f4:	01700e13          	li	t3,23
   157f8:	03d19863          	bne	gp,t4,15828 <fail>

000157fc <test_24>:
   157fc:	fff02093          	slti	ra,zero,-1
   15800:	00000e93          	li	t4,0
   15804:	01800e13          	li	t3,24
   15808:	03d09063          	bne	ra,t4,15828 <fail>

0001580c <test_25>:
   1580c:	00ff00b7          	lui	ra,0xff0
   15810:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   15814:	fff0a013          	slti	zero,ra,-1
   15818:	00000e93          	li	t4,0
   1581c:	01900e13          	li	t3,25
   15820:	01d01463          	bne	zero,t4,15828 <fail>
   15824:	05c01463          	bne	zero,t3,1586c <pass>

00015828 <fail>:
   15828:	0ff00513          	li	a0,255

0001582c <.delay_fail>:
   1582c:	fff50513          	addi	a0,a0,-1
   15830:	fe051ee3          	bnez	a0,1582c <.delay_fail>
   15834:	02000537          	lui	a0,0x2000
   15838:	04500593          	li	a1,69
   1583c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   15840:	05200613          	li	a2,82
   15844:	00c52023          	sw	a2,0(a0)
   15848:	00c52023          	sw	a2,0(a0)
   1584c:	04f00693          	li	a3,79
   15850:	00d52023          	sw	a3,0(a0)
   15854:	00c52023          	sw	a2,0(a0)
   15858:	00d00713          	li	a4,13
   1585c:	00e52023          	sw	a4,0(a0)
   15860:	00a00793          	li	a5,10
   15864:	00f52023          	sw	a5,0(a0)
   15868:	8bdfa06f          	j	10124 <slti_ret>

0001586c <pass>:
   1586c:	0ff00513          	li	a0,255

00015870 <.delay_ok>:
   15870:	fff50513          	addi	a0,a0,-1
   15874:	fe051ee3          	bnez	a0,15870 <.delay_ok>
   15878:	02000537          	lui	a0,0x2000
   1587c:	04f00593          	li	a1,79
   15880:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   15884:	04b00613          	li	a2,75
   15888:	00c52023          	sw	a2,0(a0)
   1588c:	00d00693          	li	a3,13
   15890:	00d52023          	sw	a3,0(a0)
   15894:	00a00713          	li	a4,10
   15898:	00e52023          	sw	a4,0(a0)
   1589c:	889fa06f          	j	10124 <slti_ret>

000158a0 <rem>:
   158a0:	0ff00513          	li	a0,255

000158a4 <.delay_pr>:
   158a4:	fff50513          	addi	a0,a0,-1
   158a8:	fe051ee3          	bnez	a0,158a4 <.delay_pr>
   158ac:	00016537          	lui	a0,0x16
   158b0:	8cc50513          	addi	a0,a0,-1844 # 158cc <.test_name>
   158b4:	02000637          	lui	a2,0x2000

000158b8 <.prname_next>:
   158b8:	00050583          	lb	a1,0(a0)
   158bc:	00058a63          	beqz	a1,158d0 <.prname_done>
   158c0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   158c4:	00150513          	addi	a0,a0,1
   158c8:	ff1ff06f          	j	158b8 <.prname_next>

000158cc <.test_name>:
   158cc:	6572                	flw	fa0,28(sp)
   158ce:	006d                	c.nop	27

000158d0 <.prname_done>:
   158d0:	02e00593          	li	a1,46
   158d4:	00b62023          	sw	a1,0(a2)
   158d8:	00b62023          	sw	a1,0(a2)

000158dc <test_2>:
   158dc:	01400093          	li	ra,20
   158e0:	00600113          	li	sp,6
   158e4:	0220e1b3          	rem	gp,ra,sp
   158e8:	00200e93          	li	t4,2
   158ec:	00200e13          	li	t3,2
   158f0:	0dd19463          	bne	gp,t4,159b8 <fail>

000158f4 <test_3>:
   158f4:	fec00093          	li	ra,-20
   158f8:	00600113          	li	sp,6
   158fc:	0220e1b3          	rem	gp,ra,sp
   15900:	ffe00e93          	li	t4,-2
   15904:	00300e13          	li	t3,3
   15908:	0bd19863          	bne	gp,t4,159b8 <fail>

0001590c <test_4>:
   1590c:	01400093          	li	ra,20
   15910:	ffa00113          	li	sp,-6
   15914:	0220e1b3          	rem	gp,ra,sp
   15918:	00200e93          	li	t4,2
   1591c:	00400e13          	li	t3,4
   15920:	09d19c63          	bne	gp,t4,159b8 <fail>

00015924 <test_5>:
   15924:	fec00093          	li	ra,-20
   15928:	ffa00113          	li	sp,-6
   1592c:	0220e1b3          	rem	gp,ra,sp
   15930:	ffe00e93          	li	t4,-2
   15934:	00500e13          	li	t3,5
   15938:	09d19063          	bne	gp,t4,159b8 <fail>

0001593c <test_6>:
   1593c:	800000b7          	lui	ra,0x80000
   15940:	00100113          	li	sp,1
   15944:	0220e1b3          	rem	gp,ra,sp
   15948:	00000e93          	li	t4,0
   1594c:	00600e13          	li	t3,6
   15950:	07d19463          	bne	gp,t4,159b8 <fail>

00015954 <test_7>:
   15954:	800000b7          	lui	ra,0x80000
   15958:	fff00113          	li	sp,-1
   1595c:	0220e1b3          	rem	gp,ra,sp
   15960:	00000e93          	li	t4,0
   15964:	00700e13          	li	t3,7
   15968:	05d19863          	bne	gp,t4,159b8 <fail>

0001596c <test_8>:
   1596c:	800000b7          	lui	ra,0x80000
   15970:	00000113          	li	sp,0
   15974:	0220e1b3          	rem	gp,ra,sp
   15978:	80000eb7          	lui	t4,0x80000
   1597c:	00800e13          	li	t3,8
   15980:	03d19c63          	bne	gp,t4,159b8 <fail>

00015984 <test_9>:
   15984:	00100093          	li	ra,1
   15988:	00000113          	li	sp,0
   1598c:	0220e1b3          	rem	gp,ra,sp
   15990:	00100e93          	li	t4,1
   15994:	00900e13          	li	t3,9
   15998:	03d19063          	bne	gp,t4,159b8 <fail>

0001599c <test_10>:
   1599c:	00000093          	li	ra,0
   159a0:	00000113          	li	sp,0
   159a4:	0220e1b3          	rem	gp,ra,sp
   159a8:	00000e93          	li	t4,0
   159ac:	00a00e13          	li	t3,10
   159b0:	01d19463          	bne	gp,t4,159b8 <fail>
   159b4:	05c01463          	bne	zero,t3,159fc <pass>

000159b8 <fail>:
   159b8:	0ff00513          	li	a0,255

000159bc <.delay_fail>:
   159bc:	fff50513          	addi	a0,a0,-1
   159c0:	fe051ee3          	bnez	a0,159bc <.delay_fail>
   159c4:	02000537          	lui	a0,0x2000
   159c8:	04500593          	li	a1,69
   159cc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   159d0:	05200613          	li	a2,82
   159d4:	00c52023          	sw	a2,0(a0)
   159d8:	00c52023          	sw	a2,0(a0)
   159dc:	04f00693          	li	a3,79
   159e0:	00d52023          	sw	a3,0(a0)
   159e4:	00c52023          	sw	a2,0(a0)
   159e8:	00d00713          	li	a4,13
   159ec:	00e52023          	sw	a4,0(a0)
   159f0:	00a00793          	li	a5,10
   159f4:	00f52023          	sw	a5,0(a0)
   159f8:	f84fa06f          	j	1017c <rem_ret>

000159fc <pass>:
   159fc:	0ff00513          	li	a0,255

00015a00 <.delay_ok>:
   15a00:	fff50513          	addi	a0,a0,-1
   15a04:	fe051ee3          	bnez	a0,15a00 <.delay_ok>
   15a08:	02000537          	lui	a0,0x2000
   15a0c:	04f00593          	li	a1,79
   15a10:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   15a14:	04b00613          	li	a2,75
   15a18:	00c52023          	sw	a2,0(a0)
   15a1c:	00d00693          	li	a3,13
   15a20:	00d52023          	sw	a3,0(a0)
   15a24:	00a00713          	li	a4,10
   15a28:	00e52023          	sw	a4,0(a0)
   15a2c:	f50fa06f          	j	1017c <rem_ret>

00015a30 <slt>:
   15a30:	0ff00513          	li	a0,255

00015a34 <.delay_pr>:
   15a34:	fff50513          	addi	a0,a0,-1
   15a38:	fe051ee3          	bnez	a0,15a34 <.delay_pr>
   15a3c:	00016537          	lui	a0,0x16
   15a40:	a5c50513          	addi	a0,a0,-1444 # 15a5c <.test_name>
   15a44:	02000637          	lui	a2,0x2000

00015a48 <.prname_next>:
   15a48:	00050583          	lb	a1,0(a0)
   15a4c:	00058a63          	beqz	a1,15a60 <.prname_done>
   15a50:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   15a54:	00150513          	addi	a0,a0,1
   15a58:	ff1ff06f          	j	15a48 <.prname_next>

00015a5c <.test_name>:
   15a5c:	00746c73          	csrrsi	s8,0x7,8

00015a60 <.prname_done>:
   15a60:	02e00593          	li	a1,46
   15a64:	00b62023          	sw	a1,0(a2)
   15a68:	00b62023          	sw	a1,0(a2)

00015a6c <test_2>:
   15a6c:	00000093          	li	ra,0
   15a70:	00000113          	li	sp,0
   15a74:	0020a1b3          	slt	gp,ra,sp
   15a78:	00000e93          	li	t4,0
   15a7c:	00200e13          	li	t3,2
   15a80:	4bd19a63          	bne	gp,t4,15f34 <fail>

00015a84 <test_3>:
   15a84:	00100093          	li	ra,1
   15a88:	00100113          	li	sp,1
   15a8c:	0020a1b3          	slt	gp,ra,sp
   15a90:	00000e93          	li	t4,0
   15a94:	00300e13          	li	t3,3
   15a98:	49d19e63          	bne	gp,t4,15f34 <fail>

00015a9c <test_4>:
   15a9c:	00300093          	li	ra,3
   15aa0:	00700113          	li	sp,7
   15aa4:	0020a1b3          	slt	gp,ra,sp
   15aa8:	00100e93          	li	t4,1
   15aac:	00400e13          	li	t3,4
   15ab0:	49d19263          	bne	gp,t4,15f34 <fail>

00015ab4 <test_5>:
   15ab4:	00700093          	li	ra,7
   15ab8:	00300113          	li	sp,3
   15abc:	0020a1b3          	slt	gp,ra,sp
   15ac0:	00000e93          	li	t4,0
   15ac4:	00500e13          	li	t3,5
   15ac8:	47d19663          	bne	gp,t4,15f34 <fail>

00015acc <test_6>:
   15acc:	00000093          	li	ra,0
   15ad0:	ffff8137          	lui	sp,0xffff8
   15ad4:	0020a1b3          	slt	gp,ra,sp
   15ad8:	00000e93          	li	t4,0
   15adc:	00600e13          	li	t3,6
   15ae0:	45d19a63          	bne	gp,t4,15f34 <fail>

00015ae4 <test_7>:
   15ae4:	800000b7          	lui	ra,0x80000
   15ae8:	00000113          	li	sp,0
   15aec:	0020a1b3          	slt	gp,ra,sp
   15af0:	00100e93          	li	t4,1
   15af4:	00700e13          	li	t3,7
   15af8:	43d19e63          	bne	gp,t4,15f34 <fail>

00015afc <test_8>:
   15afc:	800000b7          	lui	ra,0x80000
   15b00:	ffff8137          	lui	sp,0xffff8
   15b04:	0020a1b3          	slt	gp,ra,sp
   15b08:	00100e93          	li	t4,1
   15b0c:	00800e13          	li	t3,8
   15b10:	43d19263          	bne	gp,t4,15f34 <fail>

00015b14 <test_9>:
   15b14:	00000093          	li	ra,0
   15b18:	00008137          	lui	sp,0x8
   15b1c:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15b20:	0020a1b3          	slt	gp,ra,sp
   15b24:	00100e93          	li	t4,1
   15b28:	00900e13          	li	t3,9
   15b2c:	41d19463          	bne	gp,t4,15f34 <fail>

00015b30 <test_10>:
   15b30:	800000b7          	lui	ra,0x80000
   15b34:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15b38:	00000113          	li	sp,0
   15b3c:	0020a1b3          	slt	gp,ra,sp
   15b40:	00000e93          	li	t4,0
   15b44:	00a00e13          	li	t3,10
   15b48:	3fd19663          	bne	gp,t4,15f34 <fail>

00015b4c <test_11>:
   15b4c:	800000b7          	lui	ra,0x80000
   15b50:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15b54:	00008137          	lui	sp,0x8
   15b58:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15b5c:	0020a1b3          	slt	gp,ra,sp
   15b60:	00000e93          	li	t4,0
   15b64:	00b00e13          	li	t3,11
   15b68:	3dd19663          	bne	gp,t4,15f34 <fail>

00015b6c <test_12>:
   15b6c:	800000b7          	lui	ra,0x80000
   15b70:	00008137          	lui	sp,0x8
   15b74:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   15b78:	0020a1b3          	slt	gp,ra,sp
   15b7c:	00100e93          	li	t4,1
   15b80:	00c00e13          	li	t3,12
   15b84:	3bd19863          	bne	gp,t4,15f34 <fail>

00015b88 <test_13>:
   15b88:	800000b7          	lui	ra,0x80000
   15b8c:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   15b90:	ffff8137          	lui	sp,0xffff8
   15b94:	0020a1b3          	slt	gp,ra,sp
   15b98:	00000e93          	li	t4,0
   15b9c:	00d00e13          	li	t3,13
   15ba0:	39d19a63          	bne	gp,t4,15f34 <fail>

00015ba4 <test_14>:
   15ba4:	00000093          	li	ra,0
   15ba8:	fff00113          	li	sp,-1
   15bac:	0020a1b3          	slt	gp,ra,sp
   15bb0:	00000e93          	li	t4,0
   15bb4:	00e00e13          	li	t3,14
   15bb8:	37d19e63          	bne	gp,t4,15f34 <fail>

00015bbc <test_15>:
   15bbc:	fff00093          	li	ra,-1
   15bc0:	00100113          	li	sp,1
   15bc4:	0020a1b3          	slt	gp,ra,sp
   15bc8:	00100e93          	li	t4,1
   15bcc:	00f00e13          	li	t3,15
   15bd0:	37d19263          	bne	gp,t4,15f34 <fail>

00015bd4 <test_16>:
   15bd4:	fff00093          	li	ra,-1
   15bd8:	fff00113          	li	sp,-1
   15bdc:	0020a1b3          	slt	gp,ra,sp
   15be0:	00000e93          	li	t4,0
   15be4:	01000e13          	li	t3,16
   15be8:	35d19663          	bne	gp,t4,15f34 <fail>

00015bec <test_17>:
   15bec:	00e00093          	li	ra,14
   15bf0:	00d00113          	li	sp,13
   15bf4:	0020a0b3          	slt	ra,ra,sp
   15bf8:	00000e93          	li	t4,0
   15bfc:	01100e13          	li	t3,17
   15c00:	33d09a63          	bne	ra,t4,15f34 <fail>

00015c04 <test_18>:
   15c04:	00b00093          	li	ra,11
   15c08:	00d00113          	li	sp,13
   15c0c:	0020a133          	slt	sp,ra,sp
   15c10:	00100e93          	li	t4,1
   15c14:	01200e13          	li	t3,18
   15c18:	31d11e63          	bne	sp,t4,15f34 <fail>

00015c1c <test_19>:
   15c1c:	00d00093          	li	ra,13
   15c20:	0010a0b3          	slt	ra,ra,ra
   15c24:	00000e93          	li	t4,0
   15c28:	01300e13          	li	t3,19
   15c2c:	31d09463          	bne	ra,t4,15f34 <fail>

00015c30 <test_20>:
   15c30:	00000213          	li	tp,0
   15c34:	00b00093          	li	ra,11
   15c38:	00d00113          	li	sp,13
   15c3c:	0020a1b3          	slt	gp,ra,sp
   15c40:	00018313          	mv	t1,gp
   15c44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15c48:	00200293          	li	t0,2
   15c4c:	fe5214e3          	bne	tp,t0,15c34 <test_20+0x4>
   15c50:	00100e93          	li	t4,1
   15c54:	01400e13          	li	t3,20
   15c58:	2dd31e63          	bne	t1,t4,15f34 <fail>

00015c5c <test_21>:
   15c5c:	00000213          	li	tp,0
   15c60:	00e00093          	li	ra,14
   15c64:	00d00113          	li	sp,13
   15c68:	0020a1b3          	slt	gp,ra,sp
   15c6c:	00000013          	nop
   15c70:	00018313          	mv	t1,gp
   15c74:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15c78:	00200293          	li	t0,2
   15c7c:	fe5212e3          	bne	tp,t0,15c60 <test_21+0x4>
   15c80:	00000e93          	li	t4,0
   15c84:	01500e13          	li	t3,21
   15c88:	2bd31663          	bne	t1,t4,15f34 <fail>

00015c8c <test_22>:
   15c8c:	00000213          	li	tp,0
   15c90:	00c00093          	li	ra,12
   15c94:	00d00113          	li	sp,13
   15c98:	0020a1b3          	slt	gp,ra,sp
   15c9c:	00000013          	nop
   15ca0:	00000013          	nop
   15ca4:	00018313          	mv	t1,gp
   15ca8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15cac:	00200293          	li	t0,2
   15cb0:	fe5210e3          	bne	tp,t0,15c90 <test_22+0x4>
   15cb4:	00100e93          	li	t4,1
   15cb8:	01600e13          	li	t3,22
   15cbc:	27d31c63          	bne	t1,t4,15f34 <fail>

00015cc0 <test_23>:
   15cc0:	00000213          	li	tp,0
   15cc4:	00e00093          	li	ra,14
   15cc8:	00d00113          	li	sp,13
   15ccc:	0020a1b3          	slt	gp,ra,sp
   15cd0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15cd4:	00200293          	li	t0,2
   15cd8:	fe5216e3          	bne	tp,t0,15cc4 <test_23+0x4>
   15cdc:	00000e93          	li	t4,0
   15ce0:	01700e13          	li	t3,23
   15ce4:	25d19863          	bne	gp,t4,15f34 <fail>

00015ce8 <test_24>:
   15ce8:	00000213          	li	tp,0
   15cec:	00b00093          	li	ra,11
   15cf0:	00d00113          	li	sp,13
   15cf4:	00000013          	nop
   15cf8:	0020a1b3          	slt	gp,ra,sp
   15cfc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d00:	00200293          	li	t0,2
   15d04:	fe5214e3          	bne	tp,t0,15cec <test_24+0x4>
   15d08:	00100e93          	li	t4,1
   15d0c:	01800e13          	li	t3,24
   15d10:	23d19263          	bne	gp,t4,15f34 <fail>

00015d14 <test_25>:
   15d14:	00000213          	li	tp,0
   15d18:	00f00093          	li	ra,15
   15d1c:	00d00113          	li	sp,13
   15d20:	00000013          	nop
   15d24:	00000013          	nop
   15d28:	0020a1b3          	slt	gp,ra,sp
   15d2c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d30:	00200293          	li	t0,2
   15d34:	fe5212e3          	bne	tp,t0,15d18 <test_25+0x4>
   15d38:	00000e93          	li	t4,0
   15d3c:	01900e13          	li	t3,25
   15d40:	1fd19a63          	bne	gp,t4,15f34 <fail>

00015d44 <test_26>:
   15d44:	00000213          	li	tp,0
   15d48:	00a00093          	li	ra,10
   15d4c:	00000013          	nop
   15d50:	00d00113          	li	sp,13
   15d54:	0020a1b3          	slt	gp,ra,sp
   15d58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d5c:	00200293          	li	t0,2
   15d60:	fe5214e3          	bne	tp,t0,15d48 <test_26+0x4>
   15d64:	00100e93          	li	t4,1
   15d68:	01a00e13          	li	t3,26
   15d6c:	1dd19463          	bne	gp,t4,15f34 <fail>

00015d70 <test_27>:
   15d70:	00000213          	li	tp,0
   15d74:	01000093          	li	ra,16
   15d78:	00000013          	nop
   15d7c:	00d00113          	li	sp,13
   15d80:	00000013          	nop
   15d84:	0020a1b3          	slt	gp,ra,sp
   15d88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15d8c:	00200293          	li	t0,2
   15d90:	fe5212e3          	bne	tp,t0,15d74 <test_27+0x4>
   15d94:	00000e93          	li	t4,0
   15d98:	01b00e13          	li	t3,27
   15d9c:	19d19c63          	bne	gp,t4,15f34 <fail>

00015da0 <test_28>:
   15da0:	00000213          	li	tp,0
   15da4:	00900093          	li	ra,9
   15da8:	00000013          	nop
   15dac:	00000013          	nop
   15db0:	00d00113          	li	sp,13
   15db4:	0020a1b3          	slt	gp,ra,sp
   15db8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15dbc:	00200293          	li	t0,2
   15dc0:	fe5212e3          	bne	tp,t0,15da4 <test_28+0x4>
   15dc4:	00100e93          	li	t4,1
   15dc8:	01c00e13          	li	t3,28
   15dcc:	17d19463          	bne	gp,t4,15f34 <fail>

00015dd0 <test_29>:
   15dd0:	00000213          	li	tp,0
   15dd4:	00d00113          	li	sp,13
   15dd8:	01100093          	li	ra,17
   15ddc:	0020a1b3          	slt	gp,ra,sp
   15de0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15de4:	00200293          	li	t0,2
   15de8:	fe5216e3          	bne	tp,t0,15dd4 <test_29+0x4>
   15dec:	00000e93          	li	t4,0
   15df0:	01d00e13          	li	t3,29
   15df4:	15d19063          	bne	gp,t4,15f34 <fail>

00015df8 <test_30>:
   15df8:	00000213          	li	tp,0
   15dfc:	00d00113          	li	sp,13
   15e00:	00800093          	li	ra,8
   15e04:	00000013          	nop
   15e08:	0020a1b3          	slt	gp,ra,sp
   15e0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e10:	00200293          	li	t0,2
   15e14:	fe5214e3          	bne	tp,t0,15dfc <test_30+0x4>
   15e18:	00100e93          	li	t4,1
   15e1c:	01e00e13          	li	t3,30
   15e20:	11d19a63          	bne	gp,t4,15f34 <fail>

00015e24 <test_31>:
   15e24:	00000213          	li	tp,0
   15e28:	00d00113          	li	sp,13
   15e2c:	01200093          	li	ra,18
   15e30:	00000013          	nop
   15e34:	00000013          	nop
   15e38:	0020a1b3          	slt	gp,ra,sp
   15e3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e40:	00200293          	li	t0,2
   15e44:	fe5212e3          	bne	tp,t0,15e28 <test_31+0x4>
   15e48:	00000e93          	li	t4,0
   15e4c:	01f00e13          	li	t3,31
   15e50:	0fd19263          	bne	gp,t4,15f34 <fail>

00015e54 <test_32>:
   15e54:	00000213          	li	tp,0
   15e58:	00d00113          	li	sp,13
   15e5c:	00000013          	nop
   15e60:	00700093          	li	ra,7
   15e64:	0020a1b3          	slt	gp,ra,sp
   15e68:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e6c:	00200293          	li	t0,2
   15e70:	fe5214e3          	bne	tp,t0,15e58 <test_32+0x4>
   15e74:	00100e93          	li	t4,1
   15e78:	02000e13          	li	t3,32
   15e7c:	0bd19c63          	bne	gp,t4,15f34 <fail>

00015e80 <test_33>:
   15e80:	00000213          	li	tp,0
   15e84:	00d00113          	li	sp,13
   15e88:	00000013          	nop
   15e8c:	01300093          	li	ra,19
   15e90:	00000013          	nop
   15e94:	0020a1b3          	slt	gp,ra,sp
   15e98:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15e9c:	00200293          	li	t0,2
   15ea0:	fe5212e3          	bne	tp,t0,15e84 <test_33+0x4>
   15ea4:	00000e93          	li	t4,0
   15ea8:	02100e13          	li	t3,33
   15eac:	09d19463          	bne	gp,t4,15f34 <fail>

00015eb0 <test_34>:
   15eb0:	00000213          	li	tp,0
   15eb4:	00d00113          	li	sp,13
   15eb8:	00000013          	nop
   15ebc:	00000013          	nop
   15ec0:	00600093          	li	ra,6
   15ec4:	0020a1b3          	slt	gp,ra,sp
   15ec8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   15ecc:	00200293          	li	t0,2
   15ed0:	fe5212e3          	bne	tp,t0,15eb4 <test_34+0x4>
   15ed4:	00100e93          	li	t4,1
   15ed8:	02200e13          	li	t3,34
   15edc:	05d19c63          	bne	gp,t4,15f34 <fail>

00015ee0 <test_35>:
   15ee0:	fff00093          	li	ra,-1
   15ee4:	00102133          	sgtz	sp,ra
   15ee8:	00000e93          	li	t4,0
   15eec:	02300e13          	li	t3,35
   15ef0:	05d11263          	bne	sp,t4,15f34 <fail>

00015ef4 <test_36>:
   15ef4:	fff00093          	li	ra,-1
   15ef8:	0000a133          	sltz	sp,ra
   15efc:	00100e93          	li	t4,1
   15f00:	02400e13          	li	t3,36
   15f04:	03d11863          	bne	sp,t4,15f34 <fail>

00015f08 <test_37>:
   15f08:	000020b3          	sltz	ra,zero
   15f0c:	00000e93          	li	t4,0
   15f10:	02500e13          	li	t3,37
   15f14:	03d09063          	bne	ra,t4,15f34 <fail>

00015f18 <test_38>:
   15f18:	01000093          	li	ra,16
   15f1c:	01e00113          	li	sp,30
   15f20:	0020a033          	slt	zero,ra,sp
   15f24:	00000e93          	li	t4,0
   15f28:	02600e13          	li	t3,38
   15f2c:	01d01463          	bne	zero,t4,15f34 <fail>
   15f30:	05c01463          	bne	zero,t3,15f78 <pass>

00015f34 <fail>:
   15f34:	0ff00513          	li	a0,255

00015f38 <.delay_fail>:
   15f38:	fff50513          	addi	a0,a0,-1
   15f3c:	fe051ee3          	bnez	a0,15f38 <.delay_fail>
   15f40:	02000537          	lui	a0,0x2000
   15f44:	04500593          	li	a1,69
   15f48:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   15f4c:	05200613          	li	a2,82
   15f50:	00c52023          	sw	a2,0(a0)
   15f54:	00c52023          	sw	a2,0(a0)
   15f58:	04f00693          	li	a3,79
   15f5c:	00d52023          	sw	a3,0(a0)
   15f60:	00c52023          	sw	a2,0(a0)
   15f64:	00d00713          	li	a4,13
   15f68:	00e52023          	sw	a4,0(a0)
   15f6c:	00a00793          	li	a5,10
   15f70:	00f52023          	sw	a5,0(a0)
   15f74:	9d8fa06f          	j	1014c <slt_ret>

00015f78 <pass>:
   15f78:	0ff00513          	li	a0,255

00015f7c <.delay_ok>:
   15f7c:	fff50513          	addi	a0,a0,-1
   15f80:	fe051ee3          	bnez	a0,15f7c <.delay_ok>
   15f84:	02000537          	lui	a0,0x2000
   15f88:	04f00593          	li	a1,79
   15f8c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   15f90:	04b00613          	li	a2,75
   15f94:	00c52023          	sw	a2,0(a0)
   15f98:	00d00693          	li	a3,13
   15f9c:	00d52023          	sw	a3,0(a0)
   15fa0:	00a00713          	li	a4,10
   15fa4:	00e52023          	sw	a4,0(a0)
   15fa8:	9a4fa06f          	j	1014c <slt_ret>

00015fac <lbu>:
   15fac:	0ff00513          	li	a0,255

00015fb0 <.delay_pr>:
   15fb0:	fff50513          	addi	a0,a0,-1
   15fb4:	fe051ee3          	bnez	a0,15fb0 <.delay_pr>
   15fb8:	00016537          	lui	a0,0x16
   15fbc:	fd850513          	addi	a0,a0,-40 # 15fd8 <.test_name>
   15fc0:	02000637          	lui	a2,0x2000

00015fc4 <.prname_next>:
   15fc4:	00050583          	lb	a1,0(a0)
   15fc8:	00058a63          	beqz	a1,15fdc <.prname_done>
   15fcc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   15fd0:	00150513          	addi	a0,a0,1
   15fd4:	ff1ff06f          	j	15fc4 <.prname_next>

00015fd8 <.test_name>:
   15fd8:	626c                	flw	fa1,68(a2)
   15fda:	0075                	c.nop	29

00015fdc <.prname_done>:
   15fdc:	02e00593          	li	a1,46
   15fe0:	00b62023          	sw	a1,0(a2)
   15fe4:	00b62023          	sw	a1,0(a2)

00015fe8 <test_2>:
   15fe8:	7ffea097          	auipc	ra,0x7ffea
   15fec:	05808093          	addi	ra,ra,88 # 80000040 <tdat>
   15ff0:	0000c183          	lbu	gp,0(ra)
   15ff4:	0ff00e93          	li	t4,255
   15ff8:	00200e13          	li	t3,2
   15ffc:	23d19c63          	bne	gp,t4,16234 <fail>

00016000 <test_3>:
   16000:	7ffea097          	auipc	ra,0x7ffea
   16004:	04008093          	addi	ra,ra,64 # 80000040 <tdat>
   16008:	0010c183          	lbu	gp,1(ra)
   1600c:	00000e93          	li	t4,0
   16010:	00300e13          	li	t3,3
   16014:	23d19063          	bne	gp,t4,16234 <fail>

00016018 <test_4>:
   16018:	7ffea097          	auipc	ra,0x7ffea
   1601c:	02808093          	addi	ra,ra,40 # 80000040 <tdat>
   16020:	0020c183          	lbu	gp,2(ra)
   16024:	0f000e93          	li	t4,240
   16028:	00400e13          	li	t3,4
   1602c:	21d19463          	bne	gp,t4,16234 <fail>

00016030 <test_5>:
   16030:	7ffea097          	auipc	ra,0x7ffea
   16034:	01008093          	addi	ra,ra,16 # 80000040 <tdat>
   16038:	0030c183          	lbu	gp,3(ra)
   1603c:	00f00e93          	li	t4,15
   16040:	00500e13          	li	t3,5
   16044:	1fd19863          	bne	gp,t4,16234 <fail>

00016048 <test_6>:
   16048:	7ffea097          	auipc	ra,0x7ffea
   1604c:	ffb08093          	addi	ra,ra,-5 # 80000043 <tdat4>
   16050:	ffd0c183          	lbu	gp,-3(ra)
   16054:	0ff00e93          	li	t4,255
   16058:	00600e13          	li	t3,6
   1605c:	1dd19c63          	bne	gp,t4,16234 <fail>

00016060 <test_7>:
   16060:	7ffea097          	auipc	ra,0x7ffea
   16064:	fe308093          	addi	ra,ra,-29 # 80000043 <tdat4>
   16068:	ffe0c183          	lbu	gp,-2(ra)
   1606c:	00000e93          	li	t4,0
   16070:	00700e13          	li	t3,7
   16074:	1dd19063          	bne	gp,t4,16234 <fail>

00016078 <test_8>:
   16078:	7ffea097          	auipc	ra,0x7ffea
   1607c:	fcb08093          	addi	ra,ra,-53 # 80000043 <tdat4>
   16080:	fff0c183          	lbu	gp,-1(ra)
   16084:	0f000e93          	li	t4,240
   16088:	00800e13          	li	t3,8
   1608c:	1bd19463          	bne	gp,t4,16234 <fail>

00016090 <test_9>:
   16090:	7ffea097          	auipc	ra,0x7ffea
   16094:	fb308093          	addi	ra,ra,-77 # 80000043 <tdat4>
   16098:	0000c183          	lbu	gp,0(ra)
   1609c:	00f00e93          	li	t4,15
   160a0:	00900e13          	li	t3,9
   160a4:	19d19863          	bne	gp,t4,16234 <fail>

000160a8 <test_10>:
   160a8:	7ffea097          	auipc	ra,0x7ffea
   160ac:	f9808093          	addi	ra,ra,-104 # 80000040 <tdat>
   160b0:	fe008093          	addi	ra,ra,-32
   160b4:	0200c183          	lbu	gp,32(ra)
   160b8:	0ff00e93          	li	t4,255
   160bc:	00a00e13          	li	t3,10
   160c0:	17d19a63          	bne	gp,t4,16234 <fail>

000160c4 <test_11>:
   160c4:	7ffea097          	auipc	ra,0x7ffea
   160c8:	f7c08093          	addi	ra,ra,-132 # 80000040 <tdat>
   160cc:	ffa08093          	addi	ra,ra,-6
   160d0:	0070c183          	lbu	gp,7(ra)
   160d4:	00000e93          	li	t4,0
   160d8:	00b00e13          	li	t3,11
   160dc:	15d19c63          	bne	gp,t4,16234 <fail>

000160e0 <test_12>:
   160e0:	00c00e13          	li	t3,12
   160e4:	00000213          	li	tp,0
   160e8:	7ffea097          	auipc	ra,0x7ffea
   160ec:	f5908093          	addi	ra,ra,-167 # 80000041 <tdat2>
   160f0:	0010c183          	lbu	gp,1(ra)
   160f4:	00018313          	mv	t1,gp
   160f8:	0f000e93          	li	t4,240
   160fc:	13d31c63          	bne	t1,t4,16234 <fail>
   16100:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16104:	00200293          	li	t0,2
   16108:	fe5210e3          	bne	tp,t0,160e8 <test_12+0x8>

0001610c <test_13>:
   1610c:	00d00e13          	li	t3,13
   16110:	00000213          	li	tp,0
   16114:	7ffea097          	auipc	ra,0x7ffea
   16118:	f2e08093          	addi	ra,ra,-210 # 80000042 <tdat3>
   1611c:	0010c183          	lbu	gp,1(ra)
   16120:	00000013          	nop
   16124:	00018313          	mv	t1,gp
   16128:	00f00e93          	li	t4,15
   1612c:	11d31463          	bne	t1,t4,16234 <fail>
   16130:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16134:	00200293          	li	t0,2
   16138:	fc521ee3          	bne	tp,t0,16114 <test_13+0x8>

0001613c <test_14>:
   1613c:	00e00e13          	li	t3,14
   16140:	00000213          	li	tp,0
   16144:	7ffea097          	auipc	ra,0x7ffea
   16148:	efc08093          	addi	ra,ra,-260 # 80000040 <tdat>
   1614c:	0010c183          	lbu	gp,1(ra)
   16150:	00000013          	nop
   16154:	00000013          	nop
   16158:	00018313          	mv	t1,gp
   1615c:	00000e93          	li	t4,0
   16160:	0dd31a63          	bne	t1,t4,16234 <fail>
   16164:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16168:	00200293          	li	t0,2
   1616c:	fc521ce3          	bne	tp,t0,16144 <test_14+0x8>

00016170 <test_15>:
   16170:	00f00e13          	li	t3,15
   16174:	00000213          	li	tp,0
   16178:	7ffea097          	auipc	ra,0x7ffea
   1617c:	ec908093          	addi	ra,ra,-311 # 80000041 <tdat2>
   16180:	0010c183          	lbu	gp,1(ra)
   16184:	0f000e93          	li	t4,240
   16188:	0bd19663          	bne	gp,t4,16234 <fail>
   1618c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16190:	00200293          	li	t0,2
   16194:	fe5212e3          	bne	tp,t0,16178 <test_15+0x8>

00016198 <test_16>:
   16198:	01000e13          	li	t3,16
   1619c:	00000213          	li	tp,0
   161a0:	7ffea097          	auipc	ra,0x7ffea
   161a4:	ea208093          	addi	ra,ra,-350 # 80000042 <tdat3>
   161a8:	00000013          	nop
   161ac:	0010c183          	lbu	gp,1(ra)
   161b0:	00f00e93          	li	t4,15
   161b4:	09d19063          	bne	gp,t4,16234 <fail>
   161b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161bc:	00200293          	li	t0,2
   161c0:	fe5210e3          	bne	tp,t0,161a0 <test_16+0x8>

000161c4 <test_17>:
   161c4:	01100e13          	li	t3,17
   161c8:	00000213          	li	tp,0
   161cc:	7ffea097          	auipc	ra,0x7ffea
   161d0:	e7408093          	addi	ra,ra,-396 # 80000040 <tdat>
   161d4:	00000013          	nop
   161d8:	00000013          	nop
   161dc:	0010c183          	lbu	gp,1(ra)
   161e0:	00000e93          	li	t4,0
   161e4:	05d19863          	bne	gp,t4,16234 <fail>
   161e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   161ec:	00200293          	li	t0,2
   161f0:	fc521ee3          	bne	tp,t0,161cc <test_17+0x8>

000161f4 <test_18>:
   161f4:	7ffea197          	auipc	gp,0x7ffea
   161f8:	e4c18193          	addi	gp,gp,-436 # 80000040 <tdat>
   161fc:	0001c103          	lbu	sp,0(gp)
   16200:	00200113          	li	sp,2
   16204:	00200e93          	li	t4,2
   16208:	01200e13          	li	t3,18
   1620c:	03d11463          	bne	sp,t4,16234 <fail>

00016210 <test_19>:
   16210:	7ffea197          	auipc	gp,0x7ffea
   16214:	e3018193          	addi	gp,gp,-464 # 80000040 <tdat>
   16218:	0001c103          	lbu	sp,0(gp)
   1621c:	00000013          	nop
   16220:	00200113          	li	sp,2
   16224:	00200e93          	li	t4,2
   16228:	01300e13          	li	t3,19
   1622c:	01d11463          	bne	sp,t4,16234 <fail>
   16230:	05c01463          	bne	zero,t3,16278 <pass>

00016234 <fail>:
   16234:	0ff00513          	li	a0,255

00016238 <.delay_fail>:
   16238:	fff50513          	addi	a0,a0,-1
   1623c:	fe051ee3          	bnez	a0,16238 <.delay_fail>
   16240:	02000537          	lui	a0,0x2000
   16244:	04500593          	li	a1,69
   16248:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1624c:	05200613          	li	a2,82
   16250:	00c52023          	sw	a2,0(a0)
   16254:	00c52023          	sw	a2,0(a0)
   16258:	04f00693          	li	a3,79
   1625c:	00d52023          	sw	a3,0(a0)
   16260:	00c52023          	sw	a2,0(a0)
   16264:	00d00713          	li	a4,13
   16268:	00e52023          	sw	a4,0(a0)
   1626c:	00a00793          	li	a5,10
   16270:	00f52023          	sw	a5,0(a0)
   16274:	e99f906f          	j	1010c <lbu_ret>

00016278 <pass>:
   16278:	0ff00513          	li	a0,255

0001627c <.delay_ok>:
   1627c:	fff50513          	addi	a0,a0,-1
   16280:	fe051ee3          	bnez	a0,1627c <.delay_ok>
   16284:	02000537          	lui	a0,0x2000
   16288:	04f00593          	li	a1,79
   1628c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   16290:	04b00613          	li	a2,75
   16294:	00c52023          	sw	a2,0(a0)
   16298:	00d00693          	li	a3,13
   1629c:	00d52023          	sw	a3,0(a0)
   162a0:	00a00713          	li	a4,10
   162a4:	00e52023          	sw	a4,0(a0)
   162a8:	e65f906f          	j	1010c <lbu_ret>

000162ac <lb>:
   162ac:	0ff00513          	li	a0,255

000162b0 <.delay_pr>:
   162b0:	fff50513          	addi	a0,a0,-1
   162b4:	fe051ee3          	bnez	a0,162b0 <.delay_pr>
   162b8:	00016537          	lui	a0,0x16
   162bc:	2d850513          	addi	a0,a0,728 # 162d8 <.test_name>
   162c0:	02000637          	lui	a2,0x2000

000162c4 <.prname_next>:
   162c4:	00050583          	lb	a1,0(a0)
   162c8:	00058a63          	beqz	a1,162dc <.prname_done>
   162cc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   162d0:	00150513          	addi	a0,a0,1
   162d4:	ff1ff06f          	j	162c4 <.prname_next>

000162d8 <.test_name>:
   162d8:	626c                	flw	fa1,68(a2)
	...

000162dc <.prname_done>:
   162dc:	02e00593          	li	a1,46
   162e0:	00b62023          	sw	a1,0(a2)
   162e4:	00b62023          	sw	a1,0(a2)

000162e8 <test_2>:
   162e8:	7ffea097          	auipc	ra,0x7ffea
   162ec:	d5c08093          	addi	ra,ra,-676 # 80000044 <tdat>
   162f0:	00008183          	lb	gp,0(ra)
   162f4:	fff00e93          	li	t4,-1
   162f8:	00200e13          	li	t3,2
   162fc:	23d19c63          	bne	gp,t4,16534 <fail>

00016300 <test_3>:
   16300:	7ffea097          	auipc	ra,0x7ffea
   16304:	d4408093          	addi	ra,ra,-700 # 80000044 <tdat>
   16308:	00108183          	lb	gp,1(ra)
   1630c:	00000e93          	li	t4,0
   16310:	00300e13          	li	t3,3
   16314:	23d19063          	bne	gp,t4,16534 <fail>

00016318 <test_4>:
   16318:	7ffea097          	auipc	ra,0x7ffea
   1631c:	d2c08093          	addi	ra,ra,-724 # 80000044 <tdat>
   16320:	00208183          	lb	gp,2(ra)
   16324:	ff000e93          	li	t4,-16
   16328:	00400e13          	li	t3,4
   1632c:	21d19463          	bne	gp,t4,16534 <fail>

00016330 <test_5>:
   16330:	7ffea097          	auipc	ra,0x7ffea
   16334:	d1408093          	addi	ra,ra,-748 # 80000044 <tdat>
   16338:	00308183          	lb	gp,3(ra)
   1633c:	00f00e93          	li	t4,15
   16340:	00500e13          	li	t3,5
   16344:	1fd19863          	bne	gp,t4,16534 <fail>

00016348 <test_6>:
   16348:	7ffea097          	auipc	ra,0x7ffea
   1634c:	cff08093          	addi	ra,ra,-769 # 80000047 <tdat4>
   16350:	ffd08183          	lb	gp,-3(ra)
   16354:	fff00e93          	li	t4,-1
   16358:	00600e13          	li	t3,6
   1635c:	1dd19c63          	bne	gp,t4,16534 <fail>

00016360 <test_7>:
   16360:	7ffea097          	auipc	ra,0x7ffea
   16364:	ce708093          	addi	ra,ra,-793 # 80000047 <tdat4>
   16368:	ffe08183          	lb	gp,-2(ra)
   1636c:	00000e93          	li	t4,0
   16370:	00700e13          	li	t3,7
   16374:	1dd19063          	bne	gp,t4,16534 <fail>

00016378 <test_8>:
   16378:	7ffea097          	auipc	ra,0x7ffea
   1637c:	ccf08093          	addi	ra,ra,-817 # 80000047 <tdat4>
   16380:	fff08183          	lb	gp,-1(ra)
   16384:	ff000e93          	li	t4,-16
   16388:	00800e13          	li	t3,8
   1638c:	1bd19463          	bne	gp,t4,16534 <fail>

00016390 <test_9>:
   16390:	7ffea097          	auipc	ra,0x7ffea
   16394:	cb708093          	addi	ra,ra,-841 # 80000047 <tdat4>
   16398:	00008183          	lb	gp,0(ra)
   1639c:	00f00e93          	li	t4,15
   163a0:	00900e13          	li	t3,9
   163a4:	19d19863          	bne	gp,t4,16534 <fail>

000163a8 <test_10>:
   163a8:	7ffea097          	auipc	ra,0x7ffea
   163ac:	c9c08093          	addi	ra,ra,-868 # 80000044 <tdat>
   163b0:	fe008093          	addi	ra,ra,-32
   163b4:	02008183          	lb	gp,32(ra)
   163b8:	fff00e93          	li	t4,-1
   163bc:	00a00e13          	li	t3,10
   163c0:	17d19a63          	bne	gp,t4,16534 <fail>

000163c4 <test_11>:
   163c4:	7ffea097          	auipc	ra,0x7ffea
   163c8:	c8008093          	addi	ra,ra,-896 # 80000044 <tdat>
   163cc:	ffa08093          	addi	ra,ra,-6
   163d0:	00708183          	lb	gp,7(ra)
   163d4:	00000e93          	li	t4,0
   163d8:	00b00e13          	li	t3,11
   163dc:	15d19c63          	bne	gp,t4,16534 <fail>

000163e0 <test_12>:
   163e0:	00c00e13          	li	t3,12
   163e4:	00000213          	li	tp,0
   163e8:	7ffea097          	auipc	ra,0x7ffea
   163ec:	c5d08093          	addi	ra,ra,-931 # 80000045 <tdat2>
   163f0:	00108183          	lb	gp,1(ra)
   163f4:	00018313          	mv	t1,gp
   163f8:	ff000e93          	li	t4,-16
   163fc:	13d31c63          	bne	t1,t4,16534 <fail>
   16400:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16404:	00200293          	li	t0,2
   16408:	fe5210e3          	bne	tp,t0,163e8 <test_12+0x8>

0001640c <test_13>:
   1640c:	00d00e13          	li	t3,13
   16410:	00000213          	li	tp,0
   16414:	7ffea097          	auipc	ra,0x7ffea
   16418:	c3208093          	addi	ra,ra,-974 # 80000046 <tdat3>
   1641c:	00108183          	lb	gp,1(ra)
   16420:	00000013          	nop
   16424:	00018313          	mv	t1,gp
   16428:	00f00e93          	li	t4,15
   1642c:	11d31463          	bne	t1,t4,16534 <fail>
   16430:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16434:	00200293          	li	t0,2
   16438:	fc521ee3          	bne	tp,t0,16414 <test_13+0x8>

0001643c <test_14>:
   1643c:	00e00e13          	li	t3,14
   16440:	00000213          	li	tp,0
   16444:	7ffea097          	auipc	ra,0x7ffea
   16448:	c0008093          	addi	ra,ra,-1024 # 80000044 <tdat>
   1644c:	00108183          	lb	gp,1(ra)
   16450:	00000013          	nop
   16454:	00000013          	nop
   16458:	00018313          	mv	t1,gp
   1645c:	00000e93          	li	t4,0
   16460:	0dd31a63          	bne	t1,t4,16534 <fail>
   16464:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16468:	00200293          	li	t0,2
   1646c:	fc521ce3          	bne	tp,t0,16444 <test_14+0x8>

00016470 <test_15>:
   16470:	00f00e13          	li	t3,15
   16474:	00000213          	li	tp,0
   16478:	7ffea097          	auipc	ra,0x7ffea
   1647c:	bcd08093          	addi	ra,ra,-1075 # 80000045 <tdat2>
   16480:	00108183          	lb	gp,1(ra)
   16484:	ff000e93          	li	t4,-16
   16488:	0bd19663          	bne	gp,t4,16534 <fail>
   1648c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16490:	00200293          	li	t0,2
   16494:	fe5212e3          	bne	tp,t0,16478 <test_15+0x8>

00016498 <test_16>:
   16498:	01000e13          	li	t3,16
   1649c:	00000213          	li	tp,0
   164a0:	7ffea097          	auipc	ra,0x7ffea
   164a4:	ba608093          	addi	ra,ra,-1114 # 80000046 <tdat3>
   164a8:	00000013          	nop
   164ac:	00108183          	lb	gp,1(ra)
   164b0:	00f00e93          	li	t4,15
   164b4:	09d19063          	bne	gp,t4,16534 <fail>
   164b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164bc:	00200293          	li	t0,2
   164c0:	fe5210e3          	bne	tp,t0,164a0 <test_16+0x8>

000164c4 <test_17>:
   164c4:	01100e13          	li	t3,17
   164c8:	00000213          	li	tp,0
   164cc:	7ffea097          	auipc	ra,0x7ffea
   164d0:	b7808093          	addi	ra,ra,-1160 # 80000044 <tdat>
   164d4:	00000013          	nop
   164d8:	00000013          	nop
   164dc:	00108183          	lb	gp,1(ra)
   164e0:	00000e93          	li	t4,0
   164e4:	05d19863          	bne	gp,t4,16534 <fail>
   164e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   164ec:	00200293          	li	t0,2
   164f0:	fc521ee3          	bne	tp,t0,164cc <test_17+0x8>

000164f4 <test_18>:
   164f4:	7ffea197          	auipc	gp,0x7ffea
   164f8:	b5018193          	addi	gp,gp,-1200 # 80000044 <tdat>
   164fc:	00018103          	lb	sp,0(gp)
   16500:	00200113          	li	sp,2
   16504:	00200e93          	li	t4,2
   16508:	01200e13          	li	t3,18
   1650c:	03d11463          	bne	sp,t4,16534 <fail>

00016510 <test_19>:
   16510:	7ffea197          	auipc	gp,0x7ffea
   16514:	b3418193          	addi	gp,gp,-1228 # 80000044 <tdat>
   16518:	00018103          	lb	sp,0(gp)
   1651c:	00000013          	nop
   16520:	00200113          	li	sp,2
   16524:	00200e93          	li	t4,2
   16528:	01300e13          	li	t3,19
   1652c:	01d11463          	bne	sp,t4,16534 <fail>
   16530:	05c01463          	bne	zero,t3,16578 <pass>

00016534 <fail>:
   16534:	0ff00513          	li	a0,255

00016538 <.delay_fail>:
   16538:	fff50513          	addi	a0,a0,-1
   1653c:	fe051ee3          	bnez	a0,16538 <.delay_fail>
   16540:	02000537          	lui	a0,0x2000
   16544:	04500593          	li	a1,69
   16548:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1654c:	05200613          	li	a2,82
   16550:	00c52023          	sw	a2,0(a0)
   16554:	00c52023          	sw	a2,0(a0)
   16558:	04f00693          	li	a3,79
   1655c:	00d52023          	sw	a3,0(a0)
   16560:	00c52023          	sw	a2,0(a0)
   16564:	00d00713          	li	a4,13
   16568:	00e52023          	sw	a4,0(a0)
   1656c:	00a00793          	li	a5,10
   16570:	00f52023          	sw	a5,0(a0)
   16574:	b8df906f          	j	10100 <lb_ret>

00016578 <pass>:
   16578:	0ff00513          	li	a0,255

0001657c <.delay_ok>:
   1657c:	fff50513          	addi	a0,a0,-1
   16580:	fe051ee3          	bnez	a0,1657c <.delay_ok>
   16584:	02000537          	lui	a0,0x2000
   16588:	04f00593          	li	a1,79
   1658c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   16590:	04b00613          	li	a2,75
   16594:	00c52023          	sw	a2,0(a0)
   16598:	00d00693          	li	a3,13
   1659c:	00d52023          	sw	a3,0(a0)
   165a0:	00a00713          	li	a4,10
   165a4:	00e52023          	sw	a4,0(a0)
   165a8:	b59f906f          	j	10100 <lb_ret>

000165ac <sh>:
   165ac:	0ff00513          	li	a0,255

000165b0 <.delay_pr>:
   165b0:	fff50513          	addi	a0,a0,-1
   165b4:	fe051ee3          	bnez	a0,165b0 <.delay_pr>
   165b8:	00016537          	lui	a0,0x16
   165bc:	5d850513          	addi	a0,a0,1496 # 165d8 <.test_name>
   165c0:	02000637          	lui	a2,0x2000

000165c4 <.prname_next>:
   165c4:	00050583          	lb	a1,0(a0)
   165c8:	00058a63          	beqz	a1,165dc <.prname_done>
   165cc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   165d0:	00150513          	addi	a0,a0,1
   165d4:	ff1ff06f          	j	165c4 <.prname_next>

000165d8 <.test_name>:
   165d8:	00006873          	csrrsi	a6,ustatus,0

000165dc <.prname_done>:
   165dc:	02e00593          	li	a1,46
   165e0:	00b62023          	sw	a1,0(a2)
   165e4:	00b62023          	sw	a1,0(a2)

000165e8 <test_2>:
   165e8:	7ffea097          	auipc	ra,0x7ffea
   165ec:	a6008093          	addi	ra,ra,-1440 # 80000048 <tdat>
   165f0:	0aa00113          	li	sp,170
   165f4:	00209023          	sh	sp,0(ra)
   165f8:	00009183          	lh	gp,0(ra)
   165fc:	0aa00e93          	li	t4,170
   16600:	00200e13          	li	t3,2
   16604:	45d19e63          	bne	gp,t4,16a60 <fail>

00016608 <test_3>:
   16608:	7ffea097          	auipc	ra,0x7ffea
   1660c:	a4008093          	addi	ra,ra,-1472 # 80000048 <tdat>
   16610:	ffffb137          	lui	sp,0xffffb
   16614:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   16618:	00209123          	sh	sp,2(ra)
   1661c:	00209183          	lh	gp,2(ra)
   16620:	ffffbeb7          	lui	t4,0xffffb
   16624:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   16628:	00300e13          	li	t3,3
   1662c:	43d19a63          	bne	gp,t4,16a60 <fail>

00016630 <test_4>:
   16630:	7ffea097          	auipc	ra,0x7ffea
   16634:	a1808093          	addi	ra,ra,-1512 # 80000048 <tdat>
   16638:	beef1137          	lui	sp,0xbeef1
   1663c:	aa010113          	addi	sp,sp,-1376 # beef0aa0 <_edata+0x3eef0a30>
   16640:	00209223          	sh	sp,4(ra)
   16644:	0040a183          	lw	gp,4(ra)
   16648:	beef1eb7          	lui	t4,0xbeef1
   1664c:	aa0e8e93          	addi	t4,t4,-1376 # beef0aa0 <_edata+0x3eef0a30>
   16650:	00400e13          	li	t3,4
   16654:	41d19663          	bne	gp,t4,16a60 <fail>

00016658 <test_5>:
   16658:	7ffea097          	auipc	ra,0x7ffea
   1665c:	9f008093          	addi	ra,ra,-1552 # 80000048 <tdat>
   16660:	ffffa137          	lui	sp,0xffffa
   16664:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   16668:	00209323          	sh	sp,6(ra)
   1666c:	00609183          	lh	gp,6(ra)
   16670:	ffffaeb7          	lui	t4,0xffffa
   16674:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   16678:	00500e13          	li	t3,5
   1667c:	3fd19263          	bne	gp,t4,16a60 <fail>

00016680 <test_6>:
   16680:	7ffea097          	auipc	ra,0x7ffea
   16684:	9d608093          	addi	ra,ra,-1578 # 80000056 <tdat8>
   16688:	0aa00113          	li	sp,170
   1668c:	fe209d23          	sh	sp,-6(ra)
   16690:	ffa09183          	lh	gp,-6(ra)
   16694:	0aa00e93          	li	t4,170
   16698:	00600e13          	li	t3,6
   1669c:	3dd19263          	bne	gp,t4,16a60 <fail>

000166a0 <test_7>:
   166a0:	7ffea097          	auipc	ra,0x7ffea
   166a4:	9b608093          	addi	ra,ra,-1610 # 80000056 <tdat8>
   166a8:	ffffb137          	lui	sp,0xffffb
   166ac:	a0010113          	addi	sp,sp,-1536 # ffffaa00 <_edata+0x7fffa990>
   166b0:	fe209e23          	sh	sp,-4(ra)
   166b4:	ffc09183          	lh	gp,-4(ra)
   166b8:	ffffbeb7          	lui	t4,0xffffb
   166bc:	a00e8e93          	addi	t4,t4,-1536 # ffffaa00 <_edata+0x7fffa990>
   166c0:	00700e13          	li	t3,7
   166c4:	39d19e63          	bne	gp,t4,16a60 <fail>

000166c8 <test_8>:
   166c8:	7ffea097          	auipc	ra,0x7ffea
   166cc:	98e08093          	addi	ra,ra,-1650 # 80000056 <tdat8>
   166d0:	00001137          	lui	sp,0x1
   166d4:	aa010113          	addi	sp,sp,-1376 # aa0 <_start-0xf560>
   166d8:	fe209f23          	sh	sp,-2(ra)
   166dc:	ffe09183          	lh	gp,-2(ra)
   166e0:	00001eb7          	lui	t4,0x1
   166e4:	aa0e8e93          	addi	t4,t4,-1376 # aa0 <_start-0xf560>
   166e8:	00800e13          	li	t3,8
   166ec:	37d19a63          	bne	gp,t4,16a60 <fail>

000166f0 <test_9>:
   166f0:	7ffea097          	auipc	ra,0x7ffea
   166f4:	96608093          	addi	ra,ra,-1690 # 80000056 <tdat8>
   166f8:	ffffa137          	lui	sp,0xffffa
   166fc:	00a10113          	addi	sp,sp,10 # ffffa00a <_edata+0x7fff9f9a>
   16700:	00209023          	sh	sp,0(ra)
   16704:	00009183          	lh	gp,0(ra)
   16708:	ffffaeb7          	lui	t4,0xffffa
   1670c:	00ae8e93          	addi	t4,t4,10 # ffffa00a <_edata+0x7fff9f9a>
   16710:	00900e13          	li	t3,9
   16714:	35d19663          	bne	gp,t4,16a60 <fail>

00016718 <test_10>:
   16718:	7ffea097          	auipc	ra,0x7ffea
   1671c:	94008093          	addi	ra,ra,-1728 # 80000058 <tdat9>
   16720:	12345137          	lui	sp,0x12345
   16724:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b03c>
   16728:	fe008213          	addi	tp,ra,-32
   1672c:	02221023          	sh	sp,32(tp) # 20 <_start-0xffe0>
   16730:	00009183          	lh	gp,0(ra)
   16734:	00005eb7          	lui	t4,0x5
   16738:	678e8e93          	addi	t4,t4,1656 # 5678 <_start-0xa988>
   1673c:	00a00e13          	li	t3,10
   16740:	33d19063          	bne	gp,t4,16a60 <fail>

00016744 <test_11>:
   16744:	7ffea097          	auipc	ra,0x7ffea
   16748:	91408093          	addi	ra,ra,-1772 # 80000058 <tdat9>
   1674c:	00003137          	lui	sp,0x3
   16750:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   16754:	ffb08093          	addi	ra,ra,-5
   16758:	002093a3          	sh	sp,7(ra)
   1675c:	7ffea217          	auipc	tp,0x7ffea
   16760:	8fe20213          	addi	tp,tp,-1794 # 8000005a <tdat10>
   16764:	00021183          	lh	gp,0(tp) # 0 <_start-0x10000>
   16768:	00003eb7          	lui	t4,0x3
   1676c:	098e8e93          	addi	t4,t4,152 # 3098 <_start-0xcf68>
   16770:	00b00e13          	li	t3,11
   16774:	2fd19663          	bne	gp,t4,16a60 <fail>

00016778 <test_12>:
   16778:	00c00e13          	li	t3,12
   1677c:	00000213          	li	tp,0
   16780:	ffffd0b7          	lui	ra,0xffffd
   16784:	cdd08093          	addi	ra,ra,-803 # ffffccdd <_edata+0x7fffcc6d>
   16788:	7ffea117          	auipc	sp,0x7ffea
   1678c:	8c010113          	addi	sp,sp,-1856 # 80000048 <tdat>
   16790:	00111023          	sh	ra,0(sp)
   16794:	00011183          	lh	gp,0(sp)
   16798:	ffffdeb7          	lui	t4,0xffffd
   1679c:	cdde8e93          	addi	t4,t4,-803 # ffffccdd <_edata+0x7fffcc6d>
   167a0:	2dd19063          	bne	gp,t4,16a60 <fail>
   167a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   167a8:	00200293          	li	t0,2
   167ac:	fc521ae3          	bne	tp,t0,16780 <test_12+0x8>

000167b0 <test_13>:
   167b0:	00d00e13          	li	t3,13
   167b4:	00000213          	li	tp,0
   167b8:	ffffc0b7          	lui	ra,0xffffc
   167bc:	ccd08093          	addi	ra,ra,-819 # ffffbccd <_edata+0x7fffbc5d>
   167c0:	7ffea117          	auipc	sp,0x7ffea
   167c4:	88810113          	addi	sp,sp,-1912 # 80000048 <tdat>
   167c8:	00000013          	nop
   167cc:	00111123          	sh	ra,2(sp)
   167d0:	00211183          	lh	gp,2(sp)
   167d4:	ffffceb7          	lui	t4,0xffffc
   167d8:	ccde8e93          	addi	t4,t4,-819 # ffffbccd <_edata+0x7fffbc5d>
   167dc:	29d19263          	bne	gp,t4,16a60 <fail>
   167e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   167e4:	00200293          	li	t0,2
   167e8:	fc5218e3          	bne	tp,t0,167b8 <test_13+0x8>

000167ec <test_14>:
   167ec:	00e00e13          	li	t3,14
   167f0:	00000213          	li	tp,0
   167f4:	ffffc0b7          	lui	ra,0xffffc
   167f8:	bcc08093          	addi	ra,ra,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   167fc:	7ffea117          	auipc	sp,0x7ffea
   16800:	84c10113          	addi	sp,sp,-1972 # 80000048 <tdat>
   16804:	00000013          	nop
   16808:	00000013          	nop
   1680c:	00111223          	sh	ra,4(sp)
   16810:	00411183          	lh	gp,4(sp)
   16814:	ffffceb7          	lui	t4,0xffffc
   16818:	bcce8e93          	addi	t4,t4,-1076 # ffffbbcc <_edata+0x7fffbb5c>
   1681c:	25d19263          	bne	gp,t4,16a60 <fail>
   16820:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16824:	00200293          	li	t0,2
   16828:	fc5216e3          	bne	tp,t0,167f4 <test_14+0x8>

0001682c <test_15>:
   1682c:	00f00e13          	li	t3,15
   16830:	00000213          	li	tp,0
   16834:	ffffb0b7          	lui	ra,0xffffb
   16838:	bbc08093          	addi	ra,ra,-1092 # ffffabbc <_edata+0x7fffab4c>
   1683c:	00000013          	nop
   16840:	7ffea117          	auipc	sp,0x7ffea
   16844:	80810113          	addi	sp,sp,-2040 # 80000048 <tdat>
   16848:	00111323          	sh	ra,6(sp)
   1684c:	00611183          	lh	gp,6(sp)
   16850:	ffffbeb7          	lui	t4,0xffffb
   16854:	bbce8e93          	addi	t4,t4,-1092 # ffffabbc <_edata+0x7fffab4c>
   16858:	21d19463          	bne	gp,t4,16a60 <fail>
   1685c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16860:	00200293          	li	t0,2
   16864:	fc5218e3          	bne	tp,t0,16834 <test_15+0x8>

00016868 <test_16>:
   16868:	01000e13          	li	t3,16
   1686c:	00000213          	li	tp,0
   16870:	ffffb0b7          	lui	ra,0xffffb
   16874:	abb08093          	addi	ra,ra,-1349 # ffffaabb <_edata+0x7fffaa4b>
   16878:	00000013          	nop
   1687c:	7ffe9117          	auipc	sp,0x7ffe9
   16880:	7cc10113          	addi	sp,sp,1996 # 80000048 <tdat>
   16884:	00000013          	nop
   16888:	00111423          	sh	ra,8(sp)
   1688c:	00811183          	lh	gp,8(sp)
   16890:	ffffbeb7          	lui	t4,0xffffb
   16894:	abbe8e93          	addi	t4,t4,-1349 # ffffaabb <_edata+0x7fffaa4b>
   16898:	1dd19463          	bne	gp,t4,16a60 <fail>
   1689c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   168a0:	00200293          	li	t0,2
   168a4:	fc5216e3          	bne	tp,t0,16870 <test_16+0x8>

000168a8 <test_17>:
   168a8:	01100e13          	li	t3,17
   168ac:	00000213          	li	tp,0
   168b0:	ffffe0b7          	lui	ra,0xffffe
   168b4:	aab08093          	addi	ra,ra,-1365 # ffffdaab <_edata+0x7fffda3b>
   168b8:	00000013          	nop
   168bc:	00000013          	nop
   168c0:	7ffe9117          	auipc	sp,0x7ffe9
   168c4:	78810113          	addi	sp,sp,1928 # 80000048 <tdat>
   168c8:	00111523          	sh	ra,10(sp)
   168cc:	00a11183          	lh	gp,10(sp)
   168d0:	ffffeeb7          	lui	t4,0xffffe
   168d4:	aabe8e93          	addi	t4,t4,-1365 # ffffdaab <_edata+0x7fffda3b>
   168d8:	19d19463          	bne	gp,t4,16a60 <fail>
   168dc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   168e0:	00200293          	li	t0,2
   168e4:	fc5216e3          	bne	tp,t0,168b0 <test_17+0x8>

000168e8 <test_18>:
   168e8:	01200e13          	li	t3,18
   168ec:	00000213          	li	tp,0
   168f0:	7ffe9117          	auipc	sp,0x7ffe9
   168f4:	75810113          	addi	sp,sp,1880 # 80000048 <tdat>
   168f8:	000020b7          	lui	ra,0x2
   168fc:	23308093          	addi	ra,ra,563 # 2233 <_start-0xddcd>
   16900:	00111023          	sh	ra,0(sp)
   16904:	00011183          	lh	gp,0(sp)
   16908:	00002eb7          	lui	t4,0x2
   1690c:	233e8e93          	addi	t4,t4,563 # 2233 <_start-0xddcd>
   16910:	15d19863          	bne	gp,t4,16a60 <fail>
   16914:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16918:	00200293          	li	t0,2
   1691c:	fc521ae3          	bne	tp,t0,168f0 <test_18+0x8>

00016920 <test_19>:
   16920:	01300e13          	li	t3,19
   16924:	00000213          	li	tp,0
   16928:	7ffe9117          	auipc	sp,0x7ffe9
   1692c:	72010113          	addi	sp,sp,1824 # 80000048 <tdat>
   16930:	000010b7          	lui	ra,0x1
   16934:	22308093          	addi	ra,ra,547 # 1223 <_start-0xeddd>
   16938:	00000013          	nop
   1693c:	00111123          	sh	ra,2(sp)
   16940:	00211183          	lh	gp,2(sp)
   16944:	00001eb7          	lui	t4,0x1
   16948:	223e8e93          	addi	t4,t4,547 # 1223 <_start-0xeddd>
   1694c:	11d19a63          	bne	gp,t4,16a60 <fail>
   16950:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16954:	00200293          	li	t0,2
   16958:	fc5218e3          	bne	tp,t0,16928 <test_19+0x8>

0001695c <test_20>:
   1695c:	01400e13          	li	t3,20
   16960:	00000213          	li	tp,0
   16964:	7ffe9117          	auipc	sp,0x7ffe9
   16968:	6e410113          	addi	sp,sp,1764 # 80000048 <tdat>
   1696c:	000010b7          	lui	ra,0x1
   16970:	12208093          	addi	ra,ra,290 # 1122 <_start-0xeede>
   16974:	00000013          	nop
   16978:	00000013          	nop
   1697c:	00111223          	sh	ra,4(sp)
   16980:	00411183          	lh	gp,4(sp)
   16984:	00001eb7          	lui	t4,0x1
   16988:	122e8e93          	addi	t4,t4,290 # 1122 <_start-0xeede>
   1698c:	0dd19a63          	bne	gp,t4,16a60 <fail>
   16990:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16994:	00200293          	li	t0,2
   16998:	fc5216e3          	bne	tp,t0,16964 <test_20+0x8>

0001699c <test_21>:
   1699c:	01500e13          	li	t3,21
   169a0:	00000213          	li	tp,0
   169a4:	7ffe9117          	auipc	sp,0x7ffe9
   169a8:	6a410113          	addi	sp,sp,1700 # 80000048 <tdat>
   169ac:	00000013          	nop
   169b0:	11200093          	li	ra,274
   169b4:	00111323          	sh	ra,6(sp)
   169b8:	00611183          	lh	gp,6(sp)
   169bc:	11200e93          	li	t4,274
   169c0:	0bd19063          	bne	gp,t4,16a60 <fail>
   169c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   169c8:	00200293          	li	t0,2
   169cc:	fc521ce3          	bne	tp,t0,169a4 <test_21+0x8>

000169d0 <test_22>:
   169d0:	01600e13          	li	t3,22
   169d4:	00000213          	li	tp,0
   169d8:	7ffe9117          	auipc	sp,0x7ffe9
   169dc:	67010113          	addi	sp,sp,1648 # 80000048 <tdat>
   169e0:	00000013          	nop
   169e4:	01100093          	li	ra,17
   169e8:	00000013          	nop
   169ec:	00111423          	sh	ra,8(sp)
   169f0:	00811183          	lh	gp,8(sp)
   169f4:	01100e93          	li	t4,17
   169f8:	07d19463          	bne	gp,t4,16a60 <fail>
   169fc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16a00:	00200293          	li	t0,2
   16a04:	fc521ae3          	bne	tp,t0,169d8 <test_22+0x8>

00016a08 <test_23>:
   16a08:	01700e13          	li	t3,23
   16a0c:	00000213          	li	tp,0
   16a10:	7ffe9117          	auipc	sp,0x7ffe9
   16a14:	63810113          	addi	sp,sp,1592 # 80000048 <tdat>
   16a18:	00000013          	nop
   16a1c:	00000013          	nop
   16a20:	000030b7          	lui	ra,0x3
   16a24:	00108093          	addi	ra,ra,1 # 3001 <_start-0xcfff>
   16a28:	00111523          	sh	ra,10(sp)
   16a2c:	00a11183          	lh	gp,10(sp)
   16a30:	00003eb7          	lui	t4,0x3
   16a34:	001e8e93          	addi	t4,t4,1 # 3001 <_start-0xcfff>
   16a38:	03d19463          	bne	gp,t4,16a60 <fail>
   16a3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16a40:	00200293          	li	t0,2
   16a44:	fc5216e3          	bne	tp,t0,16a10 <test_23+0x8>
   16a48:	0000c537          	lui	a0,0xc
   16a4c:	eef50513          	addi	a0,a0,-273 # beef <_start-0x4111>
   16a50:	7ffe9597          	auipc	a1,0x7ffe9
   16a54:	5f858593          	addi	a1,a1,1528 # 80000048 <tdat>
   16a58:	00a59323          	sh	a0,6(a1)
   16a5c:	05c01463          	bne	zero,t3,16aa4 <pass>

00016a60 <fail>:
   16a60:	0ff00513          	li	a0,255

00016a64 <.delay_fail>:
   16a64:	fff50513          	addi	a0,a0,-1
   16a68:	fe051ee3          	bnez	a0,16a64 <.delay_fail>
   16a6c:	02000537          	lui	a0,0x2000
   16a70:	04500593          	li	a1,69
   16a74:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   16a78:	05200613          	li	a2,82
   16a7c:	00c52023          	sw	a2,0(a0)
   16a80:	00c52023          	sw	a2,0(a0)
   16a84:	04f00693          	li	a3,79
   16a88:	00d52023          	sw	a3,0(a0)
   16a8c:	00c52023          	sw	a2,0(a0)
   16a90:	00d00713          	li	a4,13
   16a94:	00e52023          	sw	a4,0(a0)
   16a98:	00a00793          	li	a5,10
   16a9c:	00f52023          	sw	a5,0(a0)
   16aa0:	e78f906f          	j	10118 <sh_ret>

00016aa4 <pass>:
   16aa4:	0ff00513          	li	a0,255

00016aa8 <.delay_ok>:
   16aa8:	fff50513          	addi	a0,a0,-1
   16aac:	fe051ee3          	bnez	a0,16aa8 <.delay_ok>
   16ab0:	02000537          	lui	a0,0x2000
   16ab4:	04f00593          	li	a1,79
   16ab8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   16abc:	04b00613          	li	a2,75
   16ac0:	00c52023          	sw	a2,0(a0)
   16ac4:	00d00693          	li	a3,13
   16ac8:	00d52023          	sw	a3,0(a0)
   16acc:	00a00713          	li	a4,10
   16ad0:	00e52023          	sw	a4,0(a0)
   16ad4:	e44f906f          	j	10118 <sh_ret>

00016ad8 <lui>:
   16ad8:	0ff00513          	li	a0,255

00016adc <.delay_pr>:
   16adc:	fff50513          	addi	a0,a0,-1
   16ae0:	fe051ee3          	bnez	a0,16adc <.delay_pr>
   16ae4:	00017537          	lui	a0,0x17
   16ae8:	b0450513          	addi	a0,a0,-1276 # 16b04 <.test_name>
   16aec:	02000637          	lui	a2,0x2000

00016af0 <.prname_next>:
   16af0:	00050583          	lb	a1,0(a0)
   16af4:	00058a63          	beqz	a1,16b08 <.prname_done>
   16af8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   16afc:	00150513          	addi	a0,a0,1
   16b00:	ff1ff06f          	j	16af0 <.prname_next>

00016b04 <.test_name>:
   16b04:	756c                	flw	fa1,108(a0)
   16b06:	0069                	c.nop	26

00016b08 <.prname_done>:
   16b08:	02e00593          	li	a1,46
   16b0c:	00b62023          	sw	a1,0(a2)
   16b10:	00b62023          	sw	a1,0(a2)

00016b14 <test_2>:
   16b14:	000000b7          	lui	ra,0x0
   16b18:	00000e93          	li	t4,0
   16b1c:	00200e13          	li	t3,2
   16b20:	05d09a63          	bne	ra,t4,16b74 <fail>

00016b24 <test_3>:
   16b24:	fffff0b7          	lui	ra,0xfffff
   16b28:	4010d093          	srai	ra,ra,0x1
   16b2c:	80000e93          	li	t4,-2048
   16b30:	00300e13          	li	t3,3
   16b34:	05d09063          	bne	ra,t4,16b74 <fail>

00016b38 <test_4>:
   16b38:	7ffff0b7          	lui	ra,0x7ffff
   16b3c:	4140d093          	srai	ra,ra,0x14
   16b40:	7ff00e93          	li	t4,2047
   16b44:	00400e13          	li	t3,4
   16b48:	03d09663          	bne	ra,t4,16b74 <fail>

00016b4c <test_5>:
   16b4c:	800000b7          	lui	ra,0x80000
   16b50:	4140d093          	srai	ra,ra,0x14
   16b54:	80000e93          	li	t4,-2048
   16b58:	00500e13          	li	t3,5
   16b5c:	01d09c63          	bne	ra,t4,16b74 <fail>

00016b60 <test_6>:
   16b60:	80000037          	lui	zero,0x80000
   16b64:	00000e93          	li	t4,0
   16b68:	00600e13          	li	t3,6
   16b6c:	01d01463          	bne	zero,t4,16b74 <fail>
   16b70:	05c01463          	bne	zero,t3,16bb8 <pass>

00016b74 <fail>:
   16b74:	0ff00513          	li	a0,255

00016b78 <.delay_fail>:
   16b78:	fff50513          	addi	a0,a0,-1
   16b7c:	fe051ee3          	bnez	a0,16b78 <.delay_fail>
   16b80:	02000537          	lui	a0,0x2000
   16b84:	04500593          	li	a1,69
   16b88:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   16b8c:	05200613          	li	a2,82
   16b90:	00c52023          	sw	a2,0(a0)
   16b94:	00c52023          	sw	a2,0(a0)
   16b98:	04f00693          	li	a3,79
   16b9c:	00d52023          	sw	a3,0(a0)
   16ba0:	00c52023          	sw	a2,0(a0)
   16ba4:	00d00713          	li	a4,13
   16ba8:	00e52023          	sw	a4,0(a0)
   16bac:	00a00793          	li	a5,10
   16bb0:	00f52023          	sw	a5,0(a0)
   16bb4:	d20f906f          	j	100d4 <lui_ret>

00016bb8 <pass>:
   16bb8:	0ff00513          	li	a0,255

00016bbc <.delay_ok>:
   16bbc:	fff50513          	addi	a0,a0,-1
   16bc0:	fe051ee3          	bnez	a0,16bbc <.delay_ok>
   16bc4:	02000537          	lui	a0,0x2000
   16bc8:	04f00593          	li	a1,79
   16bcc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   16bd0:	04b00613          	li	a2,75
   16bd4:	00c52023          	sw	a2,0(a0)
   16bd8:	00d00693          	li	a3,13
   16bdc:	00d52023          	sw	a3,0(a0)
   16be0:	00a00713          	li	a4,10
   16be4:	00e52023          	sw	a4,0(a0)
   16be8:	cecf906f          	j	100d4 <lui_ret>

00016bec <sb>:
   16bec:	0ff00513          	li	a0,255

00016bf0 <.delay_pr>:
   16bf0:	fff50513          	addi	a0,a0,-1
   16bf4:	fe051ee3          	bnez	a0,16bf0 <.delay_pr>
   16bf8:	00017537          	lui	a0,0x17
   16bfc:	c1850513          	addi	a0,a0,-1000 # 16c18 <.test_name>
   16c00:	02000637          	lui	a2,0x2000

00016c04 <.prname_next>:
   16c04:	00050583          	lb	a1,0(a0)
   16c08:	00058a63          	beqz	a1,16c1c <.prname_done>
   16c0c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   16c10:	00150513          	addi	a0,a0,1
   16c14:	ff1ff06f          	j	16c04 <.prname_next>

00016c18 <.test_name>:
   16c18:	00006273          	csrrsi	tp,ustatus,0

00016c1c <.prname_done>:
   16c1c:	02e00593          	li	a1,46
   16c20:	00b62023          	sw	a1,0(a2)
   16c24:	00b62023          	sw	a1,0(a2)

00016c28 <test_2>:
   16c28:	7ffe9097          	auipc	ra,0x7ffe9
   16c2c:	43408093          	addi	ra,ra,1076 # 8000005c <tdat>
   16c30:	faa00113          	li	sp,-86
   16c34:	00208023          	sb	sp,0(ra)
   16c38:	00008183          	lb	gp,0(ra)
   16c3c:	faa00e93          	li	t4,-86
   16c40:	00200e13          	li	t3,2
   16c44:	3dd19c63          	bne	gp,t4,1701c <fail>

00016c48 <test_3>:
   16c48:	7ffe9097          	auipc	ra,0x7ffe9
   16c4c:	41408093          	addi	ra,ra,1044 # 8000005c <tdat>
   16c50:	00000113          	li	sp,0
   16c54:	002080a3          	sb	sp,1(ra)
   16c58:	00108183          	lb	gp,1(ra)
   16c5c:	00000e93          	li	t4,0
   16c60:	00300e13          	li	t3,3
   16c64:	3bd19c63          	bne	gp,t4,1701c <fail>

00016c68 <test_4>:
   16c68:	7ffe9097          	auipc	ra,0x7ffe9
   16c6c:	3f408093          	addi	ra,ra,1012 # 8000005c <tdat>
   16c70:	fffff137          	lui	sp,0xfffff
   16c74:	fa010113          	addi	sp,sp,-96 # ffffefa0 <_edata+0x7fffef30>
   16c78:	00208123          	sb	sp,2(ra)
   16c7c:	00209183          	lh	gp,2(ra)
   16c80:	fffffeb7          	lui	t4,0xfffff
   16c84:	fa0e8e93          	addi	t4,t4,-96 # ffffefa0 <_edata+0x7fffef30>
   16c88:	00400e13          	li	t3,4
   16c8c:	39d19863          	bne	gp,t4,1701c <fail>

00016c90 <test_5>:
   16c90:	7ffe9097          	auipc	ra,0x7ffe9
   16c94:	3cc08093          	addi	ra,ra,972 # 8000005c <tdat>
   16c98:	00a00113          	li	sp,10
   16c9c:	002081a3          	sb	sp,3(ra)
   16ca0:	00308183          	lb	gp,3(ra)
   16ca4:	00a00e93          	li	t4,10
   16ca8:	00500e13          	li	t3,5
   16cac:	37d19863          	bne	gp,t4,1701c <fail>

00016cb0 <test_6>:
   16cb0:	7ffe9097          	auipc	ra,0x7ffe9
   16cb4:	3b308093          	addi	ra,ra,947 # 80000063 <tdat8>
   16cb8:	faa00113          	li	sp,-86
   16cbc:	fe208ea3          	sb	sp,-3(ra)
   16cc0:	ffd08183          	lb	gp,-3(ra)
   16cc4:	faa00e93          	li	t4,-86
   16cc8:	00600e13          	li	t3,6
   16ccc:	35d19863          	bne	gp,t4,1701c <fail>

00016cd0 <test_7>:
   16cd0:	7ffe9097          	auipc	ra,0x7ffe9
   16cd4:	39308093          	addi	ra,ra,915 # 80000063 <tdat8>
   16cd8:	00000113          	li	sp,0
   16cdc:	fe208f23          	sb	sp,-2(ra)
   16ce0:	ffe08183          	lb	gp,-2(ra)
   16ce4:	00000e93          	li	t4,0
   16ce8:	00700e13          	li	t3,7
   16cec:	33d19863          	bne	gp,t4,1701c <fail>

00016cf0 <test_8>:
   16cf0:	7ffe9097          	auipc	ra,0x7ffe9
   16cf4:	37308093          	addi	ra,ra,883 # 80000063 <tdat8>
   16cf8:	fa000113          	li	sp,-96
   16cfc:	fe208fa3          	sb	sp,-1(ra)
   16d00:	fff08183          	lb	gp,-1(ra)
   16d04:	fa000e93          	li	t4,-96
   16d08:	00800e13          	li	t3,8
   16d0c:	31d19863          	bne	gp,t4,1701c <fail>

00016d10 <test_9>:
   16d10:	7ffe9097          	auipc	ra,0x7ffe9
   16d14:	35308093          	addi	ra,ra,851 # 80000063 <tdat8>
   16d18:	00a00113          	li	sp,10
   16d1c:	00208023          	sb	sp,0(ra)
   16d20:	00008183          	lb	gp,0(ra)
   16d24:	00a00e93          	li	t4,10
   16d28:	00900e13          	li	t3,9
   16d2c:	2fd19863          	bne	gp,t4,1701c <fail>

00016d30 <test_10>:
   16d30:	7ffe9097          	auipc	ra,0x7ffe9
   16d34:	33408093          	addi	ra,ra,820 # 80000064 <tdat9>
   16d38:	12345137          	lui	sp,0x12345
   16d3c:	67810113          	addi	sp,sp,1656 # 12345678 <_etext+0x1232b03c>
   16d40:	fe008213          	addi	tp,ra,-32
   16d44:	02220023          	sb	sp,32(tp) # 20 <_start-0xffe0>
   16d48:	00008183          	lb	gp,0(ra)
   16d4c:	07800e93          	li	t4,120
   16d50:	00a00e13          	li	t3,10
   16d54:	2dd19463          	bne	gp,t4,1701c <fail>

00016d58 <test_11>:
   16d58:	7ffe9097          	auipc	ra,0x7ffe9
   16d5c:	30c08093          	addi	ra,ra,780 # 80000064 <tdat9>
   16d60:	00003137          	lui	sp,0x3
   16d64:	09810113          	addi	sp,sp,152 # 3098 <_start-0xcf68>
   16d68:	ffa08093          	addi	ra,ra,-6
   16d6c:	002083a3          	sb	sp,7(ra)
   16d70:	7ffe9217          	auipc	tp,0x7ffe9
   16d74:	2f520213          	addi	tp,tp,757 # 80000065 <tdat10>
   16d78:	00020183          	lb	gp,0(tp) # 0 <_start-0x10000>
   16d7c:	f9800e93          	li	t4,-104
   16d80:	00b00e13          	li	t3,11
   16d84:	29d19c63          	bne	gp,t4,1701c <fail>

00016d88 <test_12>:
   16d88:	00c00e13          	li	t3,12
   16d8c:	00000213          	li	tp,0
   16d90:	fdd00093          	li	ra,-35
   16d94:	7ffe9117          	auipc	sp,0x7ffe9
   16d98:	2c810113          	addi	sp,sp,712 # 8000005c <tdat>
   16d9c:	00110023          	sb	ra,0(sp)
   16da0:	00010183          	lb	gp,0(sp)
   16da4:	fdd00e93          	li	t4,-35
   16da8:	27d19a63          	bne	gp,t4,1701c <fail>
   16dac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16db0:	00200293          	li	t0,2
   16db4:	fc521ee3          	bne	tp,t0,16d90 <test_12+0x8>

00016db8 <test_13>:
   16db8:	00d00e13          	li	t3,13
   16dbc:	00000213          	li	tp,0
   16dc0:	fcd00093          	li	ra,-51
   16dc4:	7ffe9117          	auipc	sp,0x7ffe9
   16dc8:	29810113          	addi	sp,sp,664 # 8000005c <tdat>
   16dcc:	00000013          	nop
   16dd0:	001100a3          	sb	ra,1(sp)
   16dd4:	00110183          	lb	gp,1(sp)
   16dd8:	fcd00e93          	li	t4,-51
   16ddc:	25d19063          	bne	gp,t4,1701c <fail>
   16de0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16de4:	00200293          	li	t0,2
   16de8:	fc521ce3          	bne	tp,t0,16dc0 <test_13+0x8>

00016dec <test_14>:
   16dec:	00e00e13          	li	t3,14
   16df0:	00000213          	li	tp,0
   16df4:	fcc00093          	li	ra,-52
   16df8:	7ffe9117          	auipc	sp,0x7ffe9
   16dfc:	26410113          	addi	sp,sp,612 # 8000005c <tdat>
   16e00:	00000013          	nop
   16e04:	00000013          	nop
   16e08:	00110123          	sb	ra,2(sp)
   16e0c:	00210183          	lb	gp,2(sp)
   16e10:	fcc00e93          	li	t4,-52
   16e14:	21d19463          	bne	gp,t4,1701c <fail>
   16e18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e1c:	00200293          	li	t0,2
   16e20:	fc521ae3          	bne	tp,t0,16df4 <test_14+0x8>

00016e24 <test_15>:
   16e24:	00f00e13          	li	t3,15
   16e28:	00000213          	li	tp,0
   16e2c:	fbc00093          	li	ra,-68
   16e30:	00000013          	nop
   16e34:	7ffe9117          	auipc	sp,0x7ffe9
   16e38:	22810113          	addi	sp,sp,552 # 8000005c <tdat>
   16e3c:	001101a3          	sb	ra,3(sp)
   16e40:	00310183          	lb	gp,3(sp)
   16e44:	fbc00e93          	li	t4,-68
   16e48:	1dd19a63          	bne	gp,t4,1701c <fail>
   16e4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e50:	00200293          	li	t0,2
   16e54:	fc521ce3          	bne	tp,t0,16e2c <test_15+0x8>

00016e58 <test_16>:
   16e58:	01000e13          	li	t3,16
   16e5c:	00000213          	li	tp,0
   16e60:	fbb00093          	li	ra,-69
   16e64:	00000013          	nop
   16e68:	7ffe9117          	auipc	sp,0x7ffe9
   16e6c:	1f410113          	addi	sp,sp,500 # 8000005c <tdat>
   16e70:	00000013          	nop
   16e74:	00110223          	sb	ra,4(sp)
   16e78:	00410183          	lb	gp,4(sp)
   16e7c:	fbb00e93          	li	t4,-69
   16e80:	19d19e63          	bne	gp,t4,1701c <fail>
   16e84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16e88:	00200293          	li	t0,2
   16e8c:	fc521ae3          	bne	tp,t0,16e60 <test_16+0x8>

00016e90 <test_17>:
   16e90:	01100e13          	li	t3,17
   16e94:	00000213          	li	tp,0
   16e98:	fab00093          	li	ra,-85
   16e9c:	00000013          	nop
   16ea0:	00000013          	nop
   16ea4:	7ffe9117          	auipc	sp,0x7ffe9
   16ea8:	1b810113          	addi	sp,sp,440 # 8000005c <tdat>
   16eac:	001102a3          	sb	ra,5(sp)
   16eb0:	00510183          	lb	gp,5(sp)
   16eb4:	fab00e93          	li	t4,-85
   16eb8:	17d19263          	bne	gp,t4,1701c <fail>
   16ebc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ec0:	00200293          	li	t0,2
   16ec4:	fc521ae3          	bne	tp,t0,16e98 <test_17+0x8>

00016ec8 <test_18>:
   16ec8:	01200e13          	li	t3,18
   16ecc:	00000213          	li	tp,0
   16ed0:	7ffe9117          	auipc	sp,0x7ffe9
   16ed4:	18c10113          	addi	sp,sp,396 # 8000005c <tdat>
   16ed8:	03300093          	li	ra,51
   16edc:	00110023          	sb	ra,0(sp)
   16ee0:	00010183          	lb	gp,0(sp)
   16ee4:	03300e93          	li	t4,51
   16ee8:	13d19a63          	bne	gp,t4,1701c <fail>
   16eec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16ef0:	00200293          	li	t0,2
   16ef4:	fc521ee3          	bne	tp,t0,16ed0 <test_18+0x8>

00016ef8 <test_19>:
   16ef8:	01300e13          	li	t3,19
   16efc:	00000213          	li	tp,0
   16f00:	7ffe9117          	auipc	sp,0x7ffe9
   16f04:	15c10113          	addi	sp,sp,348 # 8000005c <tdat>
   16f08:	02300093          	li	ra,35
   16f0c:	00000013          	nop
   16f10:	001100a3          	sb	ra,1(sp)
   16f14:	00110183          	lb	gp,1(sp)
   16f18:	02300e93          	li	t4,35
   16f1c:	11d19063          	bne	gp,t4,1701c <fail>
   16f20:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f24:	00200293          	li	t0,2
   16f28:	fc521ce3          	bne	tp,t0,16f00 <test_19+0x8>

00016f2c <test_20>:
   16f2c:	01400e13          	li	t3,20
   16f30:	00000213          	li	tp,0
   16f34:	7ffe9117          	auipc	sp,0x7ffe9
   16f38:	12810113          	addi	sp,sp,296 # 8000005c <tdat>
   16f3c:	02200093          	li	ra,34
   16f40:	00000013          	nop
   16f44:	00000013          	nop
   16f48:	00110123          	sb	ra,2(sp)
   16f4c:	00210183          	lb	gp,2(sp)
   16f50:	02200e93          	li	t4,34
   16f54:	0dd19463          	bne	gp,t4,1701c <fail>
   16f58:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f5c:	00200293          	li	t0,2
   16f60:	fc521ae3          	bne	tp,t0,16f34 <test_20+0x8>

00016f64 <test_21>:
   16f64:	01500e13          	li	t3,21
   16f68:	00000213          	li	tp,0
   16f6c:	7ffe9117          	auipc	sp,0x7ffe9
   16f70:	0f010113          	addi	sp,sp,240 # 8000005c <tdat>
   16f74:	00000013          	nop
   16f78:	01200093          	li	ra,18
   16f7c:	001101a3          	sb	ra,3(sp)
   16f80:	00310183          	lb	gp,3(sp)
   16f84:	01200e93          	li	t4,18
   16f88:	09d19a63          	bne	gp,t4,1701c <fail>
   16f8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16f90:	00200293          	li	t0,2
   16f94:	fc521ce3          	bne	tp,t0,16f6c <test_21+0x8>

00016f98 <test_22>:
   16f98:	01600e13          	li	t3,22
   16f9c:	00000213          	li	tp,0
   16fa0:	7ffe9117          	auipc	sp,0x7ffe9
   16fa4:	0bc10113          	addi	sp,sp,188 # 8000005c <tdat>
   16fa8:	00000013          	nop
   16fac:	01100093          	li	ra,17
   16fb0:	00000013          	nop
   16fb4:	00110223          	sb	ra,4(sp)
   16fb8:	00410183          	lb	gp,4(sp)
   16fbc:	01100e93          	li	t4,17
   16fc0:	05d19e63          	bne	gp,t4,1701c <fail>
   16fc4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   16fc8:	00200293          	li	t0,2
   16fcc:	fc521ae3          	bne	tp,t0,16fa0 <test_22+0x8>

00016fd0 <test_23>:
   16fd0:	01700e13          	li	t3,23
   16fd4:	00000213          	li	tp,0
   16fd8:	7ffe9117          	auipc	sp,0x7ffe9
   16fdc:	08410113          	addi	sp,sp,132 # 8000005c <tdat>
   16fe0:	00000013          	nop
   16fe4:	00000013          	nop
   16fe8:	00100093          	li	ra,1
   16fec:	001102a3          	sb	ra,5(sp)
   16ff0:	00510183          	lb	gp,5(sp)
   16ff4:	00100e93          	li	t4,1
   16ff8:	03d19263          	bne	gp,t4,1701c <fail>
   16ffc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17000:	00200293          	li	t0,2
   17004:	fc521ae3          	bne	tp,t0,16fd8 <test_23+0x8>
   17008:	0ef00513          	li	a0,239
   1700c:	7ffe9597          	auipc	a1,0x7ffe9
   17010:	05058593          	addi	a1,a1,80 # 8000005c <tdat>
   17014:	00a581a3          	sb	a0,3(a1)
   17018:	05c01463          	bne	zero,t3,17060 <pass>

0001701c <fail>:
   1701c:	0ff00513          	li	a0,255

00017020 <.delay_fail>:
   17020:	fff50513          	addi	a0,a0,-1
   17024:	fe051ee3          	bnez	a0,17020 <.delay_fail>
   17028:	02000537          	lui	a0,0x2000
   1702c:	04500593          	li	a1,69
   17030:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17034:	05200613          	li	a2,82
   17038:	00c52023          	sw	a2,0(a0)
   1703c:	00c52023          	sw	a2,0(a0)
   17040:	04f00693          	li	a3,79
   17044:	00d52023          	sw	a3,0(a0)
   17048:	00c52023          	sw	a2,0(a0)
   1704c:	00d00713          	li	a4,13
   17050:	00e52023          	sw	a4,0(a0)
   17054:	00a00793          	li	a5,10
   17058:	00f52023          	sw	a5,0(a0)
   1705c:	8b8f906f          	j	10114 <sb_ret>

00017060 <pass>:
   17060:	0ff00513          	li	a0,255

00017064 <.delay_ok>:
   17064:	fff50513          	addi	a0,a0,-1
   17068:	fe051ee3          	bnez	a0,17064 <.delay_ok>
   1706c:	02000537          	lui	a0,0x2000
   17070:	04f00593          	li	a1,79
   17074:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17078:	04b00613          	li	a2,75
   1707c:	00c52023          	sw	a2,0(a0)
   17080:	00d00693          	li	a3,13
   17084:	00d52023          	sw	a3,0(a0)
   17088:	00a00713          	li	a4,10
   1708c:	00e52023          	sw	a4,0(a0)
   17090:	884f906f          	j	10114 <sb_ret>

00017094 <bltu>:
   17094:	0ff00513          	li	a0,255

00017098 <.delay_pr>:
   17098:	fff50513          	addi	a0,a0,-1
   1709c:	fe051ee3          	bnez	a0,17098 <.delay_pr>
   170a0:	00017537          	lui	a0,0x17
   170a4:	0c050513          	addi	a0,a0,192 # 170c0 <.test_name>
   170a8:	02000637          	lui	a2,0x2000

000170ac <.prname_next>:
   170ac:	00050583          	lb	a1,0(a0)
   170b0:	00058c63          	beqz	a1,170c8 <.prname_done>
   170b4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   170b8:	00150513          	addi	a0,a0,1
   170bc:	ff1ff06f          	j	170ac <.prname_next>

000170c0 <.test_name>:
   170c0:	6c62                	flw	fs8,24(sp)
   170c2:	7574                	flw	fa3,108(a0)
   170c4:	0000                	unimp
	...

000170c8 <.prname_done>:
   170c8:	02e00593          	li	a1,46
   170cc:	00b62023          	sw	a1,0(a2)
   170d0:	00b62023          	sw	a1,0(a2)

000170d4 <test_2>:
   170d4:	00200e13          	li	t3,2
   170d8:	00000093          	li	ra,0
   170dc:	00100113          	li	sp,1
   170e0:	0020e663          	bltu	ra,sp,170ec <test_2+0x18>
   170e4:	2fc01263          	bne	zero,t3,173c8 <fail>
   170e8:	01c01663          	bne	zero,t3,170f4 <test_3>
   170ec:	fe20eee3          	bltu	ra,sp,170e8 <test_2+0x14>
   170f0:	2dc01c63          	bne	zero,t3,173c8 <fail>

000170f4 <test_3>:
   170f4:	00300e13          	li	t3,3
   170f8:	ffe00093          	li	ra,-2
   170fc:	fff00113          	li	sp,-1
   17100:	0020e663          	bltu	ra,sp,1710c <test_3+0x18>
   17104:	2dc01263          	bne	zero,t3,173c8 <fail>
   17108:	01c01663          	bne	zero,t3,17114 <test_4>
   1710c:	fe20eee3          	bltu	ra,sp,17108 <test_3+0x14>
   17110:	2bc01c63          	bne	zero,t3,173c8 <fail>

00017114 <test_4>:
   17114:	00400e13          	li	t3,4
   17118:	00000093          	li	ra,0
   1711c:	fff00113          	li	sp,-1
   17120:	0020e663          	bltu	ra,sp,1712c <test_4+0x18>
   17124:	2bc01263          	bne	zero,t3,173c8 <fail>
   17128:	01c01663          	bne	zero,t3,17134 <test_5>
   1712c:	fe20eee3          	bltu	ra,sp,17128 <test_4+0x14>
   17130:	29c01c63          	bne	zero,t3,173c8 <fail>

00017134 <test_5>:
   17134:	00500e13          	li	t3,5
   17138:	00100093          	li	ra,1
   1713c:	00000113          	li	sp,0
   17140:	0020e463          	bltu	ra,sp,17148 <test_5+0x14>
   17144:	01c01463          	bne	zero,t3,1714c <test_5+0x18>
   17148:	29c01063          	bne	zero,t3,173c8 <fail>
   1714c:	fe20eee3          	bltu	ra,sp,17148 <test_5+0x14>

00017150 <test_6>:
   17150:	00600e13          	li	t3,6
   17154:	fff00093          	li	ra,-1
   17158:	ffe00113          	li	sp,-2
   1715c:	0020e463          	bltu	ra,sp,17164 <test_6+0x14>
   17160:	01c01463          	bne	zero,t3,17168 <test_6+0x18>
   17164:	27c01263          	bne	zero,t3,173c8 <fail>
   17168:	fe20eee3          	bltu	ra,sp,17164 <test_6+0x14>

0001716c <test_7>:
   1716c:	00700e13          	li	t3,7
   17170:	fff00093          	li	ra,-1
   17174:	00000113          	li	sp,0
   17178:	0020e463          	bltu	ra,sp,17180 <test_7+0x14>
   1717c:	01c01463          	bne	zero,t3,17184 <test_7+0x18>
   17180:	25c01463          	bne	zero,t3,173c8 <fail>
   17184:	fe20eee3          	bltu	ra,sp,17180 <test_7+0x14>

00017188 <test_8>:
   17188:	00800e13          	li	t3,8
   1718c:	800000b7          	lui	ra,0x80000
   17190:	80000137          	lui	sp,0x80000
   17194:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   17198:	0020e463          	bltu	ra,sp,171a0 <test_8+0x18>
   1719c:	01c01463          	bne	zero,t3,171a4 <test_8+0x1c>
   171a0:	23c01463          	bne	zero,t3,173c8 <fail>
   171a4:	fe20eee3          	bltu	ra,sp,171a0 <test_8+0x18>

000171a8 <test_9>:
   171a8:	00900e13          	li	t3,9
   171ac:	00000213          	li	tp,0
   171b0:	f00000b7          	lui	ra,0xf0000
   171b4:	f0000137          	lui	sp,0xf0000
   171b8:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   171bc:	2020e663          	bltu	ra,sp,173c8 <fail>
   171c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   171c4:	00200293          	li	t0,2
   171c8:	fe5214e3          	bne	tp,t0,171b0 <test_9+0x8>

000171cc <test_10>:
   171cc:	00a00e13          	li	t3,10
   171d0:	00000213          	li	tp,0
   171d4:	f00000b7          	lui	ra,0xf0000
   171d8:	f0000137          	lui	sp,0xf0000
   171dc:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   171e0:	00000013          	nop
   171e4:	1e20e263          	bltu	ra,sp,173c8 <fail>
   171e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   171ec:	00200293          	li	t0,2
   171f0:	fe5212e3          	bne	tp,t0,171d4 <test_10+0x8>

000171f4 <test_11>:
   171f4:	00b00e13          	li	t3,11
   171f8:	00000213          	li	tp,0
   171fc:	f00000b7          	lui	ra,0xf0000
   17200:	f0000137          	lui	sp,0xf0000
   17204:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17208:	00000013          	nop
   1720c:	00000013          	nop
   17210:	1a20ec63          	bltu	ra,sp,173c8 <fail>
   17214:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17218:	00200293          	li	t0,2
   1721c:	fe5210e3          	bne	tp,t0,171fc <test_11+0x8>

00017220 <test_12>:
   17220:	00c00e13          	li	t3,12
   17224:	00000213          	li	tp,0
   17228:	f00000b7          	lui	ra,0xf0000
   1722c:	00000013          	nop
   17230:	f0000137          	lui	sp,0xf0000
   17234:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17238:	1820e863          	bltu	ra,sp,173c8 <fail>
   1723c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17240:	00200293          	li	t0,2
   17244:	fe5212e3          	bne	tp,t0,17228 <test_12+0x8>

00017248 <test_13>:
   17248:	00d00e13          	li	t3,13
   1724c:	00000213          	li	tp,0
   17250:	f00000b7          	lui	ra,0xf0000
   17254:	00000013          	nop
   17258:	f0000137          	lui	sp,0xf0000
   1725c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17260:	00000013          	nop
   17264:	1620e263          	bltu	ra,sp,173c8 <fail>
   17268:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1726c:	00200293          	li	t0,2
   17270:	fe5210e3          	bne	tp,t0,17250 <test_13+0x8>

00017274 <test_14>:
   17274:	00e00e13          	li	t3,14
   17278:	00000213          	li	tp,0
   1727c:	f00000b7          	lui	ra,0xf0000
   17280:	00000013          	nop
   17284:	00000013          	nop
   17288:	f0000137          	lui	sp,0xf0000
   1728c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17290:	1220ec63          	bltu	ra,sp,173c8 <fail>
   17294:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17298:	00200293          	li	t0,2
   1729c:	fe5210e3          	bne	tp,t0,1727c <test_14+0x8>

000172a0 <test_15>:
   172a0:	00f00e13          	li	t3,15
   172a4:	00000213          	li	tp,0
   172a8:	f00000b7          	lui	ra,0xf0000
   172ac:	f0000137          	lui	sp,0xf0000
   172b0:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   172b4:	1020ea63          	bltu	ra,sp,173c8 <fail>
   172b8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172bc:	00200293          	li	t0,2
   172c0:	fe5214e3          	bne	tp,t0,172a8 <test_15+0x8>

000172c4 <test_16>:
   172c4:	01000e13          	li	t3,16
   172c8:	00000213          	li	tp,0
   172cc:	f00000b7          	lui	ra,0xf0000
   172d0:	f0000137          	lui	sp,0xf0000
   172d4:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   172d8:	00000013          	nop
   172dc:	0e20e663          	bltu	ra,sp,173c8 <fail>
   172e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   172e4:	00200293          	li	t0,2
   172e8:	fe5212e3          	bne	tp,t0,172cc <test_16+0x8>

000172ec <test_17>:
   172ec:	01100e13          	li	t3,17
   172f0:	00000213          	li	tp,0
   172f4:	f00000b7          	lui	ra,0xf0000
   172f8:	f0000137          	lui	sp,0xf0000
   172fc:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17300:	00000013          	nop
   17304:	00000013          	nop
   17308:	0c20e063          	bltu	ra,sp,173c8 <fail>
   1730c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17310:	00200293          	li	t0,2
   17314:	fe5210e3          	bne	tp,t0,172f4 <test_17+0x8>

00017318 <test_18>:
   17318:	01200e13          	li	t3,18
   1731c:	00000213          	li	tp,0
   17320:	f00000b7          	lui	ra,0xf0000
   17324:	00000013          	nop
   17328:	f0000137          	lui	sp,0xf0000
   1732c:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17330:	0820ec63          	bltu	ra,sp,173c8 <fail>
   17334:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17338:	00200293          	li	t0,2
   1733c:	fe5212e3          	bne	tp,t0,17320 <test_18+0x8>

00017340 <test_19>:
   17340:	01300e13          	li	t3,19
   17344:	00000213          	li	tp,0
   17348:	f00000b7          	lui	ra,0xf0000
   1734c:	00000013          	nop
   17350:	f0000137          	lui	sp,0xf0000
   17354:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17358:	00000013          	nop
   1735c:	0620e663          	bltu	ra,sp,173c8 <fail>
   17360:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17364:	00200293          	li	t0,2
   17368:	fe5210e3          	bne	tp,t0,17348 <test_19+0x8>

0001736c <test_20>:
   1736c:	01400e13          	li	t3,20
   17370:	00000213          	li	tp,0
   17374:	f00000b7          	lui	ra,0xf0000
   17378:	00000013          	nop
   1737c:	00000013          	nop
   17380:	f0000137          	lui	sp,0xf0000
   17384:	fff10113          	addi	sp,sp,-1 # efffffff <_edata+0x6fffff8f>
   17388:	0420e063          	bltu	ra,sp,173c8 <fail>
   1738c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17390:	00200293          	li	t0,2
   17394:	fe5210e3          	bne	tp,t0,17374 <test_20+0x8>

00017398 <test_21>:
   17398:	00100093          	li	ra,1
   1739c:	00106a63          	bltu	zero,ra,173b0 <test_21+0x18>
   173a0:	00108093          	addi	ra,ra,1 # f0000001 <_edata+0x6fffff91>
   173a4:	00108093          	addi	ra,ra,1
   173a8:	00108093          	addi	ra,ra,1
   173ac:	00108093          	addi	ra,ra,1
   173b0:	00108093          	addi	ra,ra,1
   173b4:	00108093          	addi	ra,ra,1
   173b8:	00300e93          	li	t4,3
   173bc:	01500e13          	li	t3,21
   173c0:	01d09463          	bne	ra,t4,173c8 <fail>
   173c4:	05c01463          	bne	zero,t3,1740c <pass>

000173c8 <fail>:
   173c8:	0ff00513          	li	a0,255

000173cc <.delay_fail>:
   173cc:	fff50513          	addi	a0,a0,-1
   173d0:	fe051ee3          	bnez	a0,173cc <.delay_fail>
   173d4:	02000537          	lui	a0,0x2000
   173d8:	04500593          	li	a1,69
   173dc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   173e0:	05200613          	li	a2,82
   173e4:	00c52023          	sw	a2,0(a0)
   173e8:	00c52023          	sw	a2,0(a0)
   173ec:	04f00693          	li	a3,79
   173f0:	00d52023          	sw	a3,0(a0)
   173f4:	00c52023          	sw	a2,0(a0)
   173f8:	00d00713          	li	a4,13
   173fc:	00e52023          	sw	a4,0(a0)
   17400:	00a00793          	li	a5,10
   17404:	00f52023          	sw	a5,0(a0)
   17408:	cf1f806f          	j	100f8 <bltu_ret>

0001740c <pass>:
   1740c:	0ff00513          	li	a0,255

00017410 <.delay_ok>:
   17410:	fff50513          	addi	a0,a0,-1
   17414:	fe051ee3          	bnez	a0,17410 <.delay_ok>
   17418:	02000537          	lui	a0,0x2000
   1741c:	04f00593          	li	a1,79
   17420:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17424:	04b00613          	li	a2,75
   17428:	00c52023          	sw	a2,0(a0)
   1742c:	00d00693          	li	a3,13
   17430:	00d52023          	sw	a3,0(a0)
   17434:	00a00713          	li	a4,10
   17438:	00e52023          	sw	a4,0(a0)
   1743c:	cbdf806f          	j	100f8 <bltu_ret>

00017440 <remu>:
   17440:	0ff00513          	li	a0,255

00017444 <.delay_pr>:
   17444:	fff50513          	addi	a0,a0,-1
   17448:	fe051ee3          	bnez	a0,17444 <.delay_pr>
   1744c:	00017537          	lui	a0,0x17
   17450:	46c50513          	addi	a0,a0,1132 # 1746c <.test_name>
   17454:	02000637          	lui	a2,0x2000

00017458 <.prname_next>:
   17458:	00050583          	lb	a1,0(a0)
   1745c:	00058c63          	beqz	a1,17474 <.prname_done>
   17460:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   17464:	00150513          	addi	a0,a0,1
   17468:	ff1ff06f          	j	17458 <.prname_next>

0001746c <.test_name>:
   1746c:	6572                	flw	fa0,28(sp)
   1746e:	756d                	lui	a0,0xffffb
   17470:	0000                	unimp
	...

00017474 <.prname_done>:
   17474:	02e00593          	li	a1,46
   17478:	00b62023          	sw	a1,0(a2)
   1747c:	00b62023          	sw	a1,0(a2)

00017480 <test_2>:
   17480:	01400093          	li	ra,20
   17484:	00600113          	li	sp,6
   17488:	0220f1b3          	remu	gp,ra,sp
   1748c:	00200e93          	li	t4,2
   17490:	00200e13          	li	t3,2
   17494:	0dd19463          	bne	gp,t4,1755c <fail>

00017498 <test_3>:
   17498:	fec00093          	li	ra,-20
   1749c:	00600113          	li	sp,6
   174a0:	0220f1b3          	remu	gp,ra,sp
   174a4:	00200e93          	li	t4,2
   174a8:	00300e13          	li	t3,3
   174ac:	0bd19863          	bne	gp,t4,1755c <fail>

000174b0 <test_4>:
   174b0:	01400093          	li	ra,20
   174b4:	ffa00113          	li	sp,-6
   174b8:	0220f1b3          	remu	gp,ra,sp
   174bc:	01400e93          	li	t4,20
   174c0:	00400e13          	li	t3,4
   174c4:	09d19c63          	bne	gp,t4,1755c <fail>

000174c8 <test_5>:
   174c8:	fec00093          	li	ra,-20
   174cc:	ffa00113          	li	sp,-6
   174d0:	0220f1b3          	remu	gp,ra,sp
   174d4:	fec00e93          	li	t4,-20
   174d8:	00500e13          	li	t3,5
   174dc:	09d19063          	bne	gp,t4,1755c <fail>

000174e0 <test_6>:
   174e0:	800000b7          	lui	ra,0x80000
   174e4:	00100113          	li	sp,1
   174e8:	0220f1b3          	remu	gp,ra,sp
   174ec:	00000e93          	li	t4,0
   174f0:	00600e13          	li	t3,6
   174f4:	07d19463          	bne	gp,t4,1755c <fail>

000174f8 <test_7>:
   174f8:	800000b7          	lui	ra,0x80000
   174fc:	fff00113          	li	sp,-1
   17500:	0220f1b3          	remu	gp,ra,sp
   17504:	80000eb7          	lui	t4,0x80000
   17508:	00700e13          	li	t3,7
   1750c:	05d19863          	bne	gp,t4,1755c <fail>

00017510 <test_8>:
   17510:	800000b7          	lui	ra,0x80000
   17514:	00000113          	li	sp,0
   17518:	0220f1b3          	remu	gp,ra,sp
   1751c:	80000eb7          	lui	t4,0x80000
   17520:	00800e13          	li	t3,8
   17524:	03d19c63          	bne	gp,t4,1755c <fail>

00017528 <test_9>:
   17528:	00100093          	li	ra,1
   1752c:	00000113          	li	sp,0
   17530:	0220f1b3          	remu	gp,ra,sp
   17534:	00100e93          	li	t4,1
   17538:	00900e13          	li	t3,9
   1753c:	03d19063          	bne	gp,t4,1755c <fail>

00017540 <test_10>:
   17540:	00000093          	li	ra,0
   17544:	00000113          	li	sp,0
   17548:	0220f1b3          	remu	gp,ra,sp
   1754c:	00000e93          	li	t4,0
   17550:	00a00e13          	li	t3,10
   17554:	01d19463          	bne	gp,t4,1755c <fail>
   17558:	05c01463          	bne	zero,t3,175a0 <pass>

0001755c <fail>:
   1755c:	0ff00513          	li	a0,255

00017560 <.delay_fail>:
   17560:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   17564:	fe051ee3          	bnez	a0,17560 <.delay_fail>
   17568:	02000537          	lui	a0,0x2000
   1756c:	04500593          	li	a1,69
   17570:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17574:	05200613          	li	a2,82
   17578:	00c52023          	sw	a2,0(a0)
   1757c:	00c52023          	sw	a2,0(a0)
   17580:	04f00693          	li	a3,79
   17584:	00d52023          	sw	a3,0(a0)
   17588:	00c52023          	sw	a2,0(a0)
   1758c:	00d00713          	li	a4,13
   17590:	00e52023          	sw	a4,0(a0)
   17594:	00a00793          	li	a5,10
   17598:	00f52023          	sw	a5,0(a0)
   1759c:	be5f806f          	j	10180 <remu_ret>

000175a0 <pass>:
   175a0:	0ff00513          	li	a0,255

000175a4 <.delay_ok>:
   175a4:	fff50513          	addi	a0,a0,-1
   175a8:	fe051ee3          	bnez	a0,175a4 <.delay_ok>
   175ac:	02000537          	lui	a0,0x2000
   175b0:	04f00593          	li	a1,79
   175b4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   175b8:	04b00613          	li	a2,75
   175bc:	00c52023          	sw	a2,0(a0)
   175c0:	00d00693          	li	a3,13
   175c4:	00d52023          	sw	a3,0(a0)
   175c8:	00a00713          	li	a4,10
   175cc:	00e52023          	sw	a4,0(a0)
   175d0:	bb1f806f          	j	10180 <remu_ret>

000175d4 <simple>:
   175d4:	0ff00513          	li	a0,255

000175d8 <.delay_pr>:
   175d8:	fff50513          	addi	a0,a0,-1
   175dc:	fe051ee3          	bnez	a0,175d8 <.delay_pr>
   175e0:	00017537          	lui	a0,0x17
   175e4:	60050513          	addi	a0,a0,1536 # 17600 <.test_name>
   175e8:	02000637          	lui	a2,0x2000

000175ec <.prname_next>:
   175ec:	00050583          	lb	a1,0(a0)
   175f0:	00058c63          	beqz	a1,17608 <.prname_done>
   175f4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   175f8:	00150513          	addi	a0,a0,1
   175fc:	ff1ff06f          	j	175ec <.prname_next>

00017600 <.test_name>:
   17600:	706d6973          	csrrsi	s2,0x706,26
   17604:	656c                	flw	fa1,76(a0)
	...

00017608 <.prname_done>:
   17608:	02e00593          	li	a1,46
   1760c:	00b62023          	sw	a1,0(a2)
   17610:	00b62023          	sw	a1,0(a2)
   17614:	0ff00513          	li	a0,255

00017618 <.delay_ok>:
   17618:	fff50513          	addi	a0,a0,-1
   1761c:	fe051ee3          	bnez	a0,17618 <.delay_ok>
   17620:	02000537          	lui	a0,0x2000
   17624:	04f00593          	li	a1,79
   17628:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1762c:	04b00613          	li	a2,75
   17630:	00c52023          	sw	a2,0(a0)
   17634:	00d00693          	li	a3,13
   17638:	00d52023          	sw	a3,0(a0)
   1763c:	00a00713          	li	a4,10
   17640:	00e52023          	sw	a4,0(a0)
   17644:	b41f806f          	j	10184 <simple_ret>

00017648 <slli>:
   17648:	0ff00513          	li	a0,255

0001764c <.delay_pr>:
   1764c:	fff50513          	addi	a0,a0,-1
   17650:	fe051ee3          	bnez	a0,1764c <.delay_pr>
   17654:	00017537          	lui	a0,0x17
   17658:	67450513          	addi	a0,a0,1652 # 17674 <.test_name>
   1765c:	02000637          	lui	a2,0x2000

00017660 <.prname_next>:
   17660:	00050583          	lb	a1,0(a0)
   17664:	00058c63          	beqz	a1,1767c <.prname_done>
   17668:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   1766c:	00150513          	addi	a0,a0,1
   17670:	ff1ff06f          	j	17660 <.prname_next>

00017674 <.test_name>:
   17674:	696c6c73          	csrrsi	s8,0x696,24
   17678:	0000                	unimp
	...

0001767c <.prname_done>:
   1767c:	02e00593          	li	a1,46
   17680:	00b62023          	sw	a1,0(a2)
   17684:	00b62023          	sw	a1,0(a2)

00017688 <test_2>:
   17688:	00100093          	li	ra,1
   1768c:	00009193          	slli	gp,ra,0x0
   17690:	00100e93          	li	t4,1
   17694:	00200e13          	li	t3,2
   17698:	27d19a63          	bne	gp,t4,1790c <fail>

0001769c <test_3>:
   1769c:	00100093          	li	ra,1
   176a0:	00109193          	slli	gp,ra,0x1
   176a4:	00200e93          	li	t4,2
   176a8:	00300e13          	li	t3,3
   176ac:	27d19063          	bne	gp,t4,1790c <fail>

000176b0 <test_4>:
   176b0:	00100093          	li	ra,1
   176b4:	00709193          	slli	gp,ra,0x7
   176b8:	08000e93          	li	t4,128
   176bc:	00400e13          	li	t3,4
   176c0:	25d19663          	bne	gp,t4,1790c <fail>

000176c4 <test_5>:
   176c4:	00100093          	li	ra,1
   176c8:	00e09193          	slli	gp,ra,0xe
   176cc:	00004eb7          	lui	t4,0x4
   176d0:	00500e13          	li	t3,5
   176d4:	23d19c63          	bne	gp,t4,1790c <fail>

000176d8 <test_6>:
   176d8:	00100093          	li	ra,1
   176dc:	01f09193          	slli	gp,ra,0x1f
   176e0:	80000eb7          	lui	t4,0x80000
   176e4:	00600e13          	li	t3,6
   176e8:	23d19263          	bne	gp,t4,1790c <fail>

000176ec <test_7>:
   176ec:	fff00093          	li	ra,-1
   176f0:	00009193          	slli	gp,ra,0x0
   176f4:	fff00e93          	li	t4,-1
   176f8:	00700e13          	li	t3,7
   176fc:	21d19863          	bne	gp,t4,1790c <fail>

00017700 <test_8>:
   17700:	fff00093          	li	ra,-1
   17704:	00109193          	slli	gp,ra,0x1
   17708:	ffe00e93          	li	t4,-2
   1770c:	00800e13          	li	t3,8
   17710:	1fd19e63          	bne	gp,t4,1790c <fail>

00017714 <test_9>:
   17714:	fff00093          	li	ra,-1
   17718:	00709193          	slli	gp,ra,0x7
   1771c:	f8000e93          	li	t4,-128
   17720:	00900e13          	li	t3,9
   17724:	1fd19463          	bne	gp,t4,1790c <fail>

00017728 <test_10>:
   17728:	fff00093          	li	ra,-1
   1772c:	00e09193          	slli	gp,ra,0xe
   17730:	ffffceb7          	lui	t4,0xffffc
   17734:	00a00e13          	li	t3,10
   17738:	1dd19a63          	bne	gp,t4,1790c <fail>

0001773c <test_11>:
   1773c:	fff00093          	li	ra,-1
   17740:	01f09193          	slli	gp,ra,0x1f
   17744:	80000eb7          	lui	t4,0x80000
   17748:	00b00e13          	li	t3,11
   1774c:	1dd19063          	bne	gp,t4,1790c <fail>

00017750 <test_12>:
   17750:	212120b7          	lui	ra,0x21212
   17754:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   17758:	00009193          	slli	gp,ra,0x0
   1775c:	21212eb7          	lui	t4,0x21212
   17760:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7ae5>
   17764:	00c00e13          	li	t3,12
   17768:	1bd19263          	bne	gp,t4,1790c <fail>

0001776c <test_13>:
   1776c:	212120b7          	lui	ra,0x21212
   17770:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   17774:	00109193          	slli	gp,ra,0x1
   17778:	42424eb7          	lui	t4,0x42424
   1777c:	242e8e93          	addi	t4,t4,578 # 42424242 <_etext+0x42409c06>
   17780:	00d00e13          	li	t3,13
   17784:	19d19463          	bne	gp,t4,1790c <fail>

00017788 <test_14>:
   17788:	212120b7          	lui	ra,0x21212
   1778c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   17790:	00709193          	slli	gp,ra,0x7
   17794:	90909eb7          	lui	t4,0x90909
   17798:	080e8e93          	addi	t4,t4,128 # 90909080 <_edata+0x10909010>
   1779c:	00e00e13          	li	t3,14
   177a0:	17d19663          	bne	gp,t4,1790c <fail>

000177a4 <test_15>:
   177a4:	212120b7          	lui	ra,0x21212
   177a8:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   177ac:	00e09193          	slli	gp,ra,0xe
   177b0:	48484eb7          	lui	t4,0x48484
   177b4:	00f00e13          	li	t3,15
   177b8:	15d19a63          	bne	gp,t4,1790c <fail>

000177bc <test_16>:
   177bc:	212120b7          	lui	ra,0x21212
   177c0:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   177c4:	01f09193          	slli	gp,ra,0x1f
   177c8:	80000eb7          	lui	t4,0x80000
   177cc:	01000e13          	li	t3,16
   177d0:	13d19e63          	bne	gp,t4,1790c <fail>

000177d4 <test_17>:
   177d4:	00100093          	li	ra,1
   177d8:	00709093          	slli	ra,ra,0x7
   177dc:	08000e93          	li	t4,128
   177e0:	01100e13          	li	t3,17
   177e4:	13d09463          	bne	ra,t4,1790c <fail>

000177e8 <test_18>:
   177e8:	00000213          	li	tp,0
   177ec:	00100093          	li	ra,1
   177f0:	00709193          	slli	gp,ra,0x7
   177f4:	00018313          	mv	t1,gp
   177f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   177fc:	00200293          	li	t0,2
   17800:	fe5216e3          	bne	tp,t0,177ec <test_18+0x4>
   17804:	08000e93          	li	t4,128
   17808:	01200e13          	li	t3,18
   1780c:	11d31063          	bne	t1,t4,1790c <fail>

00017810 <test_19>:
   17810:	00000213          	li	tp,0
   17814:	00100093          	li	ra,1
   17818:	00e09193          	slli	gp,ra,0xe
   1781c:	00000013          	nop
   17820:	00018313          	mv	t1,gp
   17824:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17828:	00200293          	li	t0,2
   1782c:	fe5214e3          	bne	tp,t0,17814 <test_19+0x4>
   17830:	00004eb7          	lui	t4,0x4
   17834:	01300e13          	li	t3,19
   17838:	0dd31a63          	bne	t1,t4,1790c <fail>

0001783c <test_20>:
   1783c:	00000213          	li	tp,0
   17840:	00100093          	li	ra,1
   17844:	01f09193          	slli	gp,ra,0x1f
   17848:	00000013          	nop
   1784c:	00000013          	nop
   17850:	00018313          	mv	t1,gp
   17854:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17858:	00200293          	li	t0,2
   1785c:	fe5212e3          	bne	tp,t0,17840 <test_20+0x4>
   17860:	80000eb7          	lui	t4,0x80000
   17864:	01400e13          	li	t3,20
   17868:	0bd31263          	bne	t1,t4,1790c <fail>

0001786c <test_21>:
   1786c:	00000213          	li	tp,0
   17870:	00100093          	li	ra,1
   17874:	00709193          	slli	gp,ra,0x7
   17878:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1787c:	00200293          	li	t0,2
   17880:	fe5218e3          	bne	tp,t0,17870 <test_21+0x4>
   17884:	08000e93          	li	t4,128
   17888:	01500e13          	li	t3,21
   1788c:	09d19063          	bne	gp,t4,1790c <fail>

00017890 <test_22>:
   17890:	00000213          	li	tp,0
   17894:	00100093          	li	ra,1
   17898:	00000013          	nop
   1789c:	00e09193          	slli	gp,ra,0xe
   178a0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   178a4:	00200293          	li	t0,2
   178a8:	fe5216e3          	bne	tp,t0,17894 <test_22+0x4>
   178ac:	00004eb7          	lui	t4,0x4
   178b0:	01600e13          	li	t3,22
   178b4:	05d19c63          	bne	gp,t4,1790c <fail>

000178b8 <test_23>:
   178b8:	00000213          	li	tp,0
   178bc:	00100093          	li	ra,1
   178c0:	00000013          	nop
   178c4:	00000013          	nop
   178c8:	01f09193          	slli	gp,ra,0x1f
   178cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   178d0:	00200293          	li	t0,2
   178d4:	fe5214e3          	bne	tp,t0,178bc <test_23+0x4>
   178d8:	80000eb7          	lui	t4,0x80000
   178dc:	01700e13          	li	t3,23
   178e0:	03d19663          	bne	gp,t4,1790c <fail>

000178e4 <test_24>:
   178e4:	01f01093          	slli	ra,zero,0x1f
   178e8:	00000e93          	li	t4,0
   178ec:	01800e13          	li	t3,24
   178f0:	01d09e63          	bne	ra,t4,1790c <fail>

000178f4 <test_25>:
   178f4:	02100093          	li	ra,33
   178f8:	01409013          	slli	zero,ra,0x14
   178fc:	00000e93          	li	t4,0
   17900:	01900e13          	li	t3,25
   17904:	01d01463          	bne	zero,t4,1790c <fail>
   17908:	05c01463          	bne	zero,t3,17950 <pass>

0001790c <fail>:
   1790c:	0ff00513          	li	a0,255

00017910 <.delay_fail>:
   17910:	fff50513          	addi	a0,a0,-1
   17914:	fe051ee3          	bnez	a0,17910 <.delay_fail>
   17918:	02000537          	lui	a0,0x2000
   1791c:	04500593          	li	a1,69
   17920:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17924:	05200613          	li	a2,82
   17928:	00c52023          	sw	a2,0(a0)
   1792c:	00c52023          	sw	a2,0(a0)
   17930:	04f00693          	li	a3,79
   17934:	00d52023          	sw	a3,0(a0)
   17938:	00c52023          	sw	a2,0(a0)
   1793c:	00d00713          	li	a4,13
   17940:	00e52023          	sw	a4,0(a0)
   17944:	00a00793          	li	a5,10
   17948:	00f52023          	sw	a5,0(a0)
   1794c:	fe8f806f          	j	10134 <slli_ret>

00017950 <pass>:
   17950:	0ff00513          	li	a0,255

00017954 <.delay_ok>:
   17954:	fff50513          	addi	a0,a0,-1
   17958:	fe051ee3          	bnez	a0,17954 <.delay_ok>
   1795c:	02000537          	lui	a0,0x2000
   17960:	04f00593          	li	a1,79
   17964:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17968:	04b00613          	li	a2,75
   1796c:	00c52023          	sw	a2,0(a0)
   17970:	00d00693          	li	a3,13
   17974:	00d52023          	sw	a3,0(a0)
   17978:	00a00713          	li	a4,10
   1797c:	00e52023          	sw	a4,0(a0)
   17980:	fb4f806f          	j	10134 <slli_ret>

00017984 <and>:
   17984:	0ff00513          	li	a0,255

00017988 <.delay_pr>:
   17988:	fff50513          	addi	a0,a0,-1
   1798c:	fe051ee3          	bnez	a0,17988 <.delay_pr>
   17990:	00018537          	lui	a0,0x18
   17994:	9b050513          	addi	a0,a0,-1616 # 179b0 <.test_name>
   17998:	02000637          	lui	a2,0x2000

0001799c <.prname_next>:
   1799c:	00050583          	lb	a1,0(a0)
   179a0:	00058a63          	beqz	a1,179b4 <.prname_done>
   179a4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   179a8:	00150513          	addi	a0,a0,1
   179ac:	ff1ff06f          	j	1799c <.prname_next>

000179b0 <.test_name>:
   179b0:	6e61                	lui	t3,0x18
   179b2:	0064                	addi	s1,sp,12

000179b4 <.prname_done>:
   179b4:	02e00593          	li	a1,46
   179b8:	00b62023          	sw	a1,0(a2)
   179bc:	00b62023          	sw	a1,0(a2)

000179c0 <test_2>:
   179c0:	ff0100b7          	lui	ra,0xff010
   179c4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   179c8:	0f0f1137          	lui	sp,0xf0f1
   179cc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   179d0:	0020f1b3          	and	gp,ra,sp
   179d4:	0f001eb7          	lui	t4,0xf001
   179d8:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68c4>
   179dc:	00200e13          	li	t3,2
   179e0:	49d19c63          	bne	gp,t4,17e78 <fail>

000179e4 <test_3>:
   179e4:	0ff010b7          	lui	ra,0xff01
   179e8:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   179ec:	f0f0f137          	lui	sp,0xf0f0f
   179f0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   179f4:	0020f1b3          	and	gp,ra,sp
   179f8:	00f00eb7          	lui	t4,0xf00
   179fc:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5ab4>
   17a00:	00300e13          	li	t3,3
   17a04:	47d19a63          	bne	gp,t4,17e78 <fail>

00017a08 <test_4>:
   17a08:	00ff00b7          	lui	ra,0xff0
   17a0c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17a10:	0f0f1137          	lui	sp,0xf0f1
   17a14:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17a18:	0020f1b3          	and	gp,ra,sp
   17a1c:	000f0eb7          	lui	t4,0xf0
   17a20:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59d3>
   17a24:	00400e13          	li	t3,4
   17a28:	45d19863          	bne	gp,t4,17e78 <fail>

00017a2c <test_5>:
   17a2c:	f00ff0b7          	lui	ra,0xf00ff
   17a30:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   17a34:	f0f0f137          	lui	sp,0xf0f0f
   17a38:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17a3c:	0020f1b3          	and	gp,ra,sp
   17a40:	f000feb7          	lui	t4,0xf000f
   17a44:	00500e13          	li	t3,5
   17a48:	43d19863          	bne	gp,t4,17e78 <fail>

00017a4c <test_6>:
   17a4c:	ff0100b7          	lui	ra,0xff010
   17a50:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17a54:	0f0f1137          	lui	sp,0xf0f1
   17a58:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17a5c:	0020f0b3          	and	ra,ra,sp
   17a60:	0f001eb7          	lui	t4,0xf001
   17a64:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68c4>
   17a68:	00600e13          	li	t3,6
   17a6c:	41d09663          	bne	ra,t4,17e78 <fail>

00017a70 <test_7>:
   17a70:	0ff010b7          	lui	ra,0xff01
   17a74:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17a78:	f0f0f137          	lui	sp,0xf0f0f
   17a7c:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17a80:	0020f133          	and	sp,ra,sp
   17a84:	00f00eb7          	lui	t4,0xf00
   17a88:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5ab4>
   17a8c:	00700e13          	li	t3,7
   17a90:	3fd11463          	bne	sp,t4,17e78 <fail>

00017a94 <test_8>:
   17a94:	ff0100b7          	lui	ra,0xff010
   17a98:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17a9c:	0010f0b3          	and	ra,ra,ra
   17aa0:	ff010eb7          	lui	t4,0xff010
   17aa4:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   17aa8:	00800e13          	li	t3,8
   17aac:	3dd09663          	bne	ra,t4,17e78 <fail>

00017ab0 <test_9>:
   17ab0:	00000213          	li	tp,0
   17ab4:	ff0100b7          	lui	ra,0xff010
   17ab8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17abc:	0f0f1137          	lui	sp,0xf0f1
   17ac0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17ac4:	0020f1b3          	and	gp,ra,sp
   17ac8:	00018313          	mv	t1,gp
   17acc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17ad0:	00200293          	li	t0,2
   17ad4:	fe5210e3          	bne	tp,t0,17ab4 <test_9+0x4>
   17ad8:	0f001eb7          	lui	t4,0xf001
   17adc:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68c4>
   17ae0:	00900e13          	li	t3,9
   17ae4:	39d31a63          	bne	t1,t4,17e78 <fail>

00017ae8 <test_10>:
   17ae8:	00000213          	li	tp,0
   17aec:	0ff010b7          	lui	ra,0xff01
   17af0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17af4:	f0f0f137          	lui	sp,0xf0f0f
   17af8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17afc:	0020f1b3          	and	gp,ra,sp
   17b00:	00000013          	nop
   17b04:	00018313          	mv	t1,gp
   17b08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b0c:	00200293          	li	t0,2
   17b10:	fc521ee3          	bne	tp,t0,17aec <test_10+0x4>
   17b14:	00f00eb7          	lui	t4,0xf00
   17b18:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5ab4>
   17b1c:	00a00e13          	li	t3,10
   17b20:	35d31c63          	bne	t1,t4,17e78 <fail>

00017b24 <test_11>:
   17b24:	00000213          	li	tp,0
   17b28:	00ff00b7          	lui	ra,0xff0
   17b2c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17b30:	0f0f1137          	lui	sp,0xf0f1
   17b34:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17b38:	0020f1b3          	and	gp,ra,sp
   17b3c:	00000013          	nop
   17b40:	00000013          	nop
   17b44:	00018313          	mv	t1,gp
   17b48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b4c:	00200293          	li	t0,2
   17b50:	fc521ce3          	bne	tp,t0,17b28 <test_11+0x4>
   17b54:	000f0eb7          	lui	t4,0xf0
   17b58:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59d3>
   17b5c:	00b00e13          	li	t3,11
   17b60:	31d31c63          	bne	t1,t4,17e78 <fail>

00017b64 <test_12>:
   17b64:	00000213          	li	tp,0
   17b68:	ff0100b7          	lui	ra,0xff010
   17b6c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17b70:	0f0f1137          	lui	sp,0xf0f1
   17b74:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17b78:	0020f1b3          	and	gp,ra,sp
   17b7c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17b80:	00200293          	li	t0,2
   17b84:	fe5212e3          	bne	tp,t0,17b68 <test_12+0x4>
   17b88:	0f001eb7          	lui	t4,0xf001
   17b8c:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68c4>
   17b90:	00c00e13          	li	t3,12
   17b94:	2fd19263          	bne	gp,t4,17e78 <fail>

00017b98 <test_13>:
   17b98:	00000213          	li	tp,0
   17b9c:	0ff010b7          	lui	ra,0xff01
   17ba0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17ba4:	f0f0f137          	lui	sp,0xf0f0f
   17ba8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17bac:	00000013          	nop
   17bb0:	0020f1b3          	and	gp,ra,sp
   17bb4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bb8:	00200293          	li	t0,2
   17bbc:	fe5210e3          	bne	tp,t0,17b9c <test_13+0x4>
   17bc0:	00f00eb7          	lui	t4,0xf00
   17bc4:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5ab4>
   17bc8:	00d00e13          	li	t3,13
   17bcc:	2bd19663          	bne	gp,t4,17e78 <fail>

00017bd0 <test_14>:
   17bd0:	00000213          	li	tp,0
   17bd4:	00ff00b7          	lui	ra,0xff0
   17bd8:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17bdc:	0f0f1137          	lui	sp,0xf0f1
   17be0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17be4:	00000013          	nop
   17be8:	00000013          	nop
   17bec:	0020f1b3          	and	gp,ra,sp
   17bf0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17bf4:	00200293          	li	t0,2
   17bf8:	fc521ee3          	bne	tp,t0,17bd4 <test_14+0x4>
   17bfc:	000f0eb7          	lui	t4,0xf0
   17c00:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59d3>
   17c04:	00e00e13          	li	t3,14
   17c08:	27d19863          	bne	gp,t4,17e78 <fail>

00017c0c <test_15>:
   17c0c:	00000213          	li	tp,0
   17c10:	ff0100b7          	lui	ra,0xff010
   17c14:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17c18:	00000013          	nop
   17c1c:	0f0f1137          	lui	sp,0xf0f1
   17c20:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17c24:	0020f1b3          	and	gp,ra,sp
   17c28:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c2c:	00200293          	li	t0,2
   17c30:	fe5210e3          	bne	tp,t0,17c10 <test_15+0x4>
   17c34:	0f001eb7          	lui	t4,0xf001
   17c38:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68c4>
   17c3c:	00f00e13          	li	t3,15
   17c40:	23d19c63          	bne	gp,t4,17e78 <fail>

00017c44 <test_16>:
   17c44:	00000213          	li	tp,0
   17c48:	0ff010b7          	lui	ra,0xff01
   17c4c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17c50:	00000013          	nop
   17c54:	f0f0f137          	lui	sp,0xf0f0f
   17c58:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17c5c:	00000013          	nop
   17c60:	0020f1b3          	and	gp,ra,sp
   17c64:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17c68:	00200293          	li	t0,2
   17c6c:	fc521ee3          	bne	tp,t0,17c48 <test_16+0x4>
   17c70:	00f00eb7          	lui	t4,0xf00
   17c74:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5ab4>
   17c78:	01000e13          	li	t3,16
   17c7c:	1fd19e63          	bne	gp,t4,17e78 <fail>

00017c80 <test_17>:
   17c80:	00000213          	li	tp,0
   17c84:	00ff00b7          	lui	ra,0xff0
   17c88:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17c8c:	00000013          	nop
   17c90:	00000013          	nop
   17c94:	0f0f1137          	lui	sp,0xf0f1
   17c98:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17c9c:	0020f1b3          	and	gp,ra,sp
   17ca0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17ca4:	00200293          	li	t0,2
   17ca8:	fc521ee3          	bne	tp,t0,17c84 <test_17+0x4>
   17cac:	000f0eb7          	lui	t4,0xf0
   17cb0:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59d3>
   17cb4:	01100e13          	li	t3,17
   17cb8:	1dd19063          	bne	gp,t4,17e78 <fail>

00017cbc <test_18>:
   17cbc:	00000213          	li	tp,0
   17cc0:	0f0f1137          	lui	sp,0xf0f1
   17cc4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17cc8:	ff0100b7          	lui	ra,0xff010
   17ccc:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17cd0:	0020f1b3          	and	gp,ra,sp
   17cd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17cd8:	00200293          	li	t0,2
   17cdc:	fe5212e3          	bne	tp,t0,17cc0 <test_18+0x4>
   17ce0:	0f001eb7          	lui	t4,0xf001
   17ce4:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68c4>
   17ce8:	01200e13          	li	t3,18
   17cec:	19d19663          	bne	gp,t4,17e78 <fail>

00017cf0 <test_19>:
   17cf0:	00000213          	li	tp,0
   17cf4:	f0f0f137          	lui	sp,0xf0f0f
   17cf8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17cfc:	0ff010b7          	lui	ra,0xff01
   17d00:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17d04:	00000013          	nop
   17d08:	0020f1b3          	and	gp,ra,sp
   17d0c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d10:	00200293          	li	t0,2
   17d14:	fe5210e3          	bne	tp,t0,17cf4 <test_19+0x4>
   17d18:	00f00eb7          	lui	t4,0xf00
   17d1c:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5ab4>
   17d20:	01300e13          	li	t3,19
   17d24:	15d19a63          	bne	gp,t4,17e78 <fail>

00017d28 <test_20>:
   17d28:	00000213          	li	tp,0
   17d2c:	0f0f1137          	lui	sp,0xf0f1
   17d30:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17d34:	00ff00b7          	lui	ra,0xff0
   17d38:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17d3c:	00000013          	nop
   17d40:	00000013          	nop
   17d44:	0020f1b3          	and	gp,ra,sp
   17d48:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d4c:	00200293          	li	t0,2
   17d50:	fc521ee3          	bne	tp,t0,17d2c <test_20+0x4>
   17d54:	000f0eb7          	lui	t4,0xf0
   17d58:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59d3>
   17d5c:	01400e13          	li	t3,20
   17d60:	11d19c63          	bne	gp,t4,17e78 <fail>

00017d64 <test_21>:
   17d64:	00000213          	li	tp,0
   17d68:	0f0f1137          	lui	sp,0xf0f1
   17d6c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17d70:	00000013          	nop
   17d74:	ff0100b7          	lui	ra,0xff010
   17d78:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17d7c:	0020f1b3          	and	gp,ra,sp
   17d80:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17d84:	00200293          	li	t0,2
   17d88:	fe5210e3          	bne	tp,t0,17d68 <test_21+0x4>
   17d8c:	0f001eb7          	lui	t4,0xf001
   17d90:	f00e8e93          	addi	t4,t4,-256 # f000f00 <_etext+0xefe68c4>
   17d94:	01500e13          	li	t3,21
   17d98:	0fd19063          	bne	gp,t4,17e78 <fail>

00017d9c <test_22>:
   17d9c:	00000213          	li	tp,0
   17da0:	f0f0f137          	lui	sp,0xf0f0f
   17da4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <_edata+0x70f0f080>
   17da8:	00000013          	nop
   17dac:	0ff010b7          	lui	ra,0xff01
   17db0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17db4:	00000013          	nop
   17db8:	0020f1b3          	and	gp,ra,sp
   17dbc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17dc0:	00200293          	li	t0,2
   17dc4:	fc521ee3          	bne	tp,t0,17da0 <test_22+0x4>
   17dc8:	00f00eb7          	lui	t4,0xf00
   17dcc:	0f0e8e93          	addi	t4,t4,240 # f000f0 <_etext+0xee5ab4>
   17dd0:	01600e13          	li	t3,22
   17dd4:	0bd19263          	bne	gp,t4,17e78 <fail>

00017dd8 <test_23>:
   17dd8:	00000213          	li	tp,0
   17ddc:	0f0f1137          	lui	sp,0xf0f1
   17de0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_etext+0xf0d68d3>
   17de4:	00000013          	nop
   17de8:	00000013          	nop
   17dec:	00ff00b7          	lui	ra,0xff0
   17df0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17df4:	0020f1b3          	and	gp,ra,sp
   17df8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17dfc:	00200293          	li	t0,2
   17e00:	fc521ee3          	bne	tp,t0,17ddc <test_23+0x4>
   17e04:	000f0eb7          	lui	t4,0xf0
   17e08:	00fe8e93          	addi	t4,t4,15 # f000f <_etext+0xd59d3>
   17e0c:	01700e13          	li	t3,23
   17e10:	07d19463          	bne	gp,t4,17e78 <fail>

00017e14 <test_24>:
   17e14:	ff0100b7          	lui	ra,0xff010
   17e18:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17e1c:	00107133          	and	sp,zero,ra
   17e20:	00000e93          	li	t4,0
   17e24:	01800e13          	li	t3,24
   17e28:	05d11863          	bne	sp,t4,17e78 <fail>

00017e2c <test_25>:
   17e2c:	00ff00b7          	lui	ra,0xff0
   17e30:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17e34:	0000f133          	and	sp,ra,zero
   17e38:	00000e93          	li	t4,0
   17e3c:	01900e13          	li	t3,25
   17e40:	03d11c63          	bne	sp,t4,17e78 <fail>

00017e44 <test_26>:
   17e44:	000070b3          	and	ra,zero,zero
   17e48:	00000e93          	li	t4,0
   17e4c:	01a00e13          	li	t3,26
   17e50:	03d09463          	bne	ra,t4,17e78 <fail>

00017e54 <test_27>:
   17e54:	111110b7          	lui	ra,0x11111
   17e58:	11108093          	addi	ra,ra,273 # 11111111 <_etext+0x110f6ad5>
   17e5c:	22222137          	lui	sp,0x22222
   17e60:	22210113          	addi	sp,sp,546 # 22222222 <_etext+0x22207be6>
   17e64:	0020f033          	and	zero,ra,sp
   17e68:	00000e93          	li	t4,0
   17e6c:	01b00e13          	li	t3,27
   17e70:	01d01463          	bne	zero,t4,17e78 <fail>
   17e74:	05c01463          	bne	zero,t3,17ebc <pass>

00017e78 <fail>:
   17e78:	0ff00513          	li	a0,255

00017e7c <.delay_fail>:
   17e7c:	fff50513          	addi	a0,a0,-1
   17e80:	fe051ee3          	bnez	a0,17e7c <.delay_fail>
   17e84:	02000537          	lui	a0,0x2000
   17e88:	04500593          	li	a1,69
   17e8c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17e90:	05200613          	li	a2,82
   17e94:	00c52023          	sw	a2,0(a0)
   17e98:	00c52023          	sw	a2,0(a0)
   17e9c:	04f00693          	li	a3,79
   17ea0:	00d52023          	sw	a3,0(a0)
   17ea4:	00c52023          	sw	a2,0(a0)
   17ea8:	00d00713          	li	a4,13
   17eac:	00e52023          	sw	a4,0(a0)
   17eb0:	00a00793          	li	a5,10
   17eb4:	00f52023          	sw	a5,0(a0)
   17eb8:	aa8f806f          	j	10160 <and_ret>

00017ebc <pass>:
   17ebc:	0ff00513          	li	a0,255

00017ec0 <.delay_ok>:
   17ec0:	fff50513          	addi	a0,a0,-1
   17ec4:	fe051ee3          	bnez	a0,17ec0 <.delay_ok>
   17ec8:	02000537          	lui	a0,0x2000
   17ecc:	04f00593          	li	a1,79
   17ed0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   17ed4:	04b00613          	li	a2,75
   17ed8:	00c52023          	sw	a2,0(a0)
   17edc:	00d00693          	li	a3,13
   17ee0:	00d52023          	sw	a3,0(a0)
   17ee4:	00a00713          	li	a4,10
   17ee8:	00e52023          	sw	a4,0(a0)
   17eec:	a74f806f          	j	10160 <and_ret>

00017ef0 <ori>:
   17ef0:	0ff00513          	li	a0,255

00017ef4 <.delay_pr>:
   17ef4:	fff50513          	addi	a0,a0,-1
   17ef8:	fe051ee3          	bnez	a0,17ef4 <.delay_pr>
   17efc:	00018537          	lui	a0,0x18
   17f00:	f1c50513          	addi	a0,a0,-228 # 17f1c <.test_name>
   17f04:	02000637          	lui	a2,0x2000

00017f08 <.prname_next>:
   17f08:	00050583          	lb	a1,0(a0)
   17f0c:	00058a63          	beqz	a1,17f20 <.prname_done>
   17f10:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   17f14:	00150513          	addi	a0,a0,1
   17f18:	ff1ff06f          	j	17f08 <.prname_next>

00017f1c <.test_name>:
   17f1c:	0069726f          	jal	tp,aef22 <_etext+0x948e6>

00017f20 <.prname_done>:
   17f20:	02e00593          	li	a1,46
   17f24:	00b62023          	sw	a1,0(a2)
   17f28:	00b62023          	sw	a1,0(a2)

00017f2c <test_2>:
   17f2c:	ff0100b7          	lui	ra,0xff010
   17f30:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17f34:	f0f0e193          	ori	gp,ra,-241
   17f38:	f0f00e93          	li	t4,-241
   17f3c:	00200e13          	li	t3,2
   17f40:	1dd19463          	bne	gp,t4,18108 <fail>

00017f44 <test_3>:
   17f44:	0ff010b7          	lui	ra,0xff01
   17f48:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17f4c:	0f00e193          	ori	gp,ra,240
   17f50:	0ff01eb7          	lui	t4,0xff01
   17f54:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   17f58:	00300e13          	li	t3,3
   17f5c:	1bd19663          	bne	gp,t4,18108 <fail>

00017f60 <test_4>:
   17f60:	00ff00b7          	lui	ra,0xff0
   17f64:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17f68:	70f0e193          	ori	gp,ra,1807
   17f6c:	00ff0eb7          	lui	t4,0xff0
   17f70:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd61c3>
   17f74:	00400e13          	li	t3,4
   17f78:	19d19863          	bne	gp,t4,18108 <fail>

00017f7c <test_5>:
   17f7c:	f00ff0b7          	lui	ra,0xf00ff
   17f80:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   17f84:	0f00e193          	ori	gp,ra,240
   17f88:	f00ffeb7          	lui	t4,0xf00ff
   17f8c:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   17f90:	00500e13          	li	t3,5
   17f94:	17d19a63          	bne	gp,t4,18108 <fail>

00017f98 <test_6>:
   17f98:	ff0100b7          	lui	ra,0xff010
   17f9c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   17fa0:	0f00e093          	ori	ra,ra,240
   17fa4:	ff010eb7          	lui	t4,0xff010
   17fa8:	ff0e8e93          	addi	t4,t4,-16 # ff00fff0 <_edata+0x7f00ff80>
   17fac:	00600e13          	li	t3,6
   17fb0:	15d09c63          	bne	ra,t4,18108 <fail>

00017fb4 <test_7>:
   17fb4:	00000213          	li	tp,0
   17fb8:	0ff010b7          	lui	ra,0xff01
   17fbc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   17fc0:	0f00e193          	ori	gp,ra,240
   17fc4:	00018313          	mv	t1,gp
   17fc8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   17fcc:	00200293          	li	t0,2
   17fd0:	fe5214e3          	bne	tp,t0,17fb8 <test_7+0x4>
   17fd4:	0ff01eb7          	lui	t4,0xff01
   17fd8:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   17fdc:	00700e13          	li	t3,7
   17fe0:	13d31463          	bne	t1,t4,18108 <fail>

00017fe4 <test_8>:
   17fe4:	00000213          	li	tp,0
   17fe8:	00ff00b7          	lui	ra,0xff0
   17fec:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   17ff0:	70f0e193          	ori	gp,ra,1807
   17ff4:	00000013          	nop
   17ff8:	00018313          	mv	t1,gp
   17ffc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18000:	00200293          	li	t0,2
   18004:	fe5212e3          	bne	tp,t0,17fe8 <test_8+0x4>
   18008:	00ff0eb7          	lui	t4,0xff0
   1800c:	7ffe8e93          	addi	t4,t4,2047 # ff07ff <_etext+0xfd61c3>
   18010:	00800e13          	li	t3,8
   18014:	0fd31a63          	bne	t1,t4,18108 <fail>

00018018 <test_9>:
   18018:	00000213          	li	tp,0
   1801c:	f00ff0b7          	lui	ra,0xf00ff
   18020:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   18024:	0f00e193          	ori	gp,ra,240
   18028:	00000013          	nop
   1802c:	00000013          	nop
   18030:	00018313          	mv	t1,gp
   18034:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18038:	00200293          	li	t0,2
   1803c:	fe5210e3          	bne	tp,t0,1801c <test_9+0x4>
   18040:	f00ffeb7          	lui	t4,0xf00ff
   18044:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   18048:	00900e13          	li	t3,9
   1804c:	0bd31e63          	bne	t1,t4,18108 <fail>

00018050 <test_10>:
   18050:	00000213          	li	tp,0
   18054:	0ff010b7          	lui	ra,0xff01
   18058:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   1805c:	0f00e193          	ori	gp,ra,240
   18060:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18064:	00200293          	li	t0,2
   18068:	fe5216e3          	bne	tp,t0,18054 <test_10+0x4>
   1806c:	0ff01eb7          	lui	t4,0xff01
   18070:	ff0e8e93          	addi	t4,t4,-16 # ff00ff0 <_etext+0xfee69b4>
   18074:	00a00e13          	li	t3,10
   18078:	09d19863          	bne	gp,t4,18108 <fail>

0001807c <test_11>:
   1807c:	00000213          	li	tp,0
   18080:	00ff00b7          	lui	ra,0xff0
   18084:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   18088:	00000013          	nop
   1808c:	f0f0e193          	ori	gp,ra,-241
   18090:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18094:	00200293          	li	t0,2
   18098:	fe5214e3          	bne	tp,t0,18080 <test_11+0x4>
   1809c:	fff00e93          	li	t4,-1
   180a0:	00b00e13          	li	t3,11
   180a4:	07d19263          	bne	gp,t4,18108 <fail>

000180a8 <test_12>:
   180a8:	00000213          	li	tp,0
   180ac:	f00ff0b7          	lui	ra,0xf00ff
   180b0:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   180b4:	00000013          	nop
   180b8:	00000013          	nop
   180bc:	0f00e193          	ori	gp,ra,240
   180c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   180c4:	00200293          	li	t0,2
   180c8:	fe5212e3          	bne	tp,t0,180ac <test_12+0x4>
   180cc:	f00ffeb7          	lui	t4,0xf00ff
   180d0:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   180d4:	00c00e13          	li	t3,12
   180d8:	03d19863          	bne	gp,t4,18108 <fail>

000180dc <test_13>:
   180dc:	0f006093          	ori	ra,zero,240
   180e0:	0f000e93          	li	t4,240
   180e4:	00d00e13          	li	t3,13
   180e8:	03d09063          	bne	ra,t4,18108 <fail>

000180ec <test_14>:
   180ec:	00ff00b7          	lui	ra,0xff0
   180f0:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   180f4:	70f0e013          	ori	zero,ra,1807
   180f8:	00000e93          	li	t4,0
   180fc:	00e00e13          	li	t3,14
   18100:	01d01463          	bne	zero,t4,18108 <fail>
   18104:	05c01463          	bne	zero,t3,1814c <pass>

00018108 <fail>:
   18108:	0ff00513          	li	a0,255

0001810c <.delay_fail>:
   1810c:	fff50513          	addi	a0,a0,-1
   18110:	fe051ee3          	bnez	a0,1810c <.delay_fail>
   18114:	02000537          	lui	a0,0x2000
   18118:	04500593          	li	a1,69
   1811c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18120:	05200613          	li	a2,82
   18124:	00c52023          	sw	a2,0(a0)
   18128:	00c52023          	sw	a2,0(a0)
   1812c:	04f00693          	li	a3,79
   18130:	00d52023          	sw	a3,0(a0)
   18134:	00c52023          	sw	a2,0(a0)
   18138:	00d00713          	li	a4,13
   1813c:	00e52023          	sw	a4,0(a0)
   18140:	00a00793          	li	a5,10
   18144:	00f52023          	sw	a5,0(a0)
   18148:	fe5f706f          	j	1012c <ori_ret>

0001814c <pass>:
   1814c:	0ff00513          	li	a0,255

00018150 <.delay_ok>:
   18150:	fff50513          	addi	a0,a0,-1
   18154:	fe051ee3          	bnez	a0,18150 <.delay_ok>
   18158:	02000537          	lui	a0,0x2000
   1815c:	04f00593          	li	a1,79
   18160:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18164:	04b00613          	li	a2,75
   18168:	00c52023          	sw	a2,0(a0)
   1816c:	00d00693          	li	a3,13
   18170:	00d52023          	sw	a3,0(a0)
   18174:	00a00713          	li	a4,10
   18178:	00e52023          	sw	a4,0(a0)
   1817c:	fb1f706f          	j	1012c <ori_ret>

00018180 <lhu>:
   18180:	0ff00513          	li	a0,255

00018184 <.delay_pr>:
   18184:	fff50513          	addi	a0,a0,-1
   18188:	fe051ee3          	bnez	a0,18184 <.delay_pr>
   1818c:	00018537          	lui	a0,0x18
   18190:	1ac50513          	addi	a0,a0,428 # 181ac <.test_name>
   18194:	02000637          	lui	a2,0x2000

00018198 <.prname_next>:
   18198:	00050583          	lb	a1,0(a0)
   1819c:	00058a63          	beqz	a1,181b0 <.prname_done>
   181a0:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   181a4:	00150513          	addi	a0,a0,1
   181a8:	ff1ff06f          	j	18198 <.prname_next>

000181ac <.test_name>:
   181ac:	686c                	flw	fa1,84(s0)
   181ae:	0075                	c.nop	29

000181b0 <.prname_done>:
   181b0:	02e00593          	li	a1,46
   181b4:	00b62023          	sw	a1,0(a2)
   181b8:	00b62023          	sw	a1,0(a2)

000181bc <test_2>:
   181bc:	7ffe8097          	auipc	ra,0x7ffe8
   181c0:	eac08093          	addi	ra,ra,-340 # 80000068 <tdat>
   181c4:	0000d183          	lhu	gp,0(ra)
   181c8:	0ff00e93          	li	t4,255
   181cc:	00200e13          	li	t3,2
   181d0:	27d19663          	bne	gp,t4,1843c <fail>

000181d4 <test_3>:
   181d4:	7ffe8097          	auipc	ra,0x7ffe8
   181d8:	e9408093          	addi	ra,ra,-364 # 80000068 <tdat>
   181dc:	0020d183          	lhu	gp,2(ra)
   181e0:	00010eb7          	lui	t4,0x10
   181e4:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   181e8:	00300e13          	li	t3,3
   181ec:	25d19863          	bne	gp,t4,1843c <fail>

000181f0 <test_4>:
   181f0:	7ffe8097          	auipc	ra,0x7ffe8
   181f4:	e7808093          	addi	ra,ra,-392 # 80000068 <tdat>
   181f8:	0040d183          	lhu	gp,4(ra)
   181fc:	00001eb7          	lui	t4,0x1
   18200:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   18204:	00400e13          	li	t3,4
   18208:	23d19a63          	bne	gp,t4,1843c <fail>

0001820c <test_5>:
   1820c:	7ffe8097          	auipc	ra,0x7ffe8
   18210:	e5c08093          	addi	ra,ra,-420 # 80000068 <tdat>
   18214:	0060d183          	lhu	gp,6(ra)
   18218:	0000feb7          	lui	t4,0xf
   1821c:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   18220:	00500e13          	li	t3,5
   18224:	21d19c63          	bne	gp,t4,1843c <fail>

00018228 <test_6>:
   18228:	7ffe8097          	auipc	ra,0x7ffe8
   1822c:	e4608093          	addi	ra,ra,-442 # 8000006e <tdat4>
   18230:	ffa0d183          	lhu	gp,-6(ra)
   18234:	0ff00e93          	li	t4,255
   18238:	00600e13          	li	t3,6
   1823c:	21d19063          	bne	gp,t4,1843c <fail>

00018240 <test_7>:
   18240:	7ffe8097          	auipc	ra,0x7ffe8
   18244:	e2e08093          	addi	ra,ra,-466 # 8000006e <tdat4>
   18248:	ffc0d183          	lhu	gp,-4(ra)
   1824c:	00010eb7          	lui	t4,0x10
   18250:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   18254:	00700e13          	li	t3,7
   18258:	1fd19263          	bne	gp,t4,1843c <fail>

0001825c <test_8>:
   1825c:	7ffe8097          	auipc	ra,0x7ffe8
   18260:	e1208093          	addi	ra,ra,-494 # 8000006e <tdat4>
   18264:	ffe0d183          	lhu	gp,-2(ra)
   18268:	00001eb7          	lui	t4,0x1
   1826c:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   18270:	00800e13          	li	t3,8
   18274:	1dd19463          	bne	gp,t4,1843c <fail>

00018278 <test_9>:
   18278:	7ffe8097          	auipc	ra,0x7ffe8
   1827c:	df608093          	addi	ra,ra,-522 # 8000006e <tdat4>
   18280:	0000d183          	lhu	gp,0(ra)
   18284:	0000feb7          	lui	t4,0xf
   18288:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   1828c:	00900e13          	li	t3,9
   18290:	1bd19663          	bne	gp,t4,1843c <fail>

00018294 <test_10>:
   18294:	7ffe8097          	auipc	ra,0x7ffe8
   18298:	dd408093          	addi	ra,ra,-556 # 80000068 <tdat>
   1829c:	fe008093          	addi	ra,ra,-32
   182a0:	0200d183          	lhu	gp,32(ra)
   182a4:	0ff00e93          	li	t4,255
   182a8:	00a00e13          	li	t3,10
   182ac:	19d19863          	bne	gp,t4,1843c <fail>

000182b0 <test_11>:
   182b0:	7ffe8097          	auipc	ra,0x7ffe8
   182b4:	db808093          	addi	ra,ra,-584 # 80000068 <tdat>
   182b8:	ffb08093          	addi	ra,ra,-5
   182bc:	0070d183          	lhu	gp,7(ra)
   182c0:	00010eb7          	lui	t4,0x10
   182c4:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   182c8:	00b00e13          	li	t3,11
   182cc:	17d19863          	bne	gp,t4,1843c <fail>

000182d0 <test_12>:
   182d0:	00c00e13          	li	t3,12
   182d4:	00000213          	li	tp,0
   182d8:	7ffe8097          	auipc	ra,0x7ffe8
   182dc:	d9208093          	addi	ra,ra,-622 # 8000006a <tdat2>
   182e0:	0020d183          	lhu	gp,2(ra)
   182e4:	00018313          	mv	t1,gp
   182e8:	00001eb7          	lui	t4,0x1
   182ec:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   182f0:	15d31663          	bne	t1,t4,1843c <fail>
   182f4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   182f8:	00200293          	li	t0,2
   182fc:	fc521ee3          	bne	tp,t0,182d8 <test_12+0x8>

00018300 <test_13>:
   18300:	00d00e13          	li	t3,13
   18304:	00000213          	li	tp,0
   18308:	7ffe8097          	auipc	ra,0x7ffe8
   1830c:	d6408093          	addi	ra,ra,-668 # 8000006c <tdat3>
   18310:	0020d183          	lhu	gp,2(ra)
   18314:	00000013          	nop
   18318:	00018313          	mv	t1,gp
   1831c:	0000feb7          	lui	t4,0xf
   18320:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   18324:	11d31c63          	bne	t1,t4,1843c <fail>
   18328:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1832c:	00200293          	li	t0,2
   18330:	fc521ce3          	bne	tp,t0,18308 <test_13+0x8>

00018334 <test_14>:
   18334:	00e00e13          	li	t3,14
   18338:	00000213          	li	tp,0
   1833c:	7ffe8097          	auipc	ra,0x7ffe8
   18340:	d2c08093          	addi	ra,ra,-724 # 80000068 <tdat>
   18344:	0020d183          	lhu	gp,2(ra)
   18348:	00000013          	nop
   1834c:	00000013          	nop
   18350:	00018313          	mv	t1,gp
   18354:	00010eb7          	lui	t4,0x10
   18358:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   1835c:	0fd31063          	bne	t1,t4,1843c <fail>
   18360:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18364:	00200293          	li	t0,2
   18368:	fc521ae3          	bne	tp,t0,1833c <test_14+0x8>

0001836c <test_15>:
   1836c:	00f00e13          	li	t3,15
   18370:	00000213          	li	tp,0
   18374:	7ffe8097          	auipc	ra,0x7ffe8
   18378:	cf608093          	addi	ra,ra,-778 # 8000006a <tdat2>
   1837c:	0020d183          	lhu	gp,2(ra)
   18380:	00001eb7          	lui	t4,0x1
   18384:	ff0e8e93          	addi	t4,t4,-16 # ff0 <_start-0xf010>
   18388:	0bd19a63          	bne	gp,t4,1843c <fail>
   1838c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18390:	00200293          	li	t0,2
   18394:	fe5210e3          	bne	tp,t0,18374 <test_15+0x8>

00018398 <test_16>:
   18398:	01000e13          	li	t3,16
   1839c:	00000213          	li	tp,0
   183a0:	7ffe8097          	auipc	ra,0x7ffe8
   183a4:	ccc08093          	addi	ra,ra,-820 # 8000006c <tdat3>
   183a8:	00000013          	nop
   183ac:	0020d183          	lhu	gp,2(ra)
   183b0:	0000feb7          	lui	t4,0xf
   183b4:	00fe8e93          	addi	t4,t4,15 # f00f <_start-0xff1>
   183b8:	09d19263          	bne	gp,t4,1843c <fail>
   183bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   183c0:	00200293          	li	t0,2
   183c4:	fc521ee3          	bne	tp,t0,183a0 <test_16+0x8>

000183c8 <test_17>:
   183c8:	01100e13          	li	t3,17
   183cc:	00000213          	li	tp,0
   183d0:	7ffe8097          	auipc	ra,0x7ffe8
   183d4:	c9808093          	addi	ra,ra,-872 # 80000068 <tdat>
   183d8:	00000013          	nop
   183dc:	00000013          	nop
   183e0:	0020d183          	lhu	gp,2(ra)
   183e4:	00010eb7          	lui	t4,0x10
   183e8:	f00e8e93          	addi	t4,t4,-256 # ff00 <_start-0x100>
   183ec:	05d19863          	bne	gp,t4,1843c <fail>
   183f0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   183f4:	00200293          	li	t0,2
   183f8:	fc521ce3          	bne	tp,t0,183d0 <test_17+0x8>

000183fc <test_18>:
   183fc:	7ffe8197          	auipc	gp,0x7ffe8
   18400:	c6c18193          	addi	gp,gp,-916 # 80000068 <tdat>
   18404:	0001d103          	lhu	sp,0(gp)
   18408:	00200113          	li	sp,2
   1840c:	00200e93          	li	t4,2
   18410:	01200e13          	li	t3,18
   18414:	03d11463          	bne	sp,t4,1843c <fail>

00018418 <test_19>:
   18418:	7ffe8197          	auipc	gp,0x7ffe8
   1841c:	c5018193          	addi	gp,gp,-944 # 80000068 <tdat>
   18420:	0001d103          	lhu	sp,0(gp)
   18424:	00000013          	nop
   18428:	00200113          	li	sp,2
   1842c:	00200e93          	li	t4,2
   18430:	01300e13          	li	t3,19
   18434:	01d11463          	bne	sp,t4,1843c <fail>
   18438:	05c01463          	bne	zero,t3,18480 <pass>

0001843c <fail>:
   1843c:	0ff00513          	li	a0,255

00018440 <.delay_fail>:
   18440:	fff50513          	addi	a0,a0,-1
   18444:	fe051ee3          	bnez	a0,18440 <.delay_fail>
   18448:	02000537          	lui	a0,0x2000
   1844c:	04500593          	li	a1,69
   18450:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18454:	05200613          	li	a2,82
   18458:	00c52023          	sw	a2,0(a0)
   1845c:	00c52023          	sw	a2,0(a0)
   18460:	04f00693          	li	a3,79
   18464:	00d52023          	sw	a3,0(a0)
   18468:	00c52023          	sw	a2,0(a0)
   1846c:	00d00713          	li	a4,13
   18470:	00e52023          	sw	a4,0(a0)
   18474:	00a00793          	li	a5,10
   18478:	00f52023          	sw	a5,0(a0)
   1847c:	c95f706f          	j	10110 <lhu_ret>

00018480 <pass>:
   18480:	0ff00513          	li	a0,255

00018484 <.delay_ok>:
   18484:	fff50513          	addi	a0,a0,-1
   18488:	fe051ee3          	bnez	a0,18484 <.delay_ok>
   1848c:	02000537          	lui	a0,0x2000
   18490:	04f00593          	li	a1,79
   18494:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18498:	04b00613          	li	a2,75
   1849c:	00c52023          	sw	a2,0(a0)
   184a0:	00d00693          	li	a3,13
   184a4:	00d52023          	sw	a3,0(a0)
   184a8:	00a00713          	li	a4,10
   184ac:	00e52023          	sw	a4,0(a0)
   184b0:	c61f706f          	j	10110 <lhu_ret>

000184b4 <srl>:
   184b4:	0ff00513          	li	a0,255

000184b8 <.delay_pr>:
   184b8:	fff50513          	addi	a0,a0,-1
   184bc:	fe051ee3          	bnez	a0,184b8 <.delay_pr>
   184c0:	00018537          	lui	a0,0x18
   184c4:	4e050513          	addi	a0,a0,1248 # 184e0 <.test_name>
   184c8:	02000637          	lui	a2,0x2000

000184cc <.prname_next>:
   184cc:	00050583          	lb	a1,0(a0)
   184d0:	00058a63          	beqz	a1,184e4 <.prname_done>
   184d4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   184d8:	00150513          	addi	a0,a0,1
   184dc:	ff1ff06f          	j	184cc <.prname_next>

000184e0 <.test_name>:
   184e0:	006c7273          	csrrci	tp,0x6,24

000184e4 <.prname_done>:
   184e4:	02e00593          	li	a1,46
   184e8:	00b62023          	sw	a1,0(a2)
   184ec:	00b62023          	sw	a1,0(a2)

000184f0 <test_2>:
   184f0:	ffff80b7          	lui	ra,0xffff8
   184f4:	00000113          	li	sp,0
   184f8:	0020d1b3          	srl	gp,ra,sp
   184fc:	ffff8eb7          	lui	t4,0xffff8
   18500:	00200e13          	li	t3,2
   18504:	5bd19463          	bne	gp,t4,18aac <fail>

00018508 <test_3>:
   18508:	ffff80b7          	lui	ra,0xffff8
   1850c:	00100113          	li	sp,1
   18510:	0020d1b3          	srl	gp,ra,sp
   18514:	7fffceb7          	lui	t4,0x7fffc
   18518:	00300e13          	li	t3,3
   1851c:	59d19863          	bne	gp,t4,18aac <fail>

00018520 <test_4>:
   18520:	ffff80b7          	lui	ra,0xffff8
   18524:	00700113          	li	sp,7
   18528:	0020d1b3          	srl	gp,ra,sp
   1852c:	02000eb7          	lui	t4,0x2000
   18530:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58c4>
   18534:	00400e13          	li	t3,4
   18538:	57d19a63          	bne	gp,t4,18aac <fail>

0001853c <test_5>:
   1853c:	ffff80b7          	lui	ra,0xffff8
   18540:	00e00113          	li	sp,14
   18544:	0020d1b3          	srl	gp,ra,sp
   18548:	00040eb7          	lui	t4,0x40
   1854c:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259c2>
   18550:	00500e13          	li	t3,5
   18554:	55d19c63          	bne	gp,t4,18aac <fail>

00018558 <test_6>:
   18558:	ffff80b7          	lui	ra,0xffff8
   1855c:	00108093          	addi	ra,ra,1 # ffff8001 <_edata+0x7fff7f91>
   18560:	00f00113          	li	sp,15
   18564:	0020d1b3          	srl	gp,ra,sp
   18568:	00020eb7          	lui	t4,0x20
   1856c:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   18570:	00600e13          	li	t3,6
   18574:	53d19c63          	bne	gp,t4,18aac <fail>

00018578 <test_7>:
   18578:	fff00093          	li	ra,-1
   1857c:	00000113          	li	sp,0
   18580:	0020d1b3          	srl	gp,ra,sp
   18584:	fff00e93          	li	t4,-1
   18588:	00700e13          	li	t3,7
   1858c:	53d19063          	bne	gp,t4,18aac <fail>

00018590 <test_8>:
   18590:	fff00093          	li	ra,-1
   18594:	00100113          	li	sp,1
   18598:	0020d1b3          	srl	gp,ra,sp
   1859c:	80000eb7          	lui	t4,0x80000
   185a0:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   185a4:	00800e13          	li	t3,8
   185a8:	51d19263          	bne	gp,t4,18aac <fail>

000185ac <test_9>:
   185ac:	fff00093          	li	ra,-1
   185b0:	00700113          	li	sp,7
   185b4:	0020d1b3          	srl	gp,ra,sp
   185b8:	02000eb7          	lui	t4,0x2000
   185bc:	fffe8e93          	addi	t4,t4,-1 # 1ffffff <_etext+0x1fe59c3>
   185c0:	00900e13          	li	t3,9
   185c4:	4fd19463          	bne	gp,t4,18aac <fail>

000185c8 <test_10>:
   185c8:	fff00093          	li	ra,-1
   185cc:	00e00113          	li	sp,14
   185d0:	0020d1b3          	srl	gp,ra,sp
   185d4:	00040eb7          	lui	t4,0x40
   185d8:	fffe8e93          	addi	t4,t4,-1 # 3ffff <_etext+0x259c3>
   185dc:	00a00e13          	li	t3,10
   185e0:	4dd19663          	bne	gp,t4,18aac <fail>

000185e4 <test_11>:
   185e4:	fff00093          	li	ra,-1
   185e8:	01f00113          	li	sp,31
   185ec:	0020d1b3          	srl	gp,ra,sp
   185f0:	00100e93          	li	t4,1
   185f4:	00b00e13          	li	t3,11
   185f8:	4bd19a63          	bne	gp,t4,18aac <fail>

000185fc <test_12>:
   185fc:	212120b7          	lui	ra,0x21212
   18600:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   18604:	00000113          	li	sp,0
   18608:	0020d1b3          	srl	gp,ra,sp
   1860c:	21212eb7          	lui	t4,0x21212
   18610:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7ae5>
   18614:	00c00e13          	li	t3,12
   18618:	49d19a63          	bne	gp,t4,18aac <fail>

0001861c <test_13>:
   1861c:	212120b7          	lui	ra,0x21212
   18620:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   18624:	00100113          	li	sp,1
   18628:	0020d1b3          	srl	gp,ra,sp
   1862c:	10909eb7          	lui	t4,0x10909
   18630:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eea54>
   18634:	00d00e13          	li	t3,13
   18638:	47d19a63          	bne	gp,t4,18aac <fail>

0001863c <test_14>:
   1863c:	212120b7          	lui	ra,0x21212
   18640:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   18644:	00700113          	li	sp,7
   18648:	0020d1b3          	srl	gp,ra,sp
   1864c:	00424eb7          	lui	t4,0x424
   18650:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c06>
   18654:	00e00e13          	li	t3,14
   18658:	45d19a63          	bne	gp,t4,18aac <fail>

0001865c <test_15>:
   1865c:	212120b7          	lui	ra,0x21212
   18660:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   18664:	00e00113          	li	sp,14
   18668:	0020d1b3          	srl	gp,ra,sp
   1866c:	00008eb7          	lui	t4,0x8
   18670:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   18674:	00f00e13          	li	t3,15
   18678:	43d19a63          	bne	gp,t4,18aac <fail>

0001867c <test_16>:
   1867c:	212120b7          	lui	ra,0x21212
   18680:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   18684:	01f00113          	li	sp,31
   18688:	0020d1b3          	srl	gp,ra,sp
   1868c:	00000e93          	li	t4,0
   18690:	01000e13          	li	t3,16
   18694:	41d19c63          	bne	gp,t4,18aac <fail>

00018698 <test_17>:
   18698:	212120b7          	lui	ra,0x21212
   1869c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   186a0:	fe000113          	li	sp,-32
   186a4:	0020d1b3          	srl	gp,ra,sp
   186a8:	21212eb7          	lui	t4,0x21212
   186ac:	121e8e93          	addi	t4,t4,289 # 21212121 <_etext+0x211f7ae5>
   186b0:	01100e13          	li	t3,17
   186b4:	3fd19c63          	bne	gp,t4,18aac <fail>

000186b8 <test_18>:
   186b8:	212120b7          	lui	ra,0x21212
   186bc:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   186c0:	fe100113          	li	sp,-31
   186c4:	0020d1b3          	srl	gp,ra,sp
   186c8:	10909eb7          	lui	t4,0x10909
   186cc:	090e8e93          	addi	t4,t4,144 # 10909090 <_etext+0x108eea54>
   186d0:	01200e13          	li	t3,18
   186d4:	3dd19c63          	bne	gp,t4,18aac <fail>

000186d8 <test_19>:
   186d8:	212120b7          	lui	ra,0x21212
   186dc:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   186e0:	fe700113          	li	sp,-25
   186e4:	0020d1b3          	srl	gp,ra,sp
   186e8:	00424eb7          	lui	t4,0x424
   186ec:	242e8e93          	addi	t4,t4,578 # 424242 <_etext+0x409c06>
   186f0:	01300e13          	li	t3,19
   186f4:	3bd19c63          	bne	gp,t4,18aac <fail>

000186f8 <test_20>:
   186f8:	212120b7          	lui	ra,0x21212
   186fc:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   18700:	fee00113          	li	sp,-18
   18704:	0020d1b3          	srl	gp,ra,sp
   18708:	00008eb7          	lui	t4,0x8
   1870c:	484e8e93          	addi	t4,t4,1156 # 8484 <_start-0x7b7c>
   18710:	01400e13          	li	t3,20
   18714:	39d19c63          	bne	gp,t4,18aac <fail>

00018718 <test_21>:
   18718:	212120b7          	lui	ra,0x21212
   1871c:	12108093          	addi	ra,ra,289 # 21212121 <_etext+0x211f7ae5>
   18720:	fff00113          	li	sp,-1
   18724:	0020d1b3          	srl	gp,ra,sp
   18728:	00000e93          	li	t4,0
   1872c:	01500e13          	li	t3,21
   18730:	37d19e63          	bne	gp,t4,18aac <fail>

00018734 <test_22>:
   18734:	ffff80b7          	lui	ra,0xffff8
   18738:	00100113          	li	sp,1
   1873c:	0020d0b3          	srl	ra,ra,sp
   18740:	7fffceb7          	lui	t4,0x7fffc
   18744:	01600e13          	li	t3,22
   18748:	37d09263          	bne	ra,t4,18aac <fail>

0001874c <test_23>:
   1874c:	ffff80b7          	lui	ra,0xffff8
   18750:	00e00113          	li	sp,14
   18754:	0020d133          	srl	sp,ra,sp
   18758:	00040eb7          	lui	t4,0x40
   1875c:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259c2>
   18760:	01700e13          	li	t3,23
   18764:	35d11463          	bne	sp,t4,18aac <fail>

00018768 <test_24>:
   18768:	00700093          	li	ra,7
   1876c:	0010d0b3          	srl	ra,ra,ra
   18770:	00000e93          	li	t4,0
   18774:	01800e13          	li	t3,24
   18778:	33d09a63          	bne	ra,t4,18aac <fail>

0001877c <test_25>:
   1877c:	00000213          	li	tp,0
   18780:	ffff80b7          	lui	ra,0xffff8
   18784:	00100113          	li	sp,1
   18788:	0020d1b3          	srl	gp,ra,sp
   1878c:	00018313          	mv	t1,gp
   18790:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18794:	00200293          	li	t0,2
   18798:	fe5214e3          	bne	tp,t0,18780 <test_25+0x4>
   1879c:	7fffceb7          	lui	t4,0x7fffc
   187a0:	01900e13          	li	t3,25
   187a4:	31d31463          	bne	t1,t4,18aac <fail>

000187a8 <test_26>:
   187a8:	00000213          	li	tp,0
   187ac:	ffff80b7          	lui	ra,0xffff8
   187b0:	00e00113          	li	sp,14
   187b4:	0020d1b3          	srl	gp,ra,sp
   187b8:	00000013          	nop
   187bc:	00018313          	mv	t1,gp
   187c0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   187c4:	00200293          	li	t0,2
   187c8:	fe5212e3          	bne	tp,t0,187ac <test_26+0x4>
   187cc:	00040eb7          	lui	t4,0x40
   187d0:	ffee8e93          	addi	t4,t4,-2 # 3fffe <_etext+0x259c2>
   187d4:	01a00e13          	li	t3,26
   187d8:	2dd31a63          	bne	t1,t4,18aac <fail>

000187dc <test_27>:
   187dc:	00000213          	li	tp,0
   187e0:	ffff80b7          	lui	ra,0xffff8
   187e4:	00f00113          	li	sp,15
   187e8:	0020d1b3          	srl	gp,ra,sp
   187ec:	00000013          	nop
   187f0:	00000013          	nop
   187f4:	00018313          	mv	t1,gp
   187f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   187fc:	00200293          	li	t0,2
   18800:	fe5210e3          	bne	tp,t0,187e0 <test_27+0x4>
   18804:	00020eb7          	lui	t4,0x20
   18808:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   1880c:	01b00e13          	li	t3,27
   18810:	29d31e63          	bne	t1,t4,18aac <fail>

00018814 <test_28>:
   18814:	00000213          	li	tp,0
   18818:	ffff80b7          	lui	ra,0xffff8
   1881c:	00100113          	li	sp,1
   18820:	0020d1b3          	srl	gp,ra,sp
   18824:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18828:	00200293          	li	t0,2
   1882c:	fe5216e3          	bne	tp,t0,18818 <test_28+0x4>
   18830:	7fffceb7          	lui	t4,0x7fffc
   18834:	01c00e13          	li	t3,28
   18838:	27d19a63          	bne	gp,t4,18aac <fail>

0001883c <test_29>:
   1883c:	00000213          	li	tp,0
   18840:	ffff80b7          	lui	ra,0xffff8
   18844:	00700113          	li	sp,7
   18848:	00000013          	nop
   1884c:	0020d1b3          	srl	gp,ra,sp
   18850:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18854:	00200293          	li	t0,2
   18858:	fe5214e3          	bne	tp,t0,18840 <test_29+0x4>
   1885c:	02000eb7          	lui	t4,0x2000
   18860:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58c4>
   18864:	01d00e13          	li	t3,29
   18868:	25d19263          	bne	gp,t4,18aac <fail>

0001886c <test_30>:
   1886c:	00000213          	li	tp,0
   18870:	ffff80b7          	lui	ra,0xffff8
   18874:	00f00113          	li	sp,15
   18878:	00000013          	nop
   1887c:	00000013          	nop
   18880:	0020d1b3          	srl	gp,ra,sp
   18884:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18888:	00200293          	li	t0,2
   1888c:	fe5212e3          	bne	tp,t0,18870 <test_30+0x4>
   18890:	00020eb7          	lui	t4,0x20
   18894:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   18898:	01e00e13          	li	t3,30
   1889c:	21d19863          	bne	gp,t4,18aac <fail>

000188a0 <test_31>:
   188a0:	00000213          	li	tp,0
   188a4:	ffff80b7          	lui	ra,0xffff8
   188a8:	00000013          	nop
   188ac:	00100113          	li	sp,1
   188b0:	0020d1b3          	srl	gp,ra,sp
   188b4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188b8:	00200293          	li	t0,2
   188bc:	fe5214e3          	bne	tp,t0,188a4 <test_31+0x4>
   188c0:	7fffceb7          	lui	t4,0x7fffc
   188c4:	01f00e13          	li	t3,31
   188c8:	1fd19263          	bne	gp,t4,18aac <fail>

000188cc <test_32>:
   188cc:	00000213          	li	tp,0
   188d0:	ffff80b7          	lui	ra,0xffff8
   188d4:	00000013          	nop
   188d8:	00700113          	li	sp,7
   188dc:	00000013          	nop
   188e0:	0020d1b3          	srl	gp,ra,sp
   188e4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   188e8:	00200293          	li	t0,2
   188ec:	fe5212e3          	bne	tp,t0,188d0 <test_32+0x4>
   188f0:	02000eb7          	lui	t4,0x2000
   188f4:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58c4>
   188f8:	02000e13          	li	t3,32
   188fc:	1bd19863          	bne	gp,t4,18aac <fail>

00018900 <test_33>:
   18900:	00000213          	li	tp,0
   18904:	ffff80b7          	lui	ra,0xffff8
   18908:	00000013          	nop
   1890c:	00000013          	nop
   18910:	00f00113          	li	sp,15
   18914:	0020d1b3          	srl	gp,ra,sp
   18918:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1891c:	00200293          	li	t0,2
   18920:	fe5212e3          	bne	tp,t0,18904 <test_33+0x4>
   18924:	00020eb7          	lui	t4,0x20
   18928:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   1892c:	02100e13          	li	t3,33
   18930:	17d19e63          	bne	gp,t4,18aac <fail>

00018934 <test_34>:
   18934:	00000213          	li	tp,0
   18938:	00100113          	li	sp,1
   1893c:	ffff80b7          	lui	ra,0xffff8
   18940:	0020d1b3          	srl	gp,ra,sp
   18944:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18948:	00200293          	li	t0,2
   1894c:	fe5216e3          	bne	tp,t0,18938 <test_34+0x4>
   18950:	7fffceb7          	lui	t4,0x7fffc
   18954:	02200e13          	li	t3,34
   18958:	15d19a63          	bne	gp,t4,18aac <fail>

0001895c <test_35>:
   1895c:	00000213          	li	tp,0
   18960:	00700113          	li	sp,7
   18964:	ffff80b7          	lui	ra,0xffff8
   18968:	00000013          	nop
   1896c:	0020d1b3          	srl	gp,ra,sp
   18970:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18974:	00200293          	li	t0,2
   18978:	fe5214e3          	bne	tp,t0,18960 <test_35+0x4>
   1897c:	02000eb7          	lui	t4,0x2000
   18980:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58c4>
   18984:	02300e13          	li	t3,35
   18988:	13d19263          	bne	gp,t4,18aac <fail>

0001898c <test_36>:
   1898c:	00000213          	li	tp,0
   18990:	00f00113          	li	sp,15
   18994:	ffff80b7          	lui	ra,0xffff8
   18998:	00000013          	nop
   1899c:	00000013          	nop
   189a0:	0020d1b3          	srl	gp,ra,sp
   189a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189a8:	00200293          	li	t0,2
   189ac:	fe5212e3          	bne	tp,t0,18990 <test_36+0x4>
   189b0:	00020eb7          	lui	t4,0x20
   189b4:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   189b8:	02400e13          	li	t3,36
   189bc:	0fd19863          	bne	gp,t4,18aac <fail>

000189c0 <test_37>:
   189c0:	00000213          	li	tp,0
   189c4:	00100113          	li	sp,1
   189c8:	00000013          	nop
   189cc:	ffff80b7          	lui	ra,0xffff8
   189d0:	0020d1b3          	srl	gp,ra,sp
   189d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   189d8:	00200293          	li	t0,2
   189dc:	fe5214e3          	bne	tp,t0,189c4 <test_37+0x4>
   189e0:	7fffceb7          	lui	t4,0x7fffc
   189e4:	02500e13          	li	t3,37
   189e8:	0dd19263          	bne	gp,t4,18aac <fail>

000189ec <test_38>:
   189ec:	00000213          	li	tp,0
   189f0:	00700113          	li	sp,7
   189f4:	00000013          	nop
   189f8:	ffff80b7          	lui	ra,0xffff8
   189fc:	00000013          	nop
   18a00:	0020d1b3          	srl	gp,ra,sp
   18a04:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a08:	00200293          	li	t0,2
   18a0c:	fe5212e3          	bne	tp,t0,189f0 <test_38+0x4>
   18a10:	02000eb7          	lui	t4,0x2000
   18a14:	f00e8e93          	addi	t4,t4,-256 # 1ffff00 <_etext+0x1fe58c4>
   18a18:	02600e13          	li	t3,38
   18a1c:	09d19863          	bne	gp,t4,18aac <fail>

00018a20 <test_39>:
   18a20:	00000213          	li	tp,0
   18a24:	00f00113          	li	sp,15
   18a28:	00000013          	nop
   18a2c:	00000013          	nop
   18a30:	ffff80b7          	lui	ra,0xffff8
   18a34:	0020d1b3          	srl	gp,ra,sp
   18a38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18a3c:	00200293          	li	t0,2
   18a40:	fe5212e3          	bne	tp,t0,18a24 <test_39+0x4>
   18a44:	00020eb7          	lui	t4,0x20
   18a48:	fffe8e93          	addi	t4,t4,-1 # 1ffff <_etext+0x59c3>
   18a4c:	02700e13          	li	t3,39
   18a50:	05d19e63          	bne	gp,t4,18aac <fail>

00018a54 <test_40>:
   18a54:	00f00093          	li	ra,15
   18a58:	00105133          	srl	sp,zero,ra
   18a5c:	00000e93          	li	t4,0
   18a60:	02800e13          	li	t3,40
   18a64:	05d11463          	bne	sp,t4,18aac <fail>

00018a68 <test_41>:
   18a68:	02000093          	li	ra,32
   18a6c:	0000d133          	srl	sp,ra,zero
   18a70:	02000e93          	li	t4,32
   18a74:	02900e13          	li	t3,41
   18a78:	03d11a63          	bne	sp,t4,18aac <fail>

00018a7c <test_42>:
   18a7c:	000050b3          	srl	ra,zero,zero
   18a80:	00000e93          	li	t4,0
   18a84:	02a00e13          	li	t3,42
   18a88:	03d09263          	bne	ra,t4,18aac <fail>

00018a8c <test_43>:
   18a8c:	40000093          	li	ra,1024
   18a90:	00001137          	lui	sp,0x1
   18a94:	80010113          	addi	sp,sp,-2048 # 800 <_start-0xf800>
   18a98:	0020d033          	srl	zero,ra,sp
   18a9c:	00000e93          	li	t4,0
   18aa0:	02b00e13          	li	t3,43
   18aa4:	01d01463          	bne	zero,t4,18aac <fail>
   18aa8:	05c01463          	bne	zero,t3,18af0 <pass>

00018aac <fail>:
   18aac:	0ff00513          	li	a0,255

00018ab0 <.delay_fail>:
   18ab0:	fff50513          	addi	a0,a0,-1
   18ab4:	fe051ee3          	bnez	a0,18ab0 <.delay_fail>
   18ab8:	02000537          	lui	a0,0x2000
   18abc:	04500593          	li	a1,69
   18ac0:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18ac4:	05200613          	li	a2,82
   18ac8:	00c52023          	sw	a2,0(a0)
   18acc:	00c52023          	sw	a2,0(a0)
   18ad0:	04f00693          	li	a3,79
   18ad4:	00d52023          	sw	a3,0(a0)
   18ad8:	00c52023          	sw	a2,0(a0)
   18adc:	00d00713          	li	a4,13
   18ae0:	00e52023          	sw	a4,0(a0)
   18ae4:	00a00793          	li	a5,10
   18ae8:	00f52023          	sw	a5,0(a0)
   18aec:	e68f706f          	j	10154 <srl_ret>

00018af0 <pass>:
   18af0:	0ff00513          	li	a0,255

00018af4 <.delay_ok>:
   18af4:	fff50513          	addi	a0,a0,-1
   18af8:	fe051ee3          	bnez	a0,18af4 <.delay_ok>
   18afc:	02000537          	lui	a0,0x2000
   18b00:	04f00593          	li	a1,79
   18b04:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18b08:	04b00613          	li	a2,75
   18b0c:	00c52023          	sw	a2,0(a0)
   18b10:	00d00693          	li	a3,13
   18b14:	00d52023          	sw	a3,0(a0)
   18b18:	00a00713          	li	a4,10
   18b1c:	00e52023          	sw	a4,0(a0)
   18b20:	e34f706f          	j	10154 <srl_ret>

00018b24 <jal>:
   18b24:	0ff00513          	li	a0,255

00018b28 <.delay_pr>:
   18b28:	fff50513          	addi	a0,a0,-1
   18b2c:	fe051ee3          	bnez	a0,18b28 <.delay_pr>
   18b30:	00019537          	lui	a0,0x19
   18b34:	b5050513          	addi	a0,a0,-1200 # 18b50 <.test_name>
   18b38:	02000637          	lui	a2,0x2000

00018b3c <.prname_next>:
   18b3c:	00050583          	lb	a1,0(a0)
   18b40:	00058a63          	beqz	a1,18b54 <.prname_done>
   18b44:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   18b48:	00150513          	addi	a0,a0,1
   18b4c:	ff1ff06f          	j	18b3c <.prname_next>

00018b50 <.test_name>:
   18b50:	616a                	flw	ft2,152(sp)
   18b52:	006c                	addi	a1,sp,12

00018b54 <.prname_done>:
   18b54:	02e00593          	li	a1,46
   18b58:	00b62023          	sw	a1,0(a2)
   18b5c:	00b62023          	sw	a1,0(a2)

00018b60 <test_2>:
   18b60:	00200e13          	li	t3,2
   18b64:	00000093          	li	ra,0

00018b68 <linkaddr_2>:
   18b68:	010000ef          	jal	ra,18b78 <target_2>
   18b6c:	00000013          	nop
   18b70:	00000013          	nop
   18b74:	0440006f          	j	18bb8 <fail>

00018b78 <target_2>:
   18b78:	00000117          	auipc	sp,0x0
   18b7c:	ff010113          	addi	sp,sp,-16 # 18b68 <linkaddr_2>
   18b80:	00410113          	addi	sp,sp,4
   18b84:	02111a63          	bne	sp,ra,18bb8 <fail>

00018b88 <test_3>:
   18b88:	00100113          	li	sp,1
   18b8c:	014000ef          	jal	ra,18ba0 <test_3+0x18>
   18b90:	00110113          	addi	sp,sp,1
   18b94:	00110113          	addi	sp,sp,1
   18b98:	00110113          	addi	sp,sp,1
   18b9c:	00110113          	addi	sp,sp,1
   18ba0:	00110113          	addi	sp,sp,1
   18ba4:	00110113          	addi	sp,sp,1
   18ba8:	00300e93          	li	t4,3
   18bac:	00300e13          	li	t3,3
   18bb0:	01d11463          	bne	sp,t4,18bb8 <fail>
   18bb4:	05c01463          	bne	zero,t3,18bfc <pass>

00018bb8 <fail>:
   18bb8:	0ff00513          	li	a0,255

00018bbc <.delay_fail>:
   18bbc:	fff50513          	addi	a0,a0,-1
   18bc0:	fe051ee3          	bnez	a0,18bbc <.delay_fail>
   18bc4:	02000537          	lui	a0,0x2000
   18bc8:	04500593          	li	a1,69
   18bcc:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18bd0:	05200613          	li	a2,82
   18bd4:	00c52023          	sw	a2,0(a0)
   18bd8:	00c52023          	sw	a2,0(a0)
   18bdc:	04f00693          	li	a3,79
   18be0:	00d52023          	sw	a3,0(a0)
   18be4:	00c52023          	sw	a2,0(a0)
   18be8:	00d00713          	li	a4,13
   18bec:	00e52023          	sw	a4,0(a0)
   18bf0:	00a00793          	li	a5,10
   18bf4:	00f52023          	sw	a5,0(a0)
   18bf8:	ce8f706f          	j	100e0 <jal_ret>

00018bfc <pass>:
   18bfc:	0ff00513          	li	a0,255

00018c00 <.delay_ok>:
   18c00:	fff50513          	addi	a0,a0,-1
   18c04:	fe051ee3          	bnez	a0,18c00 <.delay_ok>
   18c08:	02000537          	lui	a0,0x2000
   18c0c:	04f00593          	li	a1,79
   18c10:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   18c14:	04b00613          	li	a2,75
   18c18:	00c52023          	sw	a2,0(a0)
   18c1c:	00d00693          	li	a3,13
   18c20:	00d52023          	sw	a3,0(a0)
   18c24:	00a00713          	li	a4,10
   18c28:	00e52023          	sw	a4,0(a0)
   18c2c:	cb4f706f          	j	100e0 <jal_ret>

00018c30 <add>:
   18c30:	0ff00513          	li	a0,255

00018c34 <.delay_pr>:
   18c34:	fff50513          	addi	a0,a0,-1
   18c38:	fe051ee3          	bnez	a0,18c34 <.delay_pr>
   18c3c:	00019537          	lui	a0,0x19
   18c40:	c5c50513          	addi	a0,a0,-932 # 18c5c <.test_name>
   18c44:	02000637          	lui	a2,0x2000

00018c48 <.prname_next>:
   18c48:	00050583          	lb	a1,0(a0)
   18c4c:	00058a63          	beqz	a1,18c60 <.prname_done>
   18c50:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   18c54:	00150513          	addi	a0,a0,1
   18c58:	ff1ff06f          	j	18c48 <.prname_next>

00018c5c <.test_name>:
   18c5c:	6461                	lui	s0,0x18
   18c5e:	0064                	addi	s1,sp,12

00018c60 <.prname_done>:
   18c60:	02e00593          	li	a1,46
   18c64:	00b62023          	sw	a1,0(a2)
   18c68:	00b62023          	sw	a1,0(a2)

00018c6c <test_2>:
   18c6c:	00000093          	li	ra,0
   18c70:	00000113          	li	sp,0
   18c74:	002081b3          	add	gp,ra,sp
   18c78:	00000e93          	li	t4,0
   18c7c:	00200e13          	li	t3,2
   18c80:	4dd19663          	bne	gp,t4,1914c <fail>

00018c84 <test_3>:
   18c84:	00100093          	li	ra,1
   18c88:	00100113          	li	sp,1
   18c8c:	002081b3          	add	gp,ra,sp
   18c90:	00200e93          	li	t4,2
   18c94:	00300e13          	li	t3,3
   18c98:	4bd19a63          	bne	gp,t4,1914c <fail>

00018c9c <test_4>:
   18c9c:	00300093          	li	ra,3
   18ca0:	00700113          	li	sp,7
   18ca4:	002081b3          	add	gp,ra,sp
   18ca8:	00a00e93          	li	t4,10
   18cac:	00400e13          	li	t3,4
   18cb0:	49d19e63          	bne	gp,t4,1914c <fail>

00018cb4 <test_5>:
   18cb4:	00000093          	li	ra,0
   18cb8:	ffff8137          	lui	sp,0xffff8
   18cbc:	002081b3          	add	gp,ra,sp
   18cc0:	ffff8eb7          	lui	t4,0xffff8
   18cc4:	00500e13          	li	t3,5
   18cc8:	49d19263          	bne	gp,t4,1914c <fail>

00018ccc <test_6>:
   18ccc:	800000b7          	lui	ra,0x80000
   18cd0:	00000113          	li	sp,0
   18cd4:	002081b3          	add	gp,ra,sp
   18cd8:	80000eb7          	lui	t4,0x80000
   18cdc:	00600e13          	li	t3,6
   18ce0:	47d19663          	bne	gp,t4,1914c <fail>

00018ce4 <test_7>:
   18ce4:	800000b7          	lui	ra,0x80000
   18ce8:	ffff8137          	lui	sp,0xffff8
   18cec:	002081b3          	add	gp,ra,sp
   18cf0:	7fff8eb7          	lui	t4,0x7fff8
   18cf4:	00700e13          	li	t3,7
   18cf8:	45d19a63          	bne	gp,t4,1914c <fail>

00018cfc <test_8>:
   18cfc:	00000093          	li	ra,0
   18d00:	00008137          	lui	sp,0x8
   18d04:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18d08:	002081b3          	add	gp,ra,sp
   18d0c:	00008eb7          	lui	t4,0x8
   18d10:	fffe8e93          	addi	t4,t4,-1 # 7fff <_start-0x8001>
   18d14:	00800e13          	li	t3,8
   18d18:	43d19a63          	bne	gp,t4,1914c <fail>

00018d1c <test_9>:
   18d1c:	800000b7          	lui	ra,0x80000
   18d20:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18d24:	00000113          	li	sp,0
   18d28:	002081b3          	add	gp,ra,sp
   18d2c:	80000eb7          	lui	t4,0x80000
   18d30:	fffe8e93          	addi	t4,t4,-1 # 7fffffff <_edata+0xffffff8f>
   18d34:	00900e13          	li	t3,9
   18d38:	41d19a63          	bne	gp,t4,1914c <fail>

00018d3c <test_10>:
   18d3c:	800000b7          	lui	ra,0x80000
   18d40:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18d44:	00008137          	lui	sp,0x8
   18d48:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18d4c:	002081b3          	add	gp,ra,sp
   18d50:	80008eb7          	lui	t4,0x80008
   18d54:	ffee8e93          	addi	t4,t4,-2 # 80007ffe <_edata+0x7f8e>
   18d58:	00a00e13          	li	t3,10
   18d5c:	3fd19863          	bne	gp,t4,1914c <fail>

00018d60 <test_11>:
   18d60:	800000b7          	lui	ra,0x80000
   18d64:	00008137          	lui	sp,0x8
   18d68:	fff10113          	addi	sp,sp,-1 # 7fff <_start-0x8001>
   18d6c:	002081b3          	add	gp,ra,sp
   18d70:	80008eb7          	lui	t4,0x80008
   18d74:	fffe8e93          	addi	t4,t4,-1 # 80007fff <_edata+0x7f8f>
   18d78:	00b00e13          	li	t3,11
   18d7c:	3dd19863          	bne	gp,t4,1914c <fail>

00018d80 <test_12>:
   18d80:	800000b7          	lui	ra,0x80000
   18d84:	fff08093          	addi	ra,ra,-1 # 7fffffff <_edata+0xffffff8f>
   18d88:	ffff8137          	lui	sp,0xffff8
   18d8c:	002081b3          	add	gp,ra,sp
   18d90:	7fff8eb7          	lui	t4,0x7fff8
   18d94:	fffe8e93          	addi	t4,t4,-1 # 7fff7fff <_etext+0x7ffdd9c3>
   18d98:	00c00e13          	li	t3,12
   18d9c:	3bd19863          	bne	gp,t4,1914c <fail>

00018da0 <test_13>:
   18da0:	00000093          	li	ra,0
   18da4:	fff00113          	li	sp,-1
   18da8:	002081b3          	add	gp,ra,sp
   18dac:	fff00e93          	li	t4,-1
   18db0:	00d00e13          	li	t3,13
   18db4:	39d19c63          	bne	gp,t4,1914c <fail>

00018db8 <test_14>:
   18db8:	fff00093          	li	ra,-1
   18dbc:	00100113          	li	sp,1
   18dc0:	002081b3          	add	gp,ra,sp
   18dc4:	00000e93          	li	t4,0
   18dc8:	00e00e13          	li	t3,14
   18dcc:	39d19063          	bne	gp,t4,1914c <fail>

00018dd0 <test_15>:
   18dd0:	fff00093          	li	ra,-1
   18dd4:	fff00113          	li	sp,-1
   18dd8:	002081b3          	add	gp,ra,sp
   18ddc:	ffe00e93          	li	t4,-2
   18de0:	00f00e13          	li	t3,15
   18de4:	37d19463          	bne	gp,t4,1914c <fail>

00018de8 <test_16>:
   18de8:	00100093          	li	ra,1
   18dec:	80000137          	lui	sp,0x80000
   18df0:	fff10113          	addi	sp,sp,-1 # 7fffffff <_edata+0xffffff8f>
   18df4:	002081b3          	add	gp,ra,sp
   18df8:	80000eb7          	lui	t4,0x80000
   18dfc:	01000e13          	li	t3,16
   18e00:	35d19663          	bne	gp,t4,1914c <fail>

00018e04 <test_17>:
   18e04:	00d00093          	li	ra,13
   18e08:	00b00113          	li	sp,11
   18e0c:	002080b3          	add	ra,ra,sp
   18e10:	01800e93          	li	t4,24
   18e14:	01100e13          	li	t3,17
   18e18:	33d09a63          	bne	ra,t4,1914c <fail>

00018e1c <test_18>:
   18e1c:	00e00093          	li	ra,14
   18e20:	00b00113          	li	sp,11
   18e24:	00208133          	add	sp,ra,sp
   18e28:	01900e93          	li	t4,25
   18e2c:	01200e13          	li	t3,18
   18e30:	31d11e63          	bne	sp,t4,1914c <fail>

00018e34 <test_19>:
   18e34:	00d00093          	li	ra,13
   18e38:	001080b3          	add	ra,ra,ra
   18e3c:	01a00e93          	li	t4,26
   18e40:	01300e13          	li	t3,19
   18e44:	31d09463          	bne	ra,t4,1914c <fail>

00018e48 <test_20>:
   18e48:	00000213          	li	tp,0
   18e4c:	00d00093          	li	ra,13
   18e50:	00b00113          	li	sp,11
   18e54:	002081b3          	add	gp,ra,sp
   18e58:	00018313          	mv	t1,gp
   18e5c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e60:	00200293          	li	t0,2
   18e64:	fe5214e3          	bne	tp,t0,18e4c <test_20+0x4>
   18e68:	01800e93          	li	t4,24
   18e6c:	01400e13          	li	t3,20
   18e70:	2dd31e63          	bne	t1,t4,1914c <fail>

00018e74 <test_21>:
   18e74:	00000213          	li	tp,0
   18e78:	00e00093          	li	ra,14
   18e7c:	00b00113          	li	sp,11
   18e80:	002081b3          	add	gp,ra,sp
   18e84:	00000013          	nop
   18e88:	00018313          	mv	t1,gp
   18e8c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18e90:	00200293          	li	t0,2
   18e94:	fe5212e3          	bne	tp,t0,18e78 <test_21+0x4>
   18e98:	01900e93          	li	t4,25
   18e9c:	01500e13          	li	t3,21
   18ea0:	2bd31663          	bne	t1,t4,1914c <fail>

00018ea4 <test_22>:
   18ea4:	00000213          	li	tp,0
   18ea8:	00f00093          	li	ra,15
   18eac:	00b00113          	li	sp,11
   18eb0:	002081b3          	add	gp,ra,sp
   18eb4:	00000013          	nop
   18eb8:	00000013          	nop
   18ebc:	00018313          	mv	t1,gp
   18ec0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ec4:	00200293          	li	t0,2
   18ec8:	fe5210e3          	bne	tp,t0,18ea8 <test_22+0x4>
   18ecc:	01a00e93          	li	t4,26
   18ed0:	01600e13          	li	t3,22
   18ed4:	27d31c63          	bne	t1,t4,1914c <fail>

00018ed8 <test_23>:
   18ed8:	00000213          	li	tp,0
   18edc:	00d00093          	li	ra,13
   18ee0:	00b00113          	li	sp,11
   18ee4:	002081b3          	add	gp,ra,sp
   18ee8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18eec:	00200293          	li	t0,2
   18ef0:	fe5216e3          	bne	tp,t0,18edc <test_23+0x4>
   18ef4:	01800e93          	li	t4,24
   18ef8:	01700e13          	li	t3,23
   18efc:	25d19863          	bne	gp,t4,1914c <fail>

00018f00 <test_24>:
   18f00:	00000213          	li	tp,0
   18f04:	00e00093          	li	ra,14
   18f08:	00b00113          	li	sp,11
   18f0c:	00000013          	nop
   18f10:	002081b3          	add	gp,ra,sp
   18f14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f18:	00200293          	li	t0,2
   18f1c:	fe5214e3          	bne	tp,t0,18f04 <test_24+0x4>
   18f20:	01900e93          	li	t4,25
   18f24:	01800e13          	li	t3,24
   18f28:	23d19263          	bne	gp,t4,1914c <fail>

00018f2c <test_25>:
   18f2c:	00000213          	li	tp,0
   18f30:	00f00093          	li	ra,15
   18f34:	00b00113          	li	sp,11
   18f38:	00000013          	nop
   18f3c:	00000013          	nop
   18f40:	002081b3          	add	gp,ra,sp
   18f44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f48:	00200293          	li	t0,2
   18f4c:	fe5212e3          	bne	tp,t0,18f30 <test_25+0x4>
   18f50:	01a00e93          	li	t4,26
   18f54:	01900e13          	li	t3,25
   18f58:	1fd19a63          	bne	gp,t4,1914c <fail>

00018f5c <test_26>:
   18f5c:	00000213          	li	tp,0
   18f60:	00d00093          	li	ra,13
   18f64:	00000013          	nop
   18f68:	00b00113          	li	sp,11
   18f6c:	002081b3          	add	gp,ra,sp
   18f70:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18f74:	00200293          	li	t0,2
   18f78:	fe5214e3          	bne	tp,t0,18f60 <test_26+0x4>
   18f7c:	01800e93          	li	t4,24
   18f80:	01a00e13          	li	t3,26
   18f84:	1dd19463          	bne	gp,t4,1914c <fail>

00018f88 <test_27>:
   18f88:	00000213          	li	tp,0
   18f8c:	00e00093          	li	ra,14
   18f90:	00000013          	nop
   18f94:	00b00113          	li	sp,11
   18f98:	00000013          	nop
   18f9c:	002081b3          	add	gp,ra,sp
   18fa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18fa4:	00200293          	li	t0,2
   18fa8:	fe5212e3          	bne	tp,t0,18f8c <test_27+0x4>
   18fac:	01900e93          	li	t4,25
   18fb0:	01b00e13          	li	t3,27
   18fb4:	19d19c63          	bne	gp,t4,1914c <fail>

00018fb8 <test_28>:
   18fb8:	00000213          	li	tp,0
   18fbc:	00f00093          	li	ra,15
   18fc0:	00000013          	nop
   18fc4:	00000013          	nop
   18fc8:	00b00113          	li	sp,11
   18fcc:	002081b3          	add	gp,ra,sp
   18fd0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18fd4:	00200293          	li	t0,2
   18fd8:	fe5212e3          	bne	tp,t0,18fbc <test_28+0x4>
   18fdc:	01a00e93          	li	t4,26
   18fe0:	01c00e13          	li	t3,28
   18fe4:	17d19463          	bne	gp,t4,1914c <fail>

00018fe8 <test_29>:
   18fe8:	00000213          	li	tp,0
   18fec:	00b00113          	li	sp,11
   18ff0:	00d00093          	li	ra,13
   18ff4:	002081b3          	add	gp,ra,sp
   18ff8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   18ffc:	00200293          	li	t0,2
   19000:	fe5216e3          	bne	tp,t0,18fec <test_29+0x4>
   19004:	01800e93          	li	t4,24
   19008:	01d00e13          	li	t3,29
   1900c:	15d19063          	bne	gp,t4,1914c <fail>

00019010 <test_30>:
   19010:	00000213          	li	tp,0
   19014:	00b00113          	li	sp,11
   19018:	00e00093          	li	ra,14
   1901c:	00000013          	nop
   19020:	002081b3          	add	gp,ra,sp
   19024:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19028:	00200293          	li	t0,2
   1902c:	fe5214e3          	bne	tp,t0,19014 <test_30+0x4>
   19030:	01900e93          	li	t4,25
   19034:	01e00e13          	li	t3,30
   19038:	11d19a63          	bne	gp,t4,1914c <fail>

0001903c <test_31>:
   1903c:	00000213          	li	tp,0
   19040:	00b00113          	li	sp,11
   19044:	00f00093          	li	ra,15
   19048:	00000013          	nop
   1904c:	00000013          	nop
   19050:	002081b3          	add	gp,ra,sp
   19054:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19058:	00200293          	li	t0,2
   1905c:	fe5212e3          	bne	tp,t0,19040 <test_31+0x4>
   19060:	01a00e93          	li	t4,26
   19064:	01f00e13          	li	t3,31
   19068:	0fd19263          	bne	gp,t4,1914c <fail>

0001906c <test_32>:
   1906c:	00000213          	li	tp,0
   19070:	00b00113          	li	sp,11
   19074:	00000013          	nop
   19078:	00d00093          	li	ra,13
   1907c:	002081b3          	add	gp,ra,sp
   19080:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19084:	00200293          	li	t0,2
   19088:	fe5214e3          	bne	tp,t0,19070 <test_32+0x4>
   1908c:	01800e93          	li	t4,24
   19090:	02000e13          	li	t3,32
   19094:	0bd19c63          	bne	gp,t4,1914c <fail>

00019098 <test_33>:
   19098:	00000213          	li	tp,0
   1909c:	00b00113          	li	sp,11
   190a0:	00000013          	nop
   190a4:	00e00093          	li	ra,14
   190a8:	00000013          	nop
   190ac:	002081b3          	add	gp,ra,sp
   190b0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   190b4:	00200293          	li	t0,2
   190b8:	fe5212e3          	bne	tp,t0,1909c <test_33+0x4>
   190bc:	01900e93          	li	t4,25
   190c0:	02100e13          	li	t3,33
   190c4:	09d19463          	bne	gp,t4,1914c <fail>

000190c8 <test_34>:
   190c8:	00000213          	li	tp,0
   190cc:	00b00113          	li	sp,11
   190d0:	00000013          	nop
   190d4:	00000013          	nop
   190d8:	00f00093          	li	ra,15
   190dc:	002081b3          	add	gp,ra,sp
   190e0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   190e4:	00200293          	li	t0,2
   190e8:	fe5212e3          	bne	tp,t0,190cc <test_34+0x4>
   190ec:	01a00e93          	li	t4,26
   190f0:	02200e13          	li	t3,34
   190f4:	05d19c63          	bne	gp,t4,1914c <fail>

000190f8 <test_35>:
   190f8:	00f00093          	li	ra,15
   190fc:	00100133          	add	sp,zero,ra
   19100:	00f00e93          	li	t4,15
   19104:	02300e13          	li	t3,35
   19108:	05d11263          	bne	sp,t4,1914c <fail>

0001910c <test_36>:
   1910c:	02000093          	li	ra,32
   19110:	00008133          	add	sp,ra,zero
   19114:	02000e93          	li	t4,32
   19118:	02400e13          	li	t3,36
   1911c:	03d11863          	bne	sp,t4,1914c <fail>

00019120 <test_37>:
   19120:	000000b3          	add	ra,zero,zero
   19124:	00000e93          	li	t4,0
   19128:	02500e13          	li	t3,37
   1912c:	03d09063          	bne	ra,t4,1914c <fail>

00019130 <test_38>:
   19130:	01000093          	li	ra,16
   19134:	01e00113          	li	sp,30
   19138:	00208033          	add	zero,ra,sp
   1913c:	00000e93          	li	t4,0
   19140:	02600e13          	li	t3,38
   19144:	01d01463          	bne	zero,t4,1914c <fail>
   19148:	05c01463          	bne	zero,t3,19190 <pass>

0001914c <fail>:
   1914c:	0ff00513          	li	a0,255

00019150 <.delay_fail>:
   19150:	fff50513          	addi	a0,a0,-1
   19154:	fe051ee3          	bnez	a0,19150 <.delay_fail>
   19158:	02000537          	lui	a0,0x2000
   1915c:	04500593          	li	a1,69
   19160:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   19164:	05200613          	li	a2,82
   19168:	00c52023          	sw	a2,0(a0)
   1916c:	00c52023          	sw	a2,0(a0)
   19170:	04f00693          	li	a3,79
   19174:	00d52023          	sw	a3,0(a0)
   19178:	00c52023          	sw	a2,0(a0)
   1917c:	00d00713          	li	a4,13
   19180:	00e52023          	sw	a4,0(a0)
   19184:	00a00793          	li	a5,10
   19188:	00f52023          	sw	a5,0(a0)
   1918c:	fb5f606f          	j	10140 <add_ret>

00019190 <pass>:
   19190:	0ff00513          	li	a0,255

00019194 <.delay_ok>:
   19194:	fff50513          	addi	a0,a0,-1
   19198:	fe051ee3          	bnez	a0,19194 <.delay_ok>
   1919c:	02000537          	lui	a0,0x2000
   191a0:	04f00593          	li	a1,79
   191a4:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   191a8:	04b00613          	li	a2,75
   191ac:	00c52023          	sw	a2,0(a0)
   191b0:	00d00693          	li	a3,13
   191b4:	00d52023          	sw	a3,0(a0)
   191b8:	00a00713          	li	a4,10
   191bc:	00e52023          	sw	a4,0(a0)
   191c0:	f81f606f          	j	10140 <add_ret>

000191c4 <andi>:
   191c4:	0ff00513          	li	a0,255

000191c8 <.delay_pr>:
   191c8:	fff50513          	addi	a0,a0,-1
   191cc:	fe051ee3          	bnez	a0,191c8 <.delay_pr>
   191d0:	00019537          	lui	a0,0x19
   191d4:	1f050513          	addi	a0,a0,496 # 191f0 <.test_name>
   191d8:	02000637          	lui	a2,0x2000

000191dc <.prname_next>:
   191dc:	00050583          	lb	a1,0(a0)
   191e0:	00058c63          	beqz	a1,191f8 <.prname_done>
   191e4:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   191e8:	00150513          	addi	a0,a0,1
   191ec:	ff1ff06f          	j	191dc <.prname_next>

000191f0 <.test_name>:
   191f0:	6e61                	lui	t3,0x18
   191f2:	6964                	flw	fs1,84(a0)
   191f4:	0000                	unimp
	...

000191f8 <.prname_done>:
   191f8:	02e00593          	li	a1,46
   191fc:	00b62023          	sw	a1,0(a2)
   19200:	00b62023          	sw	a1,0(a2)

00019204 <test_2>:
   19204:	ff0100b7          	lui	ra,0xff010
   19208:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   1920c:	f0f0f193          	andi	gp,ra,-241
   19210:	ff010eb7          	lui	t4,0xff010
   19214:	f00e8e93          	addi	t4,t4,-256 # ff00ff00 <_edata+0x7f00fe90>
   19218:	00200e13          	li	t3,2
   1921c:	1bd19463          	bne	gp,t4,193c4 <fail>

00019220 <test_3>:
   19220:	0ff010b7          	lui	ra,0xff01
   19224:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   19228:	0f00f193          	andi	gp,ra,240
   1922c:	0f000e93          	li	t4,240
   19230:	00300e13          	li	t3,3
   19234:	19d19863          	bne	gp,t4,193c4 <fail>

00019238 <test_4>:
   19238:	00ff00b7          	lui	ra,0xff0
   1923c:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   19240:	70f0f193          	andi	gp,ra,1807
   19244:	00f00e93          	li	t4,15
   19248:	00400e13          	li	t3,4
   1924c:	17d19c63          	bne	gp,t4,193c4 <fail>

00019250 <test_5>:
   19250:	f00ff0b7          	lui	ra,0xf00ff
   19254:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19258:	0f00f193          	andi	gp,ra,240
   1925c:	00000e93          	li	t4,0
   19260:	00500e13          	li	t3,5
   19264:	17d19063          	bne	gp,t4,193c4 <fail>

00019268 <test_6>:
   19268:	ff0100b7          	lui	ra,0xff010
   1926c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <_edata+0x7f00fe90>
   19270:	0f00f093          	andi	ra,ra,240
   19274:	00000e93          	li	t4,0
   19278:	00600e13          	li	t3,6
   1927c:	15d09463          	bne	ra,t4,193c4 <fail>

00019280 <test_7>:
   19280:	00000213          	li	tp,0
   19284:	0ff010b7          	lui	ra,0xff01
   19288:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   1928c:	70f0f193          	andi	gp,ra,1807
   19290:	00018313          	mv	t1,gp
   19294:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19298:	00200293          	li	t0,2
   1929c:	fe5214e3          	bne	tp,t0,19284 <test_7+0x4>
   192a0:	70000e93          	li	t4,1792
   192a4:	00700e13          	li	t3,7
   192a8:	11d31e63          	bne	t1,t4,193c4 <fail>

000192ac <test_8>:
   192ac:	00000213          	li	tp,0
   192b0:	00ff00b7          	lui	ra,0xff0
   192b4:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   192b8:	0f00f193          	andi	gp,ra,240
   192bc:	00000013          	nop
   192c0:	00018313          	mv	t1,gp
   192c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   192c8:	00200293          	li	t0,2
   192cc:	fe5212e3          	bne	tp,t0,192b0 <test_8+0x4>
   192d0:	0f000e93          	li	t4,240
   192d4:	00800e13          	li	t3,8
   192d8:	0fd31663          	bne	t1,t4,193c4 <fail>

000192dc <test_9>:
   192dc:	00000213          	li	tp,0
   192e0:	f00ff0b7          	lui	ra,0xf00ff
   192e4:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   192e8:	f0f0f193          	andi	gp,ra,-241
   192ec:	00000013          	nop
   192f0:	00000013          	nop
   192f4:	00018313          	mv	t1,gp
   192f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   192fc:	00200293          	li	t0,2
   19300:	fe5210e3          	bne	tp,t0,192e0 <test_9+0x4>
   19304:	f00ffeb7          	lui	t4,0xf00ff
   19308:	00fe8e93          	addi	t4,t4,15 # f00ff00f <_edata+0x700fef9f>
   1930c:	00900e13          	li	t3,9
   19310:	0bd31a63          	bne	t1,t4,193c4 <fail>

00019314 <test_10>:
   19314:	00000213          	li	tp,0
   19318:	0ff010b7          	lui	ra,0xff01
   1931c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   19320:	70f0f193          	andi	gp,ra,1807
   19324:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19328:	00200293          	li	t0,2
   1932c:	fe5216e3          	bne	tp,t0,19318 <test_10+0x4>
   19330:	70000e93          	li	t4,1792
   19334:	00a00e13          	li	t3,10
   19338:	09d19663          	bne	gp,t4,193c4 <fail>

0001933c <test_11>:
   1933c:	00000213          	li	tp,0
   19340:	00ff00b7          	lui	ra,0xff0
   19344:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   19348:	00000013          	nop
   1934c:	0f00f193          	andi	gp,ra,240
   19350:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19354:	00200293          	li	t0,2
   19358:	fe5214e3          	bne	tp,t0,19340 <test_11+0x4>
   1935c:	0f000e93          	li	t4,240
   19360:	00b00e13          	li	t3,11
   19364:	07d19063          	bne	gp,t4,193c4 <fail>

00019368 <test_12>:
   19368:	00000213          	li	tp,0
   1936c:	f00ff0b7          	lui	ra,0xf00ff
   19370:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19374:	00000013          	nop
   19378:	00000013          	nop
   1937c:	70f0f193          	andi	gp,ra,1807
   19380:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19384:	00200293          	li	t0,2
   19388:	fe5212e3          	bne	tp,t0,1936c <test_12+0x4>
   1938c:	00f00e93          	li	t4,15
   19390:	00c00e13          	li	t3,12
   19394:	03d19863          	bne	gp,t4,193c4 <fail>

00019398 <test_13>:
   19398:	0f007093          	andi	ra,zero,240
   1939c:	00000e93          	li	t4,0
   193a0:	00d00e13          	li	t3,13
   193a4:	03d09063          	bne	ra,t4,193c4 <fail>

000193a8 <test_14>:
   193a8:	00ff00b7          	lui	ra,0xff0
   193ac:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   193b0:	70f0f013          	andi	zero,ra,1807
   193b4:	00000e93          	li	t4,0
   193b8:	00e00e13          	li	t3,14
   193bc:	01d01463          	bne	zero,t4,193c4 <fail>
   193c0:	05c01463          	bne	zero,t3,19408 <pass>

000193c4 <fail>:
   193c4:	0ff00513          	li	a0,255

000193c8 <.delay_fail>:
   193c8:	fff50513          	addi	a0,a0,-1
   193cc:	fe051ee3          	bnez	a0,193c8 <.delay_fail>
   193d0:	02000537          	lui	a0,0x2000
   193d4:	04500593          	li	a1,69
   193d8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   193dc:	05200613          	li	a2,82
   193e0:	00c52023          	sw	a2,0(a0)
   193e4:	00c52023          	sw	a2,0(a0)
   193e8:	04f00693          	li	a3,79
   193ec:	00d52023          	sw	a3,0(a0)
   193f0:	00c52023          	sw	a2,0(a0)
   193f4:	00d00713          	li	a4,13
   193f8:	00e52023          	sw	a4,0(a0)
   193fc:	00a00793          	li	a5,10
   19400:	00f52023          	sw	a5,0(a0)
   19404:	d2df606f          	j	10130 <andi_ret>

00019408 <pass>:
   19408:	0ff00513          	li	a0,255

0001940c <.delay_ok>:
   1940c:	fff50513          	addi	a0,a0,-1
   19410:	fe051ee3          	bnez	a0,1940c <.delay_ok>
   19414:	02000537          	lui	a0,0x2000
   19418:	04f00593          	li	a1,79
   1941c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   19420:	04b00613          	li	a2,75
   19424:	00c52023          	sw	a2,0(a0)
   19428:	00d00693          	li	a3,13
   1942c:	00d52023          	sw	a3,0(a0)
   19430:	00a00713          	li	a4,10
   19434:	00e52023          	sw	a4,0(a0)
   19438:	cf9f606f          	j	10130 <andi_ret>

0001943c <j>:
   1943c:	0ff00513          	li	a0,255

00019440 <.delay_pr>:
   19440:	fff50513          	addi	a0,a0,-1
   19444:	fe051ee3          	bnez	a0,19440 <.delay_pr>
   19448:	00019537          	lui	a0,0x19
   1944c:	46850513          	addi	a0,a0,1128 # 19468 <.test_name>
   19450:	02000637          	lui	a2,0x2000

00019454 <.prname_next>:
   19454:	00050583          	lb	a1,0(a0)
   19458:	00058a63          	beqz	a1,1946c <.prname_done>
   1945c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   19460:	00150513          	addi	a0,a0,1
   19464:	ff1ff06f          	j	19454 <.prname_next>

00019468 <.test_name>:
   19468:	006a                	c.slli	zero,0x1a
	...

0001946c <.prname_done>:
   1946c:	02e00593          	li	a1,46
   19470:	00b62023          	sw	a1,0(a2)
   19474:	00b62023          	sw	a1,0(a2)
   19478:	00200e13          	li	t3,2
   1947c:	0080006f          	j	19484 <test_2>
   19480:	0340006f          	j	194b4 <fail>

00019484 <test_2>:
   19484:	00100093          	li	ra,1
   19488:	0140006f          	j	1949c <test_2+0x18>
   1948c:	00108093          	addi	ra,ra,1
   19490:	00108093          	addi	ra,ra,1
   19494:	00108093          	addi	ra,ra,1
   19498:	00108093          	addi	ra,ra,1
   1949c:	00108093          	addi	ra,ra,1
   194a0:	00108093          	addi	ra,ra,1
   194a4:	00300e93          	li	t4,3
   194a8:	00300e13          	li	t3,3
   194ac:	01d09463          	bne	ra,t4,194b4 <fail>
   194b0:	05c01463          	bne	zero,t3,194f8 <pass>

000194b4 <fail>:
   194b4:	0ff00513          	li	a0,255

000194b8 <.delay_fail>:
   194b8:	fff50513          	addi	a0,a0,-1
   194bc:	fe051ee3          	bnez	a0,194b8 <.delay_fail>
   194c0:	02000537          	lui	a0,0x2000
   194c4:	04500593          	li	a1,69
   194c8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   194cc:	05200613          	li	a2,82
   194d0:	00c52023          	sw	a2,0(a0)
   194d4:	00c52023          	sw	a2,0(a0)
   194d8:	04f00693          	li	a3,79
   194dc:	00d52023          	sw	a3,0(a0)
   194e0:	00c52023          	sw	a2,0(a0)
   194e4:	00d00713          	li	a4,13
   194e8:	00e52023          	sw	a4,0(a0)
   194ec:	00a00793          	li	a5,10
   194f0:	00f52023          	sw	a5,0(a0)
   194f4:	be9f606f          	j	100dc <j_ret>

000194f8 <pass>:
   194f8:	0ff00513          	li	a0,255

000194fc <.delay_ok>:
   194fc:	fff50513          	addi	a0,a0,-1
   19500:	fe051ee3          	bnez	a0,194fc <.delay_ok>
   19504:	02000537          	lui	a0,0x2000
   19508:	04f00593          	li	a1,79
   1950c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   19510:	04b00613          	li	a2,75
   19514:	00c52023          	sw	a2,0(a0)
   19518:	00d00693          	li	a3,13
   1951c:	00d52023          	sw	a3,0(a0)
   19520:	00a00713          	li	a4,10
   19524:	00e52023          	sw	a4,0(a0)
   19528:	bb5f606f          	j	100dc <j_ret>

0001952c <xori>:
   1952c:	0ff00513          	li	a0,255

00019530 <.delay_pr>:
   19530:	fff50513          	addi	a0,a0,-1
   19534:	fe051ee3          	bnez	a0,19530 <.delay_pr>
   19538:	00019537          	lui	a0,0x19
   1953c:	55850513          	addi	a0,a0,1368 # 19558 <.test_name>
   19540:	02000637          	lui	a2,0x2000

00019544 <.prname_next>:
   19544:	00050583          	lb	a1,0(a0)
   19548:	00058c63          	beqz	a1,19560 <.prname_done>
   1954c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   19550:	00150513          	addi	a0,a0,1
   19554:	ff1ff06f          	j	19544 <.prname_next>

00019558 <.test_name>:
   19558:	6f78                	flw	fa4,92(a4)
   1955a:	6972                	flw	fs2,28(sp)
   1955c:	0000                	unimp
	...

00019560 <.prname_done>:
   19560:	02e00593          	li	a1,46
   19564:	00b62023          	sw	a1,0(a2)
   19568:	00b62023          	sw	a1,0(a2)

0001956c <test_2>:
   1956c:	00ff10b7          	lui	ra,0xff1
   19570:	f0008093          	addi	ra,ra,-256 # ff0f00 <_etext+0xfd68c4>
   19574:	f0f0c193          	xori	gp,ra,-241
   19578:	ff00feb7          	lui	t4,0xff00f
   1957c:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   19580:	00200e13          	li	t3,2
   19584:	1dd19663          	bne	gp,t4,19750 <fail>

00019588 <test_3>:
   19588:	0ff010b7          	lui	ra,0xff01
   1958c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   19590:	0f00c193          	xori	gp,ra,240
   19594:	0ff01eb7          	lui	t4,0xff01
   19598:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee68c4>
   1959c:	00300e13          	li	t3,3
   195a0:	1bd19863          	bne	gp,t4,19750 <fail>

000195a4 <test_4>:
   195a4:	00ff10b7          	lui	ra,0xff1
   195a8:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd62c3>
   195ac:	70f0c193          	xori	gp,ra,1807
   195b0:	00ff1eb7          	lui	t4,0xff1
   195b4:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd69b4>
   195b8:	00400e13          	li	t3,4
   195bc:	19d19a63          	bne	gp,t4,19750 <fail>

000195c0 <test_5>:
   195c0:	f00ff0b7          	lui	ra,0xf00ff
   195c4:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   195c8:	0f00c193          	xori	gp,ra,240
   195cc:	f00ffeb7          	lui	t4,0xf00ff
   195d0:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   195d4:	00500e13          	li	t3,5
   195d8:	17d19c63          	bne	gp,t4,19750 <fail>

000195dc <test_6>:
   195dc:	ff00f0b7          	lui	ra,0xff00f
   195e0:	70008093          	addi	ra,ra,1792 # ff00f700 <_edata+0x7f00f690>
   195e4:	70f0c093          	xori	ra,ra,1807
   195e8:	ff00feb7          	lui	t4,0xff00f
   195ec:	00fe8e93          	addi	t4,t4,15 # ff00f00f <_edata+0x7f00ef9f>
   195f0:	00600e13          	li	t3,6
   195f4:	15d09e63          	bne	ra,t4,19750 <fail>

000195f8 <test_7>:
   195f8:	00000213          	li	tp,0
   195fc:	0ff010b7          	lui	ra,0xff01
   19600:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   19604:	0f00c193          	xori	gp,ra,240
   19608:	00018313          	mv	t1,gp
   1960c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19610:	00200293          	li	t0,2
   19614:	fe5214e3          	bne	tp,t0,195fc <test_7+0x4>
   19618:	0ff01eb7          	lui	t4,0xff01
   1961c:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee68c4>
   19620:	00700e13          	li	t3,7
   19624:	13d31663          	bne	t1,t4,19750 <fail>

00019628 <test_8>:
   19628:	00000213          	li	tp,0
   1962c:	00ff10b7          	lui	ra,0xff1
   19630:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_etext+0xfd62c3>
   19634:	70f0c193          	xori	gp,ra,1807
   19638:	00000013          	nop
   1963c:	00018313          	mv	t1,gp
   19640:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19644:	00200293          	li	t0,2
   19648:	fe5212e3          	bne	tp,t0,1962c <test_8+0x4>
   1964c:	00ff1eb7          	lui	t4,0xff1
   19650:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd69b4>
   19654:	00800e13          	li	t3,8
   19658:	0fd31c63          	bne	t1,t4,19750 <fail>

0001965c <test_9>:
   1965c:	00000213          	li	tp,0
   19660:	f00ff0b7          	lui	ra,0xf00ff
   19664:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   19668:	0f00c193          	xori	gp,ra,240
   1966c:	00000013          	nop
   19670:	00000013          	nop
   19674:	00018313          	mv	t1,gp
   19678:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1967c:	00200293          	li	t0,2
   19680:	fe5210e3          	bne	tp,t0,19660 <test_9+0x4>
   19684:	f00ffeb7          	lui	t4,0xf00ff
   19688:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   1968c:	00900e13          	li	t3,9
   19690:	0dd31063          	bne	t1,t4,19750 <fail>

00019694 <test_10>:
   19694:	00000213          	li	tp,0
   19698:	0ff010b7          	lui	ra,0xff01
   1969c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_etext+0xfee69b4>
   196a0:	0f00c193          	xori	gp,ra,240
   196a4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   196a8:	00200293          	li	t0,2
   196ac:	fe5216e3          	bne	tp,t0,19698 <test_10+0x4>
   196b0:	0ff01eb7          	lui	t4,0xff01
   196b4:	f00e8e93          	addi	t4,t4,-256 # ff00f00 <_etext+0xfee68c4>
   196b8:	00a00e13          	li	t3,10
   196bc:	09d19a63          	bne	gp,t4,19750 <fail>

000196c0 <test_11>:
   196c0:	00000213          	li	tp,0
   196c4:	00ff10b7          	lui	ra,0xff1
   196c8:	fff08093          	addi	ra,ra,-1 # ff0fff <_etext+0xfd69c3>
   196cc:	00000013          	nop
   196d0:	00f0c193          	xori	gp,ra,15
   196d4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   196d8:	00200293          	li	t0,2
   196dc:	fe5214e3          	bne	tp,t0,196c4 <test_11+0x4>
   196e0:	00ff1eb7          	lui	t4,0xff1
   196e4:	ff0e8e93          	addi	t4,t4,-16 # ff0ff0 <_etext+0xfd69b4>
   196e8:	00b00e13          	li	t3,11
   196ec:	07d19263          	bne	gp,t4,19750 <fail>

000196f0 <test_12>:
   196f0:	00000213          	li	tp,0
   196f4:	f00ff0b7          	lui	ra,0xf00ff
   196f8:	00f08093          	addi	ra,ra,15 # f00ff00f <_edata+0x700fef9f>
   196fc:	00000013          	nop
   19700:	00000013          	nop
   19704:	0f00c193          	xori	gp,ra,240
   19708:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1970c:	00200293          	li	t0,2
   19710:	fe5212e3          	bne	tp,t0,196f4 <test_12+0x4>
   19714:	f00ffeb7          	lui	t4,0xf00ff
   19718:	0ffe8e93          	addi	t4,t4,255 # f00ff0ff <_edata+0x700ff08f>
   1971c:	00c00e13          	li	t3,12
   19720:	03d19863          	bne	gp,t4,19750 <fail>

00019724 <test_13>:
   19724:	0f004093          	xori	ra,zero,240
   19728:	0f000e93          	li	t4,240
   1972c:	00d00e13          	li	t3,13
   19730:	03d09063          	bne	ra,t4,19750 <fail>

00019734 <test_14>:
   19734:	00ff00b7          	lui	ra,0xff0
   19738:	0ff08093          	addi	ra,ra,255 # ff00ff <_etext+0xfd5ac3>
   1973c:	70f0c013          	xori	zero,ra,1807
   19740:	00000e93          	li	t4,0
   19744:	00e00e13          	li	t3,14
   19748:	01d01463          	bne	zero,t4,19750 <fail>
   1974c:	05c01463          	bne	zero,t3,19794 <pass>

00019750 <fail>:
   19750:	0ff00513          	li	a0,255

00019754 <.delay_fail>:
   19754:	fff50513          	addi	a0,a0,-1
   19758:	fe051ee3          	bnez	a0,19754 <.delay_fail>
   1975c:	02000537          	lui	a0,0x2000
   19760:	04500593          	li	a1,69
   19764:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   19768:	05200613          	li	a2,82
   1976c:	00c52023          	sw	a2,0(a0)
   19770:	00c52023          	sw	a2,0(a0)
   19774:	04f00693          	li	a3,79
   19778:	00d52023          	sw	a3,0(a0)
   1977c:	00c52023          	sw	a2,0(a0)
   19780:	00d00713          	li	a4,13
   19784:	00e52023          	sw	a4,0(a0)
   19788:	00a00793          	li	a5,10
   1978c:	00f52023          	sw	a5,0(a0)
   19790:	999f606f          	j	10128 <xori_ret>

00019794 <pass>:
   19794:	0ff00513          	li	a0,255

00019798 <.delay_ok>:
   19798:	fff50513          	addi	a0,a0,-1
   1979c:	fe051ee3          	bnez	a0,19798 <.delay_ok>
   197a0:	02000537          	lui	a0,0x2000
   197a4:	04f00593          	li	a1,79
   197a8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   197ac:	04b00613          	li	a2,75
   197b0:	00c52023          	sw	a2,0(a0)
   197b4:	00d00693          	li	a3,13
   197b8:	00d52023          	sw	a3,0(a0)
   197bc:	00a00713          	li	a4,10
   197c0:	00e52023          	sw	a4,0(a0)
   197c4:	965f606f          	j	10128 <xori_ret>

000197c8 <blt>:
   197c8:	0ff00513          	li	a0,255

000197cc <.delay_pr>:
   197cc:	fff50513          	addi	a0,a0,-1
   197d0:	fe051ee3          	bnez	a0,197cc <.delay_pr>
   197d4:	00019537          	lui	a0,0x19
   197d8:	7f450513          	addi	a0,a0,2036 # 197f4 <.test_name>
   197dc:	02000637          	lui	a2,0x2000

000197e0 <.prname_next>:
   197e0:	00050583          	lb	a1,0(a0)
   197e4:	00058a63          	beqz	a1,197f8 <.prname_done>
   197e8:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   197ec:	00150513          	addi	a0,a0,1
   197f0:	ff1ff06f          	j	197e0 <.prname_next>

000197f4 <.test_name>:
   197f4:	6c62                	flw	fs8,24(sp)
   197f6:	0074                	addi	a3,sp,12

000197f8 <.prname_done>:
   197f8:	02e00593          	li	a1,46
   197fc:	00b62023          	sw	a1,0(a2)
   19800:	00b62023          	sw	a1,0(a2)

00019804 <test_2>:
   19804:	00200e13          	li	t3,2
   19808:	00000093          	li	ra,0
   1980c:	00100113          	li	sp,1
   19810:	0020c663          	blt	ra,sp,1981c <test_2+0x18>
   19814:	2bc01863          	bne	zero,t3,19ac4 <fail>
   19818:	01c01663          	bne	zero,t3,19824 <test_3>
   1981c:	fe20cee3          	blt	ra,sp,19818 <test_2+0x14>
   19820:	2bc01263          	bne	zero,t3,19ac4 <fail>

00019824 <test_3>:
   19824:	00300e13          	li	t3,3
   19828:	fff00093          	li	ra,-1
   1982c:	00100113          	li	sp,1
   19830:	0020c663          	blt	ra,sp,1983c <test_3+0x18>
   19834:	29c01863          	bne	zero,t3,19ac4 <fail>
   19838:	01c01663          	bne	zero,t3,19844 <test_4>
   1983c:	fe20cee3          	blt	ra,sp,19838 <test_3+0x14>
   19840:	29c01263          	bne	zero,t3,19ac4 <fail>

00019844 <test_4>:
   19844:	00400e13          	li	t3,4
   19848:	ffe00093          	li	ra,-2
   1984c:	fff00113          	li	sp,-1
   19850:	0020c663          	blt	ra,sp,1985c <test_4+0x18>
   19854:	27c01863          	bne	zero,t3,19ac4 <fail>
   19858:	01c01663          	bne	zero,t3,19864 <test_5>
   1985c:	fe20cee3          	blt	ra,sp,19858 <test_4+0x14>
   19860:	27c01263          	bne	zero,t3,19ac4 <fail>

00019864 <test_5>:
   19864:	00500e13          	li	t3,5
   19868:	00100093          	li	ra,1
   1986c:	00000113          	li	sp,0
   19870:	0020c463          	blt	ra,sp,19878 <test_5+0x14>
   19874:	01c01463          	bne	zero,t3,1987c <test_5+0x18>
   19878:	25c01663          	bne	zero,t3,19ac4 <fail>
   1987c:	fe20cee3          	blt	ra,sp,19878 <test_5+0x14>

00019880 <test_6>:
   19880:	00600e13          	li	t3,6
   19884:	00100093          	li	ra,1
   19888:	fff00113          	li	sp,-1
   1988c:	0020c463          	blt	ra,sp,19894 <test_6+0x14>
   19890:	01c01463          	bne	zero,t3,19898 <test_6+0x18>
   19894:	23c01863          	bne	zero,t3,19ac4 <fail>
   19898:	fe20cee3          	blt	ra,sp,19894 <test_6+0x14>

0001989c <test_7>:
   1989c:	00700e13          	li	t3,7
   198a0:	fff00093          	li	ra,-1
   198a4:	ffe00113          	li	sp,-2
   198a8:	0020c463          	blt	ra,sp,198b0 <test_7+0x14>
   198ac:	01c01463          	bne	zero,t3,198b4 <test_7+0x18>
   198b0:	21c01a63          	bne	zero,t3,19ac4 <fail>
   198b4:	fe20cee3          	blt	ra,sp,198b0 <test_7+0x14>

000198b8 <test_8>:
   198b8:	00800e13          	li	t3,8
   198bc:	00100093          	li	ra,1
   198c0:	ffe00113          	li	sp,-2
   198c4:	0020c463          	blt	ra,sp,198cc <test_8+0x14>
   198c8:	01c01463          	bne	zero,t3,198d0 <test_8+0x18>
   198cc:	1fc01c63          	bne	zero,t3,19ac4 <fail>
   198d0:	fe20cee3          	blt	ra,sp,198cc <test_8+0x14>

000198d4 <test_9>:
   198d4:	00900e13          	li	t3,9
   198d8:	00000213          	li	tp,0
   198dc:	00000093          	li	ra,0
   198e0:	fff00113          	li	sp,-1
   198e4:	1e20c063          	blt	ra,sp,19ac4 <fail>
   198e8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   198ec:	00200293          	li	t0,2
   198f0:	fe5216e3          	bne	tp,t0,198dc <test_9+0x8>

000198f4 <test_10>:
   198f4:	00a00e13          	li	t3,10
   198f8:	00000213          	li	tp,0
   198fc:	00000093          	li	ra,0
   19900:	fff00113          	li	sp,-1
   19904:	00000013          	nop
   19908:	1a20ce63          	blt	ra,sp,19ac4 <fail>
   1990c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19910:	00200293          	li	t0,2
   19914:	fe5214e3          	bne	tp,t0,198fc <test_10+0x8>

00019918 <test_11>:
   19918:	00b00e13          	li	t3,11
   1991c:	00000213          	li	tp,0
   19920:	00000093          	li	ra,0
   19924:	fff00113          	li	sp,-1
   19928:	00000013          	nop
   1992c:	00000013          	nop
   19930:	1820ca63          	blt	ra,sp,19ac4 <fail>
   19934:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19938:	00200293          	li	t0,2
   1993c:	fe5212e3          	bne	tp,t0,19920 <test_11+0x8>

00019940 <test_12>:
   19940:	00c00e13          	li	t3,12
   19944:	00000213          	li	tp,0
   19948:	00000093          	li	ra,0
   1994c:	00000013          	nop
   19950:	fff00113          	li	sp,-1
   19954:	1620c863          	blt	ra,sp,19ac4 <fail>
   19958:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1995c:	00200293          	li	t0,2
   19960:	fe5214e3          	bne	tp,t0,19948 <test_12+0x8>

00019964 <test_13>:
   19964:	00d00e13          	li	t3,13
   19968:	00000213          	li	tp,0
   1996c:	00000093          	li	ra,0
   19970:	00000013          	nop
   19974:	fff00113          	li	sp,-1
   19978:	00000013          	nop
   1997c:	1420c463          	blt	ra,sp,19ac4 <fail>
   19980:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19984:	00200293          	li	t0,2
   19988:	fe5212e3          	bne	tp,t0,1996c <test_13+0x8>

0001998c <test_14>:
   1998c:	00e00e13          	li	t3,14
   19990:	00000213          	li	tp,0
   19994:	00000093          	li	ra,0
   19998:	00000013          	nop
   1999c:	00000013          	nop
   199a0:	fff00113          	li	sp,-1
   199a4:	1220c063          	blt	ra,sp,19ac4 <fail>
   199a8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199ac:	00200293          	li	t0,2
   199b0:	fe5212e3          	bne	tp,t0,19994 <test_14+0x8>

000199b4 <test_15>:
   199b4:	00f00e13          	li	t3,15
   199b8:	00000213          	li	tp,0
   199bc:	00000093          	li	ra,0
   199c0:	fff00113          	li	sp,-1
   199c4:	1020c063          	blt	ra,sp,19ac4 <fail>
   199c8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199cc:	00200293          	li	t0,2
   199d0:	fe5216e3          	bne	tp,t0,199bc <test_15+0x8>

000199d4 <test_16>:
   199d4:	01000e13          	li	t3,16
   199d8:	00000213          	li	tp,0
   199dc:	00000093          	li	ra,0
   199e0:	fff00113          	li	sp,-1
   199e4:	00000013          	nop
   199e8:	0c20ce63          	blt	ra,sp,19ac4 <fail>
   199ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   199f0:	00200293          	li	t0,2
   199f4:	fe5214e3          	bne	tp,t0,199dc <test_16+0x8>

000199f8 <test_17>:
   199f8:	01100e13          	li	t3,17
   199fc:	00000213          	li	tp,0
   19a00:	00000093          	li	ra,0
   19a04:	fff00113          	li	sp,-1
   19a08:	00000013          	nop
   19a0c:	00000013          	nop
   19a10:	0a20ca63          	blt	ra,sp,19ac4 <fail>
   19a14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a18:	00200293          	li	t0,2
   19a1c:	fe5212e3          	bne	tp,t0,19a00 <test_17+0x8>

00019a20 <test_18>:
   19a20:	01200e13          	li	t3,18
   19a24:	00000213          	li	tp,0
   19a28:	00000093          	li	ra,0
   19a2c:	00000013          	nop
   19a30:	fff00113          	li	sp,-1
   19a34:	0820c863          	blt	ra,sp,19ac4 <fail>
   19a38:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a3c:	00200293          	li	t0,2
   19a40:	fe5214e3          	bne	tp,t0,19a28 <test_18+0x8>

00019a44 <test_19>:
   19a44:	01300e13          	li	t3,19
   19a48:	00000213          	li	tp,0
   19a4c:	00000093          	li	ra,0
   19a50:	00000013          	nop
   19a54:	fff00113          	li	sp,-1
   19a58:	00000013          	nop
   19a5c:	0620c463          	blt	ra,sp,19ac4 <fail>
   19a60:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a64:	00200293          	li	t0,2
   19a68:	fe5212e3          	bne	tp,t0,19a4c <test_19+0x8>

00019a6c <test_20>:
   19a6c:	01400e13          	li	t3,20
   19a70:	00000213          	li	tp,0
   19a74:	00000093          	li	ra,0
   19a78:	00000013          	nop
   19a7c:	00000013          	nop
   19a80:	fff00113          	li	sp,-1
   19a84:	0420c063          	blt	ra,sp,19ac4 <fail>
   19a88:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19a8c:	00200293          	li	t0,2
   19a90:	fe5212e3          	bne	tp,t0,19a74 <test_20+0x8>

00019a94 <test_21>:
   19a94:	00100093          	li	ra,1
   19a98:	00104a63          	bgtz	ra,19aac <test_21+0x18>
   19a9c:	00108093          	addi	ra,ra,1
   19aa0:	00108093          	addi	ra,ra,1
   19aa4:	00108093          	addi	ra,ra,1
   19aa8:	00108093          	addi	ra,ra,1
   19aac:	00108093          	addi	ra,ra,1
   19ab0:	00108093          	addi	ra,ra,1
   19ab4:	00300e93          	li	t4,3
   19ab8:	01500e13          	li	t3,21
   19abc:	01d09463          	bne	ra,t4,19ac4 <fail>
   19ac0:	05c01463          	bne	zero,t3,19b08 <pass>

00019ac4 <fail>:
   19ac4:	0ff00513          	li	a0,255

00019ac8 <.delay_fail>:
   19ac8:	fff50513          	addi	a0,a0,-1
   19acc:	fe051ee3          	bnez	a0,19ac8 <.delay_fail>
   19ad0:	02000537          	lui	a0,0x2000
   19ad4:	04500593          	li	a1,69
   19ad8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   19adc:	05200613          	li	a2,82
   19ae0:	00c52023          	sw	a2,0(a0)
   19ae4:	00c52023          	sw	a2,0(a0)
   19ae8:	04f00693          	li	a3,79
   19aec:	00d52023          	sw	a3,0(a0)
   19af0:	00c52023          	sw	a2,0(a0)
   19af4:	00d00713          	li	a4,13
   19af8:	00e52023          	sw	a4,0(a0)
   19afc:	00a00793          	li	a5,10
   19b00:	00f52023          	sw	a5,0(a0)
   19b04:	decf606f          	j	100f0 <blt_ret>

00019b08 <pass>:
   19b08:	0ff00513          	li	a0,255

00019b0c <.delay_ok>:
   19b0c:	fff50513          	addi	a0,a0,-1
   19b10:	fe051ee3          	bnez	a0,19b0c <.delay_ok>
   19b14:	02000537          	lui	a0,0x2000
   19b18:	04f00593          	li	a1,79
   19b1c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   19b20:	04b00613          	li	a2,75
   19b24:	00c52023          	sw	a2,0(a0)
   19b28:	00d00693          	li	a3,13
   19b2c:	00d52023          	sw	a3,0(a0)
   19b30:	00a00713          	li	a4,10
   19b34:	00e52023          	sw	a4,0(a0)
   19b38:	db8f606f          	j	100f0 <blt_ret>

00019b3c <mulh>:
   19b3c:	0ff00513          	li	a0,255

00019b40 <.delay_pr>:
   19b40:	fff50513          	addi	a0,a0,-1
   19b44:	fe051ee3          	bnez	a0,19b40 <.delay_pr>
   19b48:	0001a537          	lui	a0,0x1a
   19b4c:	b6850513          	addi	a0,a0,-1176 # 19b68 <.test_name>
   19b50:	02000637          	lui	a2,0x2000

00019b54 <.prname_next>:
   19b54:	00050583          	lb	a1,0(a0)
   19b58:	00058c63          	beqz	a1,19b70 <.prname_done>
   19b5c:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   19b60:	00150513          	addi	a0,a0,1
   19b64:	ff1ff06f          	j	19b54 <.prname_next>

00019b68 <.test_name>:
   19b68:	756d                	lui	a0,0xffffb
   19b6a:	686c                	flw	fa1,84(s0)
   19b6c:	0000                	unimp
	...

00019b70 <.prname_done>:
   19b70:	02e00593          	li	a1,46
   19b74:	00b62023          	sw	a1,0(a2)
   19b78:	00b62023          	sw	a1,0(a2)

00019b7c <test_2>:
   19b7c:	00000093          	li	ra,0
   19b80:	00000113          	li	sp,0
   19b84:	022091b3          	mulh	gp,ra,sp
   19b88:	00000e93          	li	t4,0
   19b8c:	00200e13          	li	t3,2
   19b90:	4bd19a63          	bne	gp,t4,1a044 <fail>

00019b94 <test_3>:
   19b94:	00100093          	li	ra,1
   19b98:	00100113          	li	sp,1
   19b9c:	022091b3          	mulh	gp,ra,sp
   19ba0:	00000e93          	li	t4,0
   19ba4:	00300e13          	li	t3,3
   19ba8:	49d19e63          	bne	gp,t4,1a044 <fail>

00019bac <test_4>:
   19bac:	00300093          	li	ra,3
   19bb0:	00700113          	li	sp,7
   19bb4:	022091b3          	mulh	gp,ra,sp
   19bb8:	00000e93          	li	t4,0
   19bbc:	00400e13          	li	t3,4
   19bc0:	49d19263          	bne	gp,t4,1a044 <fail>

00019bc4 <test_5>:
   19bc4:	00000093          	li	ra,0
   19bc8:	ffff8137          	lui	sp,0xffff8
   19bcc:	022091b3          	mulh	gp,ra,sp
   19bd0:	00000e93          	li	t4,0
   19bd4:	00500e13          	li	t3,5
   19bd8:	47d19663          	bne	gp,t4,1a044 <fail>

00019bdc <test_6>:
   19bdc:	800000b7          	lui	ra,0x80000
   19be0:	00000113          	li	sp,0
   19be4:	022091b3          	mulh	gp,ra,sp
   19be8:	00000e93          	li	t4,0
   19bec:	00600e13          	li	t3,6
   19bf0:	45d19a63          	bne	gp,t4,1a044 <fail>

00019bf4 <test_7>:
   19bf4:	800000b7          	lui	ra,0x80000
   19bf8:	00000113          	li	sp,0
   19bfc:	022091b3          	mulh	gp,ra,sp
   19c00:	00000e93          	li	t4,0
   19c04:	00700e13          	li	t3,7
   19c08:	43d19e63          	bne	gp,t4,1a044 <fail>

00019c0c <test_30>:
   19c0c:	aaaab0b7          	lui	ra,0xaaaab
   19c10:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19c14:	00030137          	lui	sp,0x30
   19c18:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15841>
   19c1c:	022091b3          	mulh	gp,ra,sp
   19c20:	ffff0eb7          	lui	t4,0xffff0
   19c24:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19c28:	01e00e13          	li	t3,30
   19c2c:	41d19c63          	bne	gp,t4,1a044 <fail>

00019c30 <test_31>:
   19c30:	000300b7          	lui	ra,0x30
   19c34:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15841>
   19c38:	aaaab137          	lui	sp,0xaaaab
   19c3c:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   19c40:	022091b3          	mulh	gp,ra,sp
   19c44:	ffff0eb7          	lui	t4,0xffff0
   19c48:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   19c4c:	01f00e13          	li	t3,31
   19c50:	3fd19a63          	bne	gp,t4,1a044 <fail>

00019c54 <test_32>:
   19c54:	ff0000b7          	lui	ra,0xff000
   19c58:	ff000137          	lui	sp,0xff000
   19c5c:	022091b3          	mulh	gp,ra,sp
   19c60:	00010eb7          	lui	t4,0x10
   19c64:	02000e13          	li	t3,32
   19c68:	3dd19e63          	bne	gp,t4,1a044 <fail>

00019c6c <test_33>:
   19c6c:	fff00093          	li	ra,-1
   19c70:	fff00113          	li	sp,-1
   19c74:	022091b3          	mulh	gp,ra,sp
   19c78:	00000e93          	li	t4,0
   19c7c:	02100e13          	li	t3,33
   19c80:	3dd19263          	bne	gp,t4,1a044 <fail>

00019c84 <test_34>:
   19c84:	fff00093          	li	ra,-1
   19c88:	00100113          	li	sp,1
   19c8c:	022091b3          	mulh	gp,ra,sp
   19c90:	fff00e93          	li	t4,-1
   19c94:	02200e13          	li	t3,34
   19c98:	3bd19663          	bne	gp,t4,1a044 <fail>

00019c9c <test_35>:
   19c9c:	00100093          	li	ra,1
   19ca0:	fff00113          	li	sp,-1
   19ca4:	022091b3          	mulh	gp,ra,sp
   19ca8:	fff00e93          	li	t4,-1
   19cac:	02300e13          	li	t3,35
   19cb0:	39d19a63          	bne	gp,t4,1a044 <fail>

00019cb4 <test_8>:
   19cb4:	00d000b7          	lui	ra,0xd00
   19cb8:	00b00137          	lui	sp,0xb00
   19cbc:	022090b3          	mulh	ra,ra,sp
   19cc0:	00009eb7          	lui	t4,0x9
   19cc4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19cc8:	00800e13          	li	t3,8
   19ccc:	37d09c63          	bne	ra,t4,1a044 <fail>

00019cd0 <test_9>:
   19cd0:	00e000b7          	lui	ra,0xe00
   19cd4:	00b00137          	lui	sp,0xb00
   19cd8:	02209133          	mulh	sp,ra,sp
   19cdc:	0000aeb7          	lui	t4,0xa
   19ce0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19ce4:	00900e13          	li	t3,9
   19ce8:	35d11e63          	bne	sp,t4,1a044 <fail>

00019cec <test_10>:
   19cec:	00d000b7          	lui	ra,0xd00
   19cf0:	021090b3          	mulh	ra,ra,ra
   19cf4:	0000beb7          	lui	t4,0xb
   19cf8:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   19cfc:	00a00e13          	li	t3,10
   19d00:	35d09263          	bne	ra,t4,1a044 <fail>

00019d04 <test_11>:
   19d04:	00000213          	li	tp,0
   19d08:	00d000b7          	lui	ra,0xd00
   19d0c:	00b00137          	lui	sp,0xb00
   19d10:	022091b3          	mulh	gp,ra,sp
   19d14:	00018313          	mv	t1,gp
   19d18:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d1c:	00200293          	li	t0,2
   19d20:	fe5214e3          	bne	tp,t0,19d08 <test_11+0x4>
   19d24:	00009eb7          	lui	t4,0x9
   19d28:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19d2c:	00b00e13          	li	t3,11
   19d30:	31d31a63          	bne	t1,t4,1a044 <fail>

00019d34 <test_12>:
   19d34:	00000213          	li	tp,0
   19d38:	00e000b7          	lui	ra,0xe00
   19d3c:	00b00137          	lui	sp,0xb00
   19d40:	022091b3          	mulh	gp,ra,sp
   19d44:	00000013          	nop
   19d48:	00018313          	mv	t1,gp
   19d4c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d50:	00200293          	li	t0,2
   19d54:	fe5212e3          	bne	tp,t0,19d38 <test_12+0x4>
   19d58:	0000aeb7          	lui	t4,0xa
   19d5c:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19d60:	00c00e13          	li	t3,12
   19d64:	2fd31063          	bne	t1,t4,1a044 <fail>

00019d68 <test_13>:
   19d68:	00000213          	li	tp,0
   19d6c:	00f000b7          	lui	ra,0xf00
   19d70:	00b00137          	lui	sp,0xb00
   19d74:	022091b3          	mulh	gp,ra,sp
   19d78:	00000013          	nop
   19d7c:	00000013          	nop
   19d80:	00018313          	mv	t1,gp
   19d84:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19d88:	00200293          	li	t0,2
   19d8c:	fe5210e3          	bne	tp,t0,19d6c <test_13+0x4>
   19d90:	0000aeb7          	lui	t4,0xa
   19d94:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19d98:	00d00e13          	li	t3,13
   19d9c:	2bd31463          	bne	t1,t4,1a044 <fail>

00019da0 <test_14>:
   19da0:	00000213          	li	tp,0
   19da4:	00d000b7          	lui	ra,0xd00
   19da8:	00b00137          	lui	sp,0xb00
   19dac:	022091b3          	mulh	gp,ra,sp
   19db0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19db4:	00200293          	li	t0,2
   19db8:	fe5216e3          	bne	tp,t0,19da4 <test_14+0x4>
   19dbc:	00009eb7          	lui	t4,0x9
   19dc0:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19dc4:	00e00e13          	li	t3,14
   19dc8:	27d19e63          	bne	gp,t4,1a044 <fail>

00019dcc <test_15>:
   19dcc:	00000213          	li	tp,0
   19dd0:	00e000b7          	lui	ra,0xe00
   19dd4:	00b00137          	lui	sp,0xb00
   19dd8:	00000013          	nop
   19ddc:	022091b3          	mulh	gp,ra,sp
   19de0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19de4:	00200293          	li	t0,2
   19de8:	fe5214e3          	bne	tp,t0,19dd0 <test_15+0x4>
   19dec:	0000aeb7          	lui	t4,0xa
   19df0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19df4:	00f00e13          	li	t3,15
   19df8:	25d19663          	bne	gp,t4,1a044 <fail>

00019dfc <test_16>:
   19dfc:	00000213          	li	tp,0
   19e00:	00f000b7          	lui	ra,0xf00
   19e04:	00b00137          	lui	sp,0xb00
   19e08:	00000013          	nop
   19e0c:	00000013          	nop
   19e10:	022091b3          	mulh	gp,ra,sp
   19e14:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e18:	00200293          	li	t0,2
   19e1c:	fe5212e3          	bne	tp,t0,19e00 <test_16+0x4>
   19e20:	0000aeb7          	lui	t4,0xa
   19e24:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19e28:	01000e13          	li	t3,16
   19e2c:	21d19c63          	bne	gp,t4,1a044 <fail>

00019e30 <test_17>:
   19e30:	00000213          	li	tp,0
   19e34:	00d000b7          	lui	ra,0xd00
   19e38:	00000013          	nop
   19e3c:	00b00137          	lui	sp,0xb00
   19e40:	022091b3          	mulh	gp,ra,sp
   19e44:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e48:	00200293          	li	t0,2
   19e4c:	fe5214e3          	bne	tp,t0,19e34 <test_17+0x4>
   19e50:	00009eb7          	lui	t4,0x9
   19e54:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19e58:	01100e13          	li	t3,17
   19e5c:	1fd19463          	bne	gp,t4,1a044 <fail>

00019e60 <test_18>:
   19e60:	00000213          	li	tp,0
   19e64:	00e000b7          	lui	ra,0xe00
   19e68:	00000013          	nop
   19e6c:	00b00137          	lui	sp,0xb00
   19e70:	00000013          	nop
   19e74:	022091b3          	mulh	gp,ra,sp
   19e78:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19e7c:	00200293          	li	t0,2
   19e80:	fe5212e3          	bne	tp,t0,19e64 <test_18+0x4>
   19e84:	0000aeb7          	lui	t4,0xa
   19e88:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19e8c:	01200e13          	li	t3,18
   19e90:	1bd19a63          	bne	gp,t4,1a044 <fail>

00019e94 <test_19>:
   19e94:	00000213          	li	tp,0
   19e98:	00f000b7          	lui	ra,0xf00
   19e9c:	00000013          	nop
   19ea0:	00000013          	nop
   19ea4:	00b00137          	lui	sp,0xb00
   19ea8:	022091b3          	mulh	gp,ra,sp
   19eac:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19eb0:	00200293          	li	t0,2
   19eb4:	fe5212e3          	bne	tp,t0,19e98 <test_19+0x4>
   19eb8:	0000aeb7          	lui	t4,0xa
   19ebc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19ec0:	01300e13          	li	t3,19
   19ec4:	19d19063          	bne	gp,t4,1a044 <fail>

00019ec8 <test_20>:
   19ec8:	00000213          	li	tp,0
   19ecc:	00b00137          	lui	sp,0xb00
   19ed0:	00d000b7          	lui	ra,0xd00
   19ed4:	022091b3          	mulh	gp,ra,sp
   19ed8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19edc:	00200293          	li	t0,2
   19ee0:	fe5216e3          	bne	tp,t0,19ecc <test_20+0x4>
   19ee4:	00009eb7          	lui	t4,0x9
   19ee8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19eec:	01400e13          	li	t3,20
   19ef0:	15d19a63          	bne	gp,t4,1a044 <fail>

00019ef4 <test_21>:
   19ef4:	00000213          	li	tp,0
   19ef8:	00b00137          	lui	sp,0xb00
   19efc:	00e000b7          	lui	ra,0xe00
   19f00:	00000013          	nop
   19f04:	022091b3          	mulh	gp,ra,sp
   19f08:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f0c:	00200293          	li	t0,2
   19f10:	fe5214e3          	bne	tp,t0,19ef8 <test_21+0x4>
   19f14:	0000aeb7          	lui	t4,0xa
   19f18:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19f1c:	01500e13          	li	t3,21
   19f20:	13d19263          	bne	gp,t4,1a044 <fail>

00019f24 <test_22>:
   19f24:	00000213          	li	tp,0
   19f28:	00b00137          	lui	sp,0xb00
   19f2c:	00f000b7          	lui	ra,0xf00
   19f30:	00000013          	nop
   19f34:	00000013          	nop
   19f38:	022091b3          	mulh	gp,ra,sp
   19f3c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f40:	00200293          	li	t0,2
   19f44:	fe5212e3          	bne	tp,t0,19f28 <test_22+0x4>
   19f48:	0000aeb7          	lui	t4,0xa
   19f4c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19f50:	01600e13          	li	t3,22
   19f54:	0fd19863          	bne	gp,t4,1a044 <fail>

00019f58 <test_23>:
   19f58:	00000213          	li	tp,0
   19f5c:	00b00137          	lui	sp,0xb00
   19f60:	00000013          	nop
   19f64:	00d000b7          	lui	ra,0xd00
   19f68:	022091b3          	mulh	gp,ra,sp
   19f6c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19f70:	00200293          	li	t0,2
   19f74:	fe5214e3          	bne	tp,t0,19f5c <test_23+0x4>
   19f78:	00009eb7          	lui	t4,0x9
   19f7c:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   19f80:	01700e13          	li	t3,23
   19f84:	0dd19063          	bne	gp,t4,1a044 <fail>

00019f88 <test_24>:
   19f88:	00000213          	li	tp,0
   19f8c:	00b00137          	lui	sp,0xb00
   19f90:	00000013          	nop
   19f94:	00e000b7          	lui	ra,0xe00
   19f98:	00000013          	nop
   19f9c:	022091b3          	mulh	gp,ra,sp
   19fa0:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19fa4:	00200293          	li	t0,2
   19fa8:	fe5212e3          	bne	tp,t0,19f8c <test_24+0x4>
   19fac:	0000aeb7          	lui	t4,0xa
   19fb0:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   19fb4:	01800e13          	li	t3,24
   19fb8:	09d19663          	bne	gp,t4,1a044 <fail>

00019fbc <test_25>:
   19fbc:	00000213          	li	tp,0
   19fc0:	00b00137          	lui	sp,0xb00
   19fc4:	00000013          	nop
   19fc8:	00000013          	nop
   19fcc:	00f000b7          	lui	ra,0xf00
   19fd0:	022091b3          	mulh	gp,ra,sp
   19fd4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   19fd8:	00200293          	li	t0,2
   19fdc:	fe5212e3          	bne	tp,t0,19fc0 <test_25+0x4>
   19fe0:	0000aeb7          	lui	t4,0xa
   19fe4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   19fe8:	01900e13          	li	t3,25
   19fec:	05d19c63          	bne	gp,t4,1a044 <fail>

00019ff0 <test_26>:
   19ff0:	7c0000b7          	lui	ra,0x7c000
   19ff4:	02101133          	mulh	sp,zero,ra
   19ff8:	00000e93          	li	t4,0
   19ffc:	01a00e13          	li	t3,26
   1a000:	05d11263          	bne	sp,t4,1a044 <fail>

0001a004 <test_27>:
   1a004:	800000b7          	lui	ra,0x80000
   1a008:	02009133          	mulh	sp,ra,zero
   1a00c:	00000e93          	li	t4,0
   1a010:	01b00e13          	li	t3,27
   1a014:	03d11863          	bne	sp,t4,1a044 <fail>

0001a018 <test_28>:
   1a018:	020010b3          	mulh	ra,zero,zero
   1a01c:	00000e93          	li	t4,0
   1a020:	01c00e13          	li	t3,28
   1a024:	03d09063          	bne	ra,t4,1a044 <fail>

0001a028 <test_29>:
   1a028:	021000b7          	lui	ra,0x2100
   1a02c:	02200137          	lui	sp,0x2200
   1a030:	02209033          	mulh	zero,ra,sp
   1a034:	00000e93          	li	t4,0
   1a038:	01d00e13          	li	t3,29
   1a03c:	01d01463          	bne	zero,t4,1a044 <fail>
   1a040:	05c01463          	bne	zero,t3,1a088 <pass>

0001a044 <fail>:
   1a044:	0ff00513          	li	a0,255

0001a048 <.delay_fail>:
   1a048:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1a04c:	fe051ee3          	bnez	a0,1a048 <.delay_fail>
   1a050:	02000537          	lui	a0,0x2000
   1a054:	04500593          	li	a1,69
   1a058:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1a05c:	05200613          	li	a2,82
   1a060:	00c52023          	sw	a2,0(a0)
   1a064:	00c52023          	sw	a2,0(a0)
   1a068:	04f00693          	li	a3,79
   1a06c:	00d52023          	sw	a3,0(a0)
   1a070:	00c52023          	sw	a2,0(a0)
   1a074:	00d00713          	li	a4,13
   1a078:	00e52023          	sw	a4,0(a0)
   1a07c:	00a00793          	li	a5,10
   1a080:	00f52023          	sw	a5,0(a0)
   1a084:	8e0f606f          	j	10164 <mulh_ret>

0001a088 <pass>:
   1a088:	0ff00513          	li	a0,255

0001a08c <.delay_ok>:
   1a08c:	fff50513          	addi	a0,a0,-1
   1a090:	fe051ee3          	bnez	a0,1a08c <.delay_ok>
   1a094:	02000537          	lui	a0,0x2000
   1a098:	04f00593          	li	a1,79
   1a09c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1a0a0:	04b00613          	li	a2,75
   1a0a4:	00c52023          	sw	a2,0(a0)
   1a0a8:	00d00693          	li	a3,13
   1a0ac:	00d52023          	sw	a3,0(a0)
   1a0b0:	00a00713          	li	a4,10
   1a0b4:	00e52023          	sw	a4,0(a0)
   1a0b8:	8acf606f          	j	10164 <mulh_ret>

0001a0bc <mulhsu>:
   1a0bc:	0ff00513          	li	a0,255

0001a0c0 <.delay_pr>:
   1a0c0:	fff50513          	addi	a0,a0,-1
   1a0c4:	fe051ee3          	bnez	a0,1a0c0 <.delay_pr>
   1a0c8:	0001a537          	lui	a0,0x1a
   1a0cc:	0e850513          	addi	a0,a0,232 # 1a0e8 <.test_name>
   1a0d0:	02000637          	lui	a2,0x2000

0001a0d4 <.prname_next>:
   1a0d4:	00050583          	lb	a1,0(a0)
   1a0d8:	00058c63          	beqz	a1,1a0f0 <.prname_done>
   1a0dc:	00b62023          	sw	a1,0(a2) # 2000000 <_etext+0x1fe59c4>
   1a0e0:	00150513          	addi	a0,a0,1
   1a0e4:	ff1ff06f          	j	1a0d4 <.prname_next>

0001a0e8 <.test_name>:
   1a0e8:	756d                	lui	a0,0xffffb
   1a0ea:	686c                	flw	fa1,84(s0)
   1a0ec:	00007573          	csrrci	a0,ustatus,0

0001a0f0 <.prname_done>:
   1a0f0:	02e00593          	li	a1,46
   1a0f4:	00b62023          	sw	a1,0(a2)
   1a0f8:	00b62023          	sw	a1,0(a2)

0001a0fc <test_2>:
   1a0fc:	00000093          	li	ra,0
   1a100:	00000113          	li	sp,0
   1a104:	0220a1b3          	mulhsu	gp,ra,sp
   1a108:	00000e93          	li	t4,0
   1a10c:	00200e13          	li	t3,2
   1a110:	4bd19a63          	bne	gp,t4,1a5c4 <fail>

0001a114 <test_3>:
   1a114:	00100093          	li	ra,1
   1a118:	00100113          	li	sp,1
   1a11c:	0220a1b3          	mulhsu	gp,ra,sp
   1a120:	00000e93          	li	t4,0
   1a124:	00300e13          	li	t3,3
   1a128:	49d19e63          	bne	gp,t4,1a5c4 <fail>

0001a12c <test_4>:
   1a12c:	00300093          	li	ra,3
   1a130:	00700113          	li	sp,7
   1a134:	0220a1b3          	mulhsu	gp,ra,sp
   1a138:	00000e93          	li	t4,0
   1a13c:	00400e13          	li	t3,4
   1a140:	49d19263          	bne	gp,t4,1a5c4 <fail>

0001a144 <test_5>:
   1a144:	00000093          	li	ra,0
   1a148:	ffff8137          	lui	sp,0xffff8
   1a14c:	0220a1b3          	mulhsu	gp,ra,sp
   1a150:	00000e93          	li	t4,0
   1a154:	00500e13          	li	t3,5
   1a158:	47d19663          	bne	gp,t4,1a5c4 <fail>

0001a15c <test_6>:
   1a15c:	800000b7          	lui	ra,0x80000
   1a160:	00000113          	li	sp,0
   1a164:	0220a1b3          	mulhsu	gp,ra,sp
   1a168:	00000e93          	li	t4,0
   1a16c:	00600e13          	li	t3,6
   1a170:	45d19a63          	bne	gp,t4,1a5c4 <fail>

0001a174 <test_7>:
   1a174:	800000b7          	lui	ra,0x80000
   1a178:	ffff8137          	lui	sp,0xffff8
   1a17c:	0220a1b3          	mulhsu	gp,ra,sp
   1a180:	80004eb7          	lui	t4,0x80004
   1a184:	00700e13          	li	t3,7
   1a188:	43d19e63          	bne	gp,t4,1a5c4 <fail>

0001a18c <test_30>:
   1a18c:	aaaab0b7          	lui	ra,0xaaaab
   1a190:	aab08093          	addi	ra,ra,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a194:	00030137          	lui	sp,0x30
   1a198:	e7d10113          	addi	sp,sp,-387 # 2fe7d <_etext+0x15841>
   1a19c:	0220a1b3          	mulhsu	gp,ra,sp
   1a1a0:	ffff0eb7          	lui	t4,0xffff0
   1a1a4:	081e8e93          	addi	t4,t4,129 # ffff0081 <_edata+0x7fff0011>
   1a1a8:	01e00e13          	li	t3,30
   1a1ac:	41d19c63          	bne	gp,t4,1a5c4 <fail>

0001a1b0 <test_31>:
   1a1b0:	000300b7          	lui	ra,0x30
   1a1b4:	e7d08093          	addi	ra,ra,-387 # 2fe7d <_etext+0x15841>
   1a1b8:	aaaab137          	lui	sp,0xaaaab
   1a1bc:	aab10113          	addi	sp,sp,-1365 # aaaaaaab <_edata+0x2aaaaa3b>
   1a1c0:	0220a1b3          	mulhsu	gp,ra,sp
   1a1c4:	00020eb7          	lui	t4,0x20
   1a1c8:	efee8e93          	addi	t4,t4,-258 # 1fefe <_etext+0x58c2>
   1a1cc:	01f00e13          	li	t3,31
   1a1d0:	3fd19a63          	bne	gp,t4,1a5c4 <fail>

0001a1d4 <test_32>:
   1a1d4:	ff0000b7          	lui	ra,0xff000
   1a1d8:	ff000137          	lui	sp,0xff000
   1a1dc:	0220a1b3          	mulhsu	gp,ra,sp
   1a1e0:	ff010eb7          	lui	t4,0xff010
   1a1e4:	02000e13          	li	t3,32
   1a1e8:	3dd19e63          	bne	gp,t4,1a5c4 <fail>

0001a1ec <test_33>:
   1a1ec:	fff00093          	li	ra,-1
   1a1f0:	fff00113          	li	sp,-1
   1a1f4:	0220a1b3          	mulhsu	gp,ra,sp
   1a1f8:	fff00e93          	li	t4,-1
   1a1fc:	02100e13          	li	t3,33
   1a200:	3dd19263          	bne	gp,t4,1a5c4 <fail>

0001a204 <test_34>:
   1a204:	fff00093          	li	ra,-1
   1a208:	00100113          	li	sp,1
   1a20c:	0220a1b3          	mulhsu	gp,ra,sp
   1a210:	fff00e93          	li	t4,-1
   1a214:	02200e13          	li	t3,34
   1a218:	3bd19663          	bne	gp,t4,1a5c4 <fail>

0001a21c <test_35>:
   1a21c:	00100093          	li	ra,1
   1a220:	fff00113          	li	sp,-1
   1a224:	0220a1b3          	mulhsu	gp,ra,sp
   1a228:	00000e93          	li	t4,0
   1a22c:	02300e13          	li	t3,35
   1a230:	39d19a63          	bne	gp,t4,1a5c4 <fail>

0001a234 <test_8>:
   1a234:	00d000b7          	lui	ra,0xd00
   1a238:	00b00137          	lui	sp,0xb00
   1a23c:	0220a0b3          	mulhsu	ra,ra,sp
   1a240:	00009eb7          	lui	t4,0x9
   1a244:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a248:	00800e13          	li	t3,8
   1a24c:	37d09c63          	bne	ra,t4,1a5c4 <fail>

0001a250 <test_9>:
   1a250:	00e000b7          	lui	ra,0xe00
   1a254:	00b00137          	lui	sp,0xb00
   1a258:	0220a133          	mulhsu	sp,ra,sp
   1a25c:	0000aeb7          	lui	t4,0xa
   1a260:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a264:	00900e13          	li	t3,9
   1a268:	35d11e63          	bne	sp,t4,1a5c4 <fail>

0001a26c <test_10>:
   1a26c:	00d000b7          	lui	ra,0xd00
   1a270:	0210a0b3          	mulhsu	ra,ra,ra
   1a274:	0000beb7          	lui	t4,0xb
   1a278:	900e8e93          	addi	t4,t4,-1792 # a900 <_start-0x5700>
   1a27c:	00a00e13          	li	t3,10
   1a280:	35d09263          	bne	ra,t4,1a5c4 <fail>

0001a284 <test_11>:
   1a284:	00000213          	li	tp,0
   1a288:	00d000b7          	lui	ra,0xd00
   1a28c:	00b00137          	lui	sp,0xb00
   1a290:	0220a1b3          	mulhsu	gp,ra,sp
   1a294:	00018313          	mv	t1,gp
   1a298:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a29c:	00200293          	li	t0,2
   1a2a0:	fe5214e3          	bne	tp,t0,1a288 <test_11+0x4>
   1a2a4:	00009eb7          	lui	t4,0x9
   1a2a8:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a2ac:	00b00e13          	li	t3,11
   1a2b0:	31d31a63          	bne	t1,t4,1a5c4 <fail>

0001a2b4 <test_12>:
   1a2b4:	00000213          	li	tp,0
   1a2b8:	00e000b7          	lui	ra,0xe00
   1a2bc:	00b00137          	lui	sp,0xb00
   1a2c0:	0220a1b3          	mulhsu	gp,ra,sp
   1a2c4:	00000013          	nop
   1a2c8:	00018313          	mv	t1,gp
   1a2cc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a2d0:	00200293          	li	t0,2
   1a2d4:	fe5212e3          	bne	tp,t0,1a2b8 <test_12+0x4>
   1a2d8:	0000aeb7          	lui	t4,0xa
   1a2dc:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a2e0:	00c00e13          	li	t3,12
   1a2e4:	2fd31063          	bne	t1,t4,1a5c4 <fail>

0001a2e8 <test_13>:
   1a2e8:	00000213          	li	tp,0
   1a2ec:	00f000b7          	lui	ra,0xf00
   1a2f0:	00b00137          	lui	sp,0xb00
   1a2f4:	0220a1b3          	mulhsu	gp,ra,sp
   1a2f8:	00000013          	nop
   1a2fc:	00000013          	nop
   1a300:	00018313          	mv	t1,gp
   1a304:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a308:	00200293          	li	t0,2
   1a30c:	fe5210e3          	bne	tp,t0,1a2ec <test_13+0x4>
   1a310:	0000aeb7          	lui	t4,0xa
   1a314:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a318:	00d00e13          	li	t3,13
   1a31c:	2bd31463          	bne	t1,t4,1a5c4 <fail>

0001a320 <test_14>:
   1a320:	00000213          	li	tp,0
   1a324:	00d000b7          	lui	ra,0xd00
   1a328:	00b00137          	lui	sp,0xb00
   1a32c:	0220a1b3          	mulhsu	gp,ra,sp
   1a330:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a334:	00200293          	li	t0,2
   1a338:	fe5216e3          	bne	tp,t0,1a324 <test_14+0x4>
   1a33c:	00009eb7          	lui	t4,0x9
   1a340:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a344:	00e00e13          	li	t3,14
   1a348:	27d19e63          	bne	gp,t4,1a5c4 <fail>

0001a34c <test_15>:
   1a34c:	00000213          	li	tp,0
   1a350:	00e000b7          	lui	ra,0xe00
   1a354:	00b00137          	lui	sp,0xb00
   1a358:	00000013          	nop
   1a35c:	0220a1b3          	mulhsu	gp,ra,sp
   1a360:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a364:	00200293          	li	t0,2
   1a368:	fe5214e3          	bne	tp,t0,1a350 <test_15+0x4>
   1a36c:	0000aeb7          	lui	t4,0xa
   1a370:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a374:	00f00e13          	li	t3,15
   1a378:	25d19663          	bne	gp,t4,1a5c4 <fail>

0001a37c <test_16>:
   1a37c:	00000213          	li	tp,0
   1a380:	00f000b7          	lui	ra,0xf00
   1a384:	00b00137          	lui	sp,0xb00
   1a388:	00000013          	nop
   1a38c:	00000013          	nop
   1a390:	0220a1b3          	mulhsu	gp,ra,sp
   1a394:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a398:	00200293          	li	t0,2
   1a39c:	fe5212e3          	bne	tp,t0,1a380 <test_16+0x4>
   1a3a0:	0000aeb7          	lui	t4,0xa
   1a3a4:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a3a8:	01000e13          	li	t3,16
   1a3ac:	21d19c63          	bne	gp,t4,1a5c4 <fail>

0001a3b0 <test_17>:
   1a3b0:	00000213          	li	tp,0
   1a3b4:	00d000b7          	lui	ra,0xd00
   1a3b8:	00000013          	nop
   1a3bc:	00b00137          	lui	sp,0xb00
   1a3c0:	0220a1b3          	mulhsu	gp,ra,sp
   1a3c4:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a3c8:	00200293          	li	t0,2
   1a3cc:	fe5214e3          	bne	tp,t0,1a3b4 <test_17+0x4>
   1a3d0:	00009eb7          	lui	t4,0x9
   1a3d4:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a3d8:	01100e13          	li	t3,17
   1a3dc:	1fd19463          	bne	gp,t4,1a5c4 <fail>

0001a3e0 <test_18>:
   1a3e0:	00000213          	li	tp,0
   1a3e4:	00e000b7          	lui	ra,0xe00
   1a3e8:	00000013          	nop
   1a3ec:	00b00137          	lui	sp,0xb00
   1a3f0:	00000013          	nop
   1a3f4:	0220a1b3          	mulhsu	gp,ra,sp
   1a3f8:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a3fc:	00200293          	li	t0,2
   1a400:	fe5212e3          	bne	tp,t0,1a3e4 <test_18+0x4>
   1a404:	0000aeb7          	lui	t4,0xa
   1a408:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a40c:	01200e13          	li	t3,18
   1a410:	1bd19a63          	bne	gp,t4,1a5c4 <fail>

0001a414 <test_19>:
   1a414:	00000213          	li	tp,0
   1a418:	00f000b7          	lui	ra,0xf00
   1a41c:	00000013          	nop
   1a420:	00000013          	nop
   1a424:	00b00137          	lui	sp,0xb00
   1a428:	0220a1b3          	mulhsu	gp,ra,sp
   1a42c:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a430:	00200293          	li	t0,2
   1a434:	fe5212e3          	bne	tp,t0,1a418 <test_19+0x4>
   1a438:	0000aeb7          	lui	t4,0xa
   1a43c:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a440:	01300e13          	li	t3,19
   1a444:	19d19063          	bne	gp,t4,1a5c4 <fail>

0001a448 <test_20>:
   1a448:	00000213          	li	tp,0
   1a44c:	00b00137          	lui	sp,0xb00
   1a450:	00d000b7          	lui	ra,0xd00
   1a454:	0220a1b3          	mulhsu	gp,ra,sp
   1a458:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a45c:	00200293          	li	t0,2
   1a460:	fe5216e3          	bne	tp,t0,1a44c <test_20+0x4>
   1a464:	00009eb7          	lui	t4,0x9
   1a468:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a46c:	01400e13          	li	t3,20
   1a470:	15d19a63          	bne	gp,t4,1a5c4 <fail>

0001a474 <test_21>:
   1a474:	00000213          	li	tp,0
   1a478:	00b00137          	lui	sp,0xb00
   1a47c:	00e000b7          	lui	ra,0xe00
   1a480:	00000013          	nop
   1a484:	0220a1b3          	mulhsu	gp,ra,sp
   1a488:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a48c:	00200293          	li	t0,2
   1a490:	fe5214e3          	bne	tp,t0,1a478 <test_21+0x4>
   1a494:	0000aeb7          	lui	t4,0xa
   1a498:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a49c:	01500e13          	li	t3,21
   1a4a0:	13d19263          	bne	gp,t4,1a5c4 <fail>

0001a4a4 <test_22>:
   1a4a4:	00000213          	li	tp,0
   1a4a8:	00b00137          	lui	sp,0xb00
   1a4ac:	00f000b7          	lui	ra,0xf00
   1a4b0:	00000013          	nop
   1a4b4:	00000013          	nop
   1a4b8:	0220a1b3          	mulhsu	gp,ra,sp
   1a4bc:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4c0:	00200293          	li	t0,2
   1a4c4:	fe5212e3          	bne	tp,t0,1a4a8 <test_22+0x4>
   1a4c8:	0000aeb7          	lui	t4,0xa
   1a4cc:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a4d0:	01600e13          	li	t3,22
   1a4d4:	0fd19863          	bne	gp,t4,1a5c4 <fail>

0001a4d8 <test_23>:
   1a4d8:	00000213          	li	tp,0
   1a4dc:	00b00137          	lui	sp,0xb00
   1a4e0:	00000013          	nop
   1a4e4:	00d000b7          	lui	ra,0xd00
   1a4e8:	0220a1b3          	mulhsu	gp,ra,sp
   1a4ec:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a4f0:	00200293          	li	t0,2
   1a4f4:	fe5214e3          	bne	tp,t0,1a4dc <test_23+0x4>
   1a4f8:	00009eb7          	lui	t4,0x9
   1a4fc:	f00e8e93          	addi	t4,t4,-256 # 8f00 <_start-0x7100>
   1a500:	01700e13          	li	t3,23
   1a504:	0dd19063          	bne	gp,t4,1a5c4 <fail>

0001a508 <test_24>:
   1a508:	00000213          	li	tp,0
   1a50c:	00b00137          	lui	sp,0xb00
   1a510:	00000013          	nop
   1a514:	00e000b7          	lui	ra,0xe00
   1a518:	00000013          	nop
   1a51c:	0220a1b3          	mulhsu	gp,ra,sp
   1a520:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a524:	00200293          	li	t0,2
   1a528:	fe5212e3          	bne	tp,t0,1a50c <test_24+0x4>
   1a52c:	0000aeb7          	lui	t4,0xa
   1a530:	a00e8e93          	addi	t4,t4,-1536 # 9a00 <_start-0x6600>
   1a534:	01800e13          	li	t3,24
   1a538:	09d19663          	bne	gp,t4,1a5c4 <fail>

0001a53c <test_25>:
   1a53c:	00000213          	li	tp,0
   1a540:	00b00137          	lui	sp,0xb00
   1a544:	00000013          	nop
   1a548:	00000013          	nop
   1a54c:	00f000b7          	lui	ra,0xf00
   1a550:	0220a1b3          	mulhsu	gp,ra,sp
   1a554:	00120213          	addi	tp,tp,1 # 1 <_start-0xffff>
   1a558:	00200293          	li	t0,2
   1a55c:	fe5212e3          	bne	tp,t0,1a540 <test_25+0x4>
   1a560:	0000aeb7          	lui	t4,0xa
   1a564:	500e8e93          	addi	t4,t4,1280 # a500 <_start-0x5b00>
   1a568:	01900e13          	li	t3,25
   1a56c:	05d19c63          	bne	gp,t4,1a5c4 <fail>

0001a570 <test_26>:
   1a570:	7c0000b7          	lui	ra,0x7c000
   1a574:	02102133          	mulhsu	sp,zero,ra
   1a578:	00000e93          	li	t4,0
   1a57c:	01a00e13          	li	t3,26
   1a580:	05d11263          	bne	sp,t4,1a5c4 <fail>

0001a584 <test_27>:
   1a584:	800000b7          	lui	ra,0x80000
   1a588:	0200a133          	mulhsu	sp,ra,zero
   1a58c:	00000e93          	li	t4,0
   1a590:	01b00e13          	li	t3,27
   1a594:	03d11863          	bne	sp,t4,1a5c4 <fail>

0001a598 <test_28>:
   1a598:	020020b3          	mulhsu	ra,zero,zero
   1a59c:	00000e93          	li	t4,0
   1a5a0:	01c00e13          	li	t3,28
   1a5a4:	03d09063          	bne	ra,t4,1a5c4 <fail>

0001a5a8 <test_29>:
   1a5a8:	021000b7          	lui	ra,0x2100
   1a5ac:	02200137          	lui	sp,0x2200
   1a5b0:	0220a033          	mulhsu	zero,ra,sp
   1a5b4:	00000e93          	li	t4,0
   1a5b8:	01d00e13          	li	t3,29
   1a5bc:	01d01463          	bne	zero,t4,1a5c4 <fail>
   1a5c0:	05c01463          	bne	zero,t3,1a608 <pass>

0001a5c4 <fail>:
   1a5c4:	0ff00513          	li	a0,255

0001a5c8 <.delay_fail>:
   1a5c8:	fff50513          	addi	a0,a0,-1 # ffffafff <_edata+0x7fffaf8f>
   1a5cc:	fe051ee3          	bnez	a0,1a5c8 <.delay_fail>
   1a5d0:	02000537          	lui	a0,0x2000
   1a5d4:	04500593          	li	a1,69
   1a5d8:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1a5dc:	05200613          	li	a2,82
   1a5e0:	00c52023          	sw	a2,0(a0)
   1a5e4:	00c52023          	sw	a2,0(a0)
   1a5e8:	04f00693          	li	a3,79
   1a5ec:	00d52023          	sw	a3,0(a0)
   1a5f0:	00c52023          	sw	a2,0(a0)
   1a5f4:	00d00713          	li	a4,13
   1a5f8:	00e52023          	sw	a4,0(a0)
   1a5fc:	00a00793          	li	a5,10
   1a600:	00f52023          	sw	a5,0(a0)
   1a604:	b65f506f          	j	10168 <mulhsu_ret>

0001a608 <pass>:
   1a608:	0ff00513          	li	a0,255

0001a60c <.delay_ok>:
   1a60c:	fff50513          	addi	a0,a0,-1
   1a610:	fe051ee3          	bnez	a0,1a60c <.delay_ok>
   1a614:	02000537          	lui	a0,0x2000
   1a618:	04f00593          	li	a1,79
   1a61c:	00b52023          	sw	a1,0(a0) # 2000000 <_etext+0x1fe59c4>
   1a620:	04b00613          	li	a2,75
   1a624:	00c52023          	sw	a2,0(a0)
   1a628:	00d00693          	li	a3,13
   1a62c:	00d52023          	sw	a3,0(a0)
   1a630:	00a00713          	li	a4,10
   1a634:	00e52023          	sw	a4,0(a0)
   1a638:	b31f506f          	j	10168 <mulhsu_ret>
