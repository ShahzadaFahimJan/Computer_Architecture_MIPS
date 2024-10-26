.text
.globl main
main:
la $t0,num
li $v0,1
move $a0,$t0
syscall
lw $t3,($t0)
li $t4,30
add $t3,$t4,$t3
li $v0,1
move $a0,$t3
syscall
sw $t3,num

end:
li $v0,10
syscall

.data
num: .word 10