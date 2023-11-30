.text
    .globl main
main:
    #Zerar tudo
    xor	$t0,$t0,$t0	    # zera o $t0 que irá armazenar o endereco do vetor A
    xor	$t1,$t1,$t1    	    # zera o $t1 que irá armazenar o endereco do vetor B
    xor	$t2,$t2,$t2	    # zera o $t2 que irá armazenar o endereco do C
    xor	$t3,$t3,$t3	    # zera o $t3 que irá armazenar o endereco do D
    xor	$t4,$t4,$t4        # zera o $t4 que irá armazenar variaveis 
    xor	$t5,$t5,$t5	    # zera o $t5 que irá armazenar variaveis
    xor	$t6,$t6,$t6 	    # zera o $t6 que representará o i do "for"
    xor $t7,$t7,$t7        # zera o $t7 que irá armazenar os resultados
    xor $t8,$t8,$t8        # zera o $t8 que irá armazenar a soma do somatório
    la $t0,a               # $t0 recebe o endereco de A
    la $t1,b               # $t1 recebe o endereco de B
    la $t2,c               # $t2 recebe o endereco de C

soma:
    lw $t4,0($t0)       # $t4 recebe o valor de A[i]
    lw $t5,0($t1)       # $t5 recebe o valor de B[i]

    add $t7,$t4,$t5	 # $t7 recebe $t4+$t5(A[i]+B[i])
    sw $t7,0($t2)       # salva $t7 em C[i]

    addi $t6,$t6,1       # Soma 1 ao $t6 (i++)
    addi $t0,$t0,4       # anda para o próximo elemento em $t0
    addi $t1,$t1,4       # anda para o próximo elemento em $t1
    addi $t2,$t2,4       # anda para o próximo elemento em $t2

    ble	$t6, 7, soma	# volta para a "soma" enquanto $t6 <= 7

    xor	$t0,$t0,$t0	# zera o $t0 que irá armazenar o endereco de A
    xor	$t1,$t1,$t1    	# zera o $t1 que irá armazenar o endereco de B
    xor	$t2,$t2,$t2	# zera o $t2 que irá armazenar o endereco do C
    xor	$t3,$t3,$t3	# zera o $t3 que irá armazenar o endereco do D
    xor	$t4,$t4,$t4	# zera o $t4 que irá armazenar o variavel do A
    xor	$t5,$t5,$t5	# zera o $t5 que irá armazenar o variavel do B
    xor	$t6,$t6,$t6 	# zera o $t6 que representará o i do "for"
    xor $t7,$t7,$t7    # zera o $t7 que irá armazenar o resultado da operacao
    la $t0,a           # $t0 recebe o endereco de A
    la $t1,b           # $t1 recebe o endereco de B
    la $t3,d           # $t3 recebe o endereco de D

subtracao: 
    lw $t4,0($t0)       # $t4 recebe o valor de A[i]
    lw $t5,0($t1)       # $t5 recebe o valor de B[i]
    
    sub $t7,$t4,$t5     # $t7 recebe $t4-$t5 (A[i]-B[i])
    sw $t7,0($t3)       # salva $t7 em $t3(D[i])

    add $t6,$t6,1       # Soma 1 ao $t6 (i++)
    add $t0,$t0,4       # anda para o próximo elemento em $t0
    add $t1,$t1,4       # anda para o próximo elemento em $t1
    add $t3,$t3,4       # anda para o próximo elemento em $t3

    ble	$t6, 7, subtracao	# volta para a "subtracao" enquanto $t6 <= 7

    xor	$t2,$t2,$t2	    # zera o $t2 que irá armazenar o endereco do C
    xor	$t3,$t3,$t3	    # zera o $t3 que irá armazenar o endereco do D
    xor	$t4,$t4,$t4	    # zera o $t4 que irá armazenar a variavel do C
    xor	$t5,$t5,$t5	    # zera o $t5 que irá armazenar a variavel do D
    xor	$t6,$t6,$t6 	    # zera o $t6 que representará o i do "for"
    xor $t7,$t7,$t7        # zera o $t7 que irá armazenar o resultado da operacao
    la $t2,c               # $t2 recebe o endereco de C
    la $t3,d               # $t3 recebe o endereco de D
    
