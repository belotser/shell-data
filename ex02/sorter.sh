#!/bin/bash
head -n 1 ../ex01/hh.csv > hh_sorted.csv

str_num=$(cat ../ex01/hh.csv | wc -l)
str_num=$((str_num - 1))

# надеюсь, я правильно расставил порядок сортировки
# n - сортировка чисел
tail -n $str_num ../ex01/hh.csv | sort -t',' -n -k1,1 | sort -t',' -k2,2 >> hh_sorted.csv