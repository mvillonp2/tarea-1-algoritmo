//Pedir al usuario un n�mero y mostrar si es negativo menor que -20,
//sino mostrar si es positivo par o impar m�ltiplo de 7


Algoritmo Ejercicio_8
	Definir num Como Entero
    
    Escribir "Ingresa un n�mero: "
    Leer num
    
    // Verificar si el n�mero es negativo y menor que -20
    Si num < -20 Entonces
        Escribir "El n�mero es negativo y menor que -20."
    Sino
        // Verificar si el n�mero es positivo
        Si num > 0 Entonces
            // Verificar si el n�mero es par o impar
            Si num % 2 = 0 Entonces
                Escribir "El n�mero es positivo y par."
            Sino
                Escribir "El n�mero es positivo e impar."
            FinSi
            
            // Verificar si el n�mero es m�ltiplo de 7
            Si num % 7 = 0 Entonces
                Escribir "El n�mero es m�ltiplo de 7."
            Sino
                Escribir "El n�mero no es m�ltiplo de 7."
            FinSi
        Sino
            Escribir "El n�mero es cero o negativo, pero no menor que -20."
        FinSi
    FinSi
FinAlgoritmo
