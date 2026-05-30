#!/bin/bash

#Инициализация переменных
inputfile=""
outputfile=""
pattern=""
ignore_case=""
show_numbers=""

#Анализ ключей командной строки
while getopts "i:o:p:Cn" opt; do
	case $opt in
	    i) inputfile="$OPTARG" ;;
	    o) outputfile="$OPTARG" ;;
	    p) pattern="$OPTARG" ;;
	    C) ignore_case="-i" ;;
	    n) show_numbers="-n" ;;
	    *) echo "Использование: $0 -i inputfile -o outputfile -p pattern [-C] [-n]"; exit 1 ;;
	esac
done 

#Проверка обязательных параметров 
if [[ -z "$inputfile" || -z "$pattern" ]]; then 
	echo "Ошибка: необходимо указать -i inputfile и -p pattern"
	exit 1
fi 

if [[ ! -f "$inputfile" ]]; then 
	echo "Ошибка: файл $inputfile не найден"
	exit 1 
fi

# Выполнение поиска с помощью grep 
if [[ -n "$outputfile" ]]; then 
	grep $ignore_case $show_numbers "$pattern" "$inputfile" > "$outputfile" 
	echo "Результат сохранен в "$outputfile"
else 
	grep $ignore_case $show_numbers "$pattern" "$inputfile" 
fi
