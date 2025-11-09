#Faça um programa que calcule a seguinte equação:
#y = 9x + 7 / 2x + 8
# Armazene x em $t1, com a instrução addi $t1, $zero, x, substituindo x pelo valor
# desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
# registrador $t1.
# Armazene o quociente da divisão em $t2 e o resto em $t3.
# Responda o que acontece quando x = -4.

addi $t1, $zero, -4 # x = -4
addi $t4, $zero, 9
addi $t5, $zero, 7
addi $t6, $zero, 2
addi $t7, $zero, 8

mul $t8, $t4, $t1 # 9x
add $t8, $t8, $t5 # 9x + 7

mul $t9, $t6, $t1 # 2x
add $t9, $t9, $t7 # 2x + 8

div $t8, $t9 # 9x + 7 / 2x + 8
mflo $t2 # quociente em t2
mfhi $t3 # resto em t3