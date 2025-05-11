Funcion CALCULADORA_VUELTO_1
	//ENTRADA
	//DEFINIR VARIABLES
	//COSTO DEL PRODUCTO, PAGO Y VUELTO COMO REAL 
	//COSTO DEL PRODUCTO (LEER), PAGO (LEER), VUELTO (CALCULAR)
	DEFINIR COSTO_PRODUCTO Como Real
	DEFINIR PAGO Como Real
	DEFINIR VUELTO Como Real
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	COSTO_PRODUCTO = 0
	PAGO = 0
	VUELTO = 0
	//PROCESO 
	//INGRESAMOS EL PRECIO DEL PRODUCTO Y LUEGO EL VALOR DADO PARA PAGAR EL PRODUCTO
	Escribir "INGRESE EL PRECIO DEL PRODUCTO"
	Leer COSTO_PRODUCTO
	Escribir "INGRESE EL VALOR DEL PAGO"
	Leer PAGO
	//USAREMOS LA FUNCION SI PARA CALCULAR EL VUELTO O SI FALTA DINERO
	//DECIMOS QUE SI PAGO ES MENOR O IGUAL AL COSTO DEL PRODUCTO
	//EL VUELTO SERIA IGUAL A LA RESTA DE ESTAS VARIABLES
	SI PAGO >= COSTO_PRODUCTO Entonces
		VUELTO = PAGO - COSTO_PRODUCTO
		Escribir "SU VUELTO ES DE: $ ", VUELTO
	SiNo
		//CASO CONTRARIO, ES DECIR, SI HACE FALTA DINERO PARA PAGAR EL PRODUCTO, MOSTRAR UN MENSAJE QUE INDIQUE AQUELLO.
		Escribir "FALTA DINERO"
	FinSi
	//SALIDA
	//PRESENTAR POR PANTALLA LOS CALCULOS DE LAS VARIABLES
	Escribir "PRECIDO DEL PRODUCTO --->: ", COSTO_PRODUCTO
	Escribir "PAGO --->: ", PAGO
FinFuncion

Funcion Conversor_Kg_Lb_2
	//ENTRADA
	//DEFINIR LAS VARIABLES COMO REAL, PARA QUE ENTRE NUMEROS ENTEROS Y DECIMALES
	//OPCION (ASIGNAR), KILOS (LEER-CALCULAR), LIBRAS (LEER-CALCULAR), RESULTADO (CALCULAR)
	Definir opcion, kilos, libras, resultado Como Real
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	kilos = 0; libras = 0; resultado = 0
	//PROCESO 
	//VAMOS A PEDIR AL USUARIO QUE DECIDA QUE QUIERE CONVERTIR, SI KILOS A LIBRAS O LIBRAS A KILOS.
	//ESTAS VARIABLES VAMOS A LEERLA DEPENDIENDO DE QUE SE REQUIERA HACER, Y CALCULARLAS
    Escribir "Conversor de unidades"
    Escribir "1. Convertir kilogramos a libras"
    Escribir "2. Convertir libras a kilogramos"
    Escribir "Elige una opción (1 o 2): "
    Leer opcion
	//AHORA USAREMOS LA FUNCION SI PARA DECIR QUE SI EL USUARIO ELEGIO LA OPCION 1, ENTONCES 
	//SE CALCULARA LOS KILOS A LIBRAS, USANDO FORMULAS MATEMATICAS PARA OBTENER EL RESULTADO
    Si opcion = 1 Entonces
        Escribir "Introduce los kilogramos: "
        Leer kilos
        resultado <- kilos * 2.20462
        Escribir kilos, " kilogramos equivalen a ", resultado, " libras."
		
    Sino
		//SI EL USUARIO ELEGIO LA OPCION 2, ENTONCES 
		//SE CALCULARA LIBRAS A KILOS, USANDO FORMULAS MATEMATICAS PARA OBTENER EL RESULTADO
        Si opcion = 2 Entonces
            Escribir "Introduce las libras: "
            Leer libras
            resultado <- libras * 0.453592
            Escribir libras, " libras equivalen a ", resultado, " kilogramos."
			
        Sino
			//SI LA OPCION ELEGIDA NO ES NINGUNA DE LAS DOS, PRESENTARA UN MENSAJE QUE INDIQUE QUE NO ES VALIDA LA OPCION.
            Escribir "Opción no válida. Intenta de nuevo."
        FinSi
    FinSi	
	//SALIDA
	//PRESENTAR POR PANTALLA LOS VALORES CALCULADOS, SEGUN REQUIERA EL USUARIO.
FinFuncion

Funcion  Calculadora_Descuentos_3
	//ENTRADA
	//DEFINIR VARIABLES COMO REAL, PARA AÑADIR DECIMALES SI ES NECESARIO.
	//DEFINIR MONTO(LEER), DESCUENTO(CALCULAR), TOTAL(CALCULAR)
    Definir monto, descuento, total Como Real
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	monto = 0; descuento = 0; total = 0
	//PROCESO 
	//PEDIMOS QUE EL USUARIO INGRESE EL MONTO DE LA COMPRA, PARA REALIZAR LA OPERACION.
	//LEEMOS MONTO.
    Escribir "Ingrese el monto de la compra:"
    Leer monto
	//USAREMOS LA FUNCION SI PARA REALIZAR LA OPERACION.
	//PREGUNTAMOS QUE SI EL MONTO ES MENOR A 100 EL DESCUENTO QUE SE LE APLICARA SERA DE 0
	//AHORA SI EL M ONTO ESTA ENTRE 100 Y 500 DOLARES, EL DESCUENTO APLICADO SERA DEL 0.05%.
	//Y SI EL MONTO ES MAYOR A 500 EL DESCUENTO AUMENTARA A 0.10%.
	Si monto < 100 Entonces
        descuento <- 0
    Sino
        Si monto <= 500 Entonces
            descuento <- monto * 0.05
        Sino
            descuento <- monto * 0.10
        FinSi
    FinSi
	//CALCULAMOS EL TOTAL Y ESTO VARIA SEGUN EL DESCUENTO APLICADO.
    total <- monto - descuento
	//SALIDA
	//PRESENTAMOS POR MENSAJE Y MOSTRAMOS EN PANTALLA LOS RESULTADOS DE NUESTROS CALCULOS.
    Escribir "Descuento aplicado: $", descuento
    Escribir "Total a pagar: $", total
	//FIN DE LA FUNCION.
FinFuncion

Funcion Calculo_IVA_y_Descuento_4
	//ENTRADA.
	//DEFINIR VARIABLES COMO REAL, PARA AÑADIR DECIMALES SI ES NECESARIO.
	//PRECIO(LEER), IVA(ASIGNAR), PRECIO CON IVA(CALCULAR), DESCUENTO(CALCULAR), PRECIO FINAL(CALCULAR).
	Definir precio, iva, precioConIVA, descuento, precioFinal Como Real
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	precio = 0; iva	= 0; precioConIVA = 0; descuento = 0; precioFinal = 0
    // Paso 1: Pedir el precio sin IVA
    Escribir "Ingrese el precio sin IVA:"
    Leer precio
	//PROCESO
	// Paso 2: Calcular el IVA (12%)
    iva <- precio * 0.12
    // Paso 3: Calcular el precio con IVA
    precioConIVA <- precio + iva
    // Paso 4: Calcular el descuento del 30%
    descuento <- precioConIVA * 0.30
    // Paso 5: Calcular el precio final con descuento
    precioFinal <- precioConIVA - descuento
    //SALIDA
	//PRESENTAMSO POR PANTALLA LOS RESULTADOS ORGANIZADAMENTE.
    Escribir "IVA (12%): $", iva
    Escribir "Precio con IVA: $", precioConIVA
    Escribir "Descuento (30%): $", descuento
    Escribir "Precio final con descuento: $", precioFinal
FinFuncion

Funcion Comparar_Precios_5
	//ENTRADA
	//DEFINIR LAS VARIABLES COMO REAL
	//PRECIO1(LEER), PRECIO2(LEER).
	Definir precio1, precio2 Como Real
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	precio1 = 0; precio2 = 0
    //PEDIMOS AL USUARIO QUE INGRESE EL PRIMERO NUMERO.
    Escribir "Ingrese el primer precio:"
    Leer precio1
	//AHORA QUE INGRESE EL SEGUNDO NUMERO.
    Escribir "Ingrese el segundo precio:"
    Leer precio2
	//PROCESO
	//AHORA USAREMOS LA FUNCION SI PARA PREGUNTAR SI EL PRECIO1 ES MAYOR QUE EL PRECIO2.
	//Paso 2: Comparar los precios
	//Y MOESTRAMOS POR PANTALLA QUE EL PRECIO1 ES MAYOR QUE EL PRECIO2.
    Si precio1 > precio2 Entonces
        Escribir "El primer precio ($", precio1, ") es mayor que el segundo ($", precio2, ")."
    Sino
		//REALIZAMOS LA MISMA OPERACION POR EL LADO FALSO DE LA FUNCION, PRECIO2 ES MAYOR QUE PRECIO1
        Si precio2 > precio1 Entonces
            Escribir "El segundo precio ($", precio2, ") es mayor que el primero ($", precio1, ")."
        Sino
			//EN CASO DE AMBOS SER IGUALES, MOSTRAMOS QUE AMBOS PRECIOS SON IGUALES
            Escribir "Ambos precios son iguales: $", precio1
        FinSi
    FinSi
	//SALIDA
	//PRESENTAMOS LOS RESULTADOS POR PANTALLA.
	Escribir "PRIMERO PRECIO: ", precio1
	Escribir "SEGUNDO PRECIO: ", precio2
