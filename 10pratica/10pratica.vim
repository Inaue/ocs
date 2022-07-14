vim9script

def Fatorial(n: number): number
	var produto = 1

	for i in range(1, n)
		produto *= i
	endfor

	return produto
enddef

def Graus_Pra_Rad(n: float): float
	return (n * (3.1415 / 180)) # 3.1415 = PI
enddef

def Cosseno(n: float): float
	var cosseno = 0.0
	
	for i in range(1, 20)
		var par = 2 * (i - 1)
		cosseno += pow(-1, i + 1) * pow(n, par) / Fatorial(par)
	endfor

	return cosseno
enddef

var x = 73.0 # angulo em graus

echo 'O cos-seno de' x 'graus eh, aproximadamente,' Cosseno(Graus_Pra_Rad(x))
