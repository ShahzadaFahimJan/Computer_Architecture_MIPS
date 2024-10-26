.data
str: .asciiz "Enter First Number\n" 
str2: .asciiz "Enter second Number\n" 
result: .asciiz "The result is \n"
.text
.globl main
main:
#li.s $f2,33.333 
#li.s $f3,56.33332
li $v0,4
la $a0,str
syscall

li $v0,6 #input single precision number
syscall
mov.s $f2,$f0 #single precision value stored in $f0
li $v0,4
la $a0,str2
syscall

li $v0,6
syscall
mov.s $f3,$f0
li $v0,4
la $a0,result
syscall
add.s $f5,$f2,$f3 #single precision operation 
#div.s $f5,$f2,$f3 
mov.s $f12,$f5 #to display on console move the result to $f12
li $v0,2 #display the result on console 
syscall
li $v0,10
syscall