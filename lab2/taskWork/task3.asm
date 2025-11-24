.data 
num : .asciiz "please enter number between 1 t0 3\n"
addn : .asciiz "You chose addition\n"
subn : .asciiz "You chose subtraction\n"
muln : .asciiz "You chose multiplication\n"
default : .asciiz "Invalid choice\n"


.text 
main:
 li $v0,4
 la $a0 , num
 syscall

 li $v0,5
 syscall
 move $t0, $v0

 beq $t0,1 ,addition 
 beq  $t0,2 , subtraction 
 beq  $t0 , 3 , multiplication
 j Invalid


addition:
li $v0,4
la $a0, addn
syscall
 j exit

subtraction:
li $v0,4
la $a0, subn
syscall
 j exit

multiplication:
li $v0,4
la $a0, muln
syscall
 j exit

Invalid:
li $v0,4
la $a0, default
syscall


exit:
li $v0,10
syscall