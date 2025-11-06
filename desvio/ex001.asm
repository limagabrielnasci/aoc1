.data
a: .half 30
b: .half 5
y: .space 4

.text
.globl main
main:
    la   $t0, a          # endereço de a
    la   $t1, b          # endereço de b
    lh   $t2, 0($t0)     # $t2 = a
    lh   $t3, 0($t1)     # $t3 = b

    beq  $t2, $t3, iguais  # se a == b → pula p/ multiplicação

    # divisão (a / b)
    div  $t2, $t3
    mflo $t4               # $t4 = resultado (quociente)
    j    fim

iguais:
    mul  $t4, $t2, $t3     # $t4 = a * b

fim:
    li   $t5, 0x10010004   # endereço fixo de y
    sw   $t4, 0($t5)       # salva resultado (word)

    li   $v0, 10
    syscall
