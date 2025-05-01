//Pedir dos nombres e indicar si son iguales,
//si el primer nombre es mayor que el segundo o menor que el segundo

Algoritmo Ejercicio_14
	Definir nombre1, nombre2 Como Cadena
	
    Escribir "Ingrese el primer nombre:"
    Leer nombre1
	
    Escribir "Ingrese el segundo nombre:"
    Leer nombre2
	
    Si nombre1 = nombre2 Entonces
        Escribir "Los nombres son iguales"
    Sino
        Si nombre1 > nombre2 Entonces
            Escribir "El primer nombre es mayor que el segundo (orden alfabético)"
        Sino
            Escribir "El primer nombre es menor que el segundo (orden alfabético)"
        FinSi
    FinSi
	
FinAlgoritmo
