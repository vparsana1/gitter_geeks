@ Register = val2 + 3 + val3 - val1
.section .data
val1: .byte -60
val2: .byte 11
val3: .byte 16

.section .text
.globl _start
_start:
ldr r1, =val1
ldrb r1, [r1]
ldr r2, =val2
ldrb r2, [r2]
ldr r3, =val3
ldrsb r3, [r3]
add r4,r2,#3
add r5,r4,r3
sub r6,r5,r1
mov r7,#1
svc #0
.end
