//Solicitar al usuario su edad y mostrar si es mayor o menor de edad

Algoritmo Ejercicio_12
	
	Definir nombre Como Caracter
	Definir edad Como Entero
	
	nombre<-"";edad=0 
	Escribir "Ingrese nombre"
	Leer nombre 
	Escribir "Ingrese edad"
	Leer edad 
	
	Escribir "Nombre: ",nombre
	Escribir "Edad: ",edad
	
	Si edad >  18 Entonces
		Escribir "Es mayor de edad "
	SiNo
		Escribir "Es menor de edad "
	Fin Si
FinAlgoritmo
