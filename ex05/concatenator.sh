#!/bin/bash
input_dir="./created_at"
output_file="final.csv"

csv_files=("$input_dir"/*.csv)

{
    head -n 1 "${csv_files[0]}"

    for file in "${csv_files[@]}"; do
        tail -n +2 "$file"
    done
} > "$output_file"