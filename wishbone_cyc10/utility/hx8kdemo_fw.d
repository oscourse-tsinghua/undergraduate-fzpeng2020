
hx8kdemo_fw.elf:     file format elf32-littleriscv


Disassembly of section .text:

00004000 <_start>:
    4000:	00000093          	li	ra,0
    4004:	00009137          	lui	sp,0x9
    4008:	00000193          	li	gp,0
    400c:	00000213          	li	tp,0
    4010:	00000293          	li	t0,0
    4014:	00000313          	li	t1,0
    4018:	00000393          	li	t2,0
    401c:	00000413          	li	s0,0
    4020:	00000493          	li	s1,0
    4024:	00000513          	li	a0,0
    4028:	00000593          	li	a1,0
    402c:	00000613          	li	a2,0
    4030:	00000693          	li	a3,0
    4034:	00000713          	li	a4,0
    4038:	00000793          	li	a5,0
    403c:	00000813          	li	a6,0
    4040:	00000893          	li	a7,0
    4044:	00000913          	li	s2,0
    4048:	00000993          	li	s3,0
    404c:	00000a13          	li	s4,0
    4050:	00000a93          	li	s5,0
    4054:	00000b13          	li	s6,0
    4058:	00000b93          	li	s7,0
    405c:	00000c13          	li	s8,0
    4060:	00000c93          	li	s9,0
    4064:	00000d13          	li	s10,0
    4068:	00000d93          	li	s11,0
    406c:	00000e13          	li	t3,0
    4070:	00000e93          	li	t4,0
    4074:	00000f13          	li	t5,0
    4078:	00000f93          	li	t6,0
    407c:	008000ef          	jal	ra,4084 <main>

00004080 <loop>:
    4080:	0000006f          	j	4080 <loop>

