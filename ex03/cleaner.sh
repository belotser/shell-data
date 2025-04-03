#!/bin/bash
head -n 1 ../ex02/hh_sorted.csv > hh_positions.csv
str_num=$(cat ../ex02/hh_sorted.csv | wc -l)
str_num=$((str_num - 1))

# -F - разделитель на входе
# OFS - переменная для разделителя на выходе
tail -n $str_num ../ex02/hh_sorted.csv | awk -F',' -v OFS=',' '{
 if (tolower($3) ~ /junior/) {$3="\"Junior\""}
 else if (tolower($3) ~ /middle/) {$3="\"Middle\""}
 else if (tolower($3) ~ /senior/) {$3="\"Senior\""}
 else {$3="\"-\""}
 } 1' >> hh_positions.csv