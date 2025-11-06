.data
y: .space 4

.text
.globl main
main:
    li   $t0, 1           # i = 1
    li   $t1, 0           # soma = 0

loop:
    add  $t1, $t1, $t0    # soma += i
    addi $t0, $t0, 1      # i++
    ble  $t0, 333, loop   # enquanto i <= 333

    li   $t2, 0x10010000  # endereço de y
    sw   $t1, 0($t2)      # salva soma em y

    li   $v0, 10
    syscall
