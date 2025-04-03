#!/bin/bash
# -r - вывод чистого текста
cat ../ex00/hh.json | jq -r -f filter.jq > hh.csv