#!/bin/bash
echo "\"name\",\"count\"" > hh_uniq_positions.csv

# awk '{print $1}' делит строку по пробелам и берет первый элемент
jun_num=$(grep -o "Junior" ../ex03/hh_positions.csv | wc -l | awk '{print $1}')
mid_num=$(grep -o "Middle" ../ex03/hh_positions.csv | wc -l | awk '{print $1}')
sen_num=$(grep -o "Senior" ../ex03/hh_positions.csv | wc -l | awk '{print $1}')
{
	echo "\"Junior\",$jun_num"
	echo "\"Middle\",$mid_num"
	echo "\"Senior\",$sen_num"
} | sort -t',' -n -r -k2,2 >> hh_uniq_positions.csv