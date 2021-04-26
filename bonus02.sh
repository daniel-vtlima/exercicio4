pior_aeroporto=`tail +2 data/2006-sample.csv | 
cut -d ',' -f 17,16 |
grep -v -e '-\|,$' |
awk -F ',' '{lista[$2] += $1} END{for (i in lista) print lista[i], i}' |
sort -n |
tail -n 1 |
cut -d ' ' -f 2`

cat data/airports.csv | grep -w $pior_aeroporto | cut -d ',' -f 2 
