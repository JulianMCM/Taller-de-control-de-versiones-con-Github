Proceso punto4
	
	Definir i, num, resultado Como Entero;
	
	i <- 1;
	num <- 0;
	resultado <- 0;
	
	Escribir "Por favor ingrese un numero a multiplicar";
	Leer num;
	
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		
		resultado <- i * num;
		Escribir i, " * ", num, " = ", resultado;
		
	FinPara
FinProceso
