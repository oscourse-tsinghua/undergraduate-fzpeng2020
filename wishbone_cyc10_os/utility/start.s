.section .text

.equ UART_BASE, 0x02000000
.globl _start

_start:
# zero-initialize register file
addi x1, zero, 0
li   x2, 0x300000
addi x3, zero, 0
addi x4, zero, 0
addi x5, zero, 0
addi x6, zero, 0
addi x7, zero, 0
addi x8, zero, 0
addi x9, zero, 0
addi x10, zero, 0
addi x11, zero, 0
addi x12, zero, 0
addi x13, zero, 0
addi x14, zero, 0
addi x15, zero, 0
addi x16, zero, 0
addi x17, zero, 0
addi x18, zero, 0
addi x19, zero, 0
addi x20, zero, 0
addi x21, zero, 0
addi x22, zero, 0
addi x23, zero, 0
addi x24, zero, 0
addi x25, zero, 0
addi x26, zero, 0
addi x27, zero, 0
addi x28, zero, 0
addi x29, zero, 0
addi x30, zero, 0
addi x31, zero, 0
/*
li t0, UART_BASE
li t1, 0x41
sb t1, 0(t0)
li t1, 0x42
sb t1, 0(t1)
*/
# These codes are used to initialize the UART16550 compatitable interface
/*
#set the 7th bit in LCR in order to set the divisor later
li t0, UART_BASE
li t1, 0x80
sb t1, 3(t0)  

#set the high bytes of divisor
li t1, 0x00
sb t1, 1(t0)

#set the low bytes of divisor
# divisor = 12MHz / (16 * 57600) = 13 
# wishbone_clk is 30MHz maybe using this is the correct one?
li t1, 0x0d
sb t1, 0(t0)

#set the LCR = 0x03 data is 8bits, no check bit, and 1 stop bit
li t1, 0x03
sb t1, 3(t0)
*/
# call main
call main
loop:
j loop

