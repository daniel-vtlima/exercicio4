#!/bin/bash

# Aeroporto Internacional de Los Angeles
airport='LAX'

# Soma valores de atraso da coluna especificada
# (Desconsidera dados faltantes e valores negativos)
sum_delays() {
    cat data/2006-sample.csv | 
    cut -d ',' -f 18,$1 | 
    grep $airport | 
    cut -d ',' -f 1 | 
    grep -v -E '^$|-' | 
    paste -sd+ - | bc
}

sum_delays 15
