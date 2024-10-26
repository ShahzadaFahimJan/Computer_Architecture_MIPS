.text
.globl main
main:
li $t5,5
loop:

la $t0,num
addi $t1,$t1,4
lw $t1,($t0)

li $v0,1
move $a0,$t1
syscall

sub $t5,$t5,1
bnez $t5,loop
syscall
end:
li $v0,10
syscall


.data 
num: .word 20,10,20,30,40