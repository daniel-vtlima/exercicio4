#!/bin/bash

# Soma valores de 'atraso' da coluna especificada
# (Desconsidera dados faltantes e valores negativos)
sum_delays() {
    cat data/2006-sample.csv | 
    cut -d ',' -f 9,$1 | 
    grep DL | 
    cut -d ',' -f 2 | 
    grep -v -E '^$|-' | 
    paste -sd+ - | bc
}

ArrivalsDelay=`sum_delays 15`
DeparturesDelay=`sum_delays 16`

echo $(echo "$ArrivalsDelay + $DeparturesDelay" | bc)


