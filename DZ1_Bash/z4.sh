#!/bin/bash

greet() {
    local name="$1"
    echo "Hello, $name"
}

sum() {
    local num1="$1"
    local num2="$2"
    echo $((num1 + num2))
}

read -p "Введите имя: " name
greet "$name"

read -p "Введите число 1: " number1
read -p "Введите число 2: " number2
result=$(sum "$number1" "$number2")
echo "Сумма $number1 и $number2 равна: $result"
