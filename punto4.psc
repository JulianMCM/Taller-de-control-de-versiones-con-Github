SubProceso PeliculaDis(opcionPelicula, pelicula, disponible)
	disponible <- disponible;
	opcionPelicula <- opcionPelicula;
	pelicula <- pelicula;
	Si opcionPelicula = 1 Y disponible = Verdadero Entonces
		Escribir "Ha adquirido la película ", pelicula;
		disponible <- Falso;
	SiNo
		Si opcionPelicula = 2 Y disponible = Verdadero Entonces
			Escribir "Ha adquirido la película ", pelicula;
			disponible <- Falso;
		SiNo
			Si opcionPelicula = 2 Y disponible = Verdadero Entonces
				Escribir "Ha adquirido la película ", pelicula;
				disponible <- Falso;
			SiNo
				Si opcionPelicula = 3 Y disponible = Verdadero Entonces
					Escribir "Ha adquirido la película ", pelicula;
					disponible <- Falso;
				SiNo
					Si opcionPelicula = 4 Y disponible = Verdadero Entonces
						Escribir "Ha adquirido la película ", pelicula;
						disponible <- Falso;
					SiNo
						Escribir "La película ", pelicula, "no esta disponible";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinSubProceso

SubProceso ConsultarPeli()
	Definir pelicula1, pelicula2, pelicula3, pelicula4, pelicula, Lista Como Caracter;
	Definir disponible1, disponible2, disponible3 ,disponible4 Como Logico;
	disponible1 <- Verdadero;
	disponible2 <- Verdadero;
	disponible3 <- Falso;
	disponible4 <- Verdadero;
	pelicula1 <- "Volver al futuro -";
	pelicula2 <- "Blade Runner 2049 -";
	pelicula3 <- "Ghost in the Shell -";
	pelicula4 <- "Akira -";
	
	Si disponible1 = Verdadero Entonces
		Lista <- pelicula1;
	FinSi
	Si disponible2 = Verdadero Entonces
		Lista <- Concatenar(Lista,pelicula2);
	FinSi
	Si disponible3 = Verdadero Entonces
		Lista <- Concatenar(Lista,pelicula3);
	FinSi
	Si disponible4 = Verdadero Entonces
		Lista <- Concatenar(Lista,pelicula4);
	FinSi
	Escribir "Esta es una lista de las películas disponibles actualmente: ", Lista;
FinSubProceso

SubProceso RecibirPeli()
	Definir pelicula, estado Como Caracter;
	Escribir "Ingrese el nombre de la película a regresar";
	Leer pelicula;
	Escribir  "¿La película presenta algun daño o novedad? Por favor ingrese la información pertinente";
	Leer estado;
	Limpiar Pantalla;
	Escribir "Usted a ingresado la siguiente información ", "La película ", pelicula, " presenta la siguiente información: ", estado;
FinSubProceso

Proceso punto4
	
	Definir pelicula1, pelicula2, pelicula3, pelicula4, pelicula, estado, Lista Como Caracter;
	Definir disponible1, disponible2, disponible3 ,disponible4 Como Logico;
	Definir opcion, opcionPelicula Como Entero;
	
	disponible1 <- Verdadero;
	disponible2 <- Verdadero;
	disponible3 <- Falso;
	disponible4 <- Verdadero;
	pelicula1 <- "Volver al futuro -";
	pelicula2 <- "Blade Runner 2049 -";
	pelicula3 <- "Ghost in the Shell -";
	pelicula4 <- "Akira -";
	
	Escribir "Elija la opción deseada";
	Escribir "1. Alquilar película";
	Escribir "2. Consultar películas disponibles";
	Escribir "3. Recibir película";
	Escribir "0. Salir";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		
		1:
			Escribir "Elija la película deseada";
			Escribir "1. Voler al futuro";
			Escribir "2. Blade Runner 2049";
			Escribir "3. Ghost in the Shell";
			Escribir "4. Akira";
			Leer opcionPelicula;
			
			Limpiar Pantalla;
			
			Segun opcionPelicula Hacer
				1:
					PeliculaDis(opcionPelicula, pelicula1, disponible1);
				2:
					PeliculaDis(opcionPelicula, pelicula2, disponible2);
				3:
					PeliculaDis(opcionPelicula, pelicula3, disponible3);
				4:
					PeliculaDis(opcionPelicula, pelicula4, disponible4);
			FinSegun
		2:
			ConsultarPeli();
		3:
			RecibirPeli();
		0:
			Escribir "Hasta luego";
		De Otro Modo:
			Escribir "La opción elegida no existe";
	FinSegun
	
FinProceso
