#!/bin/bash

set -m 

sleep 15 &
pid1=$!
echo "Процесс sleep 15 с PID: $pid1"

sleep 20 &
pid2=$!
echo "Процесс sleep 20 с PID: $pid2"

sleep 25 &
pid3=$!
echo "процесс sleep 25 с PID: $pid3"

echo -e "Фоновые задачи:"
jobs

read -p "Enter, чтобы продолжить и вернуть одну из задач на передний план..."

fg %1

echo -e "Список фоновых задач после fg:"
jobs

read -p "Enter, чтобы перевести вторую задачу (sleep 20) в фон"

bg %2

echo -e "Список фоновых задач после bg:"
jobs

echo "Скрипт завершен."
