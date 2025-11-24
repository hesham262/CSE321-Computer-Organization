.data 
num : .asciiz "Enter the number\n"
sum : .asciiz "the sum is:"


.text 
main:

li $t1, 0

do:
li $v0,4 
la $a0, num
syscall

li $v0,5
syscall

move $t0, $v0

beqz $t0, endwhile
addu $t1, $t1, $t0

j do

endwhile:

li $v0,4 
la $a0 ,sum 
syscall 

li $v0, 1
    move $a0, $t1
    syscall


exit:
li $v0,10
syscall