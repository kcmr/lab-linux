#!/usr/bin/env bash

url=https://example.org/
word=$1
output_file=output/ejercicio4

if [ $? -eq 1 ]; then
  echo "No se ha encontrado la palabra \"$word\""
  exit 1
fi

curl $url --create-dirs -so $output_file
grep -qiw $word < $output_file

total_matches=$(grep -iwc $word < $output_file)
first_line_number_match=$(grep -iwn $word < $output_file | grep -Eo '^[[:digit:]]*' | head -1)

echo "La palabra \"$word\" aparece $total_matches veces"
echo "Aparece por primera vez en la línea $first_line_number_match"

