Proceso punto1
	
	Definir i, j Como Entero;
	Definir vector, dato Como Caracter;
	Dimension vector[5];
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Limpiar Pantalla;
		Escribir "Ingrese un numero";
		Leer dato;
		vector[i] <- dato;
	FinPara
	Limpiar Pantalla;
	Para j <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[", j, "]", vector[j];
	FinPara
	
FinProceso
