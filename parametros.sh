#!/bin/bash
#Elaborado por Prof. Filippo Valiante Filho - https://prof.valiante.info

clear

echo 'Olá '$USER'. Você forneceu os parâmetros '$1', '$2' e '$3' para o script de nome '$0' e que está executando com o PID '$$' e recebeu '$#' parâmetros (argumentos) no total.'
# note o significado de $0, $1, $2, $3 e $$ e $#.

echo -e "\nAgora analise o código do script:\n"

cat $0

