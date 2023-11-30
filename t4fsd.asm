.text
    .globl main
main:
    #Zerar tudo
    xor	$t0,$t0,$t0	    # zera o $t0 que irá armazenar o endereço do vetor A
    xor	$t1,$t1,$t1    	# zera o $t1 que irá armazenar o endereço do vetor B
    xor	$t2,$t2,$t2	    # zera o $t2 que irá armazenar o endereço do C
    xor	$t3,$t3,$t3	    # zera o $t3 que irá armazenar o endereço do D
    xor	$t4,$t4,$t4     # zera o $t4 que irá armazenar variaveis 
    xor	$t5,$t5,$t5	    # zera o $t5 que irá armazenar variaveis
    xor	$t6,$t6,$t6 	# zera o $t6 que representará o i do for
    xor $t7,$t7,$t7     # zera o $t7 que irá armazenar o resultado da operação
    xor $t8,$t8,$t8
    la $t0,a            # $t0 recebe o endereço de A
    la $t1,b            # $t1 recebe o endereço de B
    la $t2,c            # $t2 recebe o endereço de c

soma:
    lw $t4,0($t0)       # $t4 recebe o valor de A
    lw $t5,0($t1)       # $t5 recebe o valor de B

    add $t7,$t4,$t5     # a+B
    sw $t7,0($t2)       # salva em c

    add $t6,$t6,1       #i++
    add $t0,$t0,4       #anda
    add $t1,$t1,4       #anda
    add $t2,$t2,4       #anda

    ble	$t6, 7, soma	# pula para a "soma"

    xor	$t0,$t0,$t0	    # zera o $t0 que irá armazenar o endereço do vetor A
    xor	$t1,$t1,$t1    	# zera o $t1 que irá armazenar o endereço do vetor B
    xor	$t2,$t2,$t2	    # zera o $t2 que irá armazenar o endereço do C
    xor	$t3,$t3,$t3	    # zera o $t3 que irá armazenar o endereço do D
    xor	$t4,$t4,$t4     # zera o $t4 que irá armazenar o variavel do A
    xor	$t5,$t5,$t5	    # zera o $t5 que irá armazenar o variavel do B
    xor	$t6,$t6,$t6 	# zera o $t6 que representará o i do for
    xor $t7,$t7,$t7     # zera o $t7 que irá armazenar o resultado da operação
    la $t0,a            # $t0 recebe o endereço de A
    la $t1,b            # $t1 recebe o endereço de B
    la $t3,d            # $t3 recebe o endereço de d

subtracao: 
    lw $t4,0($t0)       # $t4 recebe o valor de A
    lw $t5,0($t1)       # $t5 recebe o valor de B
    
    sub $t7,$t4,$t5     # a-B
    sw $t7,0($t3)       # salva em d

    add $t6,$t6,1       #i++
    add $t0,$t0,4       #anda
    add $t1,$t1,4       #anda
    add $t3,$t3,4       #anda

    ble	$t6, 7, subtracao	# pula para a "soma"

    xor	$t2,$t2,$t2	    # zera o $t2 que irá armazenar o endereço do C
    xor	$t3,$t3,$t3	    # zera o $t3 que irá armazenar o endereço do D
    xor	$t4,$t4,$t4     # zera o $t4 que irá armazenar a variavel do c
    xor	$t5,$t5,$t5	    # zera o $t5 que irá armazenar a variavel do d
    xor	$t6,$t6,$t6 	# zera o $t6 que representará o i do for
    xor $t7,$t7,$t7     # zera o $t7 que irá armazenar o resultado da operação
    la $t2,c            # $t2 recebe o endereço de c
    la $t3,d            # $t3 recebe o endereço de d
    
Somatorio:
    lw $t4,0($t2)       # $t4 recebe o valor de c
    lw $t5,0($t3)       # $t5 recebe o valor de d

    add $t7, $t7, $t4   # soma somatório + c 
    add $t7, $t7, $t5   # soma somatório + d
    add $t8,$t7,0       # salva em soma

    add $t6,$t6,1       #i++
    add $t2,$t2,4       #anda
    add $t3,$t3,4       #anda

    ble	$t6, 7, Somatorio	# pula para a "soma"

    xor	$t2,$t2,$t2	    # zera o $t2 que irá armazenar o endereço do C
    xor	$t4,$t4,$t4     # zera o $t4 que irá armazenar o variavel do c
    xor	$t6,$t6,$t6 	# zera o $t6 que representará o i do for
    xor $t7,$t7,$t7     # zera o $t7 que irá armazenar o maior
    la $t2,c            # $t2 recebe o endereço de c

MaiorC:
    lw $t4,0($t2)       # $t4 recebe o valor de c
    ble	$t4, $t7, AndaC # pula para o anda
    add $t7,$t4,0       #atualiza maior

AndaC:
    add $t2,$t2,4       #anda
    add $t6,$t6,1       #i++
    ble	$t6, 7, MaiorC	# pula para o maiorC

    xor	$t3,$t3,$t3	    # zera o $t3 que irá armazenar o endereço do D
    xor	$t5,$t5,$t5	    # zera o $t5 que irá armazenar o variavel do d
    xor	$t6,$t6,$t6 	# zera o $t6 que representará o i do for
    la $t3,d            # $t3 recebe o endereço de d

MaiorD:
    lw $t5,0($t3)       # $t5 recebe o valor de c

    ble	$t5, $t7, AndaD	# pula para o anda
    
    add $t7,$t5,0       #atualiza maior

AndaD:
    add $t3,$t3,4       #anda
    add $t6,$t6,1       #i++
    ble	$t6, 7, MaiorD	# pula para o maiorD

    xor	$t0,$t0,$t0	    # zera o $t0 que irá armazenar a acumulação de somas
    xor	$t1,$t1,$t1	    # zera o $t1 que receberá o endereço de sm
    xor	$t4,$t4,$t4	    # zera o $t4 que receberá a quantidade de vezes que será somado
    la $t1,sm

Atribuicao:
    add $t4,$t7,0        #vezes pega o maior número

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
