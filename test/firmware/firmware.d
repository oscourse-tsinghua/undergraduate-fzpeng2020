
firmware/rv32ua:     file format elf32-littleriscv


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
   1007c:	00001517          	auipc	a0,0x1
   10080:	c7c50513          	addi	a0,a0,-900 # 10cf8 <_etext>
   10084:	000f0597          	auipc	a1,0xf0
   10088:	f7c58593          	addi	a1,a1,-132 # 100000 <_ram_start>
   1008c:	000f0617          	auipc	a2,0xf0
   10090:	38460613          	addi	a2,a2,900 # 100410 <_edata>
   10094:	00c5dc63          	bge	a1,a2,100ac <end_init_data>

00010098 <loop_init_data>:
   10098:	00052683          	lw	a3,0(a0)
   1009c:	00d5a023          	sw	a3,0(a1)
   100a0:	00450513          	addi	a0,a0,4
   100a4:	00458593          	addi	a1,a1,4
   100a8:	fec5c8e3          	blt	a1,a2,10098 <loop_init_data>

000100ac <end_init_data>:
   100ac:	000f0517          	auipc	a0,0xf0
   100b0:	36450513          	addi	a0,a0,868 # 100410 <_edata>
   100b4:	000f0597          	auipc	a1,0xf0
   100b8:	3a458593          	addi	a1,a1,932 # 100458 <_ebss>
   100bc:	00b55863          	bge	a0,a1,100cc <end_init_bss>

000100c0 <loop_init_bss>:
   100c0:	00052023          	sw	zero,0(a0)
   100c4:	00450513          	addi	a0,a0,4
   100c8:	feb54ce3          	blt	a0,a1,100c0 <loop_init_bss>

000100cc <end_init_bss>:
   100cc:	184000ef          	jal	ra,10250 <amoadd_w>

000100d0 <amoadd_w_ret>:
   100d0:	311000ef          	jal	ra,10be0 <amoand_w>

000100d4 <amoand_w_ret>:
   100d4:	5fc000ef          	jal	ra,106d0 <amomaxu_w>

000100d8 <amomaxu_w_ret>:
   100d8:	298000ef          	jal	ra,10370 <amomax_w>

000100dc <amomax_w_ret>:
   100dc:	1e9000ef          	jal	ra,10ac4 <amominu_w>

000100e0 <amominu_w_ret>:
   100e0:	4d4000ef          	jal	ra,105b4 <amomin_w>

000100e4 <amomin_w_ret>:
   100e4:	058000ef          	jal	ra,1013c <amoor_w>

000100e8 <amoor_w_ret>:
   100e8:	0c5000ef          	jal	ra,109ac <amoswap_w>

000100ec <amoswap_w_ret>:
   100ec:	3a0000ef          	jal	ra,1048c <amoxor_w>

000100f0 <amoxor_w_ret>:
   100f0:	6fc000ef          	jal	ra,107ec <lrsc>

000100f4 <lrsc_ret>:
   100f4:	00010137          	lui	sp,0x10
   100f8:	deadc1b7          	lui	gp,0xdeadc
   100fc:	eef18193          	addi	gp,gp,-273 # deadbeef <_ebss+0xde9dba97>
   10100:	00018213          	mv	tp,gp

00010104 <done>:
   10104:	02000537          	lui	a0,0x2000
   10108:	04400593          	li	a1,68
   1010c:	04f00613          	li	a2,79
   10110:	04e00693          	li	a3,78
   10114:	04500713          	li	a4,69
   10118:	00d00793          	li	a5,13
   1011c:	00a00813          	li	a6,10
   10120:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10124:	00c52023          	sw	a2,0(a0)
   10128:	00d52023          	sw	a3,0(a0)
   1012c:	00e52023          	sw	a4,0(a0)
   10130:	00f52023          	sw	a5,0(a0)
   10134:	01052023          	sw	a6,0(a0)

00010138 <loop>:
   10138:	0000006f          	j	10138 <loop>

0001013c <amoor_w>:
   1013c:	0ff00513          	li	a0,255

00010140 <.delay_pr>:
   10140:	fff50513          	addi	a0,a0,-1
   10144:	fe051ee3          	bnez	a0,10140 <.delay_pr>
   10148:	00010537          	lui	a0,0x10
   1014c:	16850513          	addi	a0,a0,360 # 10168 <.test_name>
   10150:	02000637          	lui	a2,0x2000

00010154 <.prname_next>:
   10154:	00050583          	lb	a1,0(a0)
   10158:	00058c63          	beqz	a1,10170 <.prname_done>
   1015c:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   10160:	00150513          	addi	a0,a0,1
   10164:	ff1ff06f          	j	10154 <.prname_next>

00010168 <.test_name>:
   10168:	6d61                	lui	s10,0x18
   1016a:	5f726f6f          	jal	t5,36f60 <_etext+0x26268>
   1016e:	          	0x77

00010170 <.prname_done>:
   10170:	02e00593          	li	a1,46
   10174:	00b62023          	sw	a1,0(a2)
   10178:	00b62023          	sw	a1,0(a2)

0001017c <test_2>:
   1017c:	80000537          	lui	a0,0x80000
   10180:	80000593          	li	a1,-2048
   10184:	000f0697          	auipc	a3,0xf0
   10188:	28c68693          	addi	a3,a3,652 # 100410 <_edata>
   1018c:	00a6a023          	sw	a0,0(a3)
   10190:	40b6a72f          	amoor.w	a4,a1,(a3)
   10194:	80000eb7          	lui	t4,0x80000
   10198:	00200e13          	li	t3,2
   1019c:	03d71e63          	bne	a4,t4,101d8 <fail>

000101a0 <test_3>:
   101a0:	0006a783          	lw	a5,0(a3)
   101a4:	80000e93          	li	t4,-2048
   101a8:	00300e13          	li	t3,3
   101ac:	03d79663          	bne	a5,t4,101d8 <fail>

000101b0 <test_4>:
   101b0:	00100593          	li	a1,1
   101b4:	40b6a72f          	amoor.w	a4,a1,(a3)
   101b8:	80000e93          	li	t4,-2048
   101bc:	00400e13          	li	t3,4
   101c0:	01d71c63          	bne	a4,t4,101d8 <fail>

000101c4 <test_5>:
   101c4:	0006a783          	lw	a5,0(a3)
   101c8:	80100e93          	li	t4,-2047
   101cc:	00500e13          	li	t3,5
   101d0:	01d79463          	bne	a5,t4,101d8 <fail>
   101d4:	05c01463          	bne	zero,t3,1021c <pass>

