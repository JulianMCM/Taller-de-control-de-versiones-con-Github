SubProceso NumeroPar(vector)
	Definir i Como Entero;
	Definir control Como Logico;
	control <- Verdadero;
	i <- 0;
	Escribir " ";
	Escribir "Numero par ";
	Mientras control = Verdadero Hacer
		
		Si vector[i] mod 2 = 0 Entonces
			Escribir Sin Saltar vector[i], " ";
			i <- i + 1;
		SiNo
			i <- i + 1;
		FinSi
		Si i >= 20  Entonces
			control <- Falso;
		FinSi
		
	FinMientras
FinSubProceso
SubProceso NumeroImpar(vector)
	Definir i Como Entero;
	Definir control Como Logico;
	control <- Verdadero;
	i <- 0;
	Escribir " ";
	Escribir "Numero impar ";
	Mientras control = Verdadero Hacer
		
		Si vector[i] mod 2 = 0 Entonces
			i <- i + 1;
		SiNo
			Escribir Sin Saltar vector[i], " ";
			i <- i + 1;
		FinSi
		Si i >= 20  Entonces
			control <- Falso;
		FinSi
		
	FinMientras
FinSubProceso
Proceso arreglo2
	
	Definir i, vector Como Entero;
	Definir control Como Logico;
	Dimension vector[20];
	control <- Verdadero;
	
	i <- 0;
	Para i <- 0 Hasta 19 Con Paso 1 Hacer
		vector[i] <- azar(100)+1;
		Escribir vector[i], " " Sin Saltar;
	FinPara
	
	NumeroPar(vector);
	NumeroImpar(vector);
FinProceso