FinFuncion

Funcion CLASIFICADOR_EDAD_6
	//ENTRADA
	//DEFINIMOS LAS VARIABLES COMO ENTERO, EN ESTE CASO PORQUE LA EDAD NO SE LEE CON DECIMALES.
	//EDAD (LEER).
	Definir edad Como Entero
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	edad = 0
	//PROCESO 
	//PEDIR AL USUARIO QUE INGRESE LA EDAD PARA VERIFICAR SI ES UN NIÑO, JOVEN, ADULTO O ADULTO MAYOR.
	Escribir "INGRESE SU EDAD"
	Leer edad  
	//USAMOS LA FUNCION SI PARA VERIFICAR LA OPERACION PEDIDA
	//SI LA EDAD DEL USUARIO ES DESDE EL PRIMER AÑO HASTA LOS 12 AÑOS.
	//EL USUARIO ES UN NIÑO.
	si edad >= 0 y edad <= 12 
		Escribir "Eres un niño"
	SiNo
		//SI LA EDAD DEL USUARIO ES DESDE LOS 13 AÑOS HASTA LOS 17 AÑOS, ES UN JOVEN.
		si edad >= 13 y edad <= 17 entonces 
			Escribir  "Eres un joven"
		SiNo
			//SI LA EDAD DEL USUARIO ES DESDE LOS 18 HASTA LOS 64 EN UN ADULTO.
			si edad >= 18 y edad <= 64 Entonces
				Escribir "Eres un adulto "
			SiNo
				//CASO CONTRARIO SI ES MAYOR A O IGUAL A 65 ENTONCES EN UN ADULTO MAYOR.
				si edad >=65 Entonces
					Escribir "Eres un adulto mayor"
					
				FinSi
			FinSi
		FinSi
	FinSi
	//SALIDA
	//PRESENTAR POR PANTALLA LA EDAD INGRESADA.
	Escribir "EDAD DEL USUARIO: ", edad
FinFuncion

Funcion IDENTIFICADOR_DE_NUMERO_PAR_IMPAR_7
	//ENTRADA
	//DEFINIR VARIABLES COMO REAL, PARA AÑADIR DECIMALES SI ES NECESARIO.
	//NUMERO(LEER), R(CALCULAR), RESTO(CALCULAR).
	Definir numero, r, resto como REAL
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	r = 0; resto = 0; numero = 0
	//PROCESO 
	//PEDIR AL USUARIO QUE INGRESE EL NUMERO A VERIFICAR SI ES PAR O IMPAR.
    Escribir "Ingrese un número:"
    Leer numero
    // Verificar si es par usando MOD
    Si numero MOD 2 = 0 Entonces
        Escribir "El número es par"
    SiNo
        Escribir "El número es impar"
    FinSi	
    // Verificar si es múltiplo de 10 SIN usar MOD
	//EN ESTE CASO APLICAMOS LA FORMULA PARA SABER USAR EL MOD SIN LA FUNCION MOD
	//LO QUE REALIZAMOS ES QUE EL RESULTADO VA SER IGUAL A LA PARTE COCIENTE DE LA DIVICION ENTRE EL NUMERO DIVIDIDO PARA 10
	r <- trunc(numero/10)
	//UNA VEZ ECHA LA DIVISION, RESTO SERA IGUAL AL RESULTADO * 10 MENOS EL NUMERO INGRESADO.
    resto <- r * 10 - numero
	//UNA VEZ ECHA LA OPERACION DEL MOD, PREGUNTAMOS SI RESTO ES IGUAL A 0, EL NUMERO SERA MULTIPLO DE 10
	//CASO CONTRARIO NO LO SERA.
    Si resto = 0 Entonces
        Escribir "El número es múltiplo de 10"
    SiNo
        Escribir "El número NO es múltiplo de 10"
    FinSi
FinFuncion

Funcion Evaluador_De_Puntuacion_8
	//ENTRADA
	//DEFINIR VARIABLES COMO REAL Y COMO CARACTER
	//PUNTUACION(LEER), EVALUCAION(CALCULAR).
	Definir puntuacion Como REAL
	Definir Evaluacion Como Caracter
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	Evaluacion = ""
	puntuacion = 0
	//PROCESO 
	//PREDIMOS AL USUARIO QUE INGRESE UNA PUNTUACION DEL 1 AL 10 PARA EVALUAR SI ATENCION.
    Escribir "Ingrese una puntuación del 1 al 10:"
    Leer puntuacion
	//USAMOS LA FUNCION SI Y PREGUNTAMOS QUE SI PUNTUACION SE ENCUENTRA EN 1 Y 3, ENTONCES LA EVALUACION SERA MALA.
    Si puntuacion >= 1 Y puntuacion <= 3 Entonces
        Evaluacion = "Mala"
    Sino
		//SI ESTA ENTRE 4 Y 6 LA EVALUACION SERA REGULAR.
        Si puntuacion >= 4 Y puntuacion <= 6 Entonces
            Evaluacion = "Regular"
        Sino
			//SI ESTA ENTRE 7 Y 8 LA EVALUACION SERA BUENA.
            Si puntuacion >= 7 Y puntuacion <= 8 Entonces
                Evaluacion = "Buena"
            Sino
				//POR ULTIMO SI LA PUNTUACION ES MAYOR A 8 HASTA 10 LA EVALUACION SERA EXCELENTE.
                Si puntuacion >= 9 Y puntuacion <= 10 Entonces
                    Evaluacion = "Excelente"
                Sino
					//SI LA PUNTUACION EXCEDE DEL 1 AL 10 TONCES SE INDICARA QUE NO ES VALIDA.
                    Escribir  "Puntuación inválida. Debe estar entre 1 y 10."
                FinSi
            FinSi
        FinSi
    FinSi
	//SALIDA
	//PRESENTAMOS POR PANTALLA TODO EL CALCULO ECHO.
	//LA PUNTUACION INGRESADA Y EL NIVEL DEL SERVICIO.
	Escribir "puntuacion ingresada: ", puntuacion
	Escribir "Nivel de Servicio: ", Evaluacion
FinFuncion

Funcion Verificador_Multiplos_9
	//ENTRADA
	//DEFINIR VARIBALE NUMERO COMO ENTERO
	//NUMERO (LEER)
	Definir numero Como Entero
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	numero = 0
	//PROCESO 
	//PEDIMOS AL USUARIO QUE INGRESE EL NUMERO PARA VERIFICAR SI ES MULTIPLO DE 3, 9 Y 12.
    Escribir "Ingrese un número:"
    Leer numero
    // Verificar múltiplos con MOD
	//PREGUNTAMOS SI NUMERO ES MOD DE 3 IGUAL A 0 SERA MULTIPLO, SI LA DIVISION NO ES IGUAL A 0 NO SERA MULTIPLO DE 3
    Si numero MOD 3 = 0 Entonces
        Escribir "El número es múltiplo de 3"
    FinSi
	//PREGUNTAMOS SI NUMERO ES MOD DE 9 IGUAL A 0 SERA MULTIPLO, SI LA DIVISION NO ES IGUAL A 0 NO SERA MULTIPLO DE 9
    Si numero MOD 9 = 0 Entonces
        Escribir "El número es múltiplo de 9"
    FinSi
	//PREGUNTAMOS SI NUMERO ES MOD DE 12 IGUAL A 0 SERA MULTIPLO, SI LA DIVISION NO ES IGUAL A 0 NO SERA MULTIPLO DE 12
    Si numero MOD 12 = 0 Entonces
        Escribir "El número es múltiplo de 12"
    FinSi
    // Si no es múltiplo de ninguno
    Si numero MOD 3 <> 0 Y numero MOD 9 <> 0 Y numero MOD 12 <> 0 Entonces
        Escribir "El número no es múltiplo de 3, 9 ni 12"
    FinSi
	//SALIDA
	// PRESENTAMOS EL NUMERO INGRESADO.
	Escribir "numero ingresado --->: ", numero
FinFuncion

