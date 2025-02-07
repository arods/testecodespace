#!/bin/bash

# Verifica se o nome do arquivo ou pasta foi passado como argumento
if [ -z "$1" ]; then
  echo "Uso: $0 <nome_do_arquivo_ou_pasta>"
  exit 1
fi

# Nome do arquivo ou pasta a ser verificado
nome=$1

# Verifica se o arquivo ou pasta existe no diretório atual
if [ -e "$nome" ]; then
  echo "$nome encontrado no diretório atual."
else
  echo "$nome não encontrado no diretório atual."
  exit 1
fi

if [ -f "$nome" ]; then
  echo "$nome é um arquivo."
  exit 0
else
  echo "$nome não é um arquivo."
fi

if [ -d "$nome" ]; then
  echo "$nome é um diretório."
else
  echo "$nome não é um diretório."
fi