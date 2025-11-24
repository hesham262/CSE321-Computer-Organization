.data 
numbers : .asciiz "Numbers are: \n"
space : .asciiz "\n"

.text
main:

li $v0,4 
la $a0, numbers 
syscall

li $t0,1 
li $t1 , 11

while :
beq $t0 , $t1, endwhile 

li $v0,1
move $a0 , $t0
syscall 

li $v0,4
la $a0, space 
syscall

addi $t0, $t0 , 1
j while 



endwhile 

exit:
li $v0,10