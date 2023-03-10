Proceso punto4
	
	Definir fila, columna, i, j, k, m, n, matriz, matriz2, vector1, vector2, vector3, vector4, menor, aux Como Entero;
	Dimension matriz[4,5];
	Dimension matriz2[4,5];
	Dimension vector1[5], vector2[5], vector3[5], vector4[5];
	
	matriz[0,0] <- 01;
	matriz[0,1] <- 02;
	matriz[0,2] <- 03;
	matriz[0,3] <- 04;
	matriz[0,4] <- 05;
	matriz[1,0] <- 06;
	matriz[1,1] <- 07;
	matriz[1,2] <- 08;
	matriz[1,3] <- 09;
	matriz[1,4] <- 10;
	matriz[2,0] <- 11;
	matriz[2,1] <- 12;
	matriz[2,2] <- 13;
	matriz[2,3] <- 14;
	matriz[2,4] <- 15;
	matriz[3,0] <- 16;
	matriz[3,1] <- 17;
	matriz[3,2] <- 18;
	matriz[3,3] <- 19;
	matriz[3,4] <- 20;
	
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir matriz[fila,columna] , " " Sin Saltar;
		FinPara
		Escribir " ";
	FinPara
	
	i <- 0;
	k <- 0;
	m <- 0;
	n <- 0;
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Si fila = 0 Entonces
				vector1[i] <- matriz[fila,columna];
				i <- i + 1;
			SiNo
				Si fila = 1 Entonces
					vector2[k] <- matriz[fila,columna];
					k <- k + 1;
				SiNo
					Si fila = 2 Entonces
						vector3[m] <- matriz[fila,columna];
						m <- m + 1;
					SiNo
						Si fila = 3 Entonces
							vector4[n] <- matriz[fila,columna];
							n <- n + 1;
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	
	menor <- 0;
	j <- 0;
	i <- 0;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Para j <- i + 1 Hasta 4 Con Paso 1 Hacer
			Si vector2[i] < vector2[j] Entonces
				aux <- vector2[i];
				vector2[i] <- vector2[j];
				vector2[j] <- aux;
			FinSi
		FinPara
	FinPara
	
	menor <- 0;
	i <- 0;
	j <- 0;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Para j <- i + 1 Hasta 4 Con Paso 1 Hacer
			Si vector4[i] < vector4[j] Entonces
				aux <- vector4[i];
				vector4[i] <- vector4[j];
				vector4[j] <- aux;
			FinSi
		FinPara
	FinPara
	
	i <- 0;
	k <- 0;
	m <- 0;
	n <- 0;
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Si fila = 0 Entonces
				matriz2[fila,columna] <- vector1[i];
				i <- i + 1;
			SiNo
				Si fila = 1 Entonces
					matriz2[fila,columna] <- vector2[k];
					k <- k + 1;
				SiNo
					Si fila = 2 Entonces
						matriz2[fila,columna] <- vector3[m];
						m <- m + 1;
					SiNo
						Si fila = 3 Entonces
							matriz2[fila,columna] <- vector4[n];
							n <- n + 1;
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Escribir matriz2[fila,columna] , " " Sin Saltar;
		FinPara
		Escribir " ";
	FinPara
FinProceso
