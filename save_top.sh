#!/bin/bash

OUTPUT_FILE="top_report.txt"

echo " Створюю знімок процесів у $OUTPUT_FILE..."
top -b -n 1 > $OUTPUT_FILE

n=${1:-5}

echo " Обрізаю файл, залишаючи перші $n рядків..."

sed -i "${n}q" $OUTPUT_FILE

echo " Готово. Вміст файлу $OUTPUT_FILE:"
echo "-----------------------------------"
cat $OUTPUT_FILE
echo "-----------------------------------"


