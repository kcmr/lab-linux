#!/usr/bin/env bash

if [ $# -ne 2 ]; then
  echo "Se necesitan dos parámetros para ejecutar este script"
  exit 1
fi

url=$1
word=$2
output_file=output/ejercicio5

curl $url --create-dirs -so $output_file
grep -qiw $word < $output_file

if [ $? -eq 1 ]; then
  echo "No se ha encontrado la palabra \"$word\""
  exit 1
fi

total_matches=$(grep -iwc $word < $output_file)
first_line_number_match=$(grep -iwn $word < $output_file | grep -Eo '^[[:digit:]]*' | head -1)

if [ $total_matches -eq 1 ]; then
  echo "La palabra \"$word\" aparece 1 vez"
  echo "Aparece únicamente en la línea $first_line_number_match"
else
  echo "La palabra \"$word\" aparece $total_matches veces"
  echo "Aparece por primera vez en la línea $first_line_number_match"
fi



