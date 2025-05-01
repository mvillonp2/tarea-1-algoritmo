Algoritmo Ejercicio_20
	Definir nombre Como Cadena
    Definir tipo_cliente, discapacitado Como Caracter
    Definir total_Venta, porcentaje_Descuento, valor_Descuento,IVA, total_Pagar Como Real
	
    Escribir "Ingrese el nombre del cliente: "
    Leer nombre
	
    Escribir "Ingrese el tipo de cliente (A, B, C u otro): "
    Leer tipo_cliente
	
    Escribir "¿Es discapacitado? (S para sí, N para no): "
    Leer discapacitado
	
    Escribir "Ingrese el total de la venta: "
    Leer total_Venta
	
    // Inicializar el porcentaje de descuento base
    porcentaje_Descuento = 10
	
    // Ajustar porcentaje de descuento según el tipo de cliente y discapacidad
    Si tipo_Cliente = "A" o discapacitado = "S" Entonces
        porcentaje_Descuento = porcentaje_Descuento + 20
    Sino
        Si tipo_Cliente = "B" y discapacitado = "N" Entonces
            porcentaje_Descuento <- porcentaje_Descuento + 15
        Sino
            Si tipoCliente = "C" Entonces
                porcentaje_Descuento <- porcentaje_Descuento + 10
				// Los demás tipos no aumentan descuento
            FinSi
        FinSi
    FinSi
	
    // Calcular el valor del descuento
    valor_Descuento = total_Venta * porcentaje_Descuento / 100
	
    // Calcular el valor del IVA (sobre el precio ya descontado)
    IVA = total_Venta - valor_Descuento * 0.15
	
    // Calcular el total a pagar
    total_Pagar = total_Venta - valor_Descuento + IVA
	
    // Mostrar resultados
    Escribir "Nombre del cliente: ", nombre
    Escribir "Total de la venta: $", total_Venta
    Escribir "Porcentaje de descuento obtenido: ", porcentaje_Descuento, "%"
    Escribir "Valor del descuento: $", valor_Descuento
    Escribir "Valor del IVA: $", IVA
    Escribir "Total a pagar: $", total_Pagar
FinAlgoritmo