Somatorio:
    lw $t4,0($t2)       # $t4 recebe o valor de C[i]
    lw $t5,0($t3)       # $t5 recebe o valor de D[i]

    add $t7, $t7, $t4   # $t7 recebe $t7+$t4 ($t7+=C[i])
    add $t7, $t7, $t5   # $t7 recebe $t7+$t5 ($t7+=D[i])
    add $t8,$t7,0       # $t8 recebe $t7+0 (soma = $t7)

    add $t6,$t6,1       # Soma 1 ao $t6 (i++)
    add $t2,$t2,4       # anda para o próximo elemento em $t2
    add $t3,$t3,4       # anda para o próximo elemento em $t3

    ble	$t6, 7, Somatorio	# volta para a "Somatorio" enquanto $t6 <= 7

    xor	$t2,$t2,$t2	 # zera o $t2 que irÃ¡ armazenar o endereÃ§o do C
    xor	$t4,$t4,$t4     # zera o $t4 que irÃ¡ armazenar o variavel do c
    xor	$t6,$t6,$t6 	 # zera o $t6 que representarÃ¡ o i do for
    xor $t7,$t7,$t7     # zera o $t7 que irÃ¡ armazenar o maior
    la $t2,c            # $t2 recebe o endereÃ§o de c

MaiorC:
    lw $t4,0($t2)       # $t4 recebe o valor de c
    ble	$t4, $t7, AndaC # pula para o anda
    add $t7,$t4,0       #atualiza maior

AndaC:
    add $t2,$t2,4       #anda
    add $t6,$t6,1       #i++
    ble	$t6, 7, MaiorC	# pula para o maiorC

    xor	$t3,$t3,$t3	    # zera o $t3 que irÃ¡ armazenar o endereÃ§o do D
    xor	$t5,$t5,$t5	    # zera o $t5 que irÃ¡ armazenar o variavel do d
    xor	$t6,$t6,$t6 	# zera o $t6 que representarÃ¡ o i do for
    la $t3,d            # $t3 recebe o endereÃ§o de d

MaiorD:
    lw $t5,0($t3)       # $t5 recebe o valor de c

    ble	$t5, $t7, AndaD	# pula para o anda
    
    add $t7,$t5,0       #atualiza maior

AndaD:
    add $t3,$t3,4       #anda
    add $t6,$t6,1       #i++
    ble	$t6, 7, MaiorD	# pula para o maiorD

    xor	$t0,$t0,$t0	    # zera o $t0 que irÃ¡ armazenar a acumulaÃ§Ã£o de somas
    xor	$t1,$t1,$t1	    # zera o $t1 que receberÃ¡ o endereÃ§o de sm
    xor	$t4,$t4,$t4	    # zera o $t4 que receberÃ¡ a quantidade de vezes que serÃ¡ somado
    la $t1,sm

Atribuicao:
    add $t4,$t7,0        #vezes pega o maior nÃºmero

Negativo:
    blt $zero,$t4,Multiplicacao
    sub $t4,$zero,$t4

Multiplicacao:
    add $t0,$t0,$t8
    sub $t4,$t4,1
    blt $zero,$t4,Multiplicacao
    blt $zero,$t7,Resultado
    sub $t4,$zero,$t4

Resultado:
    sw $t0,0($t1)
    lw $t1,0($t1)
    
.data
    a: .word 1 -2 3 -4 5 6 -7 8    #Vetor a
    b: .word 9 1 2 -3 4 -5 10 11   #Vetor b
    c: .word 0 0 0 0 0 0 0 0 0     #Vetor c
    d: .word 0 0 0 0 0 0 0 0 0     #Vetor d
    sm: 0                          #Variavel sm
    maior: 0                       #Variavel maior