Funcion CalculadoraPropina_10
	//ENTRADA
	//DEFINIMOS NUESTRAS VARIABLES DEPENDE DE QUE TIPON SEAN
	//CUENTA (LEER), SERVICIO "LEER", PROPINA (CALCULAR)
	definir cuenta como real
	definir servicio como cadena 
	definir propina como real
	//DEFINIMOS CADA VARIABLE COMO CARARTER ENTRE ("") Y VALORES CON (0)
	cuenta = 0; servicio = ""; propina = 0
	//PROCESO 
	//INGRESAMOS EL VALOR DE LA CUENTA A PAGAR
	//UNA VEZ INGRESADA EL VALOR AHORA TOCA LA CALIDAD DEL SERVICIO (BUENO/MALO).
	Escribir "ingres el valor de la cuenta"
	leer cuenta 
	Escribir "como fue el servicio (bueno/excelente)" 
	leer servicio 
	//USAREMOS LA FUNCION SI PARA CALCULAR EL SERVICIO Y DAR UNA PROPINA A BASE DE LA EXPERIENCIA.
	si servicio = "bueno" Entonces
		propina <- cuenta * 0.10
		//SI EL SERVICIO ES BUENO LA PROPINA SERA DEL 10%
	sino 
		//si el servicio es excelente la propina aumentara un 5% mas, es decir, del 10%.
		si servicio = "excelente" Entonces
			propina <- cuenta * 0.15
		sino 
			//SI EL SERVICIO NO ES NI BUENO NI EXCELENTE, NO SE AUMENTARA EL PORCIENTO A LA PROPINA Y EL PAGO SERA NETO
			propina <- 0
			
		FinSi
	FinSi
	//finalizamos la funcion si
	//SALIDA
	//PRESENTAMOS POR PANTALLA LOS RESULTADOS DE LOS CALCULOS ANTERIORES.
	Escribir "propina sugerida es de: " , propina " dolares" 
	Escribir "Valor de la cuenta: ", cuenta
	Escribir "Servicio: ", servicio
	//FIN DEL Algoritmo.
FinFuncion

Funcion Clasificador_de_compra_11
	//ENTRADA=ENTENDER EL PROBLEMA//
	//DECLARAMOS VARIABLES//
	//MONTO DE COMPRAS(LEER)
	//CATEGORIA = CARACTER//
	Definir monto_compra Como Real
	Definir categoria como caracter
	//DEFINIMOS VARIABLES A 0//
	monto_compra = 0
	categoria = ""
	//PROCESO//
	//INGRESAMOS POR PANTALLA (LEER) MONTO DE COMPRAS//
	Escribir "INGRESE EL MONTO DE COMPRAS"
	Leer monto_compra
	//EMPEZAMOS A CLACIFICAR EL MONTO DE COMPRAS DEPENDIENDO DE LA CATEGORIA ASIGNADA//
	si monto_compra <10 Entonces
		categoria = "BAJA"
	SiNo
		si monto_compra <30 Entonces
			categoria = "MEDIA"
		SiNo
			si monto_compra >30
				categoria = "ALTA"
			FinSi
		FinSi
		
	FinSi
	//FINALIZAMOS EL ALGORITMO CON UN MENSAJE EN PANTALLA QUE MUESTRE LOS RESULTADOS DEL EJERCICIO//
	Escribir "EL MONTO DE COMPRAS LE PERTENECE A LA CATEGORIA: ", categoria
FinFuncion

Funcion DOBLE_Y_NUMERO_POSITIVO_12
	//ENTRADA=ENTENDER EL PROBLEMA//
	//DECLARAMOS VARIABLES //
	//NUM1(LEER)//
	Definir num1 Como real
	Definir doble Como real
	Definir posi Como real
	//DIFINIMOS LAS VARIABLES A 0//
	num1=0
	doble=0
	posi=0
	//INGRESAMOS POR PANTALLA (LEER) NUM1//
	Escribir "INGRESE EL NUMERO:"
	Leer num1
	//PROCESO//
	//EMPEZAMOS A REALIZAR EL CALCULO PARA EL NUMERO POSITIVO SE HAGA DOBLE//
	si num1 > 0 Entonces
		doble =  num1 * 2
		Escribir "EL DOBLE DEL NUMERO ES: ", doble
		
		//REALIZAMOS EL CALCULO PARA PODER TRANSFORMAR DE UN NEGATIVO A POSITIVO//	
		//USANDO LA FUNCION DEL VALOR ABSOLUTO = (abs)//
	SiNo 
		si num1 < 0 Entonces
			posi= abs (num1)
			Escribir "EL NUMERO CONVERTIDO A POSITIVO ES: ", posi 
		SiNo
			Escribir "EL NUMERO ES NEUTRO"
			//FINALIZAMOS EL ALGRITMO MOSTRANDO UN MENSAJE EN PANTALLA MOSTRANDO EL RESULTADO FINAL//
		FinSi
	FinSi
	Escribir "Numero ingresado : ", num1
	Escribir "El Doble : ", doble
	Escribir "Numero negativo a positivo : ", posi
FinFuncion

Funcion Verificador_DE_acceso_por_edad_y_dinero_13
	//ENTRADA=ENTENDER EL PROBLEMA//
	//DECLARAMOS VARIABLES//
	//EDAD=LEER//
	//DINERO=LEER//
	Definir edad Como entero
	Definir dinero Como real
	//DEFINIMOS VARIABLES A 0//
	edad=0
	dinero=0
	//PROCESO//
	//INGRESAMOS POR PANTALLA (LEER) EDAD, DINERO//
	Escribir "INGRESE SU EDAD ESTABLECIDA:"
	Leer edad
	Escribir "INGRESE EL MONTO DE SU DINERO:"
	Leer dinero
	//EMPEZAMOS A CALCULAR LA EDAD ESTABECIDAD Y EL MONTO DEL DINERO//
	si edad >=18 Y dinero >=1 Entonces
		
		Escribir "Si puede ingresar a la tienda"
	SiNo
		si edad <=18 Y dinero <0 Entonces
		FinSi
		Escribir "No puede ingresar a la tienda"
	FinSi
	//FINALIZAMOS EL ALGORITMO CON UN MENSAJE EN PANTALLA QUE MUESTRE LOS RESULTADOS DEL EJERCICIO//
	Escribir "Edad del cliente -->: ", edad
	Escribir "Cantidad de Dinero -->: ", dinero
FinFuncion

Funcion COMPRA_MAYOR_EDAD_14
	//ENTRADA = ANALIZAMOS EL PROBLEMA
	//DECLARAMOS VARIABLES
	//EDAD(LEER)
	//DES_ESPECIAL, COMPRA, IVA, SUBTOTAL, DESCUENTO, VAL_DESCUENTO, TOTAL (CALCULAMOS)
	Definir DES_ESPECIAL, COMPRA, IVA, SUBTOTAL, DESCUENTO, VAL_DESCUENTO, TOTAL Como Real
	Definir EDAD Como Entero
	//DEFINIMOS LAS VARIABLES A "0"
	DES_ESPECIAL = 0; COMPRA = 0; IVA= 0.15; SUBTOTAL = 0; DESCUENTO = 0.05; VAL_DESCUENTO = 0; TOTAL = 0
	EDAD = 0
	//PROCESO 
	//INGRESAMOS POR PTANLLA (LEER) EDAD, MONTO
	Escribir "INGRESE LA EDAD"
	Leer  EDAD
	Escribir "INGRRESE VALOR DE COMPRA"
	LEER COMPRA
	//CALCULAMOS SI EL CLIENTE ES MAYOR A 60 AÑOS Y SU MONTO ES SUPERIOR A 50 DOLARES.
	//CALCULAMOS OTRO VALOR SI LA EDAD DEL CLIENTES ES MENOR A 60 AÑOS O SI SU COMPRA ES MENOR A 50 DOLARES.
	SI EDAD > 60 Y COMPRA > 50 Entonces
		Escribir "INGRESE EL VALOR DEL DESCUENTO ESPECIAL"
		Leer DES_ESPECIAL
		
		VAL_DESCUENTO = COMPRA * DES_ESPECIAL/100
		IVA = 0
		SUBTOTAL = COMPRA - VAL_DESCUENTO
		TOTAL = SUBTOTAL
	SiNo
		VAL_DESCUENTO = COMPRA * DESCUENTO
		SUBTOTAL = COMPRA - VAL_DESCUENTO
		IVA = SUBTOTAL * IVA
		TOTAL = SUBTOTAL + IVA
	FinSi
	//SALIDA
	//FINALIZAMOS ESTE ALGORITMO CON UN MENSAJE POR PANTALLA MOSTANDO EL RESULTADO DEL EJERCICIO EJECUTADO.
	Escribir "COMPRA: ", COMPRA
	Escribir "DESCUENTO: ", VAL_DESCUENTO
	Escribir "SUBTOTAL: ", SUBTOTAL
	Escribir "IVA: ", IVA
	Escribir "TOTAL: ", TOTAL
FinFuncion

