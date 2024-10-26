.data
input_prompt:   .asciiz "Enter Celsius: "
output_result:  .asciiz "Fahrenheit: "

.text
.globl main

main:
   
    li $v0, 4
    la $a0, input_prompt
    syscall


    li $v0, 6
    syscall
    mov.s $f2, $f0  # Store Celsius value in $f2

  
    li.s $f1, 32.0
    li.s $f3, 9.0
    li.s $f4, 5.0
    div.s $f5, $f3, $f4
    mul.s $f6, $f2, $f5
    add.s $f7, $f6, $f1

  
    li $v0, 4
    la $a0, output_result
    syscall

  
    mov.s $f12, $f7
    li $v0, 2
    syscall


    li $v0, 10
    syscall
