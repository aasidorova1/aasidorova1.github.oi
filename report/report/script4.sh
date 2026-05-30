#!/bin/bash
 
if [[ $# -ne 2 ]]; then
    echo "Использование: $0 [create|remove] N"
    echo "  create N — создать файлы 1.tmp .. N.tmp"
    echo "  remove N — удалить файлы 1.tmp .. N.tmp"
    exit 1
fi
 
action=$1
count=$2
 
if ! [[ "$count" =~ ^[0-9]+$ ]]; then
    echo "Ошибка: N должно быть числом"
    exit 1
fi
 
case $action in
    create)
        for ((i=1; i<=count; i++)); do
            touch "$i.tmp"
            echo "Создан $i.tmp"
        done
        ;;
    remove)
        for ((i=1; i<=count; i++)); do
            if [[ -f "$i.tmp" ]]; then
                rm "$i.tmp"
                echo "Удалён $i.tmp"
            fi
        done
        ;;
    *)
        echo "Неизвестное действие: $action"
        exit 1
        ;;
esac