Funcion cambio_exacto_con_billetes_15
	//ENTRADA: ENTENDER EL PROBLEMA,//
	//DECLARAR VARIABLES://
	//VUELTO=(LEER)//
	//BILLE10=(CALCULAR)//
	//BILLETE5=(CALCULAR)//
	//RESTO=(CALCULAR)//	
	Definir vuelto, bille10, bille5, resto, pago Como real
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.	
	vuelto = 0
	bille10 = 0
	bille5 = 0
	resto = 0
	//PROCESO//
	//VAMOS A INGRESAR POR PANTALLA (LEER) VUELTO//
	//REALIZAMOS EN EL PROCESO DE BILLE10, BILLE5 Y RESTO PARA PODER (CALCULAR)//
	//SOLICITAMOS AL USUARIO QUE INGRESE EL MONTO DEL VUELTO PARA PODER VERIFICAR,//
	//QUE EL VALOR SEA CORRECTO (NUMERO ENTERO Y MULTIPLO DE 5)//
	Escribir "ingrese el vuelto recibido"
	Leer vuelto
	Si vuelto % 5 = 0 Entonces
	Fin Si
	//CALCULAMOS LA CANTIDAD DE BILLETES DE 10//
	bille10= trunc (vuelto/10)
	//CALCULAMOS EL RESTO DE LA DIVICION ANETERIOR QUE NO SE PUDO CUBRIR CON BILLES DE 10//
	resto = vuelto MOD 10
	//CALCULAMOS LA CANTIDAD DE BILLETES DE 5//
	bille5= trunc (resto/5)
	//FINALIZAMOS EL ALGORITMO CON UN MENSAJE EN PANTALLA QUE MUESTRE EL RESULTADO DEL PROCESO//
	Escribir  "Billetes de $ 10: ", bille10
	Escribir  "Billetes de $ 5: ", bille5
FinFuncion

Funcion dias_de_la_semana_16
	//ENTRADA
	//DEFINIMOS VARIABLE DIA COMO ENTERO, YA QUE VAMOS A PREGUNTAR SI EL DIA 1 ES LUNES, MARTES, MIERCOLES, JUEVES, VIERNES, SABADO O DOMINGO.
	//DIA (LEER)
	//Y SEGUN QUE NUMERO SE ESCOJA DEL 1 AL 7 SERA EL DIA DE LA SEMANA.
	Definir dia Como Entero
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	dia = 0
	Escribir "dia de la semana "
	leer dia
	//SI EL DIA 1 ES LUNES TONCES ES VERDADERO.
	si dia = 1 Entonces 
		Escribir "dia lunes"
	SiNo
		//SI EL DIA 2 ES MARTES TONCES ES VERDADERO.
		//Y ASI SUCESIVAMENTE CON LOS OTROS DIAS HASTA LLEGAR AL DIA 7 QUE SERIA EL DOMINGO.
		si dia = 2  Entonces 
			Escribir "dia martes"
		SiNo
			si dia = 3  Entonces 
				Escribir "dia miercoles"
			SiNo
				si dia = 4  Entonces 
					Escribir "dia jueves"
				SiNo
					si dia = 5 Entonces 
						Escribir "dia viernes"
					SiNo
						si dia = 6 Entonces 
							Escribir "dia sabado"
						SiNo
							si dia = 7 Entonces 
								Escribir "dia domingo"
							finsi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion Precio_Unitario_17
	
	Definir precio Como Real
	Definir tipo_precio Como Caracter
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	precio = 0;tipo_precio = ""
	Escribir "precio unitario"
	leer precio
	si precio < 10 Entonces
		tipo_precio = "precio economico"
	sino
		si precio >= 10 y precio >= 20 Entonces
			tipo_precio = "precio caro"
		SiNo
			tipo_precio = "precio regular"
		FinSi
	FinSi
	Escribir "Precio ingresado: ", precio
	Escribir "tipo de precio: ", tipo_precio
FinFuncion

Funcion VerificarBisiesto_18
    Definir anio Como Entero
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	anio = 0
    Escribir "Ingresa un año:"
    Leer anio
	
    Si anio MOD 4 = 0 Y anio MOD 100 <> 0 O anio MOD 400 = 0 Entonces
        Escribir "El año ", anio, " es bisiesto."
    Sino
        Escribir "El año ", anio, " no es bisiesto."
    FinSi
	Escribir "año ingresado: ", anio
FinFuncion

Funcion ConvertirHorasAMinutosYSegundos_19
    Definir horas, minutos, segundos Como Real
	//INICIALIZAMOS LAS VARIABLES A 0 PARA GUARDAR EN LA MEMORIA DEL PROGRAMA
	//ASI PODREMOS INDICAR CUALQUIER CANTIDAD A CADA VARIBALE.
	horas = 0
	minutos = 0
	
    Escribir "Ingrese la cantidad de horas:"
    Leer horas
	
    // Convertimos horas a minutos (1 hora = 60 minutos)
    minutos <- horas * 60
	
    // Convertimos horas a segundos (1 hora = 3600 segundos)
    segundos <- horas * 3600
	
    // Mostramos los resultados
    Escribir "Equivalente en minutos: ", minutos
    Escribir "Equivalente en segundos: ", segundos
FinFuncion

Funcion VerificarTriple_20
    Definir num1, num2 Como Real
	num1 = 0
	num2 = 0
    Escribir "Ingrese el primer número:"
    Leer num1
	
    Escribir "Ingrese el segundo número:"
    Leer num2
	
    // Verificamos si el segundo número es exactamente el triple del primero
    Si num2 = num1 * 3 Entonces
        Escribir "El segundo número ES el triple del primero."
    Sino
        Escribir "El segundo número NO es el triple del primero."
    FinSi
FinFuncion

Funcion  RIESGO_POR_SINTOMAS_MULTIPLES_21
		//ENTRADA
		//DEFINIR VARIABLES
		//EN ESTE CASO DEFINIMOS LAS VARIABLES RESPUESTA QUE NOS INDICARA 
		//SI EL PACIENTE TIENE O NO ALGUNA MOLESTIA 
		//RESPUESTA, 2, 3, 4, DEFINIMOS COMO LECTURA YA QUE VAMOS A INGRESAR LA RESPUESTA. 
		//riesgo (calcular) ya que depende de las respuestas, obtendremos si es de alto riesgo o bajo.
		Definir respuesta4, respuesta3, respuesta2, respuesta, riesgo Como Caracter
		//DEFINIMOS NUESTRAS VARIABLES COMO CARACTER YA QUE SERAN INGRESADA COMO LECTURA Y NO COMO NUMERO
		respuesta = ""
		respuesta2 = ""
		respuesta3 = ""
		respuesta4 = ""
		riesgo = ""
		//PROCESO 
		//PREGUNTAMOS A LA PERSONA SI SE SIENTE ENFERMA PARA EMPEZAR CON LOS CALCULOS DE RIESGO.
		Escribir "¿Se siente enfermo?"
		leer respuesta
		//PREGUNTAMOS SI TIENE FIEBRE
		//SI SU RESPUESTA ES "SI", CONCATENAMOS EN LA MEMORIA DEL PROGRAMA LA RESPUESTA PARA LOS CALCULOS
		escribir "¿Tiene Fiebre? (si/no):"
		leer respuesta2
		//PREGUNTAMOS SI TIENE DIFICULTAD PARA RESPIRAR
		//SI SU RESPUESTA ES "SI", CONCATENAMOS EN LA MEMORIA DEL PROGRAMA LA RESPUESTA PARA LOS CALCULOS
		Escribir "¿Tiene DificuLtad para Respirar? (si/no):"
		leer respuesta3
		//PREGUNTAMOS SI TIENE DOLOR EN EL PECHO
		//SI SU RESPUESTA ES "SI", CONCATENAMOS EN LA MEMORIA DEL PROGRAMA LA RESPUESTA PARA LOS CALCULOS
		Escribir "¿Tiene Dolor en el Pecho? (si/no):"
		leer respuesta4
		//UNA VEZ GUARDADA LAS RESPUESTA EN LA MEMORIA DEL PROGRAMA
		//PREGUNTAMOS CON LA FUNCION SI Y EL OPERACION LOGICO CONJUNCION (Y).
		//Y PREGUNTAMOS SI LAS 3 RESPUESTAS SON "SI" EN TONCES EL RIESGO ES ALTO.
		//SI ALGUNA RESPUESTA VARIA, EN TONCES EL RIESGO SERIA BAJO
		//YA QUE EL OPERADOR LOGICO CONJUNCION DENOTA QUE TODAS LAS RESPUESTA TENDRIAN QUE SER SI
		//PARA QUE EL RIESGO SEA ALTO
		//CASO CONTRARIO EL RIESGO NO LO SERIA.
		si respuesta = "si" y respuesta2 = "si" y respuesta3 = "si" y respuesta4 = "si" Entonces
			riesgo = "ALTO RIESGO: DERIVAR A EMERGENCIA"
		SiNo
			riesgo = "RIESGO_BAJO_MEDIO"
		FinSi
		//SALIDA
		//PRESENTAMOS POR PANTALLA LAS VARIABLES DEFINIDAS.
		//LAS 4 RESPUESTA Y EL NIVEL DEL RIESGO SEGUN LOS CALCULOS.
		Escribir "ESTAS ENFERMO: ", respuesta
		Escribir "¿TIENE FIEBRE?: ", respuesta2
		Escribir "¿Tiene DificuLtad para Respirar?: ", respuesta3
		Escribir "¿Tiene Dolor en el Pecho?: ", respuesta4
		Escribir "tipo de riesgo: ", riesgo
		//FINALIZAMOS EL ALGORITMO.
