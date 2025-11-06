.data
	n: .word 10
	v: .word 2
	a1: .word 6
	a2: .word -2
	a3: .word -1
	a4: .word 1
	a5: .word 100
	a6: .word 32
	a7: .word 5
	a8: .word 2
	a9: .word -20
	a10: .word 3
	
	n: .word 5
	v: .word -3
	a1: .word 7
	a2: .word 2
	a3: .word -10
	a4: .word 1
	a5: .word -12
	
.text
.globl main
main:
	lw $t0, n
	lw $t1, v
	ori $t8, $t0, 0 # contador = 0
Loop:
	beq $t0, $zero, fim # fim se n == 0
	lw $t3, 0($t2) # le o valor atual
	addi $t8
	