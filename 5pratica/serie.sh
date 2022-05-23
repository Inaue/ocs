#!/bin/bash

tr=$1
soma=0
fat=1
den=0
sin=-1

for tri in $(seq $tr)
do
	fat=$[fat*tri]
	den=$[(2*den)+1] # den = f(tri) = (2^tri) - 1
	sin=$[-sin]
	fra=$(echo $fat/$den | bc -l)
	fra=$(echo $sin*$fra | bc -l)
#	soma=$(echo soma+(sin*fra) | bc -l)
	echo $fra
done

echo A soma dos $tri termos da sequencia eh $soma
unset tri tr soma fat den sin fra

