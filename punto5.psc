Proceso punto5
	
	Definir control, nombreCapturado Como Logico;
	Definir opcion Como Entero;
	Definir nombre Como Caracter;
	
	nombreCapturado <- Falso;
	control <- Verdadero;
	
	Mientras control = Verdadero Hacer
		
		Escribir "Bienvenido al sistema, elija una opcion";
		Escribir "1. Capturar nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir sistema";
		Leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "¿Como te llamas?";
				Leer nombre;
				nombreCapturado <- Verdadero;
				Limpiar Pantalla;
			2:
				Si nombreCapturado = Verdadero Entonces
					Escribir "Hola ", nombre;
				SiNo
					Escribir "Para saludarte debe primero capturar tu nombre";
				FinSi
				Limpiar Pantalla;
			3:
				Escribir "Hasta luego";
				control <- Falso;
			De Otro Modo:
				Escribir "La opcion elegida no existe";
		FinSegun
	FinMientras
	
FinProceso
