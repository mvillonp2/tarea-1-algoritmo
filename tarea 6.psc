//Escribir un algoritmo que lea cuatro n�meros y determine si el numero 1 es la mitad 
//	del n�mero 2; Y si el numero 3 es divisor del numero 4

Algoritmo Ejercicio_6
	Definir num1, num2, num3, num4 Como Entero
    
    Escribir "Ingresa el primer n�mero: "
    Leer num1
    Escribir "Ingresa el segundo n�mero: "
    Leer num2
    Escribir "Ingresa el tercer n�mero: "
    Leer num3
    Escribir "Ingresa el cuarto n�mero: "
    Leer num4
    
    // Verificar si el n�mero 1 es la mitad del n�mero 2
    Si num1 = num2 / 2 Entonces
        Escribir "El n�mero 1 es la mitad del n�mero 2."
    Sino
        Escribir "El n�mero 1 no es la mitad del n�mero 2."
    FinSi
    
    // Verificar si el n�mero 3 es divisor del n�mero 4
    Si num4 mod num3 = 0 Entonces
        Escribir "El n�mero 3 es divisor del n�mero 4."
    Sino
        Escribir "El n�mero 3 no es divisor del n�mero 4."
    FinSi	
FinAlgoritmo
