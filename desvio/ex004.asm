.text
.globl main
main:
    ori  $t0, $zero, 65     # temperatura = 65 (exemplo)

    li   $t1, 0             # flag = 0 por padrão

    # verifica 20 ≤ temp ≤ 40
    li   $t2, 20
    li   $t3, 40
    blt  $t0, $t2, check2
    bgt  $t0, $t3, check2
    li   $t1, 1
    j    fim

check2:
    # verifica 60 ≤ temp ≤ 80
    li   $t2, 60
    li   $t3, 80
    blt  $t0, $t2, fim
    bgt  $t0, $t3, fim
    li   $t1, 1

fim:
    li   $v0, 10
    syscall
