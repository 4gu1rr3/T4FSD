.text
    .globl main
main:
    #Zerar tudo
    xor	$t0,$t0,$t0	    # zera o $t0 que ir� armazenar o endereco do vetor A
    xor	$t1,$t1,$t1    	# zera o $t1 que ir� armazenar o endereco do vetor B
    xor	$t2,$t2,$t2	    # zera o $t2 que ir� armazenar o endereco do C
    xor	$t3,$t3,$t3	    # zera o $t3 que ir� armazenar o endereco do D
    xor	$t4,$t4,$t4     # zera o $t4 que ir� armazenar variaveis 
    xor	$t5,$t5,$t5	    # zera o $t5 que ir� armazenar variaveis
    xor	$t6,$t6,$t6 	# zera o $t6 que representar� o i do "for"
    xor $t7,$t7,$t7     # zera o $t7 que ir� armazenar os resultados
    xor $s0,$s0,$s0     # zera o $s0 que ir� armazenar a soma do somat�rio
    la $t0,a            # $t0 recebe o endereco de A
    la $t1,b            # $t1 recebe o endereco de B
    la $t2,c            # $t2 recebe o endereco de C

soma:
    lw $t4,0($t0)       # $t4 recebe o valor de A[i]
    lw $t5,0($t1)       # $t5 recebe o valor de B[i]

    add $t7,$t4,$t5	    # $t7 recebe $t4+$t5(A[i]+B[i])
    sw $t7,0($t2)       # salva $t7 em C[i]

    addi $t6,$t6,1      # Soma 1 ao $t6 (i++)
    addi $t0,$t0,4      # anda para o pr�ximo elemento em $t0
    addi $t1,$t1,4      # anda para o pr�ximo elemento em $t1
    addi $t2,$t2,4      # anda para o pr�ximo elemento em $t2

    ble	$t6, 7, soma	# volta para a "soma" enquanto $t6 <= 7

    xor	$t0,$t0,$t0	    # zera o $t0 que ir� armazenar o endereco de A
    xor	$t1,$t1,$t1    	# zera o $t1 que ir� armazenar o endereco de B
    xor	$t2,$t2,$t2	    # zera o $t2 que ir� armazenar o endereco do C
    xor	$t3,$t3,$t3	    # zera o $t3 que ir� armazenar o endereco do D
    xor	$t4,$t4,$t4	    # zera o $t4 que ir� armazenar o variavel do A
    xor	$t5,$t5,$t5	    # zera o $t5 que ir� armazenar o variavel do B
    xor	$t6,$t6,$t6 	# zera o $t6 que representar� o i do "for"
    xor $t7,$t7,$t7     # zera o $t7 que ir� armazenar o resultado da operacao
    la $t0,a            # $t0 recebe o endereco de A
    la $t1,b            # $t1 recebe o endereco de B
    la $t3,d            # $t3 recebe o endereco de D

subtracao: 
    lw $t4,0($t0)       # $t4 recebe o valor de A[i]
    lw $t5,0($t1)       # $t5 recebe o valor de B[i]
    
    sub $t7,$t4,$t5     # $t7 recebe $t4-$t5 (A[i]-B[i])
    sw $t7,0($t3)       # salva $t7 em $t3(D[i])

    add $t6,$t6,1       # Soma 1 ao $t6 (i++)
    add $t0,$t0,4       # anda para o pr�ximo elemento em $t0
    add $t1,$t1,4       # anda para o pr�ximo elemento em $t1
    add $t3,$t3,4       # anda para o pr�ximo elemento em $t3

    ble	$t6, 7, subtracao	# volta para a "subtracao" enquanto $t6 <= 7

    xor	$t2,$t2,$t2	    # zera o $t2 que ir� armazenar o endereco do C
    xor	$t3,$t3,$t3	    # zera o $t3 que ir� armazenar o endereco do D
    xor	$t4,$t4,$t4	    # zera o $t4 que ir� armazenar a variavel do C
    xor	$t5,$t5,$t5	    # zera o $t5 que ir� armazenar a variavel do D
    xor	$t6,$t6,$t6 	# zera o $t6 que representar� o i do "for"
    xor $t7,$t7,$t7     # zera o $t7 que ir� armazenar o resultado da operacao
    la $t2,c            # $t2 recebe o endereco de C
    la $t3,d            # $t3 recebe o endereco de D
    
