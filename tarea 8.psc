//Pedir al usuario un número y mostrar si es negativo menor que -20,
//sino mostrar si es positivo par o impar múltiplo de 7


Algoritmo Ejercicio_8
	Definir num Como Entero
    
    Escribir "Ingresa un número: "
    Leer num
    
    // Verificar si el número es negativo y menor que -20
    Si num < -20 Entonces
        Escribir "El número es negativo y menor que -20."
    Sino
        // Verificar si el número es positivo
        Si num > 0 Entonces
            // Verificar si el número es par o impar
            Si num % 2 = 0 Entonces
                Escribir "El número es positivo y par."
            Sino
                Escribir "El número es positivo e impar."
            FinSi
            
            // Verificar si el número es múltiplo de 7
            Si num % 7 = 0 Entonces
                Escribir "El número es múltiplo de 7."
            Sino
                Escribir "El número no es múltiplo de 7."
            FinSi
        Sino
            Escribir "El número es cero o negativo, pero no menor que -20."
        FinSi
    FinSi
FinAlgoritmo
