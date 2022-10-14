#!/usr/bin/env bash

url=https://example.org/
output_file=output/ejercicio4

curl $url --create-dirs -so $output_file
grep -qiw $1 < $output_file

if [ $? -eq 1 ]; then
  echo "No se ha encontrado la palabra \"$1\""
  exit 1
fi

total_matches=$(grep -iwc $1 < $output_file)
first_line_number_match=$(grep -iwn $1 < $output_file | grep -Eo '^[[:digit:]]*' | head -1)

echo "La palabra \"$1\" aparece $total_matches veces"
echo "Aparece por primera vez en la línea $first_line_number_match"

