#!/bin/bash

echo Digite as medidas dos 3 lados do paralelepipedo:
read a b c
diagonal=$[(a**2)+(b**2)+(c**2)]
diagonal=$(echo "sqrt($diagonal)" | bc -l)
echo $diagonal

