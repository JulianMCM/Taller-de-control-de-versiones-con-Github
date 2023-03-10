Proceso punto3
	
	Definir i, j, vector, cont, num Como Entero;
	Definir control Como Logico;
	Dimension vector[20];
	control <- Verdadero;
	
	i <- 0;
	cont <- 0;
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		vector[i] <- i + 1;
		Escribir vector[i], " " Sin Saltar;
	FinPara
	
	i <- 0;
	j <- 1;
	Escribir " ";
	Escribir "Numero primo";
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		num <- vector[i];
		cont <- 0;
		j <- 1;
		Mientras j <= num Hacer
			Si num % j == 0 Entonces
				cont <- cont + 1;
			FinSi
			j <- j + 1;
		FinMientras
		
		Si cont == 2 Entonces
			Escribir num, " " Sin Saltar;
		FinSi
	FinPara	
FinProceso