000101d8 <fail>:
   101d8:	0ff00513          	li	a0,255

000101dc <.delay_fail>:
   101dc:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   101e0:	fe051ee3          	bnez	a0,101dc <.delay_fail>
   101e4:	02000537          	lui	a0,0x2000
   101e8:	04500593          	li	a1,69
   101ec:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   101f0:	05200613          	li	a2,82
   101f4:	00c52023          	sw	a2,0(a0)
   101f8:	00c52023          	sw	a2,0(a0)
   101fc:	04f00693          	li	a3,79
   10200:	00d52023          	sw	a3,0(a0)
   10204:	00c52023          	sw	a2,0(a0)
   10208:	00d00713          	li	a4,13
   1020c:	00e52023          	sw	a4,0(a0)
   10210:	00a00793          	li	a5,10
   10214:	00f52023          	sw	a5,0(a0)
   10218:	ed1ff06f          	j	100e8 <amoor_w_ret>

0001021c <pass>:
   1021c:	0ff00513          	li	a0,255

00010220 <.delay_ok>:
   10220:	fff50513          	addi	a0,a0,-1
   10224:	fe051ee3          	bnez	a0,10220 <.delay_ok>
   10228:	02000537          	lui	a0,0x2000
   1022c:	04f00593          	li	a1,79
   10230:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10234:	04b00613          	li	a2,75
   10238:	00c52023          	sw	a2,0(a0)
   1023c:	00d00693          	li	a3,13
   10240:	00d52023          	sw	a3,0(a0)
   10244:	00a00713          	li	a4,10
   10248:	00e52023          	sw	a4,0(a0)
   1024c:	e9dff06f          	j	100e8 <amoor_w_ret>

00010250 <amoadd_w>:
   10250:	0ff00513          	li	a0,255

00010254 <.delay_pr>:
   10254:	fff50513          	addi	a0,a0,-1
   10258:	fe051ee3          	bnez	a0,10254 <.delay_pr>
   1025c:	00010537          	lui	a0,0x10
   10260:	27c50513          	addi	a0,a0,636 # 1027c <.test_name>
   10264:	02000637          	lui	a2,0x2000

00010268 <.prname_next>:
   10268:	00050583          	lb	a1,0(a0)
   1026c:	00058e63          	beqz	a1,10288 <.prname_done>
   10270:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   10274:	00150513          	addi	a0,a0,1
   10278:	ff1ff06f          	j	10268 <.prname_next>

0001027c <.test_name>:
   1027c:	6d61                	lui	s10,0x18
   1027e:	6464616f          	jal	sp,568c4 <_etext+0x45bcc>
   10282:	775f 0000 0000      	0x775f

00010288 <.prname_done>:
   10288:	02e00593          	li	a1,46
   1028c:	00b62023          	sw	a1,0(a2)
   10290:	00b62023          	sw	a1,0(a2)

00010294 <test_2>:
   10294:	80000537          	lui	a0,0x80000
   10298:	80000593          	li	a1,-2048
   1029c:	000f0697          	auipc	a3,0xf0
   102a0:	17c68693          	addi	a3,a3,380 # 100418 <amo_operand>
   102a4:	00a6a023          	sw	a0,0(a3)
   102a8:	00b6a72f          	amoadd.w	a4,a1,(a3)
   102ac:	80000eb7          	lui	t4,0x80000
   102b0:	00200e13          	li	t3,2
   102b4:	05d71263          	bne	a4,t4,102f8 <fail>

000102b8 <test_3>:
   102b8:	0006a783          	lw	a5,0(a3)
   102bc:	80000eb7          	lui	t4,0x80000
   102c0:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_ebss+0x7feff3a8>
   102c4:	00300e13          	li	t3,3
   102c8:	03d79863          	bne	a5,t4,102f8 <fail>

000102cc <test_4>:
   102cc:	800005b7          	lui	a1,0x80000
   102d0:	00b6a72f          	amoadd.w	a4,a1,(a3)
   102d4:	80000eb7          	lui	t4,0x80000
   102d8:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_ebss+0x7feff3a8>
   102dc:	00400e13          	li	t3,4
   102e0:	01d71c63          	bne	a4,t4,102f8 <fail>

000102e4 <test_5>:
   102e4:	0006a783          	lw	a5,0(a3)
   102e8:	80000e93          	li	t4,-2048
   102ec:	00500e13          	li	t3,5
   102f0:	01d79463          	bne	a5,t4,102f8 <fail>
   102f4:	05c01463          	bne	zero,t3,1033c <pass>

000102f8 <fail>:
   102f8:	0ff00513          	li	a0,255

000102fc <.delay_fail>:
   102fc:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   10300:	fe051ee3          	bnez	a0,102fc <.delay_fail>
   10304:	02000537          	lui	a0,0x2000
   10308:	04500593          	li	a1,69
   1030c:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10310:	05200613          	li	a2,82
   10314:	00c52023          	sw	a2,0(a0)
   10318:	00c52023          	sw	a2,0(a0)
   1031c:	04f00693          	li	a3,79
   10320:	00d52023          	sw	a3,0(a0)
   10324:	00c52023          	sw	a2,0(a0)
   10328:	00d00713          	li	a4,13
   1032c:	00e52023          	sw	a4,0(a0)
   10330:	00a00793          	li	a5,10
   10334:	00f52023          	sw	a5,0(a0)
   10338:	d99ff06f          	j	100d0 <amoadd_w_ret>

0001033c <pass>:
   1033c:	0ff00513          	li	a0,255

00010340 <.delay_ok>:
   10340:	fff50513          	addi	a0,a0,-1
   10344:	fe051ee3          	bnez	a0,10340 <.delay_ok>
   10348:	02000537          	lui	a0,0x2000
   1034c:	04f00593          	li	a1,79
   10350:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10354:	04b00613          	li	a2,75
   10358:	00c52023          	sw	a2,0(a0)
   1035c:	00d00693          	li	a3,13
   10360:	00d52023          	sw	a3,0(a0)
   10364:	00a00713          	li	a4,10
   10368:	00e52023          	sw	a4,0(a0)
   1036c:	d65ff06f          	j	100d0 <amoadd_w_ret>

00010370 <amomax_w>:
   10370:	0ff00513          	li	a0,255

00010374 <.delay_pr>:
   10374:	fff50513          	addi	a0,a0,-1
   10378:	fe051ee3          	bnez	a0,10374 <.delay_pr>
   1037c:	00010537          	lui	a0,0x10
   10380:	39c50513          	addi	a0,a0,924 # 1039c <.test_name>
   10384:	02000637          	lui	a2,0x2000

