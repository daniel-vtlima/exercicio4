cat data/2006-sample.csv |cut -d ',' -f 16-17 | grep -E 'JFK' | grep -E '[+]?[1-9]+[0-9]*' | awk '{s+=$1}END{print "Horas totais de atraso em JFK= "s}'
