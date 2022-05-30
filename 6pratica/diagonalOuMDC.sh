#!/bin/bash

a=0
b=0
c=0
diagonal=0
calculo=""
mdc=0
resto=0
num1=0
num2=0

function diagLelepi ()
{
	diagonal=$[($1**2)+($2**2)+($3**2)]
	diagonal=$(echo "sqrt($diagonal)" | bc -l)
}

function mdc2Num ()
{
	num1=$1
	num2=$2
	resto=$[$1%$2]
	while [ $resto -ne 1 ]
	do
		num1=$num2
		num2=$resto
		resto=$[$num1%$num2]
	done
	mdc=resto
}

select calculo in "Diagonal do Paralelepipedo" "MDC de 3 Numeros" "Sair"
do
	case $calculo in
		"Diagonal do Paralelepipedo") 	echo Digite a medida dos 3 lados do paralelepipedo: &&
						read a b c &&
						diagLelepi a b c &&
						echo A diagonal do paralelepipedo mede $diagonal;;
		"MDC de 3 Numeros") 	echo Digite os 3 numeros cujo MDC deseja obter: &&
					read a b c &&
					mdc2Num a b &&
					mdc2Num mdc c
					echo O MDC dos numeros eh $mdc;;
		"Sair") break;;
		*) echo ERRO: entrada invalida!
	esac
done

unset calculo a b c diagonal