00010388 <.prname_next>:
   10388:	00050583          	lb	a1,0(a0)
   1038c:	00058e63          	beqz	a1,103a8 <.prname_done>
   10390:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   10394:	00150513          	addi	a0,a0,1
   10398:	ff1ff06f          	j	10388 <.prname_next>

0001039c <.test_name>:
   1039c:	6d61                	lui	s10,0x18
   1039e:	78616d6f          	jal	s10,26b24 <_etext+0x15e2c>
   103a2:	775f 0000 0000      	0x775f

000103a8 <.prname_done>:
   103a8:	02e00593          	li	a1,46
   103ac:	00b62023          	sw	a1,0(a2)
   103b0:	00b62023          	sw	a1,0(a2)

000103b4 <test_2>:
   103b4:	80000537          	lui	a0,0x80000
   103b8:	80000593          	li	a1,-2048
   103bc:	000f0697          	auipc	a3,0xf0
   103c0:	06468693          	addi	a3,a3,100 # 100420 <amo_operand>
   103c4:	00a6a023          	sw	a0,0(a3)
   103c8:	a0b6a72f          	amomax.w	a4,a1,(a3)
   103cc:	80000eb7          	lui	t4,0x80000
   103d0:	00200e13          	li	t3,2
   103d4:	05d71063          	bne	a4,t4,10414 <fail>

000103d8 <test_3>:
   103d8:	0006a783          	lw	a5,0(a3)
   103dc:	80000e93          	li	t4,-2048
   103e0:	00300e13          	li	t3,3
   103e4:	03d79863          	bne	a5,t4,10414 <fail>

000103e8 <test_4>:
   103e8:	00100593          	li	a1,1
   103ec:	0006a023          	sw	zero,0(a3)
   103f0:	a0b6a72f          	amomax.w	a4,a1,(a3)
   103f4:	00000e93          	li	t4,0
   103f8:	00400e13          	li	t3,4
   103fc:	01d71c63          	bne	a4,t4,10414 <fail>

00010400 <test_5>:
   10400:	0006a783          	lw	a5,0(a3)
   10404:	00100e93          	li	t4,1
   10408:	00500e13          	li	t3,5
   1040c:	01d79463          	bne	a5,t4,10414 <fail>
   10410:	05c01463          	bne	zero,t3,10458 <pass>

00010414 <fail>:
   10414:	0ff00513          	li	a0,255

00010418 <.delay_fail>:
   10418:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   1041c:	fe051ee3          	bnez	a0,10418 <.delay_fail>
   10420:	02000537          	lui	a0,0x2000
   10424:	04500593          	li	a1,69
   10428:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   1042c:	05200613          	li	a2,82
   10430:	00c52023          	sw	a2,0(a0)
   10434:	00c52023          	sw	a2,0(a0)
   10438:	04f00693          	li	a3,79
   1043c:	00d52023          	sw	a3,0(a0)
   10440:	00c52023          	sw	a2,0(a0)
   10444:	00d00713          	li	a4,13
   10448:	00e52023          	sw	a4,0(a0)
   1044c:	00a00793          	li	a5,10
   10450:	00f52023          	sw	a5,0(a0)
   10454:	c89ff06f          	j	100dc <amomax_w_ret>

00010458 <pass>:
   10458:	0ff00513          	li	a0,255

0001045c <.delay_ok>:
   1045c:	fff50513          	addi	a0,a0,-1
   10460:	fe051ee3          	bnez	a0,1045c <.delay_ok>
   10464:	02000537          	lui	a0,0x2000
   10468:	04f00593          	li	a1,79
   1046c:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10470:	04b00613          	li	a2,75
   10474:	00c52023          	sw	a2,0(a0)
   10478:	00d00693          	li	a3,13
   1047c:	00d52023          	sw	a3,0(a0)
   10480:	00a00713          	li	a4,10
   10484:	00e52023          	sw	a4,0(a0)
   10488:	c55ff06f          	j	100dc <amomax_w_ret>

0001048c <amoxor_w>:
   1048c:	0ff00513          	li	a0,255

00010490 <.delay_pr>:
   10490:	fff50513          	addi	a0,a0,-1
   10494:	fe051ee3          	bnez	a0,10490 <.delay_pr>
   10498:	00010537          	lui	a0,0x10
   1049c:	4b850513          	addi	a0,a0,1208 # 104b8 <.test_name>
   104a0:	02000637          	lui	a2,0x2000

000104a4 <.prname_next>:
   104a4:	00050583          	lb	a1,0(a0)
   104a8:	00058e63          	beqz	a1,104c4 <.prname_done>
   104ac:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   104b0:	00150513          	addi	a0,a0,1
   104b4:	ff1ff06f          	j	104a4 <.prname_next>

000104b8 <.test_name>:
   104b8:	6d61                	lui	s10,0x18
   104ba:	726f786f          	jal	a6,107be0 <_ebss+0x7788>
   104be:	775f 0000 0000      	0x775f

000104c4 <.prname_done>:
   104c4:	02e00593          	li	a1,46
   104c8:	00b62023          	sw	a1,0(a2)
   104cc:	00b62023          	sw	a1,0(a2)

000104d0 <test_2>:
   104d0:	80000537          	lui	a0,0x80000
   104d4:	80000593          	li	a1,-2048
   104d8:	000f0697          	auipc	a3,0xf0
   104dc:	f5068693          	addi	a3,a3,-176 # 100428 <amo_operand>
   104e0:	00a6a023          	sw	a0,0(a3)
   104e4:	20b6a72f          	amoxor.w	a4,a1,(a3)
   104e8:	80000eb7          	lui	t4,0x80000
   104ec:	00200e13          	li	t3,2
   104f0:	05d71663          	bne	a4,t4,1053c <fail>

000104f4 <test_3>:
   104f4:	0006a783          	lw	a5,0(a3)
   104f8:	80000eb7          	lui	t4,0x80000
   104fc:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_ebss+0x7feff3a8>
   10500:	00300e13          	li	t3,3
   10504:	03d79c63          	bne	a5,t4,1053c <fail>

00010508 <test_4>:
   10508:	c00005b7          	lui	a1,0xc0000
   1050c:	00158593          	addi	a1,a1,1 # c0000001 <_ebss+0xbfeffba9>
   10510:	20b6a72f          	amoxor.w	a4,a1,(a3)
   10514:	80000eb7          	lui	t4,0x80000
   10518:	800e8e93          	addi	t4,t4,-2048 # 7ffff800 <_ebss+0x7feff3a8>
   1051c:	00400e13          	li	t3,4
   10520:	01d71e63          	bne	a4,t4,1053c <fail>

