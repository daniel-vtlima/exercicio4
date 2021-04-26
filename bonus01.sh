pior_companhia=`tail +2 data/2006-sample.csv | 
cut -d ',' -f 9,16 |
grep -v -e '-\|,$' |
awk -F ',' '{lista[$1] += $2} END{for (i in lista) print lista[i], i}' |
sort -n |
tail -n 1 |
cut -d ' ' -f 2`

cat data/carriers.csv | grep -w $pior_companhia | cut -d ',' -f 2
