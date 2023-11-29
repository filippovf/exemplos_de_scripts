#!/bin/bash
#Script de 1 linha para monitoramento de interrupções.
#1 line script for INT monitoring.
#Prof. Filippo Valiante Filho - http://prof.valiante.info.
#Se não funcionar como esperado tente...
#If doesn't work as expected try...
#watch 'vmstat -s | grep nte'
#watch 'vmstat -s | grep context'

watch 'vmstat -s | grep int'
