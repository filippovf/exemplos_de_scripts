#!/bin/bash
#Script de 1 linha para monitoramento de interrupções.
#1 line script for INT monitoring.
#Prof. Filippo Valiante Filho - http://prof.valiante.info.

watch 'vmstat -s | grep int'
