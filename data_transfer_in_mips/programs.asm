.text
.globl main
main:
#lw $t0,num
#li $v0,1
#move $a0,$t0
#syscall

la $t0,num
#lw $t1,0($t0)
#lw $t2,4($t0)
#li $v0,1
#move $a0,$t1
#show address 
li $v0,1
move $t4,$t0
syscall
syscall
li $v0,4
la $a0,str
syscall
li $v0,1
move $a0,$t2
syscall

end:
li $v0,10
syscall


.data 
num: .word 10,20
str: .asciiz " " 