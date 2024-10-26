.text
.globl main

main:
    la $t0, target_label  # Load the address of target_label into $t0
    jr $t0                # Jump to the address stored in $t0

target_label:
    li $t1, 2            
    li $t2, 2           
    add $t3, $t1, $t2    

    # Print the result
    move $a0, $t3       
    li $v0, 1            
    syscall             

    # Exit program
    li $v0, 10           
    syscall              

