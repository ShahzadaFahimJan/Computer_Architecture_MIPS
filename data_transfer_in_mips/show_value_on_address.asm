.text
.globl main
main:
la $t0,num
lw $t1,0($t0)
li $v0,1
move $a0,$t1
syscall
end:
li $v0,10
syscall


.data 
num: .word 20