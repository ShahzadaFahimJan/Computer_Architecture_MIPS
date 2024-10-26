.data
num: .word 30
result_msg: .asciiz "Result is \n"

.text
.globl main

main:
    lw $t0, num           # Load value from memory into $t0
    sll $t0, $t0, 1       # Double the value by shifting left by 1 bit
    sw $t0, num           # Store the result back into memory
 # Print the result to the console
    li $v0, 4                    
    la $a0, result_msg           
    syscall                      

    li $v0, 1                    
    move $a0, $t0                
    syscall 
    # Exit program
    li $v0, 10
    syscall
