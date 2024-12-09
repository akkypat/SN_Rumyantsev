#!/bin/bash

read -p "Введите число: " number

if (( $(echo "$number > 0" | bc -l) )); then
    echo "Число > 0."
    
    count=1
    while (( count <= number )); do
        echo $count
        ((count++))
    done

elif (( $(echo "$number < 0" | bc -l) )); then
    echo "Число < 0."
else
    echo "Число = 0."
fi
