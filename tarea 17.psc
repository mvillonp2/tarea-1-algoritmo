//Pedir al usuario el monto total de una factura y el a�o de la compra.
//Luego, calcular y mostrar el monto total a pagar incluyendo el IVA.
//Si el a�o de la compra es menor al 2024 el porcentaje del IVA es del 12% caso contrario aplicarel IVA del 15%. 

Algoritmo Ejercicio_17
	Definir monto, monto_final Como Real
	Definir anio Como Entero
	Definir iva Como Real
	
	Escribir "ingrese el monto total de la factura: "
	Leer monto
	Escribir "ingrese el a�o de la compra: "
	Leer anio
	
	//determinar el porcentaje de IVA segun el a�o 
	Si anio < 2024 Entonces
		iva = 0.12
	SiNo
		iva = 0.15
	Fin Si
	
	// calcular el monto total con IVA
	monto_final = monto + (monto * iva)
	
	Escribir "El monto total a pagar incluyendo IVA es: ", monto_final
	
	Escribir "A�o de la compra: ", anio
	Escribir "Monto: ", monto
	Escribir "Monto final: ", monto_final
	Escribir "IVA: ", iva
FinAlgoritmo
