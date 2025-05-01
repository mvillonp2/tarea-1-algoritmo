//Escribir un algoritmo que lea cuatro números
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
	
	// Verificar si el número 1 es divisor del número 3
    Si num3 % num1 = 0 Entonces
        Escribir "El número 1 es divisor del número 3."
    Sino
        Escribir "El número 1 no es divisor del número 3."
    FinSi
    
    // Verificar si el número 2 es el doble del número 4
    Si num2 = num4 * 2 Entonces
        Escribir "El número 2 es el doble del número 4."
    Sino
        Escribir "El número 2 no es el doble del número 4."
    FinSi
FinAlgoritmo
