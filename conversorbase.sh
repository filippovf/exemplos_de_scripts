#!/bin/bash
#Programa para efetuar conversão entre sistemas de numeração
#Prof. Filippo Valiante Filho - https://prof.valiante.info
#Versão 2 - Maio/2025
clear

while true
do
	echo -e "\nEscolha uma base para digitar os números:"
	echo -e "\n\t 1 - Binário     (02)"
	echo -e "\n\t 2 - Octal       (08)"
	echo -e "\n\t 3 - Decimal     (10)"
	echo -e "\n\t 4 - Hexadecimal (16)"
	echo -e "\n\t 0 - Sair do script\n"

	#Faz a leitura da opção sem mostrar o que está sendo digitado
	#e limitado a 1 caractere sem precisar digitar Enter
	read -s -n1 opt

	#Estrutura do menu
	#Binários
	if [ $opt -eq 1 ]
	then
		read -p "Digite o valor na base binária: " valor
		echo -e "\n\n$valor binário corresponde a\n"
		#obase = base de saída = output
		#ibase = base de entrada = input
		echo -e "$(echo "obase=8; ibase=2; $valor" | bc) na base 8\n"
		echo -e "$(echo "obase=10; ibase=2; $valor" | bc) na base 10\n"
		echo -e "$(echo "obase=16; ibase=2; $valor" | bc) na base 16\n\n"

	#Octais
	elif [ $opt -eq 2 ]
	then
		read -p "Digite o valor na base octal: " valor
		echo -e "\n\n$valor octal corresponde a\n"
		#obase = base de saída = output
		#ibase = base de entrada = input
		echo -e "$(echo "obase=2; ibase=8; $valor" | bc) na base 2\n"
		echo -e "$(echo "obase=10; ibase=8; $valor" | bc) na base 10\n"
		echo -e "$(echo "obase=16; ibase=8; $valor" | bc) na base 16\n\n"

	#Decimais
	elif [ $opt -eq 3 ]
	then
		read -p "Digite o valor na base decimal: " valor
		echo -e "\n\n$valor decimal corresponde a\n"
		#obase = base de saída = output
		#ibase = base de entrada = input
		echo -e "$(echo "obase=2; ibase=10; $valor" | bc) na base 2\n"
		echo -e "$(echo "obase=8; ibase=10; $valor" | bc) na base 8\n"
		echo -e "$(echo "obase=16; ibase=10; $valor" | bc) na base 16\n\n"

	#Hexadecimais
	elif [ $opt -eq 4 ]
	then
		read -p "Digite o valor na base hexadecimal (use letras maiúsculas): " valor
		echo -e "\n\n$valor hexadecimal corresponde a\n"
		#obase = base de saída = output
		#ibase = base de entrada = input
		echo -e "$(echo "obase=2; ibase=16; $valor" | bc) na base 2\n"
		echo -e "$(echo "obase=8; ibase=16; $valor" | bc) na base 8\n"
		echo -e "$(echo "obase=10; ibase=16; $valor" | bc) na base 10\n"

	#Opção de saída do menu
	elif [ $opt -eq 0 ]
	then
	echo -e "\n\t 🖖🏼 \n"
	sleep 1
	  	exit
	
	#Opção inválida
	else
	 	echo -e "\n\tA opção $opt é inválida."
	fi
done
