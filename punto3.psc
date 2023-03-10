Proceso punto3
	
	Definir contador, espacios, c_espacios, i Como Entero;
	Definir signo, tab Como Caracter;
	
	contador <- 0;
	signo <- "*";
	espacios <- 12;
	c_espacios <- 1;
	tab <- "";
	i <- 1;
	
	Escribir "             *";
	
	Repetir
		Mientras contador <= i Hacer
			signo <- Concatenar(signo,"*");
			contador <- contador + 1;
		FinMientras
		Mientras c_espacios <= espacios Hacer
			tab <- Concatenar(tab, " ");
			c_espacios <- c_espacios + 1;
		FinMientras
		Escribir tab, signo;
		contador <- contador -1;
		espacios <- espacios -1;
		c_espacios <- 1;
		tab <- "";
		i <- i + 1;
	Hasta Que i = 11;
	
FinProceso
