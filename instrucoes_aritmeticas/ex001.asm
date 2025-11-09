# Faça um programa que some os números decimais 326, -211, 311 e -684
# e escreva o resultado no registrador $t0.

ori $t1, $zero, 326
addi $t2, $zero, -211
ori $t3, $zero, 311
addi $t4, $zero, -684

add $t0, $t1, $t2 # 326 + (-211)
add $t0, $t0, $t3 # 115 + 311
add $t0, $t0, $t4 # 426 + (-684)