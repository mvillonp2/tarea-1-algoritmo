//Escribir un algoritmo que lea cuatro n�meros
//y determine si el numero 1 es divisor del numero3 Y si el numero 2 es el doble del numero4

Algoritmo Ejercicio_7
	Definir num1,num2,num3,num4 Como Entero
	
	Escribir "ingrese el primer numero: "
	Leer num1
	Escribir "ingrese el segundo numero: "
	Leer num2
	Escribir "ingrese el tercer numero: "
	Leer num3
	Escribir "ingrese el cuarto numero: "
	Leer num4
	
	// Verificar si el n�mero 1 es divisor del n�mero 3
    Si num3 % num1 = 0 Entonces
        Escribir "El n�mero 1 es divisor del n�mero 3."
    Sino
        Escribir "El n�mero 1 no es divisor del n�mero 3."
    FinSi
    
    // Verificar si el n�mero 2 es el doble del n�mero 4
    Si num2 = num4 * 2 Entonces
        Escribir "El n�mero 2 es el doble del n�mero 4."
    Sino
        Escribir "El n�mero 2 no es el doble del n�mero 4."
    FinSi
FinAlgoritmo
