cat data/2006-sample.csv | cut -d ',' -f 24 | grep -E '1|Diverted' | wc -l
