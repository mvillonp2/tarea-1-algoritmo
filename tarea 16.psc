//6. Solicitar al usuario un número y mostrar si es un número de un solo dígito

Algoritmo Ejercicio_16
	Definir num Como Entero
    
    Escribir "Ingresa un número: "
    Leer num
    
    // Verificar si el número tiene un solo dígito
    Si num >= -9 y num <= 9 Entonces
        Escribir "El número es de un solo dígito."
    Sino
        Escribir "El número tiene más de un dígito."
    FinSi
	
FinAlgoritmo
