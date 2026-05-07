# Exercício 1 - Volume do Paralepípedo 
# Volumo = comprimento * largura * altura

.data
	msg_comp: .asciiz "Comprimento: "
	msg_larg: .asciiz "Largura: "
	msg_alt: .asciiz "Altura: "
	msg_vol: .asciiz "Volume: "
	newline: .asciiz "\n"
	
.text 
.globl main
main: 

	# ---- Lê comprimento ---- 
	li $v0, 4 		#syscall 4 = print_string
	la $a0, msg_comp  	#carrega endereço do texto
	syscall
	li $v0, 5 		# syscall 5 = read_int
	syscall
	move $t0, $v0 		# $t0 = comprimento 
	
	# ---- Lê Largura ---
	li $v0, 4
	la $a0, msg_ larg 
	syscall
	li $v0, 5
	syscall
	move $t1, $v0		# $t1 = largura
	
	# ---- Lê altura ----
	li $v0, 4 
	la $a0, msg_alt
	syscall
	li $v0, 5
	syscall
	move $t2, $v0 		# $t2 = altura
		