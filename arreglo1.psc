SubProceso Resultado(vector)
	Definir j Como Entero;
	Para j <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[", j, "] = ", vector[j];
	FinPara
FinSubProceso
Proceso arreglo1
	
	Definir i Como Entero;
	Definir vector, dato Como Caracter;
	Dimension vector[5];
	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Limpiar Pantalla;
		Escribir "Ingrese un numero";
		Leer dato;
		vector[i] <- dato;
	FinPara
	Limpiar Pantalla;
	Resultado(vector);
	
FinProceso
