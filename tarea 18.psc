//Solicitar al usuario el precio de un producto y el porcentaje de descuento aplicado. 
//Calcular y mostrar el precio final luego de aplicar el descuento siempre cuando el precio sea mayor $100

Algoritmo Ejercicio_18
	Definir precio, porcentaje_descuento, precio_final Como Real
	
	Escribir "ingrese el precio del producto: "
	leer precio
	Escribir "Ingrese el porcentaje de descuento: "
	Leer porcentaje_descuento
	
	//verificar si el precio es mayor a 100
	Si precio > 100 Entonces
		precio_final = precio - (precio * porcentaje_descuento / 100)
		Escribir "El precio final despues del desscuento es: ", precio_final
	SiNo
		Escribir "El precio no supera los $100, no se aplica descuento."
	Fin Si
	
	Escribir "precio: ", precio
	Escribir "porcentaje de descuento: ", porcentaje_descuento
	Escribir "precio final: ", precio_final
FinAlgoritmo
