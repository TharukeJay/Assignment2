#!/bin/bash

declare -A matrix

echo "Enter no of records : "
read rec

echo "Enter no of lines : "
read line

echo ""


for ((i=0;i<$rec;i++)) do
    for ((j=0;j<$line;j++)) do
        matrix[$i,$j]=$((1 + RANDOM % 100))
    done
done


for ((i=0; i<$rec; i++))
do
    for ((j=0; j<$line; j++))
    do
        echo -ne "${matrix[${i},${j}]}\t"
    done
    echo
done > output.csv

cat output.csv
