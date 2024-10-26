.text
.globl main
main:
lw $t0,num
sll $t0,$t0,1
sw $t0,num
li $v0,1
move $a0,$t0
syscall
end:
li $v0,10
syscall
.data
num: .word 10