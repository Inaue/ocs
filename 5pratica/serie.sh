#!/bin/bash

tr=50
soma=0

for t in $((seq 1 1 $tr))
do
	echo $t
done

echo A soma dos $tr termos da sequencia eh $soma
unset tr soma