Somatorio:
    lw $t4,0($t2)       # $t4 recebe o valor de C[i]
    lw $t5,0($t3)       # $t5 recebe o valor de D[i]

    add $t7, $t7, $t4   # $t7 recebe $t7+$t4 ($t7+=C[i])
    add $t7, $t7, $t5   # $t7 recebe $t7+$t5 ($t7+=D[i])
    add $s0,$t7,0       # $s0 recebe $t7+0 (soma = $t7)

    add $t6,$t6,1       # Soma 1 ao $t6 (i++)
    add $t2,$t2,4       # anda para o pr�ximo elemento em $t2
    add $t3,$t3,4       # anda para o pr�ximo elemento em $t3

    ble	$t6, 7, Somatorio	# volta para a "Somatorio" enquanto $t6 <= 7

    xor	$t2,$t2,$t2	    # zera o $t2 que irá armazenar o endereço do C
    xor	$t4,$t4,$t4     # zera o $t4 que irá armazenar o variavel do C
    xor	$t6,$t6,$t6 	# zera o $t6 que representará o i do "for"
    xor $t7,$t7,$t7     # zera o $t7 que irá armazenar o maior
    la $t2,c            # $t2 recebe o endereço de C

MaiorC:
    lw $t4,0($t2)        # $t4 recebe o valor de C[i]
    ble	$t4, $t7, AndaC  # vai para a "AndaC" enquanto $t4 <= $t7 (C[i] <= maior)
    add $t7,$t4,0        # atualiza $t7 (maior = $t4)

AndaC:
    add $t2,$t2,4        # anda para o pr�ximo elemento em $t2
    add $t6,$t6,1        # Soma 1 ao $t6 (i++)
    ble	$t6, 7, MaiorC	 # volta para a "MaiorC" enquanto $t6 <= 7

    xor	$t3,$t3,$t3	     # zera o $t3 que irá armazenar o endereço do D
    xor	$t5,$t5,$t5	     # zera o $t5 que irá armazenar o variavel do D
    xor	$t6,$t6,$t6 	 # zera o $t6 que representará o i do "for"
    la $t3,d             # $t3 recebe o endereço de D

MaiorD:
    lw $t5,0($t3)        # $t5 recebe o valor de D[i]

    ble	$t5, $t7, AndaD	 # vai para a "AndaD" enquanto $t5 <= $t7 (D[i] <= maior)
    
    add $t7,$t5,0        # atualiza $t7 (maior = $t5)

AndaD:
    add $t3,$t3,4        # anda para o pr�ximo elemento em $t3
    add $t6,$t6,1        # Soma 1 ao $t6 (i++)
    ble	$t6, 7, MaiorD	 # volta para a "MaiorD" enquanto $t6 <= 7

    xor	$t0,$t0,$t0	     # zera o $t0 que irá armazenar a acumulação de somas
    xor	$t1,$t1,$t1	     # zera o $t1 que receberá o endereço de SM
    xor	$t4,$t4,$t4	     # zera o $t4 que receberá a quantidade de vezes que será somado
    la $t1,sm            # $t1 recebe o endereço de SM

Atribuicao:
    add $t4,$t7,0        # $t4 recebe $t7+0 (fator = maior)

Negativo:
    blt $zero,$t4,Multiplicacao   # Quando $t4 for maior que 0 vai para Multiplicacao
    sub $t4,$zero,$t4             # $t4 recebe 0-$t4 (troca o sinal de $t4)

Multiplicacao:
    add $t0,$t0,$s0               # $t0 recebe $t0+$s0 (acumulador += soma) 
    sub $t4,$t4,1                 # $t4 recebe $t4-1 (i--)
    blt $zero,$t4,Multiplicacao   # Quando $t4 for maior que 0 vai para Multiplicacao
    blt $zero,$t7,Resultado       # Quando $t7 for maior que 0 vai para Resultado
    sub $t4,$zero,$t4             # $t4 recebe 0-$t4 (muda o sinal da multiplicacao caso $t7 for negativo)

Resultado:
    sw $t0,0($t1)         # $t1 recebe o endereco do valor em $t0
    lw $t1,0($t1)         # $t1 recebe o valor no endereco em $t1 (SM = soma * maior)
    
.data
    sm: 0                          #Variavel SM
    a: .word 1 -2 3 -4 5 6 -7 8    #Vetor A
    b: .word 9 1 2 -3 4 -5 10 11   #Vetor B
    c: .word 0 0 0 0 0 0 0 0      #Vetor C
    d: .word 0 0 0 0 0 0 0 0     #Vetor D
