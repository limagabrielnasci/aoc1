# Faça um programa que calcule a seguinte equação:
# y = 3x² - 5x + 13
# Armazene x no registrador $t5 com a instrução addi $t5, $zero, x, substituindo x
# pelo valor desejado, e sempre que precisar o valor de x, utilize o valor armazenado no
# registrador $t5.
# Armazene o resultado y no registrador $t6.
# Faça teste com diferentes valores positivos e negativos de x

addi $t5, $zero, 2 # x = 2

addi $t1, $zero, 3
addi $t2, $zero, 5
addi $t3, $zero, 13

mul $t7, $t5, $t5 # t7 = x²
mul $t7, $t7, $t1 # t7 = 3x²
mul $t8, $t5, $t2 # t8 = 5x
sub $t6, $t7, $t8 # 3x² - 5x
add $t6, $t6, $t3 # y = 3x² - 5x + 13 



  