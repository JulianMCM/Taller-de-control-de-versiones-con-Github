Proceso punto2
	
	Definir control Como Logico;
	Definir figura Como Caracter;
	Definir incremento, i Como Entero;
	control <- Verdadero;
	
	figura <- "         ";
	incremento <- 1;
	i <- 0;
	
	Mientras control = Verdadero Hacer
		
		figura <- Concatenar(figura, "*");
		Escribir figura;
		incremento <- incremento + 1;
		i <- 9;
		Si incremento >= 1 Entonces
			figura <- Subcadena(figura, 1, i);
			i <- i-1;
		FinSi
		Si incremento = 10 Entonces
			control <- Falso;
		FinSi
	FinMientras
	
FinProceso