00010524 <test_5>:
   10524:	0006a783          	lw	a5,0(a3)
   10528:	c0000eb7          	lui	t4,0xc0000
   1052c:	801e8e93          	addi	t4,t4,-2047 # bffff801 <_ebss+0xbfeff3a9>
   10530:	00500e13          	li	t3,5
   10534:	01d79463          	bne	a5,t4,1053c <fail>
   10538:	05c01463          	bne	zero,t3,10580 <pass>

0001053c <fail>:
   1053c:	0ff00513          	li	a0,255

00010540 <.delay_fail>:
   10540:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   10544:	fe051ee3          	bnez	a0,10540 <.delay_fail>
   10548:	02000537          	lui	a0,0x2000
   1054c:	04500593          	li	a1,69
   10550:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10554:	05200613          	li	a2,82
   10558:	00c52023          	sw	a2,0(a0)
   1055c:	00c52023          	sw	a2,0(a0)
   10560:	04f00693          	li	a3,79
   10564:	00d52023          	sw	a3,0(a0)
   10568:	00c52023          	sw	a2,0(a0)
   1056c:	00d00713          	li	a4,13
   10570:	00e52023          	sw	a4,0(a0)
   10574:	00a00793          	li	a5,10
   10578:	00f52023          	sw	a5,0(a0)
   1057c:	b75ff06f          	j	100f0 <amoxor_w_ret>

00010580 <pass>:
   10580:	0ff00513          	li	a0,255

00010584 <.delay_ok>:
   10584:	fff50513          	addi	a0,a0,-1
   10588:	fe051ee3          	bnez	a0,10584 <.delay_ok>
   1058c:	02000537          	lui	a0,0x2000
   10590:	04f00593          	li	a1,79
   10594:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10598:	04b00613          	li	a2,75
   1059c:	00c52023          	sw	a2,0(a0)
   105a0:	00d00693          	li	a3,13
   105a4:	00d52023          	sw	a3,0(a0)
   105a8:	00a00713          	li	a4,10
   105ac:	00e52023          	sw	a4,0(a0)
   105b0:	b41ff06f          	j	100f0 <amoxor_w_ret>

000105b4 <amomin_w>:
   105b4:	0ff00513          	li	a0,255

000105b8 <.delay_pr>:
   105b8:	fff50513          	addi	a0,a0,-1
   105bc:	fe051ee3          	bnez	a0,105b8 <.delay_pr>
   105c0:	00010537          	lui	a0,0x10
   105c4:	5e050513          	addi	a0,a0,1504 # 105e0 <.test_name>
   105c8:	02000637          	lui	a2,0x2000

000105cc <.prname_next>:
   105cc:	00050583          	lb	a1,0(a0)
   105d0:	00058e63          	beqz	a1,105ec <.prname_done>
   105d4:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   105d8:	00150513          	addi	a0,a0,1
   105dc:	ff1ff06f          	j	105cc <.prname_next>

000105e0 <.test_name>:
   105e0:	6d61                	lui	s10,0x18
   105e2:	6e696d6f          	jal	s10,a6cc8 <_etext+0x95fd0>
   105e6:	775f 0000 0000      	0x775f

000105ec <.prname_done>:
   105ec:	02e00593          	li	a1,46
   105f0:	00b62023          	sw	a1,0(a2)
   105f4:	00b62023          	sw	a1,0(a2)

000105f8 <test_2>:
   105f8:	80000537          	lui	a0,0x80000
   105fc:	80000593          	li	a1,-2048
   10600:	000f0697          	auipc	a3,0xf0
   10604:	e3068693          	addi	a3,a3,-464 # 100430 <amo_operand>
   10608:	00a6a023          	sw	a0,0(a3)
   1060c:	80b6a72f          	amomin.w	a4,a1,(a3)
   10610:	80000eb7          	lui	t4,0x80000
   10614:	00200e13          	li	t3,2
   10618:	05d71063          	bne	a4,t4,10658 <fail>

0001061c <test_3>:
   1061c:	0006a783          	lw	a5,0(a3)
   10620:	80000eb7          	lui	t4,0x80000
   10624:	00300e13          	li	t3,3
   10628:	03d79863          	bne	a5,t4,10658 <fail>

0001062c <test_4>:
   1062c:	fff00593          	li	a1,-1
   10630:	0006a023          	sw	zero,0(a3)
   10634:	80b6a72f          	amomin.w	a4,a1,(a3)
   10638:	00000e93          	li	t4,0
   1063c:	00400e13          	li	t3,4
   10640:	01d71c63          	bne	a4,t4,10658 <fail>

00010644 <test_5>:
   10644:	0006a783          	lw	a5,0(a3)
   10648:	fff00e93          	li	t4,-1
   1064c:	00500e13          	li	t3,5
   10650:	01d79463          	bne	a5,t4,10658 <fail>
   10654:	05c01463          	bne	zero,t3,1069c <pass>

00010658 <fail>:
   10658:	0ff00513          	li	a0,255

0001065c <.delay_fail>:
   1065c:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   10660:	fe051ee3          	bnez	a0,1065c <.delay_fail>
   10664:	02000537          	lui	a0,0x2000
   10668:	04500593          	li	a1,69
   1066c:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10670:	05200613          	li	a2,82
   10674:	00c52023          	sw	a2,0(a0)
   10678:	00c52023          	sw	a2,0(a0)
   1067c:	04f00693          	li	a3,79
   10680:	00d52023          	sw	a3,0(a0)
   10684:	00c52023          	sw	a2,0(a0)
   10688:	00d00713          	li	a4,13
   1068c:	00e52023          	sw	a4,0(a0)
   10690:	00a00793          	li	a5,10
   10694:	00f52023          	sw	a5,0(a0)
   10698:	a4dff06f          	j	100e4 <amomin_w_ret>

0001069c <pass>:
   1069c:	0ff00513          	li	a0,255

000106a0 <.delay_ok>:
   106a0:	fff50513          	addi	a0,a0,-1
   106a4:	fe051ee3          	bnez	a0,106a0 <.delay_ok>
   106a8:	02000537          	lui	a0,0x2000
   106ac:	04f00593          	li	a1,79
   106b0:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   106b4:	04b00613          	li	a2,75
   106b8:	00c52023          	sw	a2,0(a0)
   106bc:	00d00693          	li	a3,13
   106c0:	00d52023          	sw	a3,0(a0)
   106c4:	00a00713          	li	a4,10
   106c8:	00e52023          	sw	a4,0(a0)
   106cc:	a19ff06f          	j	100e4 <amomin_w_ret>

