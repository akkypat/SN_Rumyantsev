#!/bin/bash

if [[ ! -f input.txt ]]; then
    echo "Файл не найден."
    exit 1
fi

wc -l < input.txt > output.txt

ls nonexistent_file.txt 2> error.log

echo "Результат в output.txt."
echo "Ошибки записаны в error.log."
