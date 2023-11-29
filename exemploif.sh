#!/bin/bash

echo -e "\nExemplo de script de menu..."
echo -e "\nEscolha uma opção de 1 a 3...\n"

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
else
  echo -e "\n\nA opção $opt é inválida."
fi

#Mensagem de finalização
echo -e "\n\t🖖🏼\n\n"

