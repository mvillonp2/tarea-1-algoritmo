// Pedir al usuario su nota en un examen y determinar si ha aprobado o reprobado, 
//considerando que la nota mínima de aprobación es 60 puntos. Si la nota es mayor a 
//40 y menor a 60 se queda para recuperación caso contario pierde la materia

Algoritmo Ejercicio_19
	Definir nota Como Entero
	
	Escribir "ingrese nota: "
	Leer nota
	
	Si nota > 60 Entonces
		Escribir "Feliciadades aprobastes la materia."
	SiNo
		Si nota > 40 y nota < 60 Entonces
			Escribir "Debes ir a recuperación."
		SiNo
			Escribir "Lo sentimos usted a perdido la materia"
		Fin Si
	Fin Si
	
FinAlgoritmo
