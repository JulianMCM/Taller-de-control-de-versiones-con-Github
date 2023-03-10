SubProceso nuevaI <- IngresarUsuario(i, matriz, usuario, aprovado, presentado)
	Definir fila, columna, j, nuevaI Como Entero;
	Definir repetido, control Como Logico;
	repetido <- falso;
	control <- falso;
	Para fila <- i - 1 Hasta i - 1 Hacer
		Para columna <- 0 Hasta 2 Hacer
			Si matriz[fila,0] = ""  O matriz[fila,1] = "" O matriz[fila,2] = "" Entonces
				Si columna = 0 Entonces
					matriz[fila,columna] <- presentado;
				SiNo
					Si columna = 1 Entonces
						Para j <- 0 Hasta i - 1 Con Paso 1 Hacer
							Si control = Falso Y repetido = Falso Entonces
								Si usuario = matriz[j,1] Entonces
									Escribir "El usuario ingresado ya existe";
									repetido <- Verdadero;
								SiNo
									matriz[fila,columna] <- usuario;
									control <- Verdadero;
								FinSi
							FinSi
						FinPara
					FinSi
					Si columna = 2 Y repetido = Falso Entonces
						matriz[fila,columna] <- aprovado;
						nuevaI <- i;
					SiNo
						Si repetido = Verdadero Entonces
							Para fila <- i - 1 Hasta i - 1 Hacer
								Para columna <- 0 Hasta 2 Hacer
									Si columna = 0 Entonces
										matriz[fila,columna] <- "";
									SiNo
										Si columna = 1 Entonces
											matriz[fila,columna] <- "";
										SiNo
											Si columna = 2 Entonces
												matriz[fila,columna] <- "";
											FinSi
										FinSi
									FinSi
								FinPara
							FinPara
							nuevaI <- i - 1;
						FinSi
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
FinSubProceso
SubProceso ConsultarPresent(i, matriz)
	Definir fila, columna, j, bandera Como Entero;
	bandera <- 0;
	Si i <> 0 Entonces
		Para j <- 0 Hasta i - 1 Hacer
			Si matriz[j,0] = "si" Entonces
				Escribir "El usuario: ", matriz[j,1] , " presento el curso" Sin Saltar;
				Escribir " ";
				bandera <- bandera + 1;
			FinSi
		FinPara
		Si bandera <= 0 Entonces
			Escribir "Ningun usuario a presentado el curso";
		FinSi
	SiNo
		Escribir "No hay Usuarios en el sistema";
	FinSi
FinSubProceso
SubProceso ConsultarAprova(i, matriz)
	Definir fila, columna, j, bandera Como Entero;
	bandera <- 0;
	Si i <> 0 Entonces
		Para j <- 0 Hasta i - 1 Hacer
			Si matriz[j,2] = "si" Entonces
				Escribir "El usuario: ", matriz[j,1] , " aprovo el curso" Sin Saltar;
				Escribir " ";
				bandera <- bandera + 1;
			FinSi
		FinPara
		Si bandera <= 0 Entonces
			Escribir "Ningun usuario aprovo el curso";
		FinSi
	SiNo
		Escribir "No hay Usuarios en el sistema";
	FinSi
FinSubProceso
Proceso ciclo8
	
	Definir opcion, i, fila, columna Como Entero;
	Definir usuario, matriz, aprovado, presentado  Como Caracter;
	Definir control Como Logico;
	Dimension matriz[9,3];
	control <- Verdadero;
	i <- 0;
	Para fila <- 0 Hasta 8 Con Paso 1 Hacer
		Para columna <- 0 Hasta 2 Con Paso 1 Hacer
			matriz[fila,columna] <- "";
		FinPara
	FinPara
	
	Mientras control = Verdadero Hacer
		Escribir "Bienvenido a la escuela automovilistica El Maestro";
		Escribir "1. Ingresar usuario";
		Escribir "2. Consultar presentados";
		Escribir "3. Consultar resultados";
		Escribir "0. Salir";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Si i >= 8 Entonces
					Escribir "Ya no se admiten mas usuarios";
				SiNo
					Escribir "Ingrese el nombre del usuario";
					Leer usuario;
					Escribir "¿El usuario aprovo el curso?";
					Leer aprovado;
					Escribir "¿El usuario presento el curso?";
					Leer presentado;
					i <- i + 1;
					i <- IngresarUsuario(i, matriz, usuario, aprovado, presentado);
				FinSi
			2:
				Escribir "Consultando usuarios que presentaron el curso";
				ConsultarPresent(i, matriz);
			3:
				Escribir "Consultando usuarios que aprovaron el curso";
				ConsultarAprova(i, matriz);
			0:
				Escribir "Hasta luego";
				control <- Falso;
			De Otro Modo:
				Escribir "La opcion elegida no existe";
		FinSegun
	FinMientras
	
FinProceso
