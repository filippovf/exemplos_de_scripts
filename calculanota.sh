#!/bin/bash
#Script exemplo para um cálculo de média (ponderada) de notas
#versão 0.1 - sem tempo para montar IFs para validação de valores e aprovações...
clear
echo -e "\n🖖🏼!\n"
echo -e "Para a digitação das notas utilize '.' como separador decimal. Não deixe nota em branco. Digite zero se não houver feito a avaliação.\n"
read -p "Digite sua 1ª nota (peso 1). N1 = " N1
read -p "Digite sua 2ª nota (peso 1). N2 = " N2
read -p "Digite sua 3ª nota (peso 2). N3 = " N3
echo -e "\n\nSua nota final é calculada com (($N1+$N2+(2*$N3))/4) e é igual a \n"
echo -e "scale = 1; (($N1+$N2+(2*$N3))/4)" | bc
echo -e "\nSe a nota final for maior do que 6.0 você está aprovado(a)! Boas férias!\n"
echo -e "\nSe a nota final for igual ou menor a 5.9 você está de recuperação. Bom estudo!\n"
