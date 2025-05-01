//Escribir un algoritmo que lea cuatro números y determine si el numero 1 es la mitad 
//	del número 2; Y si el numero 3 es divisor del numero 4

Algoritmo Ejercicio_6
	Definir num1, num2, num3, num4 Como Entero
    
    Escribir "Ingresa el primer número: "
    Leer num1
    Escribir "Ingresa el segundo número: "
    Leer num2
    Escribir "Ingresa el tercer número: "
    Leer num3
    Escribir "Ingresa el cuarto número: "
    Leer num4
    
    // Verificar si el número 1 es la mitad del número 2
    Si num1 = num2 / 2 Entonces
        Escribir "El número 1 es la mitad del número 2."
    Sino
        Escribir "El número 1 no es la mitad del número 2."
    FinSi
    
    // Verificar si el número 3 es divisor del número 4
    Si num4 mod num3 = 0 Entonces
        Escribir "El número 3 es divisor del número 4."
    Sino
        Escribir "El número 3 no es divisor del número 4."
    FinSi	
FinAlgoritmo
