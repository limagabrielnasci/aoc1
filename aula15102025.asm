.data
a: .word 3
b: .word 5
y: .space 4

.text
.globl main
main:
    lw $t0, a
    lw $t1, b

    mul $t2, $t0, $t1
    sll $t2, $t2, 5          # 32 * a * b

    mul $t3, $t0, 3          # 3a
    sub $t2, $t2, $t3        # 32ab - 3a

    mul $t4, $t1, 7          # 7b
    add $t2, $t2, $t4        # 32ab - 3a + 7b

    addi $t2, $t2, -13       # 32ab - 3a + 7b - 13

    sw $t2, y