#!/bin/bash

termos=50
soma=0
fatorial=1
denominador=0
sinal=-1
fracao=0
termo=1

for termo in $(seq $termos)
do
	fatorial=$(echo "$fatorial*$termo" | bc -l)
	denominador=$[(2*denominador)+1] # denominador = (2^termo) - 1
	sinal=$[-sinal]
	fracao=$(echo "scale = 5; $sinal*($fatorial/$denominador)" | bc -l)
	soma=$(echo "$soma+$fracao" | bc -l)
done

echo A soma dos $termos termos da sequencia eh $soma
unset termo termos soma fatorial denominador sinal fracao