FinFuncion

Funcion ESTADO_DE_SALUD_22
	//ENTRADA
	//DEFINIR VARIABLES
	//CLASIFICACION COMO CARACTER (ASIGANOS) 
	//PRESION SISTOLICA COMO REAL (LEER) YA QUE VAMOS A INGRESAR LA CANTIDAD DE LA PRESION.
	Definir CLASIFICACION Como Caracter
	Definir PRESION_SISTOLICA Como REAL
	//DEFINIMOS VARIABLES COMO CARACTER ENTRE "" Y PRESION SISTOLICA "0".
	PRESION_SISTOLICA = 0
	CLASIFICACION = ""
	//PROCESO 
	//VAMOS A INGRESAR EL VALOR DE LA PRESION SISTOLICA DEL PACIENTE Y LA VAMOS A LEER
	Escribir "INGRESE SU PRESION SISTOLICA"
	Leer PRESION_SISTOLICA
	//AHORA VAMOS A CALCULAR LA CLASIFICACION DE LA PRESION SISTOLICA DEL PACIENTE
	//USANDO LA FUNCION SI PARA REALIZAR EL PROCESO 
	// Y PREGUNTAMOS SI LA PRESION SISTOLICA ES MENOR A 90 LA PRESION SERA BAJA.
	SI PRESION_SISTOLICA < 90 Entonces
		CLASIFICACION = "PRESION BAJA"
	SiNo
		//AHORA PREGUNTAMOS SI LA PRESION SISTOLICA DEL PACIENTE ESTA EN 90 Y 120 LA PRESION SERA NORMAL
		SI PRESION_SISTOLICA >= 90 Y PRESION_SISTOLICA <= 120 Entonces
			CLASIFICACION = "PRESION NORMAL"
		SiNo
			//UNA VEZ HALLAMOS DECIDO LAS DOS PRIMERAS CLASIFICACIONES, EN ESTE CASO SI LA PRESION SISTOLICA ESTA ENTRE 121 Y 139 EL PACIENTE TENDRA
			//UNA PREHIPERTENCION.
			SI PRESION_SISTOLICA >= 121 Y PRESION_SISTOLICA <= 139 Entonces
				CLASIFICACION = "PREHIPERTENSION"
			SiNo
				//SI EN CASO LA PRESION SISTOLICA NO ES NINGUNA DE LAS ANTERIORES ES PORQUE EL PACIENTE TIENE UNA HIPERTENSION.
				//QUE SE DA A PARTIR DE LOS MAYORES E IGUALES A 140.
				CLASIFICACION = "HIPERTENSION"
			FinSi
		FinSi
	FinSi
	//FINALIZAMOS LA FUNCION SI UNA VEZ NUESTRO ALGORITMO TENGA LOGICA Y SENTIDO.
	//SALIDA
	//MOSTRAR POR PANTALLA EL VALOR DE LA PRESION SISTOLICA Y LA CALSIFICACION SEGUN LO CALCULADO.
	Escribir "PRESION DEL PACIENTE: ", PRESION_SISTOLICA
	Escribir "CLASIFICACION DE LA PRESION: ", CLASIFICACION
FinFuncion

Funcion nombre_mas_saludo_23
	//SALUDO PERSONALIZADO
	//ENTRADA
	//DECLARAR VARIABLES: NOMBRE (leer)
	// SALUDO (calcular)
	Definir NOMBRE Como Caracter
	Definir SALUDO Como Caracter
	//definir variables a caracter con comillas ""
	NOMBRE = ""; SALUDO = ""
	//PROCESO
	//Vamos a ingresar por pantalla (leer) el nombre del usuario
	//luego realizacmos el saludo (calcular)
	Escribir "INGRESE SU NOMBRE"
	Leer NOMBRE
	//Finalizamos el algoritmo con un mesaje por pantalla que muestro el resultado del Proceso 
	//SALUDO = "HOLA " + NOMBRE + ", COMO ESTAS"
	SALUDO = "HOLA " + NOMBRE + ", COMO ESTAS"
	//SALIDA
	//PRESENTAR POR PANTALLA EL FINAL DEL PROCESO.
	Escribir SALUDO
FinFuncion

Funcion ES_VOCAL_24
	//ENTRADA
	// definir variables letra(leer)
	Definir letra Como Caracter
	letra = ""
	// leer letra
	Escribir "Ingrese una letra: "
	leer letra
	// Convertir la letra a minúscula para simplificar la comparación
	letra <- Minusculas(letra)
	//PROCESO
	// Verificar si la letra ingresada es una vocal, usando operador logico (disyunción).
	// Si la letra es una vocal (a,e,i,o,u) entonces presentamos 
	//por pantalla que es una vocal.
	Si letra == "a" o letra== "e" o letra == "i" o letra == "o" o letra == "u" Entonces
		Escribir "La letra: " + letra + " es una vocal."
		//Si la condición anterior es verdadera (la letra es una vocal), este mensaje se muestra en la pantalla.
	SiNo
		Escribir "La letra: " +letra+ " es una consonante."
		//Si la condición del Si es falsa (la letra no es una vocal), se ejecuta el bloque SiNo.
	FinSi
	//SALIDA
	//Mostrar mensaje si es vocal o no.
FinFuncion

Funcion Verificar_Constante_25
	//ENTRADA
	// definir variables letra(leer)
	Definir letra Como Caracter
	letra = ""
	// leer letra
	Escribir "Ingrese una letra: "
	leer letra
	// Convertir la letra a minúscula para simplificar la comparación
	letra <- Minusculas(letra)
	//PROCESO
	// Verificar si la letra ingresada es una consonante, usando operador logico (conjunción).
	// Si la letra es una consonante entonces presentamos por pantalla que si es una consonante.
	Si letra >= "a" y letra <= "z" y letra <>  "a" y letra <>  "e" y letra <>  "i" y letra <> "o" y letra  <> "u" Entonces
		Escribir "La letra: " + letra + " es una consonante."
		//Si la condición anterior es verdadera (la letra NO es diferente de una consonante), acaba la funsion si.
	SiNo
		Escribir "La letra: " +letra+ " no es una consonante"
		//Si la condición del Si es falsa (es decir que la letra es diferente de una consonante), se ejecuta el bloque SiNo, y el fin si.
	FinSi
	//SALIDA
	//Mostrar mensaje si es vocal o no.
FinFuncion

Funcion NOMBRES_IGUALES_26
	// ENTRADA
	// Definir los dos nombres como caracter.
	//nombre1(leer), nombre2(leer).
	Definir NOMBRE1, NOMBRE2 Como Caracter
	//Definir nombre como caracter usando ("").
	NOMBRE1 = ""
	NOMBRE2 = ""
	// Convertir Nombres a minúscula para simplificar la comparación
	NOMBRE1 <- Minusculas(NOMBRE1)
	NOMBRE2 <- Minusculas(NOMBRE2)
	//PROCESO 
	//Pedir al Usuario el primer nombre.
	Escribir Sin Saltar "INGRESE EL PRIMER NOMBRE"
	Leer NOMBRE1
	//Pedir el segundo nombre
	Escribir Sin Saltar "INGRESE EL SEGUNDO NOMBRE"
	Leer NOMBRE2
	// Realizar la comparacion de ambos nombres usando el operador logico "Y".
	//	usar la Funcion si para realizar el proceso de igualdad
	SI NOMBRE1 = NOMBRE2 Y NOMBRE2 = NOMBRE1 Entonces
		Escribir "LOS NOMBRES SON IGUALES"
		//si ambos nombres son iguales escribir "son iguales"
	SiNo
		Escribir "LOS NOMBRES SON DIFERENTE"
		//si el proceso es falso escribir "son diferentes"
	FinSi //fin de la funcion si
	//SALIDA
	//Presentar ambos nombres ingresado por el usuario
	Escribir "EL PRIMER NOMBRE ES: ", NOMBRE1
	Escribir "EL SEGUNDO NOMBRE ES: ", NOMBRE2
FinFuncion

