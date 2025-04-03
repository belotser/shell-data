#!/bin/bash
curl -G "https://api.hh.ru/vacancies" \
	--data-urlencode "per_page=20" \
	--data-urlencode "page=0" \
	--data-urlencode "search_field=name" \
	--data-urlencode "text=$1" | jq '.' > hh.json