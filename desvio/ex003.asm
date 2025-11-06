.data
x: .word 7
y: .space 4

.text
.globl main
main:
    la   $t0, x           # endereço de x
    lw   $t1, 0($t0)      # $t1 = x
    li   $t2, 1           # f1 = 1
    li   $t3, 1           # f2 = 1

    ble  $t1, 2, base     # se x <= 2 → resultado = 1

    li   $t4, 3           # contador = 3
loop:
    add  $t5, $t2, $t3    # f3 = f1 + f2
    move $t2, $t3         # f1 = f2
    move $t3, $t5         # f2 = f3
    addi $t4, $t4, 1      # contador++
    ble  $t4, $t1, loop   # até contador <= x

    move $t6, $t3         # resultado = f2
    j    fim

base:
    li   $t6, 1           # resultado = 1

fim:
    li   $t7, 0x10010004  # endereço de y
    sw   $t6, 0($t7)      # salva resultado

    li   $v0, 10
    syscall