Funcion Mayusculas_Minisculas_27
	//ENTRADA
	//Definir caracteres
	//letra (leer), l_mayus(calcular si es mayuscula), l_minus(calcular si es minuscula)
	Definir LETRA, L_MAYUS, L_MINUS Como Caracter
	//declaramos con ("") ya que son caracteres.
	LETRA <- ""
	L_MAYUS <- ""
	L_MINUS <- ""
	//Proceso 
	//pedir al usuario que ingrese una letra para su verificación.
	Escribir "INGRESE LA LETRA A VERIFICAR"
	Leer  LETRA
	//Concatenar las letras en minusculas y mayusculas para la verificación.
	L_MAYUS = Mayusculas(LETRA)
	L_MINUS = Minusculas(LETRA)
	//usamos la funcion si para realizar el proceso, si la letra es igual a letra mayuscula, entonces habra que presentar por pantalla que es mayuscula.
	//si la funsion si toma el camino por falso, (la letra no es mayuscula) entonces se dice que es minuscula.
	
	SI LETRA = L_MAYUS 
		ESCRIBIR "LA LETRA INGRESADA ES MAYUSCULA"
	SiNo 
		si LETRA = L_MINUS Entonces
			Escribir "LA LETRA INGRESADA ES MINUSCULA"
		FinSi
	FinSi //fin si
	//SALIDA
	Escribir "LETRA INGRESA: ", LETRA
FinFuncion

Funcion NOMBRE_ENTERO_28
	//ENTRADA
	//Definir nombre y apellido, nombre_completo como caracter.
	//nombre(leer), apellido (leer), nombre_completo (calcular)
	Definir  apellido, nombre_completo Como Caracter
	//definir nombre y apellido como caracter usando ("")
	nombre <- ""
	apellido <- ""
	//Proceso 
	// Ingresamos el nombre y el apellido del usuario.
	Escribir Sin Saltar "ingrese su nombre"
	leer nombre
	Escribir Sin Saltar "ingrese su apellido"
	leer apellido
	//calculamos el nombre completo una vez ingresado el nombre y el apellido.
	//	nombre_completo = nombre + apellido, usamos +""+ para dar espacio.
	nombre_completo = nombre + " " + apellido
	//SALIDA
	//Presentamos por pantalla el resultado final o en este caso, el nombre mas el apellido.
	//formando el nombre completo del usuario.
	Escribir "su nombre completo es: " , nombre_completo
FinFuncion

Funcion PALABRA_LARGA_CORTA_29
	//ENTRADA
	//Definir las variables 
	//frase (leer), log_palabra (calcular)
	Definir FRASE Como Caracter
	Definir LON_PALABRA Como Entero
	//Definir las variables que son caracteres con comillas("") y las variables numericas con (0).
	FRASE = ""
	LON_PALABRA = 0
	//PROCESO 
	//Ingresar la palabra a calcular
	//leer la frase.
	Escribir "INGRESA LA PALABRA"
	Leer FRASE
	//Usar una condicion si para verificar si la frase ingresada es larga o corta.
	//para aquello hay que usar la funcion para caracter "longitud".
	//si la cantidad de caracteres de la frase es menor o igual a 6, la frase es corta.
	//si la cantidad de caracteres de la frese es mayor a 6, la frase es larga.
	LON_PALABRA = Longitud(FRASE)
	SI LON_PALABRA <= 6 Entonces
		Escribir "LA PALABRA " + FRASE + " ES CORTA."
	SiNo
		Escribir "LA PALABRA " + FRASE + " ES LARGA."
	FinSi
	Escribir "LA PALABRA INGRESA ES: ", FRASE
FinFuncion

Funcion CONTADOR_CARACTERES_MAYUSCULAS_30
	//ENTRADA
	//DEFINIR VARIABLES
	//Frase(leer), Long_frase(calcular), FRASE_MAYUSCULA (trasformar)
	Definir FRASE Como Caracter
	Definir LONG_FRASE Como Entero
	Definir FRASE_MAYUSCULA Como Caracter
	//PROCESO 
	//Definir las variables como caracter y entero (""),(0).
	FRASE <- ""
	FRASE_MAYUSCULA <- ""
	LONG_FRASE <- 0
	//ingresar la frase a verificar de cuantos caracteres se forma.
	Escribir "INGRESE UNA FRASE"
	LEER FRASE
	//Usaremos las funciones para cadeca "longitud" para contar la cantidad de caracteres de la frase.
	//la funcion "mayusculas" para transformar la frase a mayuscula.
	LONG_FRASE = Longitud(FRASE)
	FRASE_MAYUSCULA = Mayusculas(FRASE)
	//SALIDA
	//Presentar por pantalla el resultado del proceso.
	//calculando cuantos caracteres tiene la frase ingresada.
	Escribir "LA FRASE INGRESADA TIENE " , LONG_FRASE , " CARACTERES "
	Escribir "LA FRASE EN MAYUSCULAS ES ", FRASE_MAYUSCULA  
FinFuncion

