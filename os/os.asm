
target/riscv32-os/release/os：     文件格式 elf32-littleriscv


Disassembly of section .text:

c0400000 <_start>:
c0400000:	c0411137          	lui	sp,0xc0411
c0400004:	c040c2b7          	lui	t0,0xc040c
c0400008:	40000337          	lui	t1,0x40000
c040000c:	406282b3          	sub	t0,t0,t1
c0400010:	00c2d293          	srli	t0,t0,0xc
c0400014:	80000337          	lui	t1,0x80000
c0400018:	0062e2b3          	or	t0,t0,t1
c040001c:	18029073          	csrw	satp,t0
c0400020:	12000073          	sfence.vma
c0400024:	c04012b7          	lui	t0,0xc0401
c0400028:	48428293          	addi	t0,t0,1156 # c0401484 <ebss+0xfffe0364>
c040002c:	00028067          	jr	t0

c0400030 <print_uint32>:
c0400030:	f00005b7          	lui	a1,0xf0000
c0400034:	00100893          	li	a7,1
c0400038:	00800313          	li	t1,8
c040003c:	00100393          	li	t2,1

c0400040 <loop>:
c0400040:	00d5f533          	and	a0,a1,a3
c0400044:	01c55513          	srli	a0,a0,0x1c
c0400048:	03050513          	addi	a0,a0,48
c040004c:	00000073          	ecall
c0400050:	00469693          	slli	a3,a3,0x4
c0400054:	40730333          	sub	t1,t1,t2
c0400058:	fe0314e3          	bnez	t1,c0400040 <loop>
c040005c:	00008067          	ret

c0400060 <__rust_alloc>:
c0400060:	00000317          	auipc	t1,0x0
c0400064:	37830067          	jr	888(t1) # c04003d8 <__rg_alloc>

c0400068 <__rust_dealloc>:
c0400068:	00000317          	auipc	t1,0x0
c040006c:	3a430067          	jr	932(t1) # c040040c <__rg_dealloc>

c0400070 <__rust_realloc>:
c0400070:	00000317          	auipc	t1,0x0
c0400074:	3d430067          	jr	980(t1) # c0400444 <__rg_realloc>

c0400078 <_ZN2os6memory4init17h4b64a4a828ecee01E>:
c0400078:	fa010113          	addi	sp,sp,-96 # c0410fa0 <ebss+0xfffefe80>
c040007c:	04112e23          	sw	ra,92(sp)
c0400080:	04812c23          	sw	s0,88(sp)
c0400084:	04912a23          	sw	s1,84(sp)
c0400088:	05212823          	sw	s2,80(sp)
c040008c:	05312623          	sw	s3,76(sp)
c0400090:	05412423          	sw	s4,72(sp)
c0400094:	05512223          	sw	s5,68(sp)
c0400098:	06010413          	addi	s0,sp,96
c040009c:	00058613          	mv	a2,a1
c04000a0:	00050593          	mv	a1,a0
c04000a4:	c04214b7          	lui	s1,0xc0421
c04000a8:	09048513          	addi	a0,s1,144 # c0421090 <ebss+0xffffff70>
c04000ac:	ffc57693          	andi	a3,a0,-4
c04000b0:	0ff00913          	li	s2,255
c04000b4:	00100993          	li	s3,1
c04000b8:	1406a72f          	lr.w.aq	a4,(a3)
c04000bc:	012777b3          	and	a5,a4,s2
c04000c0:	00079c63          	bnez	a5,c04000d8 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x60>
c04000c4:	013747b3          	xor	a5,a4,s3
c04000c8:	0127f7b3          	and	a5,a5,s2
c04000cc:	00f747b3          	xor	a5,a4,a5
c04000d0:	18f6a7af          	sc.w	a5,a5,(a3)
c04000d4:	fe0792e3          	bnez	a5,c04000b8 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x40>
c04000d8:	0ff77713          	andi	a4,a4,255
c04000dc:	00070a63          	beqz	a4,c04000f0 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x78>
c04000e0:	09048703          	lb	a4,144(s1)
c04000e4:	0ff77713          	andi	a4,a4,255
c04000e8:	fe071ce3          	bnez	a4,c04000e0 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x68>
c04000ec:	fcdff06f          	j	c04000b8 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x40>
c04000f0:	00450513          	addi	a0,a0,4
c04000f4:	00000097          	auipc	ra,0x0
c04000f8:	400080e7          	jalr	1024(ra) # c04004f4 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E>
c04000fc:	0310000f          	fence	rw,w
c0400100:	08048823          	sb	zero,144(s1)
c0400104:	c0421537          	lui	a0,0xc0421
c0400108:	00050513          	mv	a0,a0
c040010c:	00003097          	auipc	ra,0x3
c0400110:	fa0080e7          	jalr	-96(ra) # c04030ac <_ZN78_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..ops..deref..Deref$GT$5deref17h729bb3edfdb6c350E>
c0400114:	00050493          	mv	s1,a0
c0400118:	00351513          	slli	a0,a0,0x3
c040011c:	01857613          	andi	a2,a0,24
c0400120:	00c915b3          	sll	a1,s2,a2
c0400124:	00c996b3          	sll	a3,s3,a2
c0400128:	ffc4f513          	andi	a0,s1,-4
c040012c:	1405272f          	lr.w.aq	a4,(a0)
c0400130:	00b777b3          	and	a5,a4,a1
c0400134:	00079c63          	bnez	a5,c040014c <_ZN2os6memory4init17h4b64a4a828ecee01E+0xd4>
c0400138:	00d747b3          	xor	a5,a4,a3
c040013c:	00b7f7b3          	and	a5,a5,a1
c0400140:	00f747b3          	xor	a5,a4,a5
c0400144:	18f527af          	sc.w	a5,a5,(a0)
c0400148:	fe0792e3          	bnez	a5,c040012c <_ZN2os6memory4init17h4b64a4a828ecee01E+0xb4>
c040014c:	00b775b3          	and	a1,a4,a1
c0400150:	04058463          	beqz	a1,c0400198 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x120>
c0400154:	0ff00593          	li	a1,255
c0400158:	00c595b3          	sll	a1,a1,a2
c040015c:	00100693          	li	a3,1
c0400160:	00c69633          	sll	a2,a3,a2
c0400164:	00048683          	lb	a3,0(s1)
c0400168:	0ff6f693          	andi	a3,a3,255
c040016c:	fe069ce3          	bnez	a3,c0400164 <_ZN2os6memory4init17h4b64a4a828ecee01E+0xec>
c0400170:	140526af          	lr.w.aq	a3,(a0)
c0400174:	00b6f733          	and	a4,a3,a1
c0400178:	00071c63          	bnez	a4,c0400190 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x118>
c040017c:	00c6c733          	xor	a4,a3,a2
c0400180:	00b77733          	and	a4,a4,a1
c0400184:	00e6c733          	xor	a4,a3,a4
c0400188:	18e5272f          	sc.w	a4,a4,(a0)
c040018c:	fe0712e3          	bnez	a4,c0400170 <_ZN2os6memory4init17h4b64a4a828ecee01E+0xf8>
c0400190:	00b6f6b3          	and	a3,a3,a1
c0400194:	fc0698e3          	bnez	a3,c0400164 <_ZN2os6memory4init17h4b64a4a828ecee01E+0xec>
c0400198:	c0411537          	lui	a0,0xc0411
c040019c:	00050593          	mv	a1,a0
c04001a0:	00448513          	addi	a0,s1,4
c04001a4:	00010637          	lui	a2,0x10
c04001a8:	00003097          	auipc	ra,0x3
c04001ac:	88c080e7          	jalr	-1908(ra) # c0402a34 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E>
c04001b0:	0310000f          	fence	rw,w
c04001b4:	00048023          	sb	zero,0(s1)
c04001b8:	c0405537          	lui	a0,0xc0405
c04001bc:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c04001c0:	faa42223          	sw	a0,-92(s0)
c04001c4:	fa840913          	addi	s2,s0,-88
c04001c8:	fb242023          	sw	s2,-96(s0)
c04001cc:	00400513          	li	a0,4
c04001d0:	faa42c23          	sw	a0,-72(s0)
c04001d4:	c0408537          	lui	a0,0xc0408
c04001d8:	02c50513          	addi	a0,a0,44 # c040802c <ebss+0xfffe6f0c>
c04001dc:	faa42423          	sw	a0,-88(s0)
c04001e0:	fa042e23          	sw	zero,-68(s0)
c04001e4:	fa042823          	sw	zero,-80(s0)
c04001e8:	00100513          	li	a0,1
c04001ec:	faa42623          	sw	a0,-84(s0)
c04001f0:	fc040593          	addi	a1,s0,-64
c04001f4:	feb42023          	sw	a1,-32(s0)
c04001f8:	fca42a23          	sw	a0,-44(s0)
c04001fc:	fa040993          	addi	s3,s0,-96
c0400200:	fd342823          	sw	s3,-48(s0)
c0400204:	00200513          	li	a0,2
c0400208:	fca42223          	sw	a0,-60(s0)
c040020c:	c0408537          	lui	a0,0xc0408
c0400210:	00450513          	addi	a0,a0,4 # c0408004 <ebss+0xfffe6ee4>
c0400214:	fca42023          	sw	a0,-64(s0)
c0400218:	c0408537          	lui	a0,0xc0408
c040021c:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c0400220:	fc042423          	sw	zero,-56(s0)
c0400224:	fe040513          	addi	a0,s0,-32
c0400228:	fc040613          	addi	a2,s0,-64
c040022c:	00005097          	auipc	ra,0x5
c0400230:	41c080e7          	jalr	1052(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0400234:	14051a63          	bnez	a0,c0400388 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x310>
c0400238:	fc040a13          	addi	s4,s0,-64
c040023c:	000a0513          	mv	a0,s4
c0400240:	00002097          	auipc	ra,0x2
c0400244:	c3c080e7          	jalr	-964(ra) # c0401e7c <_ZN2os6memory10memory_set9MemorySet3new17hc56d8e1e0cbb2d9bE>
c0400248:	c040d537          	lui	a0,0xc040d
c040024c:	00050593          	mv	a1,a0
c0400250:	c0411537          	lui	a0,0xc0411
c0400254:	00050613          	mv	a2,a0
c0400258:	000a0513          	mv	a0,s4
c040025c:	00000693          	li	a3,0
c0400260:	40000737          	lui	a4,0x40000
c0400264:	00002097          	auipc	ra,0x2
c0400268:	9f0080e7          	jalr	-1552(ra) # c0401c54 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E>
c040026c:	fcc40513          	addi	a0,s0,-52
c0400270:	00001097          	auipc	ra,0x1
c0400274:	eec080e7          	jalr	-276(ra) # c040115c <_ZN2os6memory6paging13PageTableImpl8activate17he375020bec18b556E>
c0400278:	fc842503          	lw	a0,-56(s0)
c040027c:	04050a63          	beqz	a0,c04002d0 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x258>
c0400280:	fc042583          	lw	a1,-64(s0)
c0400284:	01400613          	li	a2,20
c0400288:	02c50ab3          	mul	s5,a0,a2
c040028c:	00c58493          	addi	s1,a1,12 # f000000c <ebss+0x2fbdeeec>
c0400290:	0100006f          	j	c04002a0 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x228>
c0400294:	01448493          	addi	s1,s1,20
c0400298:	feca8a93          	addi	s5,s5,-20
c040029c:	020a8a63          	beqz	s5,c04002d0 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x258>
c04002a0:	0004a503          	lw	a0,0(s1)
c04002a4:	00052583          	lw	a1,0(a0) # c0411000 <ebss+0xfffefee0>
c04002a8:	ffc4a503          	lw	a0,-4(s1)
c04002ac:	000580e7          	jalr	a1
c04002b0:	0004a503          	lw	a0,0(s1)
c04002b4:	00452583          	lw	a1,4(a0)
c04002b8:	fc058ee3          	beqz	a1,c0400294 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x21c>
c04002bc:	00852603          	lw	a2,8(a0)
c04002c0:	ffc4a503          	lw	a0,-4(s1)
c04002c4:	00000097          	auipc	ra,0x0
c04002c8:	da4080e7          	jalr	-604(ra) # c0400068 <__rust_dealloc>
c04002cc:	fc9ff06f          	j	c0400294 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x21c>
c04002d0:	fc442503          	lw	a0,-60(s0)
c04002d4:	00050e63          	beqz	a0,c04002f0 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x278>
c04002d8:	01400593          	li	a1,20
c04002dc:	02b505b3          	mul	a1,a0,a1
c04002e0:	fc042503          	lw	a0,-64(s0)
c04002e4:	00400613          	li	a2,4
c04002e8:	00000097          	auipc	ra,0x0
c04002ec:	d80080e7          	jalr	-640(ra) # c0400068 <__rust_dealloc>
c04002f0:	c0405537          	lui	a0,0xc0405
c04002f4:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c04002f8:	faa42223          	sw	a0,-92(s0)
c04002fc:	fb242023          	sw	s2,-96(s0)
c0400300:	00400513          	li	a0,4
c0400304:	faa42c23          	sw	a0,-72(s0)
c0400308:	c0408537          	lui	a0,0xc0408
c040030c:	04c50513          	addi	a0,a0,76 # c040804c <ebss+0xfffe6f2c>
c0400310:	faa42423          	sw	a0,-88(s0)
c0400314:	fa042e23          	sw	zero,-68(s0)
c0400318:	fa042823          	sw	zero,-80(s0)
c040031c:	00100513          	li	a0,1
c0400320:	faa42623          	sw	a0,-84(s0)
c0400324:	ff442023          	sw	s4,-32(s0)
c0400328:	fca42a23          	sw	a0,-44(s0)
c040032c:	fd342823          	sw	s3,-48(s0)
c0400330:	00200513          	li	a0,2
c0400334:	fca42223          	sw	a0,-60(s0)
c0400338:	c0408537          	lui	a0,0xc0408
c040033c:	00450513          	addi	a0,a0,4 # c0408004 <ebss+0xfffe6ee4>
c0400340:	fca42023          	sw	a0,-64(s0)
c0400344:	fc042423          	sw	zero,-56(s0)
c0400348:	c0408537          	lui	a0,0xc0408
c040034c:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c0400350:	fe040513          	addi	a0,s0,-32
c0400354:	fc040613          	addi	a2,s0,-64
c0400358:	00005097          	auipc	ra,0x5
c040035c:	2f0080e7          	jalr	752(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0400360:	02051463          	bnez	a0,c0400388 <_ZN2os6memory4init17h4b64a4a828ecee01E+0x310>
c0400364:	04412a83          	lw	s5,68(sp)
c0400368:	04812a03          	lw	s4,72(sp)
c040036c:	04c12983          	lw	s3,76(sp)
c0400370:	05012903          	lw	s2,80(sp)
c0400374:	05412483          	lw	s1,84(sp)
c0400378:	05812403          	lw	s0,88(sp)
c040037c:	05c12083          	lw	ra,92(sp)
c0400380:	06010113          	addi	sp,sp,96
c0400384:	00008067          	ret
c0400388:	c0408537          	lui	a0,0xc0408
c040038c:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c0400390:	c04085b7          	lui	a1,0xc0408
c0400394:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c0400398:	fc040613          	addi	a2,s0,-64
c040039c:	02b00593          	li	a1,43
c04003a0:	00004097          	auipc	ra,0x4
c04003a4:	648080e7          	jalr	1608(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c04003a8:	00000097          	auipc	ra,0x0
c04003ac:	564080e7          	jalr	1380(ra) # c040090c <abort>

c04003b0 <rust_oom>:
c04003b0:	ff010113          	addi	sp,sp,-16
c04003b4:	00112623          	sw	ra,12(sp)
c04003b8:	00812423          	sw	s0,8(sp)
c04003bc:	01010413          	addi	s0,sp,16
c04003c0:	c0408537          	lui	a0,0xc0408
c04003c4:	09050513          	addi	a0,a0,144 # c0408090 <ebss+0xfffe6f70>
c04003c8:	00004097          	auipc	ra,0x4
c04003cc:	4d4080e7          	jalr	1236(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c04003d0:	00000097          	auipc	ra,0x0
c04003d4:	53c080e7          	jalr	1340(ra) # c040090c <abort>

c04003d8 <__rg_alloc>:
c04003d8:	ff010113          	addi	sp,sp,-16
c04003dc:	00112623          	sw	ra,12(sp)
c04003e0:	00812423          	sw	s0,8(sp)
c04003e4:	01010413          	addi	s0,sp,16
c04003e8:	00058613          	mv	a2,a1
c04003ec:	00050593          	mv	a1,a0
c04003f0:	c0421537          	lui	a0,0xc0421
c04003f4:	00050513          	mv	a0,a0
c04003f8:	00812403          	lw	s0,8(sp)
c04003fc:	00c12083          	lw	ra,12(sp)
c0400400:	01010113          	addi	sp,sp,16
c0400404:	00003317          	auipc	t1,0x3
c0400408:	cc830067          	jr	-824(t1) # c04030cc <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE>

c040040c <__rg_dealloc>:
c040040c:	ff010113          	addi	sp,sp,-16
c0400410:	00112623          	sw	ra,12(sp)
c0400414:	00812423          	sw	s0,8(sp)
c0400418:	01010413          	addi	s0,sp,16
c040041c:	00060693          	mv	a3,a2
c0400420:	00058613          	mv	a2,a1
c0400424:	00050593          	mv	a1,a0
c0400428:	c0421537          	lui	a0,0xc0421
c040042c:	00050513          	mv	a0,a0
c0400430:	00812403          	lw	s0,8(sp)
c0400434:	00c12083          	lw	ra,12(sp)
c0400438:	01010113          	addi	sp,sp,16
c040043c:	00003317          	auipc	t1,0x3
c0400440:	d4830067          	jr	-696(t1) # c0403184 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE>

c0400444 <__rg_realloc>:
c0400444:	fe010113          	addi	sp,sp,-32
c0400448:	00112e23          	sw	ra,28(sp)
c040044c:	00812c23          	sw	s0,24(sp)
c0400450:	00912a23          	sw	s1,20(sp)
c0400454:	01212823          	sw	s2,16(sp)
c0400458:	01312623          	sw	s3,12(sp)
c040045c:	01412423          	sw	s4,8(sp)
c0400460:	01512223          	sw	s5,4(sp)
c0400464:	02010413          	addi	s0,sp,32
c0400468:	00068493          	mv	s1,a3
c040046c:	00060913          	mv	s2,a2
c0400470:	00058a13          	mv	s4,a1
c0400474:	00050993          	mv	s3,a0
c0400478:	c0421537          	lui	a0,0xc0421
c040047c:	00050513          	mv	a0,a0
c0400480:	00068593          	mv	a1,a3
c0400484:	00003097          	auipc	ra,0x3
c0400488:	c48080e7          	jalr	-952(ra) # c04030cc <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE>
c040048c:	00050a93          	mv	s5,a0
c0400490:	02050e63          	beqz	a0,c04004cc <__rg_realloc+0x88>
c0400494:	0144e463          	bltu	s1,s4,c040049c <__rg_realloc+0x58>
c0400498:	000a0493          	mv	s1,s4
c040049c:	000a8513          	mv	a0,s5
c04004a0:	00098593          	mv	a1,s3
c04004a4:	00048613          	mv	a2,s1
c04004a8:	00007097          	auipc	ra,0x7
c04004ac:	17c080e7          	jalr	380(ra) # c0407624 <memcpy>
c04004b0:	c0421537          	lui	a0,0xc0421
c04004b4:	00050513          	mv	a0,a0
c04004b8:	00098593          	mv	a1,s3
c04004bc:	000a0613          	mv	a2,s4
c04004c0:	00090693          	mv	a3,s2
c04004c4:	00003097          	auipc	ra,0x3
c04004c8:	cc0080e7          	jalr	-832(ra) # c0403184 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE>
c04004cc:	000a8513          	mv	a0,s5
c04004d0:	00412a83          	lw	s5,4(sp)
c04004d4:	00812a03          	lw	s4,8(sp)
c04004d8:	00c12983          	lw	s3,12(sp)
c04004dc:	01012903          	lw	s2,16(sp)
c04004e0:	01412483          	lw	s1,20(sp)
c04004e4:	01812403          	lw	s0,24(sp)
c04004e8:	01c12083          	lw	ra,28(sp)
c04004ec:	02010113          	addi	sp,sp,32
c04004f0:	00008067          	ret

c04004f4 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E>:
c04004f4:	ff010113          	addi	sp,sp,-16
c04004f8:	00112623          	sw	ra,12(sp)
c04004fc:	00812423          	sw	s0,8(sp)
c0400500:	01010413          	addi	s0,sp,16
c0400504:	fff58693          	addi	a3,a1,-1
c0400508:	00d52423          	sw	a3,8(a0) # c0421008 <ebss+0xfffffee8>
c040050c:	40b608b3          	sub	a7,a2,a1
c0400510:	01152223          	sw	a7,4(a0)
c0400514:	00100393          	li	t2,1
c0400518:	00288713          	addi	a4,a7,2
c040051c:	00038693          	mv	a3,t2
c0400520:	00139393          	slli	t2,t2,0x1
c0400524:	fee6ece3          	bltu	a3,a4,c040051c <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x28>
c0400528:	00d52023          	sw	a3,0(a0)
c040052c:	02038863          	beqz	t2,c040055c <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x68>
c0400530:	00d50313          	addi	t1,a0,13
c0400534:	07f00813          	li	a6,127
c0400538:	00100293          	li	t0,1
c040053c:	00000713          	li	a4,0
c0400540:	0b070c63          	beq	a4,a6,c04005f8 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x104>
c0400544:	00e307b3          	add	a5,t1,a4
c0400548:	00578023          	sb	t0,0(a5)
c040054c:	00170793          	addi	a5,a4,1 # 40000001 <XLENB+0x3ffffffd>
c0400550:	00270e13          	addi	t3,a4,2
c0400554:	00078713          	mv	a4,a5
c0400558:	fe7e64e3          	bltu	t3,t2,c0400540 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x4c>
c040055c:	00200813          	li	a6,2
c0400560:	0308ec63          	bltu	a7,a6,c0400598 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0xa4>
c0400564:	fff5c593          	not	a1,a1
c0400568:	00c58633          	add	a2,a1,a2
c040056c:	00d50713          	addi	a4,a0,13
c0400570:	08000893          	li	a7,128
c0400574:	00000793          	li	a5,0
c0400578:	00f686b3          	add	a3,a3,a5
c040057c:	00168593          	addi	a1,a3,1
c0400580:	0915fc63          	bgeu	a1,a7,c0400618 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x124>
c0400584:	00d705b3          	add	a1,a4,a3
c0400588:	00058023          	sb	zero,0(a1)
c040058c:	00052683          	lw	a3,0(a0)
c0400590:	00178793          	addi	a5,a5,1
c0400594:	fef612e3          	bne	a2,a5,c0400578 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x84>
c0400598:	0506e863          	bltu	a3,a6,c04005e8 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0xf4>
c040059c:	00b68713          	addi	a4,a3,11
c04005a0:	00169593          	slli	a1,a3,0x1
c04005a4:	ffe58593          	addi	a1,a1,-2
c04005a8:	07f00893          	li	a7,127
c04005ac:	00100813          	li	a6,1
c04005b0:	08b8e263          	bltu	a7,a1,c0400634 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x140>
c04005b4:	00158613          	addi	a2,a1,1
c04005b8:	08c8ec63          	bltu	a7,a2,c0400650 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x15c>
c04005bc:	ff470613          	addi	a2,a4,-12
c04005c0:	0ac8e863          	bltu	a7,a2,c0400670 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0x17c>
c04005c4:	00b507b3          	add	a5,a0,a1
c04005c8:	00c7c683          	lbu	a3,12(a5)
c04005cc:	00d7c783          	lbu	a5,13(a5)
c04005d0:	00d7f6b3          	and	a3,a5,a3
c04005d4:	00e507b3          	add	a5,a0,a4
c04005d8:	00d78023          	sb	a3,0(a5)
c04005dc:	ffe58593          	addi	a1,a1,-2
c04005e0:	fff70713          	addi	a4,a4,-1
c04005e4:	fcc866e3          	bltu	a6,a2,c04005b0 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator4init17hdfb7f9f3ed23dad3E+0xbc>
c04005e8:	00812403          	lw	s0,8(sp)
c04005ec:	00c12083          	lw	ra,12(sp)
c04005f0:	01010113          	addi	sp,sp,16
c04005f4:	00008067          	ret
c04005f8:	c0408537          	lui	a0,0xc0408
c04005fc:	0d050513          	addi	a0,a0,208 # c04080d0 <ebss+0xfffe6fb0>
c0400600:	08000593          	li	a1,128
c0400604:	08000613          	li	a2,128
c0400608:	00004097          	auipc	ra,0x4
c040060c:	30c080e7          	jalr	780(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0400610:	00000097          	auipc	ra,0x0
c0400614:	2fc080e7          	jalr	764(ra) # c040090c <abort>
c0400618:	c0408537          	lui	a0,0xc0408
c040061c:	0e050513          	addi	a0,a0,224 # c04080e0 <ebss+0xfffe6fc0>
c0400620:	08000613          	li	a2,128
c0400624:	00004097          	auipc	ra,0x4
c0400628:	2f0080e7          	jalr	752(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c040062c:	00000097          	auipc	ra,0x0
c0400630:	2e0080e7          	jalr	736(ra) # c040090c <abort>
c0400634:	c0408537          	lui	a0,0xc0408
c0400638:	0f050513          	addi	a0,a0,240 # c04080f0 <ebss+0xfffe6fd0>
c040063c:	08000613          	li	a2,128
c0400640:	00004097          	auipc	ra,0x4
c0400644:	2d4080e7          	jalr	724(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0400648:	00000097          	auipc	ra,0x0
c040064c:	2c4080e7          	jalr	708(ra) # c040090c <abort>
c0400650:	c0408537          	lui	a0,0xc0408
c0400654:	10050513          	addi	a0,a0,256 # c0408100 <ebss+0xfffe6fe0>
c0400658:	00060593          	mv	a1,a2
c040065c:	08000613          	li	a2,128
c0400660:	00004097          	auipc	ra,0x4
c0400664:	2b4080e7          	jalr	692(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0400668:	00000097          	auipc	ra,0x0
c040066c:	2a4080e7          	jalr	676(ra) # c040090c <abort>
c0400670:	c0408537          	lui	a0,0xc0408
c0400674:	11050513          	addi	a0,a0,272 # c0408110 <ebss+0xfffe6ff0>
c0400678:	00060593          	mv	a1,a2
c040067c:	08000613          	li	a2,128
c0400680:	00004097          	auipc	ra,0x4
c0400684:	294080e7          	jalr	660(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0400688:	00000097          	auipc	ra,0x0
c040068c:	284080e7          	jalr	644(ra) # c040090c <abort>

c0400690 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E>:
c0400690:	ff010113          	addi	sp,sp,-16
c0400694:	00112623          	sw	ra,12(sp)
c0400698:	00812423          	sw	s0,8(sp)
c040069c:	01010413          	addi	s0,sp,16
c04006a0:	00d54583          	lbu	a1,13(a0)
c04006a4:	00100613          	li	a2,1
c04006a8:	14c58e63          	beq	a1,a2,c0400804 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0x174>
c04006ac:	00052603          	lw	a2,0(a0)
c04006b0:	00200593          	li	a1,2
c04006b4:	0ab66663          	bltu	a2,a1,c0400760 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0xd0>
c04006b8:	00100593          	li	a1,1
c04006bc:	07f00713          	li	a4,127
c04006c0:	00058693          	mv	a3,a1
c04006c4:	00159593          	slli	a1,a1,0x1
c04006c8:	0cb76063          	bltu	a4,a1,c0400788 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0xf8>
c04006cc:	00b507b3          	add	a5,a0,a1
c04006d0:	00c7c783          	lbu	a5,12(a5)
c04006d4:	00f037b3          	snez	a5,a5
c04006d8:	00f5e5b3          	or	a1,a1,a5
c04006dc:	fec5e2e3          	bltu	a1,a2,c04006c0 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0x30>
c04006e0:	08000713          	li	a4,128
c04006e4:	12e5fc63          	bgeu	a1,a4,c040081c <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0x18c>
c04006e8:	40c58633          	sub	a2,a1,a2
c04006ec:	00852703          	lw	a4,8(a0)
c04006f0:	00c70833          	add	a6,a4,a2
c04006f4:	00b50633          	add	a2,a0,a1
c04006f8:	00100713          	li	a4,1
c04006fc:	00e60623          	sb	a4,12(a2) # 1000c <XLENB+0x10008>
c0400700:	80000637          	lui	a2,0x80000
c0400704:	fff60613          	addi	a2,a2,-1 # 7fffffff <ebss+0xbfbdeedf>
c0400708:	00c6f733          	and	a4,a3,a2
c040070c:	06070463          	beqz	a4,c0400774 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0xe4>
c0400710:	07f00293          	li	t0,127
c0400714:	0ff00893          	li	a7,255
c0400718:	00c50613          	addi	a2,a0,12
c040071c:	00070693          	mv	a3,a4
c0400720:	ffe5f713          	andi	a4,a1,-2
c0400724:	08e2e063          	bltu	t0,a4,c04007a4 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0x114>
c0400728:	0015e793          	ori	a5,a1,1
c040072c:	08f2ec63          	bltu	t0,a5,c04007c4 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0x134>
c0400730:	0ab8ea63          	bltu	a7,a1,c04007e4 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0x154>
c0400734:	00e505b3          	add	a1,a0,a4
c0400738:	00c5c583          	lbu	a1,12(a1)
c040073c:	00f60733          	add	a4,a2,a5
c0400740:	00074703          	lbu	a4,0(a4)
c0400744:	00b775b3          	and	a1,a4,a1
c0400748:	00d60733          	add	a4,a2,a3
c040074c:	00b70023          	sb	a1,0(a4)
c0400750:	0016d713          	srli	a4,a3,0x1
c0400754:	00068593          	mv	a1,a3
c0400758:	fc0712e3          	bnez	a4,c040071c <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0x8c>
c040075c:	0180006f          	j	c0400774 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E+0xe4>
c0400760:	00100593          	li	a1,1
c0400764:	00b506a3          	sb	a1,13(a0)
c0400768:	00852503          	lw	a0,8(a0)
c040076c:	40c50533          	sub	a0,a0,a2
c0400770:	00150813          	addi	a6,a0,1
c0400774:	00080513          	mv	a0,a6
c0400778:	00812403          	lw	s0,8(sp)
c040077c:	00c12083          	lw	ra,12(sp)
c0400780:	01010113          	addi	sp,sp,16
c0400784:	00008067          	ret
c0400788:	c0408537          	lui	a0,0xc0408
c040078c:	17050513          	addi	a0,a0,368 # c0408170 <ebss+0xfffe7050>
c0400790:	08000613          	li	a2,128
c0400794:	00004097          	auipc	ra,0x4
c0400798:	180080e7          	jalr	384(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c040079c:	00000097          	auipc	ra,0x0
c04007a0:	170080e7          	jalr	368(ra) # c040090c <abort>
c04007a4:	c0408537          	lui	a0,0xc0408
c04007a8:	19050513          	addi	a0,a0,400 # c0408190 <ebss+0xfffe7070>
c04007ac:	00070593          	mv	a1,a4
c04007b0:	08000613          	li	a2,128
c04007b4:	00004097          	auipc	ra,0x4
c04007b8:	160080e7          	jalr	352(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04007bc:	00000097          	auipc	ra,0x0
c04007c0:	150080e7          	jalr	336(ra) # c040090c <abort>
c04007c4:	c0408537          	lui	a0,0xc0408
c04007c8:	1a050513          	addi	a0,a0,416 # c04081a0 <ebss+0xfffe7080>
c04007cc:	00078593          	mv	a1,a5
c04007d0:	08000613          	li	a2,128
c04007d4:	00004097          	auipc	ra,0x4
c04007d8:	140080e7          	jalr	320(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04007dc:	00000097          	auipc	ra,0x0
c04007e0:	130080e7          	jalr	304(ra) # c040090c <abort>
c04007e4:	c0408537          	lui	a0,0xc0408
c04007e8:	1b050513          	addi	a0,a0,432 # c04081b0 <ebss+0xfffe7090>
c04007ec:	00068593          	mv	a1,a3
c04007f0:	08000613          	li	a2,128
c04007f4:	00004097          	auipc	ra,0x4
c04007f8:	120080e7          	jalr	288(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04007fc:	00000097          	auipc	ra,0x0
c0400800:	110080e7          	jalr	272(ra) # c040090c <abort>
c0400804:	c0408537          	lui	a0,0xc0408
c0400808:	15850513          	addi	a0,a0,344 # c0408158 <ebss+0xfffe7038>
c040080c:	00004097          	auipc	ra,0x4
c0400810:	090080e7          	jalr	144(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0400814:	00000097          	auipc	ra,0x0
c0400818:	0f8080e7          	jalr	248(ra) # c040090c <abort>
c040081c:	c0408537          	lui	a0,0xc0408
c0400820:	18050513          	addi	a0,a0,384 # c0408180 <ebss+0xfffe7060>
c0400824:	08000613          	li	a2,128
c0400828:	00004097          	auipc	ra,0x4
c040082c:	0ec080e7          	jalr	236(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0400830:	00000097          	auipc	ra,0x0
c0400834:	0dc080e7          	jalr	220(ra) # c040090c <abort>

c0400838 <rust_begin_unwind>:
c0400838:	fa010113          	addi	sp,sp,-96
c040083c:	04112e23          	sw	ra,92(sp)
c0400840:	04812c23          	sw	s0,88(sp)
c0400844:	06010413          	addi	s0,sp,96
c0400848:	faa42623          	sw	a0,-84(s0)
c040084c:	c0405537          	lui	a0,0xc0405
c0400850:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c0400854:	faa42a23          	sw	a0,-76(s0)
c0400858:	fb840513          	addi	a0,s0,-72
c040085c:	faa42823          	sw	a0,-80(s0)
c0400860:	fd040513          	addi	a0,s0,-48
c0400864:	fca42423          	sw	a0,-56(s0)
c0400868:	c0408537          	lui	a0,0xc0408
c040086c:	1d450513          	addi	a0,a0,468 # c04081d4 <ebss+0xfffe70b4>
c0400870:	faa42c23          	sw	a0,-72(s0)
c0400874:	c0401537          	lui	a0,0xc0401
c0400878:	98450513          	addi	a0,a0,-1660 # c0400984 <ebss+0xfffdf864>
c040087c:	fca42a23          	sw	a0,-44(s0)
c0400880:	fac40513          	addi	a0,s0,-84
c0400884:	fca42823          	sw	a0,-48(s0)
c0400888:	00100513          	li	a0,1
c040088c:	fca42623          	sw	a0,-52(s0)
c0400890:	fc042023          	sw	zero,-64(s0)
c0400894:	faa42e23          	sw	a0,-68(s0)
c0400898:	fe040593          	addi	a1,s0,-32
c040089c:	fcb42e23          	sw	a1,-36(s0)
c04008a0:	fea42a23          	sw	a0,-12(s0)
c04008a4:	fb040513          	addi	a0,s0,-80
c04008a8:	fea42823          	sw	a0,-16(s0)
c04008ac:	00200513          	li	a0,2
c04008b0:	fea42223          	sw	a0,-28(s0)
c04008b4:	c0408537          	lui	a0,0xc0408
c04008b8:	1c450513          	addi	a0,a0,452 # c04081c4 <ebss+0xfffe70a4>
c04008bc:	fea42023          	sw	a0,-32(s0)
c04008c0:	c0408537          	lui	a0,0xc0408
c04008c4:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c04008c8:	fe042423          	sw	zero,-24(s0)
c04008cc:	fdc40513          	addi	a0,s0,-36
c04008d0:	fe040613          	addi	a2,s0,-32
c04008d4:	00005097          	auipc	ra,0x5
c04008d8:	d74080e7          	jalr	-652(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c04008dc:	00051463          	bnez	a0,c04008e4 <rust_begin_unwind+0xac>
c04008e0:	0000006f          	j	c04008e0 <rust_begin_unwind+0xa8>
c04008e4:	c0408537          	lui	a0,0xc0408
c04008e8:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c04008ec:	c04085b7          	lui	a1,0xc0408
c04008f0:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c04008f4:	fe040613          	addi	a2,s0,-32
c04008f8:	02b00593          	li	a1,43
c04008fc:	00004097          	auipc	ra,0x4
c0400900:	0ec080e7          	jalr	236(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c0400904:	00000097          	auipc	ra,0x0
c0400908:	008080e7          	jalr	8(ra) # c040090c <abort>

c040090c <abort>:
c040090c:	ff010113          	addi	sp,sp,-16
c0400910:	00112623          	sw	ra,12(sp)
c0400914:	00812423          	sw	s0,8(sp)
c0400918:	01010413          	addi	s0,sp,16
c040091c:	c0408537          	lui	a0,0xc0408
c0400920:	1f450513          	addi	a0,a0,500 # c04081f4 <ebss+0xfffe70d4>
c0400924:	00004097          	auipc	ra,0x4
c0400928:	f78080e7          	jalr	-136(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c040092c:	00000097          	auipc	ra,0x0
c0400930:	fe0080e7          	jalr	-32(ra) # c040090c <abort>

c0400934 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h278f89980af90867E>:
c0400934:	ff010113          	addi	sp,sp,-16
c0400938:	00112623          	sw	ra,12(sp)
c040093c:	00812423          	sw	s0,8(sp)
c0400940:	01010413          	addi	s0,sp,16
c0400944:	00052503          	lw	a0,0(a0)
c0400948:	00812403          	lw	s0,8(sp)
c040094c:	00c12083          	lw	ra,12(sp)
c0400950:	01010113          	addi	sp,sp,16
c0400954:	00003317          	auipc	t1,0x3
c0400958:	edc30067          	jr	-292(t1) # c0403830 <_ZN68_$LT$riscv..register..scause..Scause$u20$as$u20$core..fmt..Debug$GT$3fmt17h0170831e7577ce50E>

c040095c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac91f3ebd2b0d419E>:
c040095c:	ff010113          	addi	sp,sp,-16
c0400960:	00112623          	sw	ra,12(sp)
c0400964:	00812423          	sw	s0,8(sp)
c0400968:	01010413          	addi	s0,sp,16
c040096c:	00052503          	lw	a0,0(a0)
c0400970:	00812403          	lw	s0,8(sp)
c0400974:	00c12083          	lw	ra,12(sp)
c0400978:	01010113          	addi	sp,sp,16
c040097c:	00003317          	auipc	t1,0x3
c0400980:	76830067          	jr	1896(t1) # c04040e4 <_ZN70_$LT$riscv..register..sstatus..Sstatus$u20$as$u20$core..fmt..Debug$GT$3fmt17h436ab7edb50c8214E>

c0400984 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h03ae9b16369079ccE>:
c0400984:	ff010113          	addi	sp,sp,-16
c0400988:	00112623          	sw	ra,12(sp)
c040098c:	00812423          	sw	s0,8(sp)
c0400990:	01010413          	addi	s0,sp,16
c0400994:	00052503          	lw	a0,0(a0)
c0400998:	00812403          	lw	s0,8(sp)
c040099c:	00c12083          	lw	ra,12(sp)
c04009a0:	01010113          	addi	sp,sp,16
c04009a4:	00004317          	auipc	t1,0x4
c04009a8:	d7c30067          	jr	-644(t1) # c0404720 <_ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h8db8ab1973052b04E>

c04009ac <_ZN4core3ptr18real_drop_in_place17h1a8e7b7e8e36590bE>:
c04009ac:	ff010113          	addi	sp,sp,-16
c04009b0:	00112623          	sw	ra,12(sp)
c04009b4:	00812423          	sw	s0,8(sp)
c04009b8:	01010413          	addi	s0,sp,16
c04009bc:	00812403          	lw	s0,8(sp)
c04009c0:	00c12083          	lw	ra,12(sp)
c04009c4:	01010113          	addi	sp,sp,16
c04009c8:	00008067          	ret

c04009cc <_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$_$u5d$$GT$3fmt17hf3e22c2f0b8aaa4eE>:
c04009cc:	fd010113          	addi	sp,sp,-48
c04009d0:	02112623          	sw	ra,44(sp)
c04009d4:	02812423          	sw	s0,40(sp)
c04009d8:	02912223          	sw	s1,36(sp)
c04009dc:	03212023          	sw	s2,32(sp)
c04009e0:	01312e23          	sw	s3,28(sp)
c04009e4:	01412c23          	sw	s4,24(sp)
c04009e8:	03010413          	addi	s0,sp,48
c04009ec:	00050993          	mv	s3,a0
c04009f0:	fd840913          	addi	s2,s0,-40
c04009f4:	00090513          	mv	a0,s2
c04009f8:	00006097          	auipc	ra,0x6
c04009fc:	928080e7          	jalr	-1752(ra) # c0406320 <_ZN4core3fmt9Formatter10debug_list17h71e3f6bad37ee980E>
c0400a00:	ff342223          	sw	s3,-28(s0)
c0400a04:	c0408537          	lui	a0,0xc0408
c0400a08:	72c50493          	addi	s1,a0,1836 # c040872c <ebss+0xfffe760c>
c0400a0c:	fe440a13          	addi	s4,s0,-28
c0400a10:	00090513          	mv	a0,s2
c0400a14:	000a0593          	mv	a1,s4
c0400a18:	00048613          	mv	a2,s1
c0400a1c:	00007097          	auipc	ra,0x7
c0400a20:	898080e7          	jalr	-1896(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400a24:	00498513          	addi	a0,s3,4
c0400a28:	fea42223          	sw	a0,-28(s0)
c0400a2c:	00090513          	mv	a0,s2
c0400a30:	000a0593          	mv	a1,s4
c0400a34:	00048613          	mv	a2,s1
c0400a38:	00007097          	auipc	ra,0x7
c0400a3c:	87c080e7          	jalr	-1924(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400a40:	00898513          	addi	a0,s3,8
c0400a44:	fea42223          	sw	a0,-28(s0)
c0400a48:	00090513          	mv	a0,s2
c0400a4c:	000a0593          	mv	a1,s4
c0400a50:	00048613          	mv	a2,s1
c0400a54:	00007097          	auipc	ra,0x7
c0400a58:	860080e7          	jalr	-1952(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400a5c:	00c98513          	addi	a0,s3,12
c0400a60:	fea42223          	sw	a0,-28(s0)
c0400a64:	00090513          	mv	a0,s2
c0400a68:	000a0593          	mv	a1,s4
c0400a6c:	00048613          	mv	a2,s1
c0400a70:	00007097          	auipc	ra,0x7
c0400a74:	844080e7          	jalr	-1980(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400a78:	01098513          	addi	a0,s3,16
c0400a7c:	fea42223          	sw	a0,-28(s0)
c0400a80:	00090513          	mv	a0,s2
c0400a84:	000a0593          	mv	a1,s4
c0400a88:	00048613          	mv	a2,s1
c0400a8c:	00007097          	auipc	ra,0x7
c0400a90:	828080e7          	jalr	-2008(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400a94:	01498513          	addi	a0,s3,20
c0400a98:	fea42223          	sw	a0,-28(s0)
c0400a9c:	00090513          	mv	a0,s2
c0400aa0:	000a0593          	mv	a1,s4
c0400aa4:	00048613          	mv	a2,s1
c0400aa8:	00007097          	auipc	ra,0x7
c0400aac:	80c080e7          	jalr	-2036(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400ab0:	01898513          	addi	a0,s3,24
c0400ab4:	fea42223          	sw	a0,-28(s0)
c0400ab8:	00090513          	mv	a0,s2
c0400abc:	000a0593          	mv	a1,s4
c0400ac0:	00048613          	mv	a2,s1
c0400ac4:	00006097          	auipc	ra,0x6
c0400ac8:	7f0080e7          	jalr	2032(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400acc:	01c98513          	addi	a0,s3,28
c0400ad0:	fea42223          	sw	a0,-28(s0)
c0400ad4:	00090513          	mv	a0,s2
c0400ad8:	000a0593          	mv	a1,s4
c0400adc:	00048613          	mv	a2,s1
c0400ae0:	00006097          	auipc	ra,0x6
c0400ae4:	7d4080e7          	jalr	2004(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400ae8:	02098513          	addi	a0,s3,32
c0400aec:	fea42223          	sw	a0,-28(s0)
c0400af0:	00090513          	mv	a0,s2
c0400af4:	000a0593          	mv	a1,s4
c0400af8:	00048613          	mv	a2,s1
c0400afc:	00006097          	auipc	ra,0x6
c0400b00:	7b8080e7          	jalr	1976(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400b04:	02498513          	addi	a0,s3,36
c0400b08:	fea42223          	sw	a0,-28(s0)
c0400b0c:	00090513          	mv	a0,s2
c0400b10:	000a0593          	mv	a1,s4
c0400b14:	00048613          	mv	a2,s1
c0400b18:	00006097          	auipc	ra,0x6
c0400b1c:	79c080e7          	jalr	1948(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400b20:	02898513          	addi	a0,s3,40
c0400b24:	fea42223          	sw	a0,-28(s0)
c0400b28:	00090513          	mv	a0,s2
c0400b2c:	000a0593          	mv	a1,s4
c0400b30:	00048613          	mv	a2,s1
c0400b34:	00006097          	auipc	ra,0x6
c0400b38:	780080e7          	jalr	1920(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400b3c:	02c98513          	addi	a0,s3,44
c0400b40:	fea42223          	sw	a0,-28(s0)
c0400b44:	00090513          	mv	a0,s2
c0400b48:	000a0593          	mv	a1,s4
c0400b4c:	00048613          	mv	a2,s1
c0400b50:	00006097          	auipc	ra,0x6
c0400b54:	764080e7          	jalr	1892(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400b58:	03098513          	addi	a0,s3,48
c0400b5c:	fea42223          	sw	a0,-28(s0)
c0400b60:	00090513          	mv	a0,s2
c0400b64:	000a0593          	mv	a1,s4
c0400b68:	00048613          	mv	a2,s1
c0400b6c:	00006097          	auipc	ra,0x6
c0400b70:	748080e7          	jalr	1864(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400b74:	03498513          	addi	a0,s3,52
c0400b78:	fea42223          	sw	a0,-28(s0)
c0400b7c:	00090513          	mv	a0,s2
c0400b80:	000a0593          	mv	a1,s4
c0400b84:	00048613          	mv	a2,s1
c0400b88:	00006097          	auipc	ra,0x6
c0400b8c:	72c080e7          	jalr	1836(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400b90:	03898513          	addi	a0,s3,56
c0400b94:	fea42223          	sw	a0,-28(s0)
c0400b98:	00090513          	mv	a0,s2
c0400b9c:	000a0593          	mv	a1,s4
c0400ba0:	00048613          	mv	a2,s1
c0400ba4:	00006097          	auipc	ra,0x6
c0400ba8:	710080e7          	jalr	1808(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400bac:	03c98513          	addi	a0,s3,60
c0400bb0:	fea42223          	sw	a0,-28(s0)
c0400bb4:	00090513          	mv	a0,s2
c0400bb8:	000a0593          	mv	a1,s4
c0400bbc:	00048613          	mv	a2,s1
c0400bc0:	00006097          	auipc	ra,0x6
c0400bc4:	6f4080e7          	jalr	1780(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400bc8:	04098513          	addi	a0,s3,64
c0400bcc:	fea42223          	sw	a0,-28(s0)
c0400bd0:	00090513          	mv	a0,s2
c0400bd4:	000a0593          	mv	a1,s4
c0400bd8:	00048613          	mv	a2,s1
c0400bdc:	00006097          	auipc	ra,0x6
c0400be0:	6d8080e7          	jalr	1752(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400be4:	04498513          	addi	a0,s3,68
c0400be8:	fea42223          	sw	a0,-28(s0)
c0400bec:	00090513          	mv	a0,s2
c0400bf0:	000a0593          	mv	a1,s4
c0400bf4:	00048613          	mv	a2,s1
c0400bf8:	00006097          	auipc	ra,0x6
c0400bfc:	6bc080e7          	jalr	1724(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400c00:	04898513          	addi	a0,s3,72
c0400c04:	fea42223          	sw	a0,-28(s0)
c0400c08:	00090513          	mv	a0,s2
c0400c0c:	000a0593          	mv	a1,s4
c0400c10:	00048613          	mv	a2,s1
c0400c14:	00006097          	auipc	ra,0x6
c0400c18:	6a0080e7          	jalr	1696(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400c1c:	04c98513          	addi	a0,s3,76
c0400c20:	fea42223          	sw	a0,-28(s0)
c0400c24:	00090513          	mv	a0,s2
c0400c28:	000a0593          	mv	a1,s4
c0400c2c:	00048613          	mv	a2,s1
c0400c30:	00006097          	auipc	ra,0x6
c0400c34:	684080e7          	jalr	1668(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400c38:	05098513          	addi	a0,s3,80
c0400c3c:	fea42223          	sw	a0,-28(s0)
c0400c40:	00090513          	mv	a0,s2
c0400c44:	000a0593          	mv	a1,s4
c0400c48:	00048613          	mv	a2,s1
c0400c4c:	00006097          	auipc	ra,0x6
c0400c50:	668080e7          	jalr	1640(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400c54:	05498513          	addi	a0,s3,84
c0400c58:	fea42223          	sw	a0,-28(s0)
c0400c5c:	00090513          	mv	a0,s2
c0400c60:	000a0593          	mv	a1,s4
c0400c64:	00048613          	mv	a2,s1
c0400c68:	00006097          	auipc	ra,0x6
c0400c6c:	64c080e7          	jalr	1612(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400c70:	05898513          	addi	a0,s3,88
c0400c74:	fea42223          	sw	a0,-28(s0)
c0400c78:	00090513          	mv	a0,s2
c0400c7c:	000a0593          	mv	a1,s4
c0400c80:	00048613          	mv	a2,s1
c0400c84:	00006097          	auipc	ra,0x6
c0400c88:	630080e7          	jalr	1584(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400c8c:	05c98513          	addi	a0,s3,92
c0400c90:	fea42223          	sw	a0,-28(s0)
c0400c94:	00090513          	mv	a0,s2
c0400c98:	000a0593          	mv	a1,s4
c0400c9c:	00048613          	mv	a2,s1
c0400ca0:	00006097          	auipc	ra,0x6
c0400ca4:	614080e7          	jalr	1556(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400ca8:	06098513          	addi	a0,s3,96
c0400cac:	fea42223          	sw	a0,-28(s0)
c0400cb0:	00090513          	mv	a0,s2
c0400cb4:	000a0593          	mv	a1,s4
c0400cb8:	00048613          	mv	a2,s1
c0400cbc:	00006097          	auipc	ra,0x6
c0400cc0:	5f8080e7          	jalr	1528(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400cc4:	06498513          	addi	a0,s3,100
c0400cc8:	fea42223          	sw	a0,-28(s0)
c0400ccc:	00090513          	mv	a0,s2
c0400cd0:	000a0593          	mv	a1,s4
c0400cd4:	00048613          	mv	a2,s1
c0400cd8:	00006097          	auipc	ra,0x6
c0400cdc:	5dc080e7          	jalr	1500(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400ce0:	06898513          	addi	a0,s3,104
c0400ce4:	fea42223          	sw	a0,-28(s0)
c0400ce8:	00090513          	mv	a0,s2
c0400cec:	000a0593          	mv	a1,s4
c0400cf0:	00048613          	mv	a2,s1
c0400cf4:	00006097          	auipc	ra,0x6
c0400cf8:	5c0080e7          	jalr	1472(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400cfc:	06c98513          	addi	a0,s3,108
c0400d00:	fea42223          	sw	a0,-28(s0)
c0400d04:	00090513          	mv	a0,s2
c0400d08:	000a0593          	mv	a1,s4
c0400d0c:	00048613          	mv	a2,s1
c0400d10:	00006097          	auipc	ra,0x6
c0400d14:	5a4080e7          	jalr	1444(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400d18:	07098513          	addi	a0,s3,112
c0400d1c:	fea42223          	sw	a0,-28(s0)
c0400d20:	00090513          	mv	a0,s2
c0400d24:	000a0593          	mv	a1,s4
c0400d28:	00048613          	mv	a2,s1
c0400d2c:	00006097          	auipc	ra,0x6
c0400d30:	588080e7          	jalr	1416(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400d34:	07498513          	addi	a0,s3,116
c0400d38:	fea42223          	sw	a0,-28(s0)
c0400d3c:	00090513          	mv	a0,s2
c0400d40:	000a0593          	mv	a1,s4
c0400d44:	00048613          	mv	a2,s1
c0400d48:	00006097          	auipc	ra,0x6
c0400d4c:	56c080e7          	jalr	1388(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400d50:	07898513          	addi	a0,s3,120
c0400d54:	fea42223          	sw	a0,-28(s0)
c0400d58:	00090513          	mv	a0,s2
c0400d5c:	000a0593          	mv	a1,s4
c0400d60:	00048613          	mv	a2,s1
c0400d64:	00006097          	auipc	ra,0x6
c0400d68:	550080e7          	jalr	1360(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400d6c:	07c98513          	addi	a0,s3,124
c0400d70:	fea42223          	sw	a0,-28(s0)
c0400d74:	00090513          	mv	a0,s2
c0400d78:	000a0593          	mv	a1,s4
c0400d7c:	00048613          	mv	a2,s1
c0400d80:	00006097          	auipc	ra,0x6
c0400d84:	534080e7          	jalr	1332(ra) # c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>
c0400d88:	00090513          	mv	a0,s2
c0400d8c:	00006097          	auipc	ra,0x6
c0400d90:	560080e7          	jalr	1376(ra) # c04072ec <_ZN4core3fmt8builders9DebugList6finish17h9c2d6bafc1c77c68E>
c0400d94:	01812a03          	lw	s4,24(sp)
c0400d98:	01c12983          	lw	s3,28(sp)
c0400d9c:	02012903          	lw	s2,32(sp)
c0400da0:	02412483          	lw	s1,36(sp)
c0400da4:	02812403          	lw	s0,40(sp)
c0400da8:	02c12083          	lw	ra,44(sp)
c0400dac:	03010113          	addi	sp,sp,48
c0400db0:	00008067          	ret

c0400db4 <_ZN50_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h51c6f06f01b85cddE>:
c0400db4:	fe010113          	addi	sp,sp,-32
c0400db8:	00112e23          	sw	ra,28(sp)
c0400dbc:	00812c23          	sw	s0,24(sp)
c0400dc0:	00912a23          	sw	s1,20(sp)
c0400dc4:	01212823          	sw	s2,16(sp)
c0400dc8:	01312623          	sw	s3,12(sp)
c0400dcc:	02010413          	addi	s0,sp,32
c0400dd0:	00052983          	lw	s3,0(a0)
c0400dd4:	c0408537          	lui	a0,0xc0408
c0400dd8:	20c50613          	addi	a2,a0,524 # c040820c <ebss+0xfffe70ec>
c0400ddc:	fe040913          	addi	s2,s0,-32
c0400de0:	00090513          	mv	a0,s2
c0400de4:	00900693          	li	a3,9
c0400de8:	00005097          	auipc	ra,0x5
c0400dec:	46c080e7          	jalr	1132(ra) # c0406254 <_ZN4core3fmt9Formatter12debug_struct17had6302012c33b047E>
c0400df0:	ff342423          	sw	s3,-24(s0)
c0400df4:	c0408537          	lui	a0,0xc0408
c0400df8:	21550593          	addi	a1,a0,533 # c0408215 <ebss+0xfffe70f5>
c0400dfc:	c0408537          	lui	a0,0xc0408
c0400e00:	21850713          	addi	a4,a0,536 # c0408218 <ebss+0xfffe70f8>
c0400e04:	fe840693          	addi	a3,s0,-24
c0400e08:	00090513          	mv	a0,s2
c0400e0c:	00100613          	li	a2,1
c0400e10:	00006097          	auipc	ra,0x6
c0400e14:	da4080e7          	jalr	-604(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0400e18:	08098513          	addi	a0,s3,128
c0400e1c:	fea42423          	sw	a0,-24(s0)
c0400e20:	c0408537          	lui	a0,0xc0408
c0400e24:	22850593          	addi	a1,a0,552 # c0408228 <ebss+0xfffe7108>
c0400e28:	c0408537          	lui	a0,0xc0408
c0400e2c:	23050713          	addi	a4,a0,560 # c0408230 <ebss+0xfffe7110>
c0400e30:	fe840693          	addi	a3,s0,-24
c0400e34:	00090513          	mv	a0,s2
c0400e38:	00700613          	li	a2,7
c0400e3c:	00006097          	auipc	ra,0x6
c0400e40:	d78080e7          	jalr	-648(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0400e44:	08498513          	addi	a0,s3,132
c0400e48:	fea42423          	sw	a0,-24(s0)
c0400e4c:	c0408537          	lui	a0,0xc0408
c0400e50:	25050593          	addi	a1,a0,592 # c0408250 <ebss+0xfffe7130>
c0400e54:	c0408537          	lui	a0,0xc0408
c0400e58:	25850493          	addi	s1,a0,600 # c0408258 <ebss+0xfffe7138>
c0400e5c:	fe840693          	addi	a3,s0,-24
c0400e60:	00090513          	mv	a0,s2
c0400e64:	00400613          	li	a2,4
c0400e68:	00048713          	mv	a4,s1
c0400e6c:	00006097          	auipc	ra,0x6
c0400e70:	d48080e7          	jalr	-696(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0400e74:	08898513          	addi	a0,s3,136
c0400e78:	fea42423          	sw	a0,-24(s0)
c0400e7c:	c0408537          	lui	a0,0xc0408
c0400e80:	26850593          	addi	a1,a0,616 # c0408268 <ebss+0xfffe7148>
c0400e84:	fe840693          	addi	a3,s0,-24
c0400e88:	00090513          	mv	a0,s2
c0400e8c:	00500613          	li	a2,5
c0400e90:	00048713          	mv	a4,s1
c0400e94:	00006097          	auipc	ra,0x6
c0400e98:	d20080e7          	jalr	-736(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0400e9c:	08c98513          	addi	a0,s3,140
c0400ea0:	fea42423          	sw	a0,-24(s0)
c0400ea4:	c0408537          	lui	a0,0xc0408
c0400ea8:	26d50593          	addi	a1,a0,621 # c040826d <ebss+0xfffe714d>
c0400eac:	c0408537          	lui	a0,0xc0408
c0400eb0:	27450713          	addi	a4,a0,628 # c0408274 <ebss+0xfffe7154>
c0400eb4:	fe840693          	addi	a3,s0,-24
c0400eb8:	00090513          	mv	a0,s2
c0400ebc:	00600613          	li	a2,6
c0400ec0:	00006097          	auipc	ra,0x6
c0400ec4:	cf4080e7          	jalr	-780(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0400ec8:	00090513          	mv	a0,s2
c0400ecc:	00006097          	auipc	ra,0x6
c0400ed0:	f40080e7          	jalr	-192(ra) # c0406e0c <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE>
c0400ed4:	00c12983          	lw	s3,12(sp)
c0400ed8:	01012903          	lw	s2,16(sp)
c0400edc:	01412483          	lw	s1,20(sp)
c0400ee0:	01812403          	lw	s0,24(sp)
c0400ee4:	01c12083          	lw	ra,28(sp)
c0400ee8:	02010113          	addi	sp,sp,32
c0400eec:	00008067          	ret

c0400ef0 <_ZN4core3ptr18real_drop_in_place17h05e3132e0d7d6571E>:
c0400ef0:	ff010113          	addi	sp,sp,-16
c0400ef4:	00112623          	sw	ra,12(sp)
c0400ef8:	00812423          	sw	s0,8(sp)
c0400efc:	01010413          	addi	s0,sp,16
c0400f00:	00812403          	lw	s0,8(sp)
c0400f04:	00c12083          	lw	ra,12(sp)
c0400f08:	01010113          	addi	sp,sp,16
c0400f0c:	00008067          	ret

c0400f10 <_ZN4core3ptr18real_drop_in_place17h43e9c2be226aa47eE>:
c0400f10:	ff010113          	addi	sp,sp,-16
c0400f14:	00112623          	sw	ra,12(sp)
c0400f18:	00812423          	sw	s0,8(sp)
c0400f1c:	01010413          	addi	s0,sp,16
c0400f20:	00812403          	lw	s0,8(sp)
c0400f24:	00c12083          	lw	ra,12(sp)
c0400f28:	01010113          	addi	sp,sp,16
c0400f2c:	00008067          	ret

c0400f30 <_ZN2os6memory6paging13PageTableImpl8new_bare17h35e3f5ce4d2d8e56E>:
c0400f30:	fe010113          	addi	sp,sp,-32
c0400f34:	00112e23          	sw	ra,28(sp)
c0400f38:	00812c23          	sw	s0,24(sp)
c0400f3c:	00912a23          	sw	s1,20(sp)
c0400f40:	01212823          	sw	s2,16(sp)
c0400f44:	02010413          	addi	s0,sp,32
c0400f48:	00050913          	mv	s2,a0
c0400f4c:	c04214b7          	lui	s1,0xc0421
c0400f50:	09048513          	addi	a0,s1,144 # c0421090 <ebss+0xffffff70>
c0400f54:	ffc57593          	andi	a1,a0,-4
c0400f58:	0ff00613          	li	a2,255
c0400f5c:	00100693          	li	a3,1
c0400f60:	1405a72f          	lr.w.aq	a4,(a1)
c0400f64:	00c777b3          	and	a5,a4,a2
c0400f68:	00079c63          	bnez	a5,c0400f80 <_ZN2os6memory6paging13PageTableImpl8new_bare17h35e3f5ce4d2d8e56E+0x50>
c0400f6c:	00d747b3          	xor	a5,a4,a3
c0400f70:	00c7f7b3          	and	a5,a5,a2
c0400f74:	00f747b3          	xor	a5,a4,a5
c0400f78:	18f5a7af          	sc.w	a5,a5,(a1)
c0400f7c:	fe0792e3          	bnez	a5,c0400f60 <_ZN2os6memory6paging13PageTableImpl8new_bare17h35e3f5ce4d2d8e56E+0x30>
c0400f80:	0ff77713          	andi	a4,a4,255
c0400f84:	00070a63          	beqz	a4,c0400f98 <_ZN2os6memory6paging13PageTableImpl8new_bare17h35e3f5ce4d2d8e56E+0x68>
c0400f88:	09048703          	lb	a4,144(s1)
c0400f8c:	0ff77713          	andi	a4,a4,255
c0400f90:	fe071ce3          	bnez	a4,c0400f88 <_ZN2os6memory6paging13PageTableImpl8new_bare17h35e3f5ce4d2d8e56E+0x58>
c0400f94:	fcdff06f          	j	c0400f60 <_ZN2os6memory6paging13PageTableImpl8new_bare17h35e3f5ce4d2d8e56E+0x30>
c0400f98:	00450513          	addi	a0,a0,4
c0400f9c:	fffff097          	auipc	ra,0xfffff
c0400fa0:	6f4080e7          	jalr	1780(ra) # c0400690 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E>
c0400fa4:	00c51513          	slli	a0,a0,0xc
c0400fa8:	00003097          	auipc	ra,0x3
c0400fac:	d98080e7          	jalr	-616(ra) # c0403d40 <_ZN5riscv4addr8PhysAddr3new17h21120840d2359522E>
c0400fb0:	0310000f          	fence	rw,w
c0400fb4:	08048823          	sb	zero,144(s1)
c0400fb8:	fea42423          	sw	a0,-24(s0)
c0400fbc:	fe840513          	addi	a0,s0,-24
c0400fc0:	00003097          	auipc	ra,0x3
c0400fc4:	dc8080e7          	jalr	-568(ra) # c0403d88 <_ZN5riscv4addr4Page13start_address17h413df9c80fd3f04bE>
c0400fc8:	fea42623          	sw	a0,-20(s0)
c0400fcc:	fec40513          	addi	a0,s0,-20
c0400fd0:	00003097          	auipc	ra,0x3
c0400fd4:	db8080e7          	jalr	-584(ra) # c0403d88 <_ZN5riscv4addr4Page13start_address17h413df9c80fd3f04bE>
c0400fd8:	400005b7          	lui	a1,0x40000
c0400fdc:	00b504b3          	add	s1,a0,a1
c0400fe0:	00048513          	mv	a0,s1
c0400fe4:	00002097          	auipc	ra,0x2
c0400fe8:	234080e7          	jalr	564(ra) # c0403218 <_ZN5riscv6paging10page_table9PageTable4zero17h0353d5334b97a818E>
c0400fec:	00048513          	mv	a0,s1
c0400ff0:	400005b7          	lui	a1,0x40000
c0400ff4:	00003097          	auipc	ra,0x3
c0400ff8:	e3c080e7          	jalr	-452(ra) # c0403e30 <_ZN5riscv6paging11multi_level13Rv32PageTable3new17h939bfc2e4d4e17efE>
c0400ffc:	fe842603          	lw	a2,-24(s0)
c0401000:	00c92423          	sw	a2,8(s2)
c0401004:	00a92023          	sw	a0,0(s2)
c0401008:	00b92223          	sw	a1,4(s2)
c040100c:	00092623          	sw	zero,12(s2)
c0401010:	01012903          	lw	s2,16(sp)
c0401014:	01412483          	lw	s1,20(sp)
c0401018:	01812403          	lw	s0,24(sp)
c040101c:	01c12083          	lw	ra,28(sp)
c0401020:	02010113          	addi	sp,sp,32
c0401024:	00008067          	ret

c0401028 <_ZN2os6memory6paging13PageTableImpl3map17hf03cdc0e9aedbab6E>:
c0401028:	fd010113          	addi	sp,sp,-48
c040102c:	02112623          	sw	ra,44(sp)
c0401030:	02812423          	sw	s0,40(sp)
c0401034:	02912223          	sw	s1,36(sp)
c0401038:	03212023          	sw	s2,32(sp)
c040103c:	01312e23          	sw	s3,28(sp)
c0401040:	01412c23          	sw	s4,24(sp)
c0401044:	03010413          	addi	s0,sp,48
c0401048:	00060493          	mv	s1,a2
c040104c:	00058913          	mv	s2,a1
c0401050:	00050993          	mv	s3,a0
c0401054:	00058513          	mv	a0,a1
c0401058:	00003097          	auipc	ra,0x3
c040105c:	ce8080e7          	jalr	-792(ra) # c0403d40 <_ZN5riscv4addr8PhysAddr3new17h21120840d2359522E>
c0401060:	00003097          	auipc	ra,0x3
c0401064:	d00080e7          	jalr	-768(ra) # c0403d60 <_ZN5riscv4addr4Page7of_addr17hb2e151b8985dd982E>
c0401068:	00050a13          	mv	s4,a0
c040106c:	00048513          	mv	a0,s1
c0401070:	00003097          	auipc	ra,0x3
c0401074:	cd0080e7          	jalr	-816(ra) # c0403d40 <_ZN5riscv4addr8PhysAddr3new17h21120840d2359522E>
c0401078:	00003097          	auipc	ra,0x3
c040107c:	ce8080e7          	jalr	-792(ra) # c0403d60 <_ZN5riscv4addr4Page7of_addr17hb2e151b8985dd982E>
c0401080:	00050693          	mv	a3,a0
c0401084:	fd040513          	addi	a0,s0,-48
c0401088:	fe040793          	addi	a5,s0,-32
c040108c:	00098593          	mv	a1,s3
c0401090:	000a0613          	mv	a2,s4
c0401094:	00700713          	li	a4,7
c0401098:	00000097          	auipc	ra,0x0
c040109c:	210080e7          	jalr	528(ra) # c04012a8 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E>
c04010a0:	00100513          	li	a0,1
c04010a4:	fd044583          	lbu	a1,-48(s0)
c04010a8:	06a58463          	beq	a1,a0,c0401110 <_ZN2os6memory6paging13PageTableImpl3map17hf03cdc0e9aedbab6E+0xe8>
c04010ac:	fd442503          	lw	a0,-44(s0)
c04010b0:	00002097          	auipc	ra,0x2
c04010b4:	344080e7          	jalr	836(ra) # c04033f4 <_ZN5riscv6paging9recursive11MapperFlush5flush17h62ff492823dcae5eE>
c04010b8:	00090513          	mv	a0,s2
c04010bc:	00003097          	auipc	ra,0x3
c04010c0:	c84080e7          	jalr	-892(ra) # c0403d40 <_ZN5riscv4addr8PhysAddr3new17h21120840d2359522E>
c04010c4:	00003097          	auipc	ra,0x3
c04010c8:	c9c080e7          	jalr	-868(ra) # c0403d60 <_ZN5riscv4addr4Page7of_addr17hb2e151b8985dd982E>
c04010cc:	00050493          	mv	s1,a0
c04010d0:	00098513          	mv	a0,s3
c04010d4:	00048593          	mv	a1,s1
c04010d8:	00003097          	auipc	ra,0x3
c04010dc:	ed0080e7          	jalr	-304(ra) # c0403fa8 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$9ref_entry17h1f6e02d2de4a7922E>
c04010e0:	06050063          	beqz	a0,c0401140 <_ZN2os6memory6paging13PageTableImpl3map17hf03cdc0e9aedbab6E+0x118>
c04010e4:	0099a823          	sw	s1,16(s3)
c04010e8:	00a9a623          	sw	a0,12(s3)
c04010ec:	00c98513          	addi	a0,s3,12
c04010f0:	01812a03          	lw	s4,24(sp)
c04010f4:	01c12983          	lw	s3,28(sp)
c04010f8:	02012903          	lw	s2,32(sp)
c04010fc:	02412483          	lw	s1,36(sp)
c0401100:	02812403          	lw	s0,40(sp)
c0401104:	02c12083          	lw	ra,44(sp)
c0401108:	03010113          	addi	sp,sp,48
c040110c:	00008067          	ret
c0401110:	fd140503          	lb	a0,-47(s0)
c0401114:	fca40fa3          	sb	a0,-33(s0)
c0401118:	c0408537          	lui	a0,0xc0408
c040111c:	28450513          	addi	a0,a0,644 # c0408284 <ebss+0xfffe7164>
c0401120:	c04085b7          	lui	a1,0xc0408
c0401124:	2c058693          	addi	a3,a1,704 # c04082c0 <ebss+0xfffe71a0>
c0401128:	fdf40613          	addi	a2,s0,-33
c040112c:	02b00593          	li	a1,43
c0401130:	00004097          	auipc	ra,0x4
c0401134:	8b8080e7          	jalr	-1864(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c0401138:	fffff097          	auipc	ra,0xfffff
c040113c:	7d4080e7          	jalr	2004(ra) # c040090c <abort>
c0401140:	c0408537          	lui	a0,0xc0408
c0401144:	2d050513          	addi	a0,a0,720 # c04082d0 <ebss+0xfffe71b0>
c0401148:	01500593          	li	a1,21
c040114c:	00003097          	auipc	ra,0x3
c0401150:	2a4080e7          	jalr	676(ra) # c04043f0 <_ZN4core6option13expect_failed17hbc653d0d840790aeE>
c0401154:	fffff097          	auipc	ra,0xfffff
c0401158:	7b8080e7          	jalr	1976(ra) # c040090c <abort>

c040115c <_ZN2os6memory6paging13PageTableImpl8activate17he375020bec18b556E>:
c040115c:	f9010113          	addi	sp,sp,-112
c0401160:	06112623          	sw	ra,108(sp)
c0401164:	06812423          	sw	s0,104(sp)
c0401168:	06912223          	sw	s1,100(sp)
c040116c:	07010413          	addi	s0,sp,112
c0401170:	00050493          	mv	s1,a0
c0401174:	18002573          	csrr	a0,satp
c0401178:	f8a42c23          	sw	a0,-104(s0)
c040117c:	00848513          	addi	a0,s1,8
c0401180:	00003097          	auipc	ra,0x3
c0401184:	c84080e7          	jalr	-892(ra) # c0403e04 <_ZN5riscv4addr4Page6number17h8e09a19e9f4b83b4E>
c0401188:	800005b7          	lui	a1,0x80000
c040118c:	00b56533          	or	a0,a0,a1
c0401190:	f8a42e23          	sw	a0,-100(s0)
c0401194:	c0405537          	lui	a0,0xc0405
c0401198:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c040119c:	faa42223          	sw	a0,-92(s0)
c04011a0:	fa840513          	addi	a0,s0,-88
c04011a4:	faa42023          	sw	a0,-96(s0)
c04011a8:	fc040513          	addi	a0,s0,-64
c04011ac:	faa42c23          	sw	a0,-72(s0)
c04011b0:	c0408537          	lui	a0,0xc0408
c04011b4:	31c50513          	addi	a0,a0,796 # c040831c <ebss+0xfffe71fc>
c04011b8:	faa42823          	sw	a0,-80(s0)
c04011bc:	c0408537          	lui	a0,0xc0408
c04011c0:	30c50513          	addi	a0,a0,780 # c040830c <ebss+0xfffe71ec>
c04011c4:	faa42423          	sw	a0,-88(s0)
c04011c8:	f9c40513          	addi	a0,s0,-100
c04011cc:	fca42423          	sw	a0,-56(s0)
c04011d0:	c0404537          	lui	a0,0xc0404
c04011d4:	29850513          	addi	a0,a0,664 # c0404298 <ebss+0xfffe3178>
c04011d8:	fca42623          	sw	a0,-52(s0)
c04011dc:	fca42223          	sw	a0,-60(s0)
c04011e0:	f9840513          	addi	a0,s0,-104
c04011e4:	fca42023          	sw	a0,-64(s0)
c04011e8:	00200513          	li	a0,2
c04011ec:	faa42e23          	sw	a0,-68(s0)
c04011f0:	faa42a23          	sw	a0,-76(s0)
c04011f4:	faa42623          	sw	a0,-84(s0)
c04011f8:	fd840593          	addi	a1,s0,-40
c04011fc:	fcb42a23          	sw	a1,-44(s0)
c0401200:	00100593          	li	a1,1
c0401204:	feb42623          	sw	a1,-20(s0)
c0401208:	fa040593          	addi	a1,s0,-96
c040120c:	feb42423          	sw	a1,-24(s0)
c0401210:	fca42e23          	sw	a0,-36(s0)
c0401214:	c0408537          	lui	a0,0xc0408
c0401218:	2e850513          	addi	a0,a0,744 # c04082e8 <ebss+0xfffe71c8>
c040121c:	fca42c23          	sw	a0,-40(s0)
c0401220:	c0408537          	lui	a0,0xc0408
c0401224:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c0401228:	fe042023          	sw	zero,-32(s0)
c040122c:	fd440513          	addi	a0,s0,-44
c0401230:	fd840613          	addi	a2,s0,-40
c0401234:	00004097          	auipc	ra,0x4
c0401238:	414080e7          	jalr	1044(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c040123c:	04051263          	bnez	a0,c0401280 <_ZN2os6memory6paging13PageTableImpl8activate17he375020bec18b556E+0x124>
c0401240:	f9842503          	lw	a0,-104(s0)
c0401244:	f9c42583          	lw	a1,-100(s0)
c0401248:	02a58263          	beq	a1,a0,c040126c <_ZN2os6memory6paging13PageTableImpl8activate17he375020bec18b556E+0x110>
c040124c:	00048513          	mv	a0,s1
c0401250:	fff00593          	li	a1,-1
c0401254:	80423637          	lui	a2,0x80423
c0401258:	00000097          	auipc	ra,0x0
c040125c:	dd0080e7          	jalr	-560(ra) # c0401028 <_ZN2os6memory6paging13PageTableImpl3map17hf03cdc0e9aedbab6E>
c0401260:	f9c42503          	lw	a0,-100(s0)
c0401264:	18051073          	csrw	satp,a0
c0401268:	12000073          	sfence.vma
c040126c:	06412483          	lw	s1,100(sp)
c0401270:	06812403          	lw	s0,104(sp)
c0401274:	06c12083          	lw	ra,108(sp)
c0401278:	07010113          	addi	sp,sp,112
c040127c:	00008067          	ret
c0401280:	c0408537          	lui	a0,0xc0408
c0401284:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c0401288:	c04085b7          	lui	a1,0xc0408
c040128c:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c0401290:	fd840613          	addi	a2,s0,-40
c0401294:	02b00593          	li	a1,43
c0401298:	00003097          	auipc	ra,0x3
c040129c:	750080e7          	jalr	1872(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c04012a0:	fffff097          	auipc	ra,0xfffff
c04012a4:	66c080e7          	jalr	1644(ra) # c040090c <abort>

c04012a8 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E>:
c04012a8:	fd010113          	addi	sp,sp,-48
c04012ac:	02112623          	sw	ra,44(sp)
c04012b0:	02812423          	sw	s0,40(sp)
c04012b4:	02912223          	sw	s1,36(sp)
c04012b8:	03212023          	sw	s2,32(sp)
c04012bc:	01312e23          	sw	s3,28(sp)
c04012c0:	01412c23          	sw	s4,24(sp)
c04012c4:	01512a23          	sw	s5,20(sp)
c04012c8:	01612823          	sw	s6,16(sp)
c04012cc:	01712623          	sw	s7,12(sp)
c04012d0:	03010413          	addi	s0,sp,48
c04012d4:	00070913          	mv	s2,a4
c04012d8:	00068993          	mv	s3,a3
c04012dc:	00058b93          	mv	s7,a1
c04012e0:	00050a13          	mv	s4,a0
c04012e4:	fcc42c23          	sw	a2,-40(s0)
c04012e8:	fd840513          	addi	a0,s0,-40
c04012ec:	00003097          	auipc	ra,0x3
c04012f0:	ac0080e7          	jalr	-1344(ra) # c0403dac <_ZN5riscv4addr4Page8p2_index17hce2d92ae69426988E>
c04012f4:	00050a93          	mv	s5,a0
c04012f8:	000ba503          	lw	a0,0(s7)
c04012fc:	000a8593          	mv	a1,s5
c0401300:	00002097          	auipc	ra,0x2
c0401304:	f44080e7          	jalr	-188(ra) # c0403244 <_ZN93_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h11ac6d9b7bf33147E>
c0401308:	00002097          	auipc	ra,0x2
c040130c:	fd4080e7          	jalr	-44(ra) # c04032dc <_ZN5riscv6paging10page_table14PageTableEntry9is_unused17h094aa2cd913bf07aE>
c0401310:	04050863          	beqz	a0,c0401360 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0xb8>
c0401314:	c04214b7          	lui	s1,0xc0421
c0401318:	09048513          	addi	a0,s1,144 # c0421090 <ebss+0xffffff70>
c040131c:	ffc57593          	andi	a1,a0,-4
c0401320:	0ff00613          	li	a2,255
c0401324:	00100693          	li	a3,1
c0401328:	1405a72f          	lr.w.aq	a4,(a1)
c040132c:	00c777b3          	and	a5,a4,a2
c0401330:	00079c63          	bnez	a5,c0401348 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0xa0>
c0401334:	00d747b3          	xor	a5,a4,a3
c0401338:	00c7f7b3          	and	a5,a5,a2
c040133c:	00f747b3          	xor	a5,a4,a5
c0401340:	18f5a7af          	sc.w	a5,a5,(a1)
c0401344:	fe0792e3          	bnez	a5,c0401328 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0x80>
c0401348:	0ff77713          	andi	a4,a4,255
c040134c:	02070c63          	beqz	a4,c0401384 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0xdc>
c0401350:	09048703          	lb	a4,144(s1)
c0401354:	0ff77713          	andi	a4,a4,255
c0401358:	fe071ce3          	bnez	a4,c0401350 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0xa8>
c040135c:	fcdff06f          	j	c0401328 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0x80>
c0401360:	000ba503          	lw	a0,0(s7)
c0401364:	000a8593          	mv	a1,s5
c0401368:	00002097          	auipc	ra,0x2
c040136c:	edc080e7          	jalr	-292(ra) # c0403244 <_ZN93_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h11ac6d9b7bf33147E>
c0401370:	00002097          	auipc	ra,0x2
c0401374:	f94080e7          	jalr	-108(ra) # c0403304 <_ZN5riscv6paging10page_table14PageTableEntry4addr17h19e6fb0fae0cdb74E>
c0401378:	004ba583          	lw	a1,4(s7)
c040137c:	00a584b3          	add	s1,a1,a0
c0401380:	05c0006f          	j	c04013dc <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0x134>
c0401384:	00450513          	addi	a0,a0,4
c0401388:	fffff097          	auipc	ra,0xfffff
c040138c:	308080e7          	jalr	776(ra) # c0400690 <_ZN2os6memory15frame_allocator20SegmentTreeAllocator5alloc17h0bb77b53caffcc57E>
c0401390:	00c51513          	slli	a0,a0,0xc
c0401394:	00003097          	auipc	ra,0x3
c0401398:	9ac080e7          	jalr	-1620(ra) # c0403d40 <_ZN5riscv4addr8PhysAddr3new17h21120840d2359522E>
c040139c:	00050b13          	mv	s6,a0
c04013a0:	0310000f          	fence	rw,w
c04013a4:	08048823          	sb	zero,144(s1)
c04013a8:	000ba503          	lw	a0,0(s7)
c04013ac:	000a8593          	mv	a1,s5
c04013b0:	00002097          	auipc	ra,0x2
c04013b4:	ee0080e7          	jalr	-288(ra) # c0403290 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h5302252705ba1faeE>
c04013b8:	000b0593          	mv	a1,s6
c04013bc:	00100613          	li	a2,1
c04013c0:	00002097          	auipc	ra,0x2
c04013c4:	f74080e7          	jalr	-140(ra) # c0403334 <_ZN5riscv6paging10page_table14PageTableEntry3set17h50c5cd25638856a4E>
c04013c8:	004ba503          	lw	a0,4(s7)
c04013cc:	016504b3          	add	s1,a0,s6
c04013d0:	00048513          	mv	a0,s1
c04013d4:	00002097          	auipc	ra,0x2
c04013d8:	e44080e7          	jalr	-444(ra) # c0403218 <_ZN5riscv6paging10page_table9PageTable4zero17h0353d5334b97a818E>
c04013dc:	fd840513          	addi	a0,s0,-40
c04013e0:	00003097          	auipc	ra,0x3
c04013e4:	9f8080e7          	jalr	-1544(ra) # c0403dd8 <_ZN5riscv4addr4Page8p1_index17h585726013caa3722E>
c04013e8:	00050593          	mv	a1,a0
c04013ec:	00048513          	mv	a0,s1
c04013f0:	00002097          	auipc	ra,0x2
c04013f4:	e54080e7          	jalr	-428(ra) # c0403244 <_ZN93_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h11ac6d9b7bf33147E>
c04013f8:	00002097          	auipc	ra,0x2
c04013fc:	ee4080e7          	jalr	-284(ra) # c04032dc <_ZN5riscv6paging10page_table14PageTableEntry9is_unused17h094aa2cd913bf07aE>
c0401400:	04050463          	beqz	a0,c0401448 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0x1a0>
c0401404:	fd840513          	addi	a0,s0,-40
c0401408:	00003097          	auipc	ra,0x3
c040140c:	9d0080e7          	jalr	-1584(ra) # c0403dd8 <_ZN5riscv4addr4Page8p1_index17h585726013caa3722E>
c0401410:	00050593          	mv	a1,a0
c0401414:	00048513          	mv	a0,s1
c0401418:	00002097          	auipc	ra,0x2
c040141c:	e78080e7          	jalr	-392(ra) # c0403290 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h5302252705ba1faeE>
c0401420:	00098593          	mv	a1,s3
c0401424:	00090613          	mv	a2,s2
c0401428:	00002097          	auipc	ra,0x2
c040142c:	f0c080e7          	jalr	-244(ra) # c0403334 <_ZN5riscv6paging10page_table14PageTableEntry3set17h50c5cd25638856a4E>
c0401430:	fd842503          	lw	a0,-40(s0)
c0401434:	00002097          	auipc	ra,0x2
c0401438:	fa0080e7          	jalr	-96(ra) # c04033d4 <_ZN5riscv6paging9recursive11MapperFlush3new17hbdbc2d9296e5a7eeE>
c040143c:	00aa2223          	sw	a0,4(s4)
c0401440:	00000513          	li	a0,0
c0401444:	0100006f          	j	c0401454 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$6map_to17hed7c27acc62337b5E+0x1ac>
c0401448:	00200513          	li	a0,2
c040144c:	00aa00a3          	sb	a0,1(s4)
c0401450:	00100513          	li	a0,1
c0401454:	00aa0023          	sb	a0,0(s4)
c0401458:	00c12b83          	lw	s7,12(sp)
c040145c:	01012b03          	lw	s6,16(sp)
c0401460:	01412a83          	lw	s5,20(sp)
c0401464:	01812a03          	lw	s4,24(sp)
c0401468:	01c12983          	lw	s3,28(sp)
c040146c:	02012903          	lw	s2,32(sp)
c0401470:	02412483          	lw	s1,36(sp)
c0401474:	02812403          	lw	s0,40(sp)
c0401478:	02c12083          	lw	ra,44(sp)
c040147c:	03010113          	addi	sp,sp,48
c0401480:	00008067          	ret

c0401484 <rust_main>:
c0401484:	f8010113          	addi	sp,sp,-128
c0401488:	06112e23          	sw	ra,124(sp)
c040148c:	06812c23          	sw	s0,120(sp)
c0401490:	06912a23          	sw	s1,116(sp)
c0401494:	07212823          	sw	s2,112(sp)
c0401498:	07312623          	sw	s3,108(sp)
c040149c:	07412423          	sw	s4,104(sp)
c04014a0:	07512223          	sw	s5,100(sp)
c04014a4:	07612023          	sw	s6,96(sp)
c04014a8:	05712e23          	sw	s7,92(sp)
c04014ac:	05812c23          	sw	s8,88(sp)
c04014b0:	05912a23          	sw	s9,84(sp)
c04014b4:	05a12823          	sw	s10,80(sp)
c04014b8:	08010413          	addi	s0,sp,128
c04014bc:	f8840c13          	addi	s8,s0,-120
c04014c0:	fb842023          	sw	s8,-96(s0)
c04014c4:	00400513          	li	a0,4
c04014c8:	f8a42c23          	sw	a0,-104(s0)
c04014cc:	c0408537          	lui	a0,0xc0408
c04014d0:	39c50513          	addi	a0,a0,924 # c040839c <ebss+0xfffe727c>
c04014d4:	f8a42423          	sw	a0,-120(s0)
c04014d8:	c0405537          	lui	a0,0xc0405
c04014dc:	5dc50493          	addi	s1,a0,1500 # c04055dc <ebss+0xfffe44bc>
c04014e0:	fa942223          	sw	s1,-92(s0)
c04014e4:	f8042e23          	sw	zero,-100(s0)
c04014e8:	f8042823          	sw	zero,-112(s0)
c04014ec:	00100a93          	li	s5,1
c04014f0:	f9542623          	sw	s5,-116(s0)
c04014f4:	fb840513          	addi	a0,s0,-72
c04014f8:	f8a42023          	sw	a0,-128(s0)
c04014fc:	fd542623          	sw	s5,-52(s0)
c0401500:	fa040c93          	addi	s9,s0,-96
c0401504:	fd942423          	sw	s9,-56(s0)
c0401508:	00200b13          	li	s6,2
c040150c:	fb642e23          	sw	s6,-68(s0)
c0401510:	c0408537          	lui	a0,0xc0408
c0401514:	36850b93          	addi	s7,a0,872 # c0408368 <ebss+0xfffe7248>
c0401518:	fb742c23          	sw	s7,-72(s0)
c040151c:	fc042023          	sw	zero,-64(s0)
c0401520:	c0408537          	lui	a0,0xc0408
c0401524:	6d850a13          	addi	s4,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c0401528:	f8040913          	addi	s2,s0,-128
c040152c:	fb840993          	addi	s3,s0,-72
c0401530:	00090513          	mv	a0,s2
c0401534:	000a0593          	mv	a1,s4
c0401538:	00098613          	mv	a2,s3
c040153c:	00004097          	auipc	ra,0x4
c0401540:	10c080e7          	jalr	268(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0401544:	0c051463          	bnez	a0,c040160c <rust_main+0x188>
c0401548:	80421537          	lui	a0,0x80421
c040154c:	12050d13          	addi	s10,a0,288 # 80421120 <ebss+0xc0000000>
c0401550:	00000097          	auipc	ra,0x0
c0401554:	2b8080e7          	jalr	696(ra) # c0401808 <_ZN2os9interrupt4init17h8765cd9c73109bcbE>
c0401558:	f8942223          	sw	s1,-124(s0)
c040155c:	f9842023          	sw	s8,-128(s0)
c0401560:	f9942c23          	sw	s9,-104(s0)
c0401564:	c0408537          	lui	a0,0xc0408
c0401568:	3dc50513          	addi	a0,a0,988 # c04083dc <ebss+0xfffe72bc>
c040156c:	f8a42823          	sw	a0,-112(s0)
c0401570:	00300513          	li	a0,3
c0401574:	f8a42623          	sw	a0,-116(s0)
c0401578:	c0408537          	lui	a0,0xc0408
c040157c:	3c450513          	addi	a0,a0,964 # c04083c4 <ebss+0xfffe72a4>
c0401580:	f8a42423          	sw	a0,-120(s0)
c0401584:	c0408537          	lui	a0,0xc0408
c0401588:	24050513          	addi	a0,a0,576 # c0408240 <ebss+0xfffe7120>
c040158c:	faa42423          	sw	a0,-88(s0)
c0401590:	c0404537          	lui	a0,0xc0404
c0401594:	29850513          	addi	a0,a0,664 # c0404298 <ebss+0xfffe3178>
c0401598:	faa42623          	sw	a0,-84(s0)
c040159c:	faa42223          	sw	a0,-92(s0)
c04015a0:	fb040513          	addi	a0,s0,-80
c04015a4:	faa42023          	sw	a0,-96(s0)
c04015a8:	00cd5513          	srli	a0,s10,0xc
c04015ac:	00350493          	addi	s1,a0,3
c04015b0:	fa942823          	sw	s1,-80(s0)
c04015b4:	f9642e23          	sw	s6,-100(s0)
c04015b8:	f9642a23          	sw	s6,-108(s0)
c04015bc:	fb342a23          	sw	s3,-76(s0)
c04015c0:	fd542623          	sw	s5,-52(s0)
c04015c4:	fd242423          	sw	s2,-56(s0)
c04015c8:	fb642e23          	sw	s6,-68(s0)
c04015cc:	fb742c23          	sw	s7,-72(s0)
c04015d0:	fc042023          	sw	zero,-64(s0)
c04015d4:	fb440513          	addi	a0,s0,-76
c04015d8:	fb840613          	addi	a2,s0,-72
c04015dc:	000a0593          	mv	a1,s4
c04015e0:	00004097          	auipc	ra,0x4
c04015e4:	068080e7          	jalr	104(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c04015e8:	02051263          	bnez	a0,c040160c <rust_main+0x188>
c04015ec:	00080537          	lui	a0,0x80
c04015f0:	44050593          	addi	a1,a0,1088 # 80440 <XLENB+0x8043c>
c04015f4:	00048513          	mv	a0,s1
c04015f8:	fffff097          	auipc	ra,0xfffff
c04015fc:	a80080e7          	jalr	-1408(ra) # c0400078 <_ZN2os6memory4init17h4b64a4a828ecee01E>
c0401600:	00001097          	auipc	ra,0x1
c0401604:	334080e7          	jalr	820(ra) # c0402934 <_ZN2os5clock4init17ha2af600859813ca7E>
c0401608:	0000006f          	j	c0401608 <rust_main+0x184>
c040160c:	c0408537          	lui	a0,0xc0408
c0401610:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c0401614:	c04085b7          	lui	a1,0xc0408
c0401618:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c040161c:	fb840613          	addi	a2,s0,-72
c0401620:	02b00593          	li	a1,43
c0401624:	00003097          	auipc	ra,0x3
c0401628:	3c4080e7          	jalr	964(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c040162c:	fffff097          	auipc	ra,0xfffff
c0401630:	2e0080e7          	jalr	736(ra) # c040090c <abort>

c0401634 <__alltraps>:
c0401634:	14011173          	csrrw	sp,sscratch,sp
c0401638:	00011463          	bnez	sp,c0401640 <trap_from_user>

c040163c <trap_from_kernel>:
c040163c:	14002173          	csrr	sp,sscratch

c0401640 <trap_from_user>:
c0401640:	f7010113          	addi	sp,sp,-144
c0401644:	00112223          	sw	ra,4(sp)
c0401648:	00312623          	sw	gp,12(sp)
c040164c:	00412823          	sw	tp,16(sp)
c0401650:	00512a23          	sw	t0,20(sp)
c0401654:	00612c23          	sw	t1,24(sp)
c0401658:	00712e23          	sw	t2,28(sp)
c040165c:	02812023          	sw	s0,32(sp)
c0401660:	02912223          	sw	s1,36(sp)
c0401664:	02a12423          	sw	a0,40(sp)
c0401668:	02b12623          	sw	a1,44(sp)
c040166c:	02c12823          	sw	a2,48(sp)
c0401670:	02d12a23          	sw	a3,52(sp)
c0401674:	02e12c23          	sw	a4,56(sp)
c0401678:	02f12e23          	sw	a5,60(sp)
c040167c:	05012023          	sw	a6,64(sp)
c0401680:	05112223          	sw	a7,68(sp)
c0401684:	05212423          	sw	s2,72(sp)
c0401688:	05312623          	sw	s3,76(sp)
c040168c:	05412823          	sw	s4,80(sp)
c0401690:	05512a23          	sw	s5,84(sp)
c0401694:	05612c23          	sw	s6,88(sp)
c0401698:	05712e23          	sw	s7,92(sp)
c040169c:	07812023          	sw	s8,96(sp)
c04016a0:	07912223          	sw	s9,100(sp)
c04016a4:	07a12423          	sw	s10,104(sp)
c04016a8:	07b12623          	sw	s11,108(sp)
c04016ac:	07c12823          	sw	t3,112(sp)
c04016b0:	07d12a23          	sw	t4,116(sp)
c04016b4:	07e12c23          	sw	t5,120(sp)
c04016b8:	07f12e23          	sw	t6,124(sp)
c04016bc:	14001473          	csrrw	s0,sscratch,zero
c04016c0:	100024f3          	csrr	s1,sstatus
c04016c4:	14102973          	csrr	s2,sepc
c04016c8:	143029f3          	csrr	s3,stval
c04016cc:	14202a73          	csrr	s4,scause
c04016d0:	00812423          	sw	s0,8(sp)
c04016d4:	08912023          	sw	s1,128(sp)
c04016d8:	09212223          	sw	s2,132(sp)
c04016dc:	09312423          	sw	s3,136(sp)
c04016e0:	09412623          	sw	s4,140(sp)
c04016e4:	00010513          	mv	a0,sp
c04016e8:	1fc000ef          	jal	ra,c04018e4 <rust_trap>

c04016ec <__trapret>:
c04016ec:	08012483          	lw	s1,128(sp)
c04016f0:	08412903          	lw	s2,132(sp)
c04016f4:	1004f413          	andi	s0,s1,256
c04016f8:	00041663          	bnez	s0,c0401704 <_to_kernel>

c04016fc <_to_user>:
c04016fc:	09010413          	addi	s0,sp,144
c0401700:	14041073          	csrw	sscratch,s0

c0401704 <_to_kernel>:
c0401704:	10049073          	csrw	sstatus,s1
c0401708:	14191073          	csrw	sepc,s2
c040170c:	00412083          	lw	ra,4(sp)
c0401710:	00c12183          	lw	gp,12(sp)
c0401714:	01012203          	lw	tp,16(sp)
c0401718:	01412283          	lw	t0,20(sp)
c040171c:	01812303          	lw	t1,24(sp)
c0401720:	01c12383          	lw	t2,28(sp)
c0401724:	02012403          	lw	s0,32(sp)
c0401728:	02412483          	lw	s1,36(sp)
c040172c:	02812503          	lw	a0,40(sp)
c0401730:	02c12583          	lw	a1,44(sp)
c0401734:	03012603          	lw	a2,48(sp)
c0401738:	03412683          	lw	a3,52(sp)
c040173c:	03812703          	lw	a4,56(sp)
c0401740:	03c12783          	lw	a5,60(sp)
c0401744:	04012803          	lw	a6,64(sp)
c0401748:	04412883          	lw	a7,68(sp)
c040174c:	04812903          	lw	s2,72(sp)
c0401750:	04c12983          	lw	s3,76(sp)
c0401754:	05012a03          	lw	s4,80(sp)
c0401758:	05412a83          	lw	s5,84(sp)
c040175c:	05812b03          	lw	s6,88(sp)
c0401760:	05c12b83          	lw	s7,92(sp)
c0401764:	06012c03          	lw	s8,96(sp)
c0401768:	06412c83          	lw	s9,100(sp)
c040176c:	06812d03          	lw	s10,104(sp)
c0401770:	06c12d83          	lw	s11,108(sp)
c0401774:	07012e03          	lw	t3,112(sp)
c0401778:	07412e83          	lw	t4,116(sp)
c040177c:	07812f03          	lw	t5,120(sp)
c0401780:	07c12f83          	lw	t6,124(sp)
c0401784:	00812103          	lw	sp,8(sp)
c0401788:	10200073          	sret

c040178c <_ZN5riscv8register6scause6Scause5cause17h9c00823886b74540E>:
c040178c:	ff010113          	addi	sp,sp,-16
c0401790:	00112623          	sw	ra,12(sp)
c0401794:	00812423          	sw	s0,8(sp)
c0401798:	00912223          	sw	s1,4(sp)
c040179c:	01212023          	sw	s2,0(sp)
c04017a0:	01010413          	addi	s0,sp,16
c04017a4:	00050493          	mv	s1,a0
c04017a8:	01f00593          	li	a1,31
c04017ac:	00003097          	auipc	ra,0x3
c04017b0:	a50080e7          	jalr	-1456(ra) # c04041fc <_ZN43_$LT$i32$u20$as$u20$bit_field..BitField$GT$7get_bit17hf8fe63426508bfb2E>
c04017b4:	00050913          	mv	s2,a0
c04017b8:	00048513          	mv	a0,s1
c04017bc:	00002097          	auipc	ra,0x2
c04017c0:	044080e7          	jalr	68(ra) # c0403800 <_ZN5riscv8register6scause6Scause4code17h4ccc164ddb1b2037E>
c04017c4:	00090c63          	beqz	s2,c04017dc <_ZN5riscv8register6scause6Scause5cause17h9c00823886b74540E+0x50>
c04017c8:	00002097          	auipc	ra,0x2
c04017cc:	e14080e7          	jalr	-492(ra) # c04035dc <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E>
c04017d0:	0ff57593          	andi	a1,a0,255
c04017d4:	00000513          	li	a0,0
c04017d8:	0180006f          	j	c04017f0 <_ZN5riscv8register6scause6Scause5cause17h9c00823886b74540E+0x64>
c04017dc:	00002097          	auipc	ra,0x2
c04017e0:	ec4080e7          	jalr	-316(ra) # c04036a0 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE>
c04017e4:	00050593          	mv	a1,a0
c04017e8:	00100513          	li	a0,1
c04017ec:	0ff5f593          	andi	a1,a1,255
c04017f0:	00012903          	lw	s2,0(sp)
c04017f4:	00412483          	lw	s1,4(sp)
c04017f8:	00812403          	lw	s0,8(sp)
c04017fc:	00c12083          	lw	ra,12(sp)
c0401800:	01010113          	addi	sp,sp,16
c0401804:	00008067          	ret

c0401808 <_ZN2os9interrupt4init17h8765cd9c73109bcbE>:
c0401808:	fb010113          	addi	sp,sp,-80
c040180c:	04112623          	sw	ra,76(sp)
c0401810:	04812423          	sw	s0,72(sp)
c0401814:	05010413          	addi	s0,sp,80
c0401818:	14001073          	csrw	sscratch,zero
c040181c:	c0401537          	lui	a0,0xc0401
c0401820:	63450513          	addi	a0,a0,1588 # c0401634 <ebss+0xfffe0514>
c0401824:	10551073          	csrw	stvec,a0
c0401828:	00200513          	li	a0,2
c040182c:	10052073          	csrs	sstatus,a0
c0401830:	c04055b7          	lui	a1,0xc0405
c0401834:	5dc58593          	addi	a1,a1,1500 # c04055dc <ebss+0xfffe44bc>
c0401838:	fab42e23          	sw	a1,-68(s0)
c040183c:	fc040593          	addi	a1,s0,-64
c0401840:	fab42c23          	sw	a1,-72(s0)
c0401844:	00400593          	li	a1,4
c0401848:	fcb42823          	sw	a1,-48(s0)
c040184c:	c04085b7          	lui	a1,0xc0408
c0401850:	45458593          	addi	a1,a1,1108 # c0408454 <ebss+0xfffe7334>
c0401854:	fcb42023          	sw	a1,-64(s0)
c0401858:	fc042a23          	sw	zero,-44(s0)
c040185c:	fc042423          	sw	zero,-56(s0)
c0401860:	00100593          	li	a1,1
c0401864:	fcb42223          	sw	a1,-60(s0)
c0401868:	fe040613          	addi	a2,s0,-32
c040186c:	fcc42e23          	sw	a2,-36(s0)
c0401870:	feb42a23          	sw	a1,-12(s0)
c0401874:	fb840593          	addi	a1,s0,-72
c0401878:	feb42823          	sw	a1,-16(s0)
c040187c:	fea42223          	sw	a0,-28(s0)
c0401880:	c0408537          	lui	a0,0xc0408
c0401884:	42850513          	addi	a0,a0,1064 # c0408428 <ebss+0xfffe7308>
c0401888:	fea42023          	sw	a0,-32(s0)
c040188c:	c0408537          	lui	a0,0xc0408
c0401890:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c0401894:	fe042423          	sw	zero,-24(s0)
c0401898:	fdc40513          	addi	a0,s0,-36
c040189c:	fe040613          	addi	a2,s0,-32
c04018a0:	00004097          	auipc	ra,0x4
c04018a4:	da8080e7          	jalr	-600(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c04018a8:	00051a63          	bnez	a0,c04018bc <_ZN2os9interrupt4init17h8765cd9c73109bcbE+0xb4>
c04018ac:	04812403          	lw	s0,72(sp)
c04018b0:	04c12083          	lw	ra,76(sp)
c04018b4:	05010113          	addi	sp,sp,80
c04018b8:	00008067          	ret
c04018bc:	c0408537          	lui	a0,0xc0408
c04018c0:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c04018c4:	c04085b7          	lui	a1,0xc0408
c04018c8:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c04018cc:	fe040613          	addi	a2,s0,-32
c04018d0:	02b00593          	li	a1,43
c04018d4:	00003097          	auipc	ra,0x3
c04018d8:	114080e7          	jalr	276(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c04018dc:	fffff097          	auipc	ra,0xfffff
c04018e0:	030080e7          	jalr	48(ra) # c040090c <abort>

c04018e4 <rust_trap>:
c04018e4:	fa010113          	addi	sp,sp,-96
c04018e8:	04112e23          	sw	ra,92(sp)
c04018ec:	04812c23          	sw	s0,88(sp)
c04018f0:	04912a23          	sw	s1,84(sp)
c04018f4:	05212823          	sw	s2,80(sp)
c04018f8:	05312623          	sw	s3,76(sp)
c04018fc:	06010413          	addi	s0,sp,96
c0401900:	00050913          	mv	s2,a0
c0401904:	faa42223          	sw	a0,-92(s0)
c0401908:	08c50493          	addi	s1,a0,140
c040190c:	00048513          	mv	a0,s1
c0401910:	01f00593          	li	a1,31
c0401914:	00003097          	auipc	ra,0x3
c0401918:	8e8080e7          	jalr	-1816(ra) # c04041fc <_ZN43_$LT$i32$u20$as$u20$bit_field..BitField$GT$7get_bit17hf8fe63426508bfb2E>
c040191c:	00050993          	mv	s3,a0
c0401920:	00048513          	mv	a0,s1
c0401924:	00002097          	auipc	ra,0x2
c0401928:	edc080e7          	jalr	-292(ra) # c0403800 <_ZN5riscv8register6scause6Scause4code17h4ccc164ddb1b2037E>
c040192c:	10098663          	beqz	s3,c0401a38 <rust_trap+0x154>
c0401930:	00002097          	auipc	ra,0x2
c0401934:	cac080e7          	jalr	-852(ra) # c04035dc <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E>
c0401938:	0ff57513          	andi	a0,a0,255
c040193c:	00300593          	li	a1,3
c0401940:	14b51263          	bne	a0,a1,c0401a84 <rust_trap+0x1a0>
c0401944:	c81025f3          	rdtimeh	a1
c0401948:	c0102673          	rdtime	a2
c040194c:	c8102573          	rdtimeh	a0
c0401950:	fea59ae3          	bne	a1,a0,c0401944 <rust_trap+0x60>
c0401954:	3e860513          	addi	a0,a2,1000 # 804233e8 <ebss+0xc00022c8>
c0401958:	00c53633          	sltu	a2,a0,a2
c040195c:	00c585b3          	add	a1,a1,a2
c0401960:	00000613          	li	a2,0
c0401964:	00000893          	li	a7,0
c0401968:	00000073          	ecall
c040196c:	c0421537          	lui	a0,0xc0421
c0401970:	12052583          	lw	a1,288(a0) # c0421120 <ebss+0x0>
c0401974:	00158593          	addi	a1,a1,1
c0401978:	12b52023          	sw	a1,288(a0)
c040197c:	ccccd537          	lui	a0,0xccccd
c0401980:	ccd50513          	addi	a0,a0,-819 # cccccccd <ebss+0xc8abbad>
c0401984:	02a5b533          	mulhu	a0,a1,a0
c0401988:	00355513          	srli	a0,a0,0x3
c040198c:	00a00613          	li	a2,10
c0401990:	02c50533          	mul	a0,a0,a2
c0401994:	40a58533          	sub	a0,a1,a0
c0401998:	08051263          	bnez	a0,c0401a1c <rust_trap+0x138>
c040199c:	fb040513          	addi	a0,s0,-80
c04019a0:	faa42423          	sw	a0,-88(s0)
c04019a4:	00400513          	li	a0,4
c04019a8:	fca42023          	sw	a0,-64(s0)
c04019ac:	c0408537          	lui	a0,0xc0408
c04019b0:	5d850513          	addi	a0,a0,1496 # c04085d8 <ebss+0xfffe74b8>
c04019b4:	faa42823          	sw	a0,-80(s0)
c04019b8:	c0405537          	lui	a0,0xc0405
c04019bc:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c04019c0:	faa42623          	sw	a0,-84(s0)
c04019c4:	fc042223          	sw	zero,-60(s0)
c04019c8:	fa042c23          	sw	zero,-72(s0)
c04019cc:	00100513          	li	a0,1
c04019d0:	faa42a23          	sw	a0,-76(s0)
c04019d4:	fd040593          	addi	a1,s0,-48
c04019d8:	fcb42623          	sw	a1,-52(s0)
c04019dc:	fea42223          	sw	a0,-28(s0)
c04019e0:	fa840513          	addi	a0,s0,-88
c04019e4:	fea42023          	sw	a0,-32(s0)
c04019e8:	00200513          	li	a0,2
c04019ec:	fca42a23          	sw	a0,-44(s0)
c04019f0:	c0408537          	lui	a0,0xc0408
c04019f4:	42850513          	addi	a0,a0,1064 # c0408428 <ebss+0xfffe7308>
c04019f8:	fca42823          	sw	a0,-48(s0)
c04019fc:	fc042c23          	sw	zero,-40(s0)
c0401a00:	c0408537          	lui	a0,0xc0408
c0401a04:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c0401a08:	fcc40513          	addi	a0,s0,-52
c0401a0c:	fd040613          	addi	a2,s0,-48
c0401a10:	00004097          	auipc	ra,0x4
c0401a14:	c38080e7          	jalr	-968(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0401a18:	0c051663          	bnez	a0,c0401ae4 <rust_trap+0x200>
c0401a1c:	04c12983          	lw	s3,76(sp)
c0401a20:	05012903          	lw	s2,80(sp)
c0401a24:	05412483          	lw	s1,84(sp)
c0401a28:	05812403          	lw	s0,88(sp)
c0401a2c:	05c12083          	lw	ra,92(sp)
c0401a30:	06010113          	addi	sp,sp,96
c0401a34:	00008067          	ret
c0401a38:	00002097          	auipc	ra,0x2
c0401a3c:	c68080e7          	jalr	-920(ra) # c04036a0 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE>
c0401a40:	0ff57513          	andi	a0,a0,255
c0401a44:	00800593          	li	a1,8
c0401a48:	00a5cc63          	blt	a1,a0,c0401a60 <rust_trap+0x17c>
c0401a4c:	00300593          	li	a1,3
c0401a50:	0ab50e63          	beq	a0,a1,c0401b0c <rust_trap+0x228>
c0401a54:	00800593          	li	a1,8
c0401a58:	00b50c63          	beq	a0,a1,c0401a70 <rust_trap+0x18c>
c0401a5c:	0280006f          	j	c0401a84 <rust_trap+0x1a0>
c0401a60:	00900593          	li	a1,9
c0401a64:	00b50663          	beq	a0,a1,c0401a70 <rust_trap+0x18c>
c0401a68:	00a00593          	li	a1,10
c0401a6c:	00b51c63          	bne	a0,a1,c0401a84 <rust_trap+0x1a0>
c0401a70:	00090513          	mv	a0,s2
c0401a74:	00000097          	auipc	ra,0x0
c0401a78:	0a8080e7          	jalr	168(ra) # c0401b1c <_ZN2os9interrupt10page_fault17hb3d331506fbccd54E>
c0401a7c:	fffff097          	auipc	ra,0xfffff
c0401a80:	e90080e7          	jalr	-368(ra) # c040090c <abort>
c0401a84:	fb040513          	addi	a0,s0,-80
c0401a88:	fea42023          	sw	a0,-32(s0)
c0401a8c:	00100513          	li	a0,1
c0401a90:	fea42223          	sw	a0,-28(s0)
c0401a94:	fca42e23          	sw	a0,-36(s0)
c0401a98:	fca42a23          	sw	a0,-44(s0)
c0401a9c:	c0401537          	lui	a0,0xc0401
c0401aa0:	db450513          	addi	a0,a0,-588 # c0400db4 <ebss+0xfffdfc94>
c0401aa4:	faa42a23          	sw	a0,-76(s0)
c0401aa8:	fa440513          	addi	a0,s0,-92
c0401aac:	faa42823          	sw	a0,-80(s0)
c0401ab0:	c0408537          	lui	a0,0xc0408
c0401ab4:	47850513          	addi	a0,a0,1144 # c0408478 <ebss+0xfffe7358>
c0401ab8:	fca42c23          	sw	a0,-40(s0)
c0401abc:	c0408537          	lui	a0,0xc0408
c0401ac0:	47050513          	addi	a0,a0,1136 # c0408470 <ebss+0xfffe7350>
c0401ac4:	fca42823          	sw	a0,-48(s0)
c0401ac8:	c0408537          	lui	a0,0xc0408
c0401acc:	4cc50593          	addi	a1,a0,1228 # c04084cc <ebss+0xfffe73ac>
c0401ad0:	fd040513          	addi	a0,s0,-48
c0401ad4:	00003097          	auipc	ra,0x3
c0401ad8:	eb8080e7          	jalr	-328(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0401adc:	fffff097          	auipc	ra,0xfffff
c0401ae0:	e30080e7          	jalr	-464(ra) # c040090c <abort>
c0401ae4:	c0408537          	lui	a0,0xc0408
c0401ae8:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c0401aec:	c04085b7          	lui	a1,0xc0408
c0401af0:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c0401af4:	fd040613          	addi	a2,s0,-48
c0401af8:	02b00593          	li	a1,43
c0401afc:	00003097          	auipc	ra,0x3
c0401b00:	eec080e7          	jalr	-276(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c0401b04:	fffff097          	auipc	ra,0xfffff
c0401b08:	e08080e7          	jalr	-504(ra) # c040090c <abort>
c0401b0c:	00000097          	auipc	ra,0x0
c0401b10:	100080e7          	jalr	256(ra) # c0401c0c <_ZN2os9interrupt10breakpoint17h22e79b0485d214aaE>
c0401b14:	fffff097          	auipc	ra,0xfffff
c0401b18:	df8080e7          	jalr	-520(ra) # c040090c <abort>

c0401b1c <_ZN2os9interrupt10page_fault17hb3d331506fbccd54E>:
c0401b1c:	fa010113          	addi	sp,sp,-96
c0401b20:	04112e23          	sw	ra,92(sp)
c0401b24:	04812c23          	sw	s0,88(sp)
c0401b28:	04912a23          	sw	s1,84(sp)
c0401b2c:	06010413          	addi	s0,sp,96
c0401b30:	00050493          	mv	s1,a0
c0401b34:	08c50513          	addi	a0,a0,140
c0401b38:	00000097          	auipc	ra,0x0
c0401b3c:	c54080e7          	jalr	-940(ra) # c040178c <_ZN5riscv8register6scause6Scause5cause17h9c00823886b74540E>
c0401b40:	feb408a3          	sb	a1,-15(s0)
c0401b44:	fea40823          	sb	a0,-16(s0)
c0401b48:	08448513          	addi	a0,s1,132
c0401b4c:	fea42423          	sw	a0,-24(s0)
c0401b50:	c0404537          	lui	a0,0xc0404
c0401b54:	29850513          	addi	a0,a0,664 # c0404298 <ebss+0xfffe3178>
c0401b58:	fea42623          	sw	a0,-20(s0)
c0401b5c:	fea42223          	sw	a0,-28(s0)
c0401b60:	08848513          	addi	a0,s1,136
c0401b64:	fea42023          	sw	a0,-32(s0)
c0401b68:	c0404537          	lui	a0,0xc0404
c0401b6c:	8b450513          	addi	a0,a0,-1868 # c04038b4 <ebss+0xfffe2794>
c0401b70:	fca42e23          	sw	a0,-36(s0)
c0401b74:	ff040513          	addi	a0,s0,-16
c0401b78:	fca42c23          	sw	a0,-40(s0)
c0401b7c:	fd840513          	addi	a0,s0,-40
c0401b80:	fca42823          	sw	a0,-48(s0)
c0401b84:	c0408537          	lui	a0,0xc0408
c0401b88:	50850513          	addi	a0,a0,1288 # c0408508 <ebss+0xfffe73e8>
c0401b8c:	fca42423          	sw	a0,-56(s0)
c0401b90:	00300513          	li	a0,3
c0401b94:	fca42a23          	sw	a0,-44(s0)
c0401b98:	fca42623          	sw	a0,-52(s0)
c0401b9c:	fca42223          	sw	a0,-60(s0)
c0401ba0:	c0408537          	lui	a0,0xc0408
c0401ba4:	4f050513          	addi	a0,a0,1264 # c04084f0 <ebss+0xfffe73d0>
c0401ba8:	fca42023          	sw	a0,-64(s0)
c0401bac:	c0405537          	lui	a0,0xc0405
c0401bb0:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c0401bb4:	faa42e23          	sw	a0,-68(s0)
c0401bb8:	fc040513          	addi	a0,s0,-64
c0401bbc:	faa42c23          	sw	a0,-72(s0)
c0401bc0:	00100513          	li	a0,1
c0401bc4:	faa42a23          	sw	a0,-76(s0)
c0401bc8:	fb840513          	addi	a0,s0,-72
c0401bcc:	faa42823          	sw	a0,-80(s0)
c0401bd0:	fa042423          	sw	zero,-88(s0)
c0401bd4:	00200513          	li	a0,2
c0401bd8:	faa42223          	sw	a0,-92(s0)
c0401bdc:	c0408537          	lui	a0,0xc0408
c0401be0:	42850513          	addi	a0,a0,1064 # c0408428 <ebss+0xfffe7308>
c0401be4:	faa42023          	sw	a0,-96(s0)
c0401be8:	fa040513          	addi	a0,s0,-96
c0401bec:	00001097          	auipc	ra,0x1
c0401bf0:	c8c080e7          	jalr	-884(ra) # c0402878 <_ZN2os2io6_print17hd9d56d54c8c6512bE>
c0401bf4:	c0408537          	lui	a0,0xc0408
c0401bf8:	58050513          	addi	a0,a0,1408 # c0408580 <ebss+0xfffe7460>
c0401bfc:	00003097          	auipc	ra,0x3
c0401c00:	ca0080e7          	jalr	-864(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0401c04:	fffff097          	auipc	ra,0xfffff
c0401c08:	d08080e7          	jalr	-760(ra) # c040090c <abort>

c0401c0c <_ZN2os9interrupt10breakpoint17h22e79b0485d214aaE>:
c0401c0c:	ff010113          	addi	sp,sp,-16
c0401c10:	00112623          	sw	ra,12(sp)
c0401c14:	00812423          	sw	s0,8(sp)
c0401c18:	01010413          	addi	s0,sp,16
c0401c1c:	c0408537          	lui	a0,0xc0408
c0401c20:	5b450513          	addi	a0,a0,1460 # c04085b4 <ebss+0xfffe7494>
c0401c24:	00003097          	auipc	ra,0x3
c0401c28:	c78080e7          	jalr	-904(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0401c2c:	fffff097          	auipc	ra,0xfffff
c0401c30:	ce0080e7          	jalr	-800(ra) # c040090c <abort>

c0401c34 <_ZN4core3ptr18real_drop_in_place17h52ab52643ade6c01E>:
c0401c34:	ff010113          	addi	sp,sp,-16
c0401c38:	00112623          	sw	ra,12(sp)
c0401c3c:	00812423          	sw	s0,8(sp)
c0401c40:	01010413          	addi	s0,sp,16
c0401c44:	00812403          	lw	s0,8(sp)
c0401c48:	00c12083          	lw	ra,12(sp)
c0401c4c:	01010113          	addi	sp,sp,16
c0401c50:	00008067          	ret

c0401c54 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E>:
c0401c54:	fb010113          	addi	sp,sp,-80
c0401c58:	04112623          	sw	ra,76(sp)
c0401c5c:	04812423          	sw	s0,72(sp)
c0401c60:	04912223          	sw	s1,68(sp)
c0401c64:	05212023          	sw	s2,64(sp)
c0401c68:	03312e23          	sw	s3,60(sp)
c0401c6c:	03412c23          	sw	s4,56(sp)
c0401c70:	03512a23          	sw	s5,52(sp)
c0401c74:	03612823          	sw	s6,48(sp)
c0401c78:	03712623          	sw	s7,44(sp)
c0401c7c:	05010413          	addi	s0,sp,80
c0401c80:	1cb66663          	bltu	a2,a1,c0401e4c <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x1f8>
c0401c84:	00070a93          	mv	s5,a4
c0401c88:	00068a13          	mv	s4,a3
c0401c8c:	00060993          	mv	s3,a2
c0401c90:	00058913          	mv	s2,a1
c0401c94:	00050b13          	mv	s6,a0
c0401c98:	00852503          	lw	a0,8(a0)
c0401c9c:	01400593          	li	a1,20
c0401ca0:	02b50533          	mul	a0,a0,a1
c0401ca4:	00c95b93          	srli	s7,s2,0xc
c0401ca8:	000b2583          	lw	a1,0(s6)
c0401cac:	fff60613          	addi	a2,a2,-1
c0401cb0:	00c65493          	srli	s1,a2,0xc
c0401cb4:	04050263          	beqz	a0,c0401cf8 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0xa4>
c0401cb8:	00058613          	mv	a2,a1
c0401cbc:	fec50513          	addi	a0,a0,-20
c0401cc0:	01458593          	addi	a1,a1,20
c0401cc4:	00062683          	lw	a3,0(a2)
c0401cc8:	00c6d693          	srli	a3,a3,0xc
c0401ccc:	fed4e4e3          	bltu	s1,a3,c0401cb4 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x60>
c0401cd0:	00462603          	lw	a2,4(a2)
c0401cd4:	fff60613          	addi	a2,a2,-1
c0401cd8:	00c65613          	srli	a2,a2,0xc
c0401cdc:	fd766ce3          	bltu	a2,s7,c0401cb4 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x60>
c0401ce0:	c0408537          	lui	a0,0xc0408
c0401ce4:	63c50513          	addi	a0,a0,1596 # c040863c <ebss+0xfffe751c>
c0401ce8:	00003097          	auipc	ra,0x3
c0401cec:	bb4080e7          	jalr	-1100(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0401cf0:	fffff097          	auipc	ra,0xfffff
c0401cf4:	c1c080e7          	jalr	-996(ra) # c040090c <abort>
c0401cf8:	00400513          	li	a0,4
c0401cfc:	00400593          	li	a1,4
c0401d00:	ffffe097          	auipc	ra,0xffffe
c0401d04:	360080e7          	jalr	864(ra) # c0400060 <__rust_alloc>
c0401d08:	14050e63          	beqz	a0,c0401e64 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x210>
c0401d0c:	01552023          	sw	s5,0(a0)
c0401d10:	010a5593          	srli	a1,s4,0x10
c0401d14:	fcb40123          	sb	a1,-62(s0)
c0401d18:	fd441023          	sh	s4,-64(s0)
c0401d1c:	c04085b7          	lui	a1,0xc0408
c0401d20:	65458593          	addi	a1,a1,1620 # c0408654 <ebss+0xfffe7534>
c0401d24:	fab42e23          	sw	a1,-68(s0)
c0401d28:	faa42c23          	sw	a0,-72(s0)
c0401d2c:	fb342a23          	sw	s3,-76(s0)
c0401d30:	fb242823          	sw	s2,-80(s0)
c0401d34:	0774e063          	bltu	s1,s7,c0401d94 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x140>
c0401d38:	fc040993          	addi	s3,s0,-64
c0401d3c:	00cb0a13          	addi	s4,s6,12
c0401d40:	fffff5b7          	lui	a1,0xfffff
c0401d44:	00b97633          	and	a2,s2,a1
c0401d48:	000a0593          	mv	a1,s4
c0401d4c:	00098693          	mv	a3,s3
c0401d50:	00000097          	auipc	ra,0x0
c0401d54:	3e0080e7          	jalr	992(ra) # c0402130 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E>
c0401d58:	029bfe63          	bgeu	s7,s1,c0401d94 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x140>
c0401d5c:	41748933          	sub	s2,s1,s7
c0401d60:	00cb9513          	slli	a0,s7,0xc
c0401d64:	00001ab7          	lui	s5,0x1
c0401d68:	015504b3          	add	s1,a0,s5
c0401d6c:	fbc42503          	lw	a0,-68(s0)
c0401d70:	01052703          	lw	a4,16(a0)
c0401d74:	fb842503          	lw	a0,-72(s0)
c0401d78:	000a0593          	mv	a1,s4
c0401d7c:	00048613          	mv	a2,s1
c0401d80:	00098693          	mv	a3,s3
c0401d84:	000700e7          	jalr	a4
c0401d88:	015484b3          	add	s1,s1,s5
c0401d8c:	fff90913          	addi	s2,s2,-1
c0401d90:	fc091ee3          	bnez	s2,c0401d6c <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x118>
c0401d94:	fc042503          	lw	a0,-64(s0)
c0401d98:	fca42c23          	sw	a0,-40(s0)
c0401d9c:	fbc42503          	lw	a0,-68(s0)
c0401da0:	fca42a23          	sw	a0,-44(s0)
c0401da4:	fb842503          	lw	a0,-72(s0)
c0401da8:	fca42823          	sw	a0,-48(s0)
c0401dac:	fb442503          	lw	a0,-76(s0)
c0401db0:	fca42623          	sw	a0,-52(s0)
c0401db4:	fb042503          	lw	a0,-80(s0)
c0401db8:	fca42423          	sw	a0,-56(s0)
c0401dbc:	008b2583          	lw	a1,8(s6)
c0401dc0:	004b2503          	lw	a0,4(s6)
c0401dc4:	00a59c63          	bne	a1,a0,c0401ddc <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E+0x188>
c0401dc8:	000b0513          	mv	a0,s6
c0401dcc:	00100613          	li	a2,1
c0401dd0:	00000097          	auipc	ra,0x0
c0401dd4:	56c080e7          	jalr	1388(ra) # c040233c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E>
c0401dd8:	008b2583          	lw	a1,8(s6)
c0401ddc:	01400513          	li	a0,20
c0401de0:	02a58533          	mul	a0,a1,a0
c0401de4:	000b2583          	lw	a1,0(s6)
c0401de8:	00a58533          	add	a0,a1,a0
c0401dec:	fd842583          	lw	a1,-40(s0)
c0401df0:	00b52823          	sw	a1,16(a0)
c0401df4:	fd442583          	lw	a1,-44(s0)
c0401df8:	00b52623          	sw	a1,12(a0)
c0401dfc:	fd042583          	lw	a1,-48(s0)
c0401e00:	00b52423          	sw	a1,8(a0)
c0401e04:	fcc42583          	lw	a1,-52(s0)
c0401e08:	00b52223          	sw	a1,4(a0)
c0401e0c:	fc842583          	lw	a1,-56(s0)
c0401e10:	00b52023          	sw	a1,0(a0)
c0401e14:	008b2503          	lw	a0,8(s6)
c0401e18:	00150513          	addi	a0,a0,1
c0401e1c:	00ab2423          	sw	a0,8(s6)
c0401e20:	02c12b83          	lw	s7,44(sp)
c0401e24:	03012b03          	lw	s6,48(sp)
c0401e28:	03412a83          	lw	s5,52(sp)
c0401e2c:	03812a03          	lw	s4,56(sp)
c0401e30:	03c12983          	lw	s3,60(sp)
c0401e34:	04012903          	lw	s2,64(sp)
c0401e38:	04412483          	lw	s1,68(sp)
c0401e3c:	04812403          	lw	s0,72(sp)
c0401e40:	04c12083          	lw	ra,76(sp)
c0401e44:	05010113          	addi	sp,sp,80
c0401e48:	00008067          	ret
c0401e4c:	c0408537          	lui	a0,0xc0408
c0401e50:	61050513          	addi	a0,a0,1552 # c0408610 <ebss+0xfffe74f0>
c0401e54:	00003097          	auipc	ra,0x3
c0401e58:	a48080e7          	jalr	-1464(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0401e5c:	fffff097          	auipc	ra,0xfffff
c0401e60:	ab0080e7          	jalr	-1360(ra) # c040090c <abort>
c0401e64:	00400513          	li	a0,4
c0401e68:	00400593          	li	a1,4
c0401e6c:	00002097          	auipc	ra,0x2
c0401e70:	40c080e7          	jalr	1036(ra) # c0404278 <_ZN5alloc5alloc18handle_alloc_error17h54ca5f2ef1826cedE>
c0401e74:	fffff097          	auipc	ra,0xfffff
c0401e78:	a98080e7          	jalr	-1384(ra) # c040090c <abort>

c0401e7c <_ZN2os6memory10memory_set9MemorySet3new17hc56d8e1e0cbb2d9bE>:
c0401e7c:	f8010113          	addi	sp,sp,-128
c0401e80:	06112e23          	sw	ra,124(sp)
c0401e84:	06812c23          	sw	s0,120(sp)
c0401e88:	06912a23          	sw	s1,116(sp)
c0401e8c:	07212823          	sw	s2,112(sp)
c0401e90:	07312623          	sw	s3,108(sp)
c0401e94:	07412423          	sw	s4,104(sp)
c0401e98:	08010413          	addi	s0,sp,128
c0401e9c:	00050493          	mv	s1,a0
c0401ea0:	fd040913          	addi	s2,s0,-48
c0401ea4:	00090513          	mv	a0,s2
c0401ea8:	fffff097          	auipc	ra,0xfffff
c0401eac:	088080e7          	jalr	136(ra) # c0400f30 <_ZN2os6memory6paging13PageTableImpl8new_bare17h35e3f5ce4d2d8e56E>
c0401eb0:	fd042503          	lw	a0,-48(s0)
c0401eb4:	f8a42a23          	sw	a0,-108(s0)
c0401eb8:	fd442503          	lw	a0,-44(s0)
c0401ebc:	f8a42c23          	sw	a0,-104(s0)
c0401ec0:	fd842503          	lw	a0,-40(s0)
c0401ec4:	f8a42e23          	sw	a0,-100(s0)
c0401ec8:	fdc42503          	lw	a0,-36(s0)
c0401ecc:	faa42023          	sw	a0,-96(s0)
c0401ed0:	fe042503          	lw	a0,-32(s0)
c0401ed4:	faa42223          	sw	a0,-92(s0)
c0401ed8:	f8042823          	sw	zero,-112(s0)
c0401edc:	f8042623          	sw	zero,-116(s0)
c0401ee0:	00400a13          	li	s4,4
c0401ee4:	f9442423          	sw	s4,-120(s0)
c0401ee8:	c0400537          	lui	a0,0xc0400
c0401eec:	00050593          	mv	a1,a0
c0401ef0:	c0408537          	lui	a0,0xc0408
c0401ef4:	00050613          	mv	a2,a0
c0401ef8:	00010537          	lui	a0,0x10
c0401efc:	10050693          	addi	a3,a0,256 # 10100 <XLENB+0x100fc>
c0401f00:	f8840993          	addi	s3,s0,-120
c0401f04:	00098513          	mv	a0,s3
c0401f08:	40000737          	lui	a4,0x40000
c0401f0c:	00000097          	auipc	ra,0x0
c0401f10:	d48080e7          	jalr	-696(ra) # c0401c54 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E>
c0401f14:	c0408537          	lui	a0,0xc0408
c0401f18:	00050593          	mv	a1,a0
c0401f1c:	c040b537          	lui	a0,0xc040b
c0401f20:	00050613          	mv	a2,a0
c0401f24:	00098513          	mv	a0,s3
c0401f28:	10000693          	li	a3,256
c0401f2c:	40000737          	lui	a4,0x40000
c0401f30:	00000097          	auipc	ra,0x0
c0401f34:	d24080e7          	jalr	-732(ra) # c0401c54 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E>
c0401f38:	c040c537          	lui	a0,0xc040c
c0401f3c:	00050593          	mv	a1,a0
c0401f40:	c040d537          	lui	a0,0xc040d
c0401f44:	00050613          	mv	a2,a0
c0401f48:	00098513          	mv	a0,s3
c0401f4c:	00000693          	li	a3,0
c0401f50:	40000737          	lui	a4,0x40000
c0401f54:	00000097          	auipc	ra,0x0
c0401f58:	d00080e7          	jalr	-768(ra) # c0401c54 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E>
c0401f5c:	c0411537          	lui	a0,0xc0411
c0401f60:	00050593          	mv	a1,a0
c0401f64:	c0421537          	lui	a0,0xc0421
c0401f68:	12050613          	addi	a2,a0,288 # c0421120 <ebss+0x0>
c0401f6c:	00098513          	mv	a0,s3
c0401f70:	00000693          	li	a3,0
c0401f74:	40000737          	lui	a4,0x40000
c0401f78:	00000097          	auipc	ra,0x0
c0401f7c:	cdc080e7          	jalr	-804(ra) # c0401c54 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E>
c0401f80:	c0405537          	lui	a0,0xc0405
c0401f84:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c0401f88:	faa42623          	sw	a0,-84(s0)
c0401f8c:	fb040513          	addi	a0,s0,-80
c0401f90:	faa42423          	sw	a0,-88(s0)
c0401f94:	fd442023          	sw	s4,-64(s0)
c0401f98:	c0408537          	lui	a0,0xc0408
c0401f9c:	69850513          	addi	a0,a0,1688 # c0408698 <ebss+0xfffe7578>
c0401fa0:	faa42823          	sw	a0,-80(s0)
c0401fa4:	fc042223          	sw	zero,-60(s0)
c0401fa8:	fa042c23          	sw	zero,-72(s0)
c0401fac:	00100513          	li	a0,1
c0401fb0:	faa42a23          	sw	a0,-76(s0)
c0401fb4:	fd242623          	sw	s2,-52(s0)
c0401fb8:	fea42223          	sw	a0,-28(s0)
c0401fbc:	fa840513          	addi	a0,s0,-88
c0401fc0:	fea42023          	sw	a0,-32(s0)
c0401fc4:	00200513          	li	a0,2
c0401fc8:	fca42a23          	sw	a0,-44(s0)
c0401fcc:	c0408537          	lui	a0,0xc0408
c0401fd0:	67450513          	addi	a0,a0,1652 # c0408674 <ebss+0xfffe7554>
c0401fd4:	fca42823          	sw	a0,-48(s0)
c0401fd8:	c0408537          	lui	a0,0xc0408
c0401fdc:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c0401fe0:	fc042c23          	sw	zero,-40(s0)
c0401fe4:	fcc40513          	addi	a0,s0,-52
c0401fe8:	fd040613          	addi	a2,s0,-48
c0401fec:	00003097          	auipc	ra,0x3
c0401ff0:	65c080e7          	jalr	1628(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0401ff4:	08051863          	bnez	a0,c0402084 <_ZN2os6memory10memory_set9MemorySet3new17hc56d8e1e0cbb2d9bE+0x208>
c0401ff8:	c0421537          	lui	a0,0xc0421
c0401ffc:	12050513          	addi	a0,a0,288 # c0421120 <ebss+0x0>
c0402000:	00c55513          	srli	a0,a0,0xc
c0402004:	00150513          	addi	a0,a0,1
c0402008:	00c51593          	slli	a1,a0,0xc
c040200c:	f8840513          	addi	a0,s0,-120
c0402010:	c0440637          	lui	a2,0xc0440
c0402014:	00000693          	li	a3,0
c0402018:	40000737          	lui	a4,0x40000
c040201c:	00000097          	auipc	ra,0x0
c0402020:	c38080e7          	jalr	-968(ra) # c0401c54 <_ZN2os6memory10memory_set9MemorySet4push17h0d27578a10ed66f5E>
c0402024:	fa442503          	lw	a0,-92(s0)
c0402028:	00a4ae23          	sw	a0,28(s1)
c040202c:	fa042503          	lw	a0,-96(s0)
c0402030:	00a4ac23          	sw	a0,24(s1)
c0402034:	f9c42503          	lw	a0,-100(s0)
c0402038:	00a4aa23          	sw	a0,20(s1)
c040203c:	f9842503          	lw	a0,-104(s0)
c0402040:	00a4a823          	sw	a0,16(s1)
c0402044:	f9442503          	lw	a0,-108(s0)
c0402048:	00a4a623          	sw	a0,12(s1)
c040204c:	f9042503          	lw	a0,-112(s0)
c0402050:	00a4a423          	sw	a0,8(s1)
c0402054:	f8c42503          	lw	a0,-116(s0)
c0402058:	00a4a223          	sw	a0,4(s1)
c040205c:	f8842503          	lw	a0,-120(s0)
c0402060:	00a4a023          	sw	a0,0(s1)
c0402064:	06812a03          	lw	s4,104(sp)
c0402068:	06c12983          	lw	s3,108(sp)
c040206c:	07012903          	lw	s2,112(sp)
c0402070:	07412483          	lw	s1,116(sp)
c0402074:	07812403          	lw	s0,120(sp)
c0402078:	07c12083          	lw	ra,124(sp)
c040207c:	08010113          	addi	sp,sp,128
c0402080:	00008067          	ret
c0402084:	c0408537          	lui	a0,0xc0408
c0402088:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c040208c:	c04085b7          	lui	a1,0xc0408
c0402090:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c0402094:	fd040613          	addi	a2,s0,-48
c0402098:	02b00593          	li	a1,43
c040209c:	00003097          	auipc	ra,0x3
c04020a0:	94c080e7          	jalr	-1716(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c04020a4:	fffff097          	auipc	ra,0xfffff
c04020a8:	868080e7          	jalr	-1944(ra) # c040090c <abort>

c04020ac <_ZN4core3ptr18real_drop_in_place17h429ab5c72ed71bedE>:
c04020ac:	ff010113          	addi	sp,sp,-16
c04020b0:	00112623          	sw	ra,12(sp)
c04020b4:	00812423          	sw	s0,8(sp)
c04020b8:	01010413          	addi	s0,sp,16
c04020bc:	00812403          	lw	s0,8(sp)
c04020c0:	00c12083          	lw	ra,12(sp)
c04020c4:	01010113          	addi	sp,sp,16
c04020c8:	00008067          	ret

c04020cc <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$9box_clone17haed32ec38cf2761eE>:
c04020cc:	ff010113          	addi	sp,sp,-16
c04020d0:	00112623          	sw	ra,12(sp)
c04020d4:	00812423          	sw	s0,8(sp)
c04020d8:	00912223          	sw	s1,4(sp)
c04020dc:	01010413          	addi	s0,sp,16
c04020e0:	00052483          	lw	s1,0(a0)
c04020e4:	00400513          	li	a0,4
c04020e8:	00400593          	li	a1,4
c04020ec:	ffffe097          	auipc	ra,0xffffe
c04020f0:	f74080e7          	jalr	-140(ra) # c0400060 <__rust_alloc>
c04020f4:	02050263          	beqz	a0,c0402118 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$9box_clone17haed32ec38cf2761eE+0x4c>
c04020f8:	00952023          	sw	s1,0(a0)
c04020fc:	c04085b7          	lui	a1,0xc0408
c0402100:	6a058593          	addi	a1,a1,1696 # c04086a0 <ebss+0xfffe7580>
c0402104:	00412483          	lw	s1,4(sp)
c0402108:	00812403          	lw	s0,8(sp)
c040210c:	00c12083          	lw	ra,12(sp)
c0402110:	01010113          	addi	sp,sp,16
c0402114:	00008067          	ret
c0402118:	00400513          	li	a0,4
c040211c:	00400593          	li	a1,4
c0402120:	00002097          	auipc	ra,0x2
c0402124:	158080e7          	jalr	344(ra) # c0404278 <_ZN5alloc5alloc18handle_alloc_error17h54ca5f2ef1826cedE>
c0402128:	ffffe097          	auipc	ra,0xffffe
c040212c:	7e4080e7          	jalr	2020(ra) # c040090c <abort>

c0402130 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E>:
c0402130:	fe010113          	addi	sp,sp,-32
c0402134:	00112e23          	sw	ra,28(sp)
c0402138:	00812c23          	sw	s0,24(sp)
c040213c:	00912a23          	sw	s1,20(sp)
c0402140:	01212823          	sw	s2,16(sp)
c0402144:	01312623          	sw	s3,12(sp)
c0402148:	02010413          	addi	s0,sp,32
c040214c:	00068913          	mv	s2,a3
c0402150:	00060693          	mv	a3,a2
c0402154:	00052503          	lw	a0,0(a0)
c0402158:	40a60633          	sub	a2,a2,a0
c040215c:	00058513          	mv	a0,a1
c0402160:	00068593          	mv	a1,a3
c0402164:	fffff097          	auipc	ra,0xfffff
c0402168:	ec4080e7          	jalr	-316(ra) # c0401028 <_ZN2os6memory6paging13PageTableImpl3map17hf03cdc0e9aedbab6E>
c040216c:	00050493          	mv	s1,a0
c0402170:	00052503          	lw	a0,0(a0)
c0402174:	00001097          	auipc	ra,0x1
c0402178:	220080e7          	jalr	544(ra) # c0403394 <_ZN5riscv6paging10page_table14PageTableEntry9flags_mut17hc5385fea7611d666E>
c040217c:	00052583          	lw	a1,0(a0)
c0402180:	0035e593          	ori	a1,a1,3
c0402184:	00b52023          	sw	a1,0(a0)
c0402188:	0004a503          	lw	a0,0(s1)
c040218c:	00094983          	lbu	s3,0(s2)
c0402190:	00001097          	auipc	ra,0x1
c0402194:	204080e7          	jalr	516(ra) # c0403394 <_ZN5riscv6paging10page_table14PageTableEntry9flags_mut17hc5385fea7611d666E>
c0402198:	00052583          	lw	a1,0(a0)
c040219c:	00098663          	beqz	s3,c04021a8 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E+0x78>
c04021a0:	0105e593          	ori	a1,a1,16
c04021a4:	0080006f          	j	c04021ac <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E+0x7c>
c04021a8:	fef5f593          	andi	a1,a1,-17
c04021ac:	00b52023          	sw	a1,0(a0)
c04021b0:	0004a503          	lw	a0,0(s1)
c04021b4:	00194983          	lbu	s3,1(s2)
c04021b8:	00001097          	auipc	ra,0x1
c04021bc:	1dc080e7          	jalr	476(ra) # c0403394 <_ZN5riscv6paging10page_table14PageTableEntry9flags_mut17hc5385fea7611d666E>
c04021c0:	00052583          	lw	a1,0(a0)
c04021c4:	00098663          	beqz	s3,c04021d0 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E+0xa0>
c04021c8:	ffb5f593          	andi	a1,a1,-5
c04021cc:	0080006f          	j	c04021d4 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E+0xa4>
c04021d0:	0045e593          	ori	a1,a1,4
c04021d4:	00b52023          	sw	a1,0(a0)
c04021d8:	0004a503          	lw	a0,0(s1)
c04021dc:	00294483          	lbu	s1,2(s2)
c04021e0:	00001097          	auipc	ra,0x1
c04021e4:	1b4080e7          	jalr	436(ra) # c0403394 <_ZN5riscv6paging10page_table14PageTableEntry9flags_mut17hc5385fea7611d666E>
c04021e8:	00052583          	lw	a1,0(a0)
c04021ec:	00048663          	beqz	s1,c04021f8 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E+0xc8>
c04021f0:	0085e593          	ori	a1,a1,8
c04021f4:	0080006f          	j	c04021fc <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$3map17h58ec5edf09cfdef8E+0xcc>
c04021f8:	ff75f593          	andi	a1,a1,-9
c04021fc:	00b52023          	sw	a1,0(a0)
c0402200:	00c12983          	lw	s3,12(sp)
c0402204:	01012903          	lw	s2,16(sp)
c0402208:	01412483          	lw	s1,20(sp)
c040220c:	01812403          	lw	s0,24(sp)
c0402210:	01c12083          	lw	ra,28(sp)
c0402214:	02010113          	addi	sp,sp,32
c0402218:	00008067          	ret

c040221c <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$5unmap17h11ca61b9ad048837E>:
c040221c:	fd010113          	addi	sp,sp,-48
c0402220:	02112623          	sw	ra,44(sp)
c0402224:	02812423          	sw	s0,40(sp)
c0402228:	02912223          	sw	s1,36(sp)
c040222c:	03010413          	addi	s0,sp,48
c0402230:	00060513          	mv	a0,a2
c0402234:	00058493          	mv	s1,a1
c0402238:	00002097          	auipc	ra,0x2
c040223c:	b08080e7          	jalr	-1272(ra) # c0403d40 <_ZN5riscv4addr8PhysAddr3new17h21120840d2359522E>
c0402240:	00002097          	auipc	ra,0x2
c0402244:	b20080e7          	jalr	-1248(ra) # c0403d60 <_ZN5riscv4addr4Page7of_addr17hb2e151b8985dd982E>
c0402248:	00050613          	mv	a2,a0
c040224c:	fd840513          	addi	a0,s0,-40
c0402250:	00048593          	mv	a1,s1
c0402254:	00002097          	auipc	ra,0x2
c0402258:	bfc080e7          	jalr	-1028(ra) # c0403e50 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE>
c040225c:	fe042503          	lw	a0,-32(s0)
c0402260:	00100593          	li	a1,1
c0402264:	fd842603          	lw	a2,-40(s0)
c0402268:	00b60e63          	beq	a2,a1,c0402284 <_ZN106_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$os..memory..memory_set..handler..MemoryHandler$GT$5unmap17h11ca61b9ad048837E+0x68>
c040226c:	02412483          	lw	s1,36(sp)
c0402270:	02812403          	lw	s0,40(sp)
c0402274:	02c12083          	lw	ra,44(sp)
c0402278:	03010113          	addi	sp,sp,48
c040227c:	00001317          	auipc	t1,0x1
c0402280:	17830067          	jr	376(t1) # c04033f4 <_ZN5riscv6paging9recursive11MapperFlush5flush17h62ff492823dcae5eE>
c0402284:	fdc42583          	lw	a1,-36(s0)
c0402288:	fea42623          	sw	a0,-20(s0)
c040228c:	feb42423          	sw	a1,-24(s0)
c0402290:	c0408537          	lui	a0,0xc0408
c0402294:	28450513          	addi	a0,a0,644 # c0408284 <ebss+0xfffe7164>
c0402298:	c04085b7          	lui	a1,0xc0408
c040229c:	2b058693          	addi	a3,a1,688 # c04082b0 <ebss+0xfffe7190>
c04022a0:	fe840613          	addi	a2,s0,-24
c04022a4:	02b00593          	li	a1,43
c04022a8:	00002097          	auipc	ra,0x2
c04022ac:	740080e7          	jalr	1856(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c04022b0:	ffffe097          	auipc	ra,0xffffe
c04022b4:	65c080e7          	jalr	1628(ra) # c040090c <abort>

c04022b8 <_ZN76_$LT$os..memory..memory_set..handler..Linear$u20$as$u20$core..fmt..Debug$GT$3fmt17h29cb091a614b911cE>:
c04022b8:	fe010113          	addi	sp,sp,-32
c04022bc:	00112e23          	sw	ra,28(sp)
c04022c0:	00812c23          	sw	s0,24(sp)
c04022c4:	00912a23          	sw	s1,20(sp)
c04022c8:	01212823          	sw	s2,16(sp)
c04022cc:	02010413          	addi	s0,sp,32
c04022d0:	00050493          	mv	s1,a0
c04022d4:	c0408537          	lui	a0,0xc0408
c04022d8:	6bc50613          	addi	a2,a0,1724 # c04086bc <ebss+0xfffe759c>
c04022dc:	fe040913          	addi	s2,s0,-32
c04022e0:	00090513          	mv	a0,s2
c04022e4:	00600693          	li	a3,6
c04022e8:	00004097          	auipc	ra,0x4
c04022ec:	f6c080e7          	jalr	-148(ra) # c0406254 <_ZN4core3fmt9Formatter12debug_struct17had6302012c33b047E>
c04022f0:	fe942623          	sw	s1,-20(s0)
c04022f4:	c0408537          	lui	a0,0xc0408
c04022f8:	6c250593          	addi	a1,a0,1730 # c04086c2 <ebss+0xfffe75a2>
c04022fc:	c0408537          	lui	a0,0xc0408
c0402300:	6c850713          	addi	a4,a0,1736 # c04086c8 <ebss+0xfffe75a8>
c0402304:	fec40693          	addi	a3,s0,-20
c0402308:	00090513          	mv	a0,s2
c040230c:	00600613          	li	a2,6
c0402310:	00005097          	auipc	ra,0x5
c0402314:	8a4080e7          	jalr	-1884(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0402318:	00090513          	mv	a0,s2
c040231c:	00005097          	auipc	ra,0x5
c0402320:	af0080e7          	jalr	-1296(ra) # c0406e0c <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE>
c0402324:	01012903          	lw	s2,16(sp)
c0402328:	01412483          	lw	s1,20(sp)
c040232c:	01812403          	lw	s0,24(sp)
c0402330:	01c12083          	lw	ra,28(sp)
c0402334:	02010113          	addi	sp,sp,32
c0402338:	00008067          	ret

c040233c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E>:
c040233c:	fe010113          	addi	sp,sp,-32
c0402340:	00112e23          	sw	ra,28(sp)
c0402344:	00812c23          	sw	s0,24(sp)
c0402348:	00912a23          	sw	s1,20(sp)
c040234c:	01212823          	sw	s2,16(sp)
c0402350:	01312623          	sw	s3,12(sp)
c0402354:	02010413          	addi	s0,sp,32
c0402358:	00050493          	mv	s1,a0
c040235c:	00452503          	lw	a0,4(a0)
c0402360:	40b506b3          	sub	a3,a0,a1
c0402364:	04c6fc63          	bgeu	a3,a2,c04023bc <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0x80>
c0402368:	00c58633          	add	a2,a1,a2
c040236c:	08b66c63          	bltu	a2,a1,c0402404 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0xc8>
c0402370:	00151993          	slli	s3,a0,0x1
c0402374:	01366463          	bltu	a2,s3,c040237c <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0x40>
c0402378:	00060993          	mv	s3,a2
c040237c:	01400593          	li	a1,20
c0402380:	02b9b633          	mulhu	a2,s3,a1
c0402384:	08061063          	bnez	a2,c0402404 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0xc8>
c0402388:	02b98933          	mul	s2,s3,a1
c040238c:	06094c63          	bltz	s2,c0402404 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0xc8>
c0402390:	04050463          	beqz	a0,c04023d8 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0x9c>
c0402394:	01400593          	li	a1,20
c0402398:	02b505b3          	mul	a1,a0,a1
c040239c:	0004a503          	lw	a0,0(s1)
c04023a0:	00400613          	li	a2,4
c04023a4:	00090693          	mv	a3,s2
c04023a8:	ffffe097          	auipc	ra,0xffffe
c04023ac:	cc8080e7          	jalr	-824(ra) # c0400070 <__rust_realloc>
c04023b0:	02050e63          	beqz	a0,c04023ec <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0xb0>
c04023b4:	0134a223          	sw	s3,4(s1)
c04023b8:	00a4a023          	sw	a0,0(s1)
c04023bc:	00c12983          	lw	s3,12(sp)
c04023c0:	01012903          	lw	s2,16(sp)
c04023c4:	01412483          	lw	s1,20(sp)
c04023c8:	01812403          	lw	s0,24(sp)
c04023cc:	01c12083          	lw	ra,28(sp)
c04023d0:	02010113          	addi	sp,sp,32
c04023d4:	00008067          	ret
c04023d8:	00090513          	mv	a0,s2
c04023dc:	00400593          	li	a1,4
c04023e0:	ffffe097          	auipc	ra,0xffffe
c04023e4:	c80080e7          	jalr	-896(ra) # c0400060 <__rust_alloc>
c04023e8:	fc0516e3          	bnez	a0,c04023b4 <_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h651c45ba637decd4E+0x78>
c04023ec:	00090513          	mv	a0,s2
c04023f0:	00400593          	li	a1,4
c04023f4:	00002097          	auipc	ra,0x2
c04023f8:	e84080e7          	jalr	-380(ra) # c0404278 <_ZN5alloc5alloc18handle_alloc_error17h54ca5f2ef1826cedE>
c04023fc:	ffffe097          	auipc	ra,0xffffe
c0402400:	510080e7          	jalr	1296(ra) # c040090c <abort>
c0402404:	00002097          	auipc	ra,0x2
c0402408:	e4c080e7          	jalr	-436(ra) # c0404250 <_ZN5alloc7raw_vec17capacity_overflow17h8e57b9dded023180E>
c040240c:	ffffe097          	auipc	ra,0xffffe
c0402410:	500080e7          	jalr	1280(ra) # c040090c <abort>

c0402414 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3cb0006a502c7e86E>:
c0402414:	ff010113          	addi	sp,sp,-16
c0402418:	00112623          	sw	ra,12(sp)
c040241c:	00812423          	sw	s0,8(sp)
c0402420:	01010413          	addi	s0,sp,16
c0402424:	00052503          	lw	a0,0(a0)
c0402428:	00812403          	lw	s0,8(sp)
c040242c:	00c12083          	lw	ra,12(sp)
c0402430:	01010113          	addi	sp,sp,16
c0402434:	ffffe317          	auipc	t1,0xffffe
c0402438:	59830067          	jr	1432(t1) # c04009cc <_ZN4core5array69_$LT$impl$u20$core..fmt..Debug$u20$for$u20$$u5b$T$u3b$$u20$_$u5d$$GT$3fmt17hf3e22c2f0b8aaa4eE>

c040243c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85b2c57645bf9c5fE>:
c040243c:	ff010113          	addi	sp,sp,-16
c0402440:	00112623          	sw	ra,12(sp)
c0402444:	00812423          	sw	s0,8(sp)
c0402448:	00912223          	sw	s1,4(sp)
c040244c:	01212023          	sw	s2,0(sp)
c0402450:	01010413          	addi	s0,sp,16
c0402454:	00058493          	mv	s1,a1
c0402458:	00052903          	lw	s2,0(a0)
c040245c:	00058513          	mv	a0,a1
c0402460:	00004097          	auipc	ra,0x4
c0402464:	d9c080e7          	jalr	-612(ra) # c04061fc <_ZN4core3fmt9Formatter15debug_lower_hex17ha451788feee8d937E>
c0402468:	00050c63          	beqz	a0,c0402480 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85b2c57645bf9c5fE+0x44>
c040246c:	00090513          	mv	a0,s2
c0402470:	00048593          	mv	a1,s1
c0402474:	00002097          	auipc	ra,0x2
c0402478:	e24080e7          	jalr	-476(ra) # c0404298 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE>
c040247c:	0380006f          	j	c04024b4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85b2c57645bf9c5fE+0x78>
c0402480:	00048513          	mv	a0,s1
c0402484:	00004097          	auipc	ra,0x4
c0402488:	da4080e7          	jalr	-604(ra) # c0406228 <_ZN4core3fmt9Formatter15debug_upper_hex17h225bea2574808256E>
c040248c:	00050c63          	beqz	a0,c04024a4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85b2c57645bf9c5fE+0x68>
c0402490:	00090513          	mv	a0,s2
c0402494:	00048593          	mv	a1,s1
c0402498:	00002097          	auipc	ra,0x2
c040249c:	eac080e7          	jalr	-340(ra) # c0404344 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E>
c04024a0:	0140006f          	j	c04024b4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h85b2c57645bf9c5fE+0x78>
c04024a4:	00090513          	mv	a0,s2
c04024a8:	00048593          	mv	a1,s1
c04024ac:	00003097          	auipc	ra,0x3
c04024b0:	0b0080e7          	jalr	176(ra) # c040555c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd4814eb15ee0a404E>
c04024b4:	00012903          	lw	s2,0(sp)
c04024b8:	00412483          	lw	s1,4(sp)
c04024bc:	00812403          	lw	s0,8(sp)
c04024c0:	00c12083          	lw	ra,12(sp)
c04024c4:	01010113          	addi	sp,sp,16
c04024c8:	00008067          	ret

c04024cc <_ZN4core3ptr18real_drop_in_place17h37dd3eadd48b8c0dE>:
c04024cc:	ff010113          	addi	sp,sp,-16
c04024d0:	00112623          	sw	ra,12(sp)
c04024d4:	00812423          	sw	s0,8(sp)
c04024d8:	01010413          	addi	s0,sp,16
c04024dc:	00812403          	lw	s0,8(sp)
c04024e0:	00c12083          	lw	ra,12(sp)
c04024e4:	01010113          	addi	sp,sp,16
c04024e8:	00008067          	ret

c04024ec <_ZN4core3ptr18real_drop_in_place17hf6f7a7bc58c92d10E>:
c04024ec:	ff010113          	addi	sp,sp,-16
c04024f0:	00112623          	sw	ra,12(sp)
c04024f4:	00812423          	sw	s0,8(sp)
c04024f8:	01010413          	addi	s0,sp,16
c04024fc:	00812403          	lw	s0,8(sp)
c0402500:	00c12083          	lw	ra,12(sp)
c0402504:	01010113          	addi	sp,sp,16
c0402508:	00008067          	ret

c040250c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE>:
c040250c:	ff010113          	addi	sp,sp,-16
c0402510:	00112623          	sw	ra,12(sp)
c0402514:	00812423          	sw	s0,8(sp)
c0402518:	01010413          	addi	s0,sp,16
c040251c:	fe042a23          	sw	zero,-12(s0)
c0402520:	08000513          	li	a0,128
c0402524:	00a5f663          	bgeu	a1,a0,c0402530 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x24>
c0402528:	00100513          	li	a0,1
c040252c:	09c0006f          	j	c04025c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0xbc>
c0402530:	00b5d513          	srli	a0,a1,0xb
c0402534:	02051263          	bnez	a0,c0402558 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x4c>
c0402538:	03f5f513          	andi	a0,a1,63
c040253c:	08056513          	ori	a0,a0,128
c0402540:	fea40aa3          	sb	a0,-11(s0)
c0402544:	00200513          	li	a0,2
c0402548:	0065d593          	srli	a1,a1,0x6
c040254c:	01f5f593          	andi	a1,a1,31
c0402550:	fc05e593          	ori	a1,a1,-64
c0402554:	0740006f          	j	c04025c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0xbc>
c0402558:	0105d513          	srli	a0,a1,0x10
c040255c:	02051a63          	bnez	a0,c0402590 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x84>
c0402560:	03f5f513          	andi	a0,a1,63
c0402564:	08056513          	ori	a0,a0,128
c0402568:	fea40b23          	sb	a0,-10(s0)
c040256c:	0065d513          	srli	a0,a1,0x6
c0402570:	03f57513          	andi	a0,a0,63
c0402574:	08056513          	ori	a0,a0,128
c0402578:	fea40aa3          	sb	a0,-11(s0)
c040257c:	00300513          	li	a0,3
c0402580:	00c5d593          	srli	a1,a1,0xc
c0402584:	00f5f593          	andi	a1,a1,15
c0402588:	fe05e593          	ori	a1,a1,-32
c040258c:	03c0006f          	j	c04025c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0xbc>
c0402590:	03f5f513          	andi	a0,a1,63
c0402594:	08056513          	ori	a0,a0,128
c0402598:	fea40ba3          	sb	a0,-9(s0)
c040259c:	0065d513          	srli	a0,a1,0x6
c04025a0:	03f57513          	andi	a0,a0,63
c04025a4:	08056513          	ori	a0,a0,128
c04025a8:	fea40b23          	sb	a0,-10(s0)
c04025ac:	00c5d513          	srli	a0,a1,0xc
c04025b0:	03f57513          	andi	a0,a0,63
c04025b4:	08056513          	ori	a0,a0,128
c04025b8:	fea40aa3          	sb	a0,-11(s0)
c04025bc:	00400513          	li	a0,4
c04025c0:	0125d593          	srli	a1,a1,0x12
c04025c4:	ff05e593          	ori	a1,a1,-16
c04025c8:	feb40a23          	sb	a1,-12(s0)
c04025cc:	ff440613          	addi	a2,s0,-12
c04025d0:	00a607b3          	add	a5,a2,a0
c04025d4:	fff00e13          	li	t3,-1
c04025d8:	0df00393          	li	t2,223
c04025dc:	0f000813          	li	a6,240
c04025e0:	001c02b7          	lui	t0,0x1c0
c04025e4:	00110337          	lui	t1,0x110
c04025e8:	00100893          	li	a7,1
c04025ec:	00160693          	addi	a3,a2,1 # c0440001 <ebss+0x1eee1>
c04025f0:	01859513          	slli	a0,a1,0x18
c04025f4:	41855713          	srai	a4,a0,0x18
c04025f8:	0ff5f513          	andi	a0,a1,255
c04025fc:	0aee4663          	blt	t3,a4,c04026a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x19c>
c0402600:	04f68463          	beq	a3,a5,c0402648 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x13c>
c0402604:	00260693          	addi	a3,a2,2
c0402608:	00164603          	lbu	a2,1(a2)
c040260c:	03f67613          	andi	a2,a2,63
c0402610:	01f5f593          	andi	a1,a1,31
c0402614:	04a3f263          	bgeu	t2,a0,c0402658 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x14c>
c0402618:	04f68663          	beq	a3,a5,c0402664 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x158>
c040261c:	00168713          	addi	a4,a3,1
c0402620:	0006c683          	lbu	a3,0(a3)
c0402624:	03f6f693          	andi	a3,a3,63
c0402628:	00661613          	slli	a2,a2,0x6
c040262c:	00c6e633          	or	a2,a3,a2
c0402630:	05056463          	bltu	a0,a6,c0402678 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x16c>
c0402634:	04f70a63          	beq	a4,a5,c0402688 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x17c>
c0402638:	00170693          	addi	a3,a4,1 # 40000001 <XLENB+0x3ffffffd>
c040263c:	00074503          	lbu	a0,0(a4)
c0402640:	03f57513          	andi	a0,a0,63
c0402644:	04c0006f          	j	c0402690 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x184>
c0402648:	00078693          	mv	a3,a5
c040264c:	00000613          	li	a2,0
c0402650:	01f5f593          	andi	a1,a1,31
c0402654:	fca3e2e3          	bltu	t2,a0,c0402618 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x10c>
c0402658:	00659513          	slli	a0,a1,0x6
c040265c:	00a66533          	or	a0,a2,a0
c0402660:	0480006f          	j	c04026a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x19c>
c0402664:	00078713          	mv	a4,a5
c0402668:	00000693          	li	a3,0
c040266c:	00661613          	slli	a2,a2,0x6
c0402670:	00c6e633          	or	a2,a3,a2
c0402674:	fd0570e3          	bgeu	a0,a6,c0402634 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x128>
c0402678:	00c59513          	slli	a0,a1,0xc
c040267c:	00a66533          	or	a0,a2,a0
c0402680:	00070693          	mv	a3,a4
c0402684:	0240006f          	j	c04026a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x19c>
c0402688:	00078693          	mv	a3,a5
c040268c:	00000513          	li	a0,0
c0402690:	01259593          	slli	a1,a1,0x12
c0402694:	0055f5b3          	and	a1,a1,t0
c0402698:	00661613          	slli	a2,a2,0x6
c040269c:	00b665b3          	or	a1,a2,a1
c04026a0:	00a5e533          	or	a0,a1,a0
c04026a4:	02650263          	beq	a0,t1,c04026c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x1bc>
c04026a8:	0ff57513          	andi	a0,a0,255
c04026ac:	00000593          	li	a1,0
c04026b0:	00000613          	li	a2,0
c04026b4:	00000073          	ecall
c04026b8:	00f68863          	beq	a3,a5,c04026c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0x1bc>
c04026bc:	0006c583          	lbu	a1,0(a3)
c04026c0:	00068613          	mv	a2,a3
c04026c4:	f29ff06f          	j	c04025ec <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8b715e94c5ad385cE+0xe0>
c04026c8:	00000513          	li	a0,0
c04026cc:	00812403          	lw	s0,8(sp)
c04026d0:	00c12083          	lw	ra,12(sp)
c04026d4:	01010113          	addi	sp,sp,16
c04026d8:	00008067          	ret

c04026dc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17hc809e2c47fe09f38E>:
c04026dc:	fd010113          	addi	sp,sp,-48
c04026e0:	02112623          	sw	ra,44(sp)
c04026e4:	02812423          	sw	s0,40(sp)
c04026e8:	03010413          	addi	s0,sp,48
c04026ec:	00052503          	lw	a0,0(a0)
c04026f0:	fca42e23          	sw	a0,-36(s0)
c04026f4:	0145a503          	lw	a0,20(a1)
c04026f8:	fea42a23          	sw	a0,-12(s0)
c04026fc:	0105a503          	lw	a0,16(a1)
c0402700:	fea42823          	sw	a0,-16(s0)
c0402704:	00c5a503          	lw	a0,12(a1)
c0402708:	fea42623          	sw	a0,-20(s0)
c040270c:	0085a503          	lw	a0,8(a1)
c0402710:	fea42423          	sw	a0,-24(s0)
c0402714:	0045a503          	lw	a0,4(a1)
c0402718:	fea42223          	sw	a0,-28(s0)
c040271c:	0005a503          	lw	a0,0(a1)
c0402720:	fea42023          	sw	a0,-32(s0)
c0402724:	c0408537          	lui	a0,0xc0408
c0402728:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c040272c:	fdc40513          	addi	a0,s0,-36
c0402730:	fe040613          	addi	a2,s0,-32
c0402734:	00003097          	auipc	ra,0x3
c0402738:	f14080e7          	jalr	-236(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c040273c:	02812403          	lw	s0,40(sp)
c0402740:	02c12083          	lw	ra,44(sp)
c0402744:	03010113          	addi	sp,sp,48
c0402748:	00008067          	ret

c040274c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE>:
c040274c:	ff010113          	addi	sp,sp,-16
c0402750:	00112623          	sw	ra,12(sp)
c0402754:	00812423          	sw	s0,8(sp)
c0402758:	01010413          	addi	s0,sp,16
c040275c:	10060463          	beqz	a2,c0402864 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x118>
c0402760:	00058693          	mv	a3,a1
c0402764:	00c587b3          	add	a5,a1,a2
c0402768:	fff00e13          	li	t3,-1
c040276c:	0df00813          	li	a6,223
c0402770:	0f000293          	li	t0,240
c0402774:	001c0337          	lui	t1,0x1c0
c0402778:	001103b7          	lui	t2,0x110
c040277c:	00100893          	li	a7,1
c0402780:	00168593          	addi	a1,a3,1
c0402784:	00068603          	lb	a2,0(a3)
c0402788:	0ff67513          	andi	a0,a2,255
c040278c:	02ce5663          	bge	t3,a2,c04027b8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x6c>
c0402790:	00058693          	mv	a3,a1
c0402794:	0ff57513          	andi	a0,a0,255
c0402798:	00000593          	li	a1,0
c040279c:	00000613          	li	a2,0
c04027a0:	00000073          	ecall
c04027a4:	0cf68063          	beq	a3,a5,c0402864 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x118>
c04027a8:	00168593          	addi	a1,a3,1
c04027ac:	00068603          	lb	a2,0(a3)
c04027b0:	0ff67513          	andi	a0,a2,255
c04027b4:	fcce4ee3          	blt	t3,a2,c0402790 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x44>
c04027b8:	04f58663          	beq	a1,a5,c0402804 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0xb8>
c04027bc:	00268713          	addi	a4,a3,2
c04027c0:	0016c583          	lbu	a1,1(a3)
c04027c4:	03f5f613          	andi	a2,a1,63
c04027c8:	01f57593          	andi	a1,a0,31
c04027cc:	04a87463          	bgeu	a6,a0,c0402814 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0xc8>
c04027d0:	04f70a63          	beq	a4,a5,c0402824 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0xd8>
c04027d4:	00170693          	addi	a3,a4,1
c04027d8:	00074703          	lbu	a4,0(a4)
c04027dc:	03f77713          	andi	a4,a4,63
c04027e0:	00661613          	slli	a2,a2,0x6
c04027e4:	00c76633          	or	a2,a4,a2
c04027e8:	04556863          	bltu	a0,t0,c0402838 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0xec>
c04027ec:	04f68c63          	beq	a3,a5,c0402844 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0xf8>
c04027f0:	00168713          	addi	a4,a3,1
c04027f4:	0006c503          	lbu	a0,0(a3)
c04027f8:	03f57513          	andi	a0,a0,63
c04027fc:	00070693          	mv	a3,a4
c0402800:	04c0006f          	j	c040284c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x100>
c0402804:	00078713          	mv	a4,a5
c0402808:	00000613          	li	a2,0
c040280c:	01f57593          	andi	a1,a0,31
c0402810:	fca860e3          	bltu	a6,a0,c04027d0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x84>
c0402814:	00659513          	slli	a0,a1,0x6
c0402818:	00a66533          	or	a0,a2,a0
c040281c:	00070693          	mv	a3,a4
c0402820:	f75ff06f          	j	c0402794 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x48>
c0402824:	00078693          	mv	a3,a5
c0402828:	00000713          	li	a4,0
c040282c:	00661613          	slli	a2,a2,0x6
c0402830:	00c76633          	or	a2,a4,a2
c0402834:	fa557ce3          	bgeu	a0,t0,c04027ec <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0xa0>
c0402838:	00c59513          	slli	a0,a1,0xc
c040283c:	00a66533          	or	a0,a2,a0
c0402840:	f55ff06f          	j	c0402794 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x48>
c0402844:	00078693          	mv	a3,a5
c0402848:	00000513          	li	a0,0
c040284c:	01259593          	slli	a1,a1,0x12
c0402850:	0065f5b3          	and	a1,a1,t1
c0402854:	00661613          	slli	a2,a2,0x6
c0402858:	00b665b3          	or	a1,a2,a1
c040285c:	00a5e533          	or	a0,a1,a0
c0402860:	f2751ae3          	bne	a0,t2,c0402794 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h35e852041b2dec6cE+0x48>
c0402864:	00000513          	li	a0,0
c0402868:	00812403          	lw	s0,8(sp)
c040286c:	00c12083          	lw	ra,12(sp)
c0402870:	01010113          	addi	sp,sp,16
c0402874:	00008067          	ret

c0402878 <_ZN2os2io6_print17hd9d56d54c8c6512bE>:
c0402878:	fd010113          	addi	sp,sp,-48
c040287c:	02112623          	sw	ra,44(sp)
c0402880:	02812423          	sw	s0,40(sp)
c0402884:	03010413          	addi	s0,sp,48
c0402888:	fe040593          	addi	a1,s0,-32
c040288c:	fcb42e23          	sw	a1,-36(s0)
c0402890:	01452583          	lw	a1,20(a0)
c0402894:	feb42a23          	sw	a1,-12(s0)
c0402898:	01052583          	lw	a1,16(a0)
c040289c:	feb42823          	sw	a1,-16(s0)
c04028a0:	00c52583          	lw	a1,12(a0)
c04028a4:	feb42623          	sw	a1,-20(s0)
c04028a8:	00852583          	lw	a1,8(a0)
c04028ac:	feb42423          	sw	a1,-24(s0)
c04028b0:	00452583          	lw	a1,4(a0)
c04028b4:	feb42223          	sw	a1,-28(s0)
c04028b8:	00052503          	lw	a0,0(a0)
c04028bc:	fea42023          	sw	a0,-32(s0)
c04028c0:	c0408537          	lui	a0,0xc0408
c04028c4:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c04028c8:	fdc40513          	addi	a0,s0,-36
c04028cc:	fe040613          	addi	a2,s0,-32
c04028d0:	00003097          	auipc	ra,0x3
c04028d4:	d78080e7          	jalr	-648(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c04028d8:	00051a63          	bnez	a0,c04028ec <_ZN2os2io6_print17hd9d56d54c8c6512bE+0x74>
c04028dc:	02812403          	lw	s0,40(sp)
c04028e0:	02c12083          	lw	ra,44(sp)
c04028e4:	03010113          	addi	sp,sp,48
c04028e8:	00008067          	ret
c04028ec:	c0408537          	lui	a0,0xc0408
c04028f0:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c04028f4:	c04085b7          	lui	a1,0xc0408
c04028f8:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c04028fc:	fe040613          	addi	a2,s0,-32
c0402900:	02b00593          	li	a1,43
c0402904:	00002097          	auipc	ra,0x2
c0402908:	0e4080e7          	jalr	228(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c040290c:	ffffe097          	auipc	ra,0xffffe
c0402910:	000080e7          	jalr	ra # c040090c <abort>

c0402914 <_ZN4core3ptr18real_drop_in_place17h429ab5c72ed71bedE>:
c0402914:	ff010113          	addi	sp,sp,-16
c0402918:	00112623          	sw	ra,12(sp)
c040291c:	00812423          	sw	s0,8(sp)
c0402920:	01010413          	addi	s0,sp,16
c0402924:	00812403          	lw	s0,8(sp)
c0402928:	00c12083          	lw	ra,12(sp)
c040292c:	01010113          	addi	sp,sp,16
c0402930:	00008067          	ret

c0402934 <_ZN2os5clock4init17ha2af600859813ca7E>:
c0402934:	fb010113          	addi	sp,sp,-80
c0402938:	04112623          	sw	ra,76(sp)
c040293c:	04812423          	sw	s0,72(sp)
c0402940:	05010413          	addi	s0,sp,80
c0402944:	c0421537          	lui	a0,0xc0421
c0402948:	12052023          	sw	zero,288(a0) # c0421120 <ebss+0x0>
c040294c:	02000513          	li	a0,32
c0402950:	10452073          	csrs	sie,a0
c0402954:	c81025f3          	rdtimeh	a1
c0402958:	c0102673          	rdtime	a2
c040295c:	c8102573          	rdtimeh	a0
c0402960:	fea59ae3          	bne	a1,a0,c0402954 <_ZN2os5clock4init17ha2af600859813ca7E+0x20>
c0402964:	3e860513          	addi	a0,a2,1000
c0402968:	00c53633          	sltu	a2,a0,a2
c040296c:	00c585b3          	add	a1,a1,a2
c0402970:	00000613          	li	a2,0
c0402974:	00000893          	li	a7,0
c0402978:	00000073          	ecall
c040297c:	c0405537          	lui	a0,0xc0405
c0402980:	5dc50513          	addi	a0,a0,1500 # c04055dc <ebss+0xfffe44bc>
c0402984:	faa42e23          	sw	a0,-68(s0)
c0402988:	fc040513          	addi	a0,s0,-64
c040298c:	faa42c23          	sw	a0,-72(s0)
c0402990:	00400513          	li	a0,4
c0402994:	fca42823          	sw	a0,-48(s0)
c0402998:	c0408537          	lui	a0,0xc0408
c040299c:	76850513          	addi	a0,a0,1896 # c0408768 <ebss+0xfffe7648>
c04029a0:	fca42023          	sw	a0,-64(s0)
c04029a4:	fc042a23          	sw	zero,-44(s0)
c04029a8:	fc042423          	sw	zero,-56(s0)
c04029ac:	00100513          	li	a0,1
c04029b0:	fca42223          	sw	a0,-60(s0)
c04029b4:	fe040593          	addi	a1,s0,-32
c04029b8:	fcb42e23          	sw	a1,-36(s0)
c04029bc:	fea42a23          	sw	a0,-12(s0)
c04029c0:	fb840513          	addi	a0,s0,-72
c04029c4:	fea42823          	sw	a0,-16(s0)
c04029c8:	00200513          	li	a0,2
c04029cc:	fea42223          	sw	a0,-28(s0)
c04029d0:	c0408537          	lui	a0,0xc0408
c04029d4:	74050513          	addi	a0,a0,1856 # c0408740 <ebss+0xfffe7620>
c04029d8:	fea42023          	sw	a0,-32(s0)
c04029dc:	c0408537          	lui	a0,0xc0408
c04029e0:	6d850593          	addi	a1,a0,1752 # c04086d8 <ebss+0xfffe75b8>
c04029e4:	fe042423          	sw	zero,-24(s0)
c04029e8:	fdc40513          	addi	a0,s0,-36
c04029ec:	fe040613          	addi	a2,s0,-32
c04029f0:	00003097          	auipc	ra,0x3
c04029f4:	c58080e7          	jalr	-936(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c04029f8:	00051a63          	bnez	a0,c0402a0c <_ZN2os5clock4init17ha2af600859813ca7E+0xd8>
c04029fc:	04812403          	lw	s0,72(sp)
c0402a00:	04c12083          	lw	ra,76(sp)
c0402a04:	05010113          	addi	sp,sp,80
c0402a08:	00008067          	ret
c0402a0c:	c0408537          	lui	a0,0xc0408
c0402a10:	6f050513          	addi	a0,a0,1776 # c04086f0 <ebss+0xfffe75d0>
c0402a14:	c04085b7          	lui	a1,0xc0408
c0402a18:	71c58693          	addi	a3,a1,1820 # c040871c <ebss+0xfffe75fc>
c0402a1c:	fe040613          	addi	a2,s0,-32
c0402a20:	02b00593          	li	a1,43
c0402a24:	00002097          	auipc	ra,0x2
c0402a28:	fc4080e7          	jalr	-60(ra) # c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>
c0402a2c:	ffffe097          	auipc	ra,0xffffe
c0402a30:	ee0080e7          	jalr	-288(ra) # c040090c <abort>

c0402a34 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E>:
c0402a34:	ff010113          	addi	sp,sp,-16
c0402a38:	00112623          	sw	ra,12(sp)
c0402a3c:	00812423          	sw	s0,8(sp)
c0402a40:	01010413          	addi	s0,sp,16
c0402a44:	00b60633          	add	a2,a2,a1
c0402a48:	ffc67e13          	andi	t3,a2,-4
c0402a4c:	00358593          	addi	a1,a1,3
c0402a50:	ffc5f693          	andi	a3,a1,-4
c0402a54:	16de6e63          	bltu	t3,a3,c0402bd0 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x19c>
c0402a58:	00468593          	addi	a1,a3,4
c0402a5c:	00be7663          	bgeu	t3,a1,c0402a68 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x34>
c0402a60:	00000793          	li	a5,0
c0402a64:	1340006f          	j	c0402b98 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x164>
c0402a68:	01f00893          	li	a7,31
c0402a6c:	00100813          	li	a6,1
c0402a70:	555555b7          	lui	a1,0x55555
c0402a74:	55558293          	addi	t0,a1,1365 # 55555555 <XLENB+0x55555551>
c0402a78:	333335b7          	lui	a1,0x33333
c0402a7c:	33358e93          	addi	t4,a1,819 # 33333333 <XLENB+0x3333332f>
c0402a80:	0f0f15b7          	lui	a1,0xf0f1
c0402a84:	f0f58313          	addi	t1,a1,-241 # f0f0f0f <XLENB+0xf0f0f0b>
c0402a88:	010105b7          	lui	a1,0x1010
c0402a8c:	10158393          	addi	t2,a1,257 # 1010101 <XLENB+0x10100fd>
c0402a90:	00000793          	li	a5,0
c0402a94:	40d005b3          	neg	a1,a3
c0402a98:	00b6f5b3          	and	a1,a3,a1
c0402a9c:	40de0633          	sub	a2,t3,a3
c0402aa0:	0a060c63          	beqz	a2,c0402b58 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x124>
c0402aa4:	00165713          	srli	a4,a2,0x1
c0402aa8:	00e66633          	or	a2,a2,a4
c0402aac:	00265713          	srli	a4,a2,0x2
c0402ab0:	00e66633          	or	a2,a2,a4
c0402ab4:	00465713          	srli	a4,a2,0x4
c0402ab8:	00e66633          	or	a2,a2,a4
c0402abc:	00865713          	srli	a4,a2,0x8
c0402ac0:	00e66633          	or	a2,a2,a4
c0402ac4:	01065713          	srli	a4,a2,0x10
c0402ac8:	00e66633          	or	a2,a2,a4
c0402acc:	fff64613          	not	a2,a2
c0402ad0:	00165713          	srli	a4,a2,0x1
c0402ad4:	00577733          	and	a4,a4,t0
c0402ad8:	40e60633          	sub	a2,a2,a4
c0402adc:	01d67733          	and	a4,a2,t4
c0402ae0:	00265613          	srli	a2,a2,0x2
c0402ae4:	01d67633          	and	a2,a2,t4
c0402ae8:	00c70633          	add	a2,a4,a2
c0402aec:	00465713          	srli	a4,a2,0x4
c0402af0:	00e60633          	add	a2,a2,a4
c0402af4:	00667633          	and	a2,a2,t1
c0402af8:	02760633          	mul	a2,a2,t2
c0402afc:	01865613          	srli	a2,a2,0x18
c0402b00:	40c88633          	sub	a2,a7,a2
c0402b04:	00c81633          	sll	a2,a6,a2
c0402b08:	00b66463          	bltu	a2,a1,c0402b10 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0xdc>
c0402b0c:	00058613          	mv	a2,a1
c0402b10:	04060e63          	beqz	a2,c0402b6c <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x138>
c0402b14:	fff60593          	addi	a1,a2,-1
c0402b18:	fff64713          	not	a4,a2
c0402b1c:	00b775b3          	and	a1,a4,a1
c0402b20:	0015d713          	srli	a4,a1,0x1
c0402b24:	00577733          	and	a4,a4,t0
c0402b28:	40e585b3          	sub	a1,a1,a4
c0402b2c:	01d5f733          	and	a4,a1,t4
c0402b30:	0025d593          	srli	a1,a1,0x2
c0402b34:	01d5f5b3          	and	a1,a1,t4
c0402b38:	00b705b3          	add	a1,a4,a1
c0402b3c:	0045d713          	srli	a4,a1,0x4
c0402b40:	00e585b3          	add	a1,a1,a4
c0402b44:	0065f5b3          	and	a1,a1,t1
c0402b48:	027585b3          	mul	a1,a1,t2
c0402b4c:	0185d593          	srli	a1,a1,0x18
c0402b50:	02b8f263          	bgeu	a7,a1,c0402b74 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x140>
c0402b54:	0600006f          	j	c0402bb4 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x180>
c0402b58:	02000613          	li	a2,32
c0402b5c:	40c88633          	sub	a2,a7,a2
c0402b60:	00c81633          	sll	a2,a6,a2
c0402b64:	fab674e3          	bgeu	a2,a1,c0402b0c <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0xd8>
c0402b68:	fa9ff06f          	j	c0402b10 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0xdc>
c0402b6c:	02000593          	li	a1,32
c0402b70:	04b8e263          	bltu	a7,a1,c0402bb4 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x180>
c0402b74:	00259593          	slli	a1,a1,0x2
c0402b78:	00b505b3          	add	a1,a0,a1
c0402b7c:	0005a703          	lw	a4,0(a1)
c0402b80:	00e6a023          	sw	a4,0(a3)
c0402b84:	00d5a023          	sw	a3,0(a1)
c0402b88:	00f607b3          	add	a5,a2,a5
c0402b8c:	00d606b3          	add	a3,a2,a3
c0402b90:	00468593          	addi	a1,a3,4
c0402b94:	f0be70e3          	bgeu	t3,a1,c0402a94 <_ZN22buddy_system_allocator4Heap4init17h3b39e0d2056bf409E+0x60>
c0402b98:	08852583          	lw	a1,136(a0)
c0402b9c:	00f585b3          	add	a1,a1,a5
c0402ba0:	08b52423          	sw	a1,136(a0)
c0402ba4:	00812403          	lw	s0,8(sp)
c0402ba8:	00c12083          	lw	ra,12(sp)
c0402bac:	01010113          	addi	sp,sp,16
c0402bb0:	00008067          	ret
c0402bb4:	c0409537          	lui	a0,0xc0409
c0402bb8:	87850513          	addi	a0,a0,-1928 # c0408878 <ebss+0xfffe7758>
c0402bbc:	02000613          	li	a2,32
c0402bc0:	00002097          	auipc	ra,0x2
c0402bc4:	d54080e7          	jalr	-684(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0402bc8:	ffffe097          	auipc	ra,0xffffe
c0402bcc:	d44080e7          	jalr	-700(ra) # c040090c <abort>
c0402bd0:	c0408537          	lui	a0,0xc0408
c0402bd4:	7f850513          	addi	a0,a0,2040 # c04087f8 <ebss+0xfffe76d8>
c0402bd8:	00002097          	auipc	ra,0x2
c0402bdc:	cc4080e7          	jalr	-828(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0402be0:	ffffe097          	auipc	ra,0xffffe
c0402be4:	d2c080e7          	jalr	-724(ra) # c040090c <abort>

c0402be8 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E>:
c0402be8:	ff010113          	addi	sp,sp,-16
c0402bec:	00112623          	sw	ra,12(sp)
c0402bf0:	00812423          	sw	s0,8(sp)
c0402bf4:	01010413          	addi	s0,sp,16
c0402bf8:	00100893          	li	a7,1
c0402bfc:	00200693          	li	a3,2
c0402c00:	06d5fa63          	bgeu	a1,a3,c0402c74 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x8c>
c0402c04:	00400693          	li	a3,4
c0402c08:	10c6f063          	bgeu	a3,a2,c0402d08 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x120>
c0402c0c:	11167263          	bgeu	a2,a7,c0402d10 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x128>
c0402c10:	10088463          	beqz	a7,c0402d18 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x130>
c0402c14:	fff88613          	addi	a2,a7,-1
c0402c18:	fff8c693          	not	a3,a7
c0402c1c:	00c6f633          	and	a2,a3,a2
c0402c20:	555556b7          	lui	a3,0x55555
c0402c24:	55568693          	addi	a3,a3,1365 # 55555555 <XLENB+0x55555551>
c0402c28:	00165713          	srli	a4,a2,0x1
c0402c2c:	00d776b3          	and	a3,a4,a3
c0402c30:	40d60633          	sub	a2,a2,a3
c0402c34:	333336b7          	lui	a3,0x33333
c0402c38:	33368693          	addi	a3,a3,819 # 33333333 <XLENB+0x3333332f>
c0402c3c:	00d67733          	and	a4,a2,a3
c0402c40:	00265613          	srli	a2,a2,0x2
c0402c44:	00d67633          	and	a2,a2,a3
c0402c48:	00c70633          	add	a2,a4,a2
c0402c4c:	00465693          	srli	a3,a2,0x4
c0402c50:	00d60633          	add	a2,a2,a3
c0402c54:	0f0f16b7          	lui	a3,0xf0f1
c0402c58:	f0f68693          	addi	a3,a3,-241 # f0f0f0f <XLENB+0xf0f0f0b>
c0402c5c:	00d67633          	and	a2,a2,a3
c0402c60:	010106b7          	lui	a3,0x1010
c0402c64:	10168693          	addi	a3,a3,257 # 1010101 <XLENB+0x10100fd>
c0402c68:	02d60633          	mul	a2,a2,a3
c0402c6c:	01865293          	srli	t0,a2,0x18
c0402c70:	0ac0006f          	j	c0402d1c <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x134>
c0402c74:	fff58693          	addi	a3,a1,-1
c0402c78:	0016d713          	srli	a4,a3,0x1
c0402c7c:	00e6e6b3          	or	a3,a3,a4
c0402c80:	0026d713          	srli	a4,a3,0x2
c0402c84:	00e6e6b3          	or	a3,a3,a4
c0402c88:	0046d713          	srli	a4,a3,0x4
c0402c8c:	00e6e6b3          	or	a3,a3,a4
c0402c90:	0086d713          	srli	a4,a3,0x8
c0402c94:	00e6e6b3          	or	a3,a3,a4
c0402c98:	0106d713          	srli	a4,a3,0x10
c0402c9c:	00e6e6b3          	or	a3,a3,a4
c0402ca0:	55555737          	lui	a4,0x55555
c0402ca4:	55570713          	addi	a4,a4,1365 # 55555555 <XLENB+0x55555551>
c0402ca8:	fff6c693          	not	a3,a3
c0402cac:	0016d793          	srli	a5,a3,0x1
c0402cb0:	00e7f733          	and	a4,a5,a4
c0402cb4:	40e686b3          	sub	a3,a3,a4
c0402cb8:	33333737          	lui	a4,0x33333
c0402cbc:	33370713          	addi	a4,a4,819 # 33333333 <XLENB+0x3333332f>
c0402cc0:	00e6f7b3          	and	a5,a3,a4
c0402cc4:	0026d693          	srli	a3,a3,0x2
c0402cc8:	00e6f6b3          	and	a3,a3,a4
c0402ccc:	00d786b3          	add	a3,a5,a3
c0402cd0:	0046d713          	srli	a4,a3,0x4
c0402cd4:	00e686b3          	add	a3,a3,a4
c0402cd8:	0f0f1737          	lui	a4,0xf0f1
c0402cdc:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <XLENB+0xf0f0f0b>
c0402ce0:	00e6f6b3          	and	a3,a3,a4
c0402ce4:	01010737          	lui	a4,0x1010
c0402ce8:	10170713          	addi	a4,a4,257 # 1010101 <XLENB+0x10100fd>
c0402cec:	02e686b3          	mul	a3,a3,a4
c0402cf0:	0186d693          	srli	a3,a3,0x18
c0402cf4:	fff00713          	li	a4,-1
c0402cf8:	00d756b3          	srl	a3,a4,a3
c0402cfc:	00168893          	addi	a7,a3,1
c0402d00:	00400693          	li	a3,4
c0402d04:	f0c6e4e3          	bltu	a3,a2,c0402c0c <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x24>
c0402d08:	00400613          	li	a2,4
c0402d0c:	f11662e3          	bltu	a2,a7,c0402c10 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x28>
c0402d10:	00060893          	mv	a7,a2
c0402d14:	f00890e3          	bnez	a7,c0402c14 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x2c>
c0402d18:	02000293          	li	t0,32
c0402d1c:	00229813          	slli	a6,t0,0x2
c0402d20:	00a80633          	add	a2,a6,a0
c0402d24:	00100693          	li	a3,1
c0402d28:	fe028313          	addi	t1,t0,-32 # 1bffe0 <XLENB+0x1bffdc>
c0402d2c:	ff860793          	addi	a5,a2,-8
c0402d30:	00000613          	li	a2,0
c0402d34:	0ac30463          	beq	t1,a2,c0402ddc <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x1f4>
c0402d38:	fff60613          	addi	a2,a2,-1
c0402d3c:	fff68693          	addi	a3,a3,-1
c0402d40:	00478713          	addi	a4,a5,4
c0402d44:	0087ae83          	lw	t4,8(a5)
c0402d48:	00070793          	mv	a5,a4
c0402d4c:	fe0e84e3          	beqz	t4,c0402d34 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x14c>
c0402d50:	40d286b3          	sub	a3,t0,a3
c0402d54:	04d2f863          	bgeu	t0,a3,c0402da4 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x1bc>
c0402d58:	40c286b3          	sub	a3,t0,a2
c0402d5c:	00128313          	addi	t1,t0,1
c0402d60:	01f00e13          	li	t3,31
c0402d64:	00100393          	li	t2,1
c0402d68:	fff68613          	addi	a2,a3,-1
c0402d6c:	08ce6463          	bltu	t3,a2,c0402df4 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x20c>
c0402d70:	000ea783          	lw	a5,0(t4)
c0402d74:	00f72223          	sw	a5,4(a4)
c0402d78:	ffe68693          	addi	a3,a3,-2
c0402d7c:	08de6c63          	bltu	t3,a3,c0402e14 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x22c>
c0402d80:	00d396b3          	sll	a3,t2,a3
c0402d84:	01d686b3          	add	a3,a3,t4
c0402d88:	00072783          	lw	a5,0(a4)
c0402d8c:	00f6a023          	sw	a5,0(a3)
c0402d90:	00dea023          	sw	a3,0(t4)
c0402d94:	01d72023          	sw	t4,0(a4)
c0402d98:	ffc70713          	addi	a4,a4,-4
c0402d9c:	00060693          	mv	a3,a2
c0402da0:	fcc364e3          	bltu	t1,a2,c0402d68 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x180>
c0402da4:	02000613          	li	a2,32
c0402da8:	08c2f663          	bgeu	t0,a2,c0402e34 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x24c>
c0402dac:	010506b3          	add	a3,a0,a6
c0402db0:	0006a603          	lw	a2,0(a3)
c0402db4:	0a060063          	beqz	a2,c0402e54 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x26c>
c0402db8:	00062703          	lw	a4,0(a2)
c0402dbc:	00e6a023          	sw	a4,0(a3)
c0402dc0:	08052683          	lw	a3,128(a0)
c0402dc4:	00b685b3          	add	a1,a3,a1
c0402dc8:	08b52023          	sw	a1,128(a0)
c0402dcc:	08452583          	lw	a1,132(a0)
c0402dd0:	011585b3          	add	a1,a1,a7
c0402dd4:	08b52223          	sw	a1,132(a0)
c0402dd8:	0080006f          	j	c0402de0 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E+0x1f8>
c0402ddc:	00000613          	li	a2,0
c0402de0:	00060513          	mv	a0,a2
c0402de4:	00812403          	lw	s0,8(sp)
c0402de8:	00c12083          	lw	ra,12(sp)
c0402dec:	01010113          	addi	sp,sp,16
c0402df0:	00008067          	ret
c0402df4:	c0409537          	lui	a0,0xc0409
c0402df8:	88850513          	addi	a0,a0,-1912 # c0408888 <ebss+0xfffe7768>
c0402dfc:	fff68593          	addi	a1,a3,-1
c0402e00:	02000613          	li	a2,32
c0402e04:	00002097          	auipc	ra,0x2
c0402e08:	b10080e7          	jalr	-1264(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0402e0c:	ffffe097          	auipc	ra,0xffffe
c0402e10:	b00080e7          	jalr	-1280(ra) # c040090c <abort>
c0402e14:	c0409537          	lui	a0,0xc0409
c0402e18:	89850513          	addi	a0,a0,-1896 # c0408898 <ebss+0xfffe7778>
c0402e1c:	00068593          	mv	a1,a3
c0402e20:	02000613          	li	a2,32
c0402e24:	00002097          	auipc	ra,0x2
c0402e28:	af0080e7          	jalr	-1296(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0402e2c:	ffffe097          	auipc	ra,0xffffe
c0402e30:	ae0080e7          	jalr	-1312(ra) # c040090c <abort>
c0402e34:	c0409537          	lui	a0,0xc0409
c0402e38:	8a850513          	addi	a0,a0,-1880 # c04088a8 <ebss+0xfffe7788>
c0402e3c:	00028593          	mv	a1,t0
c0402e40:	02000613          	li	a2,32
c0402e44:	00002097          	auipc	ra,0x2
c0402e48:	ad0080e7          	jalr	-1328(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0402e4c:	ffffe097          	auipc	ra,0xffffe
c0402e50:	ac0080e7          	jalr	-1344(ra) # c040090c <abort>
c0402e54:	c0409537          	lui	a0,0xc0409
c0402e58:	8b850513          	addi	a0,a0,-1864 # c04088b8 <ebss+0xfffe7798>
c0402e5c:	02800593          	li	a1,40
c0402e60:	00001097          	auipc	ra,0x1
c0402e64:	590080e7          	jalr	1424(ra) # c04043f0 <_ZN4core6option13expect_failed17hbc653d0d840790aeE>
c0402e68:	ffffe097          	auipc	ra,0xffffe
c0402e6c:	aa4080e7          	jalr	-1372(ra) # c040090c <abort>

c0402e70 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE>:
c0402e70:	ff010113          	addi	sp,sp,-16
c0402e74:	00112623          	sw	ra,12(sp)
c0402e78:	00812423          	sw	s0,8(sp)
c0402e7c:	01010413          	addi	s0,sp,16
c0402e80:	00100293          	li	t0,1
c0402e84:	00200713          	li	a4,2
c0402e88:	12e67a63          	bgeu	a2,a4,c0402fbc <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x14c>
c0402e8c:	00400713          	li	a4,4
c0402e90:	1cd77063          	bgeu	a4,a3,c0403050 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x1e0>
c0402e94:	1c56f263          	bgeu	a3,t0,c0403058 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x1e8>
c0402e98:	1c028463          	beqz	t0,c0403060 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x1f0>
c0402e9c:	fff28693          	addi	a3,t0,-1
c0402ea0:	fff2c713          	not	a4,t0
c0402ea4:	00d776b3          	and	a3,a4,a3
c0402ea8:	55555737          	lui	a4,0x55555
c0402eac:	55570713          	addi	a4,a4,1365 # 55555555 <XLENB+0x55555551>
c0402eb0:	0016d793          	srli	a5,a3,0x1
c0402eb4:	00e7f733          	and	a4,a5,a4
c0402eb8:	40e686b3          	sub	a3,a3,a4
c0402ebc:	33333737          	lui	a4,0x33333
c0402ec0:	33370713          	addi	a4,a4,819 # 33333333 <XLENB+0x3333332f>
c0402ec4:	00e6f7b3          	and	a5,a3,a4
c0402ec8:	0026d693          	srli	a3,a3,0x2
c0402ecc:	00e6f6b3          	and	a3,a3,a4
c0402ed0:	00d786b3          	add	a3,a5,a3
c0402ed4:	0046d713          	srli	a4,a3,0x4
c0402ed8:	00e686b3          	add	a3,a3,a4
c0402edc:	0f0f1737          	lui	a4,0xf0f1
c0402ee0:	f0f70713          	addi	a4,a4,-241 # f0f0f0f <XLENB+0xf0f0f0b>
c0402ee4:	00e6f6b3          	and	a3,a3,a4
c0402ee8:	01010737          	lui	a4,0x1010
c0402eec:	10170713          	addi	a4,a4,257 # 1010101 <XLENB+0x10100fd>
c0402ef0:	02e686b3          	mul	a3,a3,a4
c0402ef4:	0186d313          	srli	t1,a3,0x18
c0402ef8:	01f00813          	li	a6,31
c0402efc:	16686863          	bltu	a6,t1,c040306c <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x1fc>
c0402f00:	00231693          	slli	a3,t1,0x2
c0402f04:	00d503b3          	add	t2,a0,a3
c0402f08:	0003a683          	lw	a3,0(t2) # 110000 <XLENB+0x10fffc>
c0402f0c:	00d5a023          	sw	a3,0(a1)
c0402f10:	00100893          	li	a7,1
c0402f14:	006896b3          	sll	a3,a7,t1
c0402f18:	00b3a023          	sw	a1,0(t2)
c0402f1c:	00b6c6b3          	xor	a3,a3,a1
c0402f20:	00058713          	mv	a4,a1
c0402f24:	00058e13          	mv	t3,a1
c0402f28:	00038793          	mv	a5,t2
c0402f2c:	00b68c63          	beq	a3,a1,c0402f44 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0xd4>
c0402f30:	00070793          	mv	a5,a4
c0402f34:	00072703          	lw	a4,0(a4)
c0402f38:	04070e63          	beqz	a4,c0402f94 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x124>
c0402f3c:	fee69ae3          	bne	a3,a4,c0402f30 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0xc0>
c0402f40:	00068e13          	mv	t3,a3
c0402f44:	000e2703          	lw	a4,0(t3)
c0402f48:	00e7a023          	sw	a4,0(a5)
c0402f4c:	0003a703          	lw	a4,0(t2)
c0402f50:	00070663          	beqz	a4,c0402f5c <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0xec>
c0402f54:	00072703          	lw	a4,0(a4)
c0402f58:	00e3a023          	sw	a4,0(t2)
c0402f5c:	00b6e463          	bltu	a3,a1,c0402f64 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0xf4>
c0402f60:	00058693          	mv	a3,a1
c0402f64:	00130713          	addi	a4,t1,1 # 1c0001 <XLENB+0x1bfffd>
c0402f68:	13030263          	beq	t1,a6,c040308c <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x21c>
c0402f6c:	00068593          	mv	a1,a3
c0402f70:	00271693          	slli	a3,a4,0x2
c0402f74:	00d503b3          	add	t2,a0,a3
c0402f78:	0003a683          	lw	a3,0(t2)
c0402f7c:	00d5a023          	sw	a3,0(a1)
c0402f80:	00e896b3          	sll	a3,a7,a4
c0402f84:	00b6c6b3          	xor	a3,a3,a1
c0402f88:	00b3a023          	sw	a1,0(t2)
c0402f8c:	00070313          	mv	t1,a4
c0402f90:	f80598e3          	bnez	a1,c0402f20 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0xb0>
c0402f94:	08052583          	lw	a1,128(a0)
c0402f98:	40c585b3          	sub	a1,a1,a2
c0402f9c:	08b52023          	sw	a1,128(a0)
c0402fa0:	08452583          	lw	a1,132(a0)
c0402fa4:	405585b3          	sub	a1,a1,t0
c0402fa8:	08b52223          	sw	a1,132(a0)
c0402fac:	00812403          	lw	s0,8(sp)
c0402fb0:	00c12083          	lw	ra,12(sp)
c0402fb4:	01010113          	addi	sp,sp,16
c0402fb8:	00008067          	ret
c0402fbc:	fff60713          	addi	a4,a2,-1
c0402fc0:	00175793          	srli	a5,a4,0x1
c0402fc4:	00f76733          	or	a4,a4,a5
c0402fc8:	00275793          	srli	a5,a4,0x2
c0402fcc:	00f76733          	or	a4,a4,a5
c0402fd0:	00475793          	srli	a5,a4,0x4
c0402fd4:	00f76733          	or	a4,a4,a5
c0402fd8:	00875793          	srli	a5,a4,0x8
c0402fdc:	00f76733          	or	a4,a4,a5
c0402fe0:	01075793          	srli	a5,a4,0x10
c0402fe4:	00f76733          	or	a4,a4,a5
c0402fe8:	555557b7          	lui	a5,0x55555
c0402fec:	55578813          	addi	a6,a5,1365 # 55555555 <XLENB+0x55555551>
c0402ff0:	fff74713          	not	a4,a4
c0402ff4:	00175793          	srli	a5,a4,0x1
c0402ff8:	0107f7b3          	and	a5,a5,a6
c0402ffc:	40f70733          	sub	a4,a4,a5
c0403000:	333337b7          	lui	a5,0x33333
c0403004:	33378793          	addi	a5,a5,819 # 33333333 <XLENB+0x3333332f>
c0403008:	00f77833          	and	a6,a4,a5
c040300c:	00275713          	srli	a4,a4,0x2
c0403010:	00f77733          	and	a4,a4,a5
c0403014:	00e80733          	add	a4,a6,a4
c0403018:	00475793          	srli	a5,a4,0x4
c040301c:	00f70733          	add	a4,a4,a5
c0403020:	0f0f17b7          	lui	a5,0xf0f1
c0403024:	f0f78793          	addi	a5,a5,-241 # f0f0f0f <XLENB+0xf0f0f0b>
c0403028:	00f77733          	and	a4,a4,a5
c040302c:	010107b7          	lui	a5,0x1010
c0403030:	10178793          	addi	a5,a5,257 # 1010101 <XLENB+0x10100fd>
c0403034:	02f70733          	mul	a4,a4,a5
c0403038:	01875713          	srli	a4,a4,0x18
c040303c:	fff00793          	li	a5,-1
c0403040:	00e7d733          	srl	a4,a5,a4
c0403044:	00170293          	addi	t0,a4,1
c0403048:	00400713          	li	a4,4
c040304c:	e4d764e3          	bltu	a4,a3,c0402e94 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x24>
c0403050:	00400693          	li	a3,4
c0403054:	e456e2e3          	bltu	a3,t0,c0402e98 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x28>
c0403058:	00068293          	mv	t0,a3
c040305c:	e40290e3          	bnez	t0,c0402e9c <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x2c>
c0403060:	02000313          	li	t1,32
c0403064:	01f00813          	li	a6,31
c0403068:	e8687ce3          	bgeu	a6,t1,c0402f00 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE+0x90>
c040306c:	c0409537          	lui	a0,0xc0409
c0403070:	8e050513          	addi	a0,a0,-1824 # c04088e0 <ebss+0xfffe77c0>
c0403074:	00030593          	mv	a1,t1
c0403078:	02000613          	li	a2,32
c040307c:	00002097          	auipc	ra,0x2
c0403080:	898080e7          	jalr	-1896(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0403084:	ffffe097          	auipc	ra,0xffffe
c0403088:	888080e7          	jalr	-1912(ra) # c040090c <abort>
c040308c:	c0409537          	lui	a0,0xc0409
c0403090:	8f050513          	addi	a0,a0,-1808 # c04088f0 <ebss+0xfffe77d0>
c0403094:	00070593          	mv	a1,a4
c0403098:	02000613          	li	a2,32
c040309c:	00002097          	auipc	ra,0x2
c04030a0:	878080e7          	jalr	-1928(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04030a4:	ffffe097          	auipc	ra,0xffffe
c04030a8:	868080e7          	jalr	-1944(ra) # c040090c <abort>

c04030ac <_ZN78_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..ops..deref..Deref$GT$5deref17h729bb3edfdb6c350E>:
c04030ac:	ff010113          	addi	sp,sp,-16
c04030b0:	00112623          	sw	ra,12(sp)
c04030b4:	00812423          	sw	s0,8(sp)
c04030b8:	01010413          	addi	s0,sp,16
c04030bc:	00812403          	lw	s0,8(sp)
c04030c0:	00c12083          	lw	ra,12(sp)
c04030c4:	01010113          	addi	sp,sp,16
c04030c8:	00008067          	ret

c04030cc <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE>:
c04030cc:	ff010113          	addi	sp,sp,-16
c04030d0:	00112623          	sw	ra,12(sp)
c04030d4:	00812423          	sw	s0,8(sp)
c04030d8:	00912223          	sw	s1,4(sp)
c04030dc:	01010413          	addi	s0,sp,16
c04030e0:	00050493          	mv	s1,a0
c04030e4:	00351513          	slli	a0,a0,0x3
c04030e8:	01857693          	andi	a3,a0,24
c04030ec:	0ff00513          	li	a0,255
c04030f0:	00d51533          	sll	a0,a0,a3
c04030f4:	00100713          	li	a4,1
c04030f8:	00d71833          	sll	a6,a4,a3
c04030fc:	ffc4f713          	andi	a4,s1,-4
c0403100:	140727af          	lr.w.aq	a5,(a4)
c0403104:	00a7f6b3          	and	a3,a5,a0
c0403108:	00069c63          	bnez	a3,c0403120 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE+0x54>
c040310c:	0107c6b3          	xor	a3,a5,a6
c0403110:	00a6f6b3          	and	a3,a3,a0
c0403114:	00d7c6b3          	xor	a3,a5,a3
c0403118:	18d726af          	sc.w	a3,a3,(a4)
c040311c:	fe0692e3          	bnez	a3,c0403100 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE+0x34>
c0403120:	00a7f6b3          	and	a3,a5,a0
c0403124:	02068c63          	beqz	a3,c040315c <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE+0x90>
c0403128:	00048683          	lb	a3,0(s1)
c040312c:	0ff6f693          	andi	a3,a3,255
c0403130:	fe069ce3          	bnez	a3,c0403128 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE+0x5c>
c0403134:	140726af          	lr.w.aq	a3,(a4)
c0403138:	00a6f7b3          	and	a5,a3,a0
c040313c:	00079c63          	bnez	a5,c0403154 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE+0x88>
c0403140:	0106c7b3          	xor	a5,a3,a6
c0403144:	00a7f7b3          	and	a5,a5,a0
c0403148:	00f6c7b3          	xor	a5,a3,a5
c040314c:	18f727af          	sc.w	a5,a5,(a4)
c0403150:	fe0792e3          	bnez	a5,c0403134 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE+0x68>
c0403154:	00a6f6b3          	and	a3,a3,a0
c0403158:	fc0698e3          	bnez	a3,c0403128 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17hf76ce334d51a3d9fE+0x5c>
c040315c:	00448513          	addi	a0,s1,4
c0403160:	00000097          	auipc	ra,0x0
c0403164:	a88080e7          	jalr	-1400(ra) # c0402be8 <_ZN22buddy_system_allocator4Heap5alloc17h67f29383da8e3191E>
c0403168:	0310000f          	fence	rw,w
c040316c:	00048023          	sb	zero,0(s1)
c0403170:	00412483          	lw	s1,4(sp)
c0403174:	00812403          	lw	s0,8(sp)
c0403178:	00c12083          	lw	ra,12(sp)
c040317c:	01010113          	addi	sp,sp,16
c0403180:	00008067          	ret

c0403184 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE>:
c0403184:	ff010113          	addi	sp,sp,-16
c0403188:	00112623          	sw	ra,12(sp)
c040318c:	00812423          	sw	s0,8(sp)
c0403190:	00912223          	sw	s1,4(sp)
c0403194:	01010413          	addi	s0,sp,16
c0403198:	00050493          	mv	s1,a0
c040319c:	00351513          	slli	a0,a0,0x3
c04031a0:	01857713          	andi	a4,a0,24
c04031a4:	0ff00513          	li	a0,255
c04031a8:	00e51533          	sll	a0,a0,a4
c04031ac:	00100793          	li	a5,1
c04031b0:	00e79833          	sll	a6,a5,a4
c04031b4:	ffc4f893          	andi	a7,s1,-4
c04031b8:	1408a72f          	lr.w.aq	a4,(a7)
c04031bc:	00a777b3          	and	a5,a4,a0
c04031c0:	00079c63          	bnez	a5,c04031d8 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE+0x54>
c04031c4:	010747b3          	xor	a5,a4,a6
c04031c8:	00a7f7b3          	and	a5,a5,a0
c04031cc:	00f747b3          	xor	a5,a4,a5
c04031d0:	18f8a7af          	sc.w	a5,a5,(a7)
c04031d4:	fe0792e3          	bnez	a5,c04031b8 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE+0x34>
c04031d8:	00a77733          	and	a4,a4,a0
c04031dc:	00070a63          	beqz	a4,c04031f0 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE+0x6c>
c04031e0:	00048703          	lb	a4,0(s1)
c04031e4:	0ff77713          	andi	a4,a4,255
c04031e8:	fe071ce3          	bnez	a4,c04031e0 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE+0x5c>
c04031ec:	fcdff06f          	j	c04031b8 <_ZN79_$LT$buddy_system_allocator..LockedHeap$u20$as$u20$core..alloc..GlobalAlloc$GT$7dealloc17h16ae8419e4c0487bE+0x34>
c04031f0:	00448513          	addi	a0,s1,4
c04031f4:	00000097          	auipc	ra,0x0
c04031f8:	c7c080e7          	jalr	-900(ra) # c0402e70 <_ZN22buddy_system_allocator4Heap7dealloc17hd6ef84af87e0a49bE>
c04031fc:	0310000f          	fence	rw,w
c0403200:	00048023          	sb	zero,0(s1)
c0403204:	00412483          	lw	s1,4(sp)
c0403208:	00812403          	lw	s0,8(sp)
c040320c:	00c12083          	lw	ra,12(sp)
c0403210:	01010113          	addi	sp,sp,16
c0403214:	00008067          	ret

c0403218 <_ZN5riscv6paging10page_table9PageTable4zero17h0353d5334b97a818E>:
c0403218:	ff010113          	addi	sp,sp,-16
c040321c:	00112623          	sw	ra,12(sp)
c0403220:	00812423          	sw	s0,8(sp)
c0403224:	01010413          	addi	s0,sp,16
c0403228:	00000593          	li	a1,0
c040322c:	00001637          	lui	a2,0x1
c0403230:	00812403          	lw	s0,8(sp)
c0403234:	00c12083          	lw	ra,12(sp)
c0403238:	01010113          	addi	sp,sp,16
c040323c:	00004317          	auipc	t1,0x4
c0403240:	42830067          	jr	1064(t1) # c0407664 <memset>

c0403244 <_ZN93_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h11ac6d9b7bf33147E>:
c0403244:	ff010113          	addi	sp,sp,-16
c0403248:	00112623          	sw	ra,12(sp)
c040324c:	00812423          	sw	s0,8(sp)
c0403250:	01010413          	addi	s0,sp,16
c0403254:	3ff00613          	li	a2,1023
c0403258:	00b66e63          	bltu	a2,a1,c0403274 <_ZN93_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h11ac6d9b7bf33147E+0x30>
c040325c:	00259593          	slli	a1,a1,0x2
c0403260:	00b50533          	add	a0,a0,a1
c0403264:	00812403          	lw	s0,8(sp)
c0403268:	00c12083          	lw	ra,12(sp)
c040326c:	01010113          	addi	sp,sp,16
c0403270:	00008067          	ret
c0403274:	c0409537          	lui	a0,0xc0409
c0403278:	92450513          	addi	a0,a0,-1756 # c0408924 <ebss+0xfffe7804>
c040327c:	40000613          	li	a2,1024
c0403280:	00001097          	auipc	ra,0x1
c0403284:	694080e7          	jalr	1684(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0403288:	ffffd097          	auipc	ra,0xffffd
c040328c:	684080e7          	jalr	1668(ra) # c040090c <abort>

c0403290 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h5302252705ba1faeE>:
c0403290:	ff010113          	addi	sp,sp,-16
c0403294:	00112623          	sw	ra,12(sp)
c0403298:	00812423          	sw	s0,8(sp)
c040329c:	01010413          	addi	s0,sp,16
c04032a0:	3ff00613          	li	a2,1023
c04032a4:	00b66e63          	bltu	a2,a1,c04032c0 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h5302252705ba1faeE+0x30>
c04032a8:	00259593          	slli	a1,a1,0x2
c04032ac:	00b50533          	add	a0,a0,a1
c04032b0:	00812403          	lw	s0,8(sp)
c04032b4:	00c12083          	lw	ra,12(sp)
c04032b8:	01010113          	addi	sp,sp,16
c04032bc:	00008067          	ret
c04032c0:	c0409537          	lui	a0,0xc0409
c04032c4:	93450513          	addi	a0,a0,-1740 # c0408934 <ebss+0xfffe7814>
c04032c8:	40000613          	li	a2,1024
c04032cc:	00001097          	auipc	ra,0x1
c04032d0:	648080e7          	jalr	1608(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04032d4:	ffffd097          	auipc	ra,0xffffd
c04032d8:	638080e7          	jalr	1592(ra) # c040090c <abort>

c04032dc <_ZN5riscv6paging10page_table14PageTableEntry9is_unused17h094aa2cd913bf07aE>:
c04032dc:	ff010113          	addi	sp,sp,-16
c04032e0:	00112623          	sw	ra,12(sp)
c04032e4:	00812423          	sw	s0,8(sp)
c04032e8:	01010413          	addi	s0,sp,16
c04032ec:	00052503          	lw	a0,0(a0)
c04032f0:	00153513          	seqz	a0,a0
c04032f4:	00812403          	lw	s0,8(sp)
c04032f8:	00c12083          	lw	ra,12(sp)
c04032fc:	01010113          	addi	sp,sp,16
c0403300:	00008067          	ret

c0403304 <_ZN5riscv6paging10page_table14PageTableEntry4addr17h19e6fb0fae0cdb74E>:
c0403304:	ff010113          	addi	sp,sp,-16
c0403308:	00112623          	sw	ra,12(sp)
c040330c:	00812423          	sw	s0,8(sp)
c0403310:	01010413          	addi	s0,sp,16
c0403314:	00052503          	lw	a0,0(a0)
c0403318:	00251513          	slli	a0,a0,0x2
c040331c:	fffff5b7          	lui	a1,0xfffff
c0403320:	00b57533          	and	a0,a0,a1
c0403324:	00812403          	lw	s0,8(sp)
c0403328:	00c12083          	lw	ra,12(sp)
c040332c:	01010113          	addi	sp,sp,16
c0403330:	00008067          	ret

c0403334 <_ZN5riscv6paging10page_table14PageTableEntry3set17h50c5cd25638856a4E>:
c0403334:	fe010113          	addi	sp,sp,-32
c0403338:	00112e23          	sw	ra,28(sp)
c040333c:	00812c23          	sw	s0,24(sp)
c0403340:	00912a23          	sw	s1,20(sp)
c0403344:	01212823          	sw	s2,16(sp)
c0403348:	02010413          	addi	s0,sp,32
c040334c:	00060493          	mv	s1,a2
c0403350:	00050913          	mv	s2,a0
c0403354:	feb42623          	sw	a1,-20(s0)
c0403358:	fec40513          	addi	a0,s0,-20
c040335c:	00c00593          	li	a1,12
c0403360:	02000613          	li	a2,32
c0403364:	00001097          	auipc	ra,0x1
c0403368:	e04080e7          	jalr	-508(ra) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>
c040336c:	00a51513          	slli	a0,a0,0xa
c0403370:	00956533          	or	a0,a0,s1
c0403374:	0c056513          	ori	a0,a0,192
c0403378:	00a92023          	sw	a0,0(s2)
c040337c:	01012903          	lw	s2,16(sp)
c0403380:	01412483          	lw	s1,20(sp)
c0403384:	01812403          	lw	s0,24(sp)
c0403388:	01c12083          	lw	ra,28(sp)
c040338c:	02010113          	addi	sp,sp,32
c0403390:	00008067          	ret

c0403394 <_ZN5riscv6paging10page_table14PageTableEntry9flags_mut17hc5385fea7611d666E>:
c0403394:	ff010113          	addi	sp,sp,-16
c0403398:	00112623          	sw	ra,12(sp)
c040339c:	00812423          	sw	s0,8(sp)
c04033a0:	01010413          	addi	s0,sp,16
c04033a4:	00812403          	lw	s0,8(sp)
c04033a8:	00c12083          	lw	ra,12(sp)
c04033ac:	01010113          	addi	sp,sp,16
c04033b0:	00008067          	ret

c04033b4 <_ZN4core3ptr18real_drop_in_place17h052b111663666d60E>:
c04033b4:	ff010113          	addi	sp,sp,-16
c04033b8:	00112623          	sw	ra,12(sp)
c04033bc:	00812423          	sw	s0,8(sp)
c04033c0:	01010413          	addi	s0,sp,16
c04033c4:	00812403          	lw	s0,8(sp)
c04033c8:	00c12083          	lw	ra,12(sp)
c04033cc:	01010113          	addi	sp,sp,16
c04033d0:	00008067          	ret

c04033d4 <_ZN5riscv6paging9recursive11MapperFlush3new17hbdbc2d9296e5a7eeE>:
c04033d4:	ff010113          	addi	sp,sp,-16
c04033d8:	00112623          	sw	ra,12(sp)
c04033dc:	00812423          	sw	s0,8(sp)
c04033e0:	01010413          	addi	s0,sp,16
c04033e4:	00812403          	lw	s0,8(sp)
c04033e8:	00c12083          	lw	ra,12(sp)
c04033ec:	01010113          	addi	sp,sp,16
c04033f0:	00008067          	ret

c04033f4 <_ZN5riscv6paging9recursive11MapperFlush5flush17h62ff492823dcae5eE>:
c04033f4:	ff010113          	addi	sp,sp,-16
c04033f8:	00112623          	sw	ra,12(sp)
c04033fc:	00812423          	sw	s0,8(sp)
c0403400:	01010413          	addi	s0,sp,16
c0403404:	12a00073          	sfence.vma	zero,a0
c0403408:	00812403          	lw	s0,8(sp)
c040340c:	00c12083          	lw	ra,12(sp)
c0403410:	01010113          	addi	sp,sp,16
c0403414:	00008067          	ret

c0403418 <_ZN73_$LT$riscv..paging..recursive..MapToError$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6e1f7daab3ce4e0E>:
c0403418:	fe010113          	addi	sp,sp,-32
c040341c:	00112e23          	sw	ra,28(sp)
c0403420:	00812c23          	sw	s0,24(sp)
c0403424:	00912a23          	sw	s1,20(sp)
c0403428:	02010413          	addi	s0,sp,32
c040342c:	00054503          	lbu	a0,0(a0)
c0403430:	02050263          	beqz	a0,c0403454 <_ZN73_$LT$riscv..paging..recursive..MapToError$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6e1f7daab3ce4e0E+0x3c>
c0403434:	00100613          	li	a2,1
c0403438:	02c50a63          	beq	a0,a2,c040346c <_ZN73_$LT$riscv..paging..recursive..MapToError$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6e1f7daab3ce4e0E+0x54>
c040343c:	c0409537          	lui	a0,0xc0409
c0403440:	94450613          	addi	a2,a0,-1724 # c0408944 <ebss+0xfffe7824>
c0403444:	fe840493          	addi	s1,s0,-24
c0403448:	00048513          	mv	a0,s1
c040344c:	01100693          	li	a3,17
c0403450:	0300006f          	j	c0403480 <_ZN73_$LT$riscv..paging..recursive..MapToError$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6e1f7daab3ce4e0E+0x68>
c0403454:	c0409537          	lui	a0,0xc0409
c0403458:	96850613          	addi	a2,a0,-1688 # c0408968 <ebss+0xfffe7848>
c040345c:	fe840493          	addi	s1,s0,-24
c0403460:	00048513          	mv	a0,s1
c0403464:	01500693          	li	a3,21
c0403468:	0180006f          	j	c0403480 <_ZN73_$LT$riscv..paging..recursive..MapToError$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6e1f7daab3ce4e0E+0x68>
c040346c:	c0409537          	lui	a0,0xc0409
c0403470:	95550613          	addi	a2,a0,-1707 # c0408955 <ebss+0xfffe7835>
c0403474:	fe840493          	addi	s1,s0,-24
c0403478:	00048513          	mv	a0,s1
c040347c:	01300693          	li	a3,19
c0403480:	00003097          	auipc	ra,0x3
c0403484:	e30080e7          	jalr	-464(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c0403488:	00048513          	mv	a0,s1
c040348c:	00004097          	auipc	ra,0x4
c0403490:	bc0080e7          	jalr	-1088(ra) # c040704c <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E>
c0403494:	01412483          	lw	s1,20(sp)
c0403498:	01812403          	lw	s0,24(sp)
c040349c:	01c12083          	lw	ra,28(sp)
c04034a0:	02010113          	addi	sp,sp,32
c04034a4:	00008067          	ret

c04034a8 <_ZN73_$LT$riscv..paging..recursive..UnmapError$u20$as$u20$core..fmt..Debug$GT$3fmt17h74d5140d9c2a13daE>:
c04034a8:	fe010113          	addi	sp,sp,-32
c04034ac:	00112e23          	sw	ra,28(sp)
c04034b0:	00812c23          	sw	s0,24(sp)
c04034b4:	00912a23          	sw	s1,20(sp)
c04034b8:	01212823          	sw	s2,16(sp)
c04034bc:	02010413          	addi	s0,sp,32
c04034c0:	00050493          	mv	s1,a0
c04034c4:	00052503          	lw	a0,0(a0)
c04034c8:	04050663          	beqz	a0,c0403514 <_ZN73_$LT$riscv..paging..recursive..UnmapError$u20$as$u20$core..fmt..Debug$GT$3fmt17h74d5140d9c2a13daE+0x6c>
c04034cc:	00100613          	li	a2,1
c04034d0:	04c50e63          	beq	a0,a2,c040352c <_ZN73_$LT$riscv..paging..recursive..UnmapError$u20$as$u20$core..fmt..Debug$GT$3fmt17h74d5140d9c2a13daE+0x84>
c04034d4:	c0409537          	lui	a0,0xc0409
c04034d8:	97d50613          	addi	a2,a0,-1667 # c040897d <ebss+0xfffe785d>
c04034dc:	fe040913          	addi	s2,s0,-32
c04034e0:	00090513          	mv	a0,s2
c04034e4:	01300693          	li	a3,19
c04034e8:	00003097          	auipc	ra,0x3
c04034ec:	dc8080e7          	jalr	-568(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c04034f0:	00448513          	addi	a0,s1,4
c04034f4:	fea42623          	sw	a0,-20(s0)
c04034f8:	c0409537          	lui	a0,0xc0409
c04034fc:	99050613          	addi	a2,a0,-1648 # c0408990 <ebss+0xfffe7870>
c0403500:	fec40593          	addi	a1,s0,-20
c0403504:	00090513          	mv	a0,s2
c0403508:	00004097          	auipc	ra,0x4
c040350c:	990080e7          	jalr	-1648(ra) # c0406e98 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E>
c0403510:	0380006f          	j	c0403548 <_ZN73_$LT$riscv..paging..recursive..UnmapError$u20$as$u20$core..fmt..Debug$GT$3fmt17h74d5140d9c2a13daE+0xa0>
c0403514:	c0409537          	lui	a0,0xc0409
c0403518:	95550613          	addi	a2,a0,-1707 # c0408955 <ebss+0xfffe7835>
c040351c:	fe040913          	addi	s2,s0,-32
c0403520:	00090513          	mv	a0,s2
c0403524:	01300693          	li	a3,19
c0403528:	0180006f          	j	c0403540 <_ZN73_$LT$riscv..paging..recursive..UnmapError$u20$as$u20$core..fmt..Debug$GT$3fmt17h74d5140d9c2a13daE+0x98>
c040352c:	c0409537          	lui	a0,0xc0409
c0403530:	9a050613          	addi	a2,a0,-1632 # c04089a0 <ebss+0xfffe7880>
c0403534:	fe040913          	addi	s2,s0,-32
c0403538:	00090513          	mv	a0,s2
c040353c:	00d00693          	li	a3,13
c0403540:	00003097          	auipc	ra,0x3
c0403544:	d70080e7          	jalr	-656(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c0403548:	00090513          	mv	a0,s2
c040354c:	00004097          	auipc	ra,0x4
c0403550:	b00080e7          	jalr	-1280(ra) # c040704c <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E>
c0403554:	01012903          	lw	s2,16(sp)
c0403558:	01412483          	lw	s1,20(sp)
c040355c:	01812403          	lw	s0,24(sp)
c0403560:	01c12083          	lw	ra,28(sp)
c0403564:	02010113          	addi	sp,sp,32
c0403568:	00008067          	ret

c040356c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hd61bb3800badba83E>:
c040356c:	ff010113          	addi	sp,sp,-16
c0403570:	00112623          	sw	ra,12(sp)
c0403574:	00812423          	sw	s0,8(sp)
c0403578:	01010413          	addi	s0,sp,16
c040357c:	00052503          	lw	a0,0(a0)
c0403580:	00812403          	lw	s0,8(sp)
c0403584:	00c12083          	lw	ra,12(sp)
c0403588:	01010113          	addi	sp,sp,16
c040358c:	00000317          	auipc	t1,0x0
c0403590:	4e830067          	jr	1256(t1) # c0403a74 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E>

c0403594 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc8b7167ef60cdd5E>:
c0403594:	ff010113          	addi	sp,sp,-16
c0403598:	00112623          	sw	ra,12(sp)
c040359c:	00812423          	sw	s0,8(sp)
c04035a0:	01010413          	addi	s0,sp,16
c04035a4:	00052503          	lw	a0,0(a0)
c04035a8:	00812403          	lw	s0,8(sp)
c04035ac:	00c12083          	lw	ra,12(sp)
c04035b0:	01010113          	addi	sp,sp,16
c04035b4:	00000317          	auipc	t1,0x0
c04035b8:	3b030067          	jr	944(t1) # c0403964 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE>

c04035bc <_ZN4core3ptr18real_drop_in_place17h54431d4458bf57dfE>:
c04035bc:	ff010113          	addi	sp,sp,-16
c04035c0:	00112623          	sw	ra,12(sp)
c04035c4:	00812423          	sw	s0,8(sp)
c04035c8:	01010413          	addi	s0,sp,16
c04035cc:	00812403          	lw	s0,8(sp)
c04035d0:	00c12083          	lw	ra,12(sp)
c04035d4:	01010113          	addi	sp,sp,16
c04035d8:	00008067          	ret

c04035dc <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E>:
c04035dc:	ff010113          	addi	sp,sp,-16
c04035e0:	00112623          	sw	ra,12(sp)
c04035e4:	00812423          	sw	s0,8(sp)
c04035e8:	01010413          	addi	s0,sp,16
c04035ec:	00050593          	mv	a1,a0
c04035f0:	00600513          	li	a0,6
c04035f4:	00400613          	li	a2,4
c04035f8:	02b64663          	blt	a2,a1,c0403624 <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E+0x48>
c04035fc:	04058a63          	beqz	a1,c0403650 <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E+0x74>
c0403600:	00100613          	li	a2,1
c0403604:	06c58063          	beq	a1,a2,c0403664 <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E+0x88>
c0403608:	00400613          	li	a2,4
c040360c:	02c59a63          	bne	a1,a2,c0403640 <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E+0x64>
c0403610:	00200513          	li	a0,2
c0403614:	00812403          	lw	s0,8(sp)
c0403618:	00c12083          	lw	ra,12(sp)
c040361c:	01010113          	addi	sp,sp,16
c0403620:	00008067          	ret
c0403624:	00500613          	li	a2,5
c0403628:	04c58863          	beq	a1,a2,c0403678 <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E+0x9c>
c040362c:	00800613          	li	a2,8
c0403630:	04c58e63          	beq	a1,a2,c040368c <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E+0xb0>
c0403634:	00900613          	li	a2,9
c0403638:	00c59463          	bne	a1,a2,c0403640 <_ZN5riscv8register6scause9Interrupt4from17h151a18dc46a77146E+0x64>
c040363c:	00500513          	li	a0,5
c0403640:	00812403          	lw	s0,8(sp)
c0403644:	00c12083          	lw	ra,12(sp)
c0403648:	01010113          	addi	sp,sp,16
c040364c:	00008067          	ret
c0403650:	00000513          	li	a0,0
c0403654:	00812403          	lw	s0,8(sp)
c0403658:	00c12083          	lw	ra,12(sp)
c040365c:	01010113          	addi	sp,sp,16
c0403660:	00008067          	ret
c0403664:	00100513          	li	a0,1
c0403668:	00812403          	lw	s0,8(sp)
c040366c:	00c12083          	lw	ra,12(sp)
c0403670:	01010113          	addi	sp,sp,16
c0403674:	00008067          	ret
c0403678:	00300513          	li	a0,3
c040367c:	00812403          	lw	s0,8(sp)
c0403680:	00c12083          	lw	ra,12(sp)
c0403684:	01010113          	addi	sp,sp,16
c0403688:	00008067          	ret
c040368c:	00400513          	li	a0,4
c0403690:	00812403          	lw	s0,8(sp)
c0403694:	00c12083          	lw	ra,12(sp)
c0403698:	01010113          	addi	sp,sp,16
c040369c:	00008067          	ret

c04036a0 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE>:
c04036a0:	ff010113          	addi	sp,sp,-16
c04036a4:	00112623          	sw	ra,12(sp)
c04036a8:	00812423          	sw	s0,8(sp)
c04036ac:	01010413          	addi	s0,sp,16
c04036b0:	00050593          	mv	a1,a0
c04036b4:	00b00513          	li	a0,11
c04036b8:	00500613          	li	a2,5
c04036bc:	02b65c63          	bge	a2,a1,c04036f4 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0x54>
c04036c0:	00b00613          	li	a2,11
c04036c4:	06b64263          	blt	a2,a1,c0403728 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0x88>
c04036c8:	00600613          	li	a2,6
c04036cc:	0ac58463          	beq	a1,a2,c0403774 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xd4>
c04036d0:	00700613          	li	a2,7
c04036d4:	0ac58a63          	beq	a1,a2,c0403788 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xe8>
c04036d8:	00800613          	li	a2,8
c04036dc:	08c59463          	bne	a1,a2,c0403764 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xc4>
c04036e0:	00700513          	li	a0,7
c04036e4:	00812403          	lw	s0,8(sp)
c04036e8:	00c12083          	lw	ra,12(sp)
c04036ec:	01010113          	addi	sp,sp,16
c04036f0:	00008067          	ret
c04036f4:	00100613          	li	a2,1
c04036f8:	04b65e63          	bge	a2,a1,c0403754 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xb4>
c04036fc:	00200613          	li	a2,2
c0403700:	08c58e63          	beq	a1,a2,c040379c <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xfc>
c0403704:	00300613          	li	a2,3
c0403708:	0ac58463          	beq	a1,a2,c04037b0 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0x110>
c040370c:	00500613          	li	a2,5
c0403710:	04c59a63          	bne	a1,a2,c0403764 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xc4>
c0403714:	00400513          	li	a0,4
c0403718:	00812403          	lw	s0,8(sp)
c040371c:	00c12083          	lw	ra,12(sp)
c0403720:	01010113          	addi	sp,sp,16
c0403724:	00008067          	ret
c0403728:	00c00613          	li	a2,12
c040372c:	08c58c63          	beq	a1,a2,c04037c4 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0x124>
c0403730:	00d00613          	li	a2,13
c0403734:	0ac58263          	beq	a1,a2,c04037d8 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0x138>
c0403738:	00f00613          	li	a2,15
c040373c:	02c59463          	bne	a1,a2,c0403764 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xc4>
c0403740:	00a00513          	li	a0,10
c0403744:	00812403          	lw	s0,8(sp)
c0403748:	00c12083          	lw	ra,12(sp)
c040374c:	01010113          	addi	sp,sp,16
c0403750:	00008067          	ret
c0403754:	08058c63          	beqz	a1,c04037ec <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0x14c>
c0403758:	00100613          	li	a2,1
c040375c:	00c59463          	bne	a1,a2,c0403764 <_ZN5riscv8register6scause9Exception4from17hfde017e01084535eE+0xc4>
c0403760:	00100513          	li	a0,1
c0403764:	00812403          	lw	s0,8(sp)
c0403768:	00c12083          	lw	ra,12(sp)
c040376c:	01010113          	addi	sp,sp,16
c0403770:	00008067          	ret
c0403774:	00500513          	li	a0,5
c0403778:	00812403          	lw	s0,8(sp)
c040377c:	00c12083          	lw	ra,12(sp)
c0403780:	01010113          	addi	sp,sp,16
c0403784:	00008067          	ret
c0403788:	00600513          	li	a0,6
c040378c:	00812403          	lw	s0,8(sp)
c0403790:	00c12083          	lw	ra,12(sp)
c0403794:	01010113          	addi	sp,sp,16
c0403798:	00008067          	ret
c040379c:	00200513          	li	a0,2
c04037a0:	00812403          	lw	s0,8(sp)
c04037a4:	00c12083          	lw	ra,12(sp)
c04037a8:	01010113          	addi	sp,sp,16
c04037ac:	00008067          	ret
c04037b0:	00300513          	li	a0,3
c04037b4:	00812403          	lw	s0,8(sp)
c04037b8:	00c12083          	lw	ra,12(sp)
c04037bc:	01010113          	addi	sp,sp,16
c04037c0:	00008067          	ret
c04037c4:	00800513          	li	a0,8
c04037c8:	00812403          	lw	s0,8(sp)
c04037cc:	00c12083          	lw	ra,12(sp)
c04037d0:	01010113          	addi	sp,sp,16
c04037d4:	00008067          	ret
c04037d8:	00900513          	li	a0,9
c04037dc:	00812403          	lw	s0,8(sp)
c04037e0:	00c12083          	lw	ra,12(sp)
c04037e4:	01010113          	addi	sp,sp,16
c04037e8:	00008067          	ret
c04037ec:	00000513          	li	a0,0
c04037f0:	00812403          	lw	s0,8(sp)
c04037f4:	00c12083          	lw	ra,12(sp)
c04037f8:	01010113          	addi	sp,sp,16
c04037fc:	00008067          	ret

c0403800 <_ZN5riscv8register6scause6Scause4code17h4ccc164ddb1b2037E>:
c0403800:	ff010113          	addi	sp,sp,-16
c0403804:	00112623          	sw	ra,12(sp)
c0403808:	00812423          	sw	s0,8(sp)
c040380c:	01010413          	addi	s0,sp,16
c0403810:	800005b7          	lui	a1,0x80000
c0403814:	fff58593          	addi	a1,a1,-1 # 7fffffff <ebss+0xbfbdeedf>
c0403818:	00052503          	lw	a0,0(a0)
c040381c:	00b57533          	and	a0,a0,a1
c0403820:	00812403          	lw	s0,8(sp)
c0403824:	00c12083          	lw	ra,12(sp)
c0403828:	01010113          	addi	sp,sp,16
c040382c:	00008067          	ret

c0403830 <_ZN68_$LT$riscv..register..scause..Scause$u20$as$u20$core..fmt..Debug$GT$3fmt17h0170831e7577ce50E>:
c0403830:	fe010113          	addi	sp,sp,-32
c0403834:	00112e23          	sw	ra,28(sp)
c0403838:	00812c23          	sw	s0,24(sp)
c040383c:	00912a23          	sw	s1,20(sp)
c0403840:	01212823          	sw	s2,16(sp)
c0403844:	02010413          	addi	s0,sp,32
c0403848:	00050493          	mv	s1,a0
c040384c:	c0409537          	lui	a0,0xc0409
c0403850:	9ad50613          	addi	a2,a0,-1619 # c04089ad <ebss+0xfffe788d>
c0403854:	fe040913          	addi	s2,s0,-32
c0403858:	00090513          	mv	a0,s2
c040385c:	00600693          	li	a3,6
c0403860:	00003097          	auipc	ra,0x3
c0403864:	9f4080e7          	jalr	-1548(ra) # c0406254 <_ZN4core3fmt9Formatter12debug_struct17had6302012c33b047E>
c0403868:	fe942623          	sw	s1,-20(s0)
c040386c:	c0408537          	lui	a0,0xc0408
c0403870:	25450593          	addi	a1,a0,596 # c0408254 <ebss+0xfffe7134>
c0403874:	c0409537          	lui	a0,0xc0409
c0403878:	9b450713          	addi	a4,a0,-1612 # c04089b4 <ebss+0xfffe7894>
c040387c:	fec40693          	addi	a3,s0,-20
c0403880:	00090513          	mv	a0,s2
c0403884:	00400613          	li	a2,4
c0403888:	00003097          	auipc	ra,0x3
c040388c:	32c080e7          	jalr	812(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0403890:	00090513          	mv	a0,s2
c0403894:	00003097          	auipc	ra,0x3
c0403898:	578080e7          	jalr	1400(ra) # c0406e0c <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE>
c040389c:	01012903          	lw	s2,16(sp)
c04038a0:	01412483          	lw	s1,20(sp)
c04038a4:	01812403          	lw	s0,24(sp)
c04038a8:	01c12083          	lw	ra,28(sp)
c04038ac:	02010113          	addi	sp,sp,32
c04038b0:	00008067          	ret

c04038b4 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa53703b499bbb10E>:
c04038b4:	fe010113          	addi	sp,sp,-32
c04038b8:	00112e23          	sw	ra,28(sp)
c04038bc:	00812c23          	sw	s0,24(sp)
c04038c0:	00912a23          	sw	s1,20(sp)
c04038c4:	01212823          	sw	s2,16(sp)
c04038c8:	02010413          	addi	s0,sp,32
c04038cc:	00150913          	addi	s2,a0,1
c04038d0:	00054503          	lbu	a0,0(a0)
c04038d4:	00100613          	li	a2,1
c04038d8:	02c51863          	bne	a0,a2,c0403908 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa53703b499bbb10E+0x54>
c04038dc:	c0409537          	lui	a0,0xc0409
c04038e0:	9c450613          	addi	a2,a0,-1596 # c04089c4 <ebss+0xfffe78a4>
c04038e4:	fe040493          	addi	s1,s0,-32
c04038e8:	00048513          	mv	a0,s1
c04038ec:	00900693          	li	a3,9
c04038f0:	00003097          	auipc	ra,0x3
c04038f4:	9c0080e7          	jalr	-1600(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c04038f8:	ff242623          	sw	s2,-20(s0)
c04038fc:	c0409537          	lui	a0,0xc0409
c0403900:	9d050613          	addi	a2,a0,-1584 # c04089d0 <ebss+0xfffe78b0>
c0403904:	02c0006f          	j	c0403930 <_ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa53703b499bbb10E+0x7c>
c0403908:	c0409537          	lui	a0,0xc0409
c040390c:	9e050613          	addi	a2,a0,-1568 # c04089e0 <ebss+0xfffe78c0>
c0403910:	fe040493          	addi	s1,s0,-32
c0403914:	00048513          	mv	a0,s1
c0403918:	00900693          	li	a3,9
c040391c:	00003097          	auipc	ra,0x3
c0403920:	994080e7          	jalr	-1644(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c0403924:	ff242623          	sw	s2,-20(s0)
c0403928:	c0409537          	lui	a0,0xc0409
c040392c:	9ec50613          	addi	a2,a0,-1556 # c04089ec <ebss+0xfffe78cc>
c0403930:	fec40593          	addi	a1,s0,-20
c0403934:	00048513          	mv	a0,s1
c0403938:	00003097          	auipc	ra,0x3
c040393c:	560080e7          	jalr	1376(ra) # c0406e98 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E>
c0403940:	00048513          	mv	a0,s1
c0403944:	00003097          	auipc	ra,0x3
c0403948:	708080e7          	jalr	1800(ra) # c040704c <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E>
c040394c:	01012903          	lw	s2,16(sp)
c0403950:	01412483          	lw	s1,20(sp)
c0403954:	01812403          	lw	s0,24(sp)
c0403958:	01c12083          	lw	ra,28(sp)
c040395c:	02010113          	addi	sp,sp,32
c0403960:	00008067          	ret

c0403964 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE>:
c0403964:	fe010113          	addi	sp,sp,-32
c0403968:	00112e23          	sw	ra,28(sp)
c040396c:	00812c23          	sw	s0,24(sp)
c0403970:	00912a23          	sw	s1,20(sp)
c0403974:	02010413          	addi	s0,sp,32
c0403978:	00054503          	lbu	a0,0(a0)
c040397c:	00200613          	li	a2,2
c0403980:	02a65663          	bge	a2,a0,c04039ac <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0x48>
c0403984:	00400613          	li	a2,4
c0403988:	04a64463          	blt	a2,a0,c04039d0 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0x6c>
c040398c:	00300613          	li	a2,3
c0403990:	06c51063          	bne	a0,a2,c04039f0 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0x8c>
c0403994:	c0409537          	lui	a0,0xc0409
c0403998:	a2150613          	addi	a2,a0,-1503 # c0408a21 <ebss+0xfffe7901>
c040399c:	fe840493          	addi	s1,s0,-24
c04039a0:	00048513          	mv	a0,s1
c04039a4:	00f00693          	li	a3,15
c04039a8:	0a40006f          	j	c0403a4c <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xe8>
c04039ac:	04050e63          	beqz	a0,c0403a08 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xa4>
c04039b0:	00100613          	li	a2,1
c04039b4:	06c51663          	bne	a0,a2,c0403a20 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xbc>
c04039b8:	c0409537          	lui	a0,0xc0409
c04039bc:	a3950613          	addi	a2,a0,-1479 # c0408a39 <ebss+0xfffe7919>
c04039c0:	fe840493          	addi	s1,s0,-24
c04039c4:	00048513          	mv	a0,s1
c04039c8:	00e00693          	li	a3,14
c04039cc:	0800006f          	j	c0403a4c <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xe8>
c04039d0:	00500613          	li	a2,5
c04039d4:	06c51263          	bne	a0,a2,c0403a38 <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xd4>
c04039d8:	c0409537          	lui	a0,0xc0409
c04039dc:	a0350613          	addi	a2,a0,-1533 # c0408a03 <ebss+0xfffe78e3>
c04039e0:	fe840493          	addi	s1,s0,-24
c04039e4:	00048513          	mv	a0,s1
c04039e8:	01200693          	li	a3,18
c04039ec:	0600006f          	j	c0403a4c <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xe8>
c04039f0:	c0409537          	lui	a0,0xc0409
c04039f4:	a1550613          	addi	a2,a0,-1515 # c0408a15 <ebss+0xfffe78f5>
c04039f8:	fe840493          	addi	s1,s0,-24
c04039fc:	00048513          	mv	a0,s1
c0403a00:	00c00693          	li	a3,12
c0403a04:	0480006f          	j	c0403a4c <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xe8>
c0403a08:	c0409537          	lui	a0,0xc0409
c0403a0c:	a4f50613          	addi	a2,a0,-1457 # c0408a4f <ebss+0xfffe792f>
c0403a10:	fe840493          	addi	s1,s0,-24
c0403a14:	00048513          	mv	a0,s1
c0403a18:	00800693          	li	a3,8
c0403a1c:	0300006f          	j	c0403a4c <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xe8>
c0403a20:	c0409537          	lui	a0,0xc0409
c0403a24:	a3050613          	addi	a2,a0,-1488 # c0408a30 <ebss+0xfffe7910>
c0403a28:	fe840493          	addi	s1,s0,-24
c0403a2c:	00048513          	mv	a0,s1
c0403a30:	00900693          	li	a3,9
c0403a34:	0180006f          	j	c0403a4c <_ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h953f9f9b9883929aE+0xe8>
c0403a38:	c0409537          	lui	a0,0xc0409
c0403a3c:	9fc50613          	addi	a2,a0,-1540 # c04089fc <ebss+0xfffe78dc>
c0403a40:	fe840493          	addi	s1,s0,-24
c0403a44:	00048513          	mv	a0,s1
c0403a48:	00700693          	li	a3,7
c0403a4c:	00003097          	auipc	ra,0x3
c0403a50:	864080e7          	jalr	-1948(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c0403a54:	00048513          	mv	a0,s1
c0403a58:	00003097          	auipc	ra,0x3
c0403a5c:	5f4080e7          	jalr	1524(ra) # c040704c <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E>
c0403a60:	01412483          	lw	s1,20(sp)
c0403a64:	01812403          	lw	s0,24(sp)
c0403a68:	01c12083          	lw	ra,28(sp)
c0403a6c:	02010113          	addi	sp,sp,32
c0403a70:	00008067          	ret

c0403a74 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E>:
c0403a74:	fe010113          	addi	sp,sp,-32
c0403a78:	00112e23          	sw	ra,28(sp)
c0403a7c:	00812c23          	sw	s0,24(sp)
c0403a80:	00912a23          	sw	s1,20(sp)
c0403a84:	02010413          	addi	s0,sp,32
c0403a88:	00054503          	lbu	a0,0(a0)
c0403a8c:	00500613          	li	a2,5
c0403a90:	02a64863          	blt	a2,a0,c0403ac0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x4c>
c0403a94:	00200613          	li	a2,2
c0403a98:	04a64c63          	blt	a2,a0,c0403af0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x7c>
c0403a9c:	0a050263          	beqz	a0,c0403b40 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0xcc>
c0403aa0:	00100613          	li	a2,1
c0403aa4:	0ac51a63          	bne	a0,a2,c0403b58 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0xe4>
c0403aa8:	c0408537          	lui	a0,0xc0408
c0403aac:	4bc50613          	addi	a2,a0,1212 # c04084bc <ebss+0xfffe739c>
c0403ab0:	fe840493          	addi	s1,s0,-24
c0403ab4:	00048513          	mv	a0,s1
c0403ab8:	01000693          	li	a3,16
c0403abc:	1340006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403ac0:	00800613          	li	a2,8
c0403ac4:	04a64a63          	blt	a2,a0,c0403b18 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0xa4>
c0403ac8:	00600613          	li	a2,6
c0403acc:	0ac50263          	beq	a0,a2,c0403b70 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0xfc>
c0403ad0:	00700613          	li	a2,7
c0403ad4:	0ac51463          	bne	a0,a2,c0403b7c <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x108>
c0403ad8:	c0409537          	lui	a0,0xc0409
c0403adc:	a8e50613          	addi	a2,a0,-1394 # c0408a8e <ebss+0xfffe796e>
c0403ae0:	fe840493          	addi	s1,s0,-24
c0403ae4:	00048513          	mv	a0,s1
c0403ae8:	00b00693          	li	a3,11
c0403aec:	1040006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403af0:	00300613          	li	a2,3
c0403af4:	0ac50063          	beq	a0,a2,c0403b94 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x120>
c0403af8:	00400613          	li	a2,4
c0403afc:	0ac51863          	bne	a0,a2,c0403bac <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x138>
c0403b00:	c0409537          	lui	a0,0xc0409
c0403b04:	ab250613          	addi	a2,a0,-1358 # c0408ab2 <ebss+0xfffe7992>
c0403b08:	fe840493          	addi	s1,s0,-24
c0403b0c:	00048513          	mv	a0,s1
c0403b10:	00900693          	li	a3,9
c0403b14:	0dc0006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403b18:	00900613          	li	a2,9
c0403b1c:	0ac50463          	beq	a0,a2,c0403bc4 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x150>
c0403b20:	00a00613          	li	a2,10
c0403b24:	0ac51c63          	bne	a0,a2,c0403bdc <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x168>
c0403b28:	c0409537          	lui	a0,0xc0409
c0403b2c:	a5f50613          	addi	a2,a0,-1441 # c0408a5f <ebss+0xfffe793f>
c0403b30:	fe840493          	addi	s1,s0,-24
c0403b34:	00048513          	mv	a0,s1
c0403b38:	00e00693          	li	a3,14
c0403b3c:	0b40006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403b40:	c0409537          	lui	a0,0xc0409
c0403b44:	ad750613          	addi	a2,a0,-1321 # c0408ad7 <ebss+0xfffe79b7>
c0403b48:	fe840493          	addi	s1,s0,-24
c0403b4c:	00048513          	mv	a0,s1
c0403b50:	01500693          	li	a3,21
c0403b54:	09c0006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403b58:	c0409537          	lui	a0,0xc0409
c0403b5c:	ac550613          	addi	a2,a0,-1339 # c0408ac5 <ebss+0xfffe79a5>
c0403b60:	fe840493          	addi	s1,s0,-24
c0403b64:	00048513          	mv	a0,s1
c0403b68:	01200693          	li	a3,18
c0403b6c:	0840006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403b70:	c0409537          	lui	a0,0xc0409
c0403b74:	a9950613          	addi	a2,a0,-1383 # c0408a99 <ebss+0xfffe7979>
c0403b78:	0240006f          	j	c0403b9c <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x128>
c0403b7c:	c0409537          	lui	a0,0xc0409
c0403b80:	a7a50613          	addi	a2,a0,-1414 # c0408a7a <ebss+0xfffe795a>
c0403b84:	fe840493          	addi	s1,s0,-24
c0403b88:	00048513          	mv	a0,s1
c0403b8c:	01400693          	li	a3,20
c0403b90:	0600006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403b94:	c0409537          	lui	a0,0xc0409
c0403b98:	abb50613          	addi	a2,a0,-1349 # c0408abb <ebss+0xfffe799b>
c0403b9c:	fe840493          	addi	s1,s0,-24
c0403ba0:	00048513          	mv	a0,s1
c0403ba4:	00a00693          	li	a3,10
c0403ba8:	0480006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403bac:	c0409537          	lui	a0,0xc0409
c0403bb0:	aa350613          	addi	a2,a0,-1373 # c0408aa3 <ebss+0xfffe7983>
c0403bb4:	fe840493          	addi	s1,s0,-24
c0403bb8:	00048513          	mv	a0,s1
c0403bbc:	00f00693          	li	a3,15
c0403bc0:	0300006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403bc4:	c0409537          	lui	a0,0xc0409
c0403bc8:	a6d50613          	addi	a2,a0,-1427 # c0408a6d <ebss+0xfffe794d>
c0403bcc:	fe840493          	addi	s1,s0,-24
c0403bd0:	00048513          	mv	a0,s1
c0403bd4:	00d00693          	li	a3,13
c0403bd8:	0180006f          	j	c0403bf0 <_ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h93121e2fafbe5ec0E+0x17c>
c0403bdc:	c0409537          	lui	a0,0xc0409
c0403be0:	9fc50613          	addi	a2,a0,-1540 # c04089fc <ebss+0xfffe78dc>
c0403be4:	fe840493          	addi	s1,s0,-24
c0403be8:	00048513          	mv	a0,s1
c0403bec:	00700693          	li	a3,7
c0403bf0:	00002097          	auipc	ra,0x2
c0403bf4:	6c0080e7          	jalr	1728(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c0403bf8:	00048513          	mv	a0,s1
c0403bfc:	00003097          	auipc	ra,0x3
c0403c00:	450080e7          	jalr	1104(ra) # c040704c <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E>
c0403c04:	01412483          	lw	s1,20(sp)
c0403c08:	01812403          	lw	s0,24(sp)
c0403c0c:	01c12083          	lw	ra,28(sp)
c0403c10:	02010113          	addi	sp,sp,32
c0403c14:	00008067          	ret

c0403c18 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0bb4cd8b4ffc2fabE>:
c0403c18:	ff010113          	addi	sp,sp,-16
c0403c1c:	00112623          	sw	ra,12(sp)
c0403c20:	00812423          	sw	s0,8(sp)
c0403c24:	00912223          	sw	s1,4(sp)
c0403c28:	01212023          	sw	s2,0(sp)
c0403c2c:	01010413          	addi	s0,sp,16
c0403c30:	00058493          	mv	s1,a1
c0403c34:	00052903          	lw	s2,0(a0)
c0403c38:	00058513          	mv	a0,a1
c0403c3c:	00002097          	auipc	ra,0x2
c0403c40:	5c0080e7          	jalr	1472(ra) # c04061fc <_ZN4core3fmt9Formatter15debug_lower_hex17ha451788feee8d937E>
c0403c44:	00050c63          	beqz	a0,c0403c5c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0bb4cd8b4ffc2fabE+0x44>
c0403c48:	00090513          	mv	a0,s2
c0403c4c:	00048593          	mv	a1,s1
c0403c50:	00000097          	auipc	ra,0x0
c0403c54:	648080e7          	jalr	1608(ra) # c0404298 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE>
c0403c58:	0380006f          	j	c0403c90 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0bb4cd8b4ffc2fabE+0x78>
c0403c5c:	00048513          	mv	a0,s1
c0403c60:	00002097          	auipc	ra,0x2
c0403c64:	5c8080e7          	jalr	1480(ra) # c0406228 <_ZN4core3fmt9Formatter15debug_upper_hex17h225bea2574808256E>
c0403c68:	00050c63          	beqz	a0,c0403c80 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0bb4cd8b4ffc2fabE+0x68>
c0403c6c:	00090513          	mv	a0,s2
c0403c70:	00048593          	mv	a1,s1
c0403c74:	00000097          	auipc	ra,0x0
c0403c78:	6d0080e7          	jalr	1744(ra) # c0404344 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E>
c0403c7c:	0140006f          	j	c0403c90 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0bb4cd8b4ffc2fabE+0x78>
c0403c80:	00090513          	mv	a0,s2
c0403c84:	00048593          	mv	a1,s1
c0403c88:	00002097          	auipc	ra,0x2
c0403c8c:	8d4080e7          	jalr	-1836(ra) # c040555c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd4814eb15ee0a404E>
c0403c90:	00012903          	lw	s2,0(sp)
c0403c94:	00412483          	lw	s1,4(sp)
c0403c98:	00812403          	lw	s0,8(sp)
c0403c9c:	00c12083          	lw	ra,12(sp)
c0403ca0:	01010113          	addi	sp,sp,16
c0403ca4:	00008067          	ret

c0403ca8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f52cee1681f20a5E>:
c0403ca8:	fe010113          	addi	sp,sp,-32
c0403cac:	00112e23          	sw	ra,28(sp)
c0403cb0:	00812c23          	sw	s0,24(sp)
c0403cb4:	00912a23          	sw	s1,20(sp)
c0403cb8:	01212823          	sw	s2,16(sp)
c0403cbc:	02010413          	addi	s0,sp,32
c0403cc0:	00052483          	lw	s1,0(a0)
c0403cc4:	c0409537          	lui	a0,0xc0409
c0403cc8:	a5750613          	addi	a2,a0,-1449 # c0408a57 <ebss+0xfffe7937>
c0403ccc:	fe040913          	addi	s2,s0,-32
c0403cd0:	00090513          	mv	a0,s2
c0403cd4:	00800693          	li	a3,8
c0403cd8:	00002097          	auipc	ra,0x2
c0403cdc:	5d8080e7          	jalr	1496(ra) # c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>
c0403ce0:	fe942623          	sw	s1,-20(s0)
c0403ce4:	c0409537          	lui	a0,0xc0409
c0403ce8:	aec50613          	addi	a2,a0,-1300 # c0408aec <ebss+0xfffe79cc>
c0403cec:	fec40593          	addi	a1,s0,-20
c0403cf0:	00090513          	mv	a0,s2
c0403cf4:	00003097          	auipc	ra,0x3
c0403cf8:	1a4080e7          	jalr	420(ra) # c0406e98 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E>
c0403cfc:	00090513          	mv	a0,s2
c0403d00:	00003097          	auipc	ra,0x3
c0403d04:	34c080e7          	jalr	844(ra) # c040704c <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E>
c0403d08:	01012903          	lw	s2,16(sp)
c0403d0c:	01412483          	lw	s1,20(sp)
c0403d10:	01812403          	lw	s0,24(sp)
c0403d14:	01c12083          	lw	ra,28(sp)
c0403d18:	02010113          	addi	sp,sp,32
c0403d1c:	00008067          	ret

c0403d20 <_ZN4core3ptr18real_drop_in_place17h052b111663666d60E>:
c0403d20:	ff010113          	addi	sp,sp,-16
c0403d24:	00112623          	sw	ra,12(sp)
c0403d28:	00812423          	sw	s0,8(sp)
c0403d2c:	01010413          	addi	s0,sp,16
c0403d30:	00812403          	lw	s0,8(sp)
c0403d34:	00c12083          	lw	ra,12(sp)
c0403d38:	01010113          	addi	sp,sp,16
c0403d3c:	00008067          	ret

c0403d40 <_ZN5riscv4addr8PhysAddr3new17h21120840d2359522E>:
c0403d40:	ff010113          	addi	sp,sp,-16
c0403d44:	00112623          	sw	ra,12(sp)
c0403d48:	00812423          	sw	s0,8(sp)
c0403d4c:	01010413          	addi	s0,sp,16
c0403d50:	00812403          	lw	s0,8(sp)
c0403d54:	00c12083          	lw	ra,12(sp)
c0403d58:	01010113          	addi	sp,sp,16
c0403d5c:	00008067          	ret

c0403d60 <_ZN5riscv4addr4Page7of_addr17hb2e151b8985dd982E>:
c0403d60:	ff010113          	addi	sp,sp,-16
c0403d64:	00112623          	sw	ra,12(sp)
c0403d68:	00812423          	sw	s0,8(sp)
c0403d6c:	01010413          	addi	s0,sp,16
c0403d70:	fffff5b7          	lui	a1,0xfffff
c0403d74:	00b57533          	and	a0,a0,a1
c0403d78:	00812403          	lw	s0,8(sp)
c0403d7c:	00c12083          	lw	ra,12(sp)
c0403d80:	01010113          	addi	sp,sp,16
c0403d84:	00008067          	ret

c0403d88 <_ZN5riscv4addr4Page13start_address17h413df9c80fd3f04bE>:
c0403d88:	ff010113          	addi	sp,sp,-16
c0403d8c:	00112623          	sw	ra,12(sp)
c0403d90:	00812423          	sw	s0,8(sp)
c0403d94:	01010413          	addi	s0,sp,16
c0403d98:	00052503          	lw	a0,0(a0)
c0403d9c:	00812403          	lw	s0,8(sp)
c0403da0:	00c12083          	lw	ra,12(sp)
c0403da4:	01010113          	addi	sp,sp,16
c0403da8:	00008067          	ret

c0403dac <_ZN5riscv4addr4Page8p2_index17hce2d92ae69426988E>:
c0403dac:	ff010113          	addi	sp,sp,-16
c0403db0:	00112623          	sw	ra,12(sp)
c0403db4:	00812423          	sw	s0,8(sp)
c0403db8:	01010413          	addi	s0,sp,16
c0403dbc:	01600593          	li	a1,22
c0403dc0:	02000613          	li	a2,32
c0403dc4:	00812403          	lw	s0,8(sp)
c0403dc8:	00c12083          	lw	ra,12(sp)
c0403dcc:	01010113          	addi	sp,sp,16
c0403dd0:	00000317          	auipc	t1,0x0
c0403dd4:	39830067          	jr	920(t1) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>

c0403dd8 <_ZN5riscv4addr4Page8p1_index17h585726013caa3722E>:
c0403dd8:	ff010113          	addi	sp,sp,-16
c0403ddc:	00112623          	sw	ra,12(sp)
c0403de0:	00812423          	sw	s0,8(sp)
c0403de4:	01010413          	addi	s0,sp,16
c0403de8:	00c00593          	li	a1,12
c0403dec:	01600613          	li	a2,22
c0403df0:	00812403          	lw	s0,8(sp)
c0403df4:	00c12083          	lw	ra,12(sp)
c0403df8:	01010113          	addi	sp,sp,16
c0403dfc:	00000317          	auipc	t1,0x0
c0403e00:	36c30067          	jr	876(t1) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>

c0403e04 <_ZN5riscv4addr4Page6number17h8e09a19e9f4b83b4E>:
c0403e04:	ff010113          	addi	sp,sp,-16
c0403e08:	00112623          	sw	ra,12(sp)
c0403e0c:	00812423          	sw	s0,8(sp)
c0403e10:	01010413          	addi	s0,sp,16
c0403e14:	00c00593          	li	a1,12
c0403e18:	02000613          	li	a2,32
c0403e1c:	00812403          	lw	s0,8(sp)
c0403e20:	00c12083          	lw	ra,12(sp)
c0403e24:	01010113          	addi	sp,sp,16
c0403e28:	00000317          	auipc	t1,0x0
c0403e2c:	34030067          	jr	832(t1) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>

c0403e30 <_ZN5riscv6paging11multi_level13Rv32PageTable3new17h939bfc2e4d4e17efE>:
c0403e30:	ff010113          	addi	sp,sp,-16
c0403e34:	00112623          	sw	ra,12(sp)
c0403e38:	00812423          	sw	s0,8(sp)
c0403e3c:	01010413          	addi	s0,sp,16
c0403e40:	00812403          	lw	s0,8(sp)
c0403e44:	00c12083          	lw	ra,12(sp)
c0403e48:	01010113          	addi	sp,sp,16
c0403e4c:	00008067          	ret

c0403e50 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE>:
c0403e50:	fe010113          	addi	sp,sp,-32
c0403e54:	00112e23          	sw	ra,28(sp)
c0403e58:	00812c23          	sw	s0,24(sp)
c0403e5c:	00912a23          	sw	s1,20(sp)
c0403e60:	01212823          	sw	s2,16(sp)
c0403e64:	01312623          	sw	s3,12(sp)
c0403e68:	01412423          	sw	s4,8(sp)
c0403e6c:	02010413          	addi	s0,sp,32
c0403e70:	00058a13          	mv	s4,a1
c0403e74:	00050913          	mv	s2,a0
c0403e78:	fec42223          	sw	a2,-28(s0)
c0403e7c:	0005a483          	lw	s1,0(a1) # fffff000 <ebss+0x3fbddee0>
c0403e80:	fe440513          	addi	a0,s0,-28
c0403e84:	01600593          	li	a1,22
c0403e88:	02000613          	li	a2,32
c0403e8c:	00000097          	auipc	ra,0x0
c0403e90:	2dc080e7          	jalr	732(ra) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>
c0403e94:	00050593          	mv	a1,a0
c0403e98:	40000513          	li	a0,1024
c0403e9c:	0ca5fa63          	bgeu	a1,a0,c0403f70 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE+0x120>
c0403ea0:	00259513          	slli	a0,a1,0x2
c0403ea4:	00a48533          	add	a0,s1,a0
c0403ea8:	00052503          	lw	a0,0(a0)
c0403eac:	06050c63          	beqz	a0,c0403f24 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE+0xd4>
c0403eb0:	000a2483          	lw	s1,0(s4)
c0403eb4:	fe440513          	addi	a0,s0,-28
c0403eb8:	01600593          	li	a1,22
c0403ebc:	02000613          	li	a2,32
c0403ec0:	00000097          	auipc	ra,0x0
c0403ec4:	2a8080e7          	jalr	680(ra) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>
c0403ec8:	00050593          	mv	a1,a0
c0403ecc:	40000993          	li	s3,1024
c0403ed0:	0b357063          	bgeu	a0,s3,c0403f70 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE+0x120>
c0403ed4:	00259513          	slli	a0,a1,0x2
c0403ed8:	00a48533          	add	a0,s1,a0
c0403edc:	00052483          	lw	s1,0(a0)
c0403ee0:	004a2a03          	lw	s4,4(s4)
c0403ee4:	fe440513          	addi	a0,s0,-28
c0403ee8:	00c00593          	li	a1,12
c0403eec:	01600613          	li	a2,22
c0403ef0:	00000097          	auipc	ra,0x0
c0403ef4:	278080e7          	jalr	632(ra) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>
c0403ef8:	00050593          	mv	a1,a0
c0403efc:	09357863          	bgeu	a0,s3,c0403f8c <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE+0x13c>
c0403f00:	00249613          	slli	a2,s1,0x2
c0403f04:	fffff537          	lui	a0,0xfffff
c0403f08:	00a67633          	and	a2,a2,a0
c0403f0c:	01460633          	add	a2,a2,s4
c0403f10:	00259593          	slli	a1,a1,0x2
c0403f14:	00b60633          	add	a2,a2,a1
c0403f18:	00062583          	lw	a1,0(a2) # 1000 <XLENB+0xffc>
c0403f1c:	0015f693          	andi	a3,a1,1
c0403f20:	00069863          	bnez	a3,c0403f30 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE+0xe0>
c0403f24:	00100513          	li	a0,1
c0403f28:	00a92223          	sw	a0,4(s2)
c0403f2c:	0200006f          	j	c0403f4c <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$5unmap17h9cd0438fe8b1b4acE+0xfc>
c0403f30:	00062023          	sw	zero,0(a2)
c0403f34:	fe442603          	lw	a2,-28(s0)
c0403f38:	00c92423          	sw	a2,8(s2)
c0403f3c:	00259593          	slli	a1,a1,0x2
c0403f40:	00a5f533          	and	a0,a1,a0
c0403f44:	00a92223          	sw	a0,4(s2)
c0403f48:	00000513          	li	a0,0
c0403f4c:	00a92023          	sw	a0,0(s2)
c0403f50:	00812a03          	lw	s4,8(sp)
c0403f54:	00c12983          	lw	s3,12(sp)
c0403f58:	01012903          	lw	s2,16(sp)
c0403f5c:	01412483          	lw	s1,20(sp)
c0403f60:	01812403          	lw	s0,24(sp)
c0403f64:	01c12083          	lw	ra,28(sp)
c0403f68:	02010113          	addi	sp,sp,32
c0403f6c:	00008067          	ret
c0403f70:	c0409537          	lui	a0,0xc0409
c0403f74:	92450513          	addi	a0,a0,-1756 # c0408924 <ebss+0xfffe7804>
c0403f78:	40000613          	li	a2,1024
c0403f7c:	00001097          	auipc	ra,0x1
c0403f80:	998080e7          	jalr	-1640(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0403f84:	ffffd097          	auipc	ra,0xffffd
c0403f88:	988080e7          	jalr	-1656(ra) # c040090c <abort>
c0403f8c:	c0409537          	lui	a0,0xc0409
c0403f90:	93450513          	addi	a0,a0,-1740 # c0408934 <ebss+0xfffe7814>
c0403f94:	40000613          	li	a2,1024
c0403f98:	00001097          	auipc	ra,0x1
c0403f9c:	97c080e7          	jalr	-1668(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0403fa0:	ffffd097          	auipc	ra,0xffffd
c0403fa4:	96c080e7          	jalr	-1684(ra) # c040090c <abort>

c0403fa8 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$9ref_entry17h1f6e02d2de4a7922E>:
c0403fa8:	fe010113          	addi	sp,sp,-32
c0403fac:	00112e23          	sw	ra,28(sp)
c0403fb0:	00812c23          	sw	s0,24(sp)
c0403fb4:	00912a23          	sw	s1,20(sp)
c0403fb8:	01212823          	sw	s2,16(sp)
c0403fbc:	01312623          	sw	s3,12(sp)
c0403fc0:	02010413          	addi	s0,sp,32
c0403fc4:	00050493          	mv	s1,a0
c0403fc8:	feb42423          	sw	a1,-24(s0)
c0403fcc:	00052903          	lw	s2,0(a0)
c0403fd0:	fe840513          	addi	a0,s0,-24
c0403fd4:	01600593          	li	a1,22
c0403fd8:	02000613          	li	a2,32
c0403fdc:	00000097          	auipc	ra,0x0
c0403fe0:	18c080e7          	jalr	396(ra) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>
c0403fe4:	00050593          	mv	a1,a0
c0403fe8:	40000513          	li	a0,1024
c0403fec:	0aa5f063          	bgeu	a1,a0,c040408c <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$9ref_entry17h1f6e02d2de4a7922E+0xe4>
c0403ff0:	00259513          	slli	a0,a1,0x2
c0403ff4:	00a90533          	add	a0,s2,a0
c0403ff8:	00052503          	lw	a0,0(a0)
c0403ffc:	06050863          	beqz	a0,c040406c <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$9ref_entry17h1f6e02d2de4a7922E+0xc4>
c0404000:	0004a983          	lw	s3,0(s1)
c0404004:	fe840513          	addi	a0,s0,-24
c0404008:	01600593          	li	a1,22
c040400c:	02000613          	li	a2,32
c0404010:	00000097          	auipc	ra,0x0
c0404014:	158080e7          	jalr	344(ra) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>
c0404018:	00050593          	mv	a1,a0
c040401c:	40000913          	li	s2,1024
c0404020:	07257663          	bgeu	a0,s2,c040408c <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$9ref_entry17h1f6e02d2de4a7922E+0xe4>
c0404024:	00259513          	slli	a0,a1,0x2
c0404028:	00a98533          	add	a0,s3,a0
c040402c:	00052983          	lw	s3,0(a0)
c0404030:	0044a483          	lw	s1,4(s1)
c0404034:	fe840513          	addi	a0,s0,-24
c0404038:	00c00593          	li	a1,12
c040403c:	01600613          	li	a2,22
c0404040:	00000097          	auipc	ra,0x0
c0404044:	128080e7          	jalr	296(ra) # c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>
c0404048:	00050593          	mv	a1,a0
c040404c:	05257e63          	bgeu	a0,s2,c04040a8 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$9ref_entry17h1f6e02d2de4a7922E+0x100>
c0404050:	00299513          	slli	a0,s3,0x2
c0404054:	fffff637          	lui	a2,0xfffff
c0404058:	00c57533          	and	a0,a0,a2
c040405c:	00950533          	add	a0,a0,s1
c0404060:	00259593          	slli	a1,a1,0x2
c0404064:	00b50533          	add	a0,a0,a1
c0404068:	0080006f          	j	c0404070 <_ZN94_$LT$riscv..paging..multi_level..Rv32PageTable$u20$as$u20$riscv..paging..recursive..Mapper$GT$9ref_entry17h1f6e02d2de4a7922E+0xc8>
c040406c:	00000513          	li	a0,0
c0404070:	00c12983          	lw	s3,12(sp)
c0404074:	01012903          	lw	s2,16(sp)
c0404078:	01412483          	lw	s1,20(sp)
c040407c:	01812403          	lw	s0,24(sp)
c0404080:	01c12083          	lw	ra,28(sp)
c0404084:	02010113          	addi	sp,sp,32
c0404088:	00008067          	ret
c040408c:	c0409537          	lui	a0,0xc0409
c0404090:	92450513          	addi	a0,a0,-1756 # c0408924 <ebss+0xfffe7804>
c0404094:	40000613          	li	a2,1024
c0404098:	00001097          	auipc	ra,0x1
c040409c:	87c080e7          	jalr	-1924(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04040a0:	ffffd097          	auipc	ra,0xffffd
c04040a4:	86c080e7          	jalr	-1940(ra) # c040090c <abort>
c04040a8:	c0409537          	lui	a0,0xc0409
c04040ac:	93450513          	addi	a0,a0,-1740 # c0408934 <ebss+0xfffe7814>
c04040b0:	40000613          	li	a2,1024
c04040b4:	00001097          	auipc	ra,0x1
c04040b8:	860080e7          	jalr	-1952(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04040bc:	ffffd097          	auipc	ra,0xffffd
c04040c0:	850080e7          	jalr	-1968(ra) # c040090c <abort>

c04040c4 <_ZN4core3ptr18real_drop_in_place17h98bd30880e00623dE>:
c04040c4:	ff010113          	addi	sp,sp,-16
c04040c8:	00112623          	sw	ra,12(sp)
c04040cc:	00812423          	sw	s0,8(sp)
c04040d0:	01010413          	addi	s0,sp,16
c04040d4:	00812403          	lw	s0,8(sp)
c04040d8:	00c12083          	lw	ra,12(sp)
c04040dc:	01010113          	addi	sp,sp,16
c04040e0:	00008067          	ret

c04040e4 <_ZN70_$LT$riscv..register..sstatus..Sstatus$u20$as$u20$core..fmt..Debug$GT$3fmt17h436ab7edb50c8214E>:
c04040e4:	fe010113          	addi	sp,sp,-32
c04040e8:	00112e23          	sw	ra,28(sp)
c04040ec:	00812c23          	sw	s0,24(sp)
c04040f0:	00912a23          	sw	s1,20(sp)
c04040f4:	01212823          	sw	s2,16(sp)
c04040f8:	02010413          	addi	s0,sp,32
c04040fc:	00050493          	mv	s1,a0
c0404100:	c0409537          	lui	a0,0xc0409
c0404104:	b0c50613          	addi	a2,a0,-1268 # c0408b0c <ebss+0xfffe79ec>
c0404108:	fe040913          	addi	s2,s0,-32
c040410c:	00090513          	mv	a0,s2
c0404110:	00700693          	li	a3,7
c0404114:	00002097          	auipc	ra,0x2
c0404118:	140080e7          	jalr	320(ra) # c0406254 <_ZN4core3fmt9Formatter12debug_struct17had6302012c33b047E>
c040411c:	fe942623          	sw	s1,-20(s0)
c0404120:	c0408537          	lui	a0,0xc0408
c0404124:	25450593          	addi	a1,a0,596 # c0408254 <ebss+0xfffe7134>
c0404128:	c0409537          	lui	a0,0xc0409
c040412c:	afc50713          	addi	a4,a0,-1284 # c0408afc <ebss+0xfffe79dc>
c0404130:	fec40693          	addi	a3,s0,-20
c0404134:	00090513          	mv	a0,s2
c0404138:	00400613          	li	a2,4
c040413c:	00003097          	auipc	ra,0x3
c0404140:	a78080e7          	jalr	-1416(ra) # c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>
c0404144:	00090513          	mv	a0,s2
c0404148:	00003097          	auipc	ra,0x3
c040414c:	cc4080e7          	jalr	-828(ra) # c0406e0c <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE>
c0404150:	01012903          	lw	s2,16(sp)
c0404154:	01412483          	lw	s1,20(sp)
c0404158:	01812403          	lw	s0,24(sp)
c040415c:	01c12083          	lw	ra,28(sp)
c0404160:	02010113          	addi	sp,sp,32
c0404164:	00008067          	ret

c0404168 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE>:
c0404168:	ff010113          	addi	sp,sp,-16
c040416c:	00112623          	sw	ra,12(sp)
c0404170:	00812423          	sw	s0,8(sp)
c0404174:	01010413          	addi	s0,sp,16
c0404178:	01f00693          	li	a3,31
c040417c:	02b6ec63          	bltu	a3,a1,c04041b4 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE+0x4c>
c0404180:	02000693          	li	a3,32
c0404184:	04c6e463          	bltu	a3,a2,c04041cc <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE+0x64>
c0404188:	04c5fe63          	bgeu	a1,a2,c04041e4 <_ZN43_$LT$u32$u20$as$u20$bit_field..BitField$GT$8get_bits17h79ac9a58d16ac38cE+0x7c>
c040418c:	40c00633          	neg	a2,a2
c0404190:	fff00693          	li	a3,-1
c0404194:	00c6d633          	srl	a2,a3,a2
c0404198:	00052503          	lw	a0,0(a0)
c040419c:	00c57533          	and	a0,a0,a2
c04041a0:	00b55533          	srl	a0,a0,a1
c04041a4:	00812403          	lw	s0,8(sp)
c04041a8:	00c12083          	lw	ra,12(sp)
c04041ac:	01010113          	addi	sp,sp,16
c04041b0:	00008067          	ret
c04041b4:	c0409537          	lui	a0,0xc0409
c04041b8:	be450513          	addi	a0,a0,-1052 # c0408be4 <ebss+0xfffe7ac4>
c04041bc:	00000097          	auipc	ra,0x0
c04041c0:	6e0080e7          	jalr	1760(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c04041c4:	ffffc097          	auipc	ra,0xffffc
c04041c8:	748080e7          	jalr	1864(ra) # c040090c <abort>
c04041cc:	c0409537          	lui	a0,0xc0409
c04041d0:	c3050513          	addi	a0,a0,-976 # c0408c30 <ebss+0xfffe7b10>
c04041d4:	00000097          	auipc	ra,0x0
c04041d8:	6c8080e7          	jalr	1736(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c04041dc:	ffffc097          	auipc	ra,0xffffc
c04041e0:	730080e7          	jalr	1840(ra) # c040090c <abort>
c04041e4:	c0409537          	lui	a0,0xc0409
c04041e8:	c7450513          	addi	a0,a0,-908 # c0408c74 <ebss+0xfffe7b54>
c04041ec:	00000097          	auipc	ra,0x0
c04041f0:	6b0080e7          	jalr	1712(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c04041f4:	ffffc097          	auipc	ra,0xffffc
c04041f8:	718080e7          	jalr	1816(ra) # c040090c <abort>

c04041fc <_ZN43_$LT$i32$u20$as$u20$bit_field..BitField$GT$7get_bit17hf8fe63426508bfb2E>:
c04041fc:	ff010113          	addi	sp,sp,-16
c0404200:	00112623          	sw	ra,12(sp)
c0404204:	00812423          	sw	s0,8(sp)
c0404208:	01010413          	addi	s0,sp,16
c040420c:	01f00613          	li	a2,31
c0404210:	02b66463          	bltu	a2,a1,c0404238 <_ZN43_$LT$i32$u20$as$u20$bit_field..BitField$GT$7get_bit17hf8fe63426508bfb2E+0x3c>
c0404214:	00100613          	li	a2,1
c0404218:	00b615b3          	sll	a1,a2,a1
c040421c:	00052503          	lw	a0,0(a0)
c0404220:	00b57533          	and	a0,a0,a1
c0404224:	00a03533          	snez	a0,a0
c0404228:	00812403          	lw	s0,8(sp)
c040422c:	00c12083          	lw	ra,12(sp)
c0404230:	01010113          	addi	sp,sp,16
c0404234:	00008067          	ret
c0404238:	c0409537          	lui	a0,0xc0409
c040423c:	b9850513          	addi	a0,a0,-1128 # c0408b98 <ebss+0xfffe7a78>
c0404240:	00000097          	auipc	ra,0x0
c0404244:	65c080e7          	jalr	1628(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0404248:	ffffc097          	auipc	ra,0xffffc
c040424c:	6c4080e7          	jalr	1732(ra) # c040090c <abort>

c0404250 <_ZN5alloc7raw_vec17capacity_overflow17h8e57b9dded023180E>:
c0404250:	ff010113          	addi	sp,sp,-16
c0404254:	00112623          	sw	ra,12(sp)
c0404258:	00812423          	sw	s0,8(sp)
c040425c:	01010413          	addi	s0,sp,16
c0404260:	c0409537          	lui	a0,0xc0409
c0404264:	d1050513          	addi	a0,a0,-752 # c0408d10 <ebss+0xfffe7bf0>
c0404268:	00000097          	auipc	ra,0x0
c040426c:	634080e7          	jalr	1588(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0404270:	ffffc097          	auipc	ra,0xffffc
c0404274:	69c080e7          	jalr	1692(ra) # c040090c <abort>

c0404278 <_ZN5alloc5alloc18handle_alloc_error17h54ca5f2ef1826cedE>:
c0404278:	ff010113          	addi	sp,sp,-16
c040427c:	00112623          	sw	ra,12(sp)
c0404280:	00812423          	sw	s0,8(sp)
c0404284:	01010413          	addi	s0,sp,16
c0404288:	ffffc097          	auipc	ra,0xffffc
c040428c:	128080e7          	jalr	296(ra) # c04003b0 <rust_oom>
c0404290:	ffffc097          	auipc	ra,0xffffc
c0404294:	67c080e7          	jalr	1660(ra) # c040090c <abort>

c0404298 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE>:
c0404298:	f7010113          	addi	sp,sp,-144
c040429c:	08112623          	sw	ra,140(sp)
c04042a0:	08812423          	sw	s0,136(sp)
c04042a4:	09010413          	addi	s0,sp,144
c04042a8:	00058813          	mv	a6,a1
c04042ac:	00052503          	lw	a0,0(a0)
c04042b0:	00a00713          	li	a4,10
c04042b4:	f7840693          	addi	a3,s0,-136
c04042b8:	00000613          	li	a2,0
c04042bc:	00f57793          	andi	a5,a0,15
c04042c0:	02e7e263          	bltu	a5,a4,c04042e4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE+0x4c>
c04042c4:	05778793          	addi	a5,a5,87
c04042c8:	00c685b3          	add	a1,a3,a2
c04042cc:	06f58fa3          	sb	a5,127(a1)
c04042d0:	fff60613          	addi	a2,a2,-1 # ffffefff <ebss+0x3fbddedf>
c04042d4:	00455513          	srli	a0,a0,0x4
c04042d8:	00050a63          	beqz	a0,c04042ec <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE+0x54>
c04042dc:	00f57793          	andi	a5,a0,15
c04042e0:	fee7f2e3          	bgeu	a5,a4,c04042c4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE+0x2c>
c04042e4:	0307e793          	ori	a5,a5,48
c04042e8:	fe1ff06f          	j	c04042c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE+0x30>
c04042ec:	08060513          	addi	a0,a2,128
c04042f0:	08100593          	li	a1,129
c04042f4:	02b57e63          	bgeu	a0,a1,c0404330 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h88c34917c7d7dc0dE+0x98>
c04042f8:	00c68533          	add	a0,a3,a2
c04042fc:	40c007b3          	neg	a5,a2
c0404300:	08050713          	addi	a4,a0,128
c0404304:	c0409537          	lui	a0,0xc0409
c0404308:	d2850613          	addi	a2,a0,-728 # c0408d28 <ebss+0xfffe7c08>
c040430c:	00080513          	mv	a0,a6
c0404310:	00100593          	li	a1,1
c0404314:	00200693          	li	a3,2
c0404318:	00001097          	auipc	ra,0x1
c040431c:	71c080e7          	jalr	1820(ra) # c0405a34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E>
c0404320:	08812403          	lw	s0,136(sp)
c0404324:	08c12083          	lw	ra,140(sp)
c0404328:	09010113          	addi	sp,sp,144
c040432c:	00008067          	ret
c0404330:	08000593          	li	a1,128
c0404334:	00001097          	auipc	ra,0x1
c0404338:	cf8080e7          	jalr	-776(ra) # c040502c <_ZN4core5slice22slice_index_order_fail17h221760d75dba461fE>
c040433c:	ffffc097          	auipc	ra,0xffffc
c0404340:	5d0080e7          	jalr	1488(ra) # c040090c <abort>

c0404344 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E>:
c0404344:	f7010113          	addi	sp,sp,-144
c0404348:	08112623          	sw	ra,140(sp)
c040434c:	08812423          	sw	s0,136(sp)
c0404350:	09010413          	addi	s0,sp,144
c0404354:	00058813          	mv	a6,a1
c0404358:	00052503          	lw	a0,0(a0)
c040435c:	00a00713          	li	a4,10
c0404360:	f7840693          	addi	a3,s0,-136
c0404364:	00000613          	li	a2,0
c0404368:	00f57793          	andi	a5,a0,15
c040436c:	02e7e263          	bltu	a5,a4,c0404390 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E+0x4c>
c0404370:	03778793          	addi	a5,a5,55
c0404374:	00c685b3          	add	a1,a3,a2
c0404378:	06f58fa3          	sb	a5,127(a1)
c040437c:	fff60613          	addi	a2,a2,-1
c0404380:	00455513          	srli	a0,a0,0x4
c0404384:	00050a63          	beqz	a0,c0404398 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E+0x54>
c0404388:	00f57793          	andi	a5,a0,15
c040438c:	fee7f2e3          	bgeu	a5,a4,c0404370 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E+0x2c>
c0404390:	0307e793          	ori	a5,a5,48
c0404394:	fe1ff06f          	j	c0404374 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E+0x30>
c0404398:	08060513          	addi	a0,a2,128
c040439c:	08100593          	li	a1,129
c04043a0:	02b57e63          	bgeu	a0,a1,c04043dc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h7821772b33530d56E+0x98>
c04043a4:	00c68533          	add	a0,a3,a2
c04043a8:	40c007b3          	neg	a5,a2
c04043ac:	08050713          	addi	a4,a0,128
c04043b0:	c0409537          	lui	a0,0xc0409
c04043b4:	d2850613          	addi	a2,a0,-728 # c0408d28 <ebss+0xfffe7c08>
c04043b8:	00080513          	mv	a0,a6
c04043bc:	00100593          	li	a1,1
c04043c0:	00200693          	li	a3,2
c04043c4:	00001097          	auipc	ra,0x1
c04043c8:	670080e7          	jalr	1648(ra) # c0405a34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E>
c04043cc:	08812403          	lw	s0,136(sp)
c04043d0:	08c12083          	lw	ra,140(sp)
c04043d4:	09010113          	addi	sp,sp,144
c04043d8:	00008067          	ret
c04043dc:	08000593          	li	a1,128
c04043e0:	00001097          	auipc	ra,0x1
c04043e4:	c4c080e7          	jalr	-948(ra) # c040502c <_ZN4core5slice22slice_index_order_fail17h221760d75dba461fE>
c04043e8:	ffffc097          	auipc	ra,0xffffc
c04043ec:	524080e7          	jalr	1316(ra) # c040090c <abort>

c04043f0 <_ZN4core6option13expect_failed17hbc653d0d840790aeE>:
c04043f0:	fd010113          	addi	sp,sp,-48
c04043f4:	02112623          	sw	ra,44(sp)
c04043f8:	02812423          	sw	s0,40(sp)
c04043fc:	03010413          	addi	s0,sp,48
c0404400:	fcb42a23          	sw	a1,-44(s0)
c0404404:	fca42823          	sw	a0,-48(s0)
c0404408:	ff040513          	addi	a0,s0,-16
c040440c:	fea42423          	sw	a0,-24(s0)
c0404410:	fe042023          	sw	zero,-32(s0)
c0404414:	00100513          	li	a0,1
c0404418:	fea42623          	sw	a0,-20(s0)
c040441c:	fca42e23          	sw	a0,-36(s0)
c0404420:	c0409537          	lui	a0,0xc0409
c0404424:	df850513          	addi	a0,a0,-520 # c0408df8 <ebss+0xfffe7cd8>
c0404428:	fca42c23          	sw	a0,-40(s0)
c040442c:	c0407537          	lui	a0,0xc0407
c0404430:	84c50513          	addi	a0,a0,-1972 # c040684c <ebss+0xfffe572c>
c0404434:	fea42a23          	sw	a0,-12(s0)
c0404438:	fd040513          	addi	a0,s0,-48
c040443c:	fea42823          	sw	a0,-16(s0)
c0404440:	c0409537          	lui	a0,0xc0409
c0404444:	e7050593          	addi	a1,a0,-400 # c0408e70 <ebss+0xfffe7d50>
c0404448:	fd840513          	addi	a0,s0,-40
c040444c:	00000097          	auipc	ra,0x0
c0404450:	540080e7          	jalr	1344(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0404454:	ffffc097          	auipc	ra,0xffffc
c0404458:	4b8080e7          	jalr	1208(ra) # c040090c <abort>

c040445c <_ZN4core3ptr18real_drop_in_place17hf3a7730c39d465c1E>:
c040445c:	ff010113          	addi	sp,sp,-16
c0404460:	00112623          	sw	ra,12(sp)
c0404464:	00812423          	sw	s0,8(sp)
c0404468:	01010413          	addi	s0,sp,16
c040446c:	00812403          	lw	s0,8(sp)
c0404470:	00c12083          	lw	ra,12(sp)
c0404474:	01010113          	addi	sp,sp,16
c0404478:	00008067          	ret

c040447c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E>:
c040447c:	f6010113          	addi	sp,sp,-160
c0404480:	08112e23          	sw	ra,156(sp)
c0404484:	08812c23          	sw	s0,152(sp)
c0404488:	08912a23          	sw	s1,148(sp)
c040448c:	09212823          	sw	s2,144(sp)
c0404490:	09312623          	sw	s3,140(sp)
c0404494:	09412423          	sw	s4,136(sp)
c0404498:	0a010413          	addi	s0,sp,160
c040449c:	00058993          	mv	s3,a1
c04044a0:	00050913          	mv	s2,a0
c04044a4:	0005a583          	lw	a1,0(a1)
c04044a8:	0105f513          	andi	a0,a1,16
c04044ac:	02051663          	bnez	a0,c04044d8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x5c>
c04044b0:	00092503          	lw	a0,0(s2)
c04044b4:	0205f593          	andi	a1,a1,32
c04044b8:	06059063          	bnez	a1,c0404518 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x9c>
c04044bc:	00100493          	li	s1,1
c04044c0:	00100593          	li	a1,1
c04044c4:	00098613          	mv	a2,s3
c04044c8:	00001097          	auipc	ra,0x1
c04044cc:	ec0080e7          	jalr	-320(ra) # c0405388 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418>
c04044d0:	0c050063          	beqz	a0,c0404590 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x114>
c04044d4:	1e40006f          	j	c04046b8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x23c>
c04044d8:	00092503          	lw	a0,0(s2)
c04044dc:	00a00693          	li	a3,10
c04044e0:	f6840613          	addi	a2,s0,-152
c04044e4:	00000593          	li	a1,0
c04044e8:	00f57713          	andi	a4,a0,15
c04044ec:	02d76263          	bltu	a4,a3,c0404510 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x94>
c04044f0:	05770713          	addi	a4,a4,87
c04044f4:	00b607b3          	add	a5,a2,a1
c04044f8:	06e78fa3          	sb	a4,127(a5)
c04044fc:	fff58593          	addi	a1,a1,-1
c0404500:	00455513          	srli	a0,a0,0x4
c0404504:	04050863          	beqz	a0,c0404554 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0xd8>
c0404508:	00f57713          	andi	a4,a0,15
c040450c:	fed772e3          	bgeu	a4,a3,c04044f0 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x74>
c0404510:	03076713          	ori	a4,a4,48
c0404514:	fe1ff06f          	j	c04044f4 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x78>
c0404518:	00a00693          	li	a3,10
c040451c:	f6840613          	addi	a2,s0,-152
c0404520:	00000593          	li	a1,0
c0404524:	00f57713          	andi	a4,a0,15
c0404528:	02d76263          	bltu	a4,a3,c040454c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0xd0>
c040452c:	03770713          	addi	a4,a4,55
c0404530:	00b607b3          	add	a5,a2,a1
c0404534:	06e78fa3          	sb	a4,127(a5)
c0404538:	fff58593          	addi	a1,a1,-1
c040453c:	00455513          	srli	a0,a0,0x4
c0404540:	00050a63          	beqz	a0,c0404554 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0xd8>
c0404544:	00f57713          	andi	a4,a0,15
c0404548:	fed772e3          	bgeu	a4,a3,c040452c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0xb0>
c040454c:	03076713          	ori	a4,a4,48
c0404550:	fe1ff06f          	j	c0404530 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0xb4>
c0404554:	08058513          	addi	a0,a1,128
c0404558:	08100693          	li	a3,129
c040455c:	18d57063          	bgeu	a0,a3,c04046dc <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x260>
c0404560:	00b60533          	add	a0,a2,a1
c0404564:	40b007b3          	neg	a5,a1
c0404568:	08050713          	addi	a4,a0,128
c040456c:	c0409537          	lui	a0,0xc0409
c0404570:	d2850613          	addi	a2,a0,-728 # c0408d28 <ebss+0xfffe7c08>
c0404574:	00100493          	li	s1,1
c0404578:	00098513          	mv	a0,s3
c040457c:	00100593          	li	a1,1
c0404580:	00200693          	li	a3,2
c0404584:	00001097          	auipc	ra,0x1
c0404588:	4b0080e7          	jalr	1200(ra) # c0405a34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E>
c040458c:	12051663          	bnez	a0,c04046b8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x23c>
c0404590:	01c9a583          	lw	a1,28(s3)
c0404594:	0189a503          	lw	a0,24(s3)
c0404598:	00400613          	li	a2,4
c040459c:	f6c42c23          	sw	a2,-136(s0)
c04045a0:	f6042e23          	sw	zero,-132(s0)
c04045a4:	f6042823          	sw	zero,-144(s0)
c04045a8:	c0409637          	lui	a2,0xc0409
c04045ac:	e8460613          	addi	a2,a2,-380 # c0408e84 <ebss+0xfffe7d64>
c04045b0:	f6c42423          	sw	a2,-152(s0)
c04045b4:	00100493          	li	s1,1
c04045b8:	f6942623          	sw	s1,-148(s0)
c04045bc:	f6840a13          	addi	s4,s0,-152
c04045c0:	000a0613          	mv	a2,s4
c04045c4:	00001097          	auipc	ra,0x1
c04045c8:	084080e7          	jalr	132(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c04045cc:	0e051663          	bnez	a0,c04046b8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x23c>
c04045d0:	0009a583          	lw	a1,0(s3)
c04045d4:	0105f513          	andi	a0,a1,16
c04045d8:	02051663          	bnez	a0,c0404604 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x188>
c04045dc:	00492503          	lw	a0,4(s2)
c04045e0:	0205f593          	andi	a1,a1,32
c04045e4:	04059e63          	bnez	a1,c0404640 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1c4>
c04045e8:	00100593          	li	a1,1
c04045ec:	00098613          	mv	a2,s3
c04045f0:	00001097          	auipc	ra,0x1
c04045f4:	d98080e7          	jalr	-616(ra) # c0405388 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418>
c04045f8:	00000493          	li	s1,0
c04045fc:	0a051c63          	bnez	a0,c04046b4 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x238>
c0404600:	0b80006f          	j	c04046b8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x23c>
c0404604:	00492503          	lw	a0,4(s2)
c0404608:	00a00613          	li	a2,10
c040460c:	00000593          	li	a1,0
c0404610:	00f57693          	andi	a3,a0,15
c0404614:	02c6e263          	bltu	a3,a2,c0404638 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1bc>
c0404618:	05768693          	addi	a3,a3,87
c040461c:	00ba0733          	add	a4,s4,a1
c0404620:	06d70fa3          	sb	a3,127(a4)
c0404624:	fff58593          	addi	a1,a1,-1
c0404628:	00455513          	srli	a0,a0,0x4
c040462c:	04050663          	beqz	a0,c0404678 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1fc>
c0404630:	00f57693          	andi	a3,a0,15
c0404634:	fec6f2e3          	bgeu	a3,a2,c0404618 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x19c>
c0404638:	0306e693          	ori	a3,a3,48
c040463c:	fe1ff06f          	j	c040461c <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1a0>
c0404640:	00a00613          	li	a2,10
c0404644:	00000593          	li	a1,0
c0404648:	00f57693          	andi	a3,a0,15
c040464c:	02c6e263          	bltu	a3,a2,c0404670 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1f4>
c0404650:	03768693          	addi	a3,a3,55
c0404654:	00ba0733          	add	a4,s4,a1
c0404658:	06d70fa3          	sb	a3,127(a4)
c040465c:	fff58593          	addi	a1,a1,-1
c0404660:	00455513          	srli	a0,a0,0x4
c0404664:	00050a63          	beqz	a0,c0404678 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1fc>
c0404668:	00f57693          	andi	a3,a0,15
c040466c:	fec6f2e3          	bgeu	a3,a2,c0404650 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1d4>
c0404670:	0306e693          	ori	a3,a3,48
c0404674:	fe1ff06f          	j	c0404654 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x1d8>
c0404678:	08058513          	addi	a0,a1,128
c040467c:	08100613          	li	a2,129
c0404680:	04c57e63          	bgeu	a0,a2,c04046dc <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x260>
c0404684:	00ba0533          	add	a0,s4,a1
c0404688:	40b007b3          	neg	a5,a1
c040468c:	08050713          	addi	a4,a0,128
c0404690:	c0409537          	lui	a0,0xc0409
c0404694:	d2850613          	addi	a2,a0,-728 # c0408d28 <ebss+0xfffe7c08>
c0404698:	00098513          	mv	a0,s3
c040469c:	00100593          	li	a1,1
c04046a0:	00200693          	li	a3,2
c04046a4:	00001097          	auipc	ra,0x1
c04046a8:	390080e7          	jalr	912(ra) # c0405a34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E>
c04046ac:	00000493          	li	s1,0
c04046b0:	00050463          	beqz	a0,c04046b8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6884e01555d5087E+0x23c>
c04046b4:	00100493          	li	s1,1
c04046b8:	00048513          	mv	a0,s1
c04046bc:	08812a03          	lw	s4,136(sp)
c04046c0:	08c12983          	lw	s3,140(sp)
c04046c4:	09012903          	lw	s2,144(sp)
c04046c8:	09412483          	lw	s1,148(sp)
c04046cc:	09812403          	lw	s0,152(sp)
c04046d0:	09c12083          	lw	ra,156(sp)
c04046d4:	0a010113          	addi	sp,sp,160
c04046d8:	00008067          	ret
c04046dc:	08000593          	li	a1,128
c04046e0:	00001097          	auipc	ra,0x1
c04046e4:	94c080e7          	jalr	-1716(ra) # c040502c <_ZN4core5slice22slice_index_order_fail17h221760d75dba461fE>
c04046e8:	ffffc097          	auipc	ra,0xffffc
c04046ec:	224080e7          	jalr	548(ra) # c040090c <abort>

c04046f0 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h7c94d51e4a08dbfeE>:
c04046f0:	ff010113          	addi	sp,sp,-16
c04046f4:	00112623          	sw	ra,12(sp)
c04046f8:	00812423          	sw	s0,8(sp)
c04046fc:	01010413          	addi	s0,sp,16
c0404700:	5ee4b537          	lui	a0,0x5ee4b
c0404704:	65850513          	addi	a0,a0,1624 # 5ee4b658 <XLENB+0x5ee4b654>
c0404708:	4c8c45b7          	lui	a1,0x4c8c4
c040470c:	d3658593          	addi	a1,a1,-714 # 4c8c3d36 <XLENB+0x4c8c3d32>
c0404710:	00812403          	lw	s0,8(sp)
c0404714:	00c12083          	lw	ra,12(sp)
c0404718:	01010113          	addi	sp,sp,16
c040471c:	00008067          	ret

c0404720 <_ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h8db8ab1973052b04E>:
c0404720:	fb010113          	addi	sp,sp,-80
c0404724:	04112623          	sw	ra,76(sp)
c0404728:	04812423          	sw	s0,72(sp)
c040472c:	04912223          	sw	s1,68(sp)
c0404730:	05212023          	sw	s2,64(sp)
c0404734:	03312e23          	sw	s3,60(sp)
c0404738:	05010413          	addi	s0,sp,80
c040473c:	00058993          	mv	s3,a1
c0404740:	00050913          	mv	s2,a0
c0404744:	0185a503          	lw	a0,24(a1)
c0404748:	01c5a583          	lw	a1,28(a1)
c040474c:	00c5a683          	lw	a3,12(a1)
c0404750:	c04095b7          	lui	a1,0xc0409
c0404754:	e9c58593          	addi	a1,a1,-356 # c0408e9c <ebss+0xfffe7d7c>
c0404758:	00c00613          	li	a2,12
c040475c:	000680e7          	jalr	a3
c0404760:	00100493          	li	s1,1
c0404764:	10051c63          	bnez	a0,c040487c <_ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h8db8ab1973052b04E+0x15c>
c0404768:	00892503          	lw	a0,8(s2)
c040476c:	00050a63          	beqz	a0,c0404780 <_ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h8db8ab1973052b04E+0x60>
c0404770:	faa42a23          	sw	a0,-76(s0)
c0404774:	c0406537          	lui	a0,0xc0406
c0404778:	7dc50513          	addi	a0,a0,2012 # c04067dc <ebss+0xfffe56bc>
c040477c:	0440006f          	j	c04047c0 <_ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h8db8ab1973052b04E+0xa0>
c0404780:	00092483          	lw	s1,0(s2)
c0404784:	00492503          	lw	a0,4(s2)
c0404788:	00c52583          	lw	a1,12(a0)
c040478c:	00048513          	mv	a0,s1
c0404790:	000580e7          	jalr	a1
c0404794:	11109637          	lui	a2,0x11109
c0404798:	4d960613          	addi	a2,a2,1241 # 111094d9 <XLENB+0x111094d5>
c040479c:	00c5c5b3          	xor	a1,a1,a2
c04047a0:	70b09637          	lui	a2,0x70b09
c04047a4:	76460613          	addi	a2,a2,1892 # 70b09764 <XLENB+0x70b09760>
c04047a8:	00c54533          	xor	a0,a0,a2
c04047ac:	00b56533          	or	a0,a0,a1
c04047b0:	04051e63          	bnez	a0,c040480c <_ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h8db8ab1973052b04E+0xec>
c04047b4:	fa942a23          	sw	s1,-76(s0)
c04047b8:	c0406537          	lui	a0,0xc0406
c04047bc:	7a450513          	addi	a0,a0,1956 # c04067a4 <ebss+0xfffe5684>
c04047c0:	faa42e23          	sw	a0,-68(s0)
c04047c4:	fb440513          	addi	a0,s0,-76
c04047c8:	faa42c23          	sw	a0,-72(s0)
c04047cc:	01c9a583          	lw	a1,28(s3)
c04047d0:	0189a503          	lw	a0,24(s3)
c04047d4:	fb840613          	addi	a2,s0,-72
c04047d8:	fec42023          	sw	a2,-32(s0)
c04047dc:	fc042c23          	sw	zero,-40(s0)
c04047e0:	00200613          	li	a2,2
c04047e4:	fcc42a23          	sw	a2,-44(s0)
c04047e8:	c0409637          	lui	a2,0xc0409
c04047ec:	eac60613          	addi	a2,a2,-340 # c0408eac <ebss+0xfffe7d8c>
c04047f0:	fcc42823          	sw	a2,-48(s0)
c04047f4:	00100493          	li	s1,1
c04047f8:	fe942223          	sw	s1,-28(s0)
c04047fc:	fd040613          	addi	a2,s0,-48
c0404800:	00001097          	auipc	ra,0x1
c0404804:	e48080e7          	jalr	-440(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0404808:	06051a63          	bnez	a0,c040487c <_ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h8db8ab1973052b04E+0x15c>
c040480c:	01890513          	addi	a0,s2,24
c0404810:	fca42423          	sw	a0,-56(s0)
c0404814:	c0405537          	lui	a0,0xc0405
c0404818:	55c50513          	addi	a0,a0,1372 # c040555c <ebss+0xfffe443c>
c040481c:	fca42623          	sw	a0,-52(s0)
c0404820:	fca42223          	sw	a0,-60(s0)
c0404824:	01490513          	addi	a0,s2,20
c0404828:	fca42023          	sw	a0,-64(s0)
c040482c:	c0407537          	lui	a0,0xc0407
c0404830:	84c50513          	addi	a0,a0,-1972 # c040684c <ebss+0xfffe572c>
c0404834:	faa42e23          	sw	a0,-68(s0)
c0404838:	00c90513          	addi	a0,s2,12
c040483c:	faa42c23          	sw	a0,-72(s0)
c0404840:	01c9a583          	lw	a1,28(s3)
c0404844:	0189a503          	lw	a0,24(s3)
c0404848:	fb840613          	addi	a2,s0,-72
c040484c:	fec42023          	sw	a2,-32(s0)
c0404850:	fc042c23          	sw	zero,-40(s0)
c0404854:	00300613          	li	a2,3
c0404858:	fec42223          	sw	a2,-28(s0)
c040485c:	fcc42a23          	sw	a2,-44(s0)
c0404860:	c0409637          	lui	a2,0xc0409
c0404864:	ec060613          	addi	a2,a2,-320 # c0408ec0 <ebss+0xfffe7da0>
c0404868:	fcc42823          	sw	a2,-48(s0)
c040486c:	fd040613          	addi	a2,s0,-48
c0404870:	00001097          	auipc	ra,0x1
c0404874:	dd8080e7          	jalr	-552(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0404878:	00050493          	mv	s1,a0
c040487c:	00048513          	mv	a0,s1
c0404880:	03c12983          	lw	s3,60(sp)
c0404884:	04012903          	lw	s2,64(sp)
c0404888:	04412483          	lw	s1,68(sp)
c040488c:	04812403          	lw	s0,72(sp)
c0404890:	04c12083          	lw	ra,76(sp)
c0404894:	05010113          	addi	sp,sp,80
c0404898:	00008067          	ret

c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>:
c040489c:	fc010113          	addi	sp,sp,-64
c04048a0:	02112e23          	sw	ra,60(sp)
c04048a4:	02812c23          	sw	s0,56(sp)
c04048a8:	04010413          	addi	s0,sp,64
c04048ac:	00852803          	lw	a6,8(a0)
c04048b0:	00c52603          	lw	a2,12(a0)
c04048b4:	01052683          	lw	a3,16(a0)
c04048b8:	01452703          	lw	a4,20(a0)
c04048bc:	00052783          	lw	a5,0(a0)
c04048c0:	00452503          	lw	a0,4(a0)
c04048c4:	00400593          	li	a1,4
c04048c8:	fcb42c23          	sw	a1,-40(s0)
c04048cc:	fc042e23          	sw	zero,-36(s0)
c04048d0:	fc042823          	sw	zero,-48(s0)
c04048d4:	00100593          	li	a1,1
c04048d8:	fcb42623          	sw	a1,-52(s0)
c04048dc:	fe040593          	addi	a1,s0,-32
c04048e0:	fcb42423          	sw	a1,-56(s0)
c04048e4:	fea42223          	sw	a0,-28(s0)
c04048e8:	fef42023          	sw	a5,-32(s0)
c04048ec:	fee42a23          	sw	a4,-12(s0)
c04048f0:	fed42823          	sw	a3,-16(s0)
c04048f4:	fec42623          	sw	a2,-20(s0)
c04048f8:	ff042423          	sw	a6,-24(s0)
c04048fc:	fc840513          	addi	a0,s0,-56
c0404900:	fe840593          	addi	a1,s0,-24
c0404904:	00000097          	auipc	ra,0x0
c0404908:	088080e7          	jalr	136(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c040490c:	ffffc097          	auipc	ra,0xffffc
c0404910:	000080e7          	jalr	ra # c040090c <abort>

c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>:
c0404914:	fc010113          	addi	sp,sp,-64
c0404918:	02112e23          	sw	ra,60(sp)
c040491c:	02812c23          	sw	s0,56(sp)
c0404920:	04010413          	addi	s0,sp,64
c0404924:	00050693          	mv	a3,a0
c0404928:	fcc42623          	sw	a2,-52(s0)
c040492c:	fcb42423          	sw	a1,-56(s0)
c0404930:	fe840513          	addi	a0,s0,-24
c0404934:	fea42023          	sw	a0,-32(s0)
c0404938:	fc042c23          	sw	zero,-40(s0)
c040493c:	00200513          	li	a0,2
c0404940:	fea42223          	sw	a0,-28(s0)
c0404944:	fca42a23          	sw	a0,-44(s0)
c0404948:	c0409537          	lui	a0,0xc0409
c040494c:	f0c50513          	addi	a0,a0,-244 # c0408f0c <ebss+0xfffe7dec>
c0404950:	fca42823          	sw	a0,-48(s0)
c0404954:	fc840513          	addi	a0,s0,-56
c0404958:	fea42823          	sw	a0,-16(s0)
c040495c:	c0405537          	lui	a0,0xc0405
c0404960:	55c50513          	addi	a0,a0,1372 # c040555c <ebss+0xfffe443c>
c0404964:	fea42a23          	sw	a0,-12(s0)
c0404968:	fea42623          	sw	a0,-20(s0)
c040496c:	fcc40513          	addi	a0,s0,-52
c0404970:	fea42423          	sw	a0,-24(s0)
c0404974:	fd040513          	addi	a0,s0,-48
c0404978:	00068593          	mv	a1,a3
c040497c:	00000097          	auipc	ra,0x0
c0404980:	010080e7          	jalr	16(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0404984:	ffffc097          	auipc	ra,0xffffc
c0404988:	f88080e7          	jalr	-120(ra) # c040090c <abort>

c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>:
c040498c:	fd010113          	addi	sp,sp,-48
c0404990:	02112623          	sw	ra,44(sp)
c0404994:	02812423          	sw	s0,40(sp)
c0404998:	03010413          	addi	s0,sp,48
c040499c:	0005a603          	lw	a2,0(a1)
c04049a0:	0045a683          	lw	a3,4(a1)
c04049a4:	0085a703          	lw	a4,8(a1)
c04049a8:	00c5a583          	lw	a1,12(a1)
c04049ac:	feb42823          	sw	a1,-16(s0)
c04049b0:	fee42623          	sw	a4,-20(s0)
c04049b4:	fed42423          	sw	a3,-24(s0)
c04049b8:	fec42223          	sw	a2,-28(s0)
c04049bc:	fea42023          	sw	a0,-32(s0)
c04049c0:	c0409537          	lui	a0,0xc0409
c04049c4:	e8c50513          	addi	a0,a0,-372 # c0408e8c <ebss+0xfffe7d6c>
c04049c8:	fca42e23          	sw	a0,-36(s0)
c04049cc:	00100513          	li	a0,1
c04049d0:	fca42c23          	sw	a0,-40(s0)
c04049d4:	fd840513          	addi	a0,s0,-40
c04049d8:	ffffc097          	auipc	ra,0xffffc
c04049dc:	e60080e7          	jalr	-416(ra) # c0400838 <rust_begin_unwind>
c04049e0:	ffffc097          	auipc	ra,0xffffc
c04049e4:	f2c080e7          	jalr	-212(ra) # c040090c <abort>

c04049e8 <_ZN4core6result13unwrap_failed17hb746215ce705626cE>:
c04049e8:	fc010113          	addi	sp,sp,-64
c04049ec:	02112e23          	sw	ra,60(sp)
c04049f0:	02812c23          	sw	s0,56(sp)
c04049f4:	04010413          	addi	s0,sp,64
c04049f8:	fcb42223          	sw	a1,-60(s0)
c04049fc:	fca42023          	sw	a0,-64(s0)
c0404a00:	fcd42623          	sw	a3,-52(s0)
c0404a04:	fcc42423          	sw	a2,-56(s0)
c0404a08:	fe840513          	addi	a0,s0,-24
c0404a0c:	fea42023          	sw	a0,-32(s0)
c0404a10:	fc042c23          	sw	zero,-40(s0)
c0404a14:	00200513          	li	a0,2
c0404a18:	fea42223          	sw	a0,-28(s0)
c0404a1c:	fca42a23          	sw	a0,-44(s0)
c0404a20:	c0409537          	lui	a0,0xc0409
c0404a24:	fd450513          	addi	a0,a0,-44 # c0408fd4 <ebss+0xfffe7eb4>
c0404a28:	fca42823          	sw	a0,-48(s0)
c0404a2c:	c0406537          	lui	a0,0xc0406
c0404a30:	77450513          	addi	a0,a0,1908 # c0406774 <ebss+0xfffe5654>
c0404a34:	fea42a23          	sw	a0,-12(s0)
c0404a38:	fc840513          	addi	a0,s0,-56
c0404a3c:	fea42823          	sw	a0,-16(s0)
c0404a40:	c0407537          	lui	a0,0xc0407
c0404a44:	84c50513          	addi	a0,a0,-1972 # c040684c <ebss+0xfffe572c>
c0404a48:	fea42623          	sw	a0,-20(s0)
c0404a4c:	fc040513          	addi	a0,s0,-64
c0404a50:	fea42423          	sw	a0,-24(s0)
c0404a54:	c0409537          	lui	a0,0xc0409
c0404a58:	05450593          	addi	a1,a0,84 # c0409054 <ebss+0xfffe7f34>
c0404a5c:	fd040513          	addi	a0,s0,-48
c0404a60:	00000097          	auipc	ra,0x0
c0404a64:	f2c080e7          	jalr	-212(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0404a68:	ffffc097          	auipc	ra,0xffffc
c0404a6c:	ea4080e7          	jalr	-348(ra) # c040090c <abort>

c0404a70 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E>:
c0404a70:	ff010113          	addi	sp,sp,-16
c0404a74:	00112623          	sw	ra,12(sp)
c0404a78:	00812423          	sw	s0,8(sp)
c0404a7c:	01010413          	addi	s0,sp,16
c0404a80:	00050693          	mv	a3,a0
c0404a84:	0035f713          	andi	a4,a1,3
c0404a88:	00000513          	li	a0,0
c0404a8c:	0ff6f393          	andi	t2,a3,255
c0404a90:	04070a63          	beqz	a4,c0404ae4 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x74>
c0404a94:	00400793          	li	a5,4
c0404a98:	40e78733          	sub	a4,a5,a4
c0404a9c:	04070463          	beqz	a4,c0404ae4 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x74>
c0404aa0:	00060513          	mv	a0,a2
c0404aa4:	00e66463          	bltu	a2,a4,c0404aac <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x3c>
c0404aa8:	00070513          	mv	a0,a4
c0404aac:	00000713          	li	a4,0
c0404ab0:	02e50a63          	beq	a0,a4,c0404ae4 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x74>
c0404ab4:	00e587b3          	add	a5,a1,a4
c0404ab8:	00170713          	addi	a4,a4,1
c0404abc:	0007c783          	lbu	a5,0(a5)
c0404ac0:	fe7798e3          	bne	a5,t2,c0404ab0 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x40>
c0404ac4:	0077c533          	xor	a0,a5,t2
c0404ac8:	00153513          	seqz	a0,a0
c0404acc:	00150513          	addi	a0,a0,1
c0404ad0:	00157513          	andi	a0,a0,1
c0404ad4:	00e50533          	add	a0,a0,a4
c0404ad8:	00100613          	li	a2,1
c0404adc:	fff50593          	addi	a1,a0,-1
c0404ae0:	0c00006f          	j	c0404ba0 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x130>
c0404ae4:	00800713          	li	a4,8
c0404ae8:	06e66863          	bltu	a2,a4,c0404b58 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0xe8>
c0404aec:	ff860813          	addi	a6,a2,-8
c0404af0:	06a86463          	bltu	a6,a0,c0404b58 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0xe8>
c0404af4:	01010737          	lui	a4,0x1010
c0404af8:	10170713          	addi	a4,a4,257 # 1010101 <XLENB+0x10100fd>
c0404afc:	02e388b3          	mul	a7,t2,a4
c0404b00:	80808737          	lui	a4,0x80808
c0404b04:	08070293          	addi	t0,a4,128 # 80808080 <ebss+0xc03e6f60>
c0404b08:	feff07b7          	lui	a5,0xfeff0
c0404b0c:	eff78313          	addi	t1,a5,-257 # fefefeff <ebss+0x3ebceddf>
c0404b10:	00a58733          	add	a4,a1,a0
c0404b14:	00072783          	lw	a5,0(a4)
c0404b18:	0117c7b3          	xor	a5,a5,a7
c0404b1c:	006786b3          	add	a3,a5,t1
c0404b20:	fff7c793          	not	a5,a5
c0404b24:	0057f7b3          	and	a5,a5,t0
c0404b28:	00d7f6b3          	and	a3,a5,a3
c0404b2c:	00472703          	lw	a4,4(a4)
c0404b30:	01174733          	xor	a4,a4,a7
c0404b34:	006707b3          	add	a5,a4,t1
c0404b38:	fff74713          	not	a4,a4
c0404b3c:	00577733          	and	a4,a4,t0
c0404b40:	00f77733          	and	a4,a4,a5
c0404b44:	00d766b3          	or	a3,a4,a3
c0404b48:	00069663          	bnez	a3,c0404b54 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0xe4>
c0404b4c:	00850513          	addi	a0,a0,8
c0404b50:	fca870e3          	bgeu	a6,a0,c0404b10 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0xa0>
c0404b54:	06a66063          	bltu	a2,a0,c0404bb4 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x144>
c0404b58:	40a60633          	sub	a2,a2,a0
c0404b5c:	00a58733          	add	a4,a1,a0
c0404b60:	00000593          	li	a1,0
c0404b64:	02b60a63          	beq	a2,a1,c0404b98 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x128>
c0404b68:	00b706b3          	add	a3,a4,a1
c0404b6c:	00158593          	addi	a1,a1,1
c0404b70:	0006c783          	lbu	a5,0(a3)
c0404b74:	fe7798e3          	bne	a5,t2,c0404b64 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0xf4>
c0404b78:	0077c633          	xor	a2,a5,t2
c0404b7c:	00163613          	seqz	a2,a2
c0404b80:	00160613          	addi	a2,a2,1
c0404b84:	00167613          	andi	a2,a2,1
c0404b88:	00b605b3          	add	a1,a2,a1
c0404b8c:	00100613          	li	a2,1
c0404b90:	fff58593          	addi	a1,a1,-1
c0404b94:	0080006f          	j	c0404b9c <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E+0x12c>
c0404b98:	00000613          	li	a2,0
c0404b9c:	00a585b3          	add	a1,a1,a0
c0404ba0:	00060513          	mv	a0,a2
c0404ba4:	00812403          	lw	s0,8(sp)
c0404ba8:	00c12083          	lw	ra,12(sp)
c0404bac:	01010113          	addi	sp,sp,16
c0404bb0:	00008067          	ret
c0404bb4:	00060593          	mv	a1,a2
c0404bb8:	00000097          	auipc	ra,0x0
c0404bbc:	474080e7          	jalr	1140(ra) # c040502c <_ZN4core5slice22slice_index_order_fail17h221760d75dba461fE>
c0404bc0:	ffffc097          	auipc	ra,0xffffc
c0404bc4:	d4c080e7          	jalr	-692(ra) # c040090c <abort>

c0404bc8 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E>:
c0404bc8:	f9010113          	addi	sp,sp,-112
c0404bcc:	06112623          	sw	ra,108(sp)
c0404bd0:	06812423          	sw	s0,104(sp)
c0404bd4:	07010413          	addi	s0,sp,112
c0404bd8:	f8d42a23          	sw	a3,-108(s0)
c0404bdc:	f8c42823          	sw	a2,-112(s0)
c0404be0:	00100713          	li	a4,1
c0404be4:	10100793          	li	a5,257
c0404be8:	00058313          	mv	t1,a1
c0404bec:	02f5ee63          	bltu	a1,a5,c0404c28 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x60>
c0404bf0:	40b00833          	neg	a6,a1
c0404bf4:	10000793          	li	a5,256
c0404bf8:	fbf00893          	li	a7,-65
c0404bfc:	00100293          	li	t0,1
c0404c00:	00b7f863          	bgeu	a5,a1,c0404c10 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x48>
c0404c04:	00f50733          	add	a4,a0,a5
c0404c08:	00070703          	lb	a4,0(a4)
c0404c0c:	02e8c863          	blt	a7,a4,c0404c3c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x74>
c0404c10:	fff78313          	addi	t1,a5,-1
c0404c14:	12578063          	beq	a5,t0,c0404d34 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x16c>
c0404c18:	00f803b3          	add	t2,a6,a5
c0404c1c:	00030793          	mv	a5,t1
c0404c20:	00000713          	li	a4,0
c0404c24:	fc539ee3          	bne	t2,t0,c0404c00 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x38>
c0404c28:	02071063          	bnez	a4,c0404c48 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x80>
c0404c2c:	c0409737          	lui	a4,0xc0409
c0404c30:	06470713          	addi	a4,a4,100 # c0409064 <ebss+0xfffe7f44>
c0404c34:	00500793          	li	a5,5
c0404c38:	01c0006f          	j	c0404c54 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x8c>
c0404c3c:	00078313          	mv	t1,a5
c0404c40:	00000713          	li	a4,0
c0404c44:	fe0704e3          	beqz	a4,c0404c2c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x64>
c0404c48:	c0409737          	lui	a4,0xc0409
c0404c4c:	fd070713          	addi	a4,a4,-48 # c0408fd0 <ebss+0xfffe7eb0>
c0404c50:	00000793          	li	a5,0
c0404c54:	f8642e23          	sw	t1,-100(s0)
c0404c58:	f8a42c23          	sw	a0,-104(s0)
c0404c5c:	faf42223          	sw	a5,-92(s0)
c0404c60:	fae42023          	sw	a4,-96(s0)
c0404c64:	24c5e863          	bltu	a1,a2,c0404eb4 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x2ec>
c0404c68:	24d5e663          	bltu	a1,a3,c0404eb4 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x2ec>
c0404c6c:	2cc6e463          	bltu	a3,a2,c0404f34 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x36c>
c0404c70:	00060e63          	beqz	a2,c0404c8c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0xc4>
c0404c74:	00c58c63          	beq	a1,a2,c0404c8c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0xc4>
c0404c78:	00b67c63          	bgeu	a2,a1,c0404c90 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0xc8>
c0404c7c:	00c50733          	add	a4,a0,a2
c0404c80:	00070703          	lb	a4,0(a4)
c0404c84:	fc000793          	li	a5,-64
c0404c88:	00f74463          	blt	a4,a5,c0404c90 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0xc8>
c0404c8c:	00068613          	mv	a2,a3
c0404c90:	fac42423          	sw	a2,-88(s0)
c0404c94:	02060e63          	beqz	a2,c0404cd0 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x108>
c0404c98:	02b60c63          	beq	a2,a1,c0404cd0 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x108>
c0404c9c:	00158693          	addi	a3,a1,1
c0404ca0:	fc000813          	li	a6,-64
c0404ca4:	00100793          	li	a5,1
c0404ca8:	00060713          	mv	a4,a2
c0404cac:	00b67863          	bgeu	a2,a1,c0404cbc <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0xf4>
c0404cb0:	00e50633          	add	a2,a0,a4
c0404cb4:	00060603          	lb	a2,0(a2)
c0404cb8:	01065a63          	bge	a2,a6,c0404ccc <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x104>
c0404cbc:	fff70613          	addi	a2,a4,-1
c0404cc0:	00f70863          	beq	a4,a5,c0404cd0 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x108>
c0404cc4:	fee692e3          	bne	a3,a4,c0404ca8 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0xe0>
c0404cc8:	0080006f          	j	c0404cd0 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x108>
c0404ccc:	00070613          	mv	a2,a4
c0404cd0:	00b61e63          	bne	a2,a1,c0404cec <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x124>
c0404cd4:	c0409537          	lui	a0,0xc0409
c0404cd8:	fb850513          	addi	a0,a0,-72 # c0408fb8 <ebss+0xfffe7e98>
c0404cdc:	00000097          	auipc	ra,0x0
c0404ce0:	bc0080e7          	jalr	-1088(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0404ce4:	ffffc097          	auipc	ra,0xffffc
c0404ce8:	c28080e7          	jalr	-984(ra) # c040090c <abort>
c0404cec:	00c50733          	add	a4,a0,a2
c0404cf0:	00070783          	lb	a5,0(a4)
c0404cf4:	0ff7f893          	andi	a7,a5,255
c0404cf8:	fff00693          	li	a3,-1
c0404cfc:	00f6d863          	bge	a3,a5,c0404d0c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x144>
c0404d00:	fb142623          	sw	a7,-84(s0)
c0404d04:	00100593          	li	a1,1
c0404d08:	1040006f          	j	c0404e0c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x244>
c0404d0c:	00b50533          	add	a0,a0,a1
c0404d10:	00170593          	addi	a1,a4,1
c0404d14:	02a59663          	bne	a1,a0,c0404d40 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x178>
c0404d18:	00050793          	mv	a5,a0
c0404d1c:	00000713          	li	a4,0
c0404d20:	01f8f593          	andi	a1,a7,31
c0404d24:	0df00693          	li	a3,223
c0404d28:	0316e863          	bltu	a3,a7,c0404d58 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x190>
c0404d2c:	00659513          	slli	a0,a1,0x6
c0404d30:	0480006f          	j	c0404d78 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x1b0>
c0404d34:	00000713          	li	a4,0
c0404d38:	ee070ae3          	beqz	a4,c0404c2c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x64>
c0404d3c:	f0dff06f          	j	c0404c48 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x80>
c0404d40:	00270793          	addi	a5,a4,2
c0404d44:	00174583          	lbu	a1,1(a4)
c0404d48:	03f5f713          	andi	a4,a1,63
c0404d4c:	01f8f593          	andi	a1,a7,31
c0404d50:	0df00693          	li	a3,223
c0404d54:	fd16fce3          	bgeu	a3,a7,c0404d2c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x164>
c0404d58:	04a79a63          	bne	a5,a0,c0404dac <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x1e4>
c0404d5c:	00050813          	mv	a6,a0
c0404d60:	00000793          	li	a5,0
c0404d64:	00671693          	slli	a3,a4,0x6
c0404d68:	00d7e733          	or	a4,a5,a3
c0404d6c:	0f000693          	li	a3,240
c0404d70:	04d8fc63          	bgeu	a7,a3,c0404dc8 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x200>
c0404d74:	00c59513          	slli	a0,a1,0xc
c0404d78:	00a76533          	or	a0,a4,a0
c0404d7c:	00100593          	li	a1,1
c0404d80:	faa42623          	sw	a0,-84(s0)
c0404d84:	08000693          	li	a3,128
c0404d88:	08d56263          	bltu	a0,a3,c0404e0c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x244>
c0404d8c:	00200593          	li	a1,2
c0404d90:	00b55693          	srli	a3,a0,0xb
c0404d94:	06068c63          	beqz	a3,c0404e0c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x244>
c0404d98:	01055513          	srli	a0,a0,0x10
c0404d9c:	00300593          	li	a1,3
c0404da0:	06050663          	beqz	a0,c0404e0c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x244>
c0404da4:	00400593          	li	a1,4
c0404da8:	0640006f          	j	c0404e0c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x244>
c0404dac:	00178813          	addi	a6,a5,1
c0404db0:	0007c683          	lbu	a3,0(a5)
c0404db4:	03f6f793          	andi	a5,a3,63
c0404db8:	00671693          	slli	a3,a4,0x6
c0404dbc:	00d7e733          	or	a4,a5,a3
c0404dc0:	0f000693          	li	a3,240
c0404dc4:	fad8e8e3          	bltu	a7,a3,c0404d74 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x1ac>
c0404dc8:	00a81663          	bne	a6,a0,c0404dd4 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x20c>
c0404dcc:	00000513          	li	a0,0
c0404dd0:	00c0006f          	j	c0404ddc <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x214>
c0404dd4:	00084503          	lbu	a0,0(a6)
c0404dd8:	03f57513          	andi	a0,a0,63
c0404ddc:	01259593          	slli	a1,a1,0x12
c0404de0:	001c06b7          	lui	a3,0x1c0
c0404de4:	00d5f5b3          	and	a1,a1,a3
c0404de8:	00671693          	slli	a3,a4,0x6
c0404dec:	00b6e5b3          	or	a1,a3,a1
c0404df0:	00a5e533          	or	a0,a1,a0
c0404df4:	001105b7          	lui	a1,0x110
c0404df8:	ecb50ee3          	beq	a0,a1,c0404cd4 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x10c>
c0404dfc:	00100593          	li	a1,1
c0404e00:	faa42623          	sw	a0,-84(s0)
c0404e04:	08000693          	li	a3,128
c0404e08:	f8d572e3          	bgeu	a0,a3,c0404d8c <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x1c4>
c0404e0c:	fac42823          	sw	a2,-80(s0)
c0404e10:	00c58533          	add	a0,a1,a2
c0404e14:	faa42a23          	sw	a0,-76(s0)
c0404e18:	fd040513          	addi	a0,s0,-48
c0404e1c:	fca42423          	sw	a0,-56(s0)
c0404e20:	fc042023          	sw	zero,-64(s0)
c0404e24:	00500513          	li	a0,5
c0404e28:	fca42623          	sw	a0,-52(s0)
c0404e2c:	faa42e23          	sw	a0,-68(s0)
c0404e30:	c0409537          	lui	a0,0xc0409
c0404e34:	19050513          	addi	a0,a0,400 # c0409190 <ebss+0xfffe8070>
c0404e38:	faa42c23          	sw	a0,-72(s0)
c0404e3c:	fa040513          	addi	a0,s0,-96
c0404e40:	fea42823          	sw	a0,-16(s0)
c0404e44:	c0407537          	lui	a0,0xc0407
c0404e48:	84c50513          	addi	a0,a0,-1972 # c040684c <ebss+0xfffe572c>
c0404e4c:	fea42a23          	sw	a0,-12(s0)
c0404e50:	fea42623          	sw	a0,-20(s0)
c0404e54:	f9840513          	addi	a0,s0,-104
c0404e58:	fea42423          	sw	a0,-24(s0)
c0404e5c:	c0404537          	lui	a0,0xc0404
c0404e60:	47c50513          	addi	a0,a0,1148 # c040447c <ebss+0xfffe335c>
c0404e64:	fea42223          	sw	a0,-28(s0)
c0404e68:	fb040513          	addi	a0,s0,-80
c0404e6c:	fea42023          	sw	a0,-32(s0)
c0404e70:	c0406537          	lui	a0,0xc0406
c0404e74:	38050513          	addi	a0,a0,896 # c0406380 <ebss+0xfffe5260>
c0404e78:	fca42e23          	sw	a0,-36(s0)
c0404e7c:	fac40513          	addi	a0,s0,-84
c0404e80:	fca42c23          	sw	a0,-40(s0)
c0404e84:	c0405537          	lui	a0,0xc0405
c0404e88:	55c50513          	addi	a0,a0,1372 # c040555c <ebss+0xfffe443c>
c0404e8c:	fca42a23          	sw	a0,-44(s0)
c0404e90:	fa840513          	addi	a0,s0,-88
c0404e94:	fca42823          	sw	a0,-48(s0)
c0404e98:	c0409537          	lui	a0,0xc0409
c0404e9c:	1b850593          	addi	a1,a0,440 # c04091b8 <ebss+0xfffe8098>
c0404ea0:	fb840513          	addi	a0,s0,-72
c0404ea4:	00000097          	auipc	ra,0x0
c0404ea8:	ae8080e7          	jalr	-1304(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0404eac:	ffffc097          	auipc	ra,0xffffc
c0404eb0:	a60080e7          	jalr	-1440(ra) # c040090c <abort>
c0404eb4:	00c5e463          	bltu	a1,a2,c0404ebc <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E+0x2f4>
c0404eb8:	00068613          	mv	a2,a3
c0404ebc:	fac42823          	sw	a2,-80(s0)
c0404ec0:	fd040513          	addi	a0,s0,-48
c0404ec4:	fca42423          	sw	a0,-56(s0)
c0404ec8:	fc042023          	sw	zero,-64(s0)
c0404ecc:	00300513          	li	a0,3
c0404ed0:	fca42623          	sw	a0,-52(s0)
c0404ed4:	faa42e23          	sw	a0,-68(s0)
c0404ed8:	c0409537          	lui	a0,0xc0409
c0404edc:	08c50513          	addi	a0,a0,140 # c040908c <ebss+0xfffe7f6c>
c0404ee0:	faa42c23          	sw	a0,-72(s0)
c0404ee4:	fa040513          	addi	a0,s0,-96
c0404ee8:	fea42023          	sw	a0,-32(s0)
c0404eec:	c0407537          	lui	a0,0xc0407
c0404ef0:	84c50513          	addi	a0,a0,-1972 # c040684c <ebss+0xfffe572c>
c0404ef4:	fea42223          	sw	a0,-28(s0)
c0404ef8:	fca42e23          	sw	a0,-36(s0)
c0404efc:	f9840513          	addi	a0,s0,-104
c0404f00:	fca42c23          	sw	a0,-40(s0)
c0404f04:	c0405537          	lui	a0,0xc0405
c0404f08:	55c50513          	addi	a0,a0,1372 # c040555c <ebss+0xfffe443c>
c0404f0c:	fca42a23          	sw	a0,-44(s0)
c0404f10:	fb040513          	addi	a0,s0,-80
c0404f14:	fca42823          	sw	a0,-48(s0)
c0404f18:	c0409537          	lui	a0,0xc0409
c0404f1c:	11450593          	addi	a1,a0,276 # c0409114 <ebss+0xfffe7ff4>
c0404f20:	fb840513          	addi	a0,s0,-72
c0404f24:	00000097          	auipc	ra,0x0
c0404f28:	a68080e7          	jalr	-1432(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0404f2c:	ffffc097          	auipc	ra,0xffffc
c0404f30:	9e0080e7          	jalr	-1568(ra) # c040090c <abort>
c0404f34:	fd040513          	addi	a0,s0,-48
c0404f38:	fca42423          	sw	a0,-56(s0)
c0404f3c:	fc042023          	sw	zero,-64(s0)
c0404f40:	00400513          	li	a0,4
c0404f44:	fca42623          	sw	a0,-52(s0)
c0404f48:	faa42e23          	sw	a0,-68(s0)
c0404f4c:	fa040513          	addi	a0,s0,-96
c0404f50:	fea42423          	sw	a0,-24(s0)
c0404f54:	c0407537          	lui	a0,0xc0407
c0404f58:	84c50513          	addi	a0,a0,-1972 # c040684c <ebss+0xfffe572c>
c0404f5c:	fea42623          	sw	a0,-20(s0)
c0404f60:	fea42223          	sw	a0,-28(s0)
c0404f64:	f9840513          	addi	a0,s0,-104
c0404f68:	fea42023          	sw	a0,-32(s0)
c0404f6c:	f9440513          	addi	a0,s0,-108
c0404f70:	fca42c23          	sw	a0,-40(s0)
c0404f74:	c0405537          	lui	a0,0xc0405
c0404f78:	55c50513          	addi	a0,a0,1372 # c040555c <ebss+0xfffe443c>
c0404f7c:	fca42e23          	sw	a0,-36(s0)
c0404f80:	fca42a23          	sw	a0,-44(s0)
c0404f84:	f9040513          	addi	a0,s0,-112
c0404f88:	fca42823          	sw	a0,-48(s0)
c0404f8c:	c0409537          	lui	a0,0xc0409
c0404f90:	13450513          	addi	a0,a0,308 # c0409134 <ebss+0xfffe8014>
c0404f94:	faa42c23          	sw	a0,-72(s0)
c0404f98:	c0409537          	lui	a0,0xc0409
c0404f9c:	15450593          	addi	a1,a0,340 # c0409154 <ebss+0xfffe8034>
c0404fa0:	fb840513          	addi	a0,s0,-72
c0404fa4:	00000097          	auipc	ra,0x0
c0404fa8:	9e8080e7          	jalr	-1560(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0404fac:	ffffc097          	auipc	ra,0xffffc
c0404fb0:	960080e7          	jalr	-1696(ra) # c040090c <abort>

c0404fb4 <_ZN4core5slice20slice_index_len_fail17hbd8c0819dbd42392E>:
c0404fb4:	fc010113          	addi	sp,sp,-64
c0404fb8:	02112e23          	sw	ra,60(sp)
c0404fbc:	02812c23          	sw	s0,56(sp)
c0404fc0:	04010413          	addi	s0,sp,64
c0404fc4:	fcb42623          	sw	a1,-52(s0)
c0404fc8:	fca42423          	sw	a0,-56(s0)
c0404fcc:	fe840513          	addi	a0,s0,-24
c0404fd0:	fea42023          	sw	a0,-32(s0)
c0404fd4:	fc042c23          	sw	zero,-40(s0)
c0404fd8:	00200513          	li	a0,2
c0404fdc:	fea42223          	sw	a0,-28(s0)
c0404fe0:	fca42a23          	sw	a0,-44(s0)
c0404fe4:	c0409537          	lui	a0,0xc0409
c0404fe8:	31850513          	addi	a0,a0,792 # c0409318 <ebss+0xfffe81f8>
c0404fec:	fca42823          	sw	a0,-48(s0)
c0404ff0:	fcc40513          	addi	a0,s0,-52
c0404ff4:	fea42823          	sw	a0,-16(s0)
c0404ff8:	c0405537          	lui	a0,0xc0405
c0404ffc:	55c50513          	addi	a0,a0,1372 # c040555c <ebss+0xfffe443c>
c0405000:	fea42a23          	sw	a0,-12(s0)
c0405004:	fea42623          	sw	a0,-20(s0)
c0405008:	fc840513          	addi	a0,s0,-56
c040500c:	fea42423          	sw	a0,-24(s0)
c0405010:	c0409537          	lui	a0,0xc0409
c0405014:	32850593          	addi	a1,a0,808 # c0409328 <ebss+0xfffe8208>
c0405018:	fd040513          	addi	a0,s0,-48
c040501c:	00000097          	auipc	ra,0x0
c0405020:	970080e7          	jalr	-1680(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c0405024:	ffffc097          	auipc	ra,0xffffc
c0405028:	8e8080e7          	jalr	-1816(ra) # c040090c <abort>

c040502c <_ZN4core5slice22slice_index_order_fail17h221760d75dba461fE>:
c040502c:	fc010113          	addi	sp,sp,-64
c0405030:	02112e23          	sw	ra,60(sp)
c0405034:	02812c23          	sw	s0,56(sp)
c0405038:	04010413          	addi	s0,sp,64
c040503c:	fcb42623          	sw	a1,-52(s0)
c0405040:	fca42423          	sw	a0,-56(s0)
c0405044:	fe840513          	addi	a0,s0,-24
c0405048:	fea42023          	sw	a0,-32(s0)
c040504c:	fc042c23          	sw	zero,-40(s0)
c0405050:	00200513          	li	a0,2
c0405054:	fea42223          	sw	a0,-28(s0)
c0405058:	fca42a23          	sw	a0,-44(s0)
c040505c:	c0409537          	lui	a0,0xc0409
c0405060:	35c50513          	addi	a0,a0,860 # c040935c <ebss+0xfffe823c>
c0405064:	fca42823          	sw	a0,-48(s0)
c0405068:	fcc40513          	addi	a0,s0,-52
c040506c:	fea42823          	sw	a0,-16(s0)
c0405070:	c0405537          	lui	a0,0xc0405
c0405074:	55c50513          	addi	a0,a0,1372 # c040555c <ebss+0xfffe443c>
c0405078:	fea42a23          	sw	a0,-12(s0)
c040507c:	fea42623          	sw	a0,-20(s0)
c0405080:	fc840513          	addi	a0,s0,-56
c0405084:	fea42423          	sw	a0,-24(s0)
c0405088:	c0409537          	lui	a0,0xc0409
c040508c:	36c50593          	addi	a1,a0,876 # c040936c <ebss+0xfffe824c>
c0405090:	fd040513          	addi	a0,s0,-48
c0405094:	00000097          	auipc	ra,0x0
c0405098:	8f8080e7          	jalr	-1800(ra) # c040498c <_ZN4core9panicking9panic_fmt17h080d5dc66a901db4E>
c040509c:	ffffc097          	auipc	ra,0xffffc
c04050a0:	870080e7          	jalr	-1936(ra) # c040090c <abort>

c04050a4 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE>:
c04050a4:	ff010113          	addi	sp,sp,-16
c04050a8:	00112623          	sw	ra,12(sp)
c04050ac:	00812423          	sw	s0,8(sp)
c04050b0:	01010413          	addi	s0,sp,16
c04050b4:	00b5d613          	srli	a2,a1,0xb
c04050b8:	00061c63          	bnez	a2,c04050d0 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0x2c>
c04050bc:	20000637          	lui	a2,0x20000
c04050c0:	ff860613          	addi	a2,a2,-8 # 1ffffff8 <XLENB+0x1ffffff4>
c04050c4:	0035d693          	srli	a3,a1,0x3
c04050c8:	00c6f633          	and	a2,a3,a2
c04050cc:	0840006f          	j	c0405150 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0xac>
c04050d0:	0105d613          	srli	a2,a1,0x10
c04050d4:	02061863          	bnez	a2,c0405104 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0x60>
c04050d8:	0065d613          	srli	a2,a1,0x6
c04050dc:	fe060613          	addi	a2,a2,-32
c04050e0:	3df00693          	li	a3,991
c04050e4:	0ac6ee63          	bltu	a3,a2,c04051a0 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0xfc>
c04050e8:	00c50633          	add	a2,a0,a2
c04050ec:	11864683          	lbu	a3,280(a2)
c04050f0:	10452603          	lw	a2,260(a0)
c04050f4:	0cc6f663          	bgeu	a3,a2,c04051c0 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0x11c>
c04050f8:	00369613          	slli	a2,a3,0x3
c04050fc:	10052503          	lw	a0,256(a0)
c0405100:	0500006f          	j	c0405150 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0xac>
c0405104:	00c5d613          	srli	a2,a1,0xc
c0405108:	ff060613          	addi	a2,a2,-16
c040510c:	10000693          	li	a3,256
c0405110:	0cd67663          	bgeu	a2,a3,c04051dc <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0x138>
c0405114:	00c50633          	add	a2,a0,a2
c0405118:	4f864603          	lbu	a2,1272(a2)
c040511c:	00661613          	slli	a2,a2,0x6
c0405120:	0065d693          	srli	a3,a1,0x6
c0405124:	03f6f693          	andi	a3,a3,63
c0405128:	00d666b3          	or	a3,a2,a3
c040512c:	10c52603          	lw	a2,268(a0)
c0405130:	0cc6f663          	bgeu	a3,a2,c04051fc <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0x158>
c0405134:	10852603          	lw	a2,264(a0)
c0405138:	00d60633          	add	a2,a2,a3
c040513c:	00064683          	lbu	a3,0(a2)
c0405140:	11452603          	lw	a2,276(a0)
c0405144:	0cc6fa63          	bgeu	a3,a2,c0405218 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0x174>
c0405148:	00369613          	slli	a2,a3,0x3
c040514c:	11052503          	lw	a0,272(a0)
c0405150:	00c50533          	add	a0,a0,a2
c0405154:	00100613          	li	a2,1
c0405158:	03f5f693          	andi	a3,a1,63
c040515c:	fe068693          	addi	a3,a3,-32 # 1bffe0 <XLENB+0x1bffdc>
c0405160:	0006c863          	bltz	a3,c0405170 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0xcc>
c0405164:	00d615b3          	sll	a1,a2,a3
c0405168:	00000613          	li	a2,0
c040516c:	00c0006f          	j	c0405178 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE+0xd4>
c0405170:	00b61633          	sll	a2,a2,a1
c0405174:	00000593          	li	a1,0
c0405178:	00052683          	lw	a3,0(a0)
c040517c:	00c6f633          	and	a2,a3,a2
c0405180:	00452503          	lw	a0,4(a0)
c0405184:	00b57533          	and	a0,a0,a1
c0405188:	00a66533          	or	a0,a2,a0
c040518c:	00a03533          	snez	a0,a0
c0405190:	00812403          	lw	s0,8(sp)
c0405194:	00c12083          	lw	ra,12(sp)
c0405198:	01010113          	addi	sp,sp,16
c040519c:	00008067          	ret
c04051a0:	c0409537          	lui	a0,0xc0409
c04051a4:	3fc50513          	addi	a0,a0,1020 # c04093fc <ebss+0xfffe82dc>
c04051a8:	00060593          	mv	a1,a2
c04051ac:	3e000613          	li	a2,992
c04051b0:	fffff097          	auipc	ra,0xfffff
c04051b4:	764080e7          	jalr	1892(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04051b8:	ffffb097          	auipc	ra,0xffffb
c04051bc:	754080e7          	jalr	1876(ra) # c040090c <abort>
c04051c0:	c0409537          	lui	a0,0xc0409
c04051c4:	40c50513          	addi	a0,a0,1036 # c040940c <ebss+0xfffe82ec>
c04051c8:	00068593          	mv	a1,a3
c04051cc:	fffff097          	auipc	ra,0xfffff
c04051d0:	748080e7          	jalr	1864(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04051d4:	ffffb097          	auipc	ra,0xffffb
c04051d8:	738080e7          	jalr	1848(ra) # c040090c <abort>
c04051dc:	c0409537          	lui	a0,0xc0409
c04051e0:	41c50513          	addi	a0,a0,1052 # c040941c <ebss+0xfffe82fc>
c04051e4:	00060593          	mv	a1,a2
c04051e8:	10000613          	li	a2,256
c04051ec:	fffff097          	auipc	ra,0xfffff
c04051f0:	728080e7          	jalr	1832(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04051f4:	ffffb097          	auipc	ra,0xffffb
c04051f8:	718080e7          	jalr	1816(ra) # c040090c <abort>
c04051fc:	c0409537          	lui	a0,0xc0409
c0405200:	42c50513          	addi	a0,a0,1068 # c040942c <ebss+0xfffe830c>
c0405204:	00068593          	mv	a1,a3
c0405208:	fffff097          	auipc	ra,0xfffff
c040520c:	70c080e7          	jalr	1804(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0405210:	ffffb097          	auipc	ra,0xffffb
c0405214:	6fc080e7          	jalr	1788(ra) # c040090c <abort>
c0405218:	c0409537          	lui	a0,0xc0409
c040521c:	43c50513          	addi	a0,a0,1084 # c040943c <ebss+0xfffe831c>
c0405220:	00068593          	mv	a1,a3
c0405224:	fffff097          	auipc	ra,0xfffff
c0405228:	6f0080e7          	jalr	1776(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c040522c:	ffffb097          	auipc	ra,0xffffb
c0405230:	6e0080e7          	jalr	1760(ra) # c040090c <abort>

c0405234 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418>:
c0405234:	ff010113          	addi	sp,sp,-16
c0405238:	00112623          	sw	ra,12(sp)
c040523c:	00812423          	sw	s0,8(sp)
c0405240:	01010413          	addi	s0,sp,16
c0405244:	06060863          	beqz	a2,c04052b4 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x80>
c0405248:	00161613          	slli	a2,a2,0x1
c040524c:	00c582b3          	add	t0,a1,a2
c0405250:	00010637          	lui	a2,0x10
c0405254:	f0060613          	addi	a2,a2,-256 # ff00 <XLENB+0xfefc>
c0405258:	00c57633          	and	a2,a0,a2
c040525c:	00865313          	srli	t1,a2,0x8
c0405260:	0ff57e93          	andi	t4,a0,255
c0405264:	00000393          	li	t2,0
c0405268:	0015c603          	lbu	a2,1(a1) # 110001 <XLENB+0x10fffd>
c040526c:	00c388b3          	add	a7,t2,a2
c0405270:	00258e13          	addi	t3,a1,2
c0405274:	0005c583          	lbu	a1,0(a1)
c0405278:	02659663          	bne	a1,t1,c04052a4 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x70>
c040527c:	0c78ee63          	bltu	a7,t2,c0405358 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x124>
c0405280:	0f176863          	bltu	a4,a7,c0405370 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x13c>
c0405284:	007685b3          	add	a1,a3,t2
c0405288:	02060063          	beqz	a2,c04052a8 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x74>
c040528c:	fff60613          	addi	a2,a2,-1
c0405290:	00158393          	addi	t2,a1,1
c0405294:	0005cf03          	lbu	t5,0(a1)
c0405298:	00038593          	mv	a1,t2
c040529c:	ffdf16e3          	bne	t5,t4,c0405288 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x54>
c04052a0:	0800006f          	j	c0405320 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xec>
c04052a4:	00b36863          	bltu	t1,a1,c04052b4 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x80>
c04052a8:	00088393          	mv	t2,a7
c04052ac:	000e0593          	mv	a1,t3
c04052b0:	fa5e1ce3          	bne	t3,t0,c0405268 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x34>
c04052b4:	06080a63          	beqz	a6,c0405328 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xf4>
c04052b8:	010785b3          	add	a1,a5,a6
c04052bc:	00010637          	lui	a2,0x10
c04052c0:	fff60613          	addi	a2,a2,-1 # ffff <XLENB+0xfffb>
c04052c4:	00c57633          	and	a2,a0,a2
c04052c8:	00100513          	li	a0,1
c04052cc:	00178693          	addi	a3,a5,1
c04052d0:	0007c703          	lbu	a4,0(a5)
c04052d4:	01871793          	slli	a5,a4,0x18
c04052d8:	4187d793          	srai	a5,a5,0x18
c04052dc:	0207c063          	bltz	a5,c04052fc <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xc8>
c04052e0:	00068793          	mv	a5,a3
c04052e4:	40e60633          	sub	a2,a2,a4
c04052e8:	04064263          	bltz	a2,c040532c <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xf8>
c04052ec:	00178693          	addi	a3,a5,1
c04052f0:	00154513          	xori	a0,a0,1
c04052f4:	fcb79ee3          	bne	a5,a1,c04052d0 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x9c>
c04052f8:	0340006f          	j	c040532c <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xf8>
c04052fc:	04b68263          	beq	a3,a1,c0405340 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0x10c>
c0405300:	07f7f713          	andi	a4,a5,127
c0405304:	00871713          	slli	a4,a4,0x8
c0405308:	0006c783          	lbu	a5,0(a3)
c040530c:	00f76733          	or	a4,a4,a5
c0405310:	00168793          	addi	a5,a3,1
c0405314:	40e60633          	sub	a2,a2,a4
c0405318:	fc065ae3          	bgez	a2,c04052ec <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xb8>
c040531c:	0100006f          	j	c040532c <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xf8>
c0405320:	00000513          	li	a0,0
c0405324:	0080006f          	j	c040532c <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418+0xf8>
c0405328:	00100513          	li	a0,1
c040532c:	00157513          	andi	a0,a0,1
c0405330:	00812403          	lw	s0,8(sp)
c0405334:	00c12083          	lw	ra,12(sp)
c0405338:	01010113          	addi	sp,sp,16
c040533c:	00008067          	ret
c0405340:	c0409537          	lui	a0,0xc0409
c0405344:	26450513          	addi	a0,a0,612 # c0409264 <ebss+0xfffe8144>
c0405348:	fffff097          	auipc	ra,0xfffff
c040534c:	554080e7          	jalr	1364(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0405350:	ffffb097          	auipc	ra,0xffffb
c0405354:	5bc080e7          	jalr	1468(ra) # c040090c <abort>
c0405358:	00038513          	mv	a0,t2
c040535c:	00088593          	mv	a1,a7
c0405360:	00000097          	auipc	ra,0x0
c0405364:	ccc080e7          	jalr	-820(ra) # c040502c <_ZN4core5slice22slice_index_order_fail17h221760d75dba461fE>
c0405368:	ffffb097          	auipc	ra,0xffffb
c040536c:	5a4080e7          	jalr	1444(ra) # c040090c <abort>
c0405370:	00088513          	mv	a0,a7
c0405374:	00070593          	mv	a1,a4
c0405378:	00000097          	auipc	ra,0x0
c040537c:	c3c080e7          	jalr	-964(ra) # c0404fb4 <_ZN4core5slice20slice_index_len_fail17hbd8c0819dbd42392E>
c0405380:	ffffb097          	auipc	ra,0xffffb
c0405384:	58c080e7          	jalr	1420(ra) # c040090c <abort>

c0405388 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418>:
c0405388:	fc010113          	addi	sp,sp,-64
c040538c:	02112e23          	sw	ra,60(sp)
c0405390:	02812c23          	sw	s0,56(sp)
c0405394:	02912a23          	sw	s1,52(sp)
c0405398:	03212823          	sw	s2,48(sp)
c040539c:	03312623          	sw	s3,44(sp)
c04053a0:	03412423          	sw	s4,40(sp)
c04053a4:	04010413          	addi	s0,sp,64
c04053a8:	00060813          	mv	a6,a2
c04053ac:	02700713          	li	a4,39
c04053b0:	c0409637          	lui	a2,0xc0409
c04053b4:	df462f03          	lw	t5,-524(a2) # c0408df4 <ebss+0xfffe7cd4>
c04053b8:	00455693          	srli	a3,a0,0x4
c04053bc:	27100793          	li	a5,625
c04053c0:	0af6e463          	bltu	a3,a5,c0405468 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418+0xe0>
c04053c4:	d1b716b7          	lui	a3,0xd1b71
c04053c8:	75968893          	addi	a7,a3,1881 # d1b71759 <ebss+0x11750639>
c04053cc:	000026b7          	lui	a3,0x2
c04053d0:	71068393          	addi	t2,a3,1808 # 2710 <XLENB+0x270c>
c04053d4:	000106b7          	lui	a3,0x10
c04053d8:	fff68e13          	addi	t3,a3,-1 # ffff <XLENB+0xfffb>
c04053dc:	51eb8737          	lui	a4,0x51eb8
c04053e0:	51f70e93          	addi	t4,a4,1311 # 51eb851f <XLENB+0x51eb851b>
c04053e4:	fc140293          	addi	t0,s0,-63
c04053e8:	06400313          	li	t1,100
c04053ec:	ffe68f93          	addi	t6,a3,-2
c04053f0:	05f5e6b7          	lui	a3,0x5f5e
c04053f4:	0ff68913          	addi	s2,a3,255 # 5f5e0ff <XLENB+0x5f5e0fb>
c04053f8:	00000693          	li	a3,0
c04053fc:	00050993          	mv	s3,a0
c0405400:	03153533          	mulhu	a0,a0,a7
c0405404:	00d55513          	srli	a0,a0,0xd
c0405408:	027507b3          	mul	a5,a0,t2
c040540c:	40f987b3          	sub	a5,s3,a5
c0405410:	01c7f4b3          	and	s1,a5,t3
c0405414:	03d4b4b3          	mulhu	s1,s1,t4
c0405418:	00d28733          	add	a4,t0,a3
c040541c:	0054d493          	srli	s1,s1,0x5
c0405420:	00149613          	slli	a2,s1,0x1
c0405424:	00cf0633          	add	a2,t5,a2
c0405428:	00064a03          	lbu	s4,0(a2)
c040542c:	00160603          	lb	a2,1(a2)
c0405430:	02c70223          	sb	a2,36(a4)
c0405434:	034701a3          	sb	s4,35(a4)
c0405438:	02648633          	mul	a2,s1,t1
c040543c:	40c78633          	sub	a2,a5,a2
c0405440:	00161613          	slli	a2,a2,0x1
c0405444:	01f67633          	and	a2,a2,t6
c0405448:	00cf0633          	add	a2,t5,a2
c040544c:	00064783          	lbu	a5,0(a2)
c0405450:	00160603          	lb	a2,1(a2)
c0405454:	02c70323          	sb	a2,38(a4)
c0405458:	02f702a3          	sb	a5,37(a4)
c040545c:	ffc68693          	addi	a3,a3,-4
c0405460:	f9396ee3          	bltu	s2,s3,c04053fc <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418+0x74>
c0405464:	02768713          	addi	a4,a3,39
c0405468:	06300693          	li	a3,99
c040546c:	08a6d463          	bge	a3,a0,c04054f4 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418+0x16c>
c0405470:	00010637          	lui	a2,0x10
c0405474:	fff60693          	addi	a3,a2,-1 # ffff <XLENB+0xfffb>
c0405478:	00d576b3          	and	a3,a0,a3
c040547c:	51eb87b7          	lui	a5,0x51eb8
c0405480:	51f78793          	addi	a5,a5,1311 # 51eb851f <XLENB+0x51eb851b>
c0405484:	02f6b6b3          	mulhu	a3,a3,a5
c0405488:	0056d693          	srli	a3,a3,0x5
c040548c:	06400793          	li	a5,100
c0405490:	02f687b3          	mul	a5,a3,a5
c0405494:	40f50533          	sub	a0,a0,a5
c0405498:	00151513          	slli	a0,a0,0x1
c040549c:	ffe60613          	addi	a2,a2,-2
c04054a0:	00c57533          	and	a0,a0,a2
c04054a4:	00af0533          	add	a0,t5,a0
c04054a8:	ffe70713          	addi	a4,a4,-2
c04054ac:	fc140613          	addi	a2,s0,-63
c04054b0:	00e60633          	add	a2,a2,a4
c04054b4:	00054783          	lbu	a5,0(a0)
c04054b8:	00150503          	lb	a0,1(a0)
c04054bc:	00a600a3          	sb	a0,1(a2)
c04054c0:	00f60023          	sb	a5,0(a2)
c04054c4:	00a00513          	li	a0,10
c04054c8:	02a6cc63          	blt	a3,a0,c0405500 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418+0x178>
c04054cc:	00169513          	slli	a0,a3,0x1
c04054d0:	00af0633          	add	a2,t5,a0
c04054d4:	ffe70513          	addi	a0,a4,-2
c04054d8:	fc140693          	addi	a3,s0,-63
c04054dc:	00a686b3          	add	a3,a3,a0
c04054e0:	00064703          	lbu	a4,0(a2)
c04054e4:	00160603          	lb	a2,1(a2)
c04054e8:	00c680a3          	sb	a2,1(a3)
c04054ec:	00e68023          	sb	a4,0(a3)
c04054f0:	0240006f          	j	c0405514 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418+0x18c>
c04054f4:	00050693          	mv	a3,a0
c04054f8:	00a00513          	li	a0,10
c04054fc:	fca6d8e3          	bge	a3,a0,c04054cc <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418+0x144>
c0405500:	fff70513          	addi	a0,a4,-1
c0405504:	fc140613          	addi	a2,s0,-63
c0405508:	00a60633          	add	a2,a2,a0
c040550c:	03068693          	addi	a3,a3,48
c0405510:	00d60023          	sb	a3,0(a2)
c0405514:	fc140613          	addi	a2,s0,-63
c0405518:	00a60733          	add	a4,a2,a0
c040551c:	02700613          	li	a2,39
c0405520:	40a607b3          	sub	a5,a2,a0
c0405524:	c040a537          	lui	a0,0xc040a
c0405528:	5a050613          	addi	a2,a0,1440 # c040a5a0 <ebss+0xfffe9480>
c040552c:	00080513          	mv	a0,a6
c0405530:	00000693          	li	a3,0
c0405534:	00000097          	auipc	ra,0x0
c0405538:	500080e7          	jalr	1280(ra) # c0405a34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E>
c040553c:	02812a03          	lw	s4,40(sp)
c0405540:	02c12983          	lw	s3,44(sp)
c0405544:	03012903          	lw	s2,48(sp)
c0405548:	03412483          	lw	s1,52(sp)
c040554c:	03812403          	lw	s0,56(sp)
c0405550:	03c12083          	lw	ra,60(sp)
c0405554:	04010113          	addi	sp,sp,64
c0405558:	00008067          	ret

c040555c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17hd4814eb15ee0a404E>:
c040555c:	ff010113          	addi	sp,sp,-16
c0405560:	00112623          	sw	ra,12(sp)
c0405564:	00812423          	sw	s0,8(sp)
c0405568:	01010413          	addi	s0,sp,16
c040556c:	00058613          	mv	a2,a1
c0405570:	00052503          	lw	a0,0(a0)
c0405574:	00100593          	li	a1,1
c0405578:	00812403          	lw	s0,8(sp)
c040557c:	00c12083          	lw	ra,12(sp)
c0405580:	01010113          	addi	sp,sp,16
c0405584:	00000317          	auipc	t1,0x0
c0405588:	e0430067          	jr	-508(t1) # c0405388 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418>

c040558c <_ZN4core3ptr18real_drop_in_place17h00fdec3b26c1c0cdE>:
c040558c:	ff010113          	addi	sp,sp,-16
c0405590:	00112623          	sw	ra,12(sp)
c0405594:	00812423          	sw	s0,8(sp)
c0405598:	01010413          	addi	s0,sp,16
c040559c:	00812403          	lw	s0,8(sp)
c04055a0:	00c12083          	lw	ra,12(sp)
c04055a4:	01010113          	addi	sp,sp,16
c04055a8:	00008067          	ret

c04055ac <_ZN4core3fmt10ArgumentV110show_usize17h989726eb527b2194E.llvm.1060104960292696442>:
c04055ac:	ff010113          	addi	sp,sp,-16
c04055b0:	00112623          	sw	ra,12(sp)
c04055b4:	00812423          	sw	s0,8(sp)
c04055b8:	01010413          	addi	s0,sp,16
c04055bc:	00058613          	mv	a2,a1
c04055c0:	00052503          	lw	a0,0(a0)
c04055c4:	00100593          	li	a1,1
c04055c8:	00812403          	lw	s0,8(sp)
c04055cc:	00c12083          	lw	ra,12(sp)
c04055d0:	01010113          	addi	sp,sp,16
c04055d4:	00000317          	auipc	t1,0x0
c04055d8:	db430067          	jr	-588(t1) # c0405388 <_ZN4core3fmt3num3imp7fmt_u3217h8e756e5d3b5c3bb6E.llvm.5375085799470840418>

c04055dc <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17ha546bf76777a4766E>:
c04055dc:	fe010113          	addi	sp,sp,-32
c04055e0:	00112e23          	sw	ra,28(sp)
c04055e4:	00812c23          	sw	s0,24(sp)
c04055e8:	02010413          	addi	s0,sp,32
c04055ec:	01c5a683          	lw	a3,28(a1)
c04055f0:	0185a583          	lw	a1,24(a1)
c04055f4:	01452603          	lw	a2,20(a0)
c04055f8:	fec42a23          	sw	a2,-12(s0)
c04055fc:	01052603          	lw	a2,16(a0)
c0405600:	fec42823          	sw	a2,-16(s0)
c0405604:	00c52603          	lw	a2,12(a0)
c0405608:	fec42623          	sw	a2,-20(s0)
c040560c:	00852603          	lw	a2,8(a0)
c0405610:	fec42423          	sw	a2,-24(s0)
c0405614:	00452603          	lw	a2,4(a0)
c0405618:	fec42223          	sw	a2,-28(s0)
c040561c:	00052503          	lw	a0,0(a0)
c0405620:	fea42023          	sw	a0,-32(s0)
c0405624:	fe040613          	addi	a2,s0,-32
c0405628:	00058513          	mv	a0,a1
c040562c:	00068593          	mv	a1,a3
c0405630:	00000097          	auipc	ra,0x0
c0405634:	018080e7          	jalr	24(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0405638:	01812403          	lw	s0,24(sp)
c040563c:	01c12083          	lw	ra,28(sp)
c0405640:	02010113          	addi	sp,sp,32
c0405644:	00008067          	ret

c0405648 <_ZN4core3fmt5write17haf1658a399614263E>:
c0405648:	f9010113          	addi	sp,sp,-112
c040564c:	06112623          	sw	ra,108(sp)
c0405650:	06812423          	sw	s0,104(sp)
c0405654:	06912223          	sw	s1,100(sp)
c0405658:	07212023          	sw	s2,96(sp)
c040565c:	05312e23          	sw	s3,92(sp)
c0405660:	05412c23          	sw	s4,88(sp)
c0405664:	05512a23          	sw	s5,84(sp)
c0405668:	05612823          	sw	s6,80(sp)
c040566c:	05712623          	sw	s7,76(sp)
c0405670:	05812423          	sw	s8,72(sp)
c0405674:	05912223          	sw	s9,68(sp)
c0405678:	05a12023          	sw	s10,64(sp)
c040567c:	03b12e23          	sw	s11,60(sp)
c0405680:	07010413          	addi	s0,sp,112
c0405684:	01062b83          	lw	s7,16(a2)
c0405688:	01462683          	lw	a3,20(a2)
c040568c:	00300713          	li	a4,3
c0405690:	fce40423          	sb	a4,-56(s0)
c0405694:	02000713          	li	a4,32
c0405698:	f8e42e23          	sw	a4,-100(s0)
c040569c:	fab42a23          	sw	a1,-76(s0)
c04056a0:	faa42823          	sw	a0,-80(s0)
c04056a4:	00369713          	slli	a4,a3,0x3
c04056a8:	00eb8733          	add	a4,s7,a4
c04056ac:	fae42e23          	sw	a4,-68(s0)
c04056b0:	fcd42223          	sw	a3,-60(s0)
c04056b4:	fd742023          	sw	s7,-64(s0)
c04056b8:	fb742c23          	sw	s7,-72(s0)
c04056bc:	f8042c23          	sw	zero,-104(s0)
c04056c0:	fa042423          	sw	zero,-88(s0)
c04056c4:	fa042023          	sw	zero,-96(s0)
c04056c8:	00862903          	lw	s2,8(a2)
c04056cc:	22090263          	beqz	s2,c04058f0 <_ZN4core3fmt5write17haf1658a399614263E+0x2a8>
c04056d0:	00c62683          	lw	a3,12(a2)
c04056d4:	02400713          	li	a4,36
c04056d8:	02e686b3          	mul	a3,a3,a4
c04056dc:	38e39737          	lui	a4,0x38e39
c04056e0:	e3970713          	addi	a4,a4,-455 # 38e38e39 <XLENB+0x38e38e35>
c04056e4:	02e6b6b3          	mulhu	a3,a3,a4
c04056e8:	0036d693          	srli	a3,a3,0x3
c04056ec:	00462983          	lw	s3,4(a2)
c04056f0:	00098b13          	mv	s6,s3
c04056f4:	00d9e463          	bltu	s3,a3,c04056fc <_ZN4core3fmt5write17haf1658a399614263E+0xb4>
c04056f8:	00068b13          	mv	s6,a3
c04056fc:	00062a03          	lw	s4,0(a2)
c0405700:	260b0c63          	beqz	s6,c0405978 <_ZN4core3fmt5write17haf1658a399614263E+0x330>
c0405704:	00c5a683          	lw	a3,12(a1)
c0405708:	004a2603          	lw	a2,4(s4)
c040570c:	000a2583          	lw	a1,0(s4)
c0405710:	000680e7          	jalr	a3
c0405714:	00100a93          	li	s5,1
c0405718:	28051a63          	bnez	a0,c04059ac <_ZN4core3fmt5write17haf1658a399614263E+0x364>
c040571c:	00100b93          	li	s7,1
c0405720:	00ca0c13          	addi	s8,s4,12
c0405724:	01090493          	addi	s1,s2,16
c0405728:	c0405537          	lui	a0,0xc0405
c040572c:	5ac50d13          	addi	s10,a0,1452 # c04055ac <ebss+0xfffe448c>
c0405730:	f9840913          	addi	s2,s0,-104
c0405734:	00300d93          	li	s11,3
c0405738:	00100c93          	li	s9,1
c040573c:	ff84a503          	lw	a0,-8(s1)
c0405740:	f8a42e23          	sw	a0,-100(s0)
c0405744:	01048503          	lb	a0,16(s1)
c0405748:	fca40423          	sb	a0,-56(s0)
c040574c:	ffc4a503          	lw	a0,-4(s1)
c0405750:	f8a42c23          	sw	a0,-104(s0)
c0405754:	0084a503          	lw	a0,8(s1)
c0405758:	06abc863          	blt	s7,a0,c04057c8 <_ZN4core3fmt5write17haf1658a399614263E+0x180>
c040575c:	00c4a583          	lw	a1,12(s1)
c0405760:	10051c63          	bnez	a0,c0405878 <_ZN4core3fmt5write17haf1658a399614263E+0x230>
c0405764:	00100513          	li	a0,1
c0405768:	fab42223          	sw	a1,-92(s0)
c040576c:	faa42023          	sw	a0,-96(s0)
c0405770:	0004a503          	lw	a0,0(s1)
c0405774:	08abd463          	bge	s7,a0,c04057fc <_ZN4core3fmt5write17haf1658a399614263E+0x1b4>
c0405778:	03b50063          	beq	a0,s11,c0405798 <_ZN4core3fmt5write17haf1658a399614263E+0x150>
c040577c:	fb842583          	lw	a1,-72(s0)
c0405780:	fbc42503          	lw	a0,-68(s0)
c0405784:	00a58a63          	beq	a1,a0,c0405798 <_ZN4core3fmt5write17haf1658a399614263E+0x150>
c0405788:	00858513          	addi	a0,a1,8
c040578c:	faa42c23          	sw	a0,-72(s0)
c0405790:	0045a503          	lw	a0,4(a1)
c0405794:	13a50e63          	beq	a0,s10,c04058d0 <_ZN4core3fmt5write17haf1658a399614263E+0x288>
c0405798:	00000513          	li	a0,0
c040579c:	fab42623          	sw	a1,-84(s0)
c04057a0:	faa42423          	sw	a0,-88(s0)
c04057a4:	ff04a503          	lw	a0,-16(s1)
c04057a8:	07751863          	bne	a0,s7,c0405818 <_ZN4core3fmt5write17haf1658a399614263E+0x1d0>
c04057ac:	ff44a583          	lw	a1,-12(s1)
c04057b0:	fc442603          	lw	a2,-60(s0)
c04057b4:	22c5fc63          	bgeu	a1,a2,c04059ec <_ZN4core3fmt5write17haf1658a399614263E+0x3a4>
c04057b8:	00359513          	slli	a0,a1,0x3
c04057bc:	fc042583          	lw	a1,-64(s0)
c04057c0:	00a58533          	add	a0,a1,a0
c04057c4:	0680006f          	j	c040582c <_ZN4core3fmt5write17haf1658a399614263E+0x1e4>
c04057c8:	03b50063          	beq	a0,s11,c04057e8 <_ZN4core3fmt5write17haf1658a399614263E+0x1a0>
c04057cc:	fb842583          	lw	a1,-72(s0)
c04057d0:	fbc42503          	lw	a0,-68(s0)
c04057d4:	00a58a63          	beq	a1,a0,c04057e8 <_ZN4core3fmt5write17haf1658a399614263E+0x1a0>
c04057d8:	00858513          	addi	a0,a1,8
c04057dc:	faa42c23          	sw	a0,-72(s0)
c04057e0:	0045a503          	lw	a0,4(a1)
c04057e4:	0ba50863          	beq	a0,s10,c0405894 <_ZN4core3fmt5write17haf1658a399614263E+0x24c>
c04057e8:	00000513          	li	a0,0
c04057ec:	fab42223          	sw	a1,-92(s0)
c04057f0:	faa42023          	sw	a0,-96(s0)
c04057f4:	0004a503          	lw	a0,0(s1)
c04057f8:	f8abc0e3          	blt	s7,a0,c0405778 <_ZN4core3fmt5write17haf1658a399614263E+0x130>
c04057fc:	0044a583          	lw	a1,4(s1)
c0405800:	0a051a63          	bnez	a0,c04058b4 <_ZN4core3fmt5write17haf1658a399614263E+0x26c>
c0405804:	00100513          	li	a0,1
c0405808:	fab42623          	sw	a1,-84(s0)
c040580c:	faa42423          	sw	a0,-88(s0)
c0405810:	ff04a503          	lw	a0,-16(s1)
c0405814:	f9750ce3          	beq	a0,s7,c04057ac <_ZN4core3fmt5write17haf1658a399614263E+0x164>
c0405818:	fb842503          	lw	a0,-72(s0)
c040581c:	fbc42583          	lw	a1,-68(s0)
c0405820:	1eb50263          	beq	a0,a1,c0405a04 <_ZN4core3fmt5write17haf1658a399614263E+0x3bc>
c0405824:	00850593          	addi	a1,a0,8
c0405828:	fab42c23          	sw	a1,-72(s0)
c040582c:	00450593          	addi	a1,a0,4
c0405830:	00052503          	lw	a0,0(a0)
c0405834:	0005a603          	lw	a2,0(a1)
c0405838:	00090593          	mv	a1,s2
c040583c:	000600e7          	jalr	a2
c0405840:	00100a93          	li	s5,1
c0405844:	16051463          	bnez	a0,c04059ac <_ZN4core3fmt5write17haf1658a399614263E+0x364>
c0405848:	136cfa63          	bgeu	s9,s6,c040597c <_ZN4core3fmt5write17haf1658a399614263E+0x334>
c040584c:	fb442503          	lw	a0,-76(s0)
c0405850:	00c52683          	lw	a3,12(a0)
c0405854:	000c2603          	lw	a2,0(s8)
c0405858:	ffcc2583          	lw	a1,-4(s8)
c040585c:	fb042503          	lw	a0,-80(s0)
c0405860:	000680e7          	jalr	a3
c0405864:	008c0c13          	addi	s8,s8,8
c0405868:	02448493          	addi	s1,s1,36
c040586c:	001c8c93          	addi	s9,s9,1
c0405870:	ec0506e3          	beqz	a0,c040573c <_ZN4core3fmt5write17haf1658a399614263E+0xf4>
c0405874:	1380006f          	j	c04059ac <_ZN4core3fmt5write17haf1658a399614263E+0x364>
c0405878:	fc442603          	lw	a2,-60(s0)
c040587c:	1ac5f063          	bgeu	a1,a2,c0405a1c <_ZN4core3fmt5write17haf1658a399614263E+0x3d4>
c0405880:	00359513          	slli	a0,a1,0x3
c0405884:	fc042583          	lw	a1,-64(s0)
c0405888:	00a585b3          	add	a1,a1,a0
c040588c:	0045a503          	lw	a0,4(a1)
c0405890:	f5a51ce3          	bne	a0,s10,c04057e8 <_ZN4core3fmt5write17haf1658a399614263E+0x1a0>
c0405894:	00100513          	li	a0,1
c0405898:	0005a583          	lw	a1,0(a1)
c040589c:	0005a583          	lw	a1,0(a1)
c04058a0:	fab42223          	sw	a1,-92(s0)
c04058a4:	faa42023          	sw	a0,-96(s0)
c04058a8:	0004a503          	lw	a0,0(s1)
c04058ac:	ecabc6e3          	blt	s7,a0,c0405778 <_ZN4core3fmt5write17haf1658a399614263E+0x130>
c04058b0:	f4dff06f          	j	c04057fc <_ZN4core3fmt5write17haf1658a399614263E+0x1b4>
c04058b4:	fc442603          	lw	a2,-60(s0)
c04058b8:	16c5f263          	bgeu	a1,a2,c0405a1c <_ZN4core3fmt5write17haf1658a399614263E+0x3d4>
c04058bc:	00359513          	slli	a0,a1,0x3
c04058c0:	fc042583          	lw	a1,-64(s0)
c04058c4:	00a585b3          	add	a1,a1,a0
c04058c8:	0045a503          	lw	a0,4(a1)
c04058cc:	eda516e3          	bne	a0,s10,c0405798 <_ZN4core3fmt5write17haf1658a399614263E+0x150>
c04058d0:	00100513          	li	a0,1
c04058d4:	0005a583          	lw	a1,0(a1)
c04058d8:	0005a583          	lw	a1,0(a1)
c04058dc:	fab42623          	sw	a1,-84(s0)
c04058e0:	faa42423          	sw	a0,-88(s0)
c04058e4:	ff04a503          	lw	a0,-16(s1)
c04058e8:	ed7502e3          	beq	a0,s7,c04057ac <_ZN4core3fmt5write17haf1658a399614263E+0x164>
c04058ec:	f2dff06f          	j	c0405818 <_ZN4core3fmt5write17haf1658a399614263E+0x1d0>
c04058f0:	00462983          	lw	s3,4(a2)
c04058f4:	00098b13          	mv	s6,s3
c04058f8:	00d9e463          	bltu	s3,a3,c0405900 <_ZN4core3fmt5write17haf1658a399614263E+0x2b8>
c04058fc:	00068b13          	mv	s6,a3
c0405900:	00062a03          	lw	s4,0(a2)
c0405904:	060b0a63          	beqz	s6,c0405978 <_ZN4core3fmt5write17haf1658a399614263E+0x330>
c0405908:	00c5a683          	lw	a3,12(a1)
c040590c:	004a2603          	lw	a2,4(s4)
c0405910:	000a2583          	lw	a1,0(s4)
c0405914:	000680e7          	jalr	a3
c0405918:	00100a93          	li	s5,1
c040591c:	08051863          	bnez	a0,c04059ac <_ZN4core3fmt5write17haf1658a399614263E+0x364>
c0405920:	00100a93          	li	s5,1
c0405924:	f9840913          	addi	s2,s0,-104
c0405928:	00000493          	li	s1,0
c040592c:	00100c93          	li	s9,1
c0405930:	009b85b3          	add	a1,s7,s1
c0405934:	0005a503          	lw	a0,0(a1)
c0405938:	0045a603          	lw	a2,4(a1)
c040593c:	00090593          	mv	a1,s2
c0405940:	000600e7          	jalr	a2
c0405944:	06051463          	bnez	a0,c04059ac <_ZN4core3fmt5write17haf1658a399614263E+0x364>
c0405948:	036cfa63          	bgeu	s9,s6,c040597c <_ZN4core3fmt5write17haf1658a399614263E+0x334>
c040594c:	009a0533          	add	a0,s4,s1
c0405950:	00c52603          	lw	a2,12(a0)
c0405954:	00852583          	lw	a1,8(a0)
c0405958:	fb442503          	lw	a0,-76(s0)
c040595c:	00c52683          	lw	a3,12(a0)
c0405960:	fb042503          	lw	a0,-80(s0)
c0405964:	000680e7          	jalr	a3
c0405968:	00848493          	addi	s1,s1,8
c040596c:	001c8c93          	addi	s9,s9,1
c0405970:	fc0500e3          	beqz	a0,c0405930 <_ZN4core3fmt5write17haf1658a399614263E+0x2e8>
c0405974:	0380006f          	j	c04059ac <_ZN4core3fmt5write17haf1658a399614263E+0x364>
c0405978:	00000c93          	li	s9,0
c040597c:	033cf663          	bgeu	s9,s3,c04059a8 <_ZN4core3fmt5write17haf1658a399614263E+0x360>
c0405980:	003c9513          	slli	a0,s9,0x3
c0405984:	00aa0533          	add	a0,s4,a0
c0405988:	00452603          	lw	a2,4(a0)
c040598c:	00052583          	lw	a1,0(a0)
c0405990:	fb442503          	lw	a0,-76(s0)
c0405994:	00c52683          	lw	a3,12(a0)
c0405998:	fb042503          	lw	a0,-80(s0)
c040599c:	000680e7          	jalr	a3
c04059a0:	00100a93          	li	s5,1
c04059a4:	00051463          	bnez	a0,c04059ac <_ZN4core3fmt5write17haf1658a399614263E+0x364>
c04059a8:	00000a93          	li	s5,0
c04059ac:	000a8513          	mv	a0,s5
c04059b0:	03c12d83          	lw	s11,60(sp)
c04059b4:	04012d03          	lw	s10,64(sp)
c04059b8:	04412c83          	lw	s9,68(sp)
c04059bc:	04812c03          	lw	s8,72(sp)
c04059c0:	04c12b83          	lw	s7,76(sp)
c04059c4:	05012b03          	lw	s6,80(sp)
c04059c8:	05412a83          	lw	s5,84(sp)
c04059cc:	05812a03          	lw	s4,88(sp)
c04059d0:	05c12983          	lw	s3,92(sp)
c04059d4:	06012903          	lw	s2,96(sp)
c04059d8:	06412483          	lw	s1,100(sp)
c04059dc:	06812403          	lw	s0,104(sp)
c04059e0:	06c12083          	lw	ra,108(sp)
c04059e4:	07010113          	addi	sp,sp,112
c04059e8:	00008067          	ret
c04059ec:	c040a537          	lui	a0,0xc040a
c04059f0:	6e050513          	addi	a0,a0,1760 # c040a6e0 <ebss+0xfffe95c0>
c04059f4:	fffff097          	auipc	ra,0xfffff
c04059f8:	f20080e7          	jalr	-224(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c04059fc:	ffffb097          	auipc	ra,0xffffb
c0405a00:	f10080e7          	jalr	-240(ra) # c040090c <abort>
c0405a04:	c040a537          	lui	a0,0xc040a
c0405a08:	63c50513          	addi	a0,a0,1596 # c040a63c <ebss+0xfffe951c>
c0405a0c:	fffff097          	auipc	ra,0xfffff
c0405a10:	e90080e7          	jalr	-368(ra) # c040489c <_ZN4core9panicking5panic17he05e73be7caa2827E>
c0405a14:	ffffb097          	auipc	ra,0xffffb
c0405a18:	ef8080e7          	jalr	-264(ra) # c040090c <abort>
c0405a1c:	c040a537          	lui	a0,0xc040a
c0405a20:	6f050513          	addi	a0,a0,1776 # c040a6f0 <ebss+0xfffe95d0>
c0405a24:	fffff097          	auipc	ra,0xfffff
c0405a28:	ef0080e7          	jalr	-272(ra) # c0404914 <_ZN4core9panicking18panic_bounds_check17h242541fad7caadf2E>
c0405a2c:	ffffb097          	auipc	ra,0xffffb
c0405a30:	ee0080e7          	jalr	-288(ra) # c040090c <abort>

c0405a34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E>:
c0405a34:	fd010113          	addi	sp,sp,-48
c0405a38:	02112623          	sw	ra,44(sp)
c0405a3c:	02812423          	sw	s0,40(sp)
c0405a40:	02912223          	sw	s1,36(sp)
c0405a44:	03212023          	sw	s2,32(sp)
c0405a48:	01312e23          	sw	s3,28(sp)
c0405a4c:	01412c23          	sw	s4,24(sp)
c0405a50:	01512a23          	sw	s5,20(sp)
c0405a54:	01612823          	sw	s6,16(sp)
c0405a58:	01712623          	sw	s7,12(sp)
c0405a5c:	01812423          	sw	s8,8(sp)
c0405a60:	01912223          	sw	s9,4(sp)
c0405a64:	01a12023          	sw	s10,0(sp)
c0405a68:	03010413          	addi	s0,sp,48
c0405a6c:	00078913          	mv	s2,a5
c0405a70:	00070993          	mv	s3,a4
c0405a74:	00068a13          	mv	s4,a3
c0405a78:	00060a93          	mv	s5,a2
c0405a7c:	00050d13          	mv	s10,a0
c0405a80:	04058c63          	beqz	a1,c0405ad8 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0xa4>
c0405a84:	000d2503          	lw	a0,0(s10)
c0405a88:	00157593          	andi	a1,a0,1
c0405a8c:	00110b37          	lui	s6,0x110
c0405a90:	00058463          	beqz	a1,c0405a98 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x64>
c0405a94:	02b00b13          	li	s6,43
c0405a98:	01258c33          	add	s8,a1,s2
c0405a9c:	00457593          	andi	a1,a0,4
c0405aa0:	04058663          	beqz	a1,c0405aec <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0xb8>
c0405aa4:	080a0a63          	beqz	s4,c0405b38 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x104>
c0405aa8:	000a0613          	mv	a2,s4
c0405aac:	00000593          	li	a1,0
c0405ab0:	000a8693          	mv	a3,s5
c0405ab4:	0006c703          	lbu	a4,0(a3)
c0405ab8:	0c077713          	andi	a4,a4,192
c0405abc:	08074713          	xori	a4,a4,128
c0405ac0:	00173713          	seqz	a4,a4
c0405ac4:	00e585b3          	add	a1,a1,a4
c0405ac8:	00168693          	addi	a3,a3,1
c0405acc:	fff60613          	addi	a2,a2,-1
c0405ad0:	fe0612e3          	bnez	a2,c0405ab4 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x80>
c0405ad4:	0680006f          	j	c0405b3c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x108>
c0405ad8:	02d00b13          	li	s6,45
c0405adc:	000d2503          	lw	a0,0(s10)
c0405ae0:	00190c13          	addi	s8,s2,1
c0405ae4:	00457593          	andi	a1,a0,4
c0405ae8:	fa059ee3          	bnez	a1,c0405aa4 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x70>
c0405aec:	00000a93          	li	s5,0
c0405af0:	008d2583          	lw	a1,8(s10)
c0405af4:	00100b93          	li	s7,1
c0405af8:	05759c63          	bne	a1,s7,c0405b50 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x11c>
c0405afc:	00cd2c83          	lw	s9,12(s10)
c0405b00:	059c7863          	bgeu	s8,s9,c0405b50 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x11c>
c0405b04:	00857513          	andi	a0,a0,8
c0405b08:	0a051e63          	bnez	a0,c0405bc4 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x190>
c0405b0c:	030d4603          	lbu	a2,48(s10)
c0405b10:	00100593          	li	a1,1
c0405b14:	00300693          	li	a3,3
c0405b18:	00100513          	li	a0,1
c0405b1c:	00d60463          	beq	a2,a3,c0405b24 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0xf0>
c0405b20:	00060513          	mv	a0,a2
c0405b24:	418c8cb3          	sub	s9,s9,s8
c0405b28:	0ea5ca63          	blt	a1,a0,c0405c1c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x1e8>
c0405b2c:	10051463          	bnez	a0,c0405c34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x200>
c0405b30:	00000513          	li	a0,0
c0405b34:	1080006f          	j	c0405c3c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x208>
c0405b38:	00000593          	li	a1,0
c0405b3c:	014c0633          	add	a2,s8,s4
c0405b40:	40b60c33          	sub	s8,a2,a1
c0405b44:	008d2583          	lw	a1,8(s10)
c0405b48:	00100b93          	li	s7,1
c0405b4c:	fb7588e3          	beq	a1,s7,c0405afc <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0xc8>
c0405b50:	000d0513          	mv	a0,s10
c0405b54:	000b0593          	mv	a1,s6
c0405b58:	000a8613          	mv	a2,s5
c0405b5c:	000a0693          	mv	a3,s4
c0405b60:	00000097          	auipc	ra,0x0
c0405b64:	214080e7          	jalr	532(ra) # c0405d74 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E>
c0405b68:	02051063          	bnez	a0,c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405b6c:	018d2503          	lw	a0,24(s10)
c0405b70:	01cd2583          	lw	a1,28(s10)
c0405b74:	00c5a683          	lw	a3,12(a1)
c0405b78:	00098593          	mv	a1,s3
c0405b7c:	00090613          	mv	a2,s2
c0405b80:	000680e7          	jalr	a3
c0405b84:	00050b93          	mv	s7,a0
c0405b88:	000b8513          	mv	a0,s7
c0405b8c:	00012d03          	lw	s10,0(sp)
c0405b90:	00412c83          	lw	s9,4(sp)
c0405b94:	00812c03          	lw	s8,8(sp)
c0405b98:	00c12b83          	lw	s7,12(sp)
c0405b9c:	01012b03          	lw	s6,16(sp)
c0405ba0:	01412a83          	lw	s5,20(sp)
c0405ba4:	01812a03          	lw	s4,24(sp)
c0405ba8:	01c12983          	lw	s3,28(sp)
c0405bac:	02012903          	lw	s2,32(sp)
c0405bb0:	02412483          	lw	s1,36(sp)
c0405bb4:	02812403          	lw	s0,40(sp)
c0405bb8:	02c12083          	lw	ra,44(sp)
c0405bbc:	03010113          	addi	sp,sp,48
c0405bc0:	00008067          	ret
c0405bc4:	03000513          	li	a0,48
c0405bc8:	00ad2223          	sw	a0,4(s10)
c0405bcc:	00100b93          	li	s7,1
c0405bd0:	037d0823          	sb	s7,48(s10)
c0405bd4:	000d0513          	mv	a0,s10
c0405bd8:	000b0593          	mv	a1,s6
c0405bdc:	000a8613          	mv	a2,s5
c0405be0:	000a0693          	mv	a3,s4
c0405be4:	00000097          	auipc	ra,0x0
c0405be8:	190080e7          	jalr	400(ra) # c0405d74 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E>
c0405bec:	f8051ee3          	bnez	a0,c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405bf0:	030d4603          	lbu	a2,48(s10)
c0405bf4:	00100593          	li	a1,1
c0405bf8:	00300693          	li	a3,3
c0405bfc:	00100513          	li	a0,1
c0405c00:	00d60463          	beq	a2,a3,c0405c08 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x1d4>
c0405c04:	00060513          	mv	a0,a2
c0405c08:	418c8ab3          	sub	s5,s9,s8
c0405c0c:	0ca5c263          	blt	a1,a0,c0405cd0 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x29c>
c0405c10:	0c051c63          	bnez	a0,c0405ce8 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x2b4>
c0405c14:	00000513          	li	a0,0
c0405c18:	0d80006f          	j	c0405cf0 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x2bc>
c0405c1c:	00200593          	li	a1,2
c0405c20:	00b51a63          	bne	a0,a1,c0405c34 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x200>
c0405c24:	001cd513          	srli	a0,s9,0x1
c0405c28:	001c8593          	addi	a1,s9,1
c0405c2c:	0015dc93          	srli	s9,a1,0x1
c0405c30:	00c0006f          	j	c0405c3c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x208>
c0405c34:	000c8513          	mv	a0,s9
c0405c38:	00000c93          	li	s9,0
c0405c3c:	00150493          	addi	s1,a0,1
c0405c40:	fff48493          	addi	s1,s1,-1
c0405c44:	02048063          	beqz	s1,c0405c64 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x230>
c0405c48:	004d2583          	lw	a1,4(s10)
c0405c4c:	018d2503          	lw	a0,24(s10)
c0405c50:	01cd2603          	lw	a2,28(s10)
c0405c54:	01062603          	lw	a2,16(a2)
c0405c58:	000600e7          	jalr	a2
c0405c5c:	fe0502e3          	beqz	a0,c0405c40 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x20c>
c0405c60:	0b40006f          	j	c0405d14 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x2e0>
c0405c64:	004d2c03          	lw	s8,4(s10)
c0405c68:	000d0513          	mv	a0,s10
c0405c6c:	000b0593          	mv	a1,s6
c0405c70:	000a8613          	mv	a2,s5
c0405c74:	000a0693          	mv	a3,s4
c0405c78:	00000097          	auipc	ra,0x0
c0405c7c:	0fc080e7          	jalr	252(ra) # c0405d74 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E>
c0405c80:	00100b93          	li	s7,1
c0405c84:	f00512e3          	bnez	a0,c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405c88:	018d2503          	lw	a0,24(s10)
c0405c8c:	01cd2583          	lw	a1,28(s10)
c0405c90:	00c5a683          	lw	a3,12(a1)
c0405c94:	00098593          	mv	a1,s3
c0405c98:	00090613          	mv	a2,s2
c0405c9c:	000680e7          	jalr	a3
c0405ca0:	ee0514e3          	bnez	a0,c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405ca4:	001c8493          	addi	s1,s9,1
c0405ca8:	01cd2983          	lw	s3,28(s10)
c0405cac:	018d2903          	lw	s2,24(s10)
c0405cb0:	fff48493          	addi	s1,s1,-1
c0405cb4:	0a048c63          	beqz	s1,c0405d6c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x338>
c0405cb8:	0109a603          	lw	a2,16(s3)
c0405cbc:	00090513          	mv	a0,s2
c0405cc0:	000c0593          	mv	a1,s8
c0405cc4:	000600e7          	jalr	a2
c0405cc8:	fe0504e3          	beqz	a0,c0405cb0 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x27c>
c0405ccc:	ebdff06f          	j	c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405cd0:	00200593          	li	a1,2
c0405cd4:	00b51a63          	bne	a0,a1,c0405ce8 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x2b4>
c0405cd8:	001ad513          	srli	a0,s5,0x1
c0405cdc:	001a8593          	addi	a1,s5,1 # 1001 <XLENB+0xffd>
c0405ce0:	0015da93          	srli	s5,a1,0x1
c0405ce4:	00c0006f          	j	c0405cf0 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x2bc>
c0405ce8:	000a8513          	mv	a0,s5
c0405cec:	00000a93          	li	s5,0
c0405cf0:	00150493          	addi	s1,a0,1
c0405cf4:	fff48493          	addi	s1,s1,-1
c0405cf8:	02048263          	beqz	s1,c0405d1c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x2e8>
c0405cfc:	004d2583          	lw	a1,4(s10)
c0405d00:	018d2503          	lw	a0,24(s10)
c0405d04:	01cd2603          	lw	a2,28(s10)
c0405d08:	01062603          	lw	a2,16(a2)
c0405d0c:	000600e7          	jalr	a2
c0405d10:	fe0502e3          	beqz	a0,c0405cf4 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x2c0>
c0405d14:	00100b93          	li	s7,1
c0405d18:	e71ff06f          	j	c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405d1c:	004d2a03          	lw	s4,4(s10)
c0405d20:	018d2503          	lw	a0,24(s10)
c0405d24:	01cd2583          	lw	a1,28(s10)
c0405d28:	00c5a683          	lw	a3,12(a1)
c0405d2c:	00098593          	mv	a1,s3
c0405d30:	00090613          	mv	a2,s2
c0405d34:	000680e7          	jalr	a3
c0405d38:	00100b93          	li	s7,1
c0405d3c:	e40516e3          	bnez	a0,c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405d40:	001a8493          	addi	s1,s5,1
c0405d44:	01cd2983          	lw	s3,28(s10)
c0405d48:	018d2903          	lw	s2,24(s10)
c0405d4c:	fff48493          	addi	s1,s1,-1
c0405d50:	00048e63          	beqz	s1,c0405d6c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x338>
c0405d54:	0109a603          	lw	a2,16(s3)
c0405d58:	00090513          	mv	a0,s2
c0405d5c:	000a0593          	mv	a1,s4
c0405d60:	000600e7          	jalr	a2
c0405d64:	fe0504e3          	beqz	a0,c0405d4c <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x318>
c0405d68:	e21ff06f          	j	c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>
c0405d6c:	00000b93          	li	s7,0
c0405d70:	e19ff06f          	j	c0405b88 <_ZN4core3fmt9Formatter12pad_integral17h48081e4d3295ee91E+0x154>

c0405d74 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E>:
c0405d74:	fe010113          	addi	sp,sp,-32
c0405d78:	00112e23          	sw	ra,28(sp)
c0405d7c:	00812c23          	sw	s0,24(sp)
c0405d80:	00912a23          	sw	s1,20(sp)
c0405d84:	01212823          	sw	s2,16(sp)
c0405d88:	01312623          	sw	s3,12(sp)
c0405d8c:	02010413          	addi	s0,sp,32
c0405d90:	00068913          	mv	s2,a3
c0405d94:	00060993          	mv	s3,a2
c0405d98:	00050493          	mv	s1,a0
c0405d9c:	00110537          	lui	a0,0x110
c0405da0:	02a58063          	beq	a1,a0,c0405dc0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E+0x4c>
c0405da4:	0184a503          	lw	a0,24(s1)
c0405da8:	01c4a603          	lw	a2,28(s1)
c0405dac:	01062603          	lw	a2,16(a2)
c0405db0:	000600e7          	jalr	a2
c0405db4:	00050593          	mv	a1,a0
c0405db8:	00100513          	li	a0,1
c0405dbc:	02059463          	bnez	a1,c0405de4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E+0x70>
c0405dc0:	02098063          	beqz	s3,c0405de0 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E+0x6c>
c0405dc4:	0184a503          	lw	a0,24(s1)
c0405dc8:	01c4a583          	lw	a1,28(s1)
c0405dcc:	00c5a683          	lw	a3,12(a1)
c0405dd0:	00098593          	mv	a1,s3
c0405dd4:	00090613          	mv	a2,s2
c0405dd8:	000680e7          	jalr	a3
c0405ddc:	0080006f          	j	c0405de4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h1cfa210e5d858494E+0x70>
c0405de0:	00000513          	li	a0,0
c0405de4:	00c12983          	lw	s3,12(sp)
c0405de8:	01012903          	lw	s2,16(sp)
c0405dec:	01412483          	lw	s1,20(sp)
c0405df0:	01812403          	lw	s0,24(sp)
c0405df4:	01c12083          	lw	ra,28(sp)
c0405df8:	02010113          	addi	sp,sp,32
c0405dfc:	00008067          	ret

c0405e00 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E>:
c0405e00:	fe010113          	addi	sp,sp,-32
c0405e04:	00112e23          	sw	ra,28(sp)
c0405e08:	00812c23          	sw	s0,24(sp)
c0405e0c:	00912a23          	sw	s1,20(sp)
c0405e10:	01212823          	sw	s2,16(sp)
c0405e14:	01312623          	sw	s3,12(sp)
c0405e18:	01412423          	sw	s4,8(sp)
c0405e1c:	01512223          	sw	s5,4(sp)
c0405e20:	01612023          	sw	s6,0(sp)
c0405e24:	02010413          	addi	s0,sp,32
c0405e28:	00060993          	mv	s3,a2
c0405e2c:	00058913          	mv	s2,a1
c0405e30:	00050b13          	mv	s6,a0
c0405e34:	01052503          	lw	a0,16(a0) # 110010 <XLENB+0x11000c>
c0405e38:	008b2383          	lw	t2,8(s6) # 110008 <XLENB+0x110004>
c0405e3c:	00100593          	li	a1,1
c0405e40:	00b39663          	bne	t2,a1,c0405e4c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x4c>
c0405e44:	00b50663          	beq	a0,a1,c0405e50 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x50>
c0405e48:	0540006f          	j	c0405e9c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x9c>
c0405e4c:	2eb51663          	bne	a0,a1,c0406138 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x338>
c0405e50:	04098063          	beqz	s3,c0405e90 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x90>
c0405e54:	013904b3          	add	s1,s2,s3
c0405e58:	014b2603          	lw	a2,20(s6)
c0405e5c:	00190513          	addi	a0,s2,1
c0405e60:	00090583          	lb	a1,0(s2)
c0405e64:	fff00693          	li	a3,-1
c0405e68:	22b6dc63          	bge	a3,a1,c04060a0 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x2a0>
c0405e6c:	26060863          	beqz	a2,c04060dc <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x2dc>
c0405e70:	412506b3          	sub	a3,a0,s2
c0405e74:	fff00e13          	li	t3,-1
c0405e78:	0df00813          	li	a6,223
c0405e7c:	0f000893          	li	a7,240
c0405e80:	001c02b7          	lui	t0,0x1c0
c0405e84:	00110337          	lui	t1,0x110
c0405e88:	0ea49e63          	bne	s1,a0,c0405f84 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x184>
c0405e8c:	2a40006f          	j	c0406130 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x330>
c0405e90:	00000993          	li	s3,0
c0405e94:	00100513          	li	a0,1
c0405e98:	2aa39063          	bne	t2,a0,c0406138 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x338>
c0405e9c:	08098e63          	beqz	s3,c0405f38 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x138>
c0405ea0:	00098593          	mv	a1,s3
c0405ea4:	00000513          	li	a0,0
c0405ea8:	00090613          	mv	a2,s2
c0405eac:	00064683          	lbu	a3,0(a2)
c0405eb0:	0c06f693          	andi	a3,a3,192
c0405eb4:	0806c693          	xori	a3,a3,128
c0405eb8:	0016b693          	seqz	a3,a3
c0405ebc:	00d50533          	add	a0,a0,a3
c0405ec0:	00160613          	addi	a2,a2,1
c0405ec4:	fff58593          	addi	a1,a1,-1
c0405ec8:	fe0592e3          	bnez	a1,c0405eac <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0xac>
c0405ecc:	40a985b3          	sub	a1,s3,a0
c0405ed0:	00cb2503          	lw	a0,12(s6)
c0405ed4:	26a5f263          	bgeu	a1,a0,c0406138 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x338>
c0405ed8:	22098863          	beqz	s3,c0406108 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x308>
c0405edc:	00098613          	mv	a2,s3
c0405ee0:	00000593          	li	a1,0
c0405ee4:	00090693          	mv	a3,s2
c0405ee8:	0006c703          	lbu	a4,0(a3)
c0405eec:	0c077713          	andi	a4,a4,192
c0405ef0:	08074713          	xori	a4,a4,128
c0405ef4:	00173713          	seqz	a4,a4
c0405ef8:	00e585b3          	add	a1,a1,a4
c0405efc:	00168693          	addi	a3,a3,1
c0405f00:	fff60613          	addi	a2,a2,-1
c0405f04:	fe0612e3          	bnez	a2,c0405ee8 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0xe8>
c0405f08:	030b4683          	lbu	a3,48(s6)
c0405f0c:	00300713          	li	a4,3
c0405f10:	00000613          	li	a2,0
c0405f14:	00e68463          	beq	a3,a4,c0405f1c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x11c>
c0405f18:	00068613          	mv	a2,a3
c0405f1c:	413585b3          	sub	a1,a1,s3
c0405f20:	00a58ab3          	add	s5,a1,a0
c0405f24:	00100513          	li	a0,1
c0405f28:	0cc54e63          	blt	a0,a2,c0406004 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x204>
c0405f2c:	0e061863          	bnez	a2,c040601c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x21c>
c0405f30:	00000513          	li	a0,0
c0405f34:	0f00006f          	j	c0406024 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x224>
c0405f38:	00000513          	li	a0,0
c0405f3c:	40a985b3          	sub	a1,s3,a0
c0405f40:	00cb2503          	lw	a0,12(s6)
c0405f44:	f8a5eae3          	bltu	a1,a0,c0405ed8 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0xd8>
c0405f48:	1f00006f          	j	c0406138 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x338>
c0405f4c:	00158513          	addi	a0,a1,1
c0405f50:	0005c583          	lbu	a1,0(a1)
c0405f54:	03f5ff13          	andi	t5,a1,63
c0405f58:	012f9793          	slli	a5,t6,0x12
c0405f5c:	0057f7b3          	and	a5,a5,t0
c0405f60:	006e9593          	slli	a1,t4,0x6
c0405f64:	00f5e5b3          	or	a1,a1,a5
c0405f68:	01e5e5b3          	or	a1,a1,t5
c0405f6c:	1c658263          	beq	a1,t1,c0406130 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x330>
c0405f70:	fff60613          	addi	a2,a2,-1
c0405f74:	40d705b3          	sub	a1,a4,a3
c0405f78:	00a586b3          	add	a3,a1,a0
c0405f7c:	16060263          	beqz	a2,c04060e0 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x2e0>
c0405f80:	1aa48863          	beq	s1,a0,c0406130 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x330>
c0405f84:	00068713          	mv	a4,a3
c0405f88:	00050693          	mv	a3,a0
c0405f8c:	00150513          	addi	a0,a0,1
c0405f90:	00068583          	lb	a1,0(a3)
c0405f94:	fcbe4ee3          	blt	t3,a1,c0405f70 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x170>
c0405f98:	0ff5f793          	andi	a5,a1,255
c0405f9c:	04950463          	beq	a0,s1,c0405fe4 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x1e4>
c0405fa0:	00268513          	addi	a0,a3,2
c0405fa4:	0016c583          	lbu	a1,1(a3)
c0405fa8:	03f5fe93          	andi	t4,a1,63
c0405fac:	00050593          	mv	a1,a0
c0405fb0:	fcf870e3          	bgeu	a6,a5,c0405f70 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x170>
c0405fb4:	04958063          	beq	a1,s1,c0405ff4 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x1f4>
c0405fb8:	00158513          	addi	a0,a1,1
c0405fbc:	0005c583          	lbu	a1,0(a1)
c0405fc0:	03f5ff13          	andi	t5,a1,63
c0405fc4:	00050593          	mv	a1,a0
c0405fc8:	fb17e4e3          	bltu	a5,a7,c0405f70 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x170>
c0405fcc:	01f7ff93          	andi	t6,a5,31
c0405fd0:	006e9793          	slli	a5,t4,0x6
c0405fd4:	00ff6eb3          	or	t4,t5,a5
c0405fd8:	f6959ae3          	bne	a1,s1,c0405f4c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x14c>
c0405fdc:	00000f13          	li	t5,0
c0405fe0:	f79ff06f          	j	c0405f58 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x158>
c0405fe4:	00048593          	mv	a1,s1
c0405fe8:	00000e93          	li	t4,0
c0405fec:	f8f872e3          	bgeu	a6,a5,c0405f70 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x170>
c0405ff0:	fc5ff06f          	j	c0405fb4 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x1b4>
c0405ff4:	00048593          	mv	a1,s1
c0405ff8:	00000f13          	li	t5,0
c0405ffc:	f717eae3          	bltu	a5,a7,c0405f70 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x170>
c0406000:	fcdff06f          	j	c0405fcc <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x1cc>
c0406004:	00200513          	li	a0,2
c0406008:	00a61a63          	bne	a2,a0,c040601c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x21c>
c040600c:	001ad513          	srli	a0,s5,0x1
c0406010:	001a8593          	addi	a1,s5,1
c0406014:	0015da93          	srli	s5,a1,0x1
c0406018:	00c0006f          	j	c0406024 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x224>
c040601c:	000a8513          	mv	a0,s5
c0406020:	00000a93          	li	s5,0
c0406024:	00150493          	addi	s1,a0,1
c0406028:	fff48493          	addi	s1,s1,-1
c040602c:	02048263          	beqz	s1,c0406050 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x250>
c0406030:	004b2583          	lw	a1,4(s6)
c0406034:	018b2503          	lw	a0,24(s6)
c0406038:	01cb2603          	lw	a2,28(s6)
c040603c:	01062603          	lw	a2,16(a2)
c0406040:	000600e7          	jalr	a2
c0406044:	fe0502e3          	beqz	a0,c0406028 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x228>
c0406048:	00100913          	li	s2,1
c040604c:	1080006f          	j	c0406154 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x354>
c0406050:	004b2a03          	lw	s4,4(s6)
c0406054:	018b2503          	lw	a0,24(s6)
c0406058:	01cb2583          	lw	a1,28(s6)
c040605c:	00c5a683          	lw	a3,12(a1)
c0406060:	00090593          	mv	a1,s2
c0406064:	00098613          	mv	a2,s3
c0406068:	000680e7          	jalr	a3
c040606c:	00100913          	li	s2,1
c0406070:	0e051263          	bnez	a0,c0406154 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x354>
c0406074:	001a8493          	addi	s1,s5,1
c0406078:	01cb2a83          	lw	s5,28(s6)
c040607c:	018b2983          	lw	s3,24(s6)
c0406080:	fff48493          	addi	s1,s1,-1
c0406084:	10048c63          	beqz	s1,c040619c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x39c>
c0406088:	010aa603          	lw	a2,16(s5)
c040608c:	00098513          	mv	a0,s3
c0406090:	000a0593          	mv	a1,s4
c0406094:	000600e7          	jalr	a2
c0406098:	fe0504e3          	beqz	a0,c0406080 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x280>
c040609c:	0b80006f          	j	c0406154 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x354>
c04060a0:	0ff5f693          	andi	a3,a1,255
c04060a4:	00100593          	li	a1,1
c04060a8:	0cb99c63          	bne	s3,a1,c0406180 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x380>
c04060ac:	00048593          	mv	a1,s1
c04060b0:	00000713          	li	a4,0
c04060b4:	0df00793          	li	a5,223
c04060b8:	dad7fae3          	bgeu	a5,a3,c0405e6c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x6c>
c04060bc:	0e958463          	beq	a1,s1,c04061a4 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x3a4>
c04060c0:	00158513          	addi	a0,a1,1
c04060c4:	0005c583          	lbu	a1,0(a1)
c04060c8:	03f5f813          	andi	a6,a1,63
c04060cc:	00050593          	mv	a1,a0
c04060d0:	0f000793          	li	a5,240
c04060d4:	0ef6f063          	bgeu	a3,a5,c04061b4 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x3b4>
c04060d8:	d95ff06f          	j	c0405e6c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x6c>
c04060dc:	00000713          	li	a4,0
c04060e0:	00070e63          	beqz	a4,c04060fc <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x2fc>
c04060e4:	01370c63          	beq	a4,s3,c04060fc <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x2fc>
c04060e8:	03377c63          	bgeu	a4,s3,c0406120 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x320>
c04060ec:	00e90533          	add	a0,s2,a4
c04060f0:	00050503          	lb	a0,0(a0)
c04060f4:	fc000593          	li	a1,-64
c04060f8:	02b54463          	blt	a0,a1,c0406120 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x320>
c04060fc:	00090513          	mv	a0,s2
c0406100:	02050863          	beqz	a0,c0406130 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x330>
c0406104:	0240006f          	j	c0406128 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x328>
c0406108:	00000593          	li	a1,0
c040610c:	030b4683          	lbu	a3,48(s6)
c0406110:	00300713          	li	a4,3
c0406114:	00000613          	li	a2,0
c0406118:	e0e690e3          	bne	a3,a4,c0405f18 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x118>
c040611c:	e01ff06f          	j	c0405f1c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x11c>
c0406120:	00000513          	li	a0,0
c0406124:	00050663          	beqz	a0,c0406130 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x330>
c0406128:	00070993          	mv	s3,a4
c040612c:	00050913          	mv	s2,a0
c0406130:	00100513          	li	a0,1
c0406134:	d6a384e3          	beq	t2,a0,c0405e9c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x9c>
c0406138:	018b2503          	lw	a0,24(s6)
c040613c:	01cb2583          	lw	a1,28(s6)
c0406140:	00c5a683          	lw	a3,12(a1)
c0406144:	00090593          	mv	a1,s2
c0406148:	00098613          	mv	a2,s3
c040614c:	000680e7          	jalr	a3
c0406150:	00050913          	mv	s2,a0
c0406154:	00090513          	mv	a0,s2
c0406158:	00012b03          	lw	s6,0(sp)
c040615c:	00412a83          	lw	s5,4(sp)
c0406160:	00812a03          	lw	s4,8(sp)
c0406164:	00c12983          	lw	s3,12(sp)
c0406168:	01012903          	lw	s2,16(sp)
c040616c:	01412483          	lw	s1,20(sp)
c0406170:	01812403          	lw	s0,24(sp)
c0406174:	01c12083          	lw	ra,28(sp)
c0406178:	02010113          	addi	sp,sp,32
c040617c:	00008067          	ret
c0406180:	00290513          	addi	a0,s2,2
c0406184:	00194583          	lbu	a1,1(s2)
c0406188:	03f5f713          	andi	a4,a1,63
c040618c:	00050593          	mv	a1,a0
c0406190:	0df00793          	li	a5,223
c0406194:	f2d7e4e3          	bltu	a5,a3,c04060bc <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x2bc>
c0406198:	cd5ff06f          	j	c0405e6c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x6c>
c040619c:	00000913          	li	s2,0
c04061a0:	fb5ff06f          	j	c0406154 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x354>
c04061a4:	00048593          	mv	a1,s1
c04061a8:	00000813          	li	a6,0
c04061ac:	0f000793          	li	a5,240
c04061b0:	caf6eee3          	bltu	a3,a5,c0405e6c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x6c>
c04061b4:	01f6f693          	andi	a3,a3,31
c04061b8:	00671713          	slli	a4,a4,0x6
c04061bc:	00e86733          	or	a4,a6,a4
c04061c0:	00958a63          	beq	a1,s1,c04061d4 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x3d4>
c04061c4:	00158513          	addi	a0,a1,1
c04061c8:	0005c583          	lbu	a1,0(a1)
c04061cc:	03f5f593          	andi	a1,a1,63
c04061d0:	0080006f          	j	c04061d8 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x3d8>
c04061d4:	00000593          	li	a1,0
c04061d8:	01269693          	slli	a3,a3,0x12
c04061dc:	001c07b7          	lui	a5,0x1c0
c04061e0:	00f6f6b3          	and	a3,a3,a5
c04061e4:	00671713          	slli	a4,a4,0x6
c04061e8:	00d766b3          	or	a3,a4,a3
c04061ec:	00b6e5b3          	or	a1,a3,a1
c04061f0:	001106b7          	lui	a3,0x110
c04061f4:	f2d58ee3          	beq	a1,a3,c0406130 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x330>
c04061f8:	c75ff06f          	j	c0405e6c <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E+0x6c>

c04061fc <_ZN4core3fmt9Formatter15debug_lower_hex17ha451788feee8d937E>:
c04061fc:	ff010113          	addi	sp,sp,-16
c0406200:	00112623          	sw	ra,12(sp)
c0406204:	00812423          	sw	s0,8(sp)
c0406208:	01010413          	addi	s0,sp,16
c040620c:	00054503          	lbu	a0,0(a0)
c0406210:	01057513          	andi	a0,a0,16
c0406214:	00455513          	srli	a0,a0,0x4
c0406218:	00812403          	lw	s0,8(sp)
c040621c:	00c12083          	lw	ra,12(sp)
c0406220:	01010113          	addi	sp,sp,16
c0406224:	00008067          	ret

c0406228 <_ZN4core3fmt9Formatter15debug_upper_hex17h225bea2574808256E>:
c0406228:	ff010113          	addi	sp,sp,-16
c040622c:	00112623          	sw	ra,12(sp)
c0406230:	00812423          	sw	s0,8(sp)
c0406234:	01010413          	addi	s0,sp,16
c0406238:	00054503          	lbu	a0,0(a0)
c040623c:	02057513          	andi	a0,a0,32
c0406240:	00555513          	srli	a0,a0,0x5
c0406244:	00812403          	lw	s0,8(sp)
c0406248:	00c12083          	lw	ra,12(sp)
c040624c:	01010113          	addi	sp,sp,16
c0406250:	00008067          	ret

c0406254 <_ZN4core3fmt9Formatter12debug_struct17had6302012c33b047E>:
c0406254:	ff010113          	addi	sp,sp,-16
c0406258:	00112623          	sw	ra,12(sp)
c040625c:	00812423          	sw	s0,8(sp)
c0406260:	00912223          	sw	s1,4(sp)
c0406264:	01212023          	sw	s2,0(sp)
c0406268:	01010413          	addi	s0,sp,16
c040626c:	00058913          	mv	s2,a1
c0406270:	00050493          	mv	s1,a0
c0406274:	01c5a503          	lw	a0,28(a1)
c0406278:	00c52703          	lw	a4,12(a0)
c040627c:	0185a503          	lw	a0,24(a1)
c0406280:	00060593          	mv	a1,a2
c0406284:	00068613          	mv	a2,a3
c0406288:	000700e7          	jalr	a4
c040628c:	000482a3          	sb	zero,5(s1)
c0406290:	00a48223          	sb	a0,4(s1)
c0406294:	0124a023          	sw	s2,0(s1)
c0406298:	00012903          	lw	s2,0(sp)
c040629c:	00412483          	lw	s1,4(sp)
c04062a0:	00812403          	lw	s0,8(sp)
c04062a4:	00c12083          	lw	ra,12(sp)
c04062a8:	01010113          	addi	sp,sp,16
c04062ac:	00008067          	ret

c04062b0 <_ZN4core3fmt9Formatter11debug_tuple17h887fcebb95017d1dE>:
c04062b0:	fe010113          	addi	sp,sp,-32
c04062b4:	00112e23          	sw	ra,28(sp)
c04062b8:	00812c23          	sw	s0,24(sp)
c04062bc:	00912a23          	sw	s1,20(sp)
c04062c0:	01212823          	sw	s2,16(sp)
c04062c4:	01312623          	sw	s3,12(sp)
c04062c8:	02010413          	addi	s0,sp,32
c04062cc:	00068913          	mv	s2,a3
c04062d0:	00058993          	mv	s3,a1
c04062d4:	00050493          	mv	s1,a0
c04062d8:	01c5a503          	lw	a0,28(a1)
c04062dc:	00c52683          	lw	a3,12(a0)
c04062e0:	0185a503          	lw	a0,24(a1)
c04062e4:	00060593          	mv	a1,a2
c04062e8:	00090613          	mv	a2,s2
c04062ec:	000680e7          	jalr	a3 # 110000 <XLENB+0x10fffc>
c04062f0:	00a48423          	sb	a0,8(s1)
c04062f4:	0134a023          	sw	s3,0(s1)
c04062f8:	00193513          	seqz	a0,s2
c04062fc:	00a484a3          	sb	a0,9(s1)
c0406300:	0004a223          	sw	zero,4(s1)
c0406304:	00c12983          	lw	s3,12(sp)
c0406308:	01012903          	lw	s2,16(sp)
c040630c:	01412483          	lw	s1,20(sp)
c0406310:	01812403          	lw	s0,24(sp)
c0406314:	01c12083          	lw	ra,28(sp)
c0406318:	02010113          	addi	sp,sp,32
c040631c:	00008067          	ret

c0406320 <_ZN4core3fmt9Formatter10debug_list17h71e3f6bad37ee980E>:
c0406320:	ff010113          	addi	sp,sp,-16
c0406324:	00112623          	sw	ra,12(sp)
c0406328:	00812423          	sw	s0,8(sp)
c040632c:	00912223          	sw	s1,4(sp)
c0406330:	01212023          	sw	s2,0(sp)
c0406334:	01010413          	addi	s0,sp,16
c0406338:	00058913          	mv	s2,a1
c040633c:	00050493          	mv	s1,a0
c0406340:	01c5a503          	lw	a0,28(a1)
c0406344:	00c52683          	lw	a3,12(a0)
c0406348:	0185a503          	lw	a0,24(a1)
c040634c:	c040a5b7          	lui	a1,0xc040a
c0406350:	71a58593          	addi	a1,a1,1818 # c040a71a <ebss+0xfffe95fa>
c0406354:	00100613          	li	a2,1
c0406358:	000680e7          	jalr	a3
c040635c:	000482a3          	sb	zero,5(s1)
c0406360:	00a48223          	sb	a0,4(s1)
c0406364:	0124a023          	sw	s2,0(s1)
c0406368:	00012903          	lw	s2,0(sp)
c040636c:	00412483          	lw	s1,4(sp)
c0406370:	00812403          	lw	s0,8(sp)
c0406374:	00c12083          	lw	ra,12(sp)
c0406378:	01010113          	addi	sp,sp,16
c040637c:	00008067          	ret

c0406380 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE>:
c0406380:	fd010113          	addi	sp,sp,-48
c0406384:	02112623          	sw	ra,44(sp)
c0406388:	02812423          	sw	s0,40(sp)
c040638c:	02912223          	sw	s1,36(sp)
c0406390:	03212023          	sw	s2,32(sp)
c0406394:	01312e23          	sw	s3,28(sp)
c0406398:	01412c23          	sw	s4,24(sp)
c040639c:	01512a23          	sw	s5,20(sp)
c04063a0:	01612823          	sw	s6,16(sp)
c04063a4:	01712623          	sw	s7,12(sp)
c04063a8:	01812423          	sw	s8,8(sp)
c04063ac:	01912223          	sw	s9,4(sp)
c04063b0:	01a12023          	sw	s10,0(sp)
c04063b4:	03010413          	addi	s0,sp,48
c04063b8:	00058993          	mv	s3,a1
c04063bc:	00050493          	mv	s1,a0
c04063c0:	0185a503          	lw	a0,24(a1)
c04063c4:	01c5a583          	lw	a1,28(a1)
c04063c8:	0105a603          	lw	a2,16(a1)
c04063cc:	02700593          	li	a1,39
c04063d0:	000600e7          	jalr	a2
c04063d4:	00050593          	mv	a1,a0
c04063d8:	00100513          	li	a0,1
c04063dc:	1a059663          	bnez	a1,c0406588 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x208>
c04063e0:	00200a13          	li	s4,2
c04063e4:	0004a903          	lw	s2,0(s1)
c04063e8:	02100513          	li	a0,33
c04063ec:	03254263          	blt	a0,s2,c0406410 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x90>
c04063f0:	00900513          	li	a0,9
c04063f4:	08a90663          	beq	s2,a0,c0406480 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x100>
c04063f8:	00a00513          	li	a0,10
c04063fc:	08a90663          	beq	s2,a0,c0406488 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x108>
c0406400:	00d00513          	li	a0,13
c0406404:	02a91263          	bne	s2,a0,c0406428 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0xa8>
c0406408:	07200913          	li	s2,114
c040640c:	0800006f          	j	c040648c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x10c>
c0406410:	02200513          	li	a0,34
c0406414:	06a90c63          	beq	s2,a0,c040648c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x10c>
c0406418:	02700513          	li	a0,39
c040641c:	06a90863          	beq	s2,a0,c040648c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x10c>
c0406420:	05c00513          	li	a0,92
c0406424:	06a90463          	beq	s2,a0,c040648c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x10c>
c0406428:	c040a537          	lui	a0,0xc040a
c040642c:	fa850513          	addi	a0,a0,-88 # c0409fa8 <ebss+0xfffe8e88>
c0406430:	00090593          	mv	a1,s2
c0406434:	fffff097          	auipc	ra,0xfffff
c0406438:	c70080e7          	jalr	-912(ra) # c04050a4 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h461b3be5816e66ffE>
c040643c:	26051863          	bnez	a0,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406440:	01095513          	srli	a0,s2,0x10
c0406444:	18051263          	bnez	a0,c04065c8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x248>
c0406448:	c0409537          	lui	a0,0xc0409
c040644c:	44c50593          	addi	a1,a0,1100 # c040944c <ebss+0xfffe832c>
c0406450:	c0409537          	lui	a0,0xc0409
c0406454:	49e50693          	addi	a3,a0,1182 # c040949e <ebss+0xfffe837e>
c0406458:	c0409537          	lui	a0,0xc0409
c040645c:	5c350793          	addi	a5,a0,1475 # c04095c3 <ebss+0xfffe84a3>
c0406460:	00090513          	mv	a0,s2
c0406464:	02900613          	li	a2,41
c0406468:	12500713          	li	a4,293
c040646c:	13a00813          	li	a6,314
c0406470:	fffff097          	auipc	ra,0xfffff
c0406474:	dc4080e7          	jalr	-572(ra) # c0405234 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418>
c0406478:	22051663          	bnez	a0,c04066a4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x324>
c040647c:	2300006f          	j	c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406480:	07400913          	li	s2,116
c0406484:	0080006f          	j	c040648c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x10c>
c0406488:	06e00913          	li	s2,110
c040648c:	00200b13          	li	s6,2
c0406490:	00100493          	li	s1,1
c0406494:	00a00c13          	li	s8,10
c0406498:	00300c93          	li	s9,3
c040649c:	00400d13          	li	s10,4
c04064a0:	0344ca63          	blt	s1,s4,c04064d4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x154>
c04064a4:	0200006f          	j	c04064c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x144>
c04064a8:	00100a13          	li	s4,1
c04064ac:	0189a503          	lw	a0,24(s3)
c04064b0:	01c9a603          	lw	a2,28(s3)
c04064b4:	01062603          	lw	a2,16(a2)
c04064b8:	000600e7          	jalr	a2
c04064bc:	10051263          	bnez	a0,c04065c0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x240>
c04064c0:	0144ca63          	blt	s1,s4,c04064d4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x154>
c04064c4:	0a0a0863          	beqz	s4,c0406574 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x1f4>
c04064c8:	00000a13          	li	s4,0
c04064cc:	00090593          	mv	a1,s2
c04064d0:	fddff06f          	j	c04064ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x12c>
c04064d4:	05c00593          	li	a1,92
c04064d8:	fd6a08e3          	beq	s4,s6,c04064a8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x128>
c04064dc:	0ffbf613          	andi	a2,s7,255
c04064e0:	00cb4e63          	blt	s6,a2,c04064fc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x17c>
c04064e4:	08060863          	beqz	a2,c0406574 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x1f4>
c04064e8:	02961863          	bne	a2,s1,c0406518 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x198>
c04064ec:	07d00593          	li	a1,125
c04064f0:	00300a13          	li	s4,3
c04064f4:	f00bfb93          	andi	s7,s7,-256
c04064f8:	fb5ff06f          	j	c04064ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x12c>
c04064fc:	f00bf513          	andi	a0,s7,-256
c0406500:	05960063          	beq	a2,s9,c0406540 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x1c0>
c0406504:	05a61663          	bne	a2,s10,c0406550 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x1d0>
c0406508:	07500593          	li	a1,117
c040650c:	00300a13          	li	s4,3
c0406510:	00356b93          	ori	s7,a0,3
c0406514:	f99ff06f          	j	c04064ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x12c>
c0406518:	002a9513          	slli	a0,s5,0x2
c040651c:	01c57513          	andi	a0,a0,28
c0406520:	00a95533          	srl	a0,s2,a0
c0406524:	00f57513          	andi	a0,a0,15
c0406528:	03856a63          	bltu	a0,s8,c040655c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x1dc>
c040652c:	05750593          	addi	a1,a0,87
c0406530:	00300a13          	li	s4,3
c0406534:	020a8a63          	beqz	s5,c0406568 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x1e8>
c0406538:	fffa8a93          	addi	s5,s5,-1
c040653c:	f71ff06f          	j	c04064ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x12c>
c0406540:	07b00593          	li	a1,123
c0406544:	00300a13          	li	s4,3
c0406548:	00256b93          	ori	s7,a0,2
c040654c:	f61ff06f          	j	c04064ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x12c>
c0406550:	00300a13          	li	s4,3
c0406554:	00456b93          	ori	s7,a0,4
c0406558:	f55ff06f          	j	c04064ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x12c>
c040655c:	03056593          	ori	a1,a0,48
c0406560:	00300a13          	li	s4,3
c0406564:	fc0a9ae3          	bnez	s5,c0406538 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x1b8>
c0406568:	f00bf513          	andi	a0,s7,-256
c040656c:	00156b93          	ori	s7,a0,1
c0406570:	f3dff06f          	j	c04064ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x12c>
c0406574:	0189a503          	lw	a0,24(s3)
c0406578:	01c9a583          	lw	a1,28(s3)
c040657c:	0105a603          	lw	a2,16(a1)
c0406580:	02700593          	li	a1,39
c0406584:	000600e7          	jalr	a2
c0406588:	00012d03          	lw	s10,0(sp)
c040658c:	00412c83          	lw	s9,4(sp)
c0406590:	00812c03          	lw	s8,8(sp)
c0406594:	00c12b83          	lw	s7,12(sp)
c0406598:	01012b03          	lw	s6,16(sp)
c040659c:	01412a83          	lw	s5,20(sp)
c04065a0:	01812a03          	lw	s4,24(sp)
c04065a4:	01c12983          	lw	s3,28(sp)
c04065a8:	02012903          	lw	s2,32(sp)
c04065ac:	02412483          	lw	s1,36(sp)
c04065b0:	02812403          	lw	s0,40(sp)
c04065b4:	02c12083          	lw	ra,44(sp)
c04065b8:	03010113          	addi	sp,sp,48
c04065bc:	00008067          	ret
c04065c0:	00100513          	li	a0,1
c04065c4:	fc5ff06f          	j	c0406588 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x208>
c04065c8:	01195513          	srli	a0,s2,0x11
c04065cc:	02051e63          	bnez	a0,c0406608 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x288>
c04065d0:	c0409537          	lui	a0,0xc0409
c04065d4:	6fd50593          	addi	a1,a0,1789 # c04096fd <ebss+0xfffe85dd>
c04065d8:	c0409537          	lui	a0,0xc0409
c04065dc:	74350693          	addi	a3,a0,1859 # c0409743 <ebss+0xfffe8623>
c04065e0:	c0409537          	lui	a0,0xc0409
c04065e4:	7e950793          	addi	a5,a0,2025 # c04097e9 <ebss+0xfffe86c9>
c04065e8:	00090513          	mv	a0,s2
c04065ec:	02300613          	li	a2,35
c04065f0:	0a600713          	li	a4,166
c04065f4:	19800813          	li	a6,408
c04065f8:	fffff097          	auipc	ra,0xfffff
c04065fc:	c3c080e7          	jalr	-964(ra) # c0405234 <_ZN4core7unicode9printable5check17h480ea83e3efda05aE.llvm.5375085799470840418>
c0406600:	0a051263          	bnez	a0,c04066a4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x324>
c0406604:	0a80006f          	j	c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406608:	fff20537          	lui	a0,0xfff20
c040660c:	e1050513          	addi	a0,a0,-496 # fff1fe10 <ebss+0x3fafecf0>
c0406610:	00a90533          	add	a0,s2,a0
c0406614:	000305b7          	lui	a1,0x30
c0406618:	e1058593          	addi	a1,a1,-496 # 2fe10 <XLENB+0x2fe0c>
c040661c:	08b56863          	bltu	a0,a1,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406620:	fffd0537          	lui	a0,0xfffd0
c0406624:	5e250513          	addi	a0,a0,1506 # fffd05e2 <ebss+0x3fbaf4c2>
c0406628:	00a90533          	add	a0,s2,a0
c040662c:	000b05b7          	lui	a1,0xb0
c0406630:	6e258593          	addi	a1,a1,1762 # b06e2 <XLENB+0xb06de>
c0406634:	06b56c63          	bltu	a0,a1,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406638:	fffd1537          	lui	a0,0xfffd1
c040663c:	41f50513          	addi	a0,a0,1055 # fffd141f <ebss+0x3fbb02ff>
c0406640:	00a90533          	add	a0,s2,a0
c0406644:	000015b7          	lui	a1,0x1
c0406648:	c1f58593          	addi	a1,a1,-993 # c1f <XLENB+0xc1b>
c040664c:	06b56063          	bltu	a0,a1,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406650:	fffd3537          	lui	a0,0xfffd3
c0406654:	15e50513          	addi	a0,a0,350 # fffd315e <ebss+0x3fbb203e>
c0406658:	00a90533          	add	a0,s2,a0
c040665c:	00e00593          	li	a1,14
c0406660:	04b56663          	bltu	a0,a1,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406664:	00200537          	lui	a0,0x200
c0406668:	ffe50513          	addi	a0,a0,-2 # 1ffffe <XLENB+0x1ffffa>
c040666c:	00a97533          	and	a0,s2,a0
c0406670:	0002c5b7          	lui	a1,0x2c
c0406674:	81e58593          	addi	a1,a1,-2018 # 2b81e <XLENB+0x2b81a>
c0406678:	02b50a63          	beq	a0,a1,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c040667c:	fffd6537          	lui	a0,0xfffd6
c0406680:	92950513          	addi	a0,a0,-1751 # fffd5929 <ebss+0x3fbb4809>
c0406684:	00a90533          	add	a0,s2,a0
c0406688:	02900593          	li	a1,41
c040668c:	02b56063          	bltu	a0,a1,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c0406690:	fffd5537          	lui	a0,0xfffd5
c0406694:	8cb50513          	addi	a0,a0,-1845 # fffd48cb <ebss+0x3fbb37ab>
c0406698:	00a90533          	add	a0,s2,a0
c040669c:	00a00593          	li	a1,10
c04066a0:	00a5f663          	bgeu	a1,a0,c04066ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x32c>
c04066a4:	00100a13          	li	s4,1
c04066a8:	de5ff06f          	j	c040648c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x10c>
c04066ac:	00196513          	ori	a0,s2,1
c04066b0:	00155593          	srli	a1,a0,0x1
c04066b4:	00b56533          	or	a0,a0,a1
c04066b8:	00255593          	srli	a1,a0,0x2
c04066bc:	00b56533          	or	a0,a0,a1
c04066c0:	00455593          	srli	a1,a0,0x4
c04066c4:	00b56533          	or	a0,a0,a1
c04066c8:	00855593          	srli	a1,a0,0x8
c04066cc:	00b56533          	or	a0,a0,a1
c04066d0:	01055593          	srli	a1,a0,0x10
c04066d4:	00b56533          	or	a0,a0,a1
c04066d8:	555555b7          	lui	a1,0x55555
c04066dc:	55558593          	addi	a1,a1,1365 # 55555555 <XLENB+0x55555551>
c04066e0:	fff54513          	not	a0,a0
c04066e4:	00155613          	srli	a2,a0,0x1
c04066e8:	00b675b3          	and	a1,a2,a1
c04066ec:	40b50533          	sub	a0,a0,a1
c04066f0:	333335b7          	lui	a1,0x33333
c04066f4:	33358593          	addi	a1,a1,819 # 33333333 <XLENB+0x3333332f>
c04066f8:	00b57633          	and	a2,a0,a1
c04066fc:	00255513          	srli	a0,a0,0x2
c0406700:	00b57533          	and	a0,a0,a1
c0406704:	00a60533          	add	a0,a2,a0
c0406708:	00455593          	srli	a1,a0,0x4
c040670c:	00b50533          	add	a0,a0,a1
c0406710:	0f0f15b7          	lui	a1,0xf0f1
c0406714:	f0f58593          	addi	a1,a1,-241 # f0f0f0f <XLENB+0xf0f0f0b>
c0406718:	00b57533          	and	a0,a0,a1
c040671c:	010105b7          	lui	a1,0x1010
c0406720:	10158593          	addi	a1,a1,257 # 1010101 <XLENB+0x10100fd>
c0406724:	02b50533          	mul	a0,a0,a1
c0406728:	00500b93          	li	s7,5
c040672c:	00300a13          	li	s4,3
c0406730:	01a55513          	srli	a0,a0,0x1a
c0406734:	00754a93          	xori	s5,a0,7
c0406738:	d55ff06f          	j	c040648c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h9137309bc88223acE+0x10c>

c040673c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h96606276d0b2c7d9E>:
c040673c:	ff010113          	addi	sp,sp,-16
c0406740:	00112623          	sw	ra,12(sp)
c0406744:	00812423          	sw	s0,8(sp)
c0406748:	01010413          	addi	s0,sp,16
c040674c:	0185a503          	lw	a0,24(a1)
c0406750:	01c5a583          	lw	a1,28(a1)
c0406754:	00c5a783          	lw	a5,12(a1)
c0406758:	c040a5b7          	lui	a1,0xc040a
c040675c:	70058593          	addi	a1,a1,1792 # c040a700 <ebss+0xfffe95e0>
c0406760:	00500613          	li	a2,5
c0406764:	00812403          	lw	s0,8(sp)
c0406768:	00c12083          	lw	ra,12(sp)
c040676c:	01010113          	addi	sp,sp,16
c0406770:	00078067          	jr	a5 # 1c0000 <XLENB+0x1bfffc>

c0406774 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha81a001e3e4f09c8E>:
c0406774:	ff010113          	addi	sp,sp,-16
c0406778:	00112623          	sw	ra,12(sp)
c040677c:	00812423          	sw	s0,8(sp)
c0406780:	01010413          	addi	s0,sp,16
c0406784:	00052603          	lw	a2,0(a0)
c0406788:	00452503          	lw	a0,4(a0)
c040678c:	00c52783          	lw	a5,12(a0)
c0406790:	00060513          	mv	a0,a2
c0406794:	00812403          	lw	s0,8(sp)
c0406798:	00c12083          	lw	ra,12(sp)
c040679c:	01010113          	addi	sp,sp,16
c04067a0:	00078067          	jr	a5

c04067a4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hecee59f94b54453fE>:
c04067a4:	ff010113          	addi	sp,sp,-16
c04067a8:	00112623          	sw	ra,12(sp)
c04067ac:	00812423          	sw	s0,8(sp)
c04067b0:	01010413          	addi	s0,sp,16
c04067b4:	00058693          	mv	a3,a1
c04067b8:	00052503          	lw	a0,0(a0)
c04067bc:	00452603          	lw	a2,4(a0)
c04067c0:	00052583          	lw	a1,0(a0)
c04067c4:	00068513          	mv	a0,a3
c04067c8:	00812403          	lw	s0,8(sp)
c04067cc:	00c12083          	lw	ra,12(sp)
c04067d0:	01010113          	addi	sp,sp,16
c04067d4:	fffff317          	auipc	t1,0xfffff
c04067d8:	62c30067          	jr	1580(t1) # c0405e00 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E>

c04067dc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hefb7284665125545E>:
c04067dc:	fe010113          	addi	sp,sp,-32
c04067e0:	00112e23          	sw	ra,28(sp)
c04067e4:	00812c23          	sw	s0,24(sp)
c04067e8:	02010413          	addi	s0,sp,32
c04067ec:	01c5a683          	lw	a3,28(a1)
c04067f0:	0185a583          	lw	a1,24(a1)
c04067f4:	00052503          	lw	a0,0(a0)
c04067f8:	01452603          	lw	a2,20(a0)
c04067fc:	fec42a23          	sw	a2,-12(s0)
c0406800:	01052603          	lw	a2,16(a0)
c0406804:	fec42823          	sw	a2,-16(s0)
c0406808:	00c52603          	lw	a2,12(a0)
c040680c:	fec42623          	sw	a2,-20(s0)
c0406810:	00852603          	lw	a2,8(a0)
c0406814:	fec42423          	sw	a2,-24(s0)
c0406818:	00452603          	lw	a2,4(a0)
c040681c:	fec42223          	sw	a2,-28(s0)
c0406820:	00052503          	lw	a0,0(a0)
c0406824:	fea42023          	sw	a0,-32(s0)
c0406828:	fe040613          	addi	a2,s0,-32
c040682c:	00058513          	mv	a0,a1
c0406830:	00068593          	mv	a1,a3
c0406834:	fffff097          	auipc	ra,0xfffff
c0406838:	e14080e7          	jalr	-492(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c040683c:	01812403          	lw	s0,24(sp)
c0406840:	01c12083          	lw	ra,28(sp)
c0406844:	02010113          	addi	sp,sp,32
c0406848:	00008067          	ret

c040684c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hffe693f8a022ed02E>:
c040684c:	ff010113          	addi	sp,sp,-16
c0406850:	00112623          	sw	ra,12(sp)
c0406854:	00812423          	sw	s0,8(sp)
c0406858:	01010413          	addi	s0,sp,16
c040685c:	00058693          	mv	a3,a1
c0406860:	00452603          	lw	a2,4(a0)
c0406864:	00052583          	lw	a1,0(a0)
c0406868:	00068513          	mv	a0,a3
c040686c:	00812403          	lw	s0,8(sp)
c0406870:	00c12083          	lw	ra,12(sp)
c0406874:	01010113          	addi	sp,sp,16
c0406878:	fffff317          	auipc	t1,0xfffff
c040687c:	58830067          	jr	1416(t1) # c0405e00 <_ZN4core3fmt9Formatter3pad17ha6927fdc51223bf1E>

c0406880 <_ZN4core3ptr18real_drop_in_place17h3fc68a1a07220d10E>:
c0406880:	ff010113          	addi	sp,sp,-16
c0406884:	00112623          	sw	ra,12(sp)
c0406888:	00812423          	sw	s0,8(sp)
c040688c:	01010413          	addi	s0,sp,16
c0406890:	00812403          	lw	s0,8(sp)
c0406894:	00c12083          	lw	ra,12(sp)
c0406898:	01010113          	addi	sp,sp,16
c040689c:	00008067          	ret

c04068a0 <_ZN4core3str6traits103_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17hcdbcb4080bceaf8fE>:
c04068a0:	ff010113          	addi	sp,sp,-16
c04068a4:	00112623          	sw	ra,12(sp)
c04068a8:	00812423          	sw	s0,8(sp)
c04068ac:	01010413          	addi	s0,sp,16
c04068b0:	00058693          	mv	a3,a1
c04068b4:	00452583          	lw	a1,4(a0)
c04068b8:	00052503          	lw	a0,0(a0)
c04068bc:	00000613          	li	a2,0
c04068c0:	ffffe097          	auipc	ra,0xffffe
c04068c4:	308080e7          	jalr	776(ra) # c0404bc8 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E>
c04068c8:	ffffa097          	auipc	ra,0xffffa
c04068cc:	044080e7          	jalr	68(ra) # c040090c <abort>

c04068d0 <_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h67293db8a6828342E>:
c04068d0:	ff010113          	addi	sp,sp,-16
c04068d4:	00112623          	sw	ra,12(sp)
c04068d8:	00812423          	sw	s0,8(sp)
c04068dc:	01010413          	addi	s0,sp,16
c04068e0:	00852583          	lw	a1,8(a0)
c04068e4:	0005a683          	lw	a3,0(a1)
c04068e8:	00452583          	lw	a1,4(a0)
c04068ec:	0005a603          	lw	a2,0(a1)
c04068f0:	00052503          	lw	a0,0(a0)
c04068f4:	00452583          	lw	a1,4(a0)
c04068f8:	00052503          	lw	a0,0(a0)
c04068fc:	ffffe097          	auipc	ra,0xffffe
c0406900:	2cc080e7          	jalr	716(ra) # c0404bc8 <_ZN4core3str16slice_error_fail17hb54a171e634bd5c3E>
c0406904:	ffffa097          	auipc	ra,0xffffa
c0406908:	008080e7          	jalr	8(ra) # c040090c <abort>

c040690c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E>:
c040690c:	f9010113          	addi	sp,sp,-112
c0406910:	06112623          	sw	ra,108(sp)
c0406914:	06812423          	sw	s0,104(sp)
c0406918:	06912223          	sw	s1,100(sp)
c040691c:	07212023          	sw	s2,96(sp)
c0406920:	05312e23          	sw	s3,92(sp)
c0406924:	05412c23          	sw	s4,88(sp)
c0406928:	05512a23          	sw	s5,84(sp)
c040692c:	05612823          	sw	s6,80(sp)
c0406930:	05712623          	sw	s7,76(sp)
c0406934:	05812423          	sw	s8,72(sp)
c0406938:	05912223          	sw	s9,68(sp)
c040693c:	05a12023          	sw	s10,64(sp)
c0406940:	03b12e23          	sw	s11,60(sp)
c0406944:	07010413          	addi	s0,sp,112
c0406948:	1c060463          	beqz	a2,c0406b10 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x204>
c040694c:	00060b13          	mv	s6,a2
c0406950:	00058a93          	mv	s5,a1
c0406954:	00050913          	mv	s2,a0
c0406958:	fc840993          	addi	s3,s0,-56
c040695c:	00a00b93          	li	s7,10
c0406960:	00100c13          	li	s8,1
c0406964:	fb040c93          	addi	s9,s0,-80
c0406968:	c0408537          	lui	a0,0xc0408
c040696c:	24850513          	addi	a0,a0,584 # c0408248 <ebss+0xfffe7128>
c0406970:	f8a42e23          	sw	a0,-100(s0)
c0406974:	00892503          	lw	a0,8(s2)
c0406978:	00054503          	lbu	a0,0(a0)
c040697c:	02051063          	bnez	a0,c040699c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x90>
c0406980:	0380006f          	j	c04069b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0xac>
c0406984:	409b0b33          	sub	s6,s6,s1
c0406988:	000d8a93          	mv	s5,s11
c040698c:	180b0263          	beqz	s6,c0406b10 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x204>
c0406990:	00892503          	lw	a0,8(s2)
c0406994:	00054503          	lbu	a0,0(a0)
c0406998:	02050063          	beqz	a0,c04069b8 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0xac>
c040699c:	00092503          	lw	a0,0(s2)
c04069a0:	00492583          	lw	a1,4(s2)
c04069a4:	00c5a683          	lw	a3,12(a1)
c04069a8:	f9c42583          	lw	a1,-100(s0)
c04069ac:	00400613          	li	a2,4
c04069b0:	000680e7          	jalr	a3
c04069b4:	16051263          	bnez	a0,c0406b18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x20c>
c04069b8:	fa042c23          	sw	zero,-72(s0)
c04069bc:	fd742423          	sw	s7,-56(s0)
c04069c0:	fd842223          	sw	s8,-60(s0)
c04069c4:	fd742023          	sw	s7,-64(s0)
c04069c8:	fb642e23          	sw	s6,-68(s0)
c04069cc:	fb642a23          	sw	s6,-76(s0)
c04069d0:	fb542823          	sw	s5,-80(s0)
c04069d4:	00a00513          	li	a0,10
c04069d8:	000a8593          	mv	a1,s5
c04069dc:	000b0613          	mv	a2,s6
c04069e0:	ffffe097          	auipc	ra,0xffffe
c04069e4:	090080e7          	jalr	144(ra) # c0404a70 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E>
c04069e8:	09851863          	bne	a0,s8,c0406a78 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x16c>
c04069ec:	fb842503          	lw	a0,-72(s0)
c04069f0:	00a58533          	add	a0,a1,a0
c04069f4:	00150d93          	addi	s11,a0,1
c04069f8:	fbb42c23          	sw	s11,-72(s0)
c04069fc:	fc442483          	lw	s1,-60(s0)
c0406a00:	029dfc63          	bgeu	s11,s1,c0406a38 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x12c>
c0406a04:	fb442a03          	lw	s4,-76(s0)
c0406a08:	fbc42503          	lw	a0,-68(s0)
c0406a0c:	07b56a63          	bltu	a0,s11,c0406a80 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x174>
c0406a10:	06aa6863          	bltu	s4,a0,c0406a80 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x174>
c0406a14:	fb042583          	lw	a1,-80(s0)
c0406a18:	01b585b3          	add	a1,a1,s11
c0406a1c:	41b50633          	sub	a2,a0,s11
c0406a20:	01948533          	add	a0,s1,s9
c0406a24:	01750503          	lb	a0,23(a0)
c0406a28:	ffffe097          	auipc	ra,0xffffe
c0406a2c:	048080e7          	jalr	72(ra) # c0404a70 <_ZN4core5slice6memchr6memchr17hefb7d190ea9268d5E>
c0406a30:	fb850ee3          	beq	a0,s8,c04069ec <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0xe0>
c0406a34:	0440006f          	j	c0406a78 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x16c>
c0406a38:	fb442a03          	lw	s4,-76(s0)
c0406a3c:	03ba6863          	bltu	s4,s11,c0406a6c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x160>
c0406a40:	00500513          	li	a0,5
c0406a44:	10a4fa63          	bgeu	s1,a0,c0406b58 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x24c>
c0406a48:	409d8d33          	sub	s10,s11,s1
c0406a4c:	fb042503          	lw	a0,-80(s0)
c0406a50:	01a50533          	add	a0,a0,s10
c0406a54:	0b350663          	beq	a0,s3,c0406b00 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x1f4>
c0406a58:	00098593          	mv	a1,s3
c0406a5c:	00048613          	mv	a2,s1
c0406a60:	00001097          	auipc	ra,0x1
c0406a64:	c3c080e7          	jalr	-964(ra) # c040769c <bcmp>
c0406a68:	08050c63          	beqz	a0,c0406b00 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x1f4>
c0406a6c:	fbc42503          	lw	a0,-68(s0)
c0406a70:	fbb570e3          	bgeu	a0,s11,c0406a10 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x104>
c0406a74:	00c0006f          	j	c0406a80 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x174>
c0406a78:	fbc42503          	lw	a0,-68(s0)
c0406a7c:	faa42c23          	sw	a0,-72(s0)
c0406a80:	00892503          	lw	a0,8(s2)
c0406a84:	00050023          	sb	zero,0(a0)
c0406a88:	000b0493          	mv	s1,s6
c0406a8c:	00492583          	lw	a1,4(s2)
c0406a90:	00092503          	lw	a0,0(s2)
c0406a94:	fb542823          	sw	s5,-80(s0)
c0406a98:	fb642a23          	sw	s6,-76(s0)
c0406a9c:	009b4633          	xor	a2,s6,s1
c0406aa0:	00163613          	seqz	a2,a2
c0406aa4:	0014b693          	seqz	a3,s1
c0406aa8:	00c6ea33          	or	s4,a3,a2
c0406aac:	009a8db3          	add	s11,s5,s1
c0406ab0:	000a1a63          	bnez	s4,c0406ac4 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x1b8>
c0406ab4:	0b64fe63          	bgeu	s1,s6,c0406b70 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x264>
c0406ab8:	000d8603          	lb	a2,0(s11)
c0406abc:	fbf00693          	li	a3,-65
c0406ac0:	0ac6d863          	bge	a3,a2,c0406b70 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x264>
c0406ac4:	00c5a683          	lw	a3,12(a1)
c0406ac8:	000a8593          	mv	a1,s5
c0406acc:	00048613          	mv	a2,s1
c0406ad0:	000680e7          	jalr	a3
c0406ad4:	04051263          	bnez	a0,c0406b18 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x20c>
c0406ad8:	fb542023          	sw	s5,-96(s0)
c0406adc:	fb642223          	sw	s6,-92(s0)
c0406ae0:	fa942423          	sw	s1,-88(s0)
c0406ae4:	fb642623          	sw	s6,-84(s0)
c0406ae8:	e80a1ee3          	bnez	s4,c0406984 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x78>
c0406aec:	0964fe63          	bgeu	s1,s6,c0406b88 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x27c>
c0406af0:	000d8503          	lb	a0,0(s11)
c0406af4:	fbf00593          	li	a1,-65
c0406af8:	e8a5c6e3          	blt	a1,a0,c0406984 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x78>
c0406afc:	08c0006f          	j	c0406b88 <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x27c>
c0406b00:	00892503          	lw	a0,8(s2)
c0406b04:	01850023          	sb	s8,0(a0)
c0406b08:	001d0493          	addi	s1,s10,1
c0406b0c:	f81ff06f          	j	c0406a8c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x180>
c0406b10:	00000513          	li	a0,0
c0406b14:	0080006f          	j	c0406b1c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E+0x210>
c0406b18:	00100513          	li	a0,1
c0406b1c:	03c12d83          	lw	s11,60(sp)
c0406b20:	04012d03          	lw	s10,64(sp)
c0406b24:	04412c83          	lw	s9,68(sp)
c0406b28:	04812c03          	lw	s8,72(sp)
c0406b2c:	04c12b83          	lw	s7,76(sp)
c0406b30:	05012b03          	lw	s6,80(sp)
c0406b34:	05412a83          	lw	s5,84(sp)
c0406b38:	05812a03          	lw	s4,88(sp)
c0406b3c:	05c12983          	lw	s3,92(sp)
c0406b40:	06012903          	lw	s2,96(sp)
c0406b44:	06412483          	lw	s1,100(sp)
c0406b48:	06812403          	lw	s0,104(sp)
c0406b4c:	06c12083          	lw	ra,108(sp)
c0406b50:	07010113          	addi	sp,sp,112
c0406b54:	00008067          	ret
c0406b58:	00048513          	mv	a0,s1
c0406b5c:	00400593          	li	a1,4
c0406b60:	ffffe097          	auipc	ra,0xffffe
c0406b64:	454080e7          	jalr	1108(ra) # c0404fb4 <_ZN4core5slice20slice_index_len_fail17hbd8c0819dbd42392E>
c0406b68:	ffffa097          	auipc	ra,0xffffa
c0406b6c:	da4080e7          	jalr	-604(ra) # c040090c <abort>
c0406b70:	fb040513          	addi	a0,s0,-80
c0406b74:	00048593          	mv	a1,s1
c0406b78:	00000097          	auipc	ra,0x0
c0406b7c:	d28080e7          	jalr	-728(ra) # c04068a0 <_ZN4core3str6traits103_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17hcdbcb4080bceaf8fE>
c0406b80:	ffffa097          	auipc	ra,0xffffa
c0406b84:	d8c080e7          	jalr	-628(ra) # c040090c <abort>
c0406b88:	fac40513          	addi	a0,s0,-84
c0406b8c:	faa42c23          	sw	a0,-72(s0)
c0406b90:	fa840513          	addi	a0,s0,-88
c0406b94:	faa42a23          	sw	a0,-76(s0)
c0406b98:	fa040513          	addi	a0,s0,-96
c0406b9c:	faa42823          	sw	a0,-80(s0)
c0406ba0:	fb040513          	addi	a0,s0,-80
c0406ba4:	00000097          	auipc	ra,0x0
c0406ba8:	d2c080e7          	jalr	-724(ra) # c04068d0 <_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h67293db8a6828342E>
c0406bac:	ffffa097          	auipc	ra,0xffffa
c0406bb0:	d60080e7          	jalr	-672(ra) # c040090c <abort>

c0406bb4 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE>:
c0406bb4:	f9010113          	addi	sp,sp,-112
c0406bb8:	06112623          	sw	ra,108(sp)
c0406bbc:	06812423          	sw	s0,104(sp)
c0406bc0:	06912223          	sw	s1,100(sp)
c0406bc4:	07212023          	sw	s2,96(sp)
c0406bc8:	05312e23          	sw	s3,92(sp)
c0406bcc:	05412c23          	sw	s4,88(sp)
c0406bd0:	05512a23          	sw	s5,84(sp)
c0406bd4:	05612823          	sw	s6,80(sp)
c0406bd8:	05712623          	sw	s7,76(sp)
c0406bdc:	05812423          	sw	s8,72(sp)
c0406be0:	07010413          	addi	s0,sp,112
c0406be4:	00050493          	mv	s1,a0
c0406be8:	00100b93          	li	s7,1
c0406bec:	00454503          	lbu	a0,4(a0)
c0406bf0:	00100b13          	li	s6,1
c0406bf4:	04050063          	beqz	a0,c0406c34 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x80>
c0406bf8:	017482a3          	sb	s7,5(s1)
c0406bfc:	01648223          	sb	s6,4(s1)
c0406c00:	00048513          	mv	a0,s1
c0406c04:	04812c03          	lw	s8,72(sp)
c0406c08:	04c12b83          	lw	s7,76(sp)
c0406c0c:	05012b03          	lw	s6,80(sp)
c0406c10:	05412a83          	lw	s5,84(sp)
c0406c14:	05812a03          	lw	s4,88(sp)
c0406c18:	05c12983          	lw	s3,92(sp)
c0406c1c:	06012903          	lw	s2,96(sp)
c0406c20:	06412483          	lw	s1,100(sp)
c0406c24:	06812403          	lw	s0,104(sp)
c0406c28:	06c12083          	lw	ra,108(sp)
c0406c2c:	07010113          	addi	sp,sp,112
c0406c30:	00008067          	ret
c0406c34:	00070993          	mv	s3,a4
c0406c38:	00068913          	mv	s2,a3
c0406c3c:	00060a13          	mv	s4,a2
c0406c40:	00058a93          	mv	s5,a1
c0406c44:	0054c503          	lbu	a0,5(s1)
c0406c48:	0004a683          	lw	a3,0(s1)
c0406c4c:	0006c583          	lbu	a1,0(a3)
c0406c50:	0045f593          	andi	a1,a1,4
c0406c54:	00059c63          	bnez	a1,c0406c6c <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0xb8>
c0406c58:	12050663          	beqz	a0,c0406d84 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x1d0>
c0406c5c:	00200613          	li	a2,2
c0406c60:	c040a537          	lui	a0,0xc040a
c0406c64:	70c50593          	addi	a1,a0,1804 # c040a70c <ebss+0xfffe95ec>
c0406c68:	1280006f          	j	c0406d90 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x1dc>
c0406c6c:	02051663          	bnez	a0,c0406c98 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0xe4>
c0406c70:	0186a503          	lw	a0,24(a3)
c0406c74:	01c6a583          	lw	a1,28(a3)
c0406c78:	00c5a683          	lw	a3,12(a1)
c0406c7c:	c040a5b7          	lui	a1,0xc040a
c0406c80:	70558593          	addi	a1,a1,1797 # c040a705 <ebss+0xfffe95e5>
c0406c84:	00300613          	li	a2,3
c0406c88:	000680e7          	jalr	a3
c0406c8c:	00100b13          	li	s6,1
c0406c90:	f60514e3          	bnez	a0,c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>
c0406c94:	0004a683          	lw	a3,0(s1)
c0406c98:	00100b13          	li	s6,1
c0406c9c:	f9640fa3          	sb	s6,-97(s0)
c0406ca0:	0186a503          	lw	a0,24(a3)
c0406ca4:	01c6a583          	lw	a1,28(a3)
c0406ca8:	f9f40613          	addi	a2,s0,-97
c0406cac:	f8c42c23          	sw	a2,-104(s0)
c0406cb0:	f8b42a23          	sw	a1,-108(s0)
c0406cb4:	f8a42823          	sw	a0,-112(s0)
c0406cb8:	0086a803          	lw	a6,8(a3)
c0406cbc:	00c6a883          	lw	a7,12(a3)
c0406cc0:	0106a283          	lw	t0,16(a3)
c0406cc4:	0146a303          	lw	t1,20(a3)
c0406cc8:	0206a383          	lw	t2,32(a3)
c0406ccc:	0246a503          	lw	a0,36(a3)
c0406cd0:	0286a583          	lw	a1,40(a3)
c0406cd4:	02c6a603          	lw	a2,44(a3)
c0406cd8:	0006a703          	lw	a4,0(a3)
c0406cdc:	0046a783          	lw	a5,4(a3)
c0406ce0:	03068683          	lb	a3,48(a3)
c0406ce4:	fcd40823          	sb	a3,-48(s0)
c0406ce8:	faf42223          	sw	a5,-92(s0)
c0406cec:	fae42023          	sw	a4,-96(s0)
c0406cf0:	fcc42623          	sw	a2,-52(s0)
c0406cf4:	fcb42423          	sw	a1,-56(s0)
c0406cf8:	fca42223          	sw	a0,-60(s0)
c0406cfc:	fc742023          	sw	t2,-64(s0)
c0406d00:	fa642a23          	sw	t1,-76(s0)
c0406d04:	fa542823          	sw	t0,-80(s0)
c0406d08:	fb142623          	sw	a7,-84(s0)
c0406d0c:	fb042423          	sw	a6,-88(s0)
c0406d10:	c040a537          	lui	a0,0xc040a
c0406d14:	65450513          	addi	a0,a0,1620 # c040a654 <ebss+0xfffe9534>
c0406d18:	faa42e23          	sw	a0,-68(s0)
c0406d1c:	00c52c03          	lw	s8,12(a0)
c0406d20:	f9040513          	addi	a0,s0,-112
c0406d24:	faa42c23          	sw	a0,-72(s0)
c0406d28:	000a8593          	mv	a1,s5
c0406d2c:	000a0613          	mv	a2,s4
c0406d30:	000c00e7          	jalr	s8
c0406d34:	ec0512e3          	bnez	a0,c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>
c0406d38:	c040a537          	lui	a0,0xc040a
c0406d3c:	70850593          	addi	a1,a0,1800 # c040a708 <ebss+0xfffe95e8>
c0406d40:	f9040513          	addi	a0,s0,-112
c0406d44:	00200613          	li	a2,2
c0406d48:	000c00e7          	jalr	s8
c0406d4c:	ea0516e3          	bnez	a0,c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>
c0406d50:	00c9a603          	lw	a2,12(s3)
c0406d54:	fa040593          	addi	a1,s0,-96
c0406d58:	00090513          	mv	a0,s2
c0406d5c:	000600e7          	jalr	a2
c0406d60:	e8051ce3          	bnez	a0,c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>
c0406d64:	fbc42503          	lw	a0,-68(s0)
c0406d68:	00c52683          	lw	a3,12(a0)
c0406d6c:	fb842503          	lw	a0,-72(s0)
c0406d70:	c040a5b7          	lui	a1,0xc040a
c0406d74:	70a58593          	addi	a1,a1,1802 # c040a70a <ebss+0xfffe95ea>
c0406d78:	00200613          	li	a2,2
c0406d7c:	000680e7          	jalr	a3
c0406d80:	0840006f          	j	c0406e04 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x250>
c0406d84:	00300613          	li	a2,3
c0406d88:	c040a537          	lui	a0,0xc040a
c0406d8c:	70e50593          	addi	a1,a0,1806 # c040a70e <ebss+0xfffe95ee>
c0406d90:	0186a503          	lw	a0,24(a3)
c0406d94:	01c6a683          	lw	a3,28(a3)
c0406d98:	00c6a683          	lw	a3,12(a3)
c0406d9c:	000680e7          	jalr	a3
c0406da0:	00100b13          	li	s6,1
c0406da4:	e4051ae3          	bnez	a0,c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>
c0406da8:	0004a583          	lw	a1,0(s1)
c0406dac:	0185a503          	lw	a0,24(a1)
c0406db0:	01c5a583          	lw	a1,28(a1)
c0406db4:	00c5a683          	lw	a3,12(a1)
c0406db8:	000a8593          	mv	a1,s5
c0406dbc:	000a0613          	mv	a2,s4
c0406dc0:	000680e7          	jalr	a3
c0406dc4:	00100b13          	li	s6,1
c0406dc8:	e20518e3          	bnez	a0,c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>
c0406dcc:	0004a583          	lw	a1,0(s1)
c0406dd0:	0185a503          	lw	a0,24(a1)
c0406dd4:	01c5a583          	lw	a1,28(a1)
c0406dd8:	00c5a683          	lw	a3,12(a1)
c0406ddc:	c040a5b7          	lui	a1,0xc040a
c0406de0:	70858593          	addi	a1,a1,1800 # c040a708 <ebss+0xfffe95e8>
c0406de4:	00200613          	li	a2,2
c0406de8:	000680e7          	jalr	a3
c0406dec:	00100b13          	li	s6,1
c0406df0:	e00514e3          	bnez	a0,c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>
c0406df4:	00c9a603          	lw	a2,12(s3)
c0406df8:	0004a583          	lw	a1,0(s1)
c0406dfc:	00090513          	mv	a0,s2
c0406e00:	000600e7          	jalr	a2
c0406e04:	00050b13          	mv	s6,a0
c0406e08:	df1ff06f          	j	c0406bf8 <_ZN4core3fmt8builders11DebugStruct5field17h45ed13d3f4fd5adcE+0x44>

c0406e0c <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE>:
c0406e0c:	ff010113          	addi	sp,sp,-16
c0406e10:	00112623          	sw	ra,12(sp)
c0406e14:	00812423          	sw	s0,8(sp)
c0406e18:	00912223          	sw	s1,4(sp)
c0406e1c:	01010413          	addi	s0,sp,16
c0406e20:	00050493          	mv	s1,a0
c0406e24:	00454583          	lbu	a1,4(a0)
c0406e28:	00554503          	lbu	a0,5(a0)
c0406e2c:	02050c63          	beqz	a0,c0406e64 <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE+0x58>
c0406e30:	00100513          	li	a0,1
c0406e34:	04059463          	bnez	a1,c0406e7c <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE+0x70>
c0406e38:	0004a583          	lw	a1,0(s1)
c0406e3c:	0185a503          	lw	a0,24(a1)
c0406e40:	01c5a603          	lw	a2,28(a1)
c0406e44:	00c62683          	lw	a3,12(a2)
c0406e48:	0005c583          	lbu	a1,0(a1)
c0406e4c:	0045f593          	andi	a1,a1,4
c0406e50:	00059e63          	bnez	a1,c0406e6c <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE+0x60>
c0406e54:	c040a5b7          	lui	a1,0xc040a
c0406e58:	71258593          	addi	a1,a1,1810 # c040a712 <ebss+0xfffe95f2>
c0406e5c:	00200613          	li	a2,2
c0406e60:	0180006f          	j	c0406e78 <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE+0x6c>
c0406e64:	00058513          	mv	a0,a1
c0406e68:	0180006f          	j	c0406e80 <_ZN4core3fmt8builders11DebugStruct6finish17hed0cf134c07b104eE+0x74>
c0406e6c:	c040a5b7          	lui	a1,0xc040a
c0406e70:	71158593          	addi	a1,a1,1809 # c040a711 <ebss+0xfffe95f1>
c0406e74:	00100613          	li	a2,1
c0406e78:	000680e7          	jalr	a3
c0406e7c:	00a48223          	sb	a0,4(s1)
c0406e80:	00a03533          	snez	a0,a0
c0406e84:	00412483          	lw	s1,4(sp)
c0406e88:	00812403          	lw	s0,8(sp)
c0406e8c:	00c12083          	lw	ra,12(sp)
c0406e90:	01010113          	addi	sp,sp,16
c0406e94:	00008067          	ret

c0406e98 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E>:
c0406e98:	fa010113          	addi	sp,sp,-96
c0406e9c:	04112e23          	sw	ra,92(sp)
c0406ea0:	04812c23          	sw	s0,88(sp)
c0406ea4:	04912a23          	sw	s1,84(sp)
c0406ea8:	05212823          	sw	s2,80(sp)
c0406eac:	05312623          	sw	s3,76(sp)
c0406eb0:	05412423          	sw	s4,72(sp)
c0406eb4:	06010413          	addi	s0,sp,96
c0406eb8:	00050493          	mv	s1,a0
c0406ebc:	00100913          	li	s2,1
c0406ec0:	00854503          	lbu	a0,8(a0)
c0406ec4:	14051a63          	bnez	a0,c0407018 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x180>
c0406ec8:	00060a13          	mv	s4,a2
c0406ecc:	00058993          	mv	s3,a1
c0406ed0:	0044a503          	lw	a0,4(s1)
c0406ed4:	0004a683          	lw	a3,0(s1)
c0406ed8:	0006c583          	lbu	a1,0(a3)
c0406edc:	0045f593          	andi	a1,a1,4
c0406ee0:	00059e63          	bnez	a1,c0406efc <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x64>
c0406ee4:	00100913          	li	s2,1
c0406ee8:	0e050e63          	beqz	a0,c0406fe4 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x14c>
c0406eec:	c040a537          	lui	a0,0xc040a
c0406ef0:	70c50593          	addi	a1,a0,1804 # c040a70c <ebss+0xfffe95ec>
c0406ef4:	00200613          	li	a2,2
c0406ef8:	0f80006f          	j	c0406ff0 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x158>
c0406efc:	02051463          	bnez	a0,c0406f24 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x8c>
c0406f00:	0186a503          	lw	a0,24(a3)
c0406f04:	01c6a583          	lw	a1,28(a3)
c0406f08:	00c5a683          	lw	a3,12(a1)
c0406f0c:	c040a5b7          	lui	a1,0xc040a
c0406f10:	71458593          	addi	a1,a1,1812 # c040a714 <ebss+0xfffe95f4>
c0406f14:	00200613          	li	a2,2
c0406f18:	000680e7          	jalr	a3
c0406f1c:	0e051e63          	bnez	a0,c0407018 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x180>
c0406f20:	0004a683          	lw	a3,0(s1)
c0406f24:	00100913          	li	s2,1
c0406f28:	fb2407a3          	sb	s2,-81(s0)
c0406f2c:	0186a503          	lw	a0,24(a3)
c0406f30:	01c6a583          	lw	a1,28(a3)
c0406f34:	faf40613          	addi	a2,s0,-81
c0406f38:	fac42423          	sw	a2,-88(s0)
c0406f3c:	fab42223          	sw	a1,-92(s0)
c0406f40:	faa42023          	sw	a0,-96(s0)
c0406f44:	0086a803          	lw	a6,8(a3)
c0406f48:	00c6a883          	lw	a7,12(a3)
c0406f4c:	0106a283          	lw	t0,16(a3)
c0406f50:	0146a303          	lw	t1,20(a3)
c0406f54:	0206a383          	lw	t2,32(a3)
c0406f58:	0246a503          	lw	a0,36(a3)
c0406f5c:	0286a583          	lw	a1,40(a3)
c0406f60:	02c6a603          	lw	a2,44(a3)
c0406f64:	0006a703          	lw	a4,0(a3)
c0406f68:	0046a783          	lw	a5,4(a3)
c0406f6c:	03068683          	lb	a3,48(a3)
c0406f70:	fed40023          	sb	a3,-32(s0)
c0406f74:	faf42a23          	sw	a5,-76(s0)
c0406f78:	fae42823          	sw	a4,-80(s0)
c0406f7c:	fcc42e23          	sw	a2,-36(s0)
c0406f80:	fcb42c23          	sw	a1,-40(s0)
c0406f84:	fca42a23          	sw	a0,-44(s0)
c0406f88:	fc742823          	sw	t2,-48(s0)
c0406f8c:	c040a537          	lui	a0,0xc040a
c0406f90:	65450513          	addi	a0,a0,1620 # c040a654 <ebss+0xfffe9534>
c0406f94:	fca42623          	sw	a0,-52(s0)
c0406f98:	fa040513          	addi	a0,s0,-96
c0406f9c:	fca42423          	sw	a0,-56(s0)
c0406fa0:	fc642223          	sw	t1,-60(s0)
c0406fa4:	fc542023          	sw	t0,-64(s0)
c0406fa8:	fb142e23          	sw	a7,-68(s0)
c0406fac:	fb042c23          	sw	a6,-72(s0)
c0406fb0:	00ca2603          	lw	a2,12(s4)
c0406fb4:	fb040593          	addi	a1,s0,-80
c0406fb8:	00098513          	mv	a0,s3
c0406fbc:	000600e7          	jalr	a2
c0406fc0:	04051c63          	bnez	a0,c0407018 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x180>
c0406fc4:	fcc42503          	lw	a0,-52(s0)
c0406fc8:	00c52683          	lw	a3,12(a0)
c0406fcc:	fc842503          	lw	a0,-56(s0)
c0406fd0:	c040a5b7          	lui	a1,0xc040a
c0406fd4:	70a58593          	addi	a1,a1,1802 # c040a70a <ebss+0xfffe95ea>
c0406fd8:	00200613          	li	a2,2
c0406fdc:	000680e7          	jalr	a3
c0406fe0:	0340006f          	j	c0407014 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x17c>
c0406fe4:	c040a537          	lui	a0,0xc040a
c0406fe8:	71650593          	addi	a1,a0,1814 # c040a716 <ebss+0xfffe95f6>
c0406fec:	00100613          	li	a2,1
c0406ff0:	0186a503          	lw	a0,24(a3)
c0406ff4:	01c6a683          	lw	a3,28(a3)
c0406ff8:	00c6a683          	lw	a3,12(a3)
c0406ffc:	000680e7          	jalr	a3
c0407000:	00051c63          	bnez	a0,c0407018 <_ZN4core3fmt8builders10DebugTuple5field17h575b83e33d4d1729E+0x180>
c0407004:	00ca2603          	lw	a2,12(s4)
c0407008:	0004a583          	lw	a1,0(s1)
c040700c:	00098513          	mv	a0,s3
c0407010:	000600e7          	jalr	a2
c0407014:	00050913          	mv	s2,a0
c0407018:	01248423          	sb	s2,8(s1)
c040701c:	0044a503          	lw	a0,4(s1)
c0407020:	00150513          	addi	a0,a0,1
c0407024:	00a4a223          	sw	a0,4(s1)
c0407028:	00048513          	mv	a0,s1
c040702c:	04812a03          	lw	s4,72(sp)
c0407030:	04c12983          	lw	s3,76(sp)
c0407034:	05012903          	lw	s2,80(sp)
c0407038:	05412483          	lw	s1,84(sp)
c040703c:	05812403          	lw	s0,88(sp)
c0407040:	05c12083          	lw	ra,92(sp)
c0407044:	06010113          	addi	sp,sp,96
c0407048:	00008067          	ret

c040704c <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E>:
c040704c:	ff010113          	addi	sp,sp,-16
c0407050:	00112623          	sw	ra,12(sp)
c0407054:	00812423          	sw	s0,8(sp)
c0407058:	00912223          	sw	s1,4(sp)
c040705c:	01212023          	sw	s2,0(sp)
c0407060:	01010413          	addi	s0,sp,16
c0407064:	00050913          	mv	s2,a0
c0407068:	00854583          	lbu	a1,8(a0)
c040706c:	00452503          	lw	a0,4(a0)
c0407070:	06050e63          	beqz	a0,c04070ec <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E+0xa0>
c0407074:	00100493          	li	s1,1
c0407078:	06059663          	bnez	a1,c04070e4 <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E+0x98>
c040707c:	00100593          	li	a1,1
c0407080:	04b51063          	bne	a0,a1,c04070c0 <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E+0x74>
c0407084:	00994503          	lbu	a0,9(s2)
c0407088:	02050c63          	beqz	a0,c04070c0 <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E+0x74>
c040708c:	00092583          	lw	a1,0(s2)
c0407090:	0005c503          	lbu	a0,0(a1)
c0407094:	00457513          	andi	a0,a0,4
c0407098:	02051463          	bnez	a0,c04070c0 <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E+0x74>
c040709c:	0185a503          	lw	a0,24(a1)
c04070a0:	01c5a583          	lw	a1,28(a1)
c04070a4:	00c5a683          	lw	a3,12(a1)
c04070a8:	c040a5b7          	lui	a1,0xc040a
c04070ac:	71758593          	addi	a1,a1,1815 # c040a717 <ebss+0xfffe95f7>
c04070b0:	00100493          	li	s1,1
c04070b4:	00100613          	li	a2,1
c04070b8:	000680e7          	jalr	a3
c04070bc:	02051463          	bnez	a0,c04070e4 <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E+0x98>
c04070c0:	00092583          	lw	a1,0(s2)
c04070c4:	0185a503          	lw	a0,24(a1)
c04070c8:	01c5a583          	lw	a1,28(a1)
c04070cc:	00c5a683          	lw	a3,12(a1)
c04070d0:	c040a5b7          	lui	a1,0xc040a
c04070d4:	71858593          	addi	a1,a1,1816 # c040a718 <ebss+0xfffe95f8>
c04070d8:	00100613          	li	a2,1
c04070dc:	000680e7          	jalr	a3
c04070e0:	00050493          	mv	s1,a0
c04070e4:	00990423          	sb	s1,8(s2)
c04070e8:	0080006f          	j	c04070f0 <_ZN4core3fmt8builders10DebugTuple6finish17h47763ebe32687432E+0xa4>
c04070ec:	00058493          	mv	s1,a1
c04070f0:	00903533          	snez	a0,s1
c04070f4:	00012903          	lw	s2,0(sp)
c04070f8:	00412483          	lw	s1,4(sp)
c04070fc:	00812403          	lw	s0,8(sp)
c0407100:	00c12083          	lw	ra,12(sp)
c0407104:	01010113          	addi	sp,sp,16
c0407108:	00008067          	ret

c040710c <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417>:
c040710c:	fa010113          	addi	sp,sp,-96
c0407110:	04112e23          	sw	ra,92(sp)
c0407114:	04812c23          	sw	s0,88(sp)
c0407118:	04912a23          	sw	s1,84(sp)
c040711c:	05212823          	sw	s2,80(sp)
c0407120:	05312623          	sw	s3,76(sp)
c0407124:	05412423          	sw	s4,72(sp)
c0407128:	05512223          	sw	s5,68(sp)
c040712c:	06010413          	addi	s0,sp,96
c0407130:	00050493          	mv	s1,a0
c0407134:	00100a93          	li	s5,1
c0407138:	00454503          	lbu	a0,4(a0)
c040713c:	00100a13          	li	s4,1
c0407140:	14051463          	bnez	a0,c0407288 <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0x17c>
c0407144:	00060993          	mv	s3,a2
c0407148:	00058913          	mv	s2,a1
c040714c:	0054c503          	lbu	a0,5(s1)
c0407150:	0004a583          	lw	a1,0(s1)
c0407154:	0005c603          	lbu	a2,0(a1)
c0407158:	00467613          	andi	a2,a2,4
c040715c:	04061063          	bnez	a2,c040719c <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0x90>
c0407160:	02050663          	beqz	a0,c040718c <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0x80>
c0407164:	0185a503          	lw	a0,24(a1)
c0407168:	01c5a583          	lw	a1,28(a1)
c040716c:	00c5a683          	lw	a3,12(a1)
c0407170:	c040a5b7          	lui	a1,0xc040a
c0407174:	70c58593          	addi	a1,a1,1804 # c040a70c <ebss+0xfffe95ec>
c0407178:	00200613          	li	a2,2
c040717c:	000680e7          	jalr	a3
c0407180:	00100a13          	li	s4,1
c0407184:	10051263          	bnez	a0,c0407288 <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0x17c>
c0407188:	0004a583          	lw	a1,0(s1)
c040718c:	00c9a603          	lw	a2,12(s3)
c0407190:	00090513          	mv	a0,s2
c0407194:	000600e7          	jalr	a2
c0407198:	0ec0006f          	j	c0407284 <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0x178>
c040719c:	02051663          	bnez	a0,c04071c8 <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0xbc>
c04071a0:	0185a503          	lw	a0,24(a1)
c04071a4:	01c5a583          	lw	a1,28(a1)
c04071a8:	00c5a683          	lw	a3,12(a1)
c04071ac:	c040a5b7          	lui	a1,0xc040a
c04071b0:	71958593          	addi	a1,a1,1817 # c040a719 <ebss+0xfffe95f9>
c04071b4:	00100a13          	li	s4,1
c04071b8:	00100613          	li	a2,1
c04071bc:	000680e7          	jalr	a3
c04071c0:	0c051463          	bnez	a0,c0407288 <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0x17c>
c04071c4:	0004a583          	lw	a1,0(s1)
c04071c8:	00100a13          	li	s4,1
c04071cc:	fb4407a3          	sb	s4,-81(s0)
c04071d0:	0185a503          	lw	a0,24(a1)
c04071d4:	01c5a603          	lw	a2,28(a1)
c04071d8:	faf40693          	addi	a3,s0,-81
c04071dc:	fad42423          	sw	a3,-88(s0)
c04071e0:	fac42223          	sw	a2,-92(s0)
c04071e4:	faa42023          	sw	a0,-96(s0)
c04071e8:	0085a803          	lw	a6,8(a1)
c04071ec:	00c5a883          	lw	a7,12(a1)
c04071f0:	0105a283          	lw	t0,16(a1)
c04071f4:	0145a303          	lw	t1,20(a1)
c04071f8:	0205a383          	lw	t2,32(a1)
c04071fc:	0245a503          	lw	a0,36(a1)
c0407200:	0285a603          	lw	a2,40(a1)
c0407204:	02c5a683          	lw	a3,44(a1)
c0407208:	0005a703          	lw	a4,0(a1)
c040720c:	0045a783          	lw	a5,4(a1)
c0407210:	03058583          	lb	a1,48(a1)
c0407214:	feb40023          	sb	a1,-32(s0)
c0407218:	faf42a23          	sw	a5,-76(s0)
c040721c:	fae42823          	sw	a4,-80(s0)
c0407220:	fcd42e23          	sw	a3,-36(s0)
c0407224:	fcc42c23          	sw	a2,-40(s0)
c0407228:	fca42a23          	sw	a0,-44(s0)
c040722c:	fc742823          	sw	t2,-48(s0)
c0407230:	c040a537          	lui	a0,0xc040a
c0407234:	65450513          	addi	a0,a0,1620 # c040a654 <ebss+0xfffe9534>
c0407238:	fca42623          	sw	a0,-52(s0)
c040723c:	fa040513          	addi	a0,s0,-96
c0407240:	fca42423          	sw	a0,-56(s0)
c0407244:	fc642223          	sw	t1,-60(s0)
c0407248:	fc542023          	sw	t0,-64(s0)
c040724c:	fb142e23          	sw	a7,-68(s0)
c0407250:	fb042c23          	sw	a6,-72(s0)
c0407254:	00c9a603          	lw	a2,12(s3)
c0407258:	fb040593          	addi	a1,s0,-80
c040725c:	00090513          	mv	a0,s2
c0407260:	000600e7          	jalr	a2
c0407264:	02051263          	bnez	a0,c0407288 <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417+0x17c>
c0407268:	fcc42503          	lw	a0,-52(s0)
c040726c:	00c52683          	lw	a3,12(a0)
c0407270:	fc842503          	lw	a0,-56(s0)
c0407274:	c040a5b7          	lui	a1,0xc040a
c0407278:	70a58593          	addi	a1,a1,1802 # c040a70a <ebss+0xfffe95ea>
c040727c:	00200613          	li	a2,2
c0407280:	000680e7          	jalr	a3
c0407284:	00050a13          	mv	s4,a0
c0407288:	015482a3          	sb	s5,5(s1)
c040728c:	01448223          	sb	s4,4(s1)
c0407290:	04412a83          	lw	s5,68(sp)
c0407294:	04812a03          	lw	s4,72(sp)
c0407298:	04c12983          	lw	s3,76(sp)
c040729c:	05012903          	lw	s2,80(sp)
c04072a0:	05412483          	lw	s1,84(sp)
c04072a4:	05812403          	lw	s0,88(sp)
c04072a8:	05c12083          	lw	ra,92(sp)
c04072ac:	06010113          	addi	sp,sp,96
c04072b0:	00008067          	ret

c04072b4 <_ZN4core3fmt8builders8DebugSet5entry17h06b98a4bc03c2abcE>:
c04072b4:	ff010113          	addi	sp,sp,-16
c04072b8:	00112623          	sw	ra,12(sp)
c04072bc:	00812423          	sw	s0,8(sp)
c04072c0:	00912223          	sw	s1,4(sp)
c04072c4:	01010413          	addi	s0,sp,16
c04072c8:	00050493          	mv	s1,a0
c04072cc:	00000097          	auipc	ra,0x0
c04072d0:	e40080e7          	jalr	-448(ra) # c040710c <_ZN4core3fmt8builders10DebugInner5entry17ha63f2614046de31aE.llvm.7035815030266494417>
c04072d4:	00048513          	mv	a0,s1
c04072d8:	00412483          	lw	s1,4(sp)
c04072dc:	00812403          	lw	s0,8(sp)
c04072e0:	00c12083          	lw	ra,12(sp)
c04072e4:	01010113          	addi	sp,sp,16
c04072e8:	00008067          	ret

c04072ec <_ZN4core3fmt8builders9DebugList6finish17h9c2d6bafc1c77c68E>:
c04072ec:	ff010113          	addi	sp,sp,-16
c04072f0:	00112623          	sw	ra,12(sp)
c04072f4:	00812423          	sw	s0,8(sp)
c04072f8:	01010413          	addi	s0,sp,16
c04072fc:	00050593          	mv	a1,a0
c0407300:	00100513          	li	a0,1
c0407304:	0045c603          	lbu	a2,4(a1)
c0407308:	00060a63          	beqz	a2,c040731c <_ZN4core3fmt8builders9DebugList6finish17h9c2d6bafc1c77c68E+0x30>
c040730c:	00812403          	lw	s0,8(sp)
c0407310:	00c12083          	lw	ra,12(sp)
c0407314:	01010113          	addi	sp,sp,16
c0407318:	00008067          	ret
c040731c:	0005a583          	lw	a1,0(a1)
c0407320:	0185a503          	lw	a0,24(a1)
c0407324:	01c5a583          	lw	a1,28(a1)
c0407328:	00c5a683          	lw	a3,12(a1)
c040732c:	c040a5b7          	lui	a1,0xc040a
c0407330:	71b58593          	addi	a1,a1,1819 # c040a71b <ebss+0xfffe95fb>
c0407334:	00100613          	li	a2,1
c0407338:	000680e7          	jalr	a3
c040733c:	00812403          	lw	s0,8(sp)
c0407340:	00c12083          	lw	ra,12(sp)
c0407344:	01010113          	addi	sp,sp,16
c0407348:	00008067          	ret

c040734c <_ZN4core3fmt5Write10write_char17h13cf814993e82c65E>:
c040734c:	ff010113          	addi	sp,sp,-16
c0407350:	00112623          	sw	ra,12(sp)
c0407354:	00812423          	sw	s0,8(sp)
c0407358:	01010413          	addi	s0,sp,16
c040735c:	fe042a23          	sw	zero,-12(s0)
c0407360:	08000613          	li	a2,128
c0407364:	00c5f863          	bgeu	a1,a2,c0407374 <_ZN4core3fmt5Write10write_char17h13cf814993e82c65E+0x28>
c0407368:	feb40a23          	sb	a1,-12(s0)
c040736c:	00100613          	li	a2,1
c0407370:	0a80006f          	j	c0407418 <_ZN4core3fmt5Write10write_char17h13cf814993e82c65E+0xcc>
c0407374:	00b5d613          	srli	a2,a1,0xb
c0407378:	02061463          	bnez	a2,c04073a0 <_ZN4core3fmt5Write10write_char17h13cf814993e82c65E+0x54>
c040737c:	03f5f613          	andi	a2,a1,63
c0407380:	08066613          	ori	a2,a2,128
c0407384:	fec40aa3          	sb	a2,-11(s0)
c0407388:	0065d593          	srli	a1,a1,0x6
c040738c:	01f5f593          	andi	a1,a1,31
c0407390:	0c05e593          	ori	a1,a1,192
c0407394:	feb40a23          	sb	a1,-12(s0)
c0407398:	00200613          	li	a2,2
c040739c:	07c0006f          	j	c0407418 <_ZN4core3fmt5Write10write_char17h13cf814993e82c65E+0xcc>
c04073a0:	0105d613          	srli	a2,a1,0x10
c04073a4:	02061c63          	bnez	a2,c04073dc <_ZN4core3fmt5Write10write_char17h13cf814993e82c65E+0x90>
c04073a8:	03f5f613          	andi	a2,a1,63
c04073ac:	08066613          	ori	a2,a2,128
c04073b0:	fec40b23          	sb	a2,-10(s0)
c04073b4:	0065d613          	srli	a2,a1,0x6
c04073b8:	03f67613          	andi	a2,a2,63
c04073bc:	08066613          	ori	a2,a2,128
c04073c0:	fec40aa3          	sb	a2,-11(s0)
c04073c4:	00c5d593          	srli	a1,a1,0xc
c04073c8:	00f5f593          	andi	a1,a1,15
c04073cc:	0e05e593          	ori	a1,a1,224
c04073d0:	feb40a23          	sb	a1,-12(s0)
c04073d4:	00300613          	li	a2,3
c04073d8:	0400006f          	j	c0407418 <_ZN4core3fmt5Write10write_char17h13cf814993e82c65E+0xcc>
c04073dc:	03f5f613          	andi	a2,a1,63
c04073e0:	08066613          	ori	a2,a2,128
c04073e4:	fec40ba3          	sb	a2,-9(s0)
c04073e8:	0125d613          	srli	a2,a1,0x12
c04073ec:	0f066613          	ori	a2,a2,240
c04073f0:	fec40a23          	sb	a2,-12(s0)
c04073f4:	0065d613          	srli	a2,a1,0x6
c04073f8:	03f67613          	andi	a2,a2,63
c04073fc:	08066613          	ori	a2,a2,128
c0407400:	fec40b23          	sb	a2,-10(s0)
c0407404:	00c5d593          	srli	a1,a1,0xc
c0407408:	03f5f593          	andi	a1,a1,63
c040740c:	0805e593          	ori	a1,a1,128
c0407410:	feb40aa3          	sb	a1,-11(s0)
c0407414:	00400613          	li	a2,4
c0407418:	ff440593          	addi	a1,s0,-12
c040741c:	fffff097          	auipc	ra,0xfffff
c0407420:	4f0080e7          	jalr	1264(ra) # c040690c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E>
c0407424:	00812403          	lw	s0,8(sp)
c0407428:	00c12083          	lw	ra,12(sp)
c040742c:	01010113          	addi	sp,sp,16
c0407430:	00008067          	ret

c0407434 <_ZN4core3fmt5Write9write_fmt17h04a414ae7117502eE>:
c0407434:	fd010113          	addi	sp,sp,-48
c0407438:	02112623          	sw	ra,44(sp)
c040743c:	02812423          	sw	s0,40(sp)
c0407440:	03010413          	addi	s0,sp,48
c0407444:	fca42e23          	sw	a0,-36(s0)
c0407448:	0145a503          	lw	a0,20(a1)
c040744c:	fea42a23          	sw	a0,-12(s0)
c0407450:	0105a503          	lw	a0,16(a1)
c0407454:	fea42823          	sw	a0,-16(s0)
c0407458:	00c5a503          	lw	a0,12(a1)
c040745c:	fea42623          	sw	a0,-20(s0)
c0407460:	0085a503          	lw	a0,8(a1)
c0407464:	fea42423          	sw	a0,-24(s0)
c0407468:	0045a503          	lw	a0,4(a1)
c040746c:	fea42223          	sw	a0,-28(s0)
c0407470:	0005a503          	lw	a0,0(a1)
c0407474:	fea42023          	sw	a0,-32(s0)
c0407478:	c040a537          	lui	a0,0xc040a
c040747c:	71c50593          	addi	a1,a0,1820 # c040a71c <ebss+0xfffe95fc>
c0407480:	fdc40513          	addi	a0,s0,-36
c0407484:	fe040613          	addi	a2,s0,-32
c0407488:	ffffe097          	auipc	ra,0xffffe
c040748c:	1c0080e7          	jalr	448(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0407490:	02812403          	lw	s0,40(sp)
c0407494:	02c12083          	lw	ra,44(sp)
c0407498:	03010113          	addi	sp,sp,48
c040749c:	00008067          	ret

c04074a0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha3a389db3da6227bE>:
c04074a0:	ff010113          	addi	sp,sp,-16
c04074a4:	00112623          	sw	ra,12(sp)
c04074a8:	00812423          	sw	s0,8(sp)
c04074ac:	01010413          	addi	s0,sp,16
c04074b0:	00052503          	lw	a0,0(a0)
c04074b4:	00812403          	lw	s0,8(sp)
c04074b8:	00c12083          	lw	ra,12(sp)
c04074bc:	01010113          	addi	sp,sp,16
c04074c0:	fffff317          	auipc	t1,0xfffff
c04074c4:	44c30067          	jr	1100(t1) # c040690c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E>

c04074c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7eaa1849e8f58824E>:
c04074c8:	ff010113          	addi	sp,sp,-16
c04074cc:	00112623          	sw	ra,12(sp)
c04074d0:	00812423          	sw	s0,8(sp)
c04074d4:	01010413          	addi	s0,sp,16
c04074d8:	00052503          	lw	a0,0(a0)
c04074dc:	fe042a23          	sw	zero,-12(s0)
c04074e0:	08000613          	li	a2,128
c04074e4:	00c5f863          	bgeu	a1,a2,c04074f4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7eaa1849e8f58824E+0x2c>
c04074e8:	feb40a23          	sb	a1,-12(s0)
c04074ec:	00100613          	li	a2,1
c04074f0:	0a80006f          	j	c0407598 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7eaa1849e8f58824E+0xd0>
c04074f4:	00b5d613          	srli	a2,a1,0xb
c04074f8:	02061463          	bnez	a2,c0407520 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7eaa1849e8f58824E+0x58>
c04074fc:	03f5f613          	andi	a2,a1,63
c0407500:	08066613          	ori	a2,a2,128
c0407504:	fec40aa3          	sb	a2,-11(s0)
c0407508:	0065d593          	srli	a1,a1,0x6
c040750c:	01f5f593          	andi	a1,a1,31
c0407510:	0c05e593          	ori	a1,a1,192
c0407514:	feb40a23          	sb	a1,-12(s0)
c0407518:	00200613          	li	a2,2
c040751c:	07c0006f          	j	c0407598 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7eaa1849e8f58824E+0xd0>
c0407520:	0105d613          	srli	a2,a1,0x10
c0407524:	02061c63          	bnez	a2,c040755c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7eaa1849e8f58824E+0x94>
c0407528:	03f5f613          	andi	a2,a1,63
c040752c:	08066613          	ori	a2,a2,128
c0407530:	fec40b23          	sb	a2,-10(s0)
c0407534:	0065d613          	srli	a2,a1,0x6
c0407538:	03f67613          	andi	a2,a2,63
c040753c:	08066613          	ori	a2,a2,128
c0407540:	fec40aa3          	sb	a2,-11(s0)
c0407544:	00c5d593          	srli	a1,a1,0xc
c0407548:	00f5f593          	andi	a1,a1,15
c040754c:	0e05e593          	ori	a1,a1,224
c0407550:	feb40a23          	sb	a1,-12(s0)
c0407554:	00300613          	li	a2,3
c0407558:	0400006f          	j	c0407598 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h7eaa1849e8f58824E+0xd0>
c040755c:	03f5f613          	andi	a2,a1,63
c0407560:	08066613          	ori	a2,a2,128
c0407564:	fec40ba3          	sb	a2,-9(s0)
c0407568:	0125d613          	srli	a2,a1,0x12
c040756c:	0f066613          	ori	a2,a2,240
c0407570:	fec40a23          	sb	a2,-12(s0)
c0407574:	0065d613          	srli	a2,a1,0x6
c0407578:	03f67613          	andi	a2,a2,63
c040757c:	08066613          	ori	a2,a2,128
c0407580:	fec40b23          	sb	a2,-10(s0)
c0407584:	00c5d593          	srli	a1,a1,0xc
c0407588:	03f5f593          	andi	a1,a1,63
c040758c:	0805e593          	ori	a1,a1,128
c0407590:	feb40aa3          	sb	a1,-11(s0)
c0407594:	00400613          	li	a2,4
c0407598:	ff440593          	addi	a1,s0,-12
c040759c:	fffff097          	auipc	ra,0xfffff
c04075a0:	370080e7          	jalr	880(ra) # c040690c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17hd68be4623901a7e7E>
c04075a4:	00812403          	lw	s0,8(sp)
c04075a8:	00c12083          	lw	ra,12(sp)
c04075ac:	01010113          	addi	sp,sp,16
c04075b0:	00008067          	ret

c04075b4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h1cf3713cb551387eE>:
c04075b4:	fd010113          	addi	sp,sp,-48
c04075b8:	02112623          	sw	ra,44(sp)
c04075bc:	02812423          	sw	s0,40(sp)
c04075c0:	03010413          	addi	s0,sp,48
c04075c4:	00052503          	lw	a0,0(a0)
c04075c8:	fca42e23          	sw	a0,-36(s0)
c04075cc:	0145a503          	lw	a0,20(a1)
c04075d0:	fea42a23          	sw	a0,-12(s0)
c04075d4:	0105a503          	lw	a0,16(a1)
c04075d8:	fea42823          	sw	a0,-16(s0)
c04075dc:	00c5a503          	lw	a0,12(a1)
c04075e0:	fea42623          	sw	a0,-20(s0)
c04075e4:	0085a503          	lw	a0,8(a1)
c04075e8:	fea42423          	sw	a0,-24(s0)
c04075ec:	0045a503          	lw	a0,4(a1)
c04075f0:	fea42223          	sw	a0,-28(s0)
c04075f4:	0005a503          	lw	a0,0(a1)
c04075f8:	fea42023          	sw	a0,-32(s0)
c04075fc:	c040a537          	lui	a0,0xc040a
c0407600:	71c50593          	addi	a1,a0,1820 # c040a71c <ebss+0xfffe95fc>
c0407604:	fdc40513          	addi	a0,s0,-36
c0407608:	fe040613          	addi	a2,s0,-32
c040760c:	ffffe097          	auipc	ra,0xffffe
c0407610:	03c080e7          	jalr	60(ra) # c0405648 <_ZN4core3fmt5write17haf1658a399614263E>
c0407614:	02812403          	lw	s0,40(sp)
c0407618:	02c12083          	lw	ra,44(sp)
c040761c:	03010113          	addi	sp,sp,48
c0407620:	00008067          	ret

c0407624 <memcpy>:
c0407624:	ff010113          	addi	sp,sp,-16
c0407628:	00112623          	sw	ra,12(sp)
c040762c:	00812423          	sw	s0,8(sp)
c0407630:	01010413          	addi	s0,sp,16
c0407634:	02060063          	beqz	a2,c0407654 <memcpy+0x30>
c0407638:	00050693          	mv	a3,a0
c040763c:	00058703          	lb	a4,0(a1)
c0407640:	00e68023          	sb	a4,0(a3)
c0407644:	00158593          	addi	a1,a1,1
c0407648:	00168693          	addi	a3,a3,1
c040764c:	fff60613          	addi	a2,a2,-1
c0407650:	fe0616e3          	bnez	a2,c040763c <memcpy+0x18>
c0407654:	00812403          	lw	s0,8(sp)
c0407658:	00c12083          	lw	ra,12(sp)
c040765c:	01010113          	addi	sp,sp,16
c0407660:	00008067          	ret

c0407664 <memset>:
c0407664:	ff010113          	addi	sp,sp,-16
c0407668:	00112623          	sw	ra,12(sp)
c040766c:	00812423          	sw	s0,8(sp)
c0407670:	01010413          	addi	s0,sp,16
c0407674:	00060c63          	beqz	a2,c040768c <memset+0x28>
c0407678:	00050693          	mv	a3,a0
c040767c:	00b68023          	sb	a1,0(a3)
c0407680:	00168693          	addi	a3,a3,1
c0407684:	fff60613          	addi	a2,a2,-1
c0407688:	fe061ae3          	bnez	a2,c040767c <memset+0x18>
c040768c:	00812403          	lw	s0,8(sp)
c0407690:	00c12083          	lw	ra,12(sp)
c0407694:	01010113          	addi	sp,sp,16
c0407698:	00008067          	ret

c040769c <bcmp>:
c040769c:	ff010113          	addi	sp,sp,-16
c04076a0:	00112623          	sw	ra,12(sp)
c04076a4:	00812423          	sw	s0,8(sp)
c04076a8:	01010413          	addi	s0,sp,16
c04076ac:	02060063          	beqz	a2,c04076cc <bcmp+0x30>
c04076b0:	0005c683          	lbu	a3,0(a1)
c04076b4:	00054703          	lbu	a4,0(a0)
c04076b8:	02d71463          	bne	a4,a3,c04076e0 <bcmp+0x44>
c04076bc:	00150513          	addi	a0,a0,1
c04076c0:	00158593          	addi	a1,a1,1
c04076c4:	fff60613          	addi	a2,a2,-1
c04076c8:	fe0614e3          	bnez	a2,c04076b0 <bcmp+0x14>
c04076cc:	00000513          	li	a0,0
c04076d0:	00812403          	lw	s0,8(sp)
c04076d4:	00c12083          	lw	ra,12(sp)
c04076d8:	01010113          	addi	sp,sp,16
c04076dc:	00008067          	ret
c04076e0:	40d70533          	sub	a0,a4,a3
c04076e4:	00812403          	lw	s0,8(sp)
c04076e8:	00c12083          	lw	ra,12(sp)
c04076ec:	01010113          	addi	sp,sp,16
c04076f0:	00008067          	ret
	...

Disassembly of section .rodata:

c0408000 <srodata>:
c0408000:	000a                	c.slli	zero,0x2
	...

c0408004 <.Lanon.20fdb5f91672123e020b00576c6637e3.2>:
c0408004:	8000                	0x8000
c0408006:	c040                	sw	s0,4(s0)
c0408008:	0000                	unimp
c040800a:	0000                	unimp
c040800c:	8000                	0x8000
c040800e:	c040                	sw	s0,4(s0)
c0408010:	0001                	nop
	...

c0408014 <.Lanon.20fdb5f91672123e020b00576c6637e3.3>:
c0408014:	2b2b2b2b          	0x2b2b2b2b
c0408018:	6920                	flw	fs0,80(a0)
c040801a:	696e                	flw	fs2,216(sp)
c040801c:	5f74                	lw	a3,124(a4)
c040801e:	6568                	flw	fa0,76(a0)
c0408020:	7061                	c.lui	zero,0xffff8
c0408022:	2020                	fld	fs0,64(s0)
c0408024:	2b20                	fld	fs0,80(a4)
c0408026:	002b2b2b          	0x2b2b2b
	...

c040802c <.Lanon.20fdb5f91672123e020b00576c6637e3.4>:
c040802c:	8014                	0x8014
c040802e:	c040                	sw	s0,4(s0)
c0408030:	0015                	c.nop	5
	...

c0408034 <.Lanon.20fdb5f91672123e020b00576c6637e3.5>:
c0408034:	2b2b2b2b          	0x2b2b2b2b
c0408038:	75746573          	csrrsi	a0,0x757,8
c040803c:	2070                	fld	fa2,192(s0)
c040803e:	656d                	lui	a0,0x1b
c0408040:	6f6d                	lui	t5,0x1b
c0408042:	7972                	flw	fs2,60(sp)
c0408044:	2b21                	jal	c040855c <.Lanon.218e553589b197b83ff66e63df650c56.13+0x54>
c0408046:	002b2b2b          	0x2b2b2b
	...

c040804c <.Lanon.20fdb5f91672123e020b00576c6637e3.6>:
c040804c:	8034                	0x8034
c040804e:	c040                	sw	s0,4(s0)
c0408050:	0015                	c.nop	5
	...

c0408054 <.Lanon.20fdb5f91672123e020b00576c6637e3.7>:
c0408054:	6c61                	lui	s8,0x18
c0408056:	6f6c                	flw	fa1,92(a4)
c0408058:	72655f63          	bge	a0,t1,c0408796 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.1+0x8>
c040805c:	6f72                	flw	ft10,28(sp)
c040805e:	5f72                	lw	t5,60(sp)
c0408060:	6168                	flw	fa0,68(a0)
c0408062:	646e                	flw	fs0,216(sp)
c0408064:	656c                	flw	fa1,76(a0)
c0408066:	2072                	fld	ft0,280(sp)
c0408068:	6f64                	flw	fs1,92(a4)
c040806a:	6e20                	flw	fs0,88(a2)
c040806c:	6968746f          	jal	s0,c048f702 <ebss+0x6e5e2>
c0408070:	676e                	flw	fa4,216(sp)
c0408072:	6220                	flw	fs0,64(a2)
c0408074:	7475                	lui	s0,0xffffd
c0408076:	7020                	flw	fs0,96(s0)
c0408078:	6e61                	lui	t3,0x18
c040807a:	6369                	lui	t1,0x1a
c040807c:	                	lui	t1,0xfffe8

c040807d <.Lanon.20fdb5f91672123e020b00576c6637e3.8>:
c040807d:	2f637273          	csrrci	tp,0x2f6,6
c0408081:	656d                	lui	a0,0x1b
c0408083:	6f6d                	lui	t5,0x1b
c0408085:	7972                	flw	fs2,60(sp)
c0408087:	646f6d2f          	0x646f6d2f
c040808b:	722e                	flw	ft4,232(sp)
c040808d:	          	0x54000073

c0408090 <.Lanon.20fdb5f91672123e020b00576c6637e3.9>:
c0408090:	8054                	0x8054
c0408092:	c040                	sw	s0,4(s0)
c0408094:	0029                	c.nop	10
c0408096:	0000                	unimp
c0408098:	807d                	srli	s0,s0,0x1f
c040809a:	c040                	sw	s0,4(s0)
c040809c:	0011                	c.nop	4
c040809e:	0000                	unimp
c04080a0:	004d                	c.nop	19
c04080a2:	0000                	unimp
c04080a4:	0005                	c.nop	1
	...

c04080b0 <str.0>:
c04080b0:	2f637273          	csrrci	tp,0x2f6,6
c04080b4:	656d                	lui	a0,0x1b
c04080b6:	6f6d                	lui	t5,0x1b
c04080b8:	7972                	flw	fs2,60(sp)
c04080ba:	6172662f          	0x6172662f
c04080be:	656d                	lui	a0,0x1b
c04080c0:	615f 6c6c 636f      	0x636f6c6c615f
c04080c6:	7461                	lui	s0,0xffff8
c04080c8:	722e726f          	jal	tp,c04ef7ea <ebss+0xce6ca>
c04080cc:	00000073          	ecall

c04080d0 <anon.b8d8dae3ceca9b7c6851bce45736d576.0.llvm.10216764331410938785>:
c04080d0:	80b0                	0x80b0
c04080d2:	c040                	sw	s0,4(s0)
c04080d4:	001d                	c.nop	7
c04080d6:	0000                	unimp
c04080d8:	001c                	0x1c
c04080da:	0000                	unimp
c04080dc:	00000027          	0x27

c04080e0 <anon.b8d8dae3ceca9b7c6851bce45736d576.1.llvm.10216764331410938785>:
c04080e0:	80b0                	0x80b0
c04080e2:	c040                	sw	s0,4(s0)
c04080e4:	001d                	c.nop	7
c04080e6:	0000                	unimp
c04080e8:	001d                	c.nop	7
c04080ea:	0000                	unimp
c04080ec:	0020                	addi	s0,sp,8
	...

c04080f0 <anon.b8d8dae3ceca9b7c6851bce45736d576.2.llvm.10216764331410938785>:
c04080f0:	80b0                	0x80b0
c04080f2:	c040                	sw	s0,4(s0)
c04080f4:	001d                	c.nop	7
c04080f6:	0000                	unimp
c04080f8:	001e                	c.slli	zero,0x7
c04080fa:	0000                	unimp
c04080fc:	0032                	c.slli	zero,0xc
	...

c0408100 <anon.b8d8dae3ceca9b7c6851bce45736d576.3.llvm.10216764331410938785>:
c0408100:	80b0                	0x80b0
c0408102:	c040                	sw	s0,4(s0)
c0408104:	001d                	c.nop	7
c0408106:	0000                	unimp
c0408108:	001e                	c.slli	zero,0x7
c040810a:	0000                	unimp
c040810c:	00000043          	fmadd.s	ft0,ft0,ft0,ft0,rne

c0408110 <anon.b8d8dae3ceca9b7c6851bce45736d576.4.llvm.10216764331410938785>:
c0408110:	80b0                	0x80b0
c0408112:	c040                	sw	s0,4(s0)
c0408114:	001d                	c.nop	7
c0408116:	0000                	unimp
c0408118:	001e                	c.slli	zero,0x7
c040811a:	0000                	unimp
c040811c:	0026                	c.slli	zero,0x9
	...

c0408120 <.Lanon.b8d8dae3ceca9b7c6851bce45736d576.5>:
c0408120:	6870                	flw	fa2,84(s0)
c0408122:	7379                	lui	t1,0xffffe
c0408124:	6369                	lui	t1,0x1a
c0408126:	6c61                	lui	s8,0x18
c0408128:	6d20                	flw	fs0,88(a0)
c040812a:	6d65                	lui	s10,0x19
c040812c:	2079726f          	jal	tp,c049fb32 <ebss+0x7ea12>
c0408130:	6564                	flw	fs1,76(a0)
c0408132:	6c70                	flw	fa2,92(s0)
c0408134:	7465                	lui	s0,0xffff9
c0408136:	6465                	lui	s0,0x19
c0408138:	                	lui	t1,0xfffe8

c0408139 <.Lanon.b8d8dae3ceca9b7c6851bce45736d576.6>:
c0408139:	2f637273          	csrrci	tp,0x2f6,6
c040813d:	656d                	lui	a0,0x1b
c040813f:	6f6d                	lui	t5,0x1b
c0408141:	7972                	flw	fs2,60(sp)
c0408143:	6172662f          	0x6172662f
c0408147:	656d                	lui	a0,0x1b
c0408149:	615f 6c6c 636f      	0x636f6c6c615f
c040814f:	7461                	lui	s0,0xffff8
c0408151:	722e726f          	jal	tp,c04ef873 <ebss+0xce753>
c0408155:	          	0x20000073

c0408158 <anon.b8d8dae3ceca9b7c6851bce45736d576.7.llvm.10216764331410938785>:
c0408158:	8120                	0x8120
c040815a:	c040                	sw	s0,4(s0)
c040815c:	0019                	c.nop	6
c040815e:	0000                	unimp
c0408160:	8139                	srli	a0,a0,0xe
c0408162:	c040                	sw	s0,4(s0)
c0408164:	001d                	c.nop	7
c0408166:	0000                	unimp
c0408168:	0026                	c.slli	zero,0x9
c040816a:	0000                	unimp
c040816c:	000d                	c.nop	3
	...

c0408170 <anon.b8d8dae3ceca9b7c6851bce45736d576.8.llvm.10216764331410938785>:
c0408170:	80b0                	0x80b0
c0408172:	c040                	sw	s0,4(s0)
c0408174:	001d                	c.nop	7
c0408176:	0000                	unimp
c0408178:	002a                	c.slli	zero,0xa
c040817a:	0000                	unimp
c040817c:	0010                	0x10
	...

c0408180 <anon.b8d8dae3ceca9b7c6851bce45736d576.9.llvm.10216764331410938785>:
c0408180:	80b0                	0x80b0
c0408182:	c040                	sw	s0,4(s0)
c0408184:	001d                	c.nop	7
c0408186:	0000                	unimp
c0408188:	002d                	c.nop	11
c040818a:	0000                	unimp
c040818c:	0009                	c.nop	2
	...

c0408190 <anon.b8d8dae3ceca9b7c6851bce45736d576.10.llvm.10216764331410938785>:
c0408190:	80b0                	0x80b0
c0408192:	c040                	sw	s0,4(s0)
c0408194:	001d                	c.nop	7
c0408196:	0000                	unimp
c0408198:	0030                	addi	a2,sp,8
c040819a:	0000                	unimp
c040819c:	0019                	c.nop	6
	...

c04081a0 <anon.b8d8dae3ceca9b7c6851bce45736d576.11.llvm.10216764331410938785>:
c04081a0:	80b0                	0x80b0
c04081a2:	c040                	sw	s0,4(s0)
c04081a4:	001d                	c.nop	7
c04081a6:	0000                	unimp
c04081a8:	0030                	addi	a2,sp,8
c04081aa:	0000                	unimp
c04081ac:	002a                	c.slli	zero,0xa
	...

c04081b0 <anon.b8d8dae3ceca9b7c6851bce45736d576.12.llvm.10216764331410938785>:
c04081b0:	80b0                	0x80b0
c04081b2:	c040                	sw	s0,4(s0)
c04081b4:	001d                	c.nop	7
c04081b6:	0000                	unimp
c04081b8:	0030                	addi	a2,sp,8
c04081ba:	0000                	unimp
c04081bc:	000d                	c.nop	3
	...

c04081c0 <.Lanon.3e9e69644c8eb34d0ac408ca7cf5fa89.1>:
c04081c0:	000a                	c.slli	zero,0x2
	...

c04081c4 <.Lanon.3e9e69644c8eb34d0ac408ca7cf5fa89.2>:
c04081c4:	81c0                	0x81c0
c04081c6:	c040                	sw	s0,4(s0)
c04081c8:	0000                	unimp
c04081ca:	0000                	unimp
c04081cc:	81c0                	0x81c0
c04081ce:	c040                	sw	s0,4(s0)
c04081d0:	0001                	nop
	...

c04081d4 <.Lanon.3e9e69644c8eb34d0ac408ca7cf5fa89.3>:
c04081d4:	81c0                	0x81c0
c04081d6:	c040                	sw	s0,4(s0)
c04081d8:	0000                	unimp
	...

c04081dc <.Lanon.3e9e69644c8eb34d0ac408ca7cf5fa89.4>:
c04081dc:	6261                	lui	tp,0x18
c04081de:	2174726f          	jal	tp,c044fbf4 <ebss+0x2ead4>

c04081e2 <.Lanon.3e9e69644c8eb34d0ac408ca7cf5fa89.5>:
c04081e2:	2f637273          	csrrci	tp,0x2f6,6
c04081e6:	616c                	flw	fa1,68(a0)
c04081e8:	676e                	flw	fa4,216(sp)
c04081ea:	695f 6574 736d      	0x736d6574695f
c04081f0:	722e                	flw	ft4,232(sp)
c04081f2:	          	0x81dc0073

c04081f4 <.Lanon.3e9e69644c8eb34d0ac408ca7cf5fa89.6>:
c04081f4:	81dc                	0x81dc
c04081f6:	c040                	sw	s0,4(s0)
c04081f8:	0006                	c.slli	zero,0x1
c04081fa:	0000                	unimp
c04081fc:	81e2                	mv	gp,s8
c04081fe:	c040                	sw	s0,4(s0)
c0408200:	0011                	c.nop	4
c0408202:	0000                	unimp
c0408204:	0000000b          	0xb
c0408208:	0005                	c.nop	1
	...

c040820c <.Lanon.4ab3788fde0b58c27472dbad92880873.0>:
c040820c:	7254                	flw	fa3,36(a2)
c040820e:	7061                	c.lui	zero,0xffff8
c0408210:	7246                	flw	ft4,112(sp)
c0408212:	6d61                	lui	s10,0x18
c0408214:	                	lui	a6,0xffff9

c0408215 <.Lanon.4ab3788fde0b58c27472dbad92880873.1>:
c0408215:	0078                	addi	a4,sp,12
	...

c0408218 <.Lanon.4ab3788fde0b58c27472dbad92880873.2>:
c0408218:	09ac                	addi	a1,sp,216
c040821a:	c040                	sw	s0,4(s0)
c040821c:	0004                	0x4
c040821e:	0000                	unimp
c0408220:	0004                	0x4
c0408222:	0000                	unimp
c0408224:	2414                	fld	fa3,8(s0)
c0408226:	c040                	sw	s0,4(s0)

c0408228 <.Lanon.4ab3788fde0b58c27472dbad92880873.3>:
c0408228:	61747373          	csrrci	t1,0x617,8
c040822c:	7574                	flw	fa3,108(a0)
c040822e:	          	0x9ac0073

c0408230 <.Lanon.4ab3788fde0b58c27472dbad92880873.4>:
c0408230:	09ac                	addi	a1,sp,216
c0408232:	c040                	sw	s0,4(s0)
c0408234:	0004                	0x4
c0408236:	0000                	unimp
c0408238:	0004                	0x4
c040823a:	0000                	unimp
c040823c:	095c                	addi	a5,sp,148
c040823e:	c040                	sw	s0,4(s0)
c0408240:	0440                	addi	s0,sp,516
c0408242:	0008                	0x8
c0408244:	7420                	flw	fs0,104(s0)
c0408246:	2020206f          	j	c040a448 <anon.e751f650313ada8e74ab7a6897452231.60.llvm.5375085799470840418+0x4a0>
c040824a:	2020                	fld	fs0,64(s0)
c040824c:	3c20                	fld	fs0,120(s0)
c040824e:	203d                	jal	c040827c <.Lanon.4ab3788fde0b58c27472dbad92880873.9+0x8>
c0408250:	63706573          	csrrsi	a0,0x637,0
c0408254:	6962                	flw	fs2,24(sp)
c0408256:	7374                	flw	fa3,100(a4)

c0408258 <.Lanon.4ab3788fde0b58c27472dbad92880873.6>:
c0408258:	09ac                	addi	a1,sp,216
c040825a:	c040                	sw	s0,4(s0)
c040825c:	0004                	0x4
c040825e:	0000                	unimp
c0408260:	0004                	0x4
c0408262:	0000                	unimp
c0408264:	243c                	fld	fa5,72(s0)
c0408266:	c040                	sw	s0,4(s0)

c0408268 <.Lanon.4ab3788fde0b58c27472dbad92880873.7>:
c0408268:	61767473          	csrrci	s0,0x617,12
c040826c:	                	flw	fa1,100(a4)

c040826d <.Lanon.4ab3788fde0b58c27472dbad92880873.8>:
c040826d:	75616373          	csrrsi	t1,0x756,2
c0408271:	          	csrrsi	a0,0xac0,0

c0408274 <.Lanon.4ab3788fde0b58c27472dbad92880873.9>:
c0408274:	09ac                	addi	a1,sp,216
c0408276:	c040                	sw	s0,4(s0)
c0408278:	0004                	0x4
c040827a:	0000                	unimp
c040827c:	0004                	0x4
c040827e:	0000                	unimp
c0408280:	0934                	addi	a3,sp,152
c0408282:	c040                	sw	s0,4(s0)

c0408284 <anon.2ee2e50b80fe5686a8cece7ca511b2cc.0.llvm.4330673224761888775>:
c0408284:	6c6c6163          	bltu	s8,t1,c0408946 <.Lanon.3504960b247a389d2058be32dbc673fe.0+0x2>
c0408288:	6465                	lui	s0,0x19
c040828a:	6020                	flw	fs0,64(s0)
c040828c:	6552                	flw	fa0,20(sp)
c040828e:	746c7573          	csrrci	a0,0x746,24
c0408292:	3a3a                	fld	fs4,424(sp)
c0408294:	6e75                	lui	t3,0x1d
c0408296:	70617277          	0x70617277
c040829a:	2928                	fld	fa0,80(a0)
c040829c:	2060                	fld	fs0,192(s0)
c040829e:	61206e6f          	jal	t3,c040e8b0 <edata+0x18b0>
c04082a2:	206e                	fld	ft0,216(sp)
c04082a4:	4560                	lw	s0,76(a0)
c04082a6:	7272                	flw	ft4,60(sp)
c04082a8:	2060                	fld	fs0,192(s0)
c04082aa:	6176                	flw	ft2,92(sp)
c04082ac:	756c                	flw	fa1,108(a0)
c04082ae:	0065                	c.nop	25

c04082b0 <anon.2ee2e50b80fe5686a8cece7ca511b2cc.1.llvm.4330673224761888775>:
c04082b0:	0ef0                	addi	a2,sp,860
c04082b2:	c040                	sw	s0,4(s0)
c04082b4:	0008                	0x8
c04082b6:	0000                	unimp
c04082b8:	0004                	0x4
c04082ba:	0000                	unimp
c04082bc:	34a8                	fld	fa0,104(s1)
c04082be:	c040                	sw	s0,4(s0)

c04082c0 <anon.2ee2e50b80fe5686a8cece7ca511b2cc.2.llvm.4330673224761888775>:
c04082c0:	0f10                	addi	a2,sp,912
c04082c2:	c040                	sw	s0,4(s0)
c04082c4:	0001                	nop
c04082c6:	0000                	unimp
c04082c8:	0001                	nop
c04082ca:	0000                	unimp
c04082cc:	3418                	fld	fa4,40(s0)
c04082ce:	c040                	sw	s0,4(s0)

c04082d0 <anon.2ee2e50b80fe5686a8cece7ca511b2cc.4.llvm.4330673224761888775>:
c04082d0:	6166                	flw	ft2,88(sp)
c04082d2:	6c69                	lui	s8,0x1a
c04082d4:	7420                	flw	fs0,104(s0)
c04082d6:	6567206f          	j	c047a92c <ebss+0x5980c>
c04082da:	2074                	fld	fa3,192(s0)
c04082dc:	6e61                	lui	t3,0x18
c04082de:	6520                	flw	fs0,72(a0)
c04082e0:	746e                	flw	fs0,248(sp)
c04082e2:	7972                	flw	fs2,60(sp)
c04082e4:	                	addi	s4,s4,8

c04082e5 <.Lanon.2ee2e50b80fe5686a8cece7ca511b2cc.6>:
c04082e5:	000a                	c.slli	zero,0x2
	...

c04082e8 <anon.2ee2e50b80fe5686a8cece7ca511b2cc.7.llvm.4330673224761888775>:
c04082e8:	82e5                	srli	a3,a3,0x19
c04082ea:	c040                	sw	s0,4(s0)
c04082ec:	0000                	unimp
c04082ee:	0000                	unimp
c04082f0:	82e5                	srli	a3,a3,0x19
c04082f2:	c040                	sw	s0,4(s0)
c04082f4:	0001                	nop
	...

c04082f8 <.Lanon.2ee2e50b80fe5686a8cece7ca511b2cc.8>:
c04082f8:	74697773          	csrrci	a4,0x746,18
c04082fc:	73206863          	bltu	zero,s2,c0408a2c <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.10+0xb>
c0408300:	7461                	lui	s0,0xffff8
c0408302:	2070                	fld	fa2,192(s0)
c0408304:	7266                	flw	ft4,120(sp)
c0408306:	00206d6f          	jal	s10,c040e308 <edata+0x1308>
	...

c040830c <anon.2ee2e50b80fe5686a8cece7ca511b2cc.10.llvm.4330673224761888775>:
c040830c:	82f8                	0x82f8
c040830e:	c040                	sw	s0,4(s0)
c0408310:	0011                	c.nop	4
c0408312:	0000                	unimp
c0408314:	8244                	0x8244
c0408316:	c040                	sw	s0,4(s0)
c0408318:	0004                	0x4
	...

c040831c <anon.2ee2e50b80fe5686a8cece7ca511b2cc.11.llvm.4330673224761888775>:
c040831c:	0001                	nop
c040831e:	0000                	unimp
c0408320:	0000                	unimp
c0408322:	0000                	unimp
c0408324:	0020                	addi	s0,sp,8
c0408326:	0000                	unimp
c0408328:	0004                	0x4
c040832a:	0000                	unimp
c040832c:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408330:	0000                	unimp
c0408332:	0000                	unimp
c0408334:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408338:	0000                	unimp
c040833a:	0000                	unimp
c040833c:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408340:	0001                	nop
c0408342:	0000                	unimp
c0408344:	0001                	nop
c0408346:	0000                	unimp
c0408348:	0020                	addi	s0,sp,8
c040834a:	0000                	unimp
c040834c:	0004                	0x4
c040834e:	0000                	unimp
c0408350:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408354:	0000                	unimp
c0408356:	0000                	unimp
c0408358:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c040835c:	0000                	unimp
c040835e:	0000                	unimp
c0408360:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>

c0408364 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.1>:
c0408364:	000a                	c.slli	zero,0x2
	...

c0408368 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.2>:
c0408368:	8364                	0x8364
c040836a:	c040                	sw	s0,4(s0)
c040836c:	0000                	unimp
c040836e:	0000                	unimp
c0408370:	8364                	0x8364
c0408372:	c040                	sw	s0,4(s0)
c0408374:	0001                	nop
	...

c0408378 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.3>:
c0408378:	6372                	flw	ft6,28(sp)
c040837a:	5f65726f          	jal	tp,c045f970 <ebss+0x3e850>
c040837e:	70657473          	csrrci	s0,0x706,10
c0408382:	625f 5f79 7473      	0x74735f79625f
c0408388:	7065                	c.lui	zero,0xffff9
c040838a:	6f20                	flw	fs0,88(a4)
c040838c:	73692073          	csrs	0x736,s2
c0408390:	7220                	flw	fs0,96(a2)
c0408392:	6e75                	lui	t3,0x1d
c0408394:	696e                	flw	fs2,216(sp)
c0408396:	676e                	flw	fa4,216(sp)
c0408398:	0021                	c.nop	8
	...

c040839c <.Lanon.db373ce25dfeaf41079e038efc6d12ac.4>:
c040839c:	8378                	0x8378
c040839e:	c040                	sw	s0,4(s0)
c04083a0:	0021                	c.nop	8
	...

c04083a4 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.5>:
c04083a4:	7266                	flw	ft4,120(sp)
c04083a6:	6565                	lui	a0,0x19
c04083a8:	7020                	flw	fs0,96(s0)
c04083aa:	7968                	flw	fa0,116(a0)
c04083ac:	61636973          	csrrsi	s2,0x616,6
c04083b0:	206c                	fld	fa1,192(s0)
c04083b2:	656d                	lui	a0,0x1b
c04083b4:	6f6d                	lui	t5,0x1b
c04083b6:	7972                	flw	fs2,60(sp)
c04083b8:	7020                	flw	fs0,96(s0)
c04083ba:	6e70                	flw	fa2,92(a2)
c04083bc:	3d20                	fld	fs0,120(a0)
c04083be:	5b20                	lw	s0,112(a4)

c04083c0 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.6>:
c04083c0:	202c                	fld	fa1,64(s0)

c04083c2 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.7>:
c04083c2:	0029                	c.nop	10

c04083c4 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.8>:
c04083c4:	83a4                	0x83a4
c04083c6:	c040                	sw	s0,4(s0)
c04083c8:	001c                	0x1c
c04083ca:	0000                	unimp
c04083cc:	83c0                	0x83c0
c04083ce:	c040                	sw	s0,4(s0)
c04083d0:	0002                	c.slli64	zero
c04083d2:	0000                	unimp
c04083d4:	83c2                	mv	t2,a6
c04083d6:	c040                	sw	s0,4(s0)
c04083d8:	0001                	nop
	...

c04083dc <.Lanon.db373ce25dfeaf41079e038efc6d12ac.10>:
c04083dc:	0001                	nop
c04083de:	0000                	unimp
c04083e0:	0000                	unimp
c04083e2:	0000                	unimp
c04083e4:	0020                	addi	s0,sp,8
c04083e6:	0000                	unimp
c04083e8:	0004                	0x4
c04083ea:	0000                	unimp
c04083ec:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c04083f0:	0000                	unimp
c04083f2:	0000                	unimp
c04083f4:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c04083f8:	0000                	unimp
c04083fa:	0000                	unimp
c04083fc:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408400:	0001                	nop
c0408402:	0000                	unimp
c0408404:	0001                	nop
c0408406:	0000                	unimp
c0408408:	0020                	addi	s0,sp,8
c040840a:	0000                	unimp
c040840c:	0004                	0x4
c040840e:	0000                	unimp
c0408410:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408414:	0000                	unimp
c0408416:	0000                	unimp
c0408418:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c040841c:	0000                	unimp
c040841e:	0000                	unimp
c0408420:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>

c0408424 <.Lanon.218e553589b197b83ff66e63df650c56.1>:
c0408424:	000a                	c.slli	zero,0x2
	...

c0408428 <.Lanon.218e553589b197b83ff66e63df650c56.2>:
c0408428:	8424                	0x8424
c040842a:	c040                	sw	s0,4(s0)
c040842c:	0000                	unimp
c040842e:	0000                	unimp
c0408430:	8424                	0x8424
c0408432:	c040                	sw	s0,4(s0)
c0408434:	0001                	nop
	...

c0408438 <.Lanon.218e553589b197b83ff66e63df650c56.3>:
c0408438:	2b2b2b2b          	0x2b2b2b2b
c040843c:	75746573          	csrrsi	a0,0x757,8
c0408440:	2070                	fld	fa2,192(s0)
c0408442:	6e69                	lui	t3,0x1a
c0408444:	6574                	flw	fa3,76(a0)
c0408446:	7272                	flw	ft4,60(sp)
c0408448:	7075                	c.lui	zero,0xffffd
c040844a:	2074                	fld	fa3,192(s0)
c040844c:	2b21                	jal	c0408964 <.Lanon.3504960b247a389d2058be32dbc673fe.1+0xf>
c040844e:	002b2b2b          	0x2b2b2b
	...

c0408454 <.Lanon.218e553589b197b83ff66e63df650c56.4>:
c0408454:	8438                	0x8438
c0408456:	c040                	sw	s0,4(s0)
c0408458:	0019                	c.nop	6
	...

c040845c <.Lanon.218e553589b197b83ff66e63df650c56.5>:
c040845c:	6e75                	lui	t3,0x1d
c040845e:	7865                	lui	a6,0xffff9
c0408460:	6570                	flw	fa2,76(a0)
c0408462:	64657463          	bgeu	a0,t1,c0408aaa <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.19+0x7>
c0408466:	7420                	flw	fs0,104(s0)
c0408468:	6172                	flw	ft2,28(sp)
c040846a:	3a70                	fld	fa2,240(a2)
c040846c:	0020                	addi	s0,sp,8
	...

c0408470 <.Lanon.218e553589b197b83ff66e63df650c56.6>:
c0408470:	845c                	0x845c
c0408472:	c040                	sw	s0,4(s0)
c0408474:	0011                	c.nop	4
	...

c0408478 <.Lanon.218e553589b197b83ff66e63df650c56.7>:
c0408478:	0001                	nop
c040847a:	0000                	unimp
c040847c:	0000                	unimp
c040847e:	0000                	unimp
c0408480:	0020                	addi	s0,sp,8
c0408482:	0000                	unimp
c0408484:	0014                	0x14
c0408486:	0000                	unimp
c0408488:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c040848c:	0000                	unimp
c040848e:	0000                	unimp
c0408490:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408494:	0000                	unimp
c0408496:	0000                	unimp
c0408498:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c040849c:	2029                	jal	c04084a6 <.Lanon.218e553589b197b83ff66e63df650c56.7+0x2e>
c040849e:	6e656877          	0x6e656877
c04084a2:	7320                	flw	fs0,96(a4)
c04084a4:	696c                	flw	fa1,84(a0)
c04084a6:	676e6963          	bltu	t3,s6,c0408b18 <.Lanon.469b247d53d9847b2053806bb31dcbe9.0+0x5>
c04084aa:	6020                	flw	fs0,64(s0)
c04084ac:	2f637273          	csrrci	tp,0x2f6,6
c04084b0:	6e69                	lui	t3,0x1a
c04084b2:	6574                	flw	fa3,76(a0)
c04084b4:	7272                	flw	ft4,60(sp)
c04084b6:	7075                	c.lui	zero,0xffffd
c04084b8:	2e74                	fld	fa3,216(a2)
c04084ba:	7372                	flw	ft6,60(sp)
c04084bc:	6e49                	lui	t3,0x12
c04084be:	75727473          	csrrci	s0,0x757,4
c04084c2:	6f697463          	bgeu	s2,s6,c0408baa <.Lanon.469b247d53d9847b2053806bb31dcbe9.2+0x12>
c04084c6:	466e                	lw	a2,216(sp)
c04084c8:	7561                	lui	a0,0xffff8
c04084ca:	746c                	flw	fa1,108(s0)

c04084cc <.Lanon.218e553589b197b83ff66e63df650c56.9>:
c04084cc:	84ac                	0x84ac
c04084ce:	c040                	sw	s0,4(s0)
c04084d0:	0010                	0x10
c04084d2:	0000                	unimp
c04084d4:	001c                	0x1c
c04084d6:	0000                	unimp
c04084d8:	000e                	c.slli	zero,0x3
	...

c04084dc <.Lanon.218e553589b197b83ff66e63df650c56.10>:
c04084dc:	4020                	lw	s0,64(s0)
c04084de:	                	fld	fs0,64(s0)

c04084df <.Lanon.218e553589b197b83ff66e63df650c56.11>:
c04084df:	6920                	flw	fs0,80(a0)
c04084e1:	736e                	flw	ft6,248(sp)
c04084e3:	7274                	flw	fa3,100(a2)
c04084e5:	6f697463          	bgeu	s2,s6,c0408bcd <.Lanon.469b247d53d9847b2053806bb31dcbe9.3+0x1d>
c04084e9:	206e                	fld	ft0,216(sp)
c04084eb:	203d                	jal	c0408519 <.Lanon.218e553589b197b83ff66e63df650c56.13+0x11>
c04084ed:	0000                	unimp
	...

c04084f0 <.Lanon.218e553589b197b83ff66e63df650c56.12>:
c04084f0:	8424                	0x8424
c04084f2:	c040                	sw	s0,4(s0)
c04084f4:	0000                	unimp
c04084f6:	0000                	unimp
c04084f8:	84dc                	0x84dc
c04084fa:	c040                	sw	s0,4(s0)
c04084fc:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408500:	84df c040 000e      	0xec04084df
	...

c0408508 <.Lanon.218e553589b197b83ff66e63df650c56.13>:
c0408508:	0001                	nop
c040850a:	0000                	unimp
c040850c:	0000                	unimp
c040850e:	0000                	unimp
c0408510:	0020                	addi	s0,sp,8
c0408512:	0000                	unimp
c0408514:	0000                	unimp
c0408516:	0000                	unimp
c0408518:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c040851c:	0000                	unimp
c040851e:	0000                	unimp
c0408520:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408524:	0000                	unimp
c0408526:	0000                	unimp
c0408528:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c040852c:	0001                	nop
c040852e:	0000                	unimp
c0408530:	0001                	nop
c0408532:	0000                	unimp
c0408534:	0020                	addi	s0,sp,8
c0408536:	0000                	unimp
c0408538:	0004                	0x4
c040853a:	0000                	unimp
c040853c:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408540:	0000                	unimp
c0408542:	0000                	unimp
c0408544:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408548:	0000                	unimp
c040854a:	0000                	unimp
c040854c:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408550:	0001                	nop
c0408552:	0000                	unimp
c0408554:	0002                	c.slli64	zero
c0408556:	0000                	unimp
c0408558:	0020                	addi	s0,sp,8
c040855a:	0000                	unimp
c040855c:	0004                	0x4
c040855e:	0000                	unimp
c0408560:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0408564:	0000                	unimp
c0408566:	0000                	unimp
c0408568:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c040856c:	0000                	unimp
c040856e:	0000                	unimp
c0408570:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>

c0408574 <.Lanon.218e553589b197b83ff66e63df650c56.14>:
c0408574:	6170                	flw	fa2,68(a0)
c0408576:	66206567          	0x66206567
c040857a:	7561                	lui	a0,0xffff8
c040857c:	746c                	flw	fa1,108(s0)
	...

c0408580 <.Lanon.218e553589b197b83ff66e63df650c56.15>:
c0408580:	8574                	0x8574
c0408582:	c040                	sw	s0,4(s0)
c0408584:	000a                	c.slli	zero,0x2
c0408586:	0000                	unimp
c0408588:	84ac                	0x84ac
c040858a:	c040                	sw	s0,4(s0)
c040858c:	0010                	0x10
c040858e:	0000                	unimp
c0408590:	0022                	c.slli	zero,0x8
c0408592:	0000                	unimp
c0408594:	0005                	c.nop	1
	...

c0408598 <.Lanon.218e553589b197b83ff66e63df650c56.16>:
c0408598:	2061                	jal	c0408620 <anon.67c4281cad64b9cd3d7a775191b69eb8.2.llvm.18020723203338019030+0x10>
c040859a:	7262                	flw	ft4,56(sp)
c040859c:	6165                	addi	sp,sp,112
c040859e:	696f706b          	0x696f706b
c04085a2:	746e                	flw	fs0,248(sp)
c04085a4:	7320                	flw	fs0,96(a4)
c04085a6:	7465                	lui	s0,0xffff9
c04085a8:	6220                	flw	fs0,64(a2)
c04085aa:	2079                	jal	c0408638 <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.3+0x10>
c04085ac:	6e72656b          	0x6e72656b
c04085b0:	6c65                	lui	s8,0x19
	...

c04085b4 <.Lanon.218e553589b197b83ff66e63df650c56.17>:
c04085b4:	8598                	0x8598
c04085b6:	c040                	sw	s0,4(s0)
c04085b8:	001a                	c.slli	zero,0x6
c04085ba:	0000                	unimp
c04085bc:	84ac                	0x84ac
c04085be:	c040                	sw	s0,4(s0)
c04085c0:	0010                	0x10
c04085c2:	0000                	unimp
c04085c4:	0026                	c.slli	zero,0x9
c04085c6:	0000                	unimp
c04085c8:	0005                	c.nop	1
	...

c04085cc <.Lanon.218e553589b197b83ff66e63df650c56.18>:
c04085cc:	3031                	jal	c0407dd8 <bcmp+0x73c>
c04085ce:	7420                	flw	fs0,104(s0)
c04085d0:	6369                	lui	t1,0x1a
c04085d2:	0021736b          	0x21736b
	...

c04085d8 <.Lanon.218e553589b197b83ff66e63df650c56.19>:
c04085d8:	85cc                	0x85cc
c04085da:	c040                	sw	s0,4(s0)
c04085dc:	0009                	c.nop	2
	...

c04085e0 <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.0>:
c04085e0:	6e69                	lui	t3,0x1a
c04085e2:	6176                	flw	ft2,92(sp)
c04085e4:	696c                	flw	fa1,84(a0)
c04085e6:	2064                	fld	fs1,192(s0)
c04085e8:	656d                	lui	a0,0x1b
c04085ea:	6f6d                	lui	t5,0x1b
c04085ec:	7972                	flw	fs2,60(sp)
c04085ee:	6120                	flw	fs0,64(a0)
c04085f0:	6572                	flw	fa0,28(sp)
c04085f2:	2161                	jal	c0408a7a <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.16>

c04085f4 <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.1>:
c04085f4:	2f637273          	csrrci	tp,0x2f6,6
c04085f8:	656d                	lui	a0,0x1b
c04085fa:	6f6d                	lui	t5,0x1b
c04085fc:	7972                	flw	fs2,60(sp)
c04085fe:	6d656d2f          	0x6d656d2f
c0408602:	5f79726f          	jal	tp,c04a03f8 <ebss+0x7f2d8>
c0408606:	2f746573          	csrrsi	a0,0x2f7,8
c040860a:	6f6d                	lui	t5,0x1b
c040860c:	2e64                	fld	fs1,216(a2)
c040860e:	7372                	flw	ft6,60(sp)

c0408610 <anon.67c4281cad64b9cd3d7a775191b69eb8.2.llvm.18020723203338019030>:
c0408610:	85e0                	0x85e0
c0408612:	c040                	sw	s0,4(s0)
c0408614:	0014                	0x14
c0408616:	0000                	unimp
c0408618:	85f4                	0x85f4
c040861a:	c040                	sw	s0,4(s0)
c040861c:	001c                	0x1c
c040861e:	0000                	unimp
c0408620:	001a                	c.slli	zero,0x6
c0408622:	0000                	unimp
c0408624:	0009                	c.nop	2
	...

c0408628 <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.3>:
c0408628:	656d                	lui	a0,0x1b
c040862a:	6f6d                	lui	t5,0x1b
c040862c:	7972                	flw	fs2,60(sp)
c040862e:	6120                	flw	fs0,64(a0)
c0408630:	6572                	flw	fa0,28(sp)
c0408632:	2061                	jal	c04086ba <.Lanon.ef1e32be356f3f9ef2a716b864d40acf.0+0x1a>
c0408634:	7265766f          	jal	a2,c045fd5a <ebss+0x3ec3a>
c0408638:	616c                	flw	fa1,68(a0)
c040863a:	2170                	fld	fa2,192(a0)

c040863c <anon.67c4281cad64b9cd3d7a775191b69eb8.4.llvm.18020723203338019030>:
c040863c:	8628                	0x8628
c040863e:	c040                	sw	s0,4(s0)
c0408640:	0014                	0x14
c0408642:	0000                	unimp
c0408644:	85f4                	0x85f4
c0408646:	c040                	sw	s0,4(s0)
c0408648:	001c                	0x1c
c040864a:	0000                	unimp
c040864c:	0000001b          	0x1b
c0408650:	0009                	c.nop	2
	...

c0408654 <anon.67c4281cad64b9cd3d7a775191b69eb8.5.llvm.18020723203338019030>:
c0408654:	1c34                	addi	a3,sp,568
c0408656:	c040                	sw	s0,4(s0)
c0408658:	0004                	0x4
c040865a:	0000                	unimp
c040865c:	0004                	0x4
c040865e:	0000                	unimp
c0408660:	20cc                	fld	fa1,128(s1)
c0408662:	c040                	sw	s0,4(s0)
c0408664:	2130                	fld	fa2,64(a0)
c0408666:	c040                	sw	s0,4(s0)
c0408668:	221c                	fld	fa5,0(a2)
c040866a:	c040                	sw	s0,4(s0)
c040866c:	22b8                	fld	fa4,64(a3)
c040866e:	c040                	sw	s0,4(s0)

c0408670 <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.7>:
c0408670:	000a                	c.slli	zero,0x2
	...

c0408674 <anon.67c4281cad64b9cd3d7a775191b69eb8.8.llvm.18020723203338019030>:
c0408674:	8670                	0x8670
c0408676:	c040                	sw	s0,4(s0)
c0408678:	0000                	unimp
c040867a:	0000                	unimp
c040867c:	8670                	0x8670
c040867e:	c040                	sw	s0,4(s0)
c0408680:	0001                	nop
	...

c0408684 <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.9>:
c0408684:	616d                	addi	sp,sp,240
c0408686:	2070                	fld	fa2,192(s0)
c0408688:	6874                	flw	fa3,84(s0)
c040868a:	2065                	jal	c0408732 <anon.b1c4410cac36ab4f67756afc622625ca.0.llvm.10287687215439568533+0x6>
c040868c:	616c                	flw	fa1,68(a0)
c040868e:	6d207473          	csrrci	s0,0x6d2,0
c0408692:	6d65                	lui	s10,0x19
c0408694:	0079726f          	jal	tp,c049fe9a <ebss+0x7ed7a>

c0408698 <anon.67c4281cad64b9cd3d7a775191b69eb8.10.llvm.18020723203338019030>:
c0408698:	8684                	0x8684
c040869a:	c040                	sw	s0,4(s0)
c040869c:	00000013          	nop

c04086a0 <.Lanon.ef1e32be356f3f9ef2a716b864d40acf.0>:
c04086a0:	20ac                	fld	fa1,64(s1)
c04086a2:	c040                	sw	s0,4(s0)
c04086a4:	0004                	0x4
c04086a6:	0000                	unimp
c04086a8:	0004                	0x4
c04086aa:	0000                	unimp
c04086ac:	20cc                	fld	fa1,128(s1)
c04086ae:	c040                	sw	s0,4(s0)
c04086b0:	2130                	fld	fa2,64(a0)
c04086b2:	c040                	sw	s0,4(s0)
c04086b4:	221c                	fld	fa5,0(a2)
c04086b6:	c040                	sw	s0,4(s0)
c04086b8:	22b8                	fld	fa4,64(a3)
c04086ba:	c040                	sw	s0,4(s0)

c04086bc <.Lanon.ef1e32be356f3f9ef2a716b864d40acf.3>:
c04086bc:	694c                	flw	fa1,20(a0)
c04086be:	656e                	flw	fa0,216(sp)
c04086c0:	7261                	lui	tp,0xffff8

c04086c2 <.Lanon.ef1e32be356f3f9ef2a716b864d40acf.4>:
c04086c2:	7366666f          	jal	a2,c046edf8 <ebss+0x4dcd8>
c04086c6:	7465                	lui	s0,0xffff9

c04086c8 <.Lanon.ef1e32be356f3f9ef2a716b864d40acf.5>:
c04086c8:	20ac                	fld	fa1,64(s1)
c04086ca:	c040                	sw	s0,4(s0)
c04086cc:	0004                	0x4
c04086ce:	0000                	unimp
c04086d0:	0004                	0x4
c04086d2:	0000                	unimp
c04086d4:	243c                	fld	fa5,72(s0)
c04086d6:	c040                	sw	s0,4(s0)

c04086d8 <anon.3a342320428df2eb5cecb02962a6da2e.0.llvm.4442232217633764959>:
c04086d8:	24cc                	fld	fa1,136(s1)
c04086da:	c040                	sw	s0,4(s0)
c04086dc:	0004                	0x4
c04086de:	0000                	unimp
c04086e0:	0004                	0x4
c04086e2:	0000                	unimp
c04086e4:	274c                	fld	fa1,136(a4)
c04086e6:	c040                	sw	s0,4(s0)
c04086e8:	250c                	fld	fa1,8(a0)
c04086ea:	c040                	sw	s0,4(s0)
c04086ec:	26dc                	fld	fa5,136(a3)
c04086ee:	c040                	sw	s0,4(s0)

c04086f0 <anon.3a342320428df2eb5cecb02962a6da2e.1.llvm.4442232217633764959>:
c04086f0:	6c6c6163          	bltu	s8,t1,c0408db2 <.Lanon.0415ae5cbc1f30e87ada49ac63a3be34.3+0x88>
c04086f4:	6465                	lui	s0,0x19
c04086f6:	6020                	flw	fs0,64(s0)
c04086f8:	6552                	flw	fa0,20(sp)
c04086fa:	746c7573          	csrrci	a0,0x746,24
c04086fe:	3a3a                	fld	fs4,424(sp)
c0408700:	6e75                	lui	t3,0x1d
c0408702:	70617277          	0x70617277
c0408706:	2928                	fld	fa0,80(a0)
c0408708:	2060                	fld	fs0,192(s0)
c040870a:	61206e6f          	jal	t3,c040ed1c <edata+0x1d1c>
c040870e:	206e                	fld	ft0,216(sp)
c0408710:	4560                	lw	s0,76(a0)
c0408712:	7272                	flw	ft4,60(sp)
c0408714:	2060                	fld	fs0,192(s0)
c0408716:	6176                	flw	ft2,92(sp)
c0408718:	756c                	flw	fa1,108(a0)
c040871a:	0065                	c.nop	25

c040871c <anon.3a342320428df2eb5cecb02962a6da2e.2.llvm.4442232217633764959>:
c040871c:	24ec                	fld	fa1,200(s1)
c040871e:	c040                	sw	s0,4(s0)
c0408720:	0000                	unimp
c0408722:	0000                	unimp
c0408724:	0001                	nop
c0408726:	0000                	unimp
c0408728:	673c                	flw	fa5,72(a4)
c040872a:	c040                	sw	s0,4(s0)

c040872c <anon.b1c4410cac36ab4f67756afc622625ca.0.llvm.10287687215439568533>:
c040872c:	2914                	fld	fa3,16(a0)
c040872e:	c040                	sw	s0,4(s0)
c0408730:	0004                	0x4
c0408732:	0000                	unimp
c0408734:	0004                	0x4
c0408736:	0000                	unimp
c0408738:	243c                	fld	fa5,72(s0)
c040873a:	c040                	sw	s0,4(s0)

c040873c <.Lanon.b1c4410cac36ab4f67756afc622625ca.2>:
c040873c:	000a                	c.slli	zero,0x2
	...

c0408740 <anon.b1c4410cac36ab4f67756afc622625ca.3.llvm.10287687215439568533>:
c0408740:	873c                	0x873c
c0408742:	c040                	sw	s0,4(s0)
c0408744:	0000                	unimp
c0408746:	0000                	unimp
c0408748:	873c                	0x873c
c040874a:	c040                	sw	s0,4(s0)
c040874c:	0001                	nop
	...

c0408750 <.Lanon.b1c4410cac36ab4f67756afc622625ca.4>:
c0408750:	2b2b2b2b          	0x2b2b2b2b
c0408754:	75746573          	csrrsi	a0,0x757,8
c0408758:	2070                	fld	fa2,192(s0)
c040875a:	6974                	flw	fa3,84(a0)
c040875c:	656d                	lui	a0,0x1b
c040875e:	2072                	fld	ft0,280(sp)
c0408760:	2b21                	jal	c0408c78 <.Lanon.469b247d53d9847b2053806bb31dcbe9.8+0x4>
c0408762:	002b2b2b          	0x2b2b2b
	...

c0408768 <anon.b1c4410cac36ab4f67756afc622625ca.5.llvm.10287687215439568533>:
c0408768:	8750                	0x8750
c040876a:	c040                	sw	s0,4(s0)
c040876c:	0015                	c.nop	5
	...

c0408770 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.0>:
c0408770:	7361                	lui	t1,0xffff8
c0408772:	74726573          	csrrsi	a0,0x747,4
c0408776:	6f69                	lui	t5,0x1a
c0408778:	206e                	fld	ft0,216(sp)
c040877a:	6166                	flw	ft2,88(sp)
c040877c:	6c69                	lui	s8,0x1a
c040877e:	6465                	lui	s0,0x19
c0408780:	203a                	fld	ft0,392(sp)
c0408782:	72617473          	csrrci	s0,0x726,2
c0408786:	2074                	fld	fa3,192(s0)
c0408788:	3d3c                	fld	fa5,120(a0)
c040878a:	6520                	flw	fs0,72(a0)
c040878c:	646e                	flw	fs0,216(sp)

c040878e <.Lanon.1e74f9541c5b8561d785d487ee181d5a.1>:
c040878e:	6d6f682f          	0x6d6f682f
c0408792:	2f65                	jal	c0408f4a <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.17+0x2>
c0408794:	6166                	flw	ft2,88(sp)
c0408796:	7a6e                	flw	fs4,248(sp)
c0408798:	6968                	flw	fa0,84(a0)
c040879a:	6570                	flw	fa2,76(a0)
c040879c:	676e                	flw	fa4,216(sp)
c040879e:	61632e2f          	amoand.w	t3,s6,(t1)
c04087a2:	6772                	flw	fa4,28(sp)
c04087a4:	65722f6f          	jal	t5,c042b5fa <ebss+0xa4da>
c04087a8:	74736967          	0x74736967
c04087ac:	7972                	flw	fs2,60(sp)
c04087ae:	6372732f          	0x6372732f
c04087b2:	7469672f          	0x7469672f
c04087b6:	7568                	flw	fa0,108(a0)
c04087b8:	2e62                	fld	ft8,24(sp)
c04087ba:	2d6d6f63          	bltu	s10,s6,c0408a98 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.17+0xa>
c04087be:	6531                	lui	a0,0xc
c04087c0:	32366363          	bltu	a2,gp,c0408ae6 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.24+0xf>
c04087c4:	3939                	jal	c04083e2 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.10+0x6>
c04087c6:	6264                	flw	fs1,68(a2)
c04087c8:	6539                	lui	a0,0xe
c04087ca:	33323863          	0x33323863
c04087ce:	6475622f          	0x6475622f
c04087d2:	7964                	flw	fs1,116(a0)
c04087d4:	735f 7379 6574      	0x65747379735f
c04087da:	5f6d                	li	t5,-5
c04087dc:	6c61                	lui	s8,0x18
c04087de:	6f6c                	flw	fa1,92(a4)
c04087e0:	6f746163          	bltu	s0,s7,c0408ec2 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.9+0x2>
c04087e4:	2d72                	fld	fs10,280(sp)
c04087e6:	2e30                	fld	fa2,88(a2)
c04087e8:	2f352e33          	0x2f352e33
c04087ec:	2f637273          	csrrci	tp,0x2f6,6
c04087f0:	696c                	flw	fa1,84(a0)
c04087f2:	2e62                	fld	ft8,24(sp)
c04087f4:	7372                	flw	ft6,60(sp)
	...

c04087f8 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.2>:
c04087f8:	8770                	0x8770
c04087fa:	c040                	sw	s0,4(s0)
c04087fc:	001e                	c.slli	zero,0x7
c04087fe:	0000                	unimp
c0408800:	878e                	mv	a5,gp
c0408802:	c040                	sw	s0,4(s0)
c0408804:	0068                	addi	a0,sp,12
c0408806:	0000                	unimp
c0408808:	0052                	c.slli	zero,0x14
c040880a:	0000                	unimp
c040880c:	0009                	c.nop	2
	...

c0408810 <str.0>:
c0408810:	6d6f682f          	0x6d6f682f
c0408814:	2f65                	jal	c0408fcc <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.18+0x14>
c0408816:	6166                	flw	ft2,88(sp)
c0408818:	7a6e                	flw	fs4,248(sp)
c040881a:	6968                	flw	fa0,84(a0)
c040881c:	6570                	flw	fa2,76(a0)
c040881e:	676e                	flw	fa4,216(sp)
c0408820:	61632e2f          	amoand.w	t3,s6,(t1)
c0408824:	6772                	flw	fa4,28(sp)
c0408826:	65722f6f          	jal	t5,c042b67c <ebss+0xa55c>
c040882a:	74736967          	0x74736967
c040882e:	7972                	flw	fs2,60(sp)
c0408830:	6372732f          	0x6372732f
c0408834:	7469672f          	0x7469672f
c0408838:	7568                	flw	fa0,108(a0)
c040883a:	2e62                	fld	ft8,24(sp)
c040883c:	2d6d6f63          	bltu	s10,s6,c0408b1a <.Lanon.469b247d53d9847b2053806bb31dcbe9.0+0x7>
c0408840:	6531                	lui	a0,0xc
c0408842:	32366363          	bltu	a2,gp,c0408b68 <.Lanon.469b247d53d9847b2053806bb31dcbe9.1+0x2b>
c0408846:	3939                	jal	c0408464 <.Lanon.218e553589b197b83ff66e63df650c56.5+0x8>
c0408848:	6264                	flw	fs1,68(a2)
c040884a:	6539                	lui	a0,0xe
c040884c:	33323863          	0x33323863
c0408850:	6475622f          	0x6475622f
c0408854:	7964                	flw	fs1,116(a0)
c0408856:	735f 7379 6574      	0x65747379735f
c040885c:	5f6d                	li	t5,-5
c040885e:	6c61                	lui	s8,0x18
c0408860:	6f6c                	flw	fa1,92(a4)
c0408862:	6f746163          	bltu	s0,s7,c0408f44 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.16+0x27>
c0408866:	2d72                	fld	fs10,280(sp)
c0408868:	2e30                	fld	fa2,88(a2)
c040886a:	2f352e33          	0x2f352e33
c040886e:	2f637273          	csrrci	tp,0x2f6,6
c0408872:	696c                	flw	fa1,84(a0)
c0408874:	2e62                	fld	ft8,24(sp)
c0408876:	7372                	flw	ft6,60(sp)

c0408878 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.3>:
c0408878:	8810                	0x8810
c040887a:	c040                	sw	s0,4(s0)
c040887c:	0068                	addi	a0,sp,12
c040887e:	0000                	unimp
c0408880:	005c                	addi	a5,sp,4
c0408882:	0000                	unimp
c0408884:	000d                	c.nop	3
	...

c0408888 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.5>:
c0408888:	8810                	0x8810
c040888a:	c040                	sw	s0,4(s0)
c040888c:	0068                	addi	a0,sp,12
c040888e:	0000                	unimp
c0408890:	0074                	addi	a3,sp,12
c0408892:	0000                	unimp
c0408894:	002a                	c.slli	zero,0xa
	...

c0408898 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.6>:
c0408898:	8810                	0x8810
c040889a:	c040                	sw	s0,4(s0)
c040889c:	0068                	addi	a0,sp,12
c040889e:	0000                	unimp
c04088a0:	0076                	c.slli	zero,0x1d
c04088a2:	0000                	unimp
c04088a4:	001d                	c.nop	7
	...

c04088a8 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.7>:
c04088a8:	8810                	0x8810
c04088aa:	c040                	sw	s0,4(s0)
c04088ac:	0068                	addi	a0,sp,12
c04088ae:	0000                	unimp
c04088b0:	0080                	addi	s0,sp,64
c04088b2:	0000                	unimp
c04088b4:	0015                	c.nop	5
	...

c04088b8 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.8>:
c04088b8:	72727563          	bgeu	tp,t2,c0408fe2 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.21+0xe>
c04088bc:	6e65                	lui	t3,0x19
c04088be:	2074                	fld	fa3,192(s0)
c04088c0:	6c62                	flw	fs8,24(sp)
c04088c2:	206b636f          	jal	t1,c04beac8 <ebss+0x9d9a8>
c04088c6:	756f6873          	csrrsi	a6,0x756,30
c04088ca:	646c                	flw	fa1,76(s0)
c04088cc:	6820                	flw	fs0,80(s0)
c04088ce:	7661                	lui	a2,0xffff8
c04088d0:	2065                	jal	c0408978 <.Lanon.3504960b247a389d2058be32dbc673fe.2+0x10>
c04088d2:	7266                	flw	ft4,120(sp)
c04088d4:	6565                	lui	a0,0x19
c04088d6:	7320                	flw	fs0,96(a4)
c04088d8:	6170                	flw	fa2,68(a0)
c04088da:	6e206563          	bltu	zero,sp,c0408fc4 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.18+0xc>
c04088de:	          	jal	a4,c031015e <XLENB+0xc031015a>

c04088e0 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.9>:
c04088e0:	8810                	0x8810
c04088e2:	c040                	sw	s0,4(s0)
c04088e4:	0068                	addi	a0,sp,12
c04088e6:	0000                	unimp
c04088e8:	0000009b          	0x9b
c04088ec:	000d                	c.nop	3
	...

c04088f0 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.10>:
c04088f0:	8810                	0x8810
c04088f2:	c040                	sw	s0,4(s0)
c04088f4:	0068                	addi	a0,sp,12
c04088f6:	0000                	unimp
c04088f8:	00b0                	addi	a2,sp,72
c04088fa:	0000                	unimp
c04088fc:	0015                	c.nop	5
	...

c0408900 <str.0>:
c0408900:	74617263          	bgeu	sp,t1,c0409044 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.22+0x60>
c0408904:	2f65                	jal	c04090bc <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.48+0x18>
c0408906:	6972                	flw	fs2,28(sp)
c0408908:	2f766373          	csrrsi	t1,0x2f7,12
c040890c:	2f637273          	csrrci	tp,0x2f6,6
c0408910:	6170                	flw	fa2,68(a0)
c0408912:	676e6967          	0x676e6967
c0408916:	6761702f          	0x6761702f
c040891a:	5f65                	li	t5,-7
c040891c:	6174                	flw	fa3,68(a0)
c040891e:	6c62                	flw	fs8,24(sp)
c0408920:	2e65                	jal	c0408cd8 <.Lanon.2f6b865d4eab03200d5b3a42b6282bce.1+0x4c>
c0408922:	7372                	flw	ft6,60(sp)

c0408924 <anon.e0c37bf7685eef01f6346b4b078c4ded.1.llvm.10594746290003406133>:
c0408924:	8900                	0x8900
c0408926:	c040                	sw	s0,4(s0)
c0408928:	0024                	addi	s1,sp,8
c040892a:	0000                	unimp
c040892c:	0025                	c.nop	9
c040892e:	0000                	unimp
c0408930:	000a                	c.slli	zero,0x2
	...

c0408934 <anon.e0c37bf7685eef01f6346b4b078c4ded.2.llvm.10594746290003406133>:
c0408934:	8900                	0x8900
c0408936:	c040                	sw	s0,4(s0)
c0408938:	0024                	addi	s1,sp,8
c040893a:	0000                	unimp
c040893c:	0000002b          	0x2b
c0408940:	000e                	c.slli	zero,0x3
	...

c0408944 <.Lanon.3504960b247a389d2058be32dbc673fe.0>:
c0408944:	6150                	flw	fa2,4(a0)
c0408946:	6c416567          	0x6c416567
c040894a:	6572                	flw	fa0,28(sp)
c040894c:	6461                	lui	s0,0x18
c040894e:	4d79                	li	s10,30
c0408950:	7061                	c.lui	zero,0xffff8
c0408952:	6570                	flw	fa2,76(a0)
c0408954:	                	lw	s1,100(s0)

c0408955 <.Lanon.3504960b247a389d2058be32dbc673fe.1>:
c0408955:	6150                	flw	fa2,4(a0)
c0408957:	6572                	flw	fa0,28(sp)
c0408959:	746e                	flw	fs0,248(sp)
c040895b:	6e45                	lui	t3,0x11
c040895d:	7274                	flw	fa3,100(a2)
c040895f:	4879                	li	a6,30
c0408961:	6775                	lui	a4,0x1d
c0408963:	5065                	c.li	zero,-7
c0408965:	6761                	lui	a4,0x18
c0408967:	                	li	a2,25

c0408968 <.Lanon.3504960b247a389d2058be32dbc673fe.2>:
c0408968:	7246                	flw	ft4,112(sp)
c040896a:	6d61                	lui	s10,0x18
c040896c:	4165                	li	sp,25
c040896e:	6c6c                	flw	fa1,92(s0)
c0408970:	7461636f          	jal	t1,c041f0b6 <bootstacktop+0xe0b6>
c0408974:	6f69                	lui	t5,0x1a
c0408976:	466e                	lw	a2,216(sp)
c0408978:	6961                	lui	s2,0x18
c040897a:	656c                	flw	fa1,76(a0)
c040897c:	                	lw	s1,84(a0)

c040897d <.Lanon.3504960b247a389d2058be32dbc673fe.3>:
c040897d:	6e49                	lui	t3,0x12
c040897f:	6176                	flw	ft2,92(sp)
c0408981:	696c                	flw	fa1,84(a0)
c0408983:	4664                	lw	s1,76(a2)
c0408985:	6172                	flw	ft2,28(sp)
c0408987:	656d                	lui	a0,0x1b
c0408989:	6441                	lui	s0,0x10
c040898b:	7264                	flw	fs1,100(a2)
c040898d:	7365                	lui	t1,0xffff9
c040898f:	          	csrrc	s0,0x403,t2

c0408990 <.Lanon.3504960b247a389d2058be32dbc673fe.4>:
c0408990:	33b4                	fld	fa3,96(a5)
c0408992:	c040                	sw	s0,4(s0)
c0408994:	0004                	0x4
c0408996:	0000                	unimp
c0408998:	0004                	0x4
c040899a:	0000                	unimp
c040899c:	3ca8                	fld	fa0,120(s1)
c040899e:	c040                	sw	s0,4(s0)

c04089a0 <.Lanon.3504960b247a389d2058be32dbc673fe.5>:
c04089a0:	6150                	flw	fa2,4(a0)
c04089a2:	6f4e6567          	0x6f4e6567
c04089a6:	4d74                	lw	a3,92(a0)
c04089a8:	7061                	c.lui	zero,0xffff8
c04089aa:	6570                	flw	fa2,76(a0)
c04089ac:	                	lw	s1,100(a4)

c04089ad <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.0>:
c04089ad:	75616353          	0x75616353
c04089b1:	          	csrrsi	a0,0xbc0,0

c04089b4 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.2>:
c04089b4:	35bc                	fld	fa5,104(a1)
c04089b6:	c040                	sw	s0,4(s0)
c04089b8:	0004                	0x4
c04089ba:	0000                	unimp
c04089bc:	0004                	0x4
c04089be:	0000                	unimp
c04089c0:	3c18                	fld	fa4,56(s0)
c04089c2:	c040                	sw	s0,4(s0)

c04089c4 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.3>:
c04089c4:	7845                	lui	a6,0xffff1
c04089c6:	74706563          	bltu	zero,t2,c0409110 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.48+0x6c>
c04089ca:	6f69                	lui	t5,0x1a
c04089cc:	006e                	c.slli	zero,0x1b
	...

c04089d0 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.4>:
c04089d0:	35bc                	fld	fa5,104(a1)
c04089d2:	c040                	sw	s0,4(s0)
c04089d4:	0004                	0x4
c04089d6:	0000                	unimp
c04089d8:	0004                	0x4
c04089da:	0000                	unimp
c04089dc:	356c                	fld	fa1,232(a0)
c04089de:	c040                	sw	s0,4(s0)

c04089e0 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.5>:
c04089e0:	6e49                	lui	t3,0x12
c04089e2:	6574                	flw	fa3,76(a0)
c04089e4:	7272                	flw	ft4,60(sp)
c04089e6:	7075                	c.lui	zero,0xffffd
c04089e8:	0074                	addi	a3,sp,12
	...

c04089ec <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.6>:
c04089ec:	35bc                	fld	fa5,104(a1)
c04089ee:	c040                	sw	s0,4(s0)
c04089f0:	0004                	0x4
c04089f2:	0000                	unimp
c04089f4:	0004                	0x4
c04089f6:	0000                	unimp
c04089f8:	3594                	fld	fa3,40(a1)
c04089fa:	c040                	sw	s0,4(s0)

c04089fc <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.7>:
c04089fc:	6e55                	lui	t3,0x15
c04089fe:	776f6e6b          	0x776f6e6b
c0408a02:	                	lw	t1,248(sp)

c0408a03 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.8>:
c0408a03:	65707553          	0x65707553
c0408a07:	7672                	flw	fa2,60(sp)
c0408a09:	7369                	lui	t1,0xffffa
c0408a0b:	7845726f          	jal	tp,c046018f <ebss+0x3f06f>
c0408a0f:	6574                	flw	fa3,76(a0)
c0408a11:	6e72                	flw	ft8,28(sp)
c0408a13:	6c61                	lui	s8,0x18

c0408a15 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.9>:
c0408a15:	7355                	lui	t1,0xffff5
c0408a17:	7265                	lui	tp,0xffff9
c0408a19:	7845                	lui	a6,0xffff1
c0408a1b:	6574                	flw	fa3,76(a0)
c0408a1d:	6e72                	flw	ft8,28(sp)
c0408a1f:	6c61                	lui	s8,0x18

c0408a21 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.10>:
c0408a21:	65707553          	0x65707553
c0408a25:	7672                	flw	fa2,60(sp)
c0408a27:	7369                	lui	t1,0xffffa
c0408a29:	6954726f          	jal	tp,c04508bd <ebss+0x2f79d>
c0408a2d:	656d                	lui	a0,0x1b
c0408a2f:	                	lw	a0,60(sp)

c0408a30 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.11>:
c0408a30:	7355                	lui	t1,0xffff5
c0408a32:	7265                	lui	tp,0xffff9
c0408a34:	6954                	flw	fa3,20(a0)
c0408a36:	656d                	lui	a0,0x1b
c0408a38:	                	lw	t1,60(sp)

c0408a39 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.12>:
c0408a39:	65707553          	0x65707553
c0408a3d:	7672                	flw	fa2,60(sp)
c0408a3f:	7369                	lui	t1,0xffffa
c0408a41:	6f53726f          	jal	tp,c0440935 <ebss+0x1f815>
c0408a45:	7466                	flw	fs0,120(sp)
c0408a47:	2820                	fld	fs0,80(s0)
c0408a49:	7962                	flw	fs2,56(sp)
c0408a4b:	6574                	flw	fa3,76(a0)
c0408a4d:	73552073          	csrs	0x735,a0
c0408a51:	7265                	lui	tp,0xffff9
c0408a53:	74666f53          	0x74666f53
c0408a57:	6850                	flw	fa2,20(s0)
c0408a59:	7379                	lui	t1,0xffffe
c0408a5b:	6441                	lui	s0,0x10
c0408a5d:	7264                	flw	fs1,100(a2)

c0408a5f <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.14>:
c0408a5f:	726f7453          	0x726f7453
c0408a63:	5065                	c.li	zero,-7
c0408a65:	6761                	lui	a4,0x18
c0408a67:	4665                	li	a2,25
c0408a69:	7561                	lui	a0,0xffff8
c0408a6b:	746c                	flw	fa1,108(s0)

c0408a6d <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.15>:
c0408a6d:	6f4c                	flw	fa1,28(a4)
c0408a6f:	6461                	lui	s0,0x18
c0408a71:	6150                	flw	fa2,4(a0)
c0408a73:	61466567          	0x61466567
c0408a77:	6c75                	lui	s8,0x1d
c0408a79:	                	lw	a3,84(a0)

c0408a7a <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.16>:
c0408a7a:	6e49                	lui	t3,0x12
c0408a7c:	75727473          	csrrci	s0,0x757,4
c0408a80:	6f697463          	bgeu	s2,s6,c0409168 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.55+0x4>
c0408a84:	506e                	0x506e
c0408a86:	6761                	lui	a4,0x18
c0408a88:	4665                	li	a2,25
c0408a8a:	7561                	lui	a0,0xffff8
c0408a8c:	746c                	flw	fa1,108(s0)

c0408a8e <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.17>:
c0408a8e:	7355                	lui	t1,0xffff5
c0408a90:	7265                	lui	tp,0xffff9
c0408a92:	6e45                	lui	t3,0x11
c0408a94:	4376                	lw	t1,92(sp)
c0408a96:	6c61                	lui	s8,0x18
c0408a98:	                	lw	a1,100(a4)

c0408a99 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.18>:
c0408a99:	726f7453          	0x726f7453
c0408a9d:	4665                	li	a2,25
c0408a9f:	7561                	lui	a0,0xffff8
c0408aa1:	746c                	flw	fa1,108(s0)

c0408aa3 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.19>:
c0408aa3:	726f7453          	0x726f7453
c0408aa7:	4d65                	li	s10,25
c0408aa9:	7369                	lui	t1,0xffffa
c0408aab:	6c61                	lui	s8,0x18
c0408aad:	6769                	lui	a4,0x1a
c0408aaf:	656e                	flw	fa0,216(sp)
c0408ab1:	                	lw	s1,92(s0)

c0408ab2 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.20>:
c0408ab2:	6f4c                	flw	fa1,28(a4)
c0408ab4:	6461                	lui	s0,0x18
c0408ab6:	6146                	flw	ft2,80(sp)
c0408ab8:	6c75                	lui	s8,0x1d
c0408aba:	                	lw	a3,68(a2)

c0408abb <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.21>:
c0408abb:	7242                	flw	ft4,48(sp)
c0408abd:	6165                	addi	sp,sp,112
c0408abf:	696f706b          	0x696f706b
c0408ac3:	746e                	flw	fs0,248(sp)

c0408ac5 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.22>:
c0408ac5:	6c49                	lui	s8,0x12
c0408ac7:	656c                	flw	fa1,76(a0)
c0408ac9:	496c6167          	0x496c6167
c0408acd:	736e                	flw	ft6,248(sp)
c0408acf:	7274                	flw	fa3,100(a2)
c0408ad1:	6375                	lui	t1,0x1d
c0408ad3:	6974                	flw	fa3,84(a0)
c0408ad5:	          	jal	t3,c049f1b9 <ebss+0x7e099>

c0408ad7 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.24>:
c0408ad7:	6e49                	lui	t3,0x12
c0408ad9:	75727473          	csrrci	s0,0x757,4
c0408add:	6f697463          	bgeu	s2,s6,c04091c5 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.59+0xd>
c0408ae1:	4d6e                	lw	s10,216(sp)
c0408ae3:	7369                	lui	t1,0xffffa
c0408ae5:	6c61                	lui	s8,0x18
c0408ae7:	6769                	lui	a4,0x1a
c0408ae9:	656e                	flw	fa0,216(sp)
c0408aeb:	                	fld	fs1,192(s0)

c0408aec <.Lanon.6e475e4b132b82696f82d862c2bda0d8.8>:
c0408aec:	3d20                	fld	fs0,120(a0)
c0408aee:	c040                	sw	s0,4(s0)
c0408af0:	0004                	0x4
c0408af2:	0000                	unimp
c0408af4:	0004                	0x4
c0408af6:	0000                	unimp
c0408af8:	3c18                	fld	fa4,56(s0)
c0408afa:	c040                	sw	s0,4(s0)

c0408afc <.Lanon.16a4846d6bbbcd1e35cdd565b6002a84.2>:
c0408afc:	40c4                	lw	s1,4(s1)
c0408afe:	c040                	sw	s0,4(s0)
c0408b00:	0004                	0x4
c0408b02:	0000                	unimp
c0408b04:	0004                	0x4
c0408b06:	0000                	unimp
c0408b08:	3c18                	fld	fa4,56(s0)
c0408b0a:	c040                	sw	s0,4(s0)

c0408b0c <.Lanon.16a4846d6bbbcd1e35cdd565b6002a84.3>:
c0408b0c:	61747353          	0x61747353
c0408b10:	7574                	flw	fa3,108(a0)
c0408b12:	          	csrrsi	sp,0x737,6

c0408b13 <.Lanon.469b247d53d9847b2053806bb31dcbe9.0>:
c0408b13:	7361                	lui	t1,0xffff8
c0408b15:	74726573          	csrrsi	a0,0x747,4
c0408b19:	6f69                	lui	t5,0x1a
c0408b1b:	206e                	fld	ft0,216(sp)
c0408b1d:	6166                	flw	ft2,88(sp)
c0408b1f:	6c69                	lui	s8,0x1a
c0408b21:	6465                	lui	s0,0x19
c0408b23:	203a                	fld	ft0,392(sp)
c0408b25:	6962                	flw	fs2,24(sp)
c0408b27:	2074                	fld	fa3,192(s0)
c0408b29:	203c                	fld	fa5,64(s0)
c0408b2b:	666c6553          	0x666c6553
c0408b2f:	3a3a                	fld	fs4,424(sp)
c0408b31:	6962                	flw	fs2,24(sp)
c0408b33:	5f74                	lw	a3,124(a4)
c0408b35:	656c                	flw	fa1,76(a0)
c0408b37:	676e                	flw	fa4,216(sp)
c0408b39:	6874                	flw	fa3,84(s0)
c0408b3b:	2928                	fld	fa0,80(a0)

c0408b3d <.Lanon.469b247d53d9847b2053806bb31dcbe9.1>:
c0408b3d:	6d6f682f          	0x6d6f682f
c0408b41:	2f65                	jal	c04092f9 <.Lanon.e751f650313ada8e74ab7a6897452231.18+0x5>
c0408b43:	6166                	flw	ft2,88(sp)
c0408b45:	7a6e                	flw	fs4,248(sp)
c0408b47:	6968                	flw	fa0,84(a0)
c0408b49:	6570                	flw	fa2,76(a0)
c0408b4b:	676e                	flw	fa4,216(sp)
c0408b4d:	61632e2f          	amoand.w	t3,s6,(t1)
c0408b51:	6772                	flw	fa4,28(sp)
c0408b53:	65722f6f          	jal	t5,c042b9a9 <ebss+0xa889>
c0408b57:	74736967          	0x74736967
c0408b5b:	7972                	flw	fs2,60(sp)
c0408b5d:	6372732f          	0x6372732f
c0408b61:	7469672f          	0x7469672f
c0408b65:	7568                	flw	fa0,108(a0)
c0408b67:	2e62                	fld	ft8,24(sp)
c0408b69:	2d6d6f63          	bltu	s10,s6,c0408e47 <.Lanon.1403efd71e1bad9f1557c91e33bfc3dc.16+0x47>
c0408b6d:	6531                	lui	a0,0xc
c0408b6f:	32366363          	bltu	a2,gp,c0408e95 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.2+0x9>
c0408b73:	3939                	jal	c0408791 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.1+0x3>
c0408b75:	6264                	flw	fs1,68(a2)
c0408b77:	6539                	lui	a0,0xe
c0408b79:	33323863          	0x33323863
c0408b7d:	7469622f          	0x7469622f
c0408b81:	665f 6569 646c      	0x646c6569665f
c0408b87:	302d                	jal	c04083b1 <.Lanon.db373ce25dfeaf41079e038efc6d12ac.5+0xd>
c0408b89:	392e                	fld	fs2,232(sp)
c0408b8b:	302e                	fld	ft0,232(sp)
c0408b8d:	6372732f          	0x6372732f
c0408b91:	62696c2f          	0x62696c2f
c0408b95:	722e                	flw	ft4,232(sp)
c0408b97:	          	csrrw	t1,0x408,s6

c0408b98 <.Lanon.469b247d53d9847b2053806bb31dcbe9.2>:
c0408b98:	c0408b13          	addi	s6,ra,-1020
c0408b9c:	002a                	c.slli	zero,0xa
c0408b9e:	0000                	unimp
c0408ba0:	8b3d                	andi	a4,a4,15
c0408ba2:	c040                	sw	s0,4(s0)
c0408ba4:	0000005b          	0x5b
c0408ba8:	0106                	slli	sp,sp,0x1
c0408baa:	0000                	unimp
c0408bac:	0001                	nop
	...

c0408bb0 <.Lanon.469b247d53d9847b2053806bb31dcbe9.3>:
c0408bb0:	7361                	lui	t1,0xffff8
c0408bb2:	74726573          	csrrsi	a0,0x747,4
c0408bb6:	6f69                	lui	t5,0x1a
c0408bb8:	206e                	fld	ft0,216(sp)
c0408bba:	6166                	flw	ft2,88(sp)
c0408bbc:	6c69                	lui	s8,0x1a
c0408bbe:	6465                	lui	s0,0x19
c0408bc0:	203a                	fld	ft0,392(sp)
c0408bc2:	6172                	flw	ft2,28(sp)
c0408bc4:	676e                	flw	fa4,216(sp)
c0408bc6:	2e65                	jal	c0408f7e <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.17+0x36>
c0408bc8:	72617473          	csrrci	s0,0x726,2
c0408bcc:	2074                	fld	fa3,192(s0)
c0408bce:	203c                	fld	fa5,64(s0)
c0408bd0:	666c6553          	0x666c6553
c0408bd4:	3a3a                	fld	fs4,424(sp)
c0408bd6:	6962                	flw	fs2,24(sp)
c0408bd8:	5f74                	lw	a3,124(a4)
c0408bda:	656c                	flw	fa1,76(a0)
c0408bdc:	676e                	flw	fa4,216(sp)
c0408bde:	6874                	flw	fa3,84(s0)
c0408be0:	2928                	fld	fa0,80(a0)
	...

c0408be4 <.Lanon.469b247d53d9847b2053806bb31dcbe9.4>:
c0408be4:	8bb0                	0x8bb0
c0408be6:	c040                	sw	s0,4(s0)
c0408be8:	0032                	c.slli	zero,0xc
c0408bea:	0000                	unimp
c0408bec:	8b3d                	andi	a4,a4,15
c0408bee:	c040                	sw	s0,4(s0)
c0408bf0:	0000005b          	0x5b
c0408bf4:	0106                	slli	sp,sp,0x1
c0408bf6:	0000                	unimp
c0408bf8:	0001                	nop
	...

c0408bfc <.Lanon.469b247d53d9847b2053806bb31dcbe9.5>:
c0408bfc:	7361                	lui	t1,0xffff8
c0408bfe:	74726573          	csrrsi	a0,0x747,4
c0408c02:	6f69                	lui	t5,0x1a
c0408c04:	206e                	fld	ft0,216(sp)
c0408c06:	6166                	flw	ft2,88(sp)
c0408c08:	6c69                	lui	s8,0x1a
c0408c0a:	6465                	lui	s0,0x19
c0408c0c:	203a                	fld	ft0,392(sp)
c0408c0e:	6172                	flw	ft2,28(sp)
c0408c10:	676e                	flw	fa4,216(sp)
c0408c12:	2e65                	jal	c0408fca <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.18+0x12>
c0408c14:	6e65                	lui	t3,0x19
c0408c16:	2064                	fld	fs1,192(s0)
c0408c18:	3d3c                	fld	fa5,120(a0)
c0408c1a:	5320                	lw	s0,96(a4)
c0408c1c:	6c65                	lui	s8,0x19
c0408c1e:	3a66                	fld	fs4,120(sp)
c0408c20:	623a                	flw	ft4,140(sp)
c0408c22:	7469                	lui	s0,0xffffa
c0408c24:	6c5f 6e65 7467      	0x74676e656c5f
c0408c2a:	2868                	fld	fa0,208(s0)
c0408c2c:	0029                	c.nop	10
	...

c0408c30 <.Lanon.469b247d53d9847b2053806bb31dcbe9.6>:
c0408c30:	8bfc                	0x8bfc
c0408c32:	c040                	sw	s0,4(s0)
c0408c34:	0031                	c.nop	12
c0408c36:	0000                	unimp
c0408c38:	8b3d                	andi	a4,a4,15
c0408c3a:	c040                	sw	s0,4(s0)
c0408c3c:	0000005b          	0x5b
c0408c40:	0106                	slli	sp,sp,0x1
c0408c42:	0000                	unimp
c0408c44:	0001                	nop
	...

c0408c48 <.Lanon.469b247d53d9847b2053806bb31dcbe9.7>:
c0408c48:	7361                	lui	t1,0xffff8
c0408c4a:	74726573          	csrrsi	a0,0x747,4
c0408c4e:	6f69                	lui	t5,0x1a
c0408c50:	206e                	fld	ft0,216(sp)
c0408c52:	6166                	flw	ft2,88(sp)
c0408c54:	6c69                	lui	s8,0x1a
c0408c56:	6465                	lui	s0,0x19
c0408c58:	203a                	fld	ft0,392(sp)
c0408c5a:	6172                	flw	ft2,28(sp)
c0408c5c:	676e                	flw	fa4,216(sp)
c0408c5e:	2e65                	jal	c0409016 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.22+0x32>
c0408c60:	72617473          	csrrci	s0,0x726,2
c0408c64:	2074                	fld	fa3,192(s0)
c0408c66:	203c                	fld	fa5,64(s0)
c0408c68:	6172                	flw	ft2,28(sp)
c0408c6a:	676e                	flw	fa4,216(sp)
c0408c6c:	2e65                	jal	c0409024 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.22+0x40>
c0408c6e:	6e65                	lui	t3,0x19
c0408c70:	0064                	addi	s1,sp,12
	...

c0408c74 <.Lanon.469b247d53d9847b2053806bb31dcbe9.8>:
c0408c74:	8c48                	0x8c48
c0408c76:	c040                	sw	s0,4(s0)
c0408c78:	0029                	c.nop	10
c0408c7a:	0000                	unimp
c0408c7c:	8b3d                	andi	a4,a4,15
c0408c7e:	c040                	sw	s0,4(s0)
c0408c80:	0000005b          	0x5b
c0408c84:	0106                	slli	sp,sp,0x1
c0408c86:	0000                	unimp
c0408c88:	0001                	nop
	...

c0408c8c <.Lanon.2f6b865d4eab03200d5b3a42b6282bce.1>:
c0408c8c:	6d6f682f          	0x6d6f682f
c0408c90:	2f65                	jal	c0409448 <anon.e751f650313ada8e74ab7a6897452231.37.llvm.5375085799470840418+0xc>
c0408c92:	6166                	flw	ft2,88(sp)
c0408c94:	7a6e                	flw	fs4,248(sp)
c0408c96:	6968                	flw	fa0,84(a0)
c0408c98:	6570                	flw	fa2,76(a0)
c0408c9a:	676e                	flw	fa4,216(sp)
c0408c9c:	75722e2f          	0x75722e2f
c0408ca0:	70757473          	csrrci	s0,0x707,10
c0408ca4:	6f6f742f          	0x6f6f742f
c0408ca8:	636c                	flw	fa1,68(a4)
c0408caa:	6168                	flw	fa0,68(a0)
c0408cac:	6e69                	lui	t3,0x1a
c0408cae:	696e2f73          	csrrs	t5,0x696,t3
c0408cb2:	6c746867          	0x6c746867
c0408cb6:	2d79                	jal	c0409354 <.Lanon.e751f650313ada8e74ab7a6897452231.22+0x6>
c0408cb8:	3878                	fld	fa4,240(s0)
c0408cba:	5f36                	lw	t5,108(sp)
c0408cbc:	3436                	fld	fs0,360(sp)
c0408cbe:	752d                	lui	a0,0xfffeb
c0408cc0:	6b6e                	flw	fs6,216(sp)
c0408cc2:	6f6e                	flw	ft10,216(sp)
c0408cc4:	6c2d6e77          	0x6c2d6e77
c0408cc8:	6e69                	lui	t3,0x1a
c0408cca:	7875                	lui	a6,0xffffd
c0408ccc:	672d                	lui	a4,0xb
c0408cce:	756e                	flw	fa0,248(sp)
c0408cd0:	62696c2f          	0x62696c2f
c0408cd4:	7375722f          	0x7375722f
c0408cd8:	6c74                	flw	fa3,92(s0)
c0408cda:	6269                	lui	tp,0x1a
c0408cdc:	6372732f          	0x6372732f
c0408ce0:	7375722f          	0x7375722f
c0408ce4:	2f74                	fld	fa3,216(a4)
c0408ce6:	2f637273          	csrrci	tp,0x2f6,6
c0408cea:	696c                	flw	fa1,84(a0)
c0408cec:	6162                	flw	ft2,24(sp)
c0408cee:	6c6c                	flw	fa1,92(s0)
c0408cf0:	722f636f          	jal	t1,c04ff412 <ebss+0xde2f2>
c0408cf4:	7761                	lui	a4,0xffff8
c0408cf6:	765f 6365 722e      	0x722e6365765f
c0408cfc:	          	csrrsi	t1,0x706,2

c0408cfd <.Lanon.2f6b865d4eab03200d5b3a42b6282bce.5>:
c0408cfd:	61706163          	bltu	zero,s7,c04092ff <.Lanon.e751f650313ada8e74ab7a6897452231.18+0xb>
c0408d01:	79746963          	bltu	s0,s7,c0409493 <anon.e751f650313ada8e74ab7a6897452231.39.llvm.5375085799470840418+0x47>
c0408d05:	6f20                	flw	fs0,88(a4)
c0408d07:	6576                	flw	fa0,92(sp)
c0408d09:	6672                	flw	fa2,28(sp)
c0408d0b:	6f6c                	flw	fa1,92(a4)
c0408d0d:	          	0xfd000077

c0408d10 <anon.2f6b865d4eab03200d5b3a42b6282bce.6.llvm.10995953072855987816>:
c0408d10:	8cfd                	and	s1,s1,a5
c0408d12:	c040                	sw	s0,4(s0)
c0408d14:	0011                	c.nop	4
c0408d16:	0000                	unimp
c0408d18:	8c8c                	0x8c8c
c0408d1a:	c040                	sw	s0,4(s0)
c0408d1c:	0071                	c.nop	28
c0408d1e:	0000                	unimp
c0408d20:	0309                	addi	t1,t1,2
c0408d22:	0000                	unimp
c0408d24:	0005                	c.nop	1
	...

c0408d28 <anon.0415ae5cbc1f30e87ada49ac63a3be34.0.llvm.13757989038936525767>:
c0408d28:	7830                	flw	fa2,112(s0)

c0408d2a <.Lanon.0415ae5cbc1f30e87ada49ac63a3be34.3>:
c0408d2a:	3030                	fld	fa2,96(s0)
c0408d2c:	3130                	fld	fa2,96(a0)
c0408d2e:	3230                	fld	fa2,96(a2)
c0408d30:	3330                	fld	fa2,96(a4)
c0408d32:	3430                	fld	fa2,104(s0)
c0408d34:	3530                	fld	fa2,104(a0)
c0408d36:	3630                	fld	fa2,104(a2)
c0408d38:	3730                	fld	fa2,104(a4)
c0408d3a:	3830                	fld	fa2,112(s0)
c0408d3c:	3930                	fld	fa2,112(a0)
c0408d3e:	3031                	jal	c040854a <.Lanon.218e553589b197b83ff66e63df650c56.13+0x42>
c0408d40:	3131                	jal	c040894c <.Lanon.3504960b247a389d2058be32dbc673fe.0+0x8>
c0408d42:	3231                	jal	c040864e <anon.67c4281cad64b9cd3d7a775191b69eb8.4.llvm.18020723203338019030+0x12>
c0408d44:	3331                	jal	c0408a50 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.12+0x17>
c0408d46:	3431                	jal	c0408752 <.Lanon.b1c4410cac36ab4f67756afc622625ca.4+0x2>
c0408d48:	3531                	jal	c0408b54 <.Lanon.469b247d53d9847b2053806bb31dcbe9.1+0x17>
c0408d4a:	3631                	jal	c0408856 <str.0+0x46>
c0408d4c:	3731                	jal	c0408c58 <.Lanon.469b247d53d9847b2053806bb31dcbe9.7+0x10>
c0408d4e:	3831                	jal	c040856a <.Lanon.218e553589b197b83ff66e63df650c56.13+0x62>
c0408d50:	3931                	jal	c040896c <.Lanon.3504960b247a389d2058be32dbc673fe.2+0x4>
c0408d52:	3032                	fld	ft0,296(sp)
c0408d54:	3132                	fld	ft2,296(sp)
c0408d56:	3232                	fld	ft4,296(sp)
c0408d58:	3332                	fld	ft6,296(sp)
c0408d5a:	3432                	fld	fs0,296(sp)
c0408d5c:	3532                	fld	fa0,296(sp)
c0408d5e:	3632                	fld	fa2,296(sp)
c0408d60:	3732                	fld	fa4,296(sp)
c0408d62:	3832                	fld	fa6,296(sp)
c0408d64:	3932                	fld	fs2,296(sp)
c0408d66:	31333033          	0x31333033
c0408d6a:	33333233          	0x33333233
c0408d6e:	35333433          	0x35333433
c0408d72:	37333633          	0x37333633
c0408d76:	39333833          	0x39333833
c0408d7a:	3034                	fld	fa3,96(s0)
c0408d7c:	3134                	fld	fa3,96(a0)
c0408d7e:	3234                	fld	fa3,96(a2)
c0408d80:	3334                	fld	fa3,96(a4)
c0408d82:	3434                	fld	fa3,104(s0)
c0408d84:	3534                	fld	fa3,104(a0)
c0408d86:	3634                	fld	fa3,104(a2)
c0408d88:	3734                	fld	fa3,104(a4)
c0408d8a:	3834                	fld	fa3,112(s0)
c0408d8c:	3934                	fld	fa3,112(a0)
c0408d8e:	3035                	jal	c04085ba <.Lanon.218e553589b197b83ff66e63df650c56.17+0x6>
c0408d90:	3135                	jal	c04089bc <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.2+0x8>
c0408d92:	3235                	jal	c04086be <.Lanon.ef1e32be356f3f9ef2a716b864d40acf.3+0x2>
c0408d94:	3335                	jal	c0408ac0 <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.21+0x5>
c0408d96:	3435                	jal	c04087c2 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.1+0x34>
c0408d98:	3535                	jal	c0408bc4 <.Lanon.469b247d53d9847b2053806bb31dcbe9.3+0x14>
c0408d9a:	3635                	jal	c04088c6 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.8+0xe>
c0408d9c:	3735                	jal	c0408cc8 <.Lanon.2f6b865d4eab03200d5b3a42b6282bce.1+0x3c>
c0408d9e:	3835                	jal	c04085da <.Lanon.218e553589b197b83ff66e63df650c56.19+0x2>
c0408da0:	3935                	jal	c04089dc <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.4+0xc>
c0408da2:	3036                	fld	ft0,360(sp)
c0408da4:	3136                	fld	ft2,360(sp)
c0408da6:	3236                	fld	ft4,360(sp)
c0408da8:	3336                	fld	ft6,360(sp)
c0408daa:	3436                	fld	fs0,360(sp)
c0408dac:	3536                	fld	fa0,360(sp)
c0408dae:	3636                	fld	fa2,360(sp)
c0408db0:	3736                	fld	fa4,360(sp)
c0408db2:	3836                	fld	fa6,360(sp)
c0408db4:	3936                	fld	fs2,360(sp)
c0408db6:	31373037          	lui	zero,0x31373
c0408dba:	33373237          	lui	tp,0x33373
c0408dbe:	35373437          	lui	s0,0x35373
c0408dc2:	37373637          	lui	a2,0x37373
c0408dc6:	39373837          	lui	a6,0x39373
c0408dca:	3038                	fld	fa4,96(s0)
c0408dcc:	3138                	fld	fa4,96(a0)
c0408dce:	3238                	fld	fa4,96(a2)
c0408dd0:	3338                	fld	fa4,96(a4)
c0408dd2:	3438                	fld	fa4,104(s0)
c0408dd4:	3538                	fld	fa4,104(a0)
c0408dd6:	3638                	fld	fa4,104(a2)
c0408dd8:	3738                	fld	fa4,104(a4)
c0408dda:	3838                	fld	fa4,112(s0)
c0408ddc:	3938                	fld	fa4,112(a0)
c0408dde:	3039                	jal	c04085ec <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.0+0xc>
c0408de0:	3139                	jal	c04089ee <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.6+0x2>
c0408de2:	3239                	jal	c04086f0 <anon.3a342320428df2eb5cecb02962a6da2e.1.llvm.4442232217633764959>
c0408de4:	3339                	jal	c0408af2 <.Lanon.6e475e4b132b82696f82d862c2bda0d8.8+0x6>
c0408de6:	3439                	jal	c04087f4 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.1+0x66>
c0408de8:	3539                	jal	c0408bf6 <.Lanon.469b247d53d9847b2053806bb31dcbe9.4+0x12>
c0408dea:	3639                	jal	c04088f8 <.Lanon.1e74f9541c5b8561d785d487ee181d5a.10+0x8>
c0408dec:	3739                	jal	c0408cfa <.Lanon.2f6b865d4eab03200d5b3a42b6282bce.1+0x6e>
c0408dee:	3839                	jal	c040860c <.Lanon.67c4281cad64b9cd3d7a775191b69eb8.1+0x18>
c0408df0:	3939                	jal	c0408a0e <.Lanon.26abb4a5ee8d56f8a79190d8c34308e1.8+0xb>
	...

c0408df4 <_ZN4core3fmt3num14DEC_DIGITS_LUT17h0665311ddc32293bE>:
c0408df4:	8d2a                	mv	s10,a0
c0408df6:	c040                	sw	s0,4(s0)

c0408df8 <.Lanon.1403efd71e1bad9f1557c91e33bfc3dc.15>:
c0408df8:	8df8                	0x8df8
c0408dfa:	c040                	sw	s0,4(s0)
c0408dfc:	0000                	unimp
	...

c0408e00 <.Lanon.1403efd71e1bad9f1557c91e33bfc3dc.16>:
c0408e00:	6d6f682f          	0x6d6f682f
c0408e04:	2f65                	jal	c04095bc <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x11e>
c0408e06:	6166                	flw	ft2,88(sp)
c0408e08:	7a6e                	flw	fs4,248(sp)
c0408e0a:	6968                	flw	fa0,84(a0)
c0408e0c:	6570                	flw	fa2,76(a0)
c0408e0e:	676e                	flw	fa4,216(sp)
c0408e10:	75722e2f          	0x75722e2f
c0408e14:	70757473          	csrrci	s0,0x707,10
c0408e18:	6f6f742f          	0x6f6f742f
c0408e1c:	636c                	flw	fa1,68(a4)
c0408e1e:	6168                	flw	fa0,68(a0)
c0408e20:	6e69                	lui	t3,0x1a
c0408e22:	696e2f73          	csrrs	t5,0x696,t3
c0408e26:	6c746867          	0x6c746867
c0408e2a:	2d79                	jal	c04094c8 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x2a>
c0408e2c:	3878                	fld	fa4,240(s0)
c0408e2e:	5f36                	lw	t5,108(sp)
c0408e30:	3436                	fld	fs0,360(sp)
c0408e32:	752d                	lui	a0,0xfffeb
c0408e34:	6b6e                	flw	fs6,216(sp)
c0408e36:	6f6e                	flw	ft10,216(sp)
c0408e38:	6c2d6e77          	0x6c2d6e77
c0408e3c:	6e69                	lui	t3,0x1a
c0408e3e:	7875                	lui	a6,0xffffd
c0408e40:	672d                	lui	a4,0xb
c0408e42:	756e                	flw	fa0,248(sp)
c0408e44:	62696c2f          	0x62696c2f
c0408e48:	7375722f          	0x7375722f
c0408e4c:	6c74                	flw	fa3,92(s0)
c0408e4e:	6269                	lui	tp,0x1a
c0408e50:	6372732f          	0x6372732f
c0408e54:	7375722f          	0x7375722f
c0408e58:	2f74                	fld	fa3,216(a4)
c0408e5a:	2f637273          	csrrci	tp,0x2f6,6
c0408e5e:	696c                	flw	fa1,84(a0)
c0408e60:	6362                	flw	ft6,24(sp)
c0408e62:	2f65726f          	jal	tp,c0460158 <ebss+0x3f038>
c0408e66:	6974706f          	j	c0450cfc <ebss+0x2fbdc>
c0408e6a:	722e6e6f          	jal	t3,c04ef58c <ebss+0xce46c>
c0408e6e:	          	0x8e000073

c0408e70 <.Lanon.1403efd71e1bad9f1557c91e33bfc3dc.17>:
c0408e70:	8e00                	0x8e00
c0408e72:	c040                	sw	s0,4(s0)
c0408e74:	0000006f          	j	c0408e74 <.Lanon.1403efd71e1bad9f1557c91e33bfc3dc.17+0x4>
c0408e78:	04a1                	addi	s1,s1,8
c0408e7a:	0000                	unimp
c0408e7c:	0005                	c.nop	1
	...

c0408e80 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.0>:
c0408e80:	2e2e                	fld	ft8,200(sp)
	...

c0408e84 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.1>:
c0408e84:	8e80                	0x8e80
c0408e86:	c040                	sw	s0,4(s0)
c0408e88:	0002                	c.slli64	zero
	...

c0408e8c <.Lanon.06de3417c1d4390f2de82cb9f42eb873.2>:
c0408e8c:	445c                	lw	a5,12(s0)
c0408e8e:	c040                	sw	s0,4(s0)
c0408e90:	0000                	unimp
c0408e92:	0000                	unimp
c0408e94:	0001                	nop
c0408e96:	0000                	unimp
c0408e98:	46f0                	lw	a2,76(a3)
c0408e9a:	c040                	sw	s0,4(s0)

c0408e9c <.Lanon.06de3417c1d4390f2de82cb9f42eb873.3>:
c0408e9c:	6170                	flw	fa2,68(a0)
c0408e9e:	696e                	flw	fs2,216(sp)
c0408ea0:	64656b63          	bltu	a0,t1,c04094f6 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x58>
c0408ea4:	6120                	flw	fs0,64(a0)
c0408ea6:	2074                	fld	fa3,192(s0)

c0408ea8 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.4>:
c0408ea8:	          	fsw	ft2,526(s8) # 1a20e <XLENB+0x1a20a>

c0408ea9 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.5>:
c0408ea9:	          	fsw	ft2,-1384(zero) # fffffa98 <ebss+0x3fbde978>

c0408eac <.Lanon.06de3417c1d4390f2de82cb9f42eb873.6>:
c0408eac:	8ea8                	0x8ea8
c0408eae:	c040                	sw	s0,4(s0)
c0408eb0:	0001                	nop
c0408eb2:	0000                	unimp
c0408eb4:	8ea9                	xor	a3,a3,a0
c0408eb6:	c040                	sw	s0,4(s0)
c0408eb8:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>

c0408ebc <.Lanon.06de3417c1d4390f2de82cb9f42eb873.8>:
c0408ebc:	003a                	c.slli	zero,0xe
	...

c0408ec0 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.9>:
c0408ec0:	8ebc                	0x8ebc
c0408ec2:	c040                	sw	s0,4(s0)
c0408ec4:	0000                	unimp
c0408ec6:	0000                	unimp
c0408ec8:	8ebc                	0x8ebc
c0408eca:	c040                	sw	s0,4(s0)
c0408ecc:	0001                	nop
c0408ece:	0000                	unimp
c0408ed0:	8ebc                	0x8ebc
c0408ed2:	c040                	sw	s0,4(s0)
c0408ed4:	0001                	nop
c0408ed6:	0000                	unimp
c0408ed8:	6e69                	lui	t3,0x1a
c0408eda:	6564                	flw	fs1,76(a0)
c0408edc:	2078                	fld	fa4,192(s0)
c0408ede:	2074756f          	jal	a0,c04508e4 <ebss+0x2f7c4>
c0408ee2:	6220666f          	jal	a2,c040f504 <edata+0x2504>
c0408ee6:	646e756f          	jal	a0,c04f052c <ebss+0xcf40c>
c0408eea:	74203a73          	csrrc	s4,0x742,zero
c0408eee:	6568                	flw	fa0,76(a0)
c0408ef0:	6c20                	flw	fs0,88(s0)
c0408ef2:	6e65                	lui	t3,0x19
c0408ef4:	6920                	flw	fs0,80(a0)
c0408ef6:	          	csrr	zero,0x622

c0408ef8 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.11>:
c0408ef8:	6220                	flw	fs0,64(a2)
c0408efa:	7475                	lui	s0,0xffffd
c0408efc:	7420                	flw	fs0,104(s0)
c0408efe:	6568                	flw	fa0,76(a0)
c0408f00:	6920                	flw	fs0,80(a0)
c0408f02:	646e                	flw	fs0,216(sp)
c0408f04:	7865                	lui	a6,0xffff9
c0408f06:	6920                	flw	fs0,80(a0)
c0408f08:	00002073          	csrr	zero,ustatus

c0408f0c <.Lanon.06de3417c1d4390f2de82cb9f42eb873.12>:
c0408f0c:	8ed8                	0x8ed8
c0408f0e:	c040                	sw	s0,4(s0)
c0408f10:	0020                	addi	s0,sp,8
c0408f12:	0000                	unimp
c0408f14:	8ef8                	0x8ef8
c0408f16:	c040                	sw	s0,4(s0)
c0408f18:	0012                	c.slli	zero,0x4
	...

c0408f1c <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.13>:
c0408f1c:	                	flw	fs0,68(a4)

c0408f1d <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.16>:
c0408f1d:	6c6c6163          	bltu	s8,t1,c04095df <anon.e751f650313ada8e74ab7a6897452231.41.llvm.5375085799470840418+0x1c>
c0408f21:	6465                	lui	s0,0x19
c0408f23:	6020                	flw	fs0,64(s0)
c0408f25:	6974704f          	fnmadd.s	ft0,fs0,fs7,fa3
c0408f29:	3a3a6e6f          	jal	t3,c04afacb <ebss+0x8e9ab>
c0408f2d:	6e75                	lui	t3,0x1d
c0408f2f:	70617277          	0x70617277
c0408f33:	2928                	fld	fa0,80(a0)
c0408f35:	2060                	fld	fs0,192(s0)
c0408f37:	61206e6f          	jal	t3,c040f549 <edata+0x2549>
c0408f3b:	6020                	flw	fs0,64(s0)
c0408f3d:	6f4e                	flw	ft10,208(sp)
c0408f3f:	656e                	flw	fa0,216(sp)
c0408f41:	2060                	fld	fs0,192(s0)
c0408f43:	6176                	flw	ft2,92(sp)
c0408f45:	756c                	flw	fa1,108(a0)
c0408f47:	                	jal	c04096ff <anon.e751f650313ada8e74ab7a6897452231.42.llvm.5375085799470840418+0x2>

c0408f48 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.17>:
c0408f48:	6d6f682f          	0x6d6f682f
c0408f4c:	2f65                	jal	c0409704 <anon.e751f650313ada8e74ab7a6897452231.42.llvm.5375085799470840418+0x7>
c0408f4e:	6166                	flw	ft2,88(sp)
c0408f50:	7a6e                	flw	fs4,248(sp)
c0408f52:	6968                	flw	fa0,84(a0)
c0408f54:	6570                	flw	fa2,76(a0)
c0408f56:	676e                	flw	fa4,216(sp)
c0408f58:	75722e2f          	0x75722e2f
c0408f5c:	70757473          	csrrci	s0,0x707,10
c0408f60:	6f6f742f          	0x6f6f742f
c0408f64:	636c                	flw	fa1,68(a4)
c0408f66:	6168                	flw	fa0,68(a0)
c0408f68:	6e69                	lui	t3,0x1a
c0408f6a:	696e2f73          	csrrs	t5,0x696,t3
c0408f6e:	6c746867          	0x6c746867
c0408f72:	2d79                	jal	c0409610 <anon.e751f650313ada8e74ab7a6897452231.41.llvm.5375085799470840418+0x4d>
c0408f74:	3878                	fld	fa4,240(s0)
c0408f76:	5f36                	lw	t5,108(sp)
c0408f78:	3436                	fld	fs0,360(sp)
c0408f7a:	752d                	lui	a0,0xfffeb
c0408f7c:	6b6e                	flw	fs6,216(sp)
c0408f7e:	6f6e                	flw	ft10,216(sp)
c0408f80:	6c2d6e77          	0x6c2d6e77
c0408f84:	6e69                	lui	t3,0x1a
c0408f86:	7875                	lui	a6,0xffffd
c0408f88:	672d                	lui	a4,0xb
c0408f8a:	756e                	flw	fa0,248(sp)
c0408f8c:	62696c2f          	0x62696c2f
c0408f90:	7375722f          	0x7375722f
c0408f94:	6c74                	flw	fa3,92(s0)
c0408f96:	6269                	lui	tp,0x1a
c0408f98:	6372732f          	0x6372732f
c0408f9c:	7375722f          	0x7375722f
c0408fa0:	2f74                	fld	fa3,216(a4)
c0408fa2:	2f637273          	csrrci	tp,0x2f6,6
c0408fa6:	696c                	flw	fa1,84(a0)
c0408fa8:	6362                	flw	ft6,24(sp)
c0408faa:	2f65726f          	jal	tp,c04602a0 <ebss+0x3f180>
c0408fae:	6974706f          	j	c0450e44 <ebss+0x2fd24>
c0408fb2:	722e6e6f          	jal	t3,c04ef6d4 <ebss+0xce5b4>
c0408fb6:	          	0x8f1d0073

c0408fb8 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.18>:
c0408fb8:	8f1d                	sub	a4,a4,a5
c0408fba:	c040                	sw	s0,4(s0)
c0408fbc:	0000002b          	0x2b
c0408fc0:	8f48                	0x8f48
c0408fc2:	c040                	sw	s0,4(s0)
c0408fc4:	0000006f          	j	c0408fc4 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.18+0xc>
c0408fc8:	017a                	slli	sp,sp,0x1e
c0408fca:	0000                	unimp
c0408fcc:	0015                	c.nop	5
	...

c0408fd0 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.20>:
c0408fd0:	203a                	fld	ft0,392(sp)
	...

c0408fd4 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.21>:
c0408fd4:	8fd0                	0x8fd0
c0408fd6:	c040                	sw	s0,4(s0)
c0408fd8:	0000                	unimp
c0408fda:	0000                	unimp
c0408fdc:	8fd0                	0x8fd0
c0408fde:	c040                	sw	s0,4(s0)
c0408fe0:	0002                	c.slli64	zero
	...

c0408fe4 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.22>:
c0408fe4:	6d6f682f          	0x6d6f682f
c0408fe8:	2f65                	jal	c04097a0 <anon.e751f650313ada8e74ab7a6897452231.43.llvm.5375085799470840418+0x5d>
c0408fea:	6166                	flw	ft2,88(sp)
c0408fec:	7a6e                	flw	fs4,248(sp)
c0408fee:	6968                	flw	fa0,84(a0)
c0408ff0:	6570                	flw	fa2,76(a0)
c0408ff2:	676e                	flw	fa4,216(sp)
c0408ff4:	75722e2f          	0x75722e2f
c0408ff8:	70757473          	csrrci	s0,0x707,10
c0408ffc:	6f6f742f          	0x6f6f742f
c0409000:	636c                	flw	fa1,68(a4)
c0409002:	6168                	flw	fa0,68(a0)
c0409004:	6e69                	lui	t3,0x1a
c0409006:	696e2f73          	csrrs	t5,0x696,t3
c040900a:	6c746867          	0x6c746867
c040900e:	2d79                	jal	c04096ac <anon.e751f650313ada8e74ab7a6897452231.41.llvm.5375085799470840418+0xe9>
c0409010:	3878                	fld	fa4,240(s0)
c0409012:	5f36                	lw	t5,108(sp)
c0409014:	3436                	fld	fs0,360(sp)
c0409016:	752d                	lui	a0,0xfffeb
c0409018:	6b6e                	flw	fs6,216(sp)
c040901a:	6f6e                	flw	ft10,216(sp)
c040901c:	6c2d6e77          	0x6c2d6e77
c0409020:	6e69                	lui	t3,0x1a
c0409022:	7875                	lui	a6,0xffffd
c0409024:	672d                	lui	a4,0xb
c0409026:	756e                	flw	fa0,248(sp)
c0409028:	62696c2f          	0x62696c2f
c040902c:	7375722f          	0x7375722f
c0409030:	6c74                	flw	fa3,92(s0)
c0409032:	6269                	lui	tp,0x1a
c0409034:	6372732f          	0x6372732f
c0409038:	7375722f          	0x7375722f
c040903c:	2f74                	fld	fa3,216(a4)
c040903e:	2f637273          	csrrci	tp,0x2f6,6
c0409042:	696c                	flw	fa1,84(a0)
c0409044:	6362                	flw	ft6,24(sp)
c0409046:	2f65726f          	jal	tp,c046033c <ebss+0x3f21c>
c040904a:	6572                	flw	fa0,28(sp)
c040904c:	746c7573          	csrrci	a0,0x746,24
c0409050:	722e                	flw	ft4,232(sp)
c0409052:	          	0x8fe40073

c0409054 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.23>:
c0409054:	8fe4                	0x8fe4
c0409056:	c040                	sw	s0,4(s0)
c0409058:	0000006f          	j	c0409058 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.23+0x4>
c040905c:	048d                	addi	s1,s1,3
c040905e:	0000                	unimp
c0409060:	0005                	c.nop	1
	...

c0409064 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.44>:
c0409064:	2e2e2e5b          	0x2e2e2e5b
c0409068:	                	lui	tp,0x17

c0409069 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.45>:
c0409069:	7962                	flw	fs2,56(sp)
c040906b:	6574                	flw	fa3,76(a0)
c040906d:	6920                	flw	fs0,80(a0)
c040906f:	646e                	flw	fs0,216(sp)
c0409071:	7865                	lui	a6,0xffff9
c0409073:	                	fld	fs0,64(s0)

c0409074 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.46>:
c0409074:	6920                	flw	fs0,80(a0)
c0409076:	756f2073          	csrs	0x756,t5
c040907a:	2074                	fld	fa3,192(s0)
c040907c:	6220666f          	jal	a2,c040f69e <edata+0x269e>
c0409080:	646e756f          	jal	a0,c04f06c6 <ebss+0xcf5a6>
c0409084:	666f2073          	csrs	0x666,t5
c0409088:	6020                	flw	fs0,64(s0)
	...

c040908c <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.47>:
c040908c:	9069                	srli	s0,s0,0x3a
c040908e:	c040                	sw	s0,4(s0)
c0409090:	0000000b          	0xb
c0409094:	9074                	0x9074
c0409096:	c040                	sw	s0,4(s0)
c0409098:	0016                	c.slli	zero,0x5
c040909a:	0000                	unimp
c040909c:	8f1c                	0x8f1c
c040909e:	c040                	sw	s0,4(s0)
c04090a0:	0001                	nop
	...

c04090a4 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.48>:
c04090a4:	6d6f682f          	0x6d6f682f
c04090a8:	2f65                	jal	c0409860 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0x77>
c04090aa:	6166                	flw	ft2,88(sp)
c04090ac:	7a6e                	flw	fs4,248(sp)
c04090ae:	6968                	flw	fa0,84(a0)
c04090b0:	6570                	flw	fa2,76(a0)
c04090b2:	676e                	flw	fa4,216(sp)
c04090b4:	75722e2f          	0x75722e2f
c04090b8:	70757473          	csrrci	s0,0x707,10
c04090bc:	6f6f742f          	0x6f6f742f
c04090c0:	636c                	flw	fa1,68(a4)
c04090c2:	6168                	flw	fa0,68(a0)
c04090c4:	6e69                	lui	t3,0x1a
c04090c6:	696e2f73          	csrrs	t5,0x696,t3
c04090ca:	6c746867          	0x6c746867
c04090ce:	2d79                	jal	c040976c <anon.e751f650313ada8e74ab7a6897452231.43.llvm.5375085799470840418+0x29>
c04090d0:	3878                	fld	fa4,240(s0)
c04090d2:	5f36                	lw	t5,108(sp)
c04090d4:	3436                	fld	fs0,360(sp)
c04090d6:	752d                	lui	a0,0xfffeb
c04090d8:	6b6e                	flw	fs6,216(sp)
c04090da:	6f6e                	flw	ft10,216(sp)
c04090dc:	6c2d6e77          	0x6c2d6e77
c04090e0:	6e69                	lui	t3,0x1a
c04090e2:	7875                	lui	a6,0xffffd
c04090e4:	672d                	lui	a4,0xb
c04090e6:	756e                	flw	fa0,248(sp)
c04090e8:	62696c2f          	0x62696c2f
c04090ec:	7375722f          	0x7375722f
c04090f0:	6c74                	flw	fa3,92(s0)
c04090f2:	6269                	lui	tp,0x1a
c04090f4:	6372732f          	0x6372732f
c04090f8:	7375722f          	0x7375722f
c04090fc:	2f74                	fld	fa3,216(a4)
c04090fe:	2f637273          	csrrci	tp,0x2f6,6
c0409102:	696c                	flw	fa1,84(a0)
c0409104:	6362                	flw	ft6,24(sp)
c0409106:	2f65726f          	jal	tp,c04603fc <ebss+0x3f2dc>
c040910a:	2f727473          	csrrci	s0,0x2f7,4
c040910e:	6f6d                	lui	t5,0x1b
c0409110:	2e64                	fld	fs1,216(a2)
c0409112:	7372                	flw	ft6,60(sp)

c0409114 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.49>:
c0409114:	90a4                	0x90a4
c0409116:	c040                	sw	s0,4(s0)
c0409118:	0070                	addi	a2,sp,12
c040911a:	0000                	unimp
c040911c:	00000803          	lb	a6,0(zero) # 0 <XLENB-0x4>
c0409120:	0009                	c.nop	2
	...

c0409124 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.50>:
c0409124:	6562                	flw	fa0,24(sp)
c0409126:	206e6967          	0x206e6967
c040912a:	3d3c                	fld	fa5,120(a0)
c040912c:	6520                	flw	fs0,72(a0)
c040912e:	646e                	flw	fs0,216(sp)
c0409130:	2820                	fld	fs0,80(s0)
	...

c0409134 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.53>:
c0409134:	9124                	0x9124
c0409136:	c040                	sw	s0,4(s0)
c0409138:	000e                	c.slli	zero,0x3
c040913a:	0000                	unimp
c040913c:	824c                	0x824c
c040913e:	c040                	sw	s0,4(s0)
c0409140:	0004                	0x4
c0409142:	0000                	unimp
c0409144:	849c                	0x849c
c0409146:	c040                	sw	s0,4(s0)
c0409148:	0010                	0x10
c040914a:	0000                	unimp
c040914c:	8f1c                	0x8f1c
c040914e:	c040                	sw	s0,4(s0)
c0409150:	0001                	nop
	...

c0409154 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.54>:
c0409154:	90a4                	0x90a4
c0409156:	c040                	sw	s0,4(s0)
c0409158:	0070                	addi	a2,sp,12
c040915a:	0000                	unimp
c040915c:	00000807          	0x807
c0409160:	0005                	c.nop	1
	...

c0409164 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.55>:
c0409164:	6920                	flw	fs0,80(a0)
c0409166:	6f6e2073          	csrs	0x6f6,t3
c040916a:	2074                	fld	fa3,192(s0)
c040916c:	2061                	jal	c04091f4 <.Lanon.e751f650313ada8e74ab7a6897452231.4+0x1>
c040916e:	72616863          	bltu	sp,t1,c040989e <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0xb5>
c0409172:	6220                	flw	fs0,64(a2)
c0409174:	646e756f          	jal	a0,c04f07ba <ebss+0xcf69a>
c0409178:	7261                	lui	tp,0xffff8
c040917a:	3b79                	jal	c0408f18 <.Lanon.06de3417c1d4390f2de82cb9f42eb873.12+0xc>
c040917c:	6920                	flw	fs0,80(a0)
c040917e:	2074                	fld	fa3,192(s0)
c0409180:	7369                	lui	t1,0xffffa
c0409182:	6920                	flw	fs0,80(a0)
c0409184:	736e                	flw	ft6,248(sp)
c0409186:	6469                	lui	s0,0x1a
c0409188:	2065                	jal	c0409230 <.Lanon.e751f650313ada8e74ab7a6897452231.4+0x3d>

c040918a <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.57>:
c040918a:	2029                	jal	c0409194 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.58+0x4>
c040918c:	6020666f          	jal	a2,c040f78e <edata+0x278e>

c0409190 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.58>:
c0409190:	9069                	srli	s0,s0,0x3a
c0409192:	c040                	sw	s0,4(s0)
c0409194:	0000000b          	0xb
c0409198:	9164                	0x9164
c040919a:	c040                	sw	s0,4(s0)
c040919c:	0026                	c.slli	zero,0x9
c040919e:	0000                	unimp
c04091a0:	c0408a47          	fmsub.s	fs4,ft1,ft4,fs8,rne
c04091a4:	0008                	0x8
c04091a6:	0000                	unimp
c04091a8:	918a                	add	gp,gp,sp
c04091aa:	c040                	sw	s0,4(s0)
c04091ac:	0006                	c.slli	zero,0x1
c04091ae:	0000                	unimp
c04091b0:	8f1c                	0x8f1c
c04091b2:	c040                	sw	s0,4(s0)
c04091b4:	0001                	nop
	...

c04091b8 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.59>:
c04091b8:	90a4                	0x90a4
c04091ba:	c040                	sw	s0,4(s0)
c04091bc:	0070                	addi	a2,sp,12
c04091be:	0000                	unimp
c04091c0:	0814                	addi	a3,sp,16
c04091c2:	0000                	unimp
c04091c4:	0005                	c.nop	1
	...

c04091c8 <.Lanon.e751f650313ada8e74ab7a6897452231.3>:
c04091c8:	6c6c6163          	bltu	s8,t1,c040988a <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0xa1>
c04091cc:	6465                	lui	s0,0x19
c04091ce:	6020                	flw	fs0,64(s0)
c04091d0:	6974704f          	fnmadd.s	ft0,fs0,fs7,fa3
c04091d4:	3a3a6e6f          	jal	t3,c04afd76 <ebss+0x8ec56>
c04091d8:	6e75                	lui	t3,0x1d
c04091da:	70617277          	0x70617277
c04091de:	2928                	fld	fa0,80(a0)
c04091e0:	2060                	fld	fs0,192(s0)
c04091e2:	61206e6f          	jal	t3,c040f7f4 <edata+0x27f4>
c04091e6:	6020                	flw	fs0,64(s0)
c04091e8:	6f4e                	flw	ft10,208(sp)
c04091ea:	656e                	flw	fa0,216(sp)
c04091ec:	2060                	fld	fs0,192(s0)
c04091ee:	6176                	flw	ft2,92(sp)
c04091f0:	756c                	flw	fa1,108(a0)
c04091f2:	                	jal	c04099aa <.Lanon.e751f650313ada8e74ab7a6897452231.57+0x22>

c04091f3 <.Lanon.e751f650313ada8e74ab7a6897452231.4>:
c04091f3:	6d6f682f          	0x6d6f682f
c04091f7:	2f65                	jal	c04099af <.Lanon.e751f650313ada8e74ab7a6897452231.57+0x27>
c04091f9:	6166                	flw	ft2,88(sp)
c04091fb:	7a6e                	flw	fs4,248(sp)
c04091fd:	6968                	flw	fa0,84(a0)
c04091ff:	6570                	flw	fa2,76(a0)
c0409201:	676e                	flw	fa4,216(sp)
c0409203:	75722e2f          	0x75722e2f
c0409207:	70757473          	csrrci	s0,0x707,10
c040920b:	6f6f742f          	0x6f6f742f
c040920f:	636c                	flw	fa1,68(a4)
c0409211:	6168                	flw	fa0,68(a0)
c0409213:	6e69                	lui	t3,0x1a
c0409215:	696e2f73          	csrrs	t5,0x696,t3
c0409219:	6c746867          	0x6c746867
c040921d:	2d79                	jal	c04098bb <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0xd2>
c040921f:	3878                	fld	fa4,240(s0)
c0409221:	5f36                	lw	t5,108(sp)
c0409223:	3436                	fld	fs0,360(sp)
c0409225:	752d                	lui	a0,0xfffeb
c0409227:	6b6e                	flw	fs6,216(sp)
c0409229:	6f6e                	flw	ft10,216(sp)
c040922b:	6c2d6e77          	0x6c2d6e77
c040922f:	6e69                	lui	t3,0x1a
c0409231:	7875                	lui	a6,0xffffd
c0409233:	672d                	lui	a4,0xb
c0409235:	756e                	flw	fa0,248(sp)
c0409237:	62696c2f          	0x62696c2f
c040923b:	7375722f          	0x7375722f
c040923f:	6c74                	flw	fa3,92(s0)
c0409241:	6269                	lui	tp,0x1a
c0409243:	6372732f          	0x6372732f
c0409247:	7375722f          	0x7375722f
c040924b:	2f74                	fld	fa3,216(a4)
c040924d:	2f637273          	csrrci	tp,0x2f6,6
c0409251:	696c                	flw	fa1,84(a0)
c0409253:	6362                	flw	ft6,24(sp)
c0409255:	2f65726f          	jal	tp,c046054b <ebss+0x3f42b>
c0409259:	6974706f          	j	c04510ef <ebss+0x2ffcf>
c040925d:	722e6e6f          	jal	t3,c04ef97f <ebss+0xce85f>
c0409261:	          	0xc8000073

c0409264 <.Lanon.e751f650313ada8e74ab7a6897452231.5>:
c0409264:	91c8                	0x91c8
c0409266:	c040                	sw	s0,4(s0)
c0409268:	0000002b          	0x2b
c040926c:	c04091f3          	csrrw	gp,hpmcounter4,ra
c0409270:	0000006f          	j	c0409270 <.Lanon.e751f650313ada8e74ab7a6897452231.5+0xc>
c0409274:	017a                	slli	sp,sp,0x1e
c0409276:	0000                	unimp
c0409278:	0015                	c.nop	5
	...

c040927c <.Lanon.e751f650313ada8e74ab7a6897452231.15>:
c040927c:	6d6f682f          	0x6d6f682f
c0409280:	2f65                	jal	c0409a38 <.Lanon.e751f650313ada8e74ab7a6897452231.57+0xb0>
c0409282:	6166                	flw	ft2,88(sp)
c0409284:	7a6e                	flw	fs4,248(sp)
c0409286:	6968                	flw	fa0,84(a0)
c0409288:	6570                	flw	fa2,76(a0)
c040928a:	676e                	flw	fa4,216(sp)
c040928c:	75722e2f          	0x75722e2f
c0409290:	70757473          	csrrci	s0,0x707,10
c0409294:	6f6f742f          	0x6f6f742f
c0409298:	636c                	flw	fa1,68(a4)
c040929a:	6168                	flw	fa0,68(a0)
c040929c:	6e69                	lui	t3,0x1a
c040929e:	696e2f73          	csrrs	t5,0x696,t3
c04092a2:	6c746867          	0x6c746867
c04092a6:	2d79                	jal	c0409944 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0x15b>
c04092a8:	3878                	fld	fa4,240(s0)
c04092aa:	5f36                	lw	t5,108(sp)
c04092ac:	3436                	fld	fs0,360(sp)
c04092ae:	752d                	lui	a0,0xfffeb
c04092b0:	6b6e                	flw	fs6,216(sp)
c04092b2:	6f6e                	flw	ft10,216(sp)
c04092b4:	6c2d6e77          	0x6c2d6e77
c04092b8:	6e69                	lui	t3,0x1a
c04092ba:	7875                	lui	a6,0xffffd
c04092bc:	672d                	lui	a4,0xb
c04092be:	756e                	flw	fa0,248(sp)
c04092c0:	62696c2f          	0x62696c2f
c04092c4:	7375722f          	0x7375722f
c04092c8:	6c74                	flw	fa3,92(s0)
c04092ca:	6269                	lui	tp,0x1a
c04092cc:	6372732f          	0x6372732f
c04092d0:	7375722f          	0x7375722f
c04092d4:	2f74                	fld	fa3,216(a4)
c04092d6:	2f637273          	csrrci	tp,0x2f6,6
c04092da:	696c                	flw	fa1,84(a0)
c04092dc:	6362                	flw	ft6,24(sp)
c04092de:	2f65726f          	jal	tp,c04605d4 <ebss+0x3f4b4>
c04092e2:	63696c73          	csrrsi	s8,0x636,18
c04092e6:	2f65                	jal	c0409a9e <.Lanon.e751f650313ada8e74ab7a6897452231.57+0x116>
c04092e8:	6f6d                	lui	t5,0x1b
c04092ea:	2e64                	fld	fs1,216(a2)
c04092ec:	7372                	flw	ft6,60(sp)

c04092ee <.Lanon.e751f650313ada8e74ab7a6897452231.17>:
c04092ee:	6e69                	lui	t3,0x1a
c04092f0:	6564                	flw	fs1,76(a0)
c04092f2:	2078                	fld	fa4,192(s0)

c04092f4 <.Lanon.e751f650313ada8e74ab7a6897452231.18>:
c04092f4:	6f20                	flw	fs0,88(a4)
c04092f6:	7475                	lui	s0,0xffffd
c04092f8:	6f20                	flw	fs0,88(a4)
c04092fa:	2066                	fld	ft0,88(sp)
c04092fc:	6172                	flw	ft2,28(sp)
c04092fe:	676e                	flw	fa4,216(sp)
c0409300:	2065                	jal	c04093a8 <str.4+0x28>
c0409302:	6f66                	flw	ft10,88(sp)
c0409304:	2072                	fld	ft0,280(sp)
c0409306:	63696c73          	csrrsi	s8,0x636,18
c040930a:	2065                	jal	c04093b2 <str.4+0x32>
c040930c:	6c20666f          	jal	a2,c040f9ce <edata+0x29ce>
c0409310:	6e65                	lui	t3,0x19
c0409312:	20687467          	0x20687467
	...

c0409318 <.Lanon.e751f650313ada8e74ab7a6897452231.19>:
c0409318:	92ee                	add	t0,t0,s11
c040931a:	c040                	sw	s0,4(s0)
c040931c:	0006                	c.slli	zero,0x1
c040931e:	0000                	unimp
c0409320:	92f4                	0x92f4
c0409322:	c040                	sw	s0,4(s0)
c0409324:	0022                	c.slli	zero,0x8
	...

c0409328 <.Lanon.e751f650313ada8e74ab7a6897452231.20>:
c0409328:	927c                	0x927c
c040932a:	c040                	sw	s0,4(s0)
c040932c:	0072                	c.slli	zero,0x1c
c040932e:	0000                	unimp
c0409330:	0a68                	addi	a0,sp,284
c0409332:	0000                	unimp
c0409334:	0005                	c.nop	1
	...

c0409338 <.Lanon.e751f650313ada8e74ab7a6897452231.21>:
c0409338:	63696c73          	csrrsi	s8,0x636,18
c040933c:	2065                	jal	c04093e4 <str.4+0x64>
c040933e:	6e69                	lui	t3,0x1a
c0409340:	6564                	flw	fs1,76(a0)
c0409342:	2078                	fld	fa4,192(s0)
c0409344:	72617473          	csrrci	s0,0x726,2
c0409348:	7374                	flw	fa3,100(a4)
c040934a:	6120                	flw	fs0,64(a0)
c040934c:	2074                	fld	fa3,192(s0)

c040934e <.Lanon.e751f650313ada8e74ab7a6897452231.22>:
c040934e:	6220                	flw	fs0,64(a2)
c0409350:	7475                	lui	s0,0xffffd
c0409352:	6520                	flw	fs0,72(a0)
c0409354:	646e                	flw	fs0,216(sp)
c0409356:	74612073          	csrs	0x746,sp
c040935a:	0020                	addi	s0,sp,8

c040935c <.Lanon.e751f650313ada8e74ab7a6897452231.23>:
c040935c:	9338                	0x9338
c040935e:	c040                	sw	s0,4(s0)
c0409360:	0016                	c.slli	zero,0x5
c0409362:	0000                	unimp
c0409364:	934e                	add	t1,t1,s3
c0409366:	c040                	sw	s0,4(s0)
c0409368:	000d                	c.nop	3
	...

c040936c <.Lanon.e751f650313ada8e74ab7a6897452231.24>:
c040936c:	927c                	0x927c
c040936e:	c040                	sw	s0,4(s0)
c0409370:	0072                	c.slli	zero,0x1c
c0409372:	0000                	unimp
c0409374:	0a6e                	slli	s4,s4,0x1b
c0409376:	0000                	unimp
c0409378:	0005                	c.nop	1
c040937a:	0000                	unimp
c040937c:	0000                	unimp
	...

c0409380 <str.4>:
c0409380:	6d6f682f          	0x6d6f682f
c0409384:	2f65                	jal	c0409b3c <.Lanon.e751f650313ada8e74ab7a6897452231.57+0x1b4>
c0409386:	6166                	flw	ft2,88(sp)
c0409388:	7a6e                	flw	fs4,248(sp)
c040938a:	6968                	flw	fa0,84(a0)
c040938c:	6570                	flw	fa2,76(a0)
c040938e:	676e                	flw	fa4,216(sp)
c0409390:	75722e2f          	0x75722e2f
c0409394:	70757473          	csrrci	s0,0x707,10
c0409398:	6f6f742f          	0x6f6f742f
c040939c:	636c                	flw	fa1,68(a4)
c040939e:	6168                	flw	fa0,68(a0)
c04093a0:	6e69                	lui	t3,0x1a
c04093a2:	696e2f73          	csrrs	t5,0x696,t3
c04093a6:	6c746867          	0x6c746867
c04093aa:	2d79                	jal	c0409a48 <.Lanon.e751f650313ada8e74ab7a6897452231.57+0xc0>
c04093ac:	3878                	fld	fa4,240(s0)
c04093ae:	5f36                	lw	t5,108(sp)
c04093b0:	3436                	fld	fs0,360(sp)
c04093b2:	752d                	lui	a0,0xfffeb
c04093b4:	6b6e                	flw	fs6,216(sp)
c04093b6:	6f6e                	flw	ft10,216(sp)
c04093b8:	6c2d6e77          	0x6c2d6e77
c04093bc:	6e69                	lui	t3,0x1a
c04093be:	7875                	lui	a6,0xffffd
c04093c0:	672d                	lui	a4,0xb
c04093c2:	756e                	flw	fa0,248(sp)
c04093c4:	62696c2f          	0x62696c2f
c04093c8:	7375722f          	0x7375722f
c04093cc:	6c74                	flw	fa3,92(s0)
c04093ce:	6269                	lui	tp,0x1a
c04093d0:	6372732f          	0x6372732f
c04093d4:	7375722f          	0x7375722f
c04093d8:	2f74                	fld	fa3,216(a4)
c04093da:	2f637273          	csrrci	tp,0x2f6,6
c04093de:	696c                	flw	fa1,84(a0)
c04093e0:	6362                	flw	ft6,24(sp)
c04093e2:	2f65726f          	jal	tp,c04606d8 <ebss+0x3f5b8>
c04093e6:	6e75                	lui	t3,0x1d
c04093e8:	6369                	lui	t1,0x1a
c04093ea:	2f65646f          	jal	s0,c045f6e0 <ebss+0x3e5c0>
c04093ee:	6f62                	flw	ft10,24(sp)
c04093f0:	745f6c6f          	jal	s8,c0500334 <ebss+0xdf214>
c04093f4:	6972                	flw	fs2,28(sp)
c04093f6:	2e65                	jal	c04097ae <anon.e751f650313ada8e74ab7a6897452231.43.llvm.5375085799470840418+0x6b>
c04093f8:	7372                	flw	ft6,60(sp)
	...

c04093fc <anon.e751f650313ada8e74ab7a6897452231.33.llvm.5375085799470840418>:
c04093fc:	9380                	0x9380
c04093fe:	c040                	sw	s0,4(s0)
c0409400:	007a                	c.slli	zero,0x1e
c0409402:	0000                	unimp
c0409404:	00000027          	0x27
c0409408:	0019                	c.nop	6
	...

c040940c <anon.e751f650313ada8e74ab7a6897452231.34.llvm.5375085799470840418>:
c040940c:	9380                	0x9380
c040940e:	c040                	sw	s0,4(s0)
c0409410:	007a                	c.slli	zero,0x1e
c0409412:	0000                	unimp
c0409414:	0028                	addi	a0,sp,8
c0409416:	0000                	unimp
c0409418:	0020                	addi	s0,sp,8
	...

c040941c <anon.e751f650313ada8e74ab7a6897452231.35.llvm.5375085799470840418>:
c040941c:	9380                	0x9380
c040941e:	c040                	sw	s0,4(s0)
c0409420:	007a                	c.slli	zero,0x1e
c0409422:	0000                	unimp
c0409424:	002a                	c.slli	zero,0xa
c0409426:	0000                	unimp
c0409428:	0019                	c.nop	6
	...

c040942c <anon.e751f650313ada8e74ab7a6897452231.36.llvm.5375085799470840418>:
c040942c:	9380                	0x9380
c040942e:	c040                	sw	s0,4(s0)
c0409430:	007a                	c.slli	zero,0x1e
c0409432:	0000                	unimp
c0409434:	0000002b          	0x2b
c0409438:	0018                	0x18
	...

c040943c <anon.e751f650313ada8e74ab7a6897452231.37.llvm.5375085799470840418>:
c040943c:	9380                	0x9380
c040943e:	c040                	sw	s0,4(s0)
c0409440:	007a                	c.slli	zero,0x1e
c0409442:	0000                	unimp
c0409444:	002c                	addi	a1,sp,8
c0409446:	0000                	unimp
c0409448:	0020                	addi	s0,sp,8
	...

c040944c <anon.e751f650313ada8e74ab7a6897452231.39.llvm.5375085799470840418>:
c040944c:	0100                	addi	s0,sp,128
c040944e:	06050503          	lb	a0,96(a0) # fffeb060 <ebss+0x3fbc9f40>
c0409452:	0306                	slli	t1,t1,0x1
c0409454:	08080607          	0x8080607
c0409458:	1109                	addi	sp,sp,-30
c040945a:	1c0a                	slli	s8,s8,0x22
c040945c:	140c190b          	0x140c190b
c0409460:	120d                	addi	tp,tp,-29
c0409462:	0d0e                	slli	s10,s10,0x3
c0409464:	0310040f          	0x310040f
c0409468:	1212                	slli	tp,tp,0x24
c040946a:	01160913          	addi	s2,a2,17 # 37373011 <XLENB+0x3737300d>
c040946e:	02180517          	auipc	a0,0x2180
c0409472:	0319                	addi	t1,t1,6
c0409474:	071a                	slli	a4,a4,0x6
c0409476:	021c                	addi	a5,sp,256
c0409478:	011d                	addi	sp,sp,7
c040947a:	161f 0320 042b      	0x42b0320161f
c0409480:	022c                	addi	a1,sp,264
c0409482:	0b2d                	addi	s6,s6,11
c0409484:	012e                	slli	sp,sp,0xb
c0409486:	0330                	addi	a2,sp,392
c0409488:	0231                	addi	tp,tp,12
c040948a:	0132                	slli	sp,sp,0xc
c040948c:	02a902a7          	0x2a902a7
c0409490:	04aa                	slli	s1,s1,0xa
c0409492:	02fa08ab          	0x2fa08ab
c0409496:	04fd05fb          	0x4fd05fb
c040949a:	03fe                	slli	t2,t2,0x1f
c040949c:	09ff                	0x9ff

c040949e <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418>:
c040949e:	78ad                	lui	a7,0xfffeb
c04094a0:	8b79                	andi	a4,a4,30
c04094a2:	a28d                	j	c0409604 <anon.e751f650313ada8e74ab7a6897452231.41.llvm.5375085799470840418+0x41>
c04094a4:	5730                	lw	a2,104(a4)
c04094a6:	8b58                	0x8b58
c04094a8:	908c                	0x908c
c04094aa:	1d1c                	addi	a5,sp,688
c04094ac:	0edd                	addi	t4,t4,23
c04094ae:	fb4c4b0f          	0xfb4c4b0f
c04094b2:	2efc                	fld	fa5,216(a3)
c04094b4:	5d5c3f2f          	0x5d5c3f2f
c04094b8:	b55f 84e2 8e8d      	0x8e8d84e2b55f
c04094be:	9291                	srli	a3,a3,0x24
c04094c0:	b1a9                	j	c040910a <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.48+0x66>
c04094c2:	bbba                	fsd	fa4,496(sp)
c04094c4:	c6c5                	beqz	a3,c040956c <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0xce>
c04094c6:	cac9                	beqz	a3,c0409558 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0xba>
c04094c8:	e4de                	fsw	fs7,72(sp)
c04094ca:	ffe5                	bnez	a5,c04094c2 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x24>
c04094cc:	0400                	addi	s0,sp,512
c04094ce:	1211                	addi	tp,tp,-28
c04094d0:	3129                	jal	c04090da <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.48+0x36>
c04094d2:	3734                	fld	fa3,104(a4)
c04094d4:	3b3a                	fld	fs6,424(sp)
c04094d6:	493d                	li	s2,15
c04094d8:	5d4a                	lw	s10,176(sp)
c04094da:	8e84                	0x8e84
c04094dc:	a992                	fsd	ft4,208(sp)
c04094de:	b4b1                	j	c0408f2a <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.16+0xd>
c04094e0:	bbba                	fsd	fa4,496(sp)
c04094e2:	cac6                	sw	a7,84(sp)
c04094e4:	cfce                	sw	s3,220(sp)
c04094e6:	e5e4                	fsw	fs1,76(a1)
c04094e8:	0400                	addi	s0,sp,512
c04094ea:	0e0d                	addi	t3,t3,3
c04094ec:	1211                	addi	tp,tp,-28
c04094ee:	3129                	jal	c04090f8 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.48+0x54>
c04094f0:	3a34                	fld	fa3,112(a2)
c04094f2:	4946453b          	0x4946453b
c04094f6:	5e4a                	lw	t3,176(sp)
c04094f8:	6564                	flw	fs1,76(a0)
c04094fa:	9184                	0x9184
c04094fc:	cec99d9b          	0xcec99d9b
c0409500:	29110dcf          	fnmadd.s	fs11,ft2,fa7,ft5,rne
c0409504:	4945                	li	s2,17
c0409506:	8d656457          	0x8d656457
c040950a:	a991                	j	c040995e <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0x175>
c040950c:	bab4                	fsd	fa3,112(a3)
c040950e:	dfc9c5bb          	0xdfc9c5bb
c0409512:	e5e4                	fsw	fs1,76(a1)
c0409514:	04f0                	addi	a2,sp,588
c0409516:	110d                	addi	sp,sp,-29
c0409518:	4945                	li	s2,17
c040951a:	6564                	flw	fs1,76(a0)
c040951c:	8180                	0x8180
c040951e:	b284                	fsd	fs1,32(a3)
c0409520:	bebc                	fsd	fa5,120(a3)
c0409522:	f0d7d5bf 8b8583f1 	0x8b8583f1f0d7d5bf
c040952a:	a6a4                	fsd	fs1,72(a3)
c040952c:	bfbe                	fsd	fa5,504(sp)
c040952e:	c7c5                	beqz	a5,c04095d6 <anon.e751f650313ada8e74ab7a6897452231.41.llvm.5375085799470840418+0x13>
c0409530:	cfce                	sw	s3,220(sp)
c0409532:	dbda                	sw	s6,244(sp)
c0409534:	9848                	0x9848
c0409536:	cdbd                	beqz	a1,c04095b4 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x116>
c0409538:	cec6                	sw	a7,92(sp)
c040953a:	4f4e49cf          	fnmadd.q	fs3,ft8,fs4,fs1,rmm
c040953e:	5f5e5957          	0x5f5e5957
c0409542:	8e89                	sub	a3,a3,a0
c0409544:	b7b6b18f          	0xb7b6b18f
c0409548:	c7c6c1bf 171611d7 	0x171611d7c7c6c1bf
c0409550:	f7f65c5b          	0xf7f65c5b
c0409554:	fffe                	fsw	ft11,252(sp)
c0409556:	0d80                	addi	s0,sp,720
c0409558:	716d                	addi	sp,sp,-272
c040955a:	dfde                	sw	s7,252(sp)
c040955c:	0f0e                	slli	t5,t5,0x3
c040955e:	6e1f 1c6f 5f1d      	0x5f1d1c6f6e1f
c0409564:	7e7d                	lui	t3,0xfffff
c0409566:	afae                	fsd	fa1,472(sp)
c0409568:	16fabcbb          	0x16fabcbb
c040956c:	461f1e17          	auipc	t3,0x461f1
c0409570:	584f4e47          	fmsub.s	ft8,ft10,ft4,fa1,rmm
c0409574:	5c5a                	lw	s8,180(sp)
c0409576:	7e5e                	flw	ft8,244(sp)
c0409578:	b57f                	0xb57f
c040957a:	d4c5                	beqz	s1,c0409522 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x84>
c040957c:	dcd5                	beqz	s1,c0409538 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x9a>
c040957e:	f1f0                	fsw	fa2,100(a1)
c0409580:	72f5                	lui	t0,0xffffd
c0409582:	75748f73          	0x75748f73
c0409586:	9796                	add	a5,a5,t0
c0409588:	2e265f2f          	0x2e265f2f
c040958c:	b7afa72f          	0xb7afa72f
c0409590:	d7cfc7bf 97409adf 	0x97409adfd7cfc7bf
c0409598:	3098                	fld	fa4,32(s1)
c040959a:	c1c01f8f          	0xc1c01f8f
c040959e:	ffce                	fsw	fs3,252(sp)
c04095a0:	4f4e                	lw	t5,208(sp)
c04095a2:	5b5a                	lw	s6,180(sp)
c04095a4:	100f0807          	0x100f0807
c04095a8:	efee2f27          	fsw	ft10,-258(t3) # 65fa46a <ebss+0x461d934a>
c04095ac:	6f6e                	flw	ft10,216(sp)
c04095ae:	423f3d37          	lui	s10,0x423f3
c04095b2:	9045                	srli	s0,s0,0x31
c04095b4:	fe91                	bnez	a3,c04094d0 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x32>
c04095b6:	53ff                	0x53ff
c04095b8:	c9c87567          	0xc9c87567
c04095bc:	d1d0                	sw	a2,36(a1)
c04095be:	d9d8                	sw	a4,52(a1)
c04095c0:	          	0xfffee7

c04095c3 <anon.e751f650313ada8e74ab7a6897452231.41.llvm.5375085799470840418>:
c04095c3:	2000                	fld	fs0,0(s0)
c04095c5:	225f df82 8204      	0x8204df82225f
c04095cb:	0844                	addi	s1,sp,20
c04095cd:	1106041b          	0x1106041b
c04095d1:	ac81                	j	c0409821 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0x38>
c04095d3:	800e                	c.mv	zero,gp
c04095d5:	151e35ab          	0x151e35ab
c04095d9:	e080                	fsw	fs0,0(s1)
c04095db:	01081903          	lh	s2,16(a6) # ffffd010 <ebss+0x3fbdbef0>
c04095df:	2f04                	fld	fs1,24(a4)
c04095e1:	3404                	fld	fs1,40(s0)
c04095e3:	0704                	addi	s1,sp,896
c04095e5:	06070103          	lb	sp,96(a4) # b060 <XLENB+0xb05c>
c04095e9:	500a1107          	0x500a1107
c04095ed:	5507120f          	0x5507120f
c04095f1:	0208                	addi	a0,sp,256
c04095f3:	1c04                	addi	s1,sp,560
c04095f5:	090a                	slli	s2,s2,0x2
c04095f7:	07030803          	lb	a6,112(t1) # 1a070 <XLENB+0x1a06c>
c04095fb:	03030203          	lb	tp,48(t1)
c04095ff:	05040c03          	lb	s8,80(s0) # ffffd050 <ebss+0x3fbdbf30>
c0409603:	01060b03          	lb	s6,16(a2)
c0409607:	150e                	slli	a0,a0,0x23
c0409609:	3a05                	jal	c0408f39 <.Lanon.53e61a1d05d1dff64ef1ff1d096def05.16+0x1c>
c040960b:	06071103          	lh	sp,96(a4)
c040960f:	1005                	c.nop	-31
c0409611:	02075707          	0x2075707
c0409615:	500d1507          	0x500d1507
c0409619:	4304                	lw	s1,0(a4)
c040961b:	01032d03          	lw	s10,16(t1)
c040961f:	1104                	addi	s1,sp,160
c0409621:	0f06                	slli	t5,t5,0x1
c0409623:	3a0c                	fld	fa1,48(a2)
c0409625:	1d04                	addi	s1,sp,688
c0409627:	5f25                	li	t5,-23
c0409629:	6d20                	flw	fs0,88(a0)
c040962b:	6a04                	flw	fs1,16(a2)
c040962d:	8025                	srli	s0,s0,0x9
c040962f:	05c8                	addi	a0,sp,708
c0409631:	b082                	fsd	ft0,96(sp)
c0409633:	82061a03          	lh	s4,-2016(a2)
c0409637:	03fd                	addi	t2,t2,31
c0409639:	0759                	addi	a4,a4,22
c040963b:	0b15                	addi	s6,s6,5
c040963d:	0c140917          	auipc	s2,0xc140
c0409641:	0c14                	addi	a3,sp,528
c0409643:	066a                	slli	a2,a2,0x1a
c0409645:	060a                	slli	a2,a2,0x2
c0409647:	061a                	slli	a2,a2,0x6
c0409649:	0759                	addi	a4,a4,22
c040964b:	0a46052b          	0xa46052b
c040964f:	042c                	addi	a1,sp,520
c0409651:	040c                	addi	a1,sp,512
c0409653:	0301                	addi	t1,t1,0
c0409655:	0b31                	addi	s6,s6,12
c0409657:	042c                	addi	a1,sp,520
c0409659:	061a                	slli	a2,a2,0x6
c040965b:	ac80030b          	0xac80030b
c040965f:	0a06                	slli	s4,s4,0x1
c0409661:	1f06                	slli	t5,t5,0x21
c0409663:	4c41                	li	s8,16
c0409665:	2d04                	fld	fs1,24(a0)
c0409667:	3c087403          	0x3c087403
c040966b:	3c030f03          	lb	t5,960(t1)
c040966f:	2b083807          	fld	fa6,688(a6)
c0409673:	8205                	srli	a2,a2,0x1
c0409675:	11ff                	0x11ff
c0409677:	0818                	addi	a4,sp,16
c0409679:	032d112f          	0x32d112f
c040967d:	1020                	addi	s0,sp,40
c040967f:	0f21                	addi	t5,t5,8
c0409681:	8c80                	0x8c80
c0409683:	8204                	0x8204
c0409685:	150b1997          	auipc	s3,0x150b1
c0409689:	9488                	0x9488
c040968b:	2f05                	jal	c0409dbb <.Lanon.e751f650313ada8e74ab7a6897452231.58+0x1e3>
c040968d:	3b05                	jal	c04093bd <str.4+0x3d>
c040968f:	180e0207          	0x180e0207
c0409693:	8009                	srli	s0,s0,0x2
c0409695:	30b0                	fld	fa2,96(s1)
c0409697:	0c74                	addi	a3,sp,540
c0409699:	d680                	sw	s0,40(a3)
c040969b:	0c1a                	slli	s8,s8,0x6
c040969d:	8005                	srli	s0,s0,0x1
c040969f:	05ff                	0x5ff
c04096a1:	b680                	fsd	fs0,40(a3)
c04096a3:	2405                	jal	c04098c3 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0xda>
c04096a5:	9b0c                	0x9b0c
c04096a7:	0ac6                	slli	s5,s5,0x11
c04096a9:	30d2                	fld	ft1,304(sp)
c04096ab:	8410                	0x8410
c04096ad:	038d                	addi	t2,t2,3
c04096af:	5c810937          	lui	s2,0x5c810
c04096b3:	8014                	0x8014
c04096b5:	08b8                	addi	a4,sp,88
c04096b7:	c780                	sw	s0,8(a5)
c04096b9:	3530                	fld	fa2,104(a0)
c04096bb:	0a04                	addi	s1,sp,272
c04096bd:	3806                	fld	fa6,96(sp)
c04096bf:	4608                	lw	a0,8(a2)
c04096c1:	0c08                	addi	a0,sp,528
c04096c3:	7406                	flw	fs0,96(sp)
c04096c5:	5a031e0b          	0x5a031e0b
c04096c9:	5904                	lw	s1,48(a0)
c04096cb:	8009                	srli	s0,s0,0x2
c04096cd:	0a1c1883          	lh	a7,161(s8)
c04096d1:	0916                	slli	s2,s2,0x5
c04096d3:	0848                	addi	a0,sp,20
c04096d5:	8a80                	0x8a80
c04096d7:	ab06                	fsd	ft1,400(sp)
c04096d9:	0ca4                	addi	s1,sp,600
c04096db:	a1310417          	auipc	s0,0xa1310
c04096df:	8104                	0x8104
c04096e1:	26da                	fld	fa3,400(sp)
c04096e3:	05050c07          	0x5050c07
c04096e7:	a580                	fsd	fs0,8(a1)
c04096e9:	8111                	srli	a0,a0,0x4
c04096eb:	106d                	c.nop	-5
c04096ed:	2878                	fld	fa4,208(s0)
c04096ef:	062a                	slli	a2,a2,0xa
c04096f1:	044c                	addi	a1,sp,516
c04096f3:	8d80                	0x8d80
c04096f5:	8004                	0x8004
c04096f7:	03be                	slli	t2,t2,0xf
c04096f9:	0d0f031b          	0xd0f031b

c04096fd <anon.e751f650313ada8e74ab7a6897452231.42.llvm.5375085799470840418>:
c04096fd:	0600                	addi	s0,sp,768
c04096ff:	0101                	addi	sp,sp,0
c0409701:	02040103          	lb	sp,32(s0) # 617196fb <XLENB+0x617196f7>
c0409705:	0808                	addi	a0,sp,16
c0409707:	0209                	addi	tp,tp,2
c0409709:	050a                	slli	a0,a0,0x2
c040970b:	0110020b          	0x110020b
c040970f:	0411                	addi	s0,s0,4
c0409711:	0512                	slli	a0,a0,0x4
c0409713:	02141113          	slli	sp,s0,0x21
c0409717:	0215                	addi	tp,tp,5
c0409719:	04190217          	auipc	tp,0x4190
c040971d:	051c                	addi	a5,sp,640
c040971f:	081d                	addi	a6,a6,7
c0409721:	0124                	addi	s1,sp,136
c0409723:	036a                	slli	t1,t1,0x1a
c0409725:	02bc026b          	0x2bc026b
c0409729:	02d1                	addi	t0,t0,20
c040972b:	0cd4                	addi	a3,sp,596
c040972d:	09d5                	addi	s3,s3,21
c040972f:	02d6                	slli	t0,t0,0x15
c0409731:	01da02d7          	0x1da02d7
c0409735:	05e0                	addi	s0,sp,716
c0409737:	02e1                	addi	t0,t0,24
c0409739:	02e8                	addi	a0,sp,332
c040973b:	20ee                	fld	ft1,216(sp)
c040973d:	04f0                	addi	a2,sp,588
c040973f:	06f9                	addi	a3,a3,30
c0409741:	02fa                	slli	t0,t0,0x1e

c0409743 <anon.e751f650313ada8e74ab7a6897452231.43.llvm.5375085799470840418>:
c0409743:	270c                	fld	fa1,8(a4)
c0409745:	4f4e3e3b          	0x4f4e3e3b
c0409749:	9f9e9e8f          	0x9f9e9e8f
c040974d:	0706                	slli	a4,a4,0x1
c040974f:	3609                	jal	c0409251 <.Lanon.e751f650313ada8e74ab7a6897452231.4+0x5e>
c0409751:	3e3d                	jal	c040928f <.Lanon.e751f650313ada8e74ab7a6897452231.15+0x13>
c0409753:	f356                	fsw	fs5,164(sp)
c0409755:	d1d0                	sw	a2,36(a1)
c0409757:	1404                	addi	s1,sp,544
c0409759:	3618                	fld	fa4,40(a2)
c040975b:	bd575637          	lui	a2,0xbd575
c040975f:	ce35                	beqz	a2,c04097db <anon.e751f650313ada8e74ab7a6897452231.43.llvm.5375085799470840418+0x98>
c0409761:	8712e0cf          	fnmadd.q	ft1,ft5,fa7,fa6,unknown
c0409765:	8e89                	sub	a3,a3,a0
c0409767:	049e                	slli	s1,s1,0x7
c0409769:	0e0d                	addi	t3,t3,3
c040976b:	1211                	addi	tp,tp,-28
c040976d:	3129                	jal	c0409377 <.Lanon.e751f650313ada8e74ab7a6897452231.24+0xb>
c040976f:	3a34                	fld	fa3,112(a2)
c0409771:	4645                	li	a2,17
c0409773:	4a49                	li	s4,18
c0409775:	4f4e                	lw	t5,208(sp)
c0409777:	6564                	flw	fs1,76(a0)
c0409779:	5c5a                	lw	s8,180(sp)
c040977b:	b7b6                	fsd	fa3,488(sp)
c040977d:	a9a81c1b          	0xa9a81c1b
c0409781:	d9d8                	sw	a4,52(a1)
c0409783:	3709                	jal	c0409685 <anon.e751f650313ada8e74ab7a6897452231.41.llvm.5375085799470840418+0xc2>
c0409785:	9190                	0x9190
c0409787:	07a8                	addi	a0,sp,968
c0409789:	3b0a                	fld	fs6,160(sp)
c040978b:	663e                	flw	fa2,204(sp)
c040978d:	8f69                	and	a4,a4,a0
c040978f:	6f92                	flw	ft11,4(sp)
c0409791:	ee5f 5aef 9a62      	0x9a625aefee5f
c0409797:	5528279b          	0x5528279b
c040979b:	a09d                	j	c0409801 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0x18>
c040979d:	a3a1                	j	c0409ce5 <.Lanon.e751f650313ada8e74ab7a6897452231.58+0x10d>
c040979f:	a7a4                	fsd	fs1,72(a5)
c04097a1:	ada8                	fsd	fa0,88(a1)
c04097a3:	bcba                	fsd	fa4,120(sp)
c04097a5:	06c4                	addi	s1,sp,836
c04097a7:	1d150c0b          	0x1d150c0b
c04097ab:	3f3a                	fld	ft10,424(sp)
c04097ad:	5145                	li	sp,-15
c04097af:	a7a6                	fsd	fs1,456(sp)
c04097b1:	cdcc                	sw	a1,28(a1)
c04097b3:	07a0                	addi	s0,sp,968
c04097b5:	1a19                	addi	s4,s4,-26
c04097b7:	2522                	fld	fa0,8(sp)
c04097b9:	3f3e                	fld	ft10,488(sp)
c04097bb:	c6c5                	beqz	a3,c0409863 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0x7a>
c04097bd:	2004                	fld	fs1,0(s0)
c04097bf:	28262523          	sw	sp,650(a2) # bd57528a <ebss+0xfd15416a>
c04097c3:	483a3833          	0x483a3833
c04097c7:	4c4a                	lw	s8,144(sp)
c04097c9:	5350                	lw	a2,36(a4)
c04097cb:	5655                	li	a2,-11
c04097cd:	5a58                	lw	a4,52(a2)
c04097cf:	5e5c                	lw	a5,60(a2)
c04097d1:	6360                	flw	fs0,68(a4)
c04097d3:	6665                	lui	a2,0x19
c04097d5:	7d78736b          	0x7d78736b
c04097d9:	8a7f                	0x8a7f
c04097db:	aaa4                	fsd	fs1,80(a3)
c04097dd:	d0c0b0af          	0xd0c0b0af
c04097e1:	720c                	flw	fa1,32(a2)
c04097e3:	cccba4a3          	sw	a2,-823(s7)
c04097e7:	6f6e                	flw	ft10,216(sp)

c04097e9 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418>:
c04097e9:	225e                	fld	ft4,464(sp)
c04097eb:	0403057b          	0x403057b
c04097ef:	032d                	addi	t1,t1,11
c04097f1:	0465                	addi	s0,s0,25
c04097f3:	2f01                	jal	c0409f03 <.Lanon.e751f650313ada8e74ab7a6897452231.59+0x12b>
c04097f5:	802e                	c.mv	zero,a1
c04097f7:	1d82                	slli	s11,s11,0x20
c04097f9:	1c0f3103          	0x1c0f3103
c04097fd:	2404                	fld	fs1,8(s0)
c04097ff:	1e09                	addi	t3,t3,-30
c0409801:	2b05                	jal	c0409d31 <.Lanon.e751f650313ada8e74ab7a6897452231.58+0x159>
c0409803:	4405                	li	s0,1
c0409805:	0e04                	addi	s1,sp,784
c0409807:	802a                	c.mv	zero,a0
c0409809:	06aa                	slli	a3,a3,0xa
c040980b:	0424                	addi	s1,sp,520
c040980d:	0424                	addi	s1,sp,520
c040980f:	0828                	addi	a0,sp,24
c0409811:	0b34                	addi	a3,sp,408
c0409813:	8001                	c.srli64	s0
c0409815:	8190                	0x8190
c0409817:	0a160937          	lui	s2,0xa160
c040981b:	8008                	0x8008
c040981d:	3998                	fld	fa4,48(a1)
c040981f:	09086303          	0x9086303
c0409823:	1630                	addi	a2,sp,808
c0409825:	2105                	jal	c0409c45 <.Lanon.e751f650313ada8e74ab7a6897452231.58+0x6d>
c0409827:	01051b03          	lh	s6,16(a0) # c258947e <ebss+0x216835e>
c040982b:	3840                	fld	fs0,176(s0)
c040982d:	4b04                	lw	s1,16(a4)
c040982f:	2f05                	jal	c0409f5f <.Lanon.e751f650313ada8e74ab7a6897452231.59+0x187>
c0409831:	0a04                	addi	s1,sp,272
c0409833:	40070907          	0x40070907
c0409837:	2720                	fld	fs0,72(a4)
c0409839:	0c04                	addi	s1,sp,528
c040983b:	3609                	jal	c040933d <.Lanon.e751f650313ada8e74ab7a6897452231.21+0x5>
c040983d:	1a053a03          	0x1a053a03
c0409841:	070c0407          	0x70c0407
c0409845:	4950                	lw	a2,20(a0)
c0409847:	330d3337          	lui	t1,0x330d3
c040984b:	0a082e07          	flw	ft8,160(a6)
c040984f:	2681                	jal	c0409b8f <.Lanon.e751f650313ada8e74ab7a6897452231.57+0x207>
c0409851:	801f 2881 2a08      	0x2a082881801f
c0409857:	8680                	0x8680
c0409859:	044e0917          	auipc	s2,0x44e0
c040985d:	0f1e                	slli	t5,t5,0x7
c040985f:	07190e43          	fmadd.q	ft8,fs2,fa7,ft0,rne
c0409863:	060a                	slli	a2,a2,0x2
c0409865:	09270947          	fmsub.s	fs2,fa4,fs2,ft1,rne
c0409869:	0b75                	addi	s6,s6,29
c040986b:	062a413f 060a053b 	0x60a053b062a413f
c0409873:	0651                	addi	a2,a2,20
c0409875:	0501                	addi	a0,a0,0
c0409877:	0310                	addi	a2,sp,384
c0409879:	8005                	srli	s0,s0,0x1
c040987b:	4820608b          	0x4820608b
c040987f:	0a08                	addi	a0,sp,272
c0409881:	a680                	fsd	fs0,8(a3)
c0409883:	225e                	fld	ft4,464(sp)
c0409885:	0b45                	addi	s6,s6,17
c0409887:	060a                	slli	a2,a2,0x2
c0409889:	130d                	addi	t1,t1,-29
c040988b:	0739                	addi	a4,a4,14
c040988d:	360a                	fld	fa2,160(sp)
c040988f:	042c                	addi	a1,sp,520
c0409891:	8010                	0x8010
c0409893:	3cc0                	fld	fs0,184(s1)
c0409895:	5364                	lw	s1,100(a4)
c0409897:	010c                	addi	a1,sp,128
c0409899:	a080                	fsd	fs0,0(s1)
c040989b:	1b45                	addi	s6,s6,-15
c040989d:	0848                	addi	a0,sp,20
c040989f:	81391d53          	0x81391d53
c04098a3:	1d0a4607          	flq	fa2,464(s4)
c04098a7:	37494703          	lbu	a4,884(s2) # c48e9bcd <ebss+0x44c8aad>
c04098ab:	0a080e03          	lb	t3,160(a6)
c04098af:	3906                	fld	fs2,96(sp)
c04098b1:	36810a07          	0x36810a07
c04098b5:	8019                	srli	s0,s0,0x6
c04098b7:	830d32c7          	fmsub.d	ft5,fs10,fa6,fa6,rup
c04098bb:	0b75669b          	0xb75669b
c04098bf:	c480                	sw	s0,8(s1)
c04098c1:	bc8a                	fsd	ft2,120(sp)
c04098c3:	2f84                	fld	fs1,24(a5)
c04098c5:	4782d18f          	0x4782d18f
c04098c9:	b9a1                	j	c0409521 <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0x83>
c04098cb:	3982                	fld	fs3,32(sp)
c04098cd:	02042a07          	flw	fs4,32(s0)
c04098d1:	2660                	fld	fs0,200(a2)
c04098d3:	460a                	lw	a2,128(sp)
c04098d5:	280a                	fld	fa6,128(sp)
c04098d7:	1305                	addi	t1,t1,-31
c04098d9:	b082                	fsd	ft0,96(sp)
c04098db:	044b655b          	0x44b655b
c04098df:	0739                	addi	a4,a4,14
c04098e1:	4011                	c.li	zero,4
c04098e3:	1c04                	addi	s1,sp,560
c04098e5:	8208f897          	auipc	a7,0x8208f
c04098e9:	810da5f3          	csrrs	a1,0x810,s11
c04098ed:	311f 1103 0804      	0x8041103311f
c04098f3:	8c81                	sub	s1,s1,s0
c04098f5:	0489                	addi	s1,s1,2
c04098f7:	030d056b          	0x30d056b
c04098fb:	0709                	addi	a4,a4,2
c04098fd:	9310                	0x9310
c04098ff:	8060                	0x8060
c0409901:	0af6                	slli	s5,s5,0x1d
c0409903:	176e0873          	0x176e0873
c0409907:	8046                	c.mv	zero,a7
c0409909:	149a                	slli	s1,s1,0x26
c040990b:	570c                	lw	a1,40(a4)
c040990d:	1909                	addi	s2,s2,-30
c040990f:	8780                	0x8780
c0409911:	4781                	li	a5,0
c0409913:	0f428503          	lb	a0,244(t0) # ffffd0f4 <ebss+0x3fbdbfd4>
c0409917:	8515                	srai	a0,a0,0x5
c0409919:	2b50                	fld	fa2,144(a4)
c040991b:	d580                	sw	s0,40(a1)
c040991d:	032d                	addi	t1,t1,11
c040991f:	041a                	slli	s0,s0,0x6
c0409921:	8102                	jr	sp
c0409923:	3a70                	fld	fa2,240(a2)
c0409925:	0105                	addi	sp,sp,1
c0409927:	0085                	addi	ra,ra,1
c0409929:	d780                	sw	s0,40(a5)
c040992b:	4c29                	li	s8,10
c040992d:	0a04                	addi	s1,sp,272
c040992f:	0204                	addi	s1,sp,256
c0409931:	4c441183          	lh	gp,1220(s0)
c0409935:	803d                	srli	s0,s0,0xf
c0409937:	3cc2                	fld	fs9,48(sp)
c0409939:	0106                	slli	sp,sp,0x1
c040993b:	5504                	lw	s1,40(a0)
c040993d:	1b05                	addi	s6,s6,-31
c040993f:	0234                	addi	a3,sp,264
c0409941:	0e81                	addi	t4,t4,0
c0409943:	042c                	addi	a1,sp,520
c0409945:	0c64                	addi	s1,sp,540
c0409947:	0a56                	slli	s4,s4,0x15
c0409949:	030d                	addi	t1,t1,3
c040994b:	035d                	addi	t1,t1,23
c040994d:	393d                	jal	c040958b <anon.e751f650313ada8e74ab7a6897452231.40.llvm.5375085799470840418+0xed>
c040994f:	0d1d                	addi	s10,s10,7
c0409951:	042c                	addi	a1,sp,520
c0409953:	0709                	addi	a4,a4,2
c0409955:	0e02                	c.slli64	t3
c0409957:	8006                	c.mv	zero,ra
c0409959:	839a                	mv	t2,t1
c040995b:	0ad6                	slli	s5,s5,0x15
c040995d:	030d                	addi	t1,t1,3
c040995f:	0c74050b          	0xc74050b
c0409963:	0759                	addi	a4,a4,22
c0409965:	140c                	addi	a1,sp,544
c0409967:	040c                	addi	a1,sp,512
c0409969:	0838                	addi	a4,sp,24
c040996b:	060a                	slli	a2,a2,0x2
c040996d:	0828                	addi	a0,sp,24
c040996f:	521e                	lw	tp,228(sp)
c0409971:	03310377          	0x3310377
c0409975:	a680                	fsd	fs0,8(a3)
c0409977:	140c                	addi	a1,sp,544
c0409979:	0304                	addi	s1,sp,384
c040997b:	0305                	addi	t1,t1,1
c040997d:	060d                	addi	a2,a2,3
c040997f:	6a85                	lui	s5,0x1
c0409981:	0000                	unimp
c0409983:	0000                	unimp
c0409985:	0000                	unimp
	...

c0409988 <.Lanon.e751f650313ada8e74ab7a6897452231.57>:
c0409988:	0000                	unimp
c040998a:	fbc0                	fsw	fs0,52(a5)
c040998c:	00003eef          	jal	t4,c040c98c <sdata+0x98c>
c0409990:	0000                	unimp
c0409992:	0e00                	addi	s0,sp,784
	...
c04099a0:	0000                	unimp
c04099a2:	fff8                	fsw	fa4,124(a5)
c04099a4:	fffffffb          	0xfffffffb
c04099a8:	00000007          	0x7
c04099ac:	0000                	unimp
c04099ae:	1400                	addi	s0,sp,544
c04099b0:	21fe                	fld	ft3,472(sp)
c04099b2:	00fe                	slli	ra,ra,0x1f
c04099b4:	000c                	0xc
c04099b6:	0000                	unimp
c04099b8:	0002                	c.slli64	zero
c04099ba:	0000                	unimp
c04099bc:	0000                	unimp
c04099be:	5000                	lw	s0,32(s0)
c04099c0:	201e                	fld	ft0,448(sp)
c04099c2:	0080                	addi	s0,sp,64
c04099c4:	000c                	0xc
c04099c6:	4000                	lw	s0,0(s0)
c04099c8:	0006                	c.slli	zero,0x1
c04099ca:	0000                	unimp
c04099cc:	0000                	unimp
c04099ce:	1000                	addi	s0,sp,32
c04099d0:	3986                	fld	fs3,96(sp)
c04099d2:	0002                	c.slli64	zero
c04099d4:	0000                	unimp
c04099d6:	21be0023          	sb	s11,512(t3)
c04099da:	0000                	unimp
c04099dc:	000c                	0xc
c04099de:	fc00                	fsw	fs0,56(s0)
c04099e0:	0002                	c.slli64	zero
c04099e2:	0000                	unimp
c04099e4:	0000                	unimp
c04099e6:	d000                	sw	s0,32(s0)
c04099e8:	201e                	fld	ft0,448(sp)
c04099ea:	00c0                	addi	s0,sp,68
c04099ec:	000c                	0xc
c04099ee:	0000                	unimp
c04099f0:	0004                	0x4
c04099f2:	0000                	unimp
c04099f4:	0000                	unimp
c04099f6:	4000                	lw	s0,0(s0)
c04099f8:	2001                	jal	c04099f8 <.Lanon.e751f650313ada8e74ab7a6897452231.57+0x70>
c04099fa:	0080                	addi	s0,sp,64
c04099fc:	0000                	unimp
c04099fe:	0000                	unimp
c0409a00:	0011                	c.nop	4
c0409a02:	0000                	unimp
c0409a04:	0000                	unimp
c0409a06:	c000                	sw	s0,0(s0)
c0409a08:	3dc1                	jal	c04098d8 <anon.e751f650313ada8e74ab7a6897452231.44.llvm.5375085799470840418+0xef>
c0409a0a:	0060                	addi	s0,sp,12
c0409a0c:	000c                	0xc
c0409a0e:	0000                	unimp
c0409a10:	0002                	c.slli64	zero
c0409a12:	0000                	unimp
c0409a14:	0000                	unimp
c0409a16:	9000                	0x9000
c0409a18:	3044                	fld	fs1,160(s0)
c0409a1a:	0060                	addi	s0,sp,12
c0409a1c:	000c                	0xc
c0409a1e:	0000                	unimp
c0409a20:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0409a24:	0000                	unimp
c0409a26:	5800                	lw	s0,48(s0)
c0409a28:	201e                	fld	ft0,448(sp)
c0409a2a:	0080                	addi	s0,sp,64
c0409a2c:	000c                	0xc
c0409a2e:	0000                	unimp
c0409a30:	8400                	0x8400
c0409a32:	805c                	0x805c
	...
c0409a3c:	0000                	unimp
c0409a3e:	07f2                	slli	a5,a5,0x1c
c0409a40:	7f80                	flw	fs0,56(a5)
	...
c0409a4e:	1ff2                	slli	t6,t6,0x3c
c0409a50:	3f00                	fld	fs0,56(a4)
	...
c0409a5a:	0300                	addi	s0,sp,384
c0409a5c:	0000                	unimp
c0409a5e:	02a0                	addi	s0,sp,328
c0409a60:	0000                	unimp
c0409a62:	0000                	unimp
c0409a64:	0000                	unimp
c0409a66:	7ffe                	flw	ft11,252(sp)
c0409a68:	e0df feff ffff      	0xfffffeffe0df
c0409a6e:	1fff                	0x1fff
c0409a70:	0040                	addi	s0,sp,4
	...
c0409a7a:	0000                	unimp
c0409a7c:	e000                	fsw	fs0,0(s0)
c0409a7e:	66fd                	lui	a3,0x1f
c0409a80:	0000                	unimp
c0409a82:	c300                	sw	s0,0(a4)
c0409a84:	0001                	nop
c0409a86:	001e                	c.slli	zero,0x7
c0409a88:	2064                	fld	fs1,192(s0)
c0409a8a:	2000                	fld	fs0,0(s0)
c0409a8c:	0000                	unimp
c0409a8e:	0000                	unimp
c0409a90:	0000                	unimp
c0409a92:	e000                	fsw	fs0,0(s0)
c0409a94:	0000                	unimp
c0409a96:	0000                	unimp
c0409a98:	0000                	unimp
c0409a9a:	001c                	0x1c
c0409a9c:	0000                	unimp
c0409a9e:	001c                	0x1c
c0409aa0:	0000                	unimp
c0409aa2:	000c                	0xc
c0409aa4:	0000                	unimp
c0409aa6:	000c                	0xc
c0409aa8:	0000                	unimp
c0409aaa:	0000                	unimp
c0409aac:	0000                	unimp
c0409aae:	3fb0                	fld	fa2,120(a5)
c0409ab0:	fe40                	fsw	fs0,60(a2)
c0409ab2:	0000200f          	0x200f
c0409ab6:	0000                	unimp
c0409ab8:	3800                	fld	fs0,48(s0)
c0409aba:	0000                	unimp
c0409abc:	0000                	unimp
c0409abe:	0000                	unimp
c0409ac0:	0060                	addi	s0,sp,12
c0409ac2:	0000                	unimp
c0409ac4:	0200                	addi	s0,sp,256
c0409ac6:	0000                	unimp
c0409ac8:	0000                	unimp
c0409aca:	0000                	unimp
c0409acc:	0e040187          	0xe040187
c0409ad0:	0000                	unimp
c0409ad2:	0980                	addi	s0,sp,208
c0409ad4:	0000                	unimp
c0409ad6:	0000                	unimp
c0409ad8:	0000                	unimp
c0409ada:	7f40                	flw	fs0,60(a4)
c0409adc:	1fe5                	addi	t6,t6,-7
c0409ade:	9ff8                	0x9ff8
c0409ae0:	0000                	unimp
c0409ae2:	0000                	unimp
c0409ae4:	0000                	unimp
c0409ae6:	7fff                	0x7fff
c0409ae8:	0000000f          	fence	unknown,unknown
c0409aec:	0000                	unimp
c0409aee:	17f0                	addi	a2,sp,1004
c0409af0:	0004                	0x4
c0409af2:	0000                	unimp
c0409af4:	f800                	fsw	fs0,48(s0)
c0409af6:	0003000f          	0x3000f
c0409afa:	0000                	unimp
c0409afc:	3b3c                	fld	fa5,112(a4)
c0409afe:	0000                	unimp
c0409b00:	0000                	unimp
c0409b02:	0000                	unimp
c0409b04:	a340                	fsd	fs0,128(a4)
c0409b06:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0409b0a:	0000                	unimp
c0409b0c:	f000                	fsw	fs0,32(s0)
c0409b0e:	000000cf          	fnmadd.s	ft1,ft0,ft0,ft0,rne
c0409b12:	21fdfff7          	0x21fdfff7
c0409b16:	0310                	addi	a2,sp,384
c0409b18:	ffff                	0xffff
c0409b1a:	ffff                	0xffff
c0409b1c:	ffff                	0xffff
c0409b1e:	fbff                	0xfbff
c0409b20:	1000                	addi	s0,sp,32
	...
c0409b2a:	ffff                	0xffff
c0409b2c:	ffff                	0xffff
c0409b2e:	0001                	nop
c0409b30:	0000                	unimp
c0409b32:	0000                	unimp
c0409b34:	8000                	0x8000
c0409b36:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0409b3a:	0000                	unimp
c0409b3c:	0000                	unimp
c0409b3e:	8000                	0x8000
c0409b40:	0000                	unimp
c0409b42:	0000                	unimp
c0409b44:	ffff                	0xffff
c0409b46:	ffff                	0xffff
c0409b48:	0000                	unimp
c0409b4a:	0000                	unimp
c0409b4c:	fc00                	fsw	fs0,56(s0)
c0409b4e:	0000                	unimp
c0409b50:	0000                	unimp
c0409b52:	0600                	addi	s0,sp,768
	...
c0409b5c:	8000                	0x8000
c0409b5e:	00003ff7          	0x3ff7
c0409b62:	c000                	sw	s0,0(s0)
	...
c0409b6c:	0000                	unimp
c0409b6e:	08440003          	lb	zero,132(s0)
c0409b72:	0000                	unimp
c0409b74:	0060                	addi	s0,sp,12
c0409b76:	0000                	unimp
c0409b78:	0030                	addi	a2,sp,8
c0409b7a:	0000                	unimp
c0409b7c:	ffff                	0xffff
c0409b7e:	00008003          	lb	zero,0(ra)
c0409b82:	0000                	unimp
c0409b84:	3fc0                	fld	fs0,184(a5)
c0409b86:	0000                	unimp
c0409b88:	ff80                	fsw	fs0,56(a5)
c0409b8a:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0409b8e:	0000                	unimp
c0409b90:	00000007          	0x7
c0409b94:	0000                	unimp
c0409b96:	33c8                	fld	fa0,160(a5)
c0409b98:	0000                	unimp
c0409b9a:	0000                	unimp
c0409b9c:	0020                	addi	s0,sp,8
c0409b9e:	0000                	unimp
c0409ba0:	0000                	unimp
c0409ba2:	0000                	unimp
c0409ba4:	7e00                	flw	fs0,56(a2)
c0409ba6:	0066                	c.slli	zero,0x19
c0409ba8:	1008                	addi	a0,sp,32
c0409baa:	0000                	unimp
c0409bac:	0000                	unimp
c0409bae:	1000                	addi	s0,sp,32
c0409bb0:	0000                	unimp
c0409bb2:	0000                	unimp
c0409bb4:	0000                	unimp
c0409bb6:	c19d                	beqz	a1,c0409bdc <.Lanon.e751f650313ada8e74ab7a6897452231.58+0x4>
c0409bb8:	0002                	c.slli64	zero
c0409bba:	0000                	unimp
c0409bbc:	3000                	fld	fs0,32(s0)
c0409bbe:	0040                	addi	s0,sp,4
c0409bc0:	0000                	unimp
c0409bc2:	0000                	unimp
c0409bc4:	2120                	fld	fs0,64(a0)
c0409bc6:	0000                	unimp
c0409bc8:	0000                	unimp
c0409bca:	4000                	lw	s0,0(s0)
c0409bcc:	0000                	unimp
c0409bce:	0000                	unimp
c0409bd0:	ffff                	0xffff
c0409bd2:	0000                	unimp
c0409bd4:	ffff                	0xffff
	...

c0409bd8 <.Lanon.e751f650313ada8e74ab7a6897452231.58>:
c0409bd8:	0000                	unimp
c0409bda:	0000                	unimp
c0409bdc:	0000                	unimp
c0409bde:	0100                	addi	s0,sp,128
c0409be0:	0000                	unimp
c0409be2:	0200                	addi	s0,sp,256
c0409be4:	0300                	addi	s0,sp,384
	...
c0409bfe:	0000                	unimp
c0409c00:	0004                	0x4
c0409c02:	0500                	addi	s0,sp,640
	...
c0409c0c:	0006                	c.slli	zero,0x1
c0409c0e:	0000                	unimp
c0409c10:	0000                	unimp
c0409c12:	0000                	unimp
c0409c14:	0700                	addi	s0,sp,896
c0409c16:	0000                	unimp
c0409c18:	0908                	addi	a0,sp,144
c0409c1a:	000a                	c.slli	zero,0x2
c0409c1c:	0e0d0c0b          	0xe0d0c0b
c0409c20:	1000000f          	0x1000000f
c0409c24:	1211                	addi	tp,tp,-28
c0409c26:	0000                	unimp
c0409c28:	16151413          	0x16151413
c0409c2c:	0000                	unimp
c0409c2e:	1a191817          	auipc	a6,0x1a191
c0409c32:	001c001b          	0x1c001b
c0409c36:	0000                	unimp
c0409c38:	001d                	c.nop	7
c0409c3a:	0000                	unimp
c0409c3c:	0000                	unimp
c0409c3e:	1e00                	addi	s0,sp,816
c0409c40:	201f 0021 0000      	0x21201f
c0409c46:	0000                	unimp
c0409c48:	0022                	c.slli	zero,0x8
c0409c4a:	25240023          	sb	s2,576(s0)
c0409c4e:	0026                	c.slli	zero,0x9
c0409c50:	0000                	unimp
c0409c52:	2700                	fld	fs0,8(a4)
	...
c0409cc0:	0000                	unimp
c0409cc2:	2800                	fld	fs0,16(s0)
c0409cc4:	0029                	c.nop	10
	...
c0409cd2:	0000                	unimp
c0409cd4:	2a00                	fld	fs0,16(a2)
c0409cd6:	0000002b          	0x2b
	...
c0409d0a:	002c                	addi	a1,sp,8
	...
c0409d1c:	2d00                	fld	fs0,24(a0)
c0409d1e:	002e                	c.slli	zero,0xb
c0409d20:	2f00                	fld	fs0,24(a4)
	...
c0409d3e:	0000                	unimp
c0409d40:	3130                	fld	fa2,96(a0)
c0409d42:	0032                	c.slli	zero,0xc
	...
c0409d58:	00000033          	add	zero,zero,zero
c0409d5c:	0029                	c.nop	10
c0409d5e:	0000                	unimp
c0409d60:	0000                	unimp
c0409d62:	3400                	fld	fs0,40(s0)
	...
c0409d78:	0000                	unimp
c0409d7a:	3500                	fld	fs0,40(a0)
c0409d7c:	3600                	fld	fs0,40(a2)
	...
c0409d96:	0000                	unimp
c0409d98:	00003837          	lui	a6,0x3
c0409d9c:	3838                	fld	fa4,112(s0)
c0409d9e:	3938                	fld	fa4,112(a0)
	...

c0409dd8 <.Lanon.e751f650313ada8e74ab7a6897452231.59>:
	...
c0409de4:	0000                	unimp
c0409de6:	2000                	fld	fs0,0(s0)
c0409de8:	0000                	unimp
c0409dea:	0000                	unimp
c0409dec:	0001                	nop
	...
c0409df6:	07c0                	addi	s0,sp,964
c0409df8:	f06e                	fsw	fs11,32(sp)
c0409dfa:	0000                	unimp
c0409dfc:	0000                	unimp
c0409dfe:	8700                	0x8700
c0409e00:	0000                	unimp
c0409e02:	0000                	unimp
c0409e04:	0060                	addi	s0,sp,12
c0409e06:	0000                	unimp
c0409e08:	0000                	unimp
c0409e0a:	0000                	unimp
c0409e0c:	00f0                	addi	a2,sp,76
c0409e0e:	0000                	unimp
c0409e10:	ffc0                	fsw	fs0,60(a5)
c0409e12:	0001                	nop
c0409e14:	0000                	unimp
c0409e16:	0000                	unimp
c0409e18:	0002                	c.slli64	zero
c0409e1a:	0000                	unimp
c0409e1c:	0000                	unimp
c0409e1e:	ff00                	fsw	fs0,56(a4)
c0409e20:	007f                	0x7f
c0409e22:	0000                	unimp
c0409e24:	0000                	unimp
c0409e26:	8000                	0x8000
c0409e28:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0409e2c:	0000                	unimp
c0409e2e:	0678                	addi	a4,sp,780
c0409e30:	00000007          	0x7
c0409e34:	ef80                	fsw	fs0,24(a5)
c0409e36:	001f 0000 0000      	0x1f
c0409e3c:	0000                	unimp
c0409e3e:	0008                	0x8
c0409e40:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0409e44:	0000                	unimp
c0409e46:	7fc0                	flw	fs0,60(a5)
c0409e48:	1e00                	addi	s0,sp,816
	...
c0409e52:	0000                	unimp
c0409e54:	8000                	0x8000
c0409e56:	000040d3          	fadd.s	ft1,ft0,ft0,rmm
c0409e5a:	8000                	0x8000
c0409e5c:	07f8                	addi	a4,sp,972
c0409e5e:	0000                	unimp
c0409e60:	00000003          	lb	zero,0(zero) # 0 <XLENB-0x4>
c0409e64:	0000                	unimp
c0409e66:	5800                	lw	s0,48(s0)
c0409e68:	0001                	nop
c0409e6a:	0080                	addi	s0,sp,64
c0409e6c:	1fc0                	addi	s0,sp,1012
c0409e6e:	001f 0000 0000      	0x1f
c0409e74:	0000                	unimp
c0409e76:	ff00                	fsw	fs0,56(a4)
c0409e78:	005c                	addi	a5,sp,4
c0409e7a:	4000                	lw	s0,0(s0)
	...
c0409e84:	0000                	unimp
c0409e86:	a5f9                	j	c040a554 <anon.e751f650313ada8e74ab7a6897452231.60.llvm.5375085799470840418+0x5ac>
c0409e88:	000d                	c.nop	3
	...
c0409e92:	0000                	unimp
c0409e94:	8000                	0x8000
c0409e96:	b03c                	fsd	fa5,96(s0)
c0409e98:	0001                	nop
c0409e9a:	3000                	fld	fs0,32(s0)
	...
c0409ea4:	0000                	unimp
c0409ea6:	a7f8                	fsd	fa4,200(a5)
c0409ea8:	0001                	nop
	...
c0409eb2:	0000                	unimp
c0409eb4:	2800                	fld	fs0,16(s0)
c0409eb6:	000000bf 0fbce000 	0xfbce000000000bf
c0409ebe:	0000                	unimp
c0409ec0:	0000                	unimp
c0409ec2:	0000                	unimp
c0409ec4:	8000                	0x8000
c0409ec6:	06ff                	0x6ff
c0409ec8:	0000                	unimp
c0409eca:	0cf0                	addi	a2,sp,604
c0409ecc:	0001                	nop
c0409ece:	0000                	unimp
c0409ed0:	07fe                	slli	a5,a5,0x1f
c0409ed2:	0000                	unimp
c0409ed4:	0000                	unimp
c0409ed6:	79f8                	flw	fa4,116(a1)
c0409ed8:	0080                	addi	s0,sp,64
c0409eda:	0e7e                	slli	t3,t3,0x1f
c0409edc:	0000                	unimp
c0409ede:	0000                	unimp
c0409ee0:	fc00                	fsw	fs0,56(s0)
c0409ee2:	037f                	0x37f
	...
c0409eec:	0000                	unimp
c0409eee:	bf7f                	0xbf7f
c0409ef0:	0000                	unimp
c0409ef2:	fffc                	fsw	fa5,124(a5)
c0409ef4:	fcff                	0xfcff
c0409ef6:	006d                	c.nop	27
c0409ef8:	0000                	unimp
c0409efa:	0000                	unimp
c0409efc:	0000                	unimp
c0409efe:	b47e                	fsd	ft11,40(sp)
c0409f00:	000000bf 00000000 	0xbf
c0409f08:	0000                	unimp
c0409f0a:	000000a3          	sb	zero,1(zero) # 1 <XLENB-0x3>
	...
c0409f16:	0018                	0x18
c0409f18:	0000                	unimp
c0409f1a:	0000                	unimp
c0409f1c:	0000                	unimp
c0409f1e:	001f 0000 0000      	0x1f
c0409f24:	0000                	unimp
c0409f26:	007f                	0x7f
c0409f28:	8000                	0x8000
c0409f2a:	0000                	unimp
c0409f2c:	0000                	unimp
c0409f2e:	0000                	unimp
c0409f30:	8000                	0x8000
c0409f32:	00000007          	0x7
c0409f36:	0000                	unimp
c0409f38:	0000                	unimp
c0409f3a:	6000                	flw	fs0,0(s0)
	...
c0409f44:	c3a0                	sw	s0,64(a5)
c0409f46:	0fe7f807          	0xfe7f807
c0409f4a:	0000                	unimp
c0409f4c:	3c00                	fld	fs0,56(s0)
c0409f4e:	0000                	unimp
c0409f50:	001c                	0x1c
c0409f52:	0000                	unimp
c0409f54:	0000                	unimp
c0409f56:	0000                	unimp
c0409f58:	ffff                	0xffff
c0409f5a:	ffff                	0xffff
c0409f5c:	ffff                	0xffff
c0409f5e:	f87f                	0xf87f
c0409f60:	ffff                	0xffff
c0409f62:	ffff                	0xffff
c0409f64:	1fff                	0x1fff
c0409f66:	0020                	addi	s0,sp,8
c0409f68:	0010                	0x10
c0409f6a:	f800                	fsw	fs0,48(s0)
c0409f6c:	fffe                	fsw	ft11,252(sp)
c0409f6e:	0000                	unimp
c0409f70:	ff7f                	0xff7f
c0409f72:	f9ff                	0xf9ff
c0409f74:	000007db          	0x7db
c0409f78:	0000                	unimp
c0409f7a:	0000                	unimp
c0409f7c:	f000                	fsw	fs0,32(s0)
c0409f7e:	0000                	unimp
c0409f80:	0000                	unimp
c0409f82:	007f                	0x7f
c0409f84:	0000                	unimp
c0409f86:	0000                	unimp
c0409f88:	07f0                	addi	a2,sp,972
	...
c0409f92:	0000                	unimp
c0409f94:	ffff                	0xffff
c0409f96:	ffff                	0xffff
c0409f98:	ffff                	0xffff
c0409f9a:	ffff                	0xffff
c0409f9c:	ffff                	0xffff
c0409f9e:	ffff                	0xffff
c0409fa0:	ffff                	0xffff
c0409fa2:	ffff                	0xffff
c0409fa4:	ffff                	0xffff
	...

c0409fa8 <anon.e751f650313ada8e74ab7a6897452231.60.llvm.5375085799470840418>:
	...
c040a008:	ffff                	0xffff
c040a00a:	ffff                	0xffff
c040a00c:	ffff                	0xffff
c040a00e:	ffff                	0xffff
c040a010:	ffff                	0xffff
c040a012:	ffff                	0xffff
c040a014:	ffff                	0xffff
	...
c040a036:	0000                	unimp
c040a038:	03f8                	addi	a4,sp,460
	...
c040a05a:	fffe                	fsw	ft11,252(sp)
c040a05c:	ffff                	0xffff
c040a05e:	bfff                	0xbfff
c040a060:	00b6                	slli	ra,ra,0xd
	...
c040a06a:	07ff                	0x7ff
c040a06c:	0000                	unimp
c040a06e:	0000                	unimp
c040a070:	f800                	fsw	fs0,48(s0)
c040a072:	ffff                	0xffff
c040a074:	0000                	unimp
c040a076:	0001                	nop
	...
c040a080:	0000                	unimp
c040a082:	9fc0                	0x9fc0
c040a084:	3d9f 0000 0000      	0x3d9f
c040a08a:	0002                	c.slli64	zero
c040a08c:	0000                	unimp
c040a08e:	ffff                	0xffff
c040a090:	07ff                	0x7ff
	...
c040a09a:	0000                	unimp
c040a09c:	ffc0                	fsw	fs0,60(a5)
c040a09e:	0001                	nop
c040a0a0:	0000                	unimp
c040a0a2:	0000                	unimp
c040a0a4:	f800                	fsw	fs0,48(s0)
c040a0a6:	9988200f          	0x9988200f
c040a0aa:	c040                	sw	s0,4(s0)
c040a0ac:	004a                	c.slli	zero,0x12
c040a0ae:	0000                	unimp
c040a0b0:	9bd8                	0x9bd8
c040a0b2:	c040                	sw	s0,4(s0)
c040a0b4:	0200                	addi	s0,sp,256
c040a0b6:	0000                	unimp
c040a0b8:	9dd8                	0x9dd8
c040a0ba:	c040                	sw	s0,4(s0)
c040a0bc:	003a                	c.slli	zero,0xe
c040a0be:	0000                	unimp
c040a0c0:	0100                	addi	s0,sp,128
c040a0c2:	0302                	c.slli64	t1
c040a0c4:	0504                	addi	s1,sp,640
c040a0c6:	0706                	slli	a4,a4,0x1
c040a0c8:	0908                	addi	a0,sp,144
c040a0ca:	0a08                	addi	a0,sp,272
c040a0cc:	0e0d0c0b          	0xe0d0c0b
c040a0d0:	1211100f          	0x1211100f
c040a0d4:	15021413          	0x15021413
c040a0d8:	1716                	slli	a4,a4,0x25
c040a0da:	1918                	addi	a4,sp,176
c040a0dc:	1b1a                	slli	s6,s6,0x26
c040a0de:	1d1c                	addi	a5,sp,688
c040a0e0:	1f1e                	slli	t5,t5,0x27
c040a0e2:	0220                	addi	s0,sp,264
c040a0e4:	0202                	c.slli64	tp
c040a0e6:	0202                	c.slli64	tp
c040a0e8:	0202                	c.slli64	tp
c040a0ea:	0202                	c.slli64	tp
c040a0ec:	2102                	fld	ft2,0(sp)
c040a0ee:	0202                	c.slli64	tp
c040a0f0:	0202                	c.slli64	tp
c040a0f2:	0202                	c.slli64	tp
c040a0f4:	0202                	c.slli64	tp
c040a0f6:	0202                	c.slli64	tp
c040a0f8:	0202                	c.slli64	tp
c040a0fa:	0202                	c.slli64	tp
c040a0fc:	2322                	fld	ft6,8(sp)
c040a0fe:	2524                	fld	fs1,72(a0)
c040a100:	0226                	slli	tp,tp,0x9
c040a102:	02280227          	0x2280227
c040a106:	0202                	c.slli64	tp
c040a108:	2a29                	jal	c040a222 <anon.e751f650313ada8e74ab7a6897452231.60.llvm.5375085799470840418+0x27a>
c040a10a:	2d2c022b          	0x2d2c022b
c040a10e:	2f2e                	fld	ft10,200(sp)
c040a110:	0230                	addi	a2,sp,264
c040a112:	3102                	fld	ft2,32(sp)
c040a114:	0202                	c.slli64	tp
c040a116:	3202                	fld	ft4,32(sp)
c040a118:	0202                	c.slli64	tp
c040a11a:	0202                	c.slli64	tp
c040a11c:	0202                	c.slli64	tp
c040a11e:	0202                	c.slli64	tp
c040a120:	34020233          	0x34020233
c040a124:	0202                	c.slli64	tp
c040a126:	0202                	c.slli64	tp
c040a128:	0202                	c.slli64	tp
c040a12a:	0202                	c.slli64	tp
c040a12c:	0202                	c.slli64	tp
c040a12e:	0202                	c.slli64	tp
c040a130:	0202                	c.slli64	tp
c040a132:	0202                	c.slli64	tp
c040a134:	0202                	c.slli64	tp
c040a136:	0202                	c.slli64	tp
c040a138:	0202                	c.slli64	tp
c040a13a:	0202                	c.slli64	tp
c040a13c:	0202                	c.slli64	tp
c040a13e:	0202                	c.slli64	tp
c040a140:	0202                	c.slli64	tp
c040a142:	0202                	c.slli64	tp
c040a144:	0202                	c.slli64	tp
c040a146:	0202                	c.slli64	tp
c040a148:	0202                	c.slli64	tp
c040a14a:	0202                	c.slli64	tp
c040a14c:	0202                	c.slli64	tp
c040a14e:	0202                	c.slli64	tp
c040a150:	0202                	c.slli64	tp
c040a152:	3502                	fld	fa0,32(sp)
c040a154:	3602                	fld	fa2,32(sp)
c040a156:	3702                	fld	fa4,32(sp)
c040a158:	0202                	c.slli64	tp
c040a15a:	0202                	c.slli64	tp
c040a15c:	0202                	c.slli64	tp
c040a15e:	0202                	c.slli64	tp
c040a160:	0238                	addi	a4,sp,264
c040a162:	0239                	addi	tp,tp,14
c040a164:	0202                	c.slli64	tp
c040a166:	0202                	c.slli64	tp
c040a168:	0202                	c.slli64	tp
c040a16a:	0202                	c.slli64	tp
c040a16c:	0202                	c.slli64	tp
c040a16e:	0202                	c.slli64	tp
c040a170:	0202                	c.slli64	tp
c040a172:	0202                	c.slli64	tp
c040a174:	0202                	c.slli64	tp
c040a176:	0202                	c.slli64	tp
c040a178:	0202                	c.slli64	tp
c040a17a:	0202                	c.slli64	tp
c040a17c:	0202                	c.slli64	tp
c040a17e:	0202                	c.slli64	tp
c040a180:	0202                	c.slli64	tp
c040a182:	0202                	c.slli64	tp
c040a184:	0202                	c.slli64	tp
c040a186:	0202                	c.slli64	tp
c040a188:	0202                	c.slli64	tp
c040a18a:	0202                	c.slli64	tp
c040a18c:	0202                	c.slli64	tp
c040a18e:	0202                	c.slli64	tp
c040a190:	0202                	c.slli64	tp
c040a192:	0202                	c.slli64	tp
c040a194:	0202                	c.slli64	tp
c040a196:	0202                	c.slli64	tp
c040a198:	0202                	c.slli64	tp
c040a19a:	0202                	c.slli64	tp
c040a19c:	0202                	c.slli64	tp
c040a19e:	0202                	c.slli64	tp
c040a1a0:	0202                	c.slli64	tp
c040a1a2:	0202                	c.slli64	tp
c040a1a4:	0202                	c.slli64	tp
c040a1a6:	0202                	c.slli64	tp
c040a1a8:	0202                	c.slli64	tp
c040a1aa:	0202                	c.slli64	tp
c040a1ac:	0202                	c.slli64	tp
c040a1ae:	0202                	c.slli64	tp
c040a1b0:	0202                	c.slli64	tp
c040a1b2:	0202                	c.slli64	tp
c040a1b4:	0202                	c.slli64	tp
c040a1b6:	0202                	c.slli64	tp
c040a1b8:	0202                	c.slli64	tp
c040a1ba:	0202                	c.slli64	tp
c040a1bc:	0202                	c.slli64	tp
c040a1be:	0202                	c.slli64	tp
c040a1c0:	0202                	c.slli64	tp
c040a1c2:	0202                	c.slli64	tp
c040a1c4:	0202                	c.slli64	tp
c040a1c6:	0202                	c.slli64	tp
c040a1c8:	0202                	c.slli64	tp
c040a1ca:	0202                	c.slli64	tp
c040a1cc:	0202                	c.slli64	tp
c040a1ce:	0202                	c.slli64	tp
c040a1d0:	0202                	c.slli64	tp
c040a1d2:	0202                	c.slli64	tp
c040a1d4:	0202                	c.slli64	tp
c040a1d6:	0202                	c.slli64	tp
c040a1d8:	0202                	c.slli64	tp
c040a1da:	0202                	c.slli64	tp
c040a1dc:	0202                	c.slli64	tp
c040a1de:	0202                	c.slli64	tp
c040a1e0:	0202                	c.slli64	tp
c040a1e2:	0202                	c.slli64	tp
c040a1e4:	0202                	c.slli64	tp
c040a1e6:	0202                	c.slli64	tp
c040a1e8:	0202                	c.slli64	tp
c040a1ea:	0202                	c.slli64	tp
c040a1ec:	0202                	c.slli64	tp
c040a1ee:	0202                	c.slli64	tp
c040a1f0:	0202                	c.slli64	tp
c040a1f2:	0202                	c.slli64	tp
c040a1f4:	0202                	c.slli64	tp
c040a1f6:	0202                	c.slli64	tp
c040a1f8:	0202                	c.slli64	tp
c040a1fa:	0202                	c.slli64	tp
c040a1fc:	0202                	c.slli64	tp
c040a1fe:	0202                	c.slli64	tp
c040a200:	0202                	c.slli64	tp
c040a202:	0202                	c.slli64	tp
c040a204:	0202                	c.slli64	tp
c040a206:	0202                	c.slli64	tp
c040a208:	0202                	c.slli64	tp
c040a20a:	0202                	c.slli64	tp
c040a20c:	0202                	c.slli64	tp
c040a20e:	0202                	c.slli64	tp
c040a210:	0202                	c.slli64	tp
c040a212:	0202                	c.slli64	tp
c040a214:	0202                	c.slli64	tp
c040a216:	0202                	c.slli64	tp
c040a218:	0202                	c.slli64	tp
c040a21a:	0202                	c.slli64	tp
c040a21c:	0202                	c.slli64	tp
c040a21e:	0202                	c.slli64	tp
c040a220:	0202                	c.slli64	tp
c040a222:	0202                	c.slli64	tp
c040a224:	0202                	c.slli64	tp
c040a226:	0202                	c.slli64	tp
c040a228:	0202                	c.slli64	tp
c040a22a:	0202                	c.slli64	tp
c040a22c:	0202                	c.slli64	tp
c040a22e:	0202                	c.slli64	tp
c040a230:	0202                	c.slli64	tp
c040a232:	0202                	c.slli64	tp
c040a234:	0202                	c.slli64	tp
c040a236:	0202                	c.slli64	tp
c040a238:	0202                	c.slli64	tp
c040a23a:	0202                	c.slli64	tp
c040a23c:	0202                	c.slli64	tp
c040a23e:	0202                	c.slli64	tp
c040a240:	0202                	c.slli64	tp
c040a242:	0202                	c.slli64	tp
c040a244:	0202                	c.slli64	tp
c040a246:	0202                	c.slli64	tp
c040a248:	0202                	c.slli64	tp
c040a24a:	0202                	c.slli64	tp
c040a24c:	0202                	c.slli64	tp
c040a24e:	0202                	c.slli64	tp
c040a250:	0202                	c.slli64	tp
c040a252:	0202                	c.slli64	tp
c040a254:	0202                	c.slli64	tp
c040a256:	0202                	c.slli64	tp
c040a258:	0202                	c.slli64	tp
c040a25a:	0202                	c.slli64	tp
c040a25c:	0202                	c.slli64	tp
c040a25e:	0202                	c.slli64	tp
c040a260:	0202                	c.slli64	tp
c040a262:	0202                	c.slli64	tp
c040a264:	0202                	c.slli64	tp
c040a266:	0202                	c.slli64	tp
c040a268:	0202                	c.slli64	tp
c040a26a:	0202                	c.slli64	tp
c040a26c:	0202                	c.slli64	tp
c040a26e:	0202                	c.slli64	tp
c040a270:	0202                	c.slli64	tp
c040a272:	0202                	c.slli64	tp
c040a274:	0202                	c.slli64	tp
c040a276:	0202                	c.slli64	tp
c040a278:	0202                	c.slli64	tp
c040a27a:	0202                	c.slli64	tp
c040a27c:	0202                	c.slli64	tp
c040a27e:	0202                	c.slli64	tp
c040a280:	0202                	c.slli64	tp
c040a282:	0202                	c.slli64	tp
c040a284:	0202                	c.slli64	tp
c040a286:	0202                	c.slli64	tp
c040a288:	0202                	c.slli64	tp
c040a28a:	0202                	c.slli64	tp
c040a28c:	0202                	c.slli64	tp
c040a28e:	0202                	c.slli64	tp
c040a290:	0202                	c.slli64	tp
c040a292:	0202                	c.slli64	tp
c040a294:	0202                	c.slli64	tp
c040a296:	0202                	c.slli64	tp
c040a298:	0202                	c.slli64	tp
c040a29a:	0202                	c.slli64	tp
c040a29c:	0202                	c.slli64	tp
c040a29e:	0202                	c.slli64	tp
c040a2a0:	0202                	c.slli64	tp
c040a2a2:	0202                	c.slli64	tp
c040a2a4:	0202                	c.slli64	tp
c040a2a6:	0202                	c.slli64	tp
c040a2a8:	0202                	c.slli64	tp
c040a2aa:	0202                	c.slli64	tp
c040a2ac:	0202                	c.slli64	tp
c040a2ae:	0202                	c.slli64	tp
c040a2b0:	0202                	c.slli64	tp
c040a2b2:	0202                	c.slli64	tp
c040a2b4:	0202                	c.slli64	tp
c040a2b6:	0202                	c.slli64	tp
c040a2b8:	0202                	c.slli64	tp
c040a2ba:	0202                	c.slli64	tp
c040a2bc:	0202                	c.slli64	tp
c040a2be:	0202                	c.slli64	tp
c040a2c0:	0202                	c.slli64	tp
c040a2c2:	0202                	c.slli64	tp
c040a2c4:	0202                	c.slli64	tp
c040a2c6:	0202                	c.slli64	tp
c040a2c8:	0202                	c.slli64	tp
c040a2ca:	0202                	c.slli64	tp
c040a2cc:	0202                	c.slli64	tp
c040a2ce:	0202                	c.slli64	tp
c040a2d0:	0202                	c.slli64	tp
c040a2d2:	0202                	c.slli64	tp
c040a2d4:	0202                	c.slli64	tp
c040a2d6:	0202                	c.slli64	tp
c040a2d8:	0202                	c.slli64	tp
c040a2da:	0202                	c.slli64	tp
c040a2dc:	0202                	c.slli64	tp
c040a2de:	0202                	c.slli64	tp
c040a2e0:	0202                	c.slli64	tp
c040a2e2:	0202                	c.slli64	tp
c040a2e4:	0202                	c.slli64	tp
c040a2e6:	0202                	c.slli64	tp
c040a2e8:	0202                	c.slli64	tp
c040a2ea:	0202                	c.slli64	tp
c040a2ec:	0202                	c.slli64	tp
c040a2ee:	0202                	c.slli64	tp
c040a2f0:	0202                	c.slli64	tp
c040a2f2:	0202                	c.slli64	tp
c040a2f4:	0202                	c.slli64	tp
c040a2f6:	0202                	c.slli64	tp
c040a2f8:	0202                	c.slli64	tp
c040a2fa:	0202                	c.slli64	tp
c040a2fc:	0202                	c.slli64	tp
c040a2fe:	0202                	c.slli64	tp
c040a300:	0202                	c.slli64	tp
c040a302:	0202                	c.slli64	tp
c040a304:	0202                	c.slli64	tp
c040a306:	0202                	c.slli64	tp
c040a308:	0202                	c.slli64	tp
c040a30a:	0202                	c.slli64	tp
c040a30c:	0202                	c.slli64	tp
c040a30e:	0202                	c.slli64	tp
c040a310:	0202                	c.slli64	tp
c040a312:	0202                	c.slli64	tp
c040a314:	0202                	c.slli64	tp
c040a316:	0202                	c.slli64	tp
c040a318:	0202                	c.slli64	tp
c040a31a:	0202                	c.slli64	tp
c040a31c:	0202                	c.slli64	tp
c040a31e:	0202                	c.slli64	tp
c040a320:	0202                	c.slli64	tp
c040a322:	0202                	c.slli64	tp
c040a324:	0202                	c.slli64	tp
c040a326:	0202                	c.slli64	tp
c040a328:	0202                	c.slli64	tp
c040a32a:	0202                	c.slli64	tp
c040a32c:	0202                	c.slli64	tp
c040a32e:	0202                	c.slli64	tp
c040a330:	0202                	c.slli64	tp
c040a332:	0202                	c.slli64	tp
c040a334:	0202                	c.slli64	tp
c040a336:	0202                	c.slli64	tp
c040a338:	3a02                	fld	fs4,32(sp)
c040a33a:	02023c3b          	0x2023c3b
c040a33e:	0202                	c.slli64	tp
c040a340:	023d                	addi	tp,tp,15
c040a342:	3e02                	fld	ft8,32(sp)
c040a344:	4241403f 46454443 	0x464544434241403f
c040a34c:	0202                	c.slli64	tp
c040a34e:	4702                	lw	a4,0(sp)
c040a350:	0202                	c.slli64	tp
c040a352:	0202                	c.slli64	tp
c040a354:	0202                	c.slli64	tp
c040a356:	0202                	c.slli64	tp
c040a358:	0202                	c.slli64	tp
c040a35a:	0202                	c.slli64	tp
c040a35c:	0202                	c.slli64	tp
c040a35e:	0202                	c.slli64	tp
c040a360:	0202                	c.slli64	tp
c040a362:	0202                	c.slli64	tp
c040a364:	0202                	c.slli64	tp
c040a366:	0202                	c.slli64	tp
c040a368:	0202                	c.slli64	tp
c040a36a:	0202                	c.slli64	tp
c040a36c:	0202                	c.slli64	tp
c040a36e:	0202                	c.slli64	tp
c040a370:	0202                	c.slli64	tp
c040a372:	0202                	c.slli64	tp
c040a374:	0202                	c.slli64	tp
c040a376:	0202                	c.slli64	tp
c040a378:	0202                	c.slli64	tp
c040a37a:	0202                	c.slli64	tp
c040a37c:	0202                	c.slli64	tp
c040a37e:	0202                	c.slli64	tp
c040a380:	0202                	c.slli64	tp
c040a382:	0202                	c.slli64	tp
c040a384:	0202                	c.slli64	tp
c040a386:	0202                	c.slli64	tp
c040a388:	0202                	c.slli64	tp
c040a38a:	0202                	c.slli64	tp
c040a38c:	0202                	c.slli64	tp
c040a38e:	0202                	c.slli64	tp
c040a390:	0202                	c.slli64	tp
c040a392:	0202                	c.slli64	tp
c040a394:	0202                	c.slli64	tp
c040a396:	0202                	c.slli64	tp
c040a398:	0202                	c.slli64	tp
c040a39a:	0202                	c.slli64	tp
c040a39c:	0202                	c.slli64	tp
c040a39e:	0202                	c.slli64	tp
c040a3a0:	0202                	c.slli64	tp
c040a3a2:	0202                	c.slli64	tp
c040a3a4:	0202                	c.slli64	tp
c040a3a6:	0202                	c.slli64	tp
c040a3a8:	0202                	c.slli64	tp
c040a3aa:	0202                	c.slli64	tp
c040a3ac:	0202                	c.slli64	tp
c040a3ae:	0202                	c.slli64	tp
c040a3b0:	0202                	c.slli64	tp
c040a3b2:	0202                	c.slli64	tp
c040a3b4:	0202                	c.slli64	tp
c040a3b6:	0202                	c.slli64	tp
c040a3b8:	0202                	c.slli64	tp
c040a3ba:	0202                	c.slli64	tp
c040a3bc:	0202                	c.slli64	tp
c040a3be:	0202                	c.slli64	tp
c040a3c0:	0202                	c.slli64	tp
c040a3c2:	0202                	c.slli64	tp
c040a3c4:	0202                	c.slli64	tp
c040a3c6:	0202                	c.slli64	tp
c040a3c8:	0202                	c.slli64	tp
c040a3ca:	0202                	c.slli64	tp
c040a3cc:	0202                	c.slli64	tp
c040a3ce:	0202                	c.slli64	tp
c040a3d0:	0202                	c.slli64	tp
c040a3d2:	0202                	c.slli64	tp
c040a3d4:	0202                	c.slli64	tp
c040a3d6:	0202                	c.slli64	tp
c040a3d8:	0202                	c.slli64	tp
c040a3da:	0202                	c.slli64	tp
c040a3dc:	0202                	c.slli64	tp
c040a3de:	0202                	c.slli64	tp
c040a3e0:	0202                	c.slli64	tp
c040a3e2:	0202                	c.slli64	tp
c040a3e4:	0202                	c.slli64	tp
c040a3e6:	0202                	c.slli64	tp
c040a3e8:	0202                	c.slli64	tp
c040a3ea:	0202                	c.slli64	tp
c040a3ec:	0202                	c.slli64	tp
c040a3ee:	0202                	c.slli64	tp
c040a3f0:	0202                	c.slli64	tp
c040a3f2:	0202                	c.slli64	tp
c040a3f4:	0202                	c.slli64	tp
c040a3f6:	0202                	c.slli64	tp
c040a3f8:	0202                	c.slli64	tp
c040a3fa:	0202                	c.slli64	tp
c040a3fc:	0202                	c.slli64	tp
c040a3fe:	0202                	c.slli64	tp
c040a400:	0202                	c.slli64	tp
c040a402:	0202                	c.slli64	tp
c040a404:	0202                	c.slli64	tp
c040a406:	0202                	c.slli64	tp
c040a408:	0202                	c.slli64	tp
c040a40a:	0202                	c.slli64	tp
c040a40c:	0202                	c.slli64	tp
c040a40e:	0202                	c.slli64	tp
c040a410:	0202                	c.slli64	tp
c040a412:	0202                	c.slli64	tp
c040a414:	0202                	c.slli64	tp
c040a416:	0202                	c.slli64	tp
c040a418:	0202                	c.slli64	tp
c040a41a:	0202                	c.slli64	tp
c040a41c:	0202                	c.slli64	tp
c040a41e:	0202                	c.slli64	tp
c040a420:	0202                	c.slli64	tp
c040a422:	0202                	c.slli64	tp
c040a424:	0202                	c.slli64	tp
c040a426:	0202                	c.slli64	tp
c040a428:	0202                	c.slli64	tp
c040a42a:	0202                	c.slli64	tp
c040a42c:	0202                	c.slli64	tp
c040a42e:	0202                	c.slli64	tp
c040a430:	0202                	c.slli64	tp
c040a432:	0202                	c.slli64	tp
c040a434:	0202                	c.slli64	tp
c040a436:	0202                	c.slli64	tp
c040a438:	0202                	c.slli64	tp
c040a43a:	0202                	c.slli64	tp
c040a43c:	0202                	c.slli64	tp
c040a43e:	0202                	c.slli64	tp
c040a440:	0202                	c.slli64	tp
c040a442:	0202                	c.slli64	tp
c040a444:	0202                	c.slli64	tp
c040a446:	0202                	c.slli64	tp
c040a448:	0202                	c.slli64	tp
c040a44a:	0202                	c.slli64	tp
c040a44c:	0202                	c.slli64	tp
c040a44e:	0202                	c.slli64	tp
c040a450:	0202                	c.slli64	tp
c040a452:	0202                	c.slli64	tp
c040a454:	0202                	c.slli64	tp
c040a456:	0202                	c.slli64	tp
c040a458:	0202                	c.slli64	tp
c040a45a:	0202                	c.slli64	tp
c040a45c:	0202                	c.slli64	tp
c040a45e:	0202                	c.slli64	tp
c040a460:	0202                	c.slli64	tp
c040a462:	0202                	c.slli64	tp
c040a464:	0202                	c.slli64	tp
c040a466:	0202                	c.slli64	tp
c040a468:	0202                	c.slli64	tp
c040a46a:	0202                	c.slli64	tp
c040a46c:	0202                	c.slli64	tp
c040a46e:	0202                	c.slli64	tp
c040a470:	0202                	c.slli64	tp
c040a472:	0202                	c.slli64	tp
c040a474:	0202                	c.slli64	tp
c040a476:	0202                	c.slli64	tp
c040a478:	0202                	c.slli64	tp
c040a47a:	0202                	c.slli64	tp
c040a47c:	0202                	c.slli64	tp
c040a47e:	0202                	c.slli64	tp
c040a480:	0202                	c.slli64	tp
c040a482:	0202                	c.slli64	tp
c040a484:	0202                	c.slli64	tp
c040a486:	0202                	c.slli64	tp
c040a488:	0202                	c.slli64	tp
c040a48a:	0202                	c.slli64	tp
c040a48c:	0248                	addi	a0,sp,260
c040a48e:	0202                	c.slli64	tp
c040a490:	0202                	c.slli64	tp
c040a492:	0202                	c.slli64	tp
c040a494:	0202                	c.slli64	tp
c040a496:	0202                	c.slli64	tp
c040a498:	0249                	addi	tp,tp,18
c040a49a:	0202                	c.slli64	tp
c040a49c:	0202                	c.slli64	tp
c040a49e:	0100023b          	0x100023b
c040a4a2:	0202                	c.slli64	tp
c040a4a4:	0202                	c.slli64	tp
c040a4a6:	02020203          	lb	tp,32(tp) # c4599739 <ebss+0x4178619>
c040a4aa:	0402                	c.slli64	s0
c040a4ac:	0502                	c.slli64	a0
c040a4ae:	0206                	slli	tp,tp,0x1
c040a4b0:	0202                	c.slli64	tp
c040a4b2:	0202                	c.slli64	tp
c040a4b4:	0202                	c.slli64	tp
c040a4b6:	0202                	c.slli64	tp
c040a4b8:	0202                	c.slli64	tp
c040a4ba:	0202                	c.slli64	tp
c040a4bc:	0202                	c.slli64	tp
c040a4be:	0202                	c.slli64	tp
c040a4c0:	0202                	c.slli64	tp
c040a4c2:	0202                	c.slli64	tp
c040a4c4:	0202                	c.slli64	tp
c040a4c6:	0202                	c.slli64	tp
c040a4c8:	0202                	c.slli64	tp
c040a4ca:	0202                	c.slli64	tp
c040a4cc:	0202                	c.slli64	tp
c040a4ce:	0202                	c.slli64	tp
c040a4d0:	0202                	c.slli64	tp
c040a4d2:	0202                	c.slli64	tp
c040a4d4:	0202                	c.slli64	tp
c040a4d6:	0202                	c.slli64	tp
c040a4d8:	0202                	c.slli64	tp
c040a4da:	0202                	c.slli64	tp
c040a4dc:	0202                	c.slli64	tp
c040a4de:	0202                	c.slli64	tp
c040a4e0:	0202                	c.slli64	tp
c040a4e2:	0202                	c.slli64	tp
c040a4e4:	0202                	c.slli64	tp
c040a4e6:	0202                	c.slli64	tp
c040a4e8:	0202                	c.slli64	tp
c040a4ea:	0202                	c.slli64	tp
c040a4ec:	0202                	c.slli64	tp
c040a4ee:	0202                	c.slli64	tp
c040a4f0:	0202                	c.slli64	tp
c040a4f2:	0202                	c.slli64	tp
c040a4f4:	0202                	c.slli64	tp
c040a4f6:	0202                	c.slli64	tp
c040a4f8:	0202                	c.slli64	tp
c040a4fa:	0202                	c.slli64	tp
c040a4fc:	0202                	c.slli64	tp
c040a4fe:	0202                	c.slli64	tp
c040a500:	0202                	c.slli64	tp
c040a502:	0202                	c.slli64	tp
c040a504:	0202                	c.slli64	tp
c040a506:	0202                	c.slli64	tp
c040a508:	0202                	c.slli64	tp
c040a50a:	0202                	c.slli64	tp
c040a50c:	0202                	c.slli64	tp
c040a50e:	0202                	c.slli64	tp
c040a510:	0202                	c.slli64	tp
c040a512:	0202                	c.slli64	tp
c040a514:	0202                	c.slli64	tp
c040a516:	0202                	c.slli64	tp
c040a518:	0202                	c.slli64	tp
c040a51a:	0202                	c.slli64	tp
c040a51c:	0202                	c.slli64	tp
c040a51e:	0202                	c.slli64	tp
c040a520:	0202                	c.slli64	tp
c040a522:	0202                	c.slli64	tp
c040a524:	0202                	c.slli64	tp
c040a526:	0202                	c.slli64	tp
c040a528:	0202                	c.slli64	tp
c040a52a:	0202                	c.slli64	tp
c040a52c:	0202                	c.slli64	tp
c040a52e:	0202                	c.slli64	tp
c040a530:	0202                	c.slli64	tp
c040a532:	0202                	c.slli64	tp
c040a534:	0202                	c.slli64	tp
c040a536:	0202                	c.slli64	tp
c040a538:	0202                	c.slli64	tp
c040a53a:	0202                	c.slli64	tp
c040a53c:	0202                	c.slli64	tp
c040a53e:	0202                	c.slli64	tp
c040a540:	0202                	c.slli64	tp
c040a542:	0202                	c.slli64	tp
c040a544:	0202                	c.slli64	tp
c040a546:	0202                	c.slli64	tp
c040a548:	0202                	c.slli64	tp
c040a54a:	0202                	c.slli64	tp
c040a54c:	0202                	c.slli64	tp
c040a54e:	0202                	c.slli64	tp
c040a550:	0202                	c.slli64	tp
c040a552:	0202                	c.slli64	tp
c040a554:	0202                	c.slli64	tp
c040a556:	0202                	c.slli64	tp
c040a558:	0202                	c.slli64	tp
c040a55a:	0202                	c.slli64	tp
c040a55c:	0202                	c.slli64	tp
c040a55e:	0202                	c.slli64	tp
c040a560:	0202                	c.slli64	tp
c040a562:	0202                	c.slli64	tp
c040a564:	0202                	c.slli64	tp
c040a566:	0202                	c.slli64	tp
c040a568:	0202                	c.slli64	tp
c040a56a:	0202                	c.slli64	tp
c040a56c:	0202                	c.slli64	tp
c040a56e:	0202                	c.slli64	tp
c040a570:	02020207          	0x2020207
c040a574:	0202                	c.slli64	tp
c040a576:	0202                	c.slli64	tp
c040a578:	0202                	c.slli64	tp
c040a57a:	0202                	c.slli64	tp
c040a57c:	0202                	c.slli64	tp
c040a57e:	0202                	c.slli64	tp
c040a580:	0202                	c.slli64	tp
c040a582:	0202                	c.slli64	tp
c040a584:	0202                	c.slli64	tp
c040a586:	0202                	c.slli64	tp
c040a588:	0202                	c.slli64	tp
c040a58a:	0202                	c.slli64	tp
c040a58c:	0202                	c.slli64	tp
c040a58e:	0202                	c.slli64	tp
c040a590:	0202                	c.slli64	tp
c040a592:	0202                	c.slli64	tp
c040a594:	0202                	c.slli64	tp
c040a596:	0202                	c.slli64	tp
c040a598:	0202                	c.slli64	tp
c040a59a:	0202                	c.slli64	tp
c040a59c:	0202                	c.slli64	tp
c040a59e:	0202                	c.slli64	tp

c040a5a0 <.Lanon.c4e76b4efa29d0605408d8647ec48c1c.6>:
c040a5a0:	6c6c6163          	bltu	s8,t1,c040ac62 <.Lanon.3c4527e028b121388c96372eabd27aa3.43+0x546>
c040a5a4:	6465                	lui	s0,0x19
c040a5a6:	6020                	flw	fs0,64(s0)
c040a5a8:	6974704f          	fnmadd.s	ft0,fs0,fs7,fa3
c040a5ac:	3a3a6e6f          	jal	t3,c04b114e <ebss+0x9002e>
c040a5b0:	6e75                	lui	t3,0x1d
c040a5b2:	70617277          	0x70617277
c040a5b6:	2928                	fld	fa0,80(a0)
c040a5b8:	2060                	fld	fs0,192(s0)
c040a5ba:	61206e6f          	jal	t3,c0410bcc <edata+0x3bcc>
c040a5be:	6020                	flw	fs0,64(s0)
c040a5c0:	6f4e                	flw	ft10,208(sp)
c040a5c2:	656e                	flw	fa0,216(sp)
c040a5c4:	2060                	fld	fs0,192(s0)
c040a5c6:	6176                	flw	ft2,92(sp)
c040a5c8:	756c                	flw	fa1,108(a0)
c040a5ca:	                	jal	c040ad82 <.Lanon.3c4527e028b121388c96372eabd27aa3.43+0x666>

c040a5cb <.Lanon.c4e76b4efa29d0605408d8647ec48c1c.7>:
c040a5cb:	6d6f682f          	0x6d6f682f
c040a5cf:	2f65                	jal	c040ad87 <.Lanon.3c4527e028b121388c96372eabd27aa3.43+0x66b>
c040a5d1:	6166                	flw	ft2,88(sp)
c040a5d3:	7a6e                	flw	fs4,248(sp)
c040a5d5:	6968                	flw	fa0,84(a0)
c040a5d7:	6570                	flw	fa2,76(a0)
c040a5d9:	676e                	flw	fa4,216(sp)
c040a5db:	75722e2f          	0x75722e2f
c040a5df:	70757473          	csrrci	s0,0x707,10
c040a5e3:	6f6f742f          	0x6f6f742f
c040a5e7:	636c                	flw	fa1,68(a4)
c040a5e9:	6168                	flw	fa0,68(a0)
c040a5eb:	6e69                	lui	t3,0x1a
c040a5ed:	696e2f73          	csrrs	t5,0x696,t3
c040a5f1:	6c746867          	0x6c746867
c040a5f5:	2d79                	jal	c040ac93 <.Lanon.3c4527e028b121388c96372eabd27aa3.43+0x577>
c040a5f7:	3878                	fld	fa4,240(s0)
c040a5f9:	5f36                	lw	t5,108(sp)
c040a5fb:	3436                	fld	fs0,360(sp)
c040a5fd:	752d                	lui	a0,0xfffeb
c040a5ff:	6b6e                	flw	fs6,216(sp)
c040a601:	6f6e                	flw	ft10,216(sp)
c040a603:	6c2d6e77          	0x6c2d6e77
c040a607:	6e69                	lui	t3,0x1a
c040a609:	7875                	lui	a6,0xffffd
c040a60b:	672d                	lui	a4,0xb
c040a60d:	756e                	flw	fa0,248(sp)
c040a60f:	62696c2f          	0x62696c2f
c040a613:	7375722f          	0x7375722f
c040a617:	6c74                	flw	fa3,92(s0)
c040a619:	6269                	lui	tp,0x1a
c040a61b:	6372732f          	0x6372732f
c040a61f:	7375722f          	0x7375722f
c040a623:	2f74                	fld	fa3,216(a4)
c040a625:	2f637273          	csrrci	tp,0x2f6,6
c040a629:	696c                	flw	fa1,84(a0)
c040a62b:	6362                	flw	ft6,24(sp)
c040a62d:	2f65726f          	jal	tp,c0461923 <ebss+0x40803>
c040a631:	6974706f          	j	c04524c7 <ebss+0x313a7>
c040a635:	722e6e6f          	jal	t3,c04f0d57 <ebss+0xcfc37>
c040a639:	          	0xa0000073

c040a63c <.Lanon.c4e76b4efa29d0605408d8647ec48c1c.8>:
c040a63c:	a5a0                	fsd	fs0,72(a1)
c040a63e:	c040                	sw	s0,4(s0)
c040a640:	0000002b          	0x2b
c040a644:	c040a5cb          	fnmsub.s	fa1,ft1,ft4,fs8,rdn
c040a648:	0000006f          	j	c040a648 <.Lanon.c4e76b4efa29d0605408d8647ec48c1c.8+0xc>
c040a64c:	017a                	slli	sp,sp,0x1e
c040a64e:	0000                	unimp
c040a650:	0015                	c.nop	5
	...

c040a654 <anon.c4e76b4efa29d0605408d8647ec48c1c.9.llvm.1060104960292696442>:
c040a654:	558c                	lw	a1,40(a1)
c040a656:	c040                	sw	s0,4(s0)
c040a658:	000c                	0xc
c040a65a:	0000                	unimp
c040a65c:	0004                	0x4
c040a65e:	0000                	unimp
c040a660:	690c                	flw	fa1,16(a0)
c040a662:	c040                	sw	s0,4(s0)
c040a664:	734c                	flw	fa1,36(a4)
c040a666:	c040                	sw	s0,4(s0)
c040a668:	7434                	flw	fa3,104(s0)
c040a66a:	c040                	sw	s0,4(s0)
c040a66c:	0000                	unimp
	...

c040a670 <str.0>:
c040a670:	6d6f682f          	0x6d6f682f
c040a674:	2f65                	jal	c040ae2c <.Lanon.3c4527e028b121388c96372eabd27aa3.43+0x710>
c040a676:	6166                	flw	ft2,88(sp)
c040a678:	7a6e                	flw	fs4,248(sp)
c040a67a:	6968                	flw	fa0,84(a0)
c040a67c:	6570                	flw	fa2,76(a0)
c040a67e:	676e                	flw	fa4,216(sp)
c040a680:	75722e2f          	0x75722e2f
c040a684:	70757473          	csrrci	s0,0x707,10
c040a688:	6f6f742f          	0x6f6f742f
c040a68c:	636c                	flw	fa1,68(a4)
c040a68e:	6168                	flw	fa0,68(a0)
c040a690:	6e69                	lui	t3,0x1a
c040a692:	696e2f73          	csrrs	t5,0x696,t3
c040a696:	6c746867          	0x6c746867
c040a69a:	2d79                	jal	c040ad38 <.Lanon.3c4527e028b121388c96372eabd27aa3.43+0x61c>
c040a69c:	3878                	fld	fa4,240(s0)
c040a69e:	5f36                	lw	t5,108(sp)
c040a6a0:	3436                	fld	fs0,360(sp)
c040a6a2:	752d                	lui	a0,0xfffeb
c040a6a4:	6b6e                	flw	fs6,216(sp)
c040a6a6:	6f6e                	flw	ft10,216(sp)
c040a6a8:	6c2d6e77          	0x6c2d6e77
c040a6ac:	6e69                	lui	t3,0x1a
c040a6ae:	7875                	lui	a6,0xffffd
c040a6b0:	672d                	lui	a4,0xb
c040a6b2:	756e                	flw	fa0,248(sp)
c040a6b4:	62696c2f          	0x62696c2f
c040a6b8:	7375722f          	0x7375722f
c040a6bc:	6c74                	flw	fa3,92(s0)
c040a6be:	6269                	lui	tp,0x1a
c040a6c0:	6372732f          	0x6372732f
c040a6c4:	7375722f          	0x7375722f
c040a6c8:	2f74                	fld	fa3,216(a4)
c040a6ca:	2f637273          	csrrci	tp,0x2f6,6
c040a6ce:	696c                	flw	fa1,84(a0)
c040a6d0:	6362                	flw	ft6,24(sp)
c040a6d2:	2f65726f          	jal	tp,c04619c8 <ebss+0x408a8>
c040a6d6:	6d66                	flw	fs10,88(sp)
c040a6d8:	2f74                	fld	fa3,216(a4)
c040a6da:	6f6d                	lui	t5,0x1b
c040a6dc:	2e64                	fld	fs1,216(a2)
c040a6de:	7372                	flw	ft6,60(sp)

c040a6e0 <.Lanon.c4e76b4efa29d0605408d8647ec48c1c.10>:
c040a6e0:	a670                	fsd	fa2,200(a2)
c040a6e2:	c040                	sw	s0,4(s0)
c040a6e4:	0070                	addi	a2,sp,12
c040a6e6:	0000                	unimp
c040a6e8:	0454                	addi	a3,sp,516
c040a6ea:	0000                	unimp
c040a6ec:	0028                	addi	a0,sp,8
	...

c040a6f0 <.Lanon.c4e76b4efa29d0605408d8647ec48c1c.11>:
c040a6f0:	a670                	fsd	fa2,200(a2)
c040a6f2:	c040                	sw	s0,4(s0)
c040a6f4:	0070                	addi	a2,sp,12
c040a6f6:	0000                	unimp
c040a6f8:	0460                	addi	s0,sp,524
c040a6fa:	0000                	unimp
c040a6fc:	0011                	c.nop	4
	...

c040a700 <.Lanon.c4e76b4efa29d0605408d8647ec48c1c.22>:
c040a700:	7245                	lui	tp,0xffff1
c040a702:	6f72                	flw	ft10,28(sp)
c040a704:	                	fld	ft0,280(sp)

c040a705 <anon.3c4527e028b121388c96372eabd27aa3.18.llvm.7035815030266494417>:
c040a705:	7b20                	flw	fs0,112(a4)
c040a707:	                	fld	fs4,160(sp)

c040a708 <anon.3c4527e028b121388c96372eabd27aa3.19.llvm.7035815030266494417>:
c040a708:	203a                	fld	ft0,392(sp)

c040a70a <anon.3c4527e028b121388c96372eabd27aa3.20.llvm.7035815030266494417>:
c040a70a:	0a2c                	addi	a1,sp,280

c040a70c <anon.3c4527e028b121388c96372eabd27aa3.21.llvm.7035815030266494417>:
c040a70c:	202c                	fld	fa1,64(s0)

c040a70e <anon.3c4527e028b121388c96372eabd27aa3.22.llvm.7035815030266494417>:
c040a70e:	7b20                	flw	fs0,112(a4)
c040a710:	                	flw	fs0,120(a0)

c040a711 <anon.3c4527e028b121388c96372eabd27aa3.23.llvm.7035815030266494417>:
c040a711:	                	jal	c040a7bf <.Lanon.3c4527e028b121388c96372eabd27aa3.43+0xa3>

c040a712 <anon.3c4527e028b121388c96372eabd27aa3.24.llvm.7035815030266494417>:
c040a712:	7d20                	flw	fs0,120(a0)

c040a714 <anon.3c4527e028b121388c96372eabd27aa3.25.llvm.7035815030266494417>:
c040a714:	0a28                	addi	a0,sp,280

c040a716 <anon.3c4527e028b121388c96372eabd27aa3.26.llvm.7035815030266494417>:
c040a716:	                	fld	fa0,88(s0)

c040a717 <anon.3c4527e028b121388c96372eabd27aa3.27.llvm.7035815030266494417>:
c040a717:	                	fld	fa1,80(a0)

c040a718 <anon.3c4527e028b121388c96372eabd27aa3.28.llvm.7035815030266494417>:
c040a718:	                	addi	s4,s4,10

c040a719 <anon.3c4527e028b121388c96372eabd27aa3.29.llvm.7035815030266494417>:
c040a719:	                	lw	s6,160(sp)

c040a71a <anon.3c4527e028b121388c96372eabd27aa3.31.llvm.7035815030266494417>:
c040a71a:	          	0x68805d5b

c040a71b <anon.3c4527e028b121388c96372eabd27aa3.35.llvm.7035815030266494417>:
c040a71b:	                	srli	s0,s0,0x17

c040a71c <.Lanon.3c4527e028b121388c96372eabd27aa3.43>:
c040a71c:	6880                	flw	fs0,16(s1)
c040a71e:	c040                	sw	s0,4(s0)
c040a720:	0004                	0x4
c040a722:	0000                	unimp
c040a724:	0004                	0x4
c040a726:	0000                	unimp
c040a728:	74a0                	flw	fs0,104(s1)
c040a72a:	c040                	sw	s0,4(s0)
c040a72c:	74c8                	flw	fa0,44(s1)
c040a72e:	c040                	sw	s0,4(s0)
c040a730:	75b4                	flw	fa3,104(a1)
c040a732:	c040                	sw	s0,4(s0)
	...

Disassembly of section .eh_frame:

c040b000 <.eh_frame>:
c040b000:	0010                	0x10
c040b002:	0000                	unimp
c040b004:	0000                	unimp
c040b006:	0000                	unimp
c040b008:	7a01                	lui	s4,0xfffe0
c040b00a:	0052                	c.slli	zero,0x14
c040b00c:	7c01                	lui	s8,0xfffe0
c040b00e:	0101                	addi	sp,sp,0
c040b010:	00020c1b          	0x20c1b
c040b014:	0010                	0x10
c040b016:	0000                	unimp
c040b018:	0018                	0x18
c040b01a:	0000                	unimp
c040b01c:	5044                	lw	s1,36(s0)
c040b01e:	ffff                	0xffff
c040b020:	0008                	0x8
c040b022:	0000                	unimp
c040b024:	0e00                	addi	s0,sp,784
c040b026:	0000                	unimp
c040b028:	0010                	0x10
c040b02a:	0000                	unimp
c040b02c:	002c                	addi	a1,sp,8
c040b02e:	0000                	unimp
c040b030:	5038                	lw	a4,96(s0)
c040b032:	ffff                	0xffff
c040b034:	0008                	0x8
c040b036:	0000                	unimp
c040b038:	0e00                	addi	s0,sp,784
c040b03a:	0000                	unimp
c040b03c:	0010                	0x10
c040b03e:	0000                	unimp
c040b040:	0040                	addi	s0,sp,4
c040b042:	0000                	unimp
c040b044:	502c                	lw	a1,96(s0)
c040b046:	ffff                	0xffff
c040b048:	0008                	0x8
c040b04a:	0000                	unimp
c040b04c:	0e00                	addi	s0,sp,784
c040b04e:	0000                	unimp
c040b050:	0000                	unimp
	...

Disassembly of section .data:

c040c000 <sdata>:
	...
c040c804:	201000cf          	fnmadd.s	ft1,ft0,ft1,ft4,rne
	...
c040cc04:	2010002f          	0x2010002f
	...
c040cffc:	8c01                	sub	s0,s0,s0
c040cffe:	2010                	fld	fa2,0(s0)

Disassembly of section .stack:

c040d000 <bootstack>:
	...

Disassembly of section .bss:

c0411000 <sbss>:
	...

c0421000 <_ZN2os6memory17DYNAMIC_ALLOCATOR17h2fd167728192bacaE>:
	...

c0421090 <_ZN2os6memory15frame_allocator22SEGMENT_TREE_ALLOCATOR17h04db97e6a7a29ab8E>:
	...

Disassembly of section .sbss:

c0421120 <_ZN2os5clock4TICK17hf100d43539b54ad0E>:
c0421120:	0000                	unimp
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	694c                	flw	fa1,20(a0)
   2:	6b6e                	flw	fs6,216(sp)
   4:	7265                	lui	tp,0xffff9
   6:	203a                	fld	ft0,392(sp)
   8:	4c4c                	lw	a1,28(s0)
   a:	2044                	fld	fs1,128(s0)
   c:	2e39                	jal	32a <XLENB+0x326>
   e:	2e30                	fld	fa2,88(a2)
  10:	0030                	addi	a2,sp,8