000106d0 <amomaxu_w>:
   106d0:	0ff00513          	li	a0,255

000106d4 <.delay_pr>:
   106d4:	fff50513          	addi	a0,a0,-1
   106d8:	fe051ee3          	bnez	a0,106d4 <.delay_pr>
   106dc:	00010537          	lui	a0,0x10
   106e0:	6fc50513          	addi	a0,a0,1788 # 106fc <.test_name>
   106e4:	02000637          	lui	a2,0x2000

000106e8 <.prname_next>:
   106e8:	00050583          	lb	a1,0(a0)
   106ec:	00058e63          	beqz	a1,10708 <.prname_done>
   106f0:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   106f4:	00150513          	addi	a0,a0,1
   106f8:	ff1ff06f          	j	106e8 <.prname_next>

000106fc <.test_name>:
   106fc:	6d61                	lui	s10,0x18
   106fe:	78616d6f          	jal	s10,26e84 <_etext+0x1618c>
   10702:	5f75                	li	t5,-3
   10704:	00000077          	0x77

00010708 <.prname_done>:
   10708:	02e00593          	li	a1,46
   1070c:	00b62023          	sw	a1,0(a2)
   10710:	00b62023          	sw	a1,0(a2)

00010714 <test_2>:
   10714:	80000537          	lui	a0,0x80000
   10718:	80000593          	li	a1,-2048
   1071c:	000f0697          	auipc	a3,0xf0
   10720:	d1c68693          	addi	a3,a3,-740 # 100438 <amo_operand>
   10724:	00a6a023          	sw	a0,0(a3)
   10728:	e0b6a72f          	amomaxu.w	a4,a1,(a3)
   1072c:	80000eb7          	lui	t4,0x80000
   10730:	00200e13          	li	t3,2
   10734:	05d71063          	bne	a4,t4,10774 <fail>

00010738 <test_3>:
   10738:	0006a783          	lw	a5,0(a3)
   1073c:	80000e93          	li	t4,-2048
   10740:	00300e13          	li	t3,3
   10744:	03d79863          	bne	a5,t4,10774 <fail>

00010748 <test_4>:
   10748:	fff00593          	li	a1,-1
   1074c:	0006a023          	sw	zero,0(a3)
   10750:	e0b6a72f          	amomaxu.w	a4,a1,(a3)
   10754:	00000e93          	li	t4,0
   10758:	00400e13          	li	t3,4
   1075c:	01d71c63          	bne	a4,t4,10774 <fail>

00010760 <test_5>:
   10760:	0006a783          	lw	a5,0(a3)
   10764:	fff00e93          	li	t4,-1
   10768:	00500e13          	li	t3,5
   1076c:	01d79463          	bne	a5,t4,10774 <fail>
   10770:	05c01463          	bne	zero,t3,107b8 <pass>

00010774 <fail>:
   10774:	0ff00513          	li	a0,255

00010778 <.delay_fail>:
   10778:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   1077c:	fe051ee3          	bnez	a0,10778 <.delay_fail>
   10780:	02000537          	lui	a0,0x2000
   10784:	04500593          	li	a1,69
   10788:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   1078c:	05200613          	li	a2,82
   10790:	00c52023          	sw	a2,0(a0)
   10794:	00c52023          	sw	a2,0(a0)
   10798:	04f00693          	li	a3,79
   1079c:	00d52023          	sw	a3,0(a0)
   107a0:	00c52023          	sw	a2,0(a0)
   107a4:	00d00713          	li	a4,13
   107a8:	00e52023          	sw	a4,0(a0)
   107ac:	00a00793          	li	a5,10
   107b0:	00f52023          	sw	a5,0(a0)
   107b4:	925ff06f          	j	100d8 <amomaxu_w_ret>

000107b8 <pass>:
   107b8:	0ff00513          	li	a0,255

000107bc <.delay_ok>:
   107bc:	fff50513          	addi	a0,a0,-1
   107c0:	fe051ee3          	bnez	a0,107bc <.delay_ok>
   107c4:	02000537          	lui	a0,0x2000
   107c8:	04f00593          	li	a1,79
   107cc:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   107d0:	04b00613          	li	a2,75
   107d4:	00c52023          	sw	a2,0(a0)
   107d8:	00d00693          	li	a3,13
   107dc:	00d52023          	sw	a3,0(a0)
   107e0:	00a00713          	li	a4,10
   107e4:	00e52023          	sw	a4,0(a0)
   107e8:	8f1ff06f          	j	100d8 <amomaxu_w_ret>

000107ec <lrsc>:
   107ec:	0ff00513          	li	a0,255

000107f0 <.delay_pr>:
   107f0:	fff50513          	addi	a0,a0,-1
   107f4:	fe051ee3          	bnez	a0,107f0 <.delay_pr>
   107f8:	00011537          	lui	a0,0x11
   107fc:	81850513          	addi	a0,a0,-2024 # 10818 <.test_name>
   10800:	02000637          	lui	a2,0x2000

00010804 <.prname_next>:
   10804:	00050583          	lb	a1,0(a0)
   10808:	00058c63          	beqz	a1,10820 <.prname_done>
   1080c:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   10810:	00150513          	addi	a0,a0,1
   10814:	ff1ff06f          	j	10804 <.prname_next>

00010818 <.test_name>:
   10818:	726c                	flw	fa1,100(a2)
   1081a:	00006373          	csrrsi	t1,ustatus,0
	...

00010820 <.prname_done>:
   10820:	02e00593          	li	a1,46
   10824:	00b62023          	sw	a1,0(a2)
   10828:	00b62023          	sw	a1,0(a2)
   1082c:	000ef517          	auipc	a0,0xef
   10830:	7d450513          	addi	a0,a0,2004 # 100000 <_ram_start>
   10834:	00100593          	li	a1,1
   10838:	00b5262f          	amoadd.w	a2,a1,(a0)
   1083c:	00100693          	li	a3,1
   10840:	fed67ee3          	bgeu	a2,a3,1083c <.prname_done+0x1c>
   10844:	00052583          	lw	a1,0(a0)
   10848:	fed5eee3          	bltu	a1,a3,10844 <.prname_done+0x24>

