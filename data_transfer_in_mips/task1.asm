.data
num: .word 50
result_msg: .asciiz "Result is\n" 
.text
.globl main

main:
    lw $t0, num           # Load value from memory into $t0
    li $t1, 10            
    add $t0, $t0, $t1     
    sw $t0, num           # Store the result back into memory
    li $v0, 4                    
    la $a0, result_msg           
    syscall                     

    li $v0, 1                    
    move $a0, $t0               
    syscall  
    
    li $v0, 10
    syscall
