#!/bin/bash
 
if [[ $# -ne 2 ]]; then
    echo "Использование: $0 <директория> <архив.tar>"
    exit 1
fi
 
dir=$1
archive=$2
 
if [[ ! -d "$dir" ]]; then
    echo "Ошибка: директория $dir не существует"
    exit 1
fi
 
# Находим файлы, изменённые менее 7 дней назад
find "$dir" -type f -mtime -7 -print | tar -cf "$archive" -T -
 
echo "Архив $archive создан из файлов, изменённых за последнюю неделю в $dir"
