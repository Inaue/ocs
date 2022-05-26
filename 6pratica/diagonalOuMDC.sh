#!/bin/bash

a=0
b=0
c=0
diagonal=0
calculo=""
mdc=0

function diagLelepi ()
{
	echo Digite a medida dos 3 lados do paralelepipedo:
	read a b c
	diagonal=$[(a**2)+(b**2)+(c**2)]
	diagonal=$(echo "sqrt($diagonal)" | bc -l)
	echo A diagonal do paralelepipedo mede $diagonal
}

function mdc2Num ()
{
	mdc=$[(a**2)+(b**2)+(c**2)]
	mdc=$(echo "sqrt($diagonal)" | bc -l)
}

select calculo in "Diagonal do Paralelepipedo" "MDC de 3 Numeros" "Sair"
do
	case $calculo in
		"Diagonal do Paralelepipedo") diagLelepi;;
		"MDC de 3 Numeros") echo t && echo a;;
		"Sair") break;;
		*) echo ERRO: entrada invalida!
	esac
done

unset calculo a b c diagonal

