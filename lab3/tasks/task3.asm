.data
A:  .word 4
B:  .word 6

.text

# ===========================
# Function: compute(a, b)
# returns (a + b) * 2
# ===========================
compute:
    addi $sp , $sp,-8
    sw $ra, 4($sp)
    sw $s0, 0($sp)

    add  $s0, $a0, $a1      # s0 = a + b
    sll  $v0, $s0, 1        # v0 = s0 * 2

   
   lw $s0, 0($sp)
   lw $ra, 4($sp)
   addi $sp, $sp , 8

    jr   $ra


# ===========================
# main function (caller)
# ===========================
main:
    lw   $t0, A
    lw   $t1, B
    li   $s0, 99

    addi $sp , $sp,-12
    sw $ra, 8($sp)
    sw $t1, 4($sp)
     sw $t0, 0($sp)

    


    move $a0, $t0
    move $a1, $t1
    jal  compute

    move $t3, $v0
    
    lw $ra, 8($sp)
    lw $t1, 4($sp)
    lw $t0, 0($sp)
   addi $sp, $sp , 12

    jr $ra