0001084c <test_2>:
   1084c:	000ef517          	auipc	a0,0xef
   10850:	7bc50513          	addi	a0,a0,1980 # 100008 <foo>
   10854:	deadc7b7          	lui	a5,0xdeadc
   10858:	eef78793          	addi	a5,a5,-273 # deadbeef <_ebss+0xde9dba97>
   1085c:	18f5272f          	sc.w	a4,a5,(a0)
   10860:	00100e93          	li	t4,1
   10864:	00200e13          	li	t3,2
   10868:	0dd71663          	bne	a4,t4,10934 <fail>

0001086c <test_3>:
   1086c:	000ef717          	auipc	a4,0xef
   10870:	79c72703          	lw	a4,1948(a4) # 100008 <foo>
   10874:	00000e93          	li	t4,0
   10878:	00300e13          	li	t3,3
   1087c:	0bd71c63          	bne	a4,t4,10934 <fail>

00010880 <test_4>:
   10880:	000ef517          	auipc	a0,0xef
   10884:	78850513          	addi	a0,a0,1928 # 100008 <foo>
   10888:	000f0597          	auipc	a1,0xf0
   1088c:	b8458593          	addi	a1,a1,-1148 # 10040c <fooTest3>
   10890:	1005a5af          	lr.w	a1,(a1)
   10894:	18b5272f          	sc.w	a4,a1,(a0)
   10898:	00100e93          	li	t4,1
   1089c:	00400e13          	li	t3,4
   108a0:	09d71a63          	bne	a4,t4,10934 <fail>
   108a4:	000ef517          	auipc	a0,0xef
   108a8:	76450513          	addi	a0,a0,1892 # 100008 <foo>
   108ac:	40000593          	li	a1,1024
   108b0:	00160613          	addi	a2,a2,1
   108b4:	1005272f          	lr.w	a4,(a0)
   108b8:	00c70733          	add	a4,a4,a2
   108bc:	18e5272f          	sc.w	a4,a4,(a0)
   108c0:	fe071ae3          	bnez	a4,108b4 <test_4+0x34>
   108c4:	fff58593          	addi	a1,a1,-1
   108c8:	fe0596e3          	bnez	a1,108b4 <test_4+0x34>
   108cc:	000ef517          	auipc	a0,0xef
   108d0:	73850513          	addi	a0,a0,1848 # 100004 <barrier>
   108d4:	00100593          	li	a1,1
   108d8:	00b5202f          	amoadd.w	zero,a1,(a0)
   108dc:	00052583          	lw	a1,0(a0)
   108e0:	fed5cee3          	blt	a1,a3,108dc <test_4+0x5c>
   108e4:	0ff0000f          	fence

000108e8 <test_5>:
   108e8:	000ef517          	auipc	a0,0xef
   108ec:	72052503          	lw	a0,1824(a0) # 100008 <foo>
   108f0:	00969593          	slli	a1,a3,0x9
   108f4:	40b50533          	sub	a0,a0,a1
   108f8:	fff68693          	addi	a3,a3,-1
   108fc:	fe06dce3          	bgez	a3,108f4 <test_5+0xc>
   10900:	00000e93          	li	t4,0
   10904:	00500e13          	li	t3,5
   10908:	03d51663          	bne	a0,t4,10934 <fail>

0001090c <test_6>:
   1090c:	000ef517          	auipc	a0,0xef
   10910:	6fc50513          	addi	a0,a0,1788 # 100008 <foo>
   10914:	100525af          	lr.w	a1,(a0)
   10918:	180525af          	sc.w	a1,zero,(a0)
   1091c:	fe059ce3          	bnez	a1,10914 <test_6+0x8>
   10920:	180525af          	sc.w	a1,zero,(a0)
   10924:	00100e93          	li	t4,1
   10928:	00600e13          	li	t3,6
   1092c:	01d59463          	bne	a1,t4,10934 <fail>
   10930:	05c01463          	bne	zero,t3,10978 <pass>

00010934 <fail>:
   10934:	0ff00513          	li	a0,255

00010938 <.delay_fail>:
   10938:	fff50513          	addi	a0,a0,-1
   1093c:	fe051ee3          	bnez	a0,10938 <.delay_fail>
   10940:	02000537          	lui	a0,0x2000
   10944:	04500593          	li	a1,69
   10948:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   1094c:	05200613          	li	a2,82
   10950:	00c52023          	sw	a2,0(a0)
   10954:	00c52023          	sw	a2,0(a0)
   10958:	04f00693          	li	a3,79
   1095c:	00d52023          	sw	a3,0(a0)
   10960:	00c52023          	sw	a2,0(a0)
   10964:	00d00713          	li	a4,13
   10968:	00e52023          	sw	a4,0(a0)
   1096c:	00a00793          	li	a5,10
   10970:	00f52023          	sw	a5,0(a0)
   10974:	f80ff06f          	j	100f4 <lrsc_ret>

00010978 <pass>:
   10978:	0ff00513          	li	a0,255

0001097c <.delay_ok>:
   1097c:	fff50513          	addi	a0,a0,-1
   10980:	fe051ee3          	bnez	a0,1097c <.delay_ok>
   10984:	02000537          	lui	a0,0x2000
   10988:	04f00593          	li	a1,79
   1098c:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10990:	04b00613          	li	a2,75
   10994:	00c52023          	sw	a2,0(a0)
   10998:	00d00693          	li	a3,13
   1099c:	00d52023          	sw	a3,0(a0)
   109a0:	00a00713          	li	a4,10
   109a4:	00e52023          	sw	a4,0(a0)
   109a8:	f4cff06f          	j	100f4 <lrsc_ret>

000109ac <amoswap_w>:
   109ac:	0ff00513          	li	a0,255

000109b0 <.delay_pr>:
   109b0:	fff50513          	addi	a0,a0,-1
   109b4:	fe051ee3          	bnez	a0,109b0 <.delay_pr>
   109b8:	00011537          	lui	a0,0x11
   109bc:	9d850513          	addi	a0,a0,-1576 # 109d8 <.test_name>
   109c0:	02000637          	lui	a2,0x2000

000109c4 <.prname_next>:
   109c4:	00050583          	lb	a1,0(a0)
   109c8:	00058e63          	beqz	a1,109e4 <.prname_done>
   109cc:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   109d0:	00150513          	addi	a0,a0,1
   109d4:	ff1ff06f          	j	109c4 <.prname_next>

000109d8 <.test_name>:
   109d8:	6d61                	lui	s10,0x18
   109da:	6177736f          	jal	t1,887f0 <_etext+0x77af8>
   109de:	5f70                	lw	a2,124(a4)
   109e0:	00000077          	0x77

