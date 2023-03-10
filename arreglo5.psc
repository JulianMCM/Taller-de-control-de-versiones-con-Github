SubProceso LlenarTabla(matriz2, matriz1)
	Definir fila, columna, i, j, opcion, p, q Como Entero;
	Definir multi, multi2, entrada Como Caracter;
	
	i <- 0;
	j <- 0;
	p <- 0;
	q <- 0;
	Para fila <- 0 Hasta 10 Con Paso 1 Hacer
		j <- j + 1;
		i <- 0;
		multi2 <- Concatenar(" x ", Concatenar(ConvertirATexto(j), "]"));
		Para columna <- 0 Hasta 10 Con Paso 1 Hacer
			Si columna = 0 Y fila = 0 Entonces
				matriz2[fila, columna] <- "       ";
			SiNo
				Si fila = 0 Entonces
					matriz2[fila, columna] <- Concatenar("[  ",Concatenar(ConvertirATexto(p),"  ]"));
					p <- p + 1;
					j <- 0;
				SiNo
					Si columna = 0 Y fila <> 0 Entonces
						matriz2[fila, columna] <- Concatenar("[  ",Concatenar(ConvertirATexto(q),"  ]"));
						q <- q + 1;
					SiNo
						i <- i + 1;
						multi <- Concatenar("[", ConvertirATexto(i));
						matriz2[fila,columna] <- Concatenar(multi, multi2);
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
	
	i <- 0;
	j <- 0;
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		j <- j + 1;
		i <- 0;
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			i <- i + 1;
			matriz1[fila,columna] <- i*j;
		FinPara
	FinPara
FinSubProceso
SubProceso ImprimirTabla(matriz2)
	Definir fila, columna Como Entero;
	Para fila <- 0 Hasta 10 Con Paso 1 Hacer
		Para columna <- 0 Hasta 10 Con Paso 1 Hacer
			Escribir matriz2[fila,columna] , " " Sin Saltar;
		FinPara
		Escribir " ";
	FinPara
FinSubProceso
SubProceso Resultado(matriz1, fila, columna)
	Escribir matriz1[fila,columna];
FinSubProceso
Proceso arreglo5
	
	Definir fila, columna, i, j, matriz1, opcion, p, q Como Entero;
	Definir control Como Logico;
	Definir contenido, matriz2, multi, multi2, entrada Como Caracter;
	Dimension matriz1[11,11], matriz2[11,11];
	control <- Verdadero;
	
	LlenarTabla(matriz2,matriz1);
	ImprimirTabla(matriz2);
	
	Mientras control = Verdadero Hacer
		Escribir "Elija la opcion deseada";
		Escribir "1 . Conocer resultado";
		Escribir "0. Salir del sistema";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese el numero de la fila y columna de la cual desea ver el resultado";
				Escribir "Ejemplo: Fila: 2, Columna: 4";
				Escribir "Fila: ";
				Leer fila;
				Escribir "Columna: ";
				Leer columna;
				Resultado(matriz1, fila, columna);
			0:
				Escribir "Hasta luego";
				control <- Falso;
			De Otro Modo:
				Escribir "La opción elegida no existe";
		FinSegun
	FinMientras
	
FinProceso
