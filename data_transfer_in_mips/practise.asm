.text 
.globl main
main:
la $t0,label
jr $t0
again:
li $t5,10
li $v0,1
move $a0,$t5
syscall
j end
label:
li $t2,10
li $t3, 20
add $t1,$t2,$t3
li $v0,4
la $a0,str
syscall
li $v0,1
move $a0,$t1
syscall
j again
end:
li $v0,10
syscall

.data
str: .asciiz " the result is \n" 