Algoritmo MENU_PRINCIPAL
	Definir opc Como Caracter
	Definir CARACT, L_MAYUS, L_MINUS, NOMBRE, SALUDO Como Caracter
	Definir apellido, completo,  letra,  categoria, tipo_precio  Como Caracter
	Definir APODO1, APODO2, FRASE, FRASE_MAYUSCULA, Evaluacion Como Caracter
	Definir LON_PALABRA, LONG_FRASE, edad, dia, anio Como Entero
	DEFINIR COSTO_PRODUCTO, PAGO, VUELTO, num2 Como Real
	Definir opcion, kilos, libras, resultado Como Real
	Definir monto, descuento, total, monto_compra Como Real
	Definir precio, iva, precioConIVA, precioFinal Como Real
	Definir precio1, precio2, cuenta, propina Como Real
	Definir numero, r, resto, puntuacion, num1, doble, posi, dinero como REAL
	definir servicio como cadena 
	Definir DES_ESPECIAL, COMPRA, SUBTOTAL, VAL_DESCUENTO Como Real
	Definir bille10, bille5, PRESION_SISTOLICA Como real
	Definir respuesta4, respuesta3, respuesta2, respuesta, riesgo, CLASIFICACION Como Caracter
	Definir horas, minutos, segundos Como Real

	
	Repetir
		Limpiar Pantalla
		
		Escribir "MENU PRINCIPAL"
		Escribir "-------"
		Escribir "Opciones Disponibles 0-30"
		Escribir "(0) Salir"
		Escribir Sin Saltar "Elija una opción (0-30)...."		
		Leer opc
		
		Segun opc hacer
		'1':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 1", "", "CALCULADORA DE VUELTO"
			Escribir "INGRESE EL PRECIO DEL PRODUCTO"
			Leer COSTO_PRODUCTO
			Escribir "INGRESE EL VALOR DEL PAGO"
			Leer PAGO
			
			SI PAGO >= COSTO_PRODUCTO Entonces
				VUELTO = PAGO - COSTO_PRODUCTO
				Escribir "SU VUELTO ES DE: $ ", VUELTO
			SiNo
				Escribir "FALTA DINERO"
			FinSi
			Escribir "PRECIDO DEL PRODUCTO --->: ", COSTO_PRODUCTO
			Escribir "PAGO --->: ", PAGO
			
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'2':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 2 ", "", "Conversor_Kg_Lb_2"
			kilos = 0; libras = 0; resultado = 0
			
			Escribir "Conversor de unidades"
			Escribir "1. Convertir kilogramos a libras"
			Escribir "2. Convertir libras a kilogramos"
			Escribir "Elige una opción (1 o 2): "
			Leer opcion
			
			Si opcion = 1 Entonces
				Escribir "Introduce los kilogramos: "
				Leer kilos
				resultado <- kilos * 2.20462
				Escribir kilos, " kilogramos equivalen a ", resultado, " libras."
				
			Sino
				Si opcion = 2 Entonces
					Escribir "Introduce las libras: "
					Leer libras
					resultado <- libras * 0.453592
					Escribir libras, " libras equivalen a ", resultado, " kilogramos."
					
				Sino
					Escribir "Opción no válida. Intenta de nuevo."
				FinSi
			FinSi
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'3':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 3 ", "", "CALCULADORA DE DESCUENTO"
			monto = 0; descuento = 0; total = 0
			Escribir "Ingrese el monto de la compra:"
			Leer monto
			
			Si monto < 100 Entonces
				descuento <- 0
			Sino
				Si monto <= 500 Entonces
					descuento <- monto * 0.05
				Sino
					descuento <- monto * 0.10
				FinSi
			FinSi
			
			total <- monto - descuento
			
			Escribir "Descuento aplicado: $", descuento
			Escribir "Total a pagar: $", total
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'4':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 4", "", "Calculo IVA y Descuento"
			precio = 0; iva	= 0; precioConIVA = 0; descuento = 0; precioFinal = 0
			Escribir "Ingrese el precio sin IVA:"
			Leer precio
			iva <- precio * 0.12
			precioConIVA <- precio + iva
			descuento <- precioConIVA * 0.30 
			precioFinal <- precioConIVA - descuento
			Escribir "IVA (12%): $", iva
			Escribir "Precio con IVA: $", precioConIVA
			Escribir "Descuento (30%): $", descuento
			Escribir "Precio final con descuento: $", precioFinal
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'5':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 5 ", "", "COMPARAR PRECIOS"
			precio1 = 0; precio2 = 0
			Escribir "Ingrese el primer precio:"
			Leer precio1
			Escribir "Ingrese el segundo precio:"
			Leer precio2
			Si precio1 > precio2 Entonces
				Escribir "El primer precio ($", precio1, ") es mayor que el segundo ($", precio2, ")."
			Sino
				Si precio2 > precio1 Entonces
					Escribir "El segundo precio ($", precio2, ") es mayor que el primero ($", precio1, ")."
				Sino
					Escribir "Ambos precios son iguales: $", precio1
				FinSi
			FinSi
			Escribir "PRIMERO PRECIO: ", precio1
			Escribir "SEGUNDO PRECIO: ", precio2
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'6':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 6", "", "CALSIFICADOR DE EDAD DEL CLIENTE "
			edad = 0
			Escribir "INGRESE SU EDAD"
			Leer edad  
			si edad >= 0 y edad <= 12 
				Escribir "Eres un niño"
			SiNo
				si edad >= 13 y edad <= 17 entonces 
					Escribir  "Eres un joven"
				SiNo
					si edad >= 18 y edad <= 64 Entonces
						Escribir "Eres un adulto "
					SiNo
						si edad >=65 Entonces
							Escribir "Eres un adulto mayor"
							
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir "EDAD INGRESADA --->: ", edad
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'7':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 7 ","", "IDENTIFICADOR DE NUMERO PAR IMPAR"
			r = 0; resto = 0; numero = 0
			Escribir "Ingrese un número:"
			Leer numero
			Si numero MOD 2 = 0 Entonces
				Escribir "El número es par"
			SiNo
				Escribir "El número es impar"
			FinSi
			r <- trunc(numero/10)
			resto <- r * 10 - numero
			Si resto = 0 Entonces
				Escribir "El número es múltiplo de 10"
			SiNo
				Escribir "El número NO es múltiplo de 10"
			FinSi
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'8':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 8 ", "", "EVALUADOR DE PUNTUACION"
			Evaluacion = ""
			puntuacion = 0
			Escribir "Ingrese una puntuación del 1 al 10:"
			Leer puntuacion
			
			Si puntuacion >= 1 Y puntuacion <= 3 Entonces
				Evaluacion = "Mala"
			Sino
				Si puntuacion >= 4 Y puntuacion <= 6 Entonces
					Evaluacion = "Regular"
				Sino
					Si puntuacion >= 7 Y puntuacion <= 8 Entonces
						Evaluacion = "Buena"
					Sino
						Si puntuacion >= 9 Y puntuacion <= 10 Entonces
							Evaluacion = "Excelente"
						Sino
							Escribir  "Puntuación inválida. Debe estar entre 1 y 10."
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir "puntuacion ingresada: ", puntuacion
			Escribir "Nivel de Servicio: ", Evaluacion
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'9':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 9 ", "", "VERIFICADOR DE MULTIPLOS"
			Escribir "Ingrese un número:"
			Leer numero
			Si numero MOD 3 = 0 Entonces
				Escribir "El número es múltiplo de 3"
			FinSi
			Si numero MOD 9 = 0 Entonces
				Escribir "El número es múltiplo de 9"
			FinSi
			Si numero MOD 12 = 0 Entonces
				Escribir "El número es múltiplo de 12"
			FinSi
			Si numero MOD 3 <> 0 Y numero MOD 9 <> 0 Y numero MOD 12 <> 0 Entonces
				Escribir "El número no es múltiplo de 3, 9 ni 12"
			FinSi
			Escribir "numero ingresado --->: ", numero
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'10':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 10 ", "" , "Calculadora Propina"
			cuenta = 0; servicio = ""; propina = 0
			Escribir "ingres el valor de la cuenta"
			leer cuenta 
			Escribir "como fue el servicio (bueno/excelente)" 
			leer servicio 
			si servicio = "bueno" Entonces
				propina <- cuenta * 0.10
			sino 
				si servicio = "excelente" Entonces
					propina <- cuenta * 0.15
				sino 
					propina <- 0
					
				FinSi
			FinSi
			Escribir "propina sugerida es de: " , propina " dolares" 
			Escribir "Valor de la cuenta: ", cuenta
			Escribir "Servicio: ", servicio
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'11':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 11 ", "", "CATEGORIA_COMPRA"
			monto_compra = 0
			categoria = ""
			
			Escribir "INGRESE EL MONTO DE COMPRAS"
			Leer monto_compra
			si monto_compra <10 Entonces
				categoria = "BAJA"
			SiNo
				si monto_compra <30 Entonces
					categoria = "MEDIA"
				SiNo
					si monto_compra >30
						categoria = "ALTA"
					FinSi
				FinSi
				
			FinSi
			Escribir "EL MONTO DE COMPRAS LE PERTENECE A LA CATEGORIA: ", categoria
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'12':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 12 ","", "EL DOBLE DE UN NUMERO Y POSITIVO" 
			num1=0
			doble=0
			posi=0
			Escribir "INGRESE EL NUMERO:"
			Leer num1
			si num1 > 0 Entonces
				doble =  num1 * 2
				Escribir "EL DOBLE DEL NUMERO ES: ", doble
			SiNo 
				si num1 < 0 Entonces
					posi= abs (num1)
					Escribir "EL NUMERO CONVERTIDO A POSITIVO ES: ", posi 
				SiNo
					Escribir "EL NUMERO ES NEUTRO"
				FinSi
			FinSi
			Escribir "Numero ingresado : ", num1
			Escribir "El Doble : ", doble
			Escribir "Numero negativo a positivo : ", posi
			
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'13':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 13 ", "", "ACCESO POR EDAD Y DINERO"
			edad=0
			dinero=0
			Escribir "INGRESE SU EDAD ESTABLECIDA:"
			Leer edad
			Escribir "INGRESE EL MONTO DE SU DINERO:"
			Leer dinero
			si edad >=18 Y dinero >=1 Entonces
				Escribir "Si puede ingresar a la tienda"
			SiNo
				si edad <=18 Y dinero <0 Entonces
				FinSi
				Escribir "No puede ingresar a la tienda"
			FinSi
			Escribir "Edad del cliente -->: ", edad
			Escribir "Cantidad de Dinero -->: ", dinero
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'14':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 14 ", "", "COMPRA_MAYOR_EDAD" 
			DES_ESPECIAL = 0; COMPRA = 0; IVA= 0.15; SUBTOTAL = 0; DESCUENTO = 0.05; VAL_DESCUENTO = 0; TOTAL = 0
			EDAD = 0
			Escribir "INGRESE LA EDAD"
			Leer  EDAD
			Escribir "INGRRESE VALOR DE COMPRA"
			LEER COMPRA
			SI EDAD > 60 Y COMPRA > 50 Entonces
				Escribir "INGRESE EL VALOR DEL DESCUENTO ESPECIAL"
				Leer DES_ESPECIAL
				
				VAL_DESCUENTO = COMPRA * DES_ESPECIAL/100
				IVA = 0
				SUBTOTAL = COMPRA - VAL_DESCUENTO
				TOTAL = SUBTOTAL
			SiNo
				VAL_DESCUENTO = COMPRA * DESCUENTO
				SUBTOTAL = COMPRA - VAL_DESCUENTO
				IVA = SUBTOTAL * IVA
				TOTAL = SUBTOTAL + IVA
			FinSi
			Escribir "COMPRA: ", COMPRA
			Escribir "DESCUENTO: ", VAL_DESCUENTO
			Escribir "SUBTOTAL: ", SUBTOTAL
			Escribir "IVA: ", IVA
			Escribir "TOTAL: ", TOTAL
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'15':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 15 ", "", "Cálculo_de_cambio exacto_con_billetes_de_10_y_5"
			pago = 0
			vuelto = 0
			bille10 = 0
			bille5 = 0
			resto = 0
			Escribir "ingrese el vuelto recibido"
			Leer vuelto
			Si vuelto % 5 = 0 Entonces
			Fin Si
			bille10= trunc (vuelto/10)
			resto = vuelto MOD 10
			bille5= trunc (resto/5)
			Escribir  "Billetes de $ 10: ", bille10
			Escribir  "Billetes de $ 5: ", bille5
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'16':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 16 ", "", "DIAS DE LA SEMANA"
			dia = 0
			Escribir "dia de la semana "
			leer dia
			si dia = 1 Entonces 
				Escribir "dia lunes"
			SiNo
				si dia = 2  Entonces 
					Escribir "dia martes"
				SiNo
					si dia = 3  Entonces 
						Escribir "dia miercoles"
					SiNo
						si dia = 4  Entonces 
							Escribir "dia jueves"
						SiNo
							si dia = 5 Entonces 
								Escribir "dia viernes"
							SiNo
								si dia = 6 Entonces 
									Escribir "dia sabado"
								SiNo
									si dia = 7 Entonces 
										Escribir "dia domingo"
									finsi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'17':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 17 ", "", "PRECIO UNITARIO"
			precio = 0
			tipo_precio = ""
			Escribir "precio unitario"
			leer precio
			si precio < 10 Entonces
				tipo_precio = "precio economico"
			sino
				si precio >= 10 y precio >= 20 Entonces
					tipo_precio = "precio caro"
				SiNo
					tipo_precio = "precio regular"
				FinSi
			FinSi
			Escribir "Precio ingresado: ", precio
			Escribir "tipo de precio: ", tipo_precio
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'18':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 18 ", "", "Verificar año Bisiesto"
			anio = 0
			Escribir "Ingresa un año:"
			Leer anio
			
			Si anio MOD 4 = 0 Y anio MOD 100 <> 0 O anio MOD 400 = 0 Entonces
				Escribir "El año ", anio, " es bisiesto."
			Sino
				Escribir "El año ", anio, " no es bisiesto."
			FinSi
			Escribir "año ingresado: ", anio
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'19':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 19 ", "", "CONVERSOR DE TIEMPI, MINUTOS, HORAS Y SEGUNDOS"
			horas = 0
			minutos = 0
			
			Escribir "Ingrese la cantidad de horas:"
			Leer horas
			minutos <- horas * 60
			segundos <- horas * 3600
			Escribir "Equivalente en minutos: ", minutos
			Escribir "Equivalente en segundos: ", segundos
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'20':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 20", "", "EL TRIPLE DE UN NUMERO"
			num1 = 0
			num2 = 0
			Escribir "Ingrese el primer número:"
			Leer num1
			Escribir "Ingrese el segundo número:"
			Leer num2
			Si num2 = num1 * 3 Entonces
				Escribir "El segundo número ES el triple del primero."
			Sino
				Escribir "El segundo número NO es el triple del primero."
			FinSi
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'21':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 21 ", "", "RIESGO_POR_SINTOMAS_MULTIPLES_23"
			respuesta = ""
			respuesta2 = ""
			respuesta3 = ""
			respuesta4 = ""
			riesgo = ""
			Escribir "¿Se siente enfermo?"
			leer respuesta
			escribir "¿Tiene Fiebre? (si/no):"
			leer respuesta2
			Escribir "¿Tiene DificuLtad para Respirar? (si/no):"
			leer respuesta3
			Escribir "¿Tiene Dolor en el Pecho? (si/no):"
			leer respuesta4
			si respuesta = "si" y respuesta2 = "si" y respuesta3 = "si" y respuesta4 = "si" Entonces
				riesgo = "ALTO RIESGO: DERIVAR A EMERGENCIA"
			SiNo
				riesgo = "RIESGO_BAJO_MEDIO"
			FinSi
			Escribir "ESTAS ENFERMO: ", respuesta
			Escribir "¿TIENE FIEBRE?: ", respuesta2
			Escribir "¿Tiene DificuLtad para Respirar?: ", respuesta3
			Escribir "¿Tiene Dolor en el Pecho?: ", respuesta4
			Escribir "tipo de riesgo: ", riesgo
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'22':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 23 ", "", "CLASIFICACION DE PRESION"
			PRESION_SISTOLICA = 0
			CLASIFICACION = ""
			
			Escribir "INGRESE SU PRESION SISTOLICA"
			Leer PRESION_SISTOLICA
			
			SI PRESION_SISTOLICA < 90 Entonces
				CLASIFICACION = "PRESION BAJA"
			SiNo
				SI PRESION_SISTOLICA >= 90 Y PRESION_SISTOLICA <= 120 Entonces
					CLASIFICACION = "PRESION NORMAL"
				SiNo
					SI PRESION_SISTOLICA >= 121 Y PRESION_SISTOLICA <= 139 Entonces
						CLASIFICACION = "PREHIPERTENSION"
					SiNo
						CLASIFICACION = "HIPERTENSION"
					FinSi
				FinSi
			FinSi
			
			Escribir "PRESION DEL PACIENTE: ", PRESION_SISTOLICA
			Escribir "CLASIFICACION DE LA PRESION: ", CLASIFICACION
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'23':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 23 ","","MOSTRAR SALUDO PERSONALIZADO"
			NOMBRE = ""; SALUDO = ""
			Escribir "INGRESE SU NOMBRE"
			Leer NOMBRE
			SALUDO = "HOLA " + NOMBRE + ", COMO ESTAS"
			Escribir SALUDO
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'24':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 24 ","","VERIFICAR SI ES VOCAL"
			letra = ""
			Escribir "Ingrese una letra: "
			leer letra
			letra <- Minusculas(letra)
			Si letra == "a" o letra== "e" o letra == "i" o letra == "o" o letra == "u" Entonces
				Escribir "La letra: " + letra + " es una vocal."
			SiNo
				Escribir "La letra: " +letra+ " es una consonante."
			FinSi
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'25':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 25 ", "", "VERIFICAR SI ES CONSONANTE"
			letra = ""
			Escribir "Ingrese una letra: "
			leer letra
			letra <- Minusculas(letra)
			Si letra >= "a" y letra <= "z" y letra <>  "a" y letra <>  "e" y letra <>  "i" y letra <> "o" y letra  <> "u" Entonces
				Escribir "La letra: " + letra + " es una consonante."
			SiNo
				Escribir "La letra: " +letra+ " no es una consonante"
			FinSi
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'26':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 26 ", "", "NOMBRES IGUALES"
			APODO1 =""
			APODO2 =""
			APODO1 <- Minusculas(APODO1)
			APODO2 <- Minusculas(APODO2)
			Escribir Sin Saltar "INGRESE EL PRIMER NOMBRE"
			Leer APODO1
			Escribir Sin Saltar "INGRESE EL SEGUNDO NOMBRE"
			Leer APODO2
			SI APODO2 = APODO1 Y APODO2 = APODO1 Entonces
				Escribir "LOS NOMBRES SON IGUALES"
			SiNo
				Escribir "LOS NOMBRES SON DIFERENTE"
			FinSi 
			Escribir "EL PRIMER NOMBRE ES: ", APODO1
			Escribir "EL SEGUNDO NOMBRE ES: ", APODO2
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'27':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 27 ", "","MAYUSCULAS_MINUSCULAS"
			LETRA <- ""
			L_MAYUS <- ""
			L_MINUS <- ""
			Escribir "INGRESE LA LETRA A VERIFICAR"
			Leer  CARACT
			L_MAYUS = Mayusculas(CARACT)
			L_MINUS = Minusculas(CARACT)
			
			SI CARACT = L_MAYUS 
				ESCRIBIR "LA LETRA INGRESADA ES MAYUSCULA"
			SiNo 
				si CARACT = L_MINUS Entonces
					Escribir "LA LETRA INGRESADA ES MINUSCULA"
				FinSi
			FinSi
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'28':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 28", "", "NOMBRE COMPLETO"
			nombre =""; apellido =""; completo =""
			Escribir Sin Saltar "ingrese su nombre"
			leer nombre
			Escribir Sin Saltar "ingrese su apellido"
			leer apellido
			completo = nombre + " " + apellido
			Escribir "su nombre completo es: " , completo
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'29':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 29"
			FRASE = ""
			LON_PALABRA = 0
			Escribir "INGRESA LA PALABRA"
			Leer FRASE
			LON_PALABRA = Longitud(FRASE)
			SI LON_PALABRA <= 6 Entonces
				Escribir "LA PALABRA " + FRASE + " ES CORTA."
			SiNo
				Escribir "LA PALABRA " + FRASE + " ES LARGA."
			FinSi
			Escribir "LA PALABRA INGRESA ES: ", FRASE
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'30':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 30 ", "", "CONTADOR DE CARACTERES Y MAYUSCULAS"
			FRASE <- ""
			FRASE_MAYUSCULA <- ""
			LONG_FRASE <- 0
			Escribir "INGRESE UNA FRASE"
			LEER FRASE
			LONG_FRASE = Longitud(FRASE)
			FRASE_MAYUSCULA = Mayusculas(FRASE)
			Escribir "LA FRASE INGRESADA TIENE " , LONG_FRASE , " CARACTERES "
			Escribir "LA FRASE EN MAYUSCULAS ES ", FRASE_MAYUSCULA  
			Escribir "Presione Enter para continuar"
			Esperar Tecla 
		'0':
			Limpiar Pantalla
			Escribir ""
			Escribir "Opción 0"
			Escribir "Gracias Por Usar El Menu Principal (Salir)"
	    FinSegun
	Hasta Que (opc == '0')
FinAlgoritmo
