#!/bin/bash
#Prof. Filippo Valiante Filho - https://prof.valiante.info
#Calcula o fatorial do número fornecido como parâmetro
#Usando while

numero=$1
fatorial=1
while [ $numero -gt 1 ]
do
  fatorial=$(($fatorial*$numero))
  numero=$(($numero - 1))
done
echo "O fatorial de $1 é:"
echo -e "\n$fatorial\n"

