Algoritmo Ejercicio_10
	
	Definir tipo_tarjeta, limite_actual, aumento, nuevo_limite Como Real
	
	Escribir "Ingresa el tipo de tarjeta (1, 2, 3 u otro): "
	Leer tipo_tarjeta
	
	Escribir "Ingresa el límite actual de crédito: "
	Leer limite_actual
	
	// Determinar el aumento según el tipo de tarjeta
	Si tipo_tarjeta = 1 Entonces
		aumento = 100
	Sino
		Si tipo_tarjeta = 2 Entonces
			aumento = 200
		Sino
			Si tipo_tarjeta = 3 Entonces
				aumento = 300
			Sino
				aumento = 500
			FinSi
		FinSi
	FinSi
	
	// Calcular el nuevo límite con el aumento
	nuevo_limite = limite_actual + aumento
	
	// Aplicar el 10% adicional sobre el nuevo límite
	nuevo_limite = nuevo_limite + (nuevo_limite * 0.10)
	
	// Mostrar el resultado
	Escribir "El nuevo límite de crédito es: ", nuevo_limite
FinAlgoritmo
