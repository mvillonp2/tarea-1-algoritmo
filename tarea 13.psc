//Solicitar al usuario un car�cter y mostrar si es una vocal

Algoritmo Ejercicio_13
	Definir letra Como Caracter
	
    Escribir "Ingrese una letra:"
    Leer letra
	
    letra = Minusculas(letra)  // Convertimos a min�scula para facilitar la comparaci�n
	
    Si letra = "a" O letra = "e" O letra = "i" O letra = "o" O letra = "u" Entonces
        Escribir "Es una vocal"
    Sino
        Escribir "No es una vocal"
    FinSi
	
FinAlgoritmo
