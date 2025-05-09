#!/bin/bash
#Elaborado por Prof. Filippo Valiante Filho - https://prof.valiante.info

clear

if [ -z "$1" ] 	# -z retorna verdadeiro se a string tiver comprimento 0.
				# também poderia ser "if [ $# -eq 0 ]"
then
	echo -e "\nNão foi fornecido nenhum parâmetro.\n"
	echo -e "Use: ./parametros2.sh opção1 opção2 opção3\n"
	exit 0	#sai do script
else
	echo 'Olá '$USER'. Você forneceu os parâmetros '$1', '$2' e '$3' para o script de nome '$0' e que está executando com o PID '$$' e recebeu '$#' parâmetros (argumentos) no total.'
    # note o significado de $0, $1, $2 e $3
fi # if ao contrário encerra o if...

echo -e "\nAgora analise o código do script:\n"

cat $0
