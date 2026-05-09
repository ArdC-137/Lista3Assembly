# Exercicio 2 - Raio da Circunferência e o calculo do comprimento
# C = 2 * PI * r (PI = 3, inteiro) 

.data
	msg_raio .asciiz "Raio da circunferência: "
	msg_res: .asciiz "Comprimento da circunferencia: "
	newline: .asciiz "\n"

.text
.globl main
main: 
	# Lê o raio 
	li $v0, 4 
	la $a0, msg_raio 
	syscall
	li $v0, 5
	syscall
	move $t0, $v0		# $t0 = raio
	
	# Calcula C = 2 * 3 * r 
	li $t1, 6		# 2 * PI = 2 * 3 = 6 
	mul $t2, $t1, $t0	# $t2 = 6 * raio
	
	# Exibe resultado
	li $v0, 4 
	la $a0, msg_res
	syscall
	li $v0, 1 
	move $a0, $t2
	syscall
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 10
	syscall
	
	