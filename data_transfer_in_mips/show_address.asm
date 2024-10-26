.text
.globl main
main:
la $t0,num
li $v0,1
move $a0,$t0
syscall
end:
li $v0,10
syscall

.data
num: .word 10