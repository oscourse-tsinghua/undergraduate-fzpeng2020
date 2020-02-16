.equ XLENB, 4
.macro Load a1, a2
    lw \a1, \a2*XLENB(sp)
.endm
.macro Store a1, a2
    sw \a1, \a2*XLENB(sp)
.endm
    # 入栈，即在当前栈上分配空间保存当前 CPU 状态
    addi sp, sp, -14*XLENB
    # 更新“当前线程栈顶地址”
    sw sp, 0(a0)
    # 依次保存各寄存器的值
    Store ra, 0
    Store s0, 2
    Store s1, 3
    Store s2, 4
	Store s3, 5
	Store s4, 6
	Store s5, 7
	Store s6, 8
	Store s7, 9
	Store s8, 10
	Store s9, 11
    Store s10, 12
    Store s11, 13
    csrr s11, satp
    Store s11, 1
    # 当前线程状态保存完毕

    # 准备恢复到“要切换到的线程”
    # 读取“要切换到的线程栈顶地址”，并直接换栈
    lw sp, 0(a1)
    # 依序恢复各寄存器
    Load s11, 1
    # 恢复页表寄存器 satp，别忘了使用屏障指令 sfence.vma 刷新 TLB
    csrw satp, s11
    sfence.vma
    Load ra, 0
    Load s0, 2
    Load s1, 3
    Load s2, 4
	Load s3, 5
	Load s4, 6
	Load s5, 7
	Load s6, 8
	Load s7, 9
	Load s8, 10
	Load s9, 11
    Load s10, 12
    Load s11, 13
    # 各寄存器均被恢复，恢复过程结束
    # “要切换到的线程” 变成了 “当前线程”
    # 出栈，即在当前栈上回收用来保存线程状态的内存
    addi sp, sp, 14*XLENB

    # 将“当前线程的栈顶地址”修改为 0
    # 这并不会修改当前的栈
    # 事实上这个值只有当对应的线程停止时才有效
    # 这里主要是标志这个线程开始运行了
    sw zero, 0(a1)
    ret
