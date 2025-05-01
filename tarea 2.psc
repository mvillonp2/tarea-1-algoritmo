//(5 + 3 * 2) + 9 + 3 * 5 * 14 % 3 div 2

Algoritmo Ejercicio_2
	Definir resultado Como Real
	
	// Realizamos las operaciones paso a paso, primero el modulo, luego la división, y truncamos el resultado
	resultado = (5 + 3 * 2) + 9 + 3 * 5 * trunc((14 mod 3) / 2)
	
	// Mostramos el resultado
	Escribir "El resultado de la expresion es: ", resultado
	
FinAlgoritmo
