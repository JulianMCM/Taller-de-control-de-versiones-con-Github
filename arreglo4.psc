SubProceso Orden(matriz)
	Definir fila, columna, aux, j Como Entero;
	
	j <- 0;
	Para fila <- 1 Hasta 1 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Para j <- columna+1 Hasta 4 Con Paso 1 Hacer
				Si matriz[fila,columna] < matriz[fila,j] Entonces
					aux <- matriz[fila,columna];
					matriz[fila,columna] <- matriz[fila,j];
					matriz[fila,j] <- aux;
				FinSi
			FinPara
		FinPara
	FinPara
	
	j <- 0;
	Para fila <- 3 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Para j <- columna+1 Hasta 4 Con Paso 1 Hacer
				Si matriz[fila,columna] < matriz[fila,j] Entonces
					aux <- matriz[fila,columna];
					matriz[fila,columna] <- matriz[fila,j];
					matriz[fila,j] <- aux;
				FinSi
			FinPara
		FinPara
	FinPara
FinSubProceso
SubProceso Salida(matriz)
	Definir fila, columna Como Entero;
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir matriz[fila,columna] , " " Sin Saltar;
		FinPara
		Escribir " ";
	FinPara
FinSubProceso
Proceso arreglo4
	
	Definir fila, columna, matriz, i Como Entero;
	Dimension matriz[4,5];
	
	i <- 0;
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			i <- i + 1;
			matriz[fila,columna] <- i;
		FinPara
	FinPara
	
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir matriz[fila,columna] , " " Sin Saltar;
		FinPara
		Escribir " ";
	FinPara
	
	Orden(matriz);
	Salida(matriz);
	
FinProceso