000109e4 <.prname_done>:
   109e4:	02e00593          	li	a1,46
   109e8:	00b62023          	sw	a1,0(a2)
   109ec:	00b62023          	sw	a1,0(a2)

000109f0 <test_2>:
   109f0:	80000537          	lui	a0,0x80000
   109f4:	80000593          	li	a1,-2048
   109f8:	000f0697          	auipc	a3,0xf0
   109fc:	a4868693          	addi	a3,a3,-1464 # 100440 <amo_operand>
   10a00:	00a6a023          	sw	a0,0(a3)
   10a04:	08b6a72f          	amoswap.w	a4,a1,(a3)
   10a08:	80000eb7          	lui	t4,0x80000
   10a0c:	00200e13          	li	t3,2
   10a10:	03d71e63          	bne	a4,t4,10a4c <fail>

00010a14 <test_3>:
   10a14:	0006a783          	lw	a5,0(a3)
   10a18:	80000e93          	li	t4,-2048
   10a1c:	00300e13          	li	t3,3
   10a20:	03d79663          	bne	a5,t4,10a4c <fail>

00010a24 <test_4>:
   10a24:	800005b7          	lui	a1,0x80000
   10a28:	08b6a72f          	amoswap.w	a4,a1,(a3)
   10a2c:	80000e93          	li	t4,-2048
   10a30:	00400e13          	li	t3,4
   10a34:	01d71c63          	bne	a4,t4,10a4c <fail>

00010a38 <test_5>:
   10a38:	0006a783          	lw	a5,0(a3)
   10a3c:	80000eb7          	lui	t4,0x80000
   10a40:	00500e13          	li	t3,5
   10a44:	01d79463          	bne	a5,t4,10a4c <fail>
   10a48:	05c01463          	bne	zero,t3,10a90 <pass>

00010a4c <fail>:
   10a4c:	0ff00513          	li	a0,255

00010a50 <.delay_fail>:
   10a50:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   10a54:	fe051ee3          	bnez	a0,10a50 <.delay_fail>
   10a58:	02000537          	lui	a0,0x2000
   10a5c:	04500593          	li	a1,69
   10a60:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10a64:	05200613          	li	a2,82
   10a68:	00c52023          	sw	a2,0(a0)
   10a6c:	00c52023          	sw	a2,0(a0)
   10a70:	04f00693          	li	a3,79
   10a74:	00d52023          	sw	a3,0(a0)
   10a78:	00c52023          	sw	a2,0(a0)
   10a7c:	00d00713          	li	a4,13
   10a80:	00e52023          	sw	a4,0(a0)
   10a84:	00a00793          	li	a5,10
   10a88:	00f52023          	sw	a5,0(a0)
   10a8c:	e60ff06f          	j	100ec <amoswap_w_ret>

00010a90 <pass>:
   10a90:	0ff00513          	li	a0,255

00010a94 <.delay_ok>:
   10a94:	fff50513          	addi	a0,a0,-1
   10a98:	fe051ee3          	bnez	a0,10a94 <.delay_ok>
   10a9c:	02000537          	lui	a0,0x2000
   10aa0:	04f00593          	li	a1,79
   10aa4:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10aa8:	04b00613          	li	a2,75
   10aac:	00c52023          	sw	a2,0(a0)
   10ab0:	00d00693          	li	a3,13
   10ab4:	00d52023          	sw	a3,0(a0)
   10ab8:	00a00713          	li	a4,10
   10abc:	00e52023          	sw	a4,0(a0)
   10ac0:	e2cff06f          	j	100ec <amoswap_w_ret>

00010ac4 <amominu_w>:
   10ac4:	0ff00513          	li	a0,255

00010ac8 <.delay_pr>:
   10ac8:	fff50513          	addi	a0,a0,-1
   10acc:	fe051ee3          	bnez	a0,10ac8 <.delay_pr>
   10ad0:	00011537          	lui	a0,0x11
   10ad4:	af050513          	addi	a0,a0,-1296 # 10af0 <.test_name>
   10ad8:	02000637          	lui	a2,0x2000

00010adc <.prname_next>:
   10adc:	00050583          	lb	a1,0(a0)
   10ae0:	00058e63          	beqz	a1,10afc <.prname_done>
   10ae4:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   10ae8:	00150513          	addi	a0,a0,1
   10aec:	ff1ff06f          	j	10adc <.prname_next>

00010af0 <.test_name>:
   10af0:	6d61                	lui	s10,0x18
   10af2:	6e696d6f          	jal	s10,a71d8 <_etext+0x964e0>
   10af6:	5f75                	li	t5,-3
   10af8:	00000077          	0x77

00010afc <.prname_done>:
   10afc:	02e00593          	li	a1,46
   10b00:	00b62023          	sw	a1,0(a2)
   10b04:	00b62023          	sw	a1,0(a2)

00010b08 <test_2>:
   10b08:	80000537          	lui	a0,0x80000
   10b0c:	80000593          	li	a1,-2048
   10b10:	000f0697          	auipc	a3,0xf0
   10b14:	93868693          	addi	a3,a3,-1736 # 100448 <amo_operand>
   10b18:	00a6a023          	sw	a0,0(a3)
   10b1c:	c0b6a72f          	amominu.w	a4,a1,(a3)
   10b20:	80000eb7          	lui	t4,0x80000
   10b24:	00200e13          	li	t3,2
   10b28:	05d71063          	bne	a4,t4,10b68 <fail>

00010b2c <test_3>:
   10b2c:	0006a783          	lw	a5,0(a3)
   10b30:	80000eb7          	lui	t4,0x80000
   10b34:	00300e13          	li	t3,3
   10b38:	03d79863          	bne	a5,t4,10b68 <fail>

00010b3c <test_4>:
   10b3c:	fff00593          	li	a1,-1
   10b40:	0006a023          	sw	zero,0(a3)
   10b44:	c0b6a72f          	amominu.w	a4,a1,(a3)
   10b48:	00000e93          	li	t4,0
   10b4c:	00400e13          	li	t3,4
   10b50:	01d71c63          	bne	a4,t4,10b68 <fail>

00010b54 <test_5>:
   10b54:	0006a783          	lw	a5,0(a3)
   10b58:	00000e93          	li	t4,0
   10b5c:	00500e13          	li	t3,5
   10b60:	01d79463          	bne	a5,t4,10b68 <fail>
   10b64:	05c01463          	bne	zero,t3,10bac <pass>

00010b68 <fail>:
   10b68:	0ff00513          	li	a0,255

