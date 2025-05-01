//((8 > 2) O (932 < 23) ) Y 4 == 2

Algoritmo Ejercicio_5
	Definir 
	// Paso 1: Evaluar 8 > 2
    es_verdadero_1 = (8 > 2) // Este es True
	
    // Paso 2: Evaluar 932 < 23
    es_verdadero_2 = (932 < 23) // Este es False
	
    // Paso 3: Evaluar (es_verdadero_1 O es_verdadero_2)
    resultado_or = es_verdadero_1 O es_verdadero_2 // True O False = True
	
    // Paso 4: Evaluar 4 == 2
    es_verdadero_3 = (4 == 2) // Este es False
	
    // Paso 5: Evaluar (resultado_or Y es_verdadero_3)
    resultado_final = resultado_or Y es_verdadero_3 // True Y False = False
	
    // Mostrar el resultado final
    Escribir resultado_final
FinAlgoritmo
