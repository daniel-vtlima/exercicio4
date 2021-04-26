cat data/2006-sample.csv | cut -d ',' -f 15-16 | grep -Eo '[+]?[1-9]+[0-9]*' | wc -l

