.data
    result: .asciiz "Result of AND operation: "
.text
.globl main

main:
	li $t0,0
	li $t1,1
	and $t2, $t0,$t1 
    	li $v0, 4       
    	la $a0, result 
    	syscall
    	li $v0, 1           
   	move $a0, $t2      
        syscall
	li $v0,10
syscall