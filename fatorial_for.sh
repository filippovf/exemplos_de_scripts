#!/bin/bash
#Prof. Filippo Valiante Filho - https://prof.valiante.info
#Calcula o fatorial do número fornecido como parâmetro
#Usando for

fatorial=1
for i in $(seq $1)
do
	fatorial=$(($i * $fatorial))
done
echo "O fatorial de $1 é:"
echo -e "\n$fatorial\n"