00010b6c <.delay_fail>:
   10b6c:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   10b70:	fe051ee3          	bnez	a0,10b6c <.delay_fail>
   10b74:	02000537          	lui	a0,0x2000
   10b78:	04500593          	li	a1,69
   10b7c:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10b80:	05200613          	li	a2,82
   10b84:	00c52023          	sw	a2,0(a0)
   10b88:	00c52023          	sw	a2,0(a0)
   10b8c:	04f00693          	li	a3,79
   10b90:	00d52023          	sw	a3,0(a0)
   10b94:	00c52023          	sw	a2,0(a0)
   10b98:	00d00713          	li	a4,13
   10b9c:	00e52023          	sw	a4,0(a0)
   10ba0:	00a00793          	li	a5,10
   10ba4:	00f52023          	sw	a5,0(a0)
   10ba8:	d38ff06f          	j	100e0 <amominu_w_ret>

00010bac <pass>:
   10bac:	0ff00513          	li	a0,255

00010bb0 <.delay_ok>:
   10bb0:	fff50513          	addi	a0,a0,-1
   10bb4:	fe051ee3          	bnez	a0,10bb0 <.delay_ok>
   10bb8:	02000537          	lui	a0,0x2000
   10bbc:	04f00593          	li	a1,79
   10bc0:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10bc4:	04b00613          	li	a2,75
   10bc8:	00c52023          	sw	a2,0(a0)
   10bcc:	00d00693          	li	a3,13
   10bd0:	00d52023          	sw	a3,0(a0)
   10bd4:	00a00713          	li	a4,10
   10bd8:	00e52023          	sw	a4,0(a0)
   10bdc:	d04ff06f          	j	100e0 <amominu_w_ret>

00010be0 <amoand_w>:
   10be0:	0ff00513          	li	a0,255

00010be4 <.delay_pr>:
   10be4:	fff50513          	addi	a0,a0,-1
   10be8:	fe051ee3          	bnez	a0,10be4 <.delay_pr>
   10bec:	00011537          	lui	a0,0x11
   10bf0:	c0c50513          	addi	a0,a0,-1012 # 10c0c <.test_name>
   10bf4:	02000637          	lui	a2,0x2000

00010bf8 <.prname_next>:
   10bf8:	00050583          	lb	a1,0(a0)
   10bfc:	00058e63          	beqz	a1,10c18 <.prname_done>
   10c00:	00b62023          	sw	a1,0(a2) # 2000000 <_ebss+0x1effba8>
   10c04:	00150513          	addi	a0,a0,1
   10c08:	ff1ff06f          	j	10bf8 <.prname_next>

00010c0c <.test_name>:
   10c0c:	6d61                	lui	s10,0x18
   10c0e:	646e616f          	jal	sp,f7254 <_etext+0xe655c>
   10c12:	775f 0000 0000      	0x775f

00010c18 <.prname_done>:
   10c18:	02e00593          	li	a1,46
   10c1c:	00b62023          	sw	a1,0(a2)
   10c20:	00b62023          	sw	a1,0(a2)

00010c24 <test_2>:
   10c24:	80000537          	lui	a0,0x80000
   10c28:	80000593          	li	a1,-2048
   10c2c:	000f0697          	auipc	a3,0xf0
   10c30:	82468693          	addi	a3,a3,-2012 # 100450 <amo_operand>
   10c34:	00a6a023          	sw	a0,0(a3)
   10c38:	60b6a72f          	amoand.w	a4,a1,(a3)
   10c3c:	80000eb7          	lui	t4,0x80000
   10c40:	00200e13          	li	t3,2
   10c44:	03d71e63          	bne	a4,t4,10c80 <fail>

00010c48 <test_3>:
   10c48:	0006a783          	lw	a5,0(a3)
   10c4c:	80000eb7          	lui	t4,0x80000
   10c50:	00300e13          	li	t3,3
   10c54:	03d79663          	bne	a5,t4,10c80 <fail>

00010c58 <test_4>:
   10c58:	800005b7          	lui	a1,0x80000
   10c5c:	60b6a72f          	amoand.w	a4,a1,(a3)
   10c60:	80000eb7          	lui	t4,0x80000
   10c64:	00400e13          	li	t3,4
   10c68:	01d71c63          	bne	a4,t4,10c80 <fail>

00010c6c <test_5>:
   10c6c:	0006a783          	lw	a5,0(a3)
   10c70:	80000eb7          	lui	t4,0x80000
   10c74:	00500e13          	li	t3,5
   10c78:	01d79463          	bne	a5,t4,10c80 <fail>
   10c7c:	05c01463          	bne	zero,t3,10cc4 <pass>

00010c80 <fail>:
   10c80:	0ff00513          	li	a0,255

00010c84 <.delay_fail>:
   10c84:	fff50513          	addi	a0,a0,-1 # 7fffffff <_ebss+0x7feffba7>
   10c88:	fe051ee3          	bnez	a0,10c84 <.delay_fail>
   10c8c:	02000537          	lui	a0,0x2000
   10c90:	04500593          	li	a1,69
   10c94:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10c98:	05200613          	li	a2,82
   10c9c:	00c52023          	sw	a2,0(a0)
   10ca0:	00c52023          	sw	a2,0(a0)
   10ca4:	04f00693          	li	a3,79
   10ca8:	00d52023          	sw	a3,0(a0)
   10cac:	00c52023          	sw	a2,0(a0)
   10cb0:	00d00713          	li	a4,13
   10cb4:	00e52023          	sw	a4,0(a0)
   10cb8:	00a00793          	li	a5,10
   10cbc:	00f52023          	sw	a5,0(a0)
   10cc0:	c14ff06f          	j	100d4 <amoand_w_ret>

00010cc4 <pass>:
   10cc4:	0ff00513          	li	a0,255

00010cc8 <.delay_ok>:
   10cc8:	fff50513          	addi	a0,a0,-1
   10ccc:	fe051ee3          	bnez	a0,10cc8 <.delay_ok>
   10cd0:	02000537          	lui	a0,0x2000
   10cd4:	04f00593          	li	a1,79
   10cd8:	00b52023          	sw	a1,0(a0) # 2000000 <_ebss+0x1effba8>
   10cdc:	04b00613          	li	a2,75
   10ce0:	00c52023          	sw	a2,0(a0)
   10ce4:	00d00693          	li	a3,13
   10ce8:	00d52023          	sw	a3,0(a0)
   10cec:	00a00713          	li	a4,10
   10cf0:	00e52023          	sw	a4,0(a0)
   10cf4:	be0ff06f          	j	100d4 <amoand_w_ret>
