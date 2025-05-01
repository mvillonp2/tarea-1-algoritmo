// dada la siguiente expresion evaluarla paso a paso
//a=8; b=5
//  v = 2 * b + a div 2 + 4 * b mod a
Algoritmo Ejercicio_1
	Definir a,b Como Entero
	Definir v Como Real
	a=8; b=5; V=0
	Escribir " v = 2 * b + a div 2 + 4 * b mod a"
	v = 2 * b + trunc(a/2) + 4 * b mod a
	Escribir " Maquina = ", v
	
	v = 2 * b + trunc(a/2) + 4 * b mod a
	v = 2 * 5 + trunc(8/2) + 4 * 5 mod 8
	v = 10 + trunc(a/2) + 20 mod 8
	v = 10 + 4 + 4
	v = 18
	Escribir "Humano = ", v
FinAlgoritmo