00004084 <main>:
    4084:	81010113          	addi	sp,sp,-2032 # 8810 <_edata+0x810>
    4088:	7e812623          	sw	s0,2028(sp)
    408c:	7f010413          	addi	s0,sp,2032
    4090:	ffff7337          	lui	t1,0xffff7
    4094:	b6030313          	addi	t1,t1,-1184 # ffff6b60 <UART_BASE+0xfdff6b60>
    4098:	00610133          	add	sp,sp,t1
    409c:	300007b7          	lui	a5,0x30000
    40a0:	01100713          	li	a4,17
    40a4:	00e7a023          	sw	a4,0(a5) # 30000000 <UART_BASE+0x2e000000>
    40a8:	fe042623          	sw	zero,-20(s0)
    40ac:	ffff67b7          	lui	a5,0xffff6
    40b0:	ff040713          	addi	a4,s0,-16
    40b4:	00f707b3          	add	a5,a4,a5
    40b8:	00004737          	lui	a4,0x4
    40bc:	21872f83          	lw	t6,536(a4) # 4218 <main+0x194>
    40c0:	21870693          	addi	a3,a4,536
    40c4:	0046af03          	lw	t5,4(a3)
    40c8:	21870693          	addi	a3,a4,536
    40cc:	0086ae83          	lw	t4,8(a3)
    40d0:	21870693          	addi	a3,a4,536
    40d4:	00c6ae03          	lw	t3,12(a3)
    40d8:	21870693          	addi	a3,a4,536
    40dc:	0106a303          	lw	t1,16(a3)
    40e0:	21870693          	addi	a3,a4,536
    40e4:	0146a883          	lw	a7,20(a3)
    40e8:	21870693          	addi	a3,a4,536
    40ec:	0186a803          	lw	a6,24(a3)
    40f0:	21870693          	addi	a3,a4,536
    40f4:	01c6a503          	lw	a0,28(a3)
    40f8:	21870693          	addi	a3,a4,536
    40fc:	0206a583          	lw	a1,32(a3)
    4100:	21870693          	addi	a3,a4,536
    4104:	0246a603          	lw	a2,36(a3)
    4108:	21870693          	addi	a3,a4,536
    410c:	0286a683          	lw	a3,40(a3)
    4110:	39f7a423          	sw	t6,904(a5) # ffff6388 <UART_BASE+0xfdff6388>
    4114:	39e7a623          	sw	t5,908(a5)
    4118:	39d7a823          	sw	t4,912(a5)
    411c:	39c7aa23          	sw	t3,916(a5)
    4120:	3867ac23          	sw	t1,920(a5)
    4124:	3917ae23          	sw	a7,924(a5)
    4128:	3b07a023          	sw	a6,928(a5)
    412c:	3aa7a223          	sw	a0,932(a5)
    4130:	3ab7a423          	sw	a1,936(a5)
    4134:	3ac7a623          	sw	a2,940(a5)
    4138:	3ad7a823          	sw	a3,944(a5)
    413c:	21870713          	addi	a4,a4,536
    4140:	02c75683          	lhu	a3,44(a4)
    4144:	3ad79a23          	sh	a3,948(a5)
    4148:	02e74703          	lbu	a4,46(a4)
    414c:	3ae78b23          	sb	a4,950(a5)
    4150:	fe042623          	sw	zero,-20(s0)
    4154:	0300006f          	j	4184 <main+0x100>
    4158:	ffff67b7          	lui	a5,0xffff6
    415c:	ff040713          	addi	a4,s0,-16
    4160:	00f70733          	add	a4,a4,a5
    4164:	fec42783          	lw	a5,-20(s0)
    4168:	00279793          	slli	a5,a5,0x2
    416c:	00f707b3          	add	a5,a4,a5
    4170:	fec42703          	lw	a4,-20(s0)
    4174:	3ae7ac23          	sw	a4,952(a5) # ffff63b8 <UART_BASE+0xfdff63b8>
    4178:	fec42783          	lw	a5,-20(s0)
    417c:	00178793          	addi	a5,a5,1
    4180:	fef42623          	sw	a5,-20(s0)
    4184:	fec42703          	lw	a4,-20(s0)
    4188:	000027b7          	lui	a5,0x2
    418c:	70f78793          	addi	a5,a5,1807 # 270f <_start-0x18f1>
    4190:	fce7d4e3          	bge	a5,a4,4158 <main+0xd4>
    4194:	ffff67b7          	lui	a5,0xffff6
    4198:	38878793          	addi	a5,a5,904 # ffff6388 <UART_BASE+0xfdff6388>
    419c:	ff040713          	addi	a4,s0,-16
    41a0:	00f707b3          	add	a5,a4,a5
    41a4:	fef42423          	sw	a5,-24(s0)
    41a8:	00000013          	nop
    41ac:	fe842783          	lw	a5,-24(s0)
    41b0:	00178713          	addi	a4,a5,1
    41b4:	fee42423          	sw	a4,-24(s0)
    41b8:	02000737          	lui	a4,0x2000
    41bc:	0007c783          	lbu	a5,0(a5)
    41c0:	00f70023          	sb	a5,0(a4) # 2000000 <UART_BASE>
    41c4:	fe0794e3          	bnez	a5,41ac <main+0x128>
    41c8:	fe042623          	sw	zero,-20(s0)
    41cc:	0380006f          	j	4204 <main+0x180>
    41d0:	ffff67b7          	lui	a5,0xffff6
    41d4:	ff040713          	addi	a4,s0,-16
    41d8:	00f70733          	add	a4,a4,a5
    41dc:	fec42783          	lw	a5,-20(s0)
    41e0:	00279793          	slli	a5,a5,0x2
    41e4:	00f707b3          	add	a5,a4,a5
    41e8:	3b87a703          	lw	a4,952(a5) # ffff63b8 <UART_BASE+0xfdff63b8>
    41ec:	020007b7          	lui	a5,0x2000
    41f0:	0ff77713          	andi	a4,a4,255
    41f4:	00e78023          	sb	a4,0(a5) # 2000000 <UART_BASE>
    41f8:	fec42783          	lw	a5,-20(s0)
    41fc:	00178793          	addi	a5,a5,1
    4200:	fef42623          	sw	a5,-20(s0)
    4204:	fec42703          	lw	a4,-20(s0)
    4208:	000027b7          	lui	a5,0x2
    420c:	70f78793          	addi	a5,a5,1807 # 270f <_start-0x18f1>
    4210:	fce7d0e3          	bge	a5,a4,41d0 <main+0x14c>
    4214:	0000006f          	j	4214 <main+0x190>
    4218:	6f42                	flw	ft10,16(sp)
    421a:	6e69746f          	jal	s0,9b900 <_edata+0x93900>
    421e:	2e2e2e67          	0x2e2e2e67
    4222:	2e2e                	fld	ft8,200(sp)
    4224:	202e                	fld	ft0,200(sp)
    4226:	6554                	flw	fa3,12(a0)
    4228:	6e697473          	csrrci	s0,0x6e6,18
    422c:	6f662067          	0x6f662067
    4230:	2072                	fld	ft0,280(sp)
    4232:	6172                	flw	ft2,28(sp)
    4234:	206d                	jal	42de <_etext+0x96>
    4236:	7962                	flw	fs2,56(sp)
    4238:	5a20                	lw	s0,112(a2)
    423a:	6968                	flw	fa0,84(a0)
    423c:	6570                	flw	fa2,76(a0)
    423e:	676e                	flw	fa4,216(sp)
    4240:	6146                	flw	ft2,80(sp)
    4242:	2e6e                	fld	ft8,216(sp)
    4244:	0d0a                	slli	s10,s10,0x2
	...
