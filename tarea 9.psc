//Calculadora de sueldo con aumento: Pide al usuario que ingrese su salario actual y el 
//porcentaje de aumento que recibirá. 
//Calcula y muestra el nuevo salario después del aumento

Algoritmo Ejercicio_9
	Definir salario_actual, porcentaje_aumento, aumento, nuevo_sueldo Como Real
    
    Escribir "Ingresa tu salario actual: "
    Leer salario_actual
    
    Escribir "Ingresa el porcentaje de aumento: "
    Leer porcentaje_aumento
    
    // Calcular el aumento
    aumento = salario_actual * (porcentaje_aumento / 100)
    
    // Calcular el nuevo sueldo
    nuevo_sueldo = salario_actual + aumento
    
    // Mostrar el resultado
    Escribir "Tu salario actual es: ", salario_actual
    Escribir "El aumento es: ", aumento
    Escribir "Tu nuevo salario después del aumento es: ", nuevo_sueldo
FinAlgoritmo
