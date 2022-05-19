#!/bin/bash

echo Digite a medida dos 3 lados do paralelepipedo:
read a b c
diagonal=$[(a**2)+(b**2)+(c**2)]
diagonal=$(echo "sqrt($diagonal)" | bc -l)
echo A diagonal do paralelepipedo mede $diagonal
unset a b c diagonal

