# Escreva um programa que calcule o valor de
# 4x - 2y + 3z (armazene os valores de x, y e z em $t1, $t2 e $t3,
# respectivamente) e coloque o resultado em $t7. Faça testes com alguns
# valores diferentes de x, y e z. Utilize apenas instruções já vistas na
# disciplina.


ori $t1, $zero, 2 # inicializa x com 10
ori $t2, $zero, 5 # inicializa y com 100
ori $t3, $zero, 3 # inicializa z com 1000

add $t5, $t1, $t1 # soma x com x
add $t5, $t5, $t5 # soma 2x com 2x

add $t6, $t2, $t2 # soma y com y

add $t7, $t3, $t3 # soma z com z
add $t7, $t7, $t3 # soma de 2z com z

add $t7, $t7, $t5 # soma de 2z com 4x

sub $t7, $t7, $t6 # 4x + 3x - 2y