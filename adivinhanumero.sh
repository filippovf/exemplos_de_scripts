#!/bin/bash
#Script de um jogo de adivinhação de números
#Elaborado por Prof. Filippo Valiante Filho
#Versão 1 - Abril de 2025
clear
numero=$RANDOM  # Gera um número aleatório de 0 a 32767.
# para gerar um número de 1 a 100 você pode usar numero=$(($RANDOM %100 + 1))
# para gerar um número de 0 a 99 você pode usar numero=$(($RANDOM %100))
tentativa=1     # Inicializa a variável da contagem de tentativas
echo "Eu pensei em um número de 0 a 32767. Será que você consegue adivinhá-lo em 15 tentativas?"
# O laço do tipo while serve para limitar a quantidade de vezes que se poderá tentar acertar o número
# -le é menor ou igual - lower or equal (<=)
while [ $tentativa -le 15 ]
do
        read -p "Digite seu palpite nº $tentativa: " palpite
        tentativa=$(($tentativa + 1)) #incrementa a contagem de tentativas
		# O if avalia se o palpite foi igual ao número
		# depois cada elif avalia se ficou abaixo ou acima
		if [ $palpite -eq $numero ] # -eq é igual - equal (=)
        then
				# O parâmetro -e no echo permite usar caracteres de controle 
				# como \n para nova linha e \t para tabulação
                echo -e "\n\tParabéns, você acertou!:)\n"
                exit  # Encerra o script.
        elif [ $palpite -lt $numero ] # -lt é menor - lower than (<)
        then
                echo "Seu palpite está abaixo do meu número."
        elif [ $palpite -gt $numero ] # -eq é maior - greater (>)
        then
                echo "Seu palpite está acima do meu número."
        else	# O else executa se nenhuma condição anterior for satisfeita.
		# Provavelmente com a digitação de letras ou outros caracteres
                clear
                echo "Houve algum erro. Talvez você não tenha inserido apenas números. Execute o script novamente."
                exit # Encerra o script.
        fi
done
echo "Você não acertou!:("
echo "O número era $numero."
