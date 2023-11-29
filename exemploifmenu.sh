#!/bin/bash

echo -e "\nExemplo de script de menu..."

while true
do

echo -e "\nEscolha uma opção de 1 a 3, ou 0 para sair...\n"
#Faz a leitura da opção sem mostrar o que está sendo digitado
#e limitado a 1 caractere sem precisar digitar Enter
read -s -n1 -p "Digite uma opção: " opt

	#Estrutura do menu
	if [ $opt -eq 1 ]
	then
		echo -e "\n\nVocê selecionou a opção 1 e seu script poderia inserir outras coisas aqui.\n"
	elif [ $opt -eq 2 ]
	then
	 	echo -e "\n\nVocê selecionou a opção 2 e seu script poderia inserir outras coisas aqui.\n"
	elif [ $opt -eq 3 ]
	then
	 	echo -e "\n\nVocê selecionou a opção 3 e seu script poderia inserir outras coisas aqui.\n"
	#Opção de saída do menu
	elif [ $opt -eq 0 ]
	then
		echo -e "\n\nAlém deste modelo verifique os comandos case, select e for. Além da possibilidade de montar uma funções usando função(){ código }"
		echo -e "\n\nVocê escolheu sair, que é a opção $opt."
		#zera a variável
		unset opt 
		echo -e "\nA variável $opt foi zerada e seu script será encerrado. 🖖🏼\n"
	 	sleep 3
	  	exit
	else
	  echo -e "\n\nA opção $opt é inválida."
	fi

	#Mensagem de finalização
	echo -e "\n\t🖖🏼Voltando ao menu...\n\n"
	#unset opt
	sleep 3
done
