#!/bin/bash
input_file="../ex03/hh_positions.csv"
output_dir="created_at"

# p - на случай, если папка уже существует
mkdir -p "$output_dir"

header=$(head -n 1 "$input_file")

# +2 - начиная со второй, -F - показывает разделитель полей - запятую
tail -n +2 "$input_file" | awk -F, -v header="$header" -v dir="$output_dir" '
{
  split($2, datetime, "T")
  date = substr(datetime[1], 2)

  filename = dir "/" date ".csv"

  if (!(date in created)) {
    print header > filename
    created[date] = 1
  }

  print >> filename

  close(filename)
}'