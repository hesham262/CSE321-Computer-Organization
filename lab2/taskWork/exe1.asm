.data 
num : .asciiz "enter the bumber: \n"
even : .asciiz "the no of even no is: \n"
odd : .asciiz "the no of odd no is: \n"

.text
main:
li $t0,0
li $t1, 5
li $t4 ,0  //odd counter
li $t5,0   // even counter

li $t6,2

li $v0 , 4
la $a0,num
 syscall

for:
bgt $t0, $t1 endfor

li $v0,5
syscall 
move $t2, $v0

div $t2,$t6
mfhi $t3

beqz $t3,0 is_even
add $t4, $t4, $t3
j for 

is_even :
add $t5, $t5, $t3
j for 


 endfor:
 li $v0,4
 la $a0, even 
 syscall 
 li$v0,1
 move $a0, $t5
 syscall

 li $v0,4
 la $a0, odd
 syscall 
 li$v0,1
 move $a0, $t4
 syscall

exit:
li $v0,10
syscall