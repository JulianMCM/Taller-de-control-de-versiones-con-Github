SubProceso nuevaI <- AddContacto(i, matriz, nombre, telefono, organizacion)
	Definir fila, columna, j, nuevaI Como Entero;
	Definir repetido, control Como Logico;
	repetido <- falso;
	control <- falso;
	Para fila <- i - 1 Hasta i - 1 Hacer
		Para columna <- 0 Hasta 2 Hacer
			Si matriz[fila,0] = ""  O matriz[fila,1] = "" O matriz[fila,2] = "" Entonces
				Si columna = 0 Entonces
					matriz[fila,columna] <- nombre;
				SiNo
					Si columna = 1 Entonces
						Para j <- 0 Hasta i - 1 Con Paso 1 Hacer
							Si control = Falso Y repetido = Falso Entonces
								Si telefono = matriz[j,1] Entonces
									Escribir "El numero de telefono ya existe";
									repetido <- Verdadero;
								SiNo
									matriz[fila,columna] <- telefono;
									control <- Verdadero;
								FinSi
							FinSi
						FinPara
					FinSi
					Si columna = 2 Y repetido = Falso Entonces
						matriz[fila,columna] <- organizacion;
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
SubProceso BuscarContacto(i, matriz, nombre)
	Definir fila, columna, j Como Entero;
	Definir control Como Logico;
	control <- falso;
	Si i <> 0 Entonces
		Para j <- 0 Hasta 2 Hacer
			Si control = Falso Entonces
				Si nombre = matriz[j,0] Entonces
					Para columna <- 0 Hasta 2 Hacer
						Escribir matriz[j,columna] , " " Sin Saltar;
					FinPara
					Escribir " ";
					control <- Verdadero;
				FinSi
			FinSi
		FinPara
		Si control = Falso Entonces
			Escribir "El contacto no existe";
		FinSi
	SiNo
		Escribir "No hay contactos";
	FinSi
	
FinSubProceso
SubProceso newI <- EliminarContacto(i, matriz, telefono)
	Definir fila, columna, j, newI Como Entero;
	Definir control Como Logico;
	control <- falso;
	Para j <- 0 Hasta i - 1 Hacer
		Si control = Falso Entonces
			Si telefono = matriz[j,1] Entonces
					Para columna <- 0 Hasta 2 Hacer
						Si columna = 0 Entonces
							matriz[j,columna] <- "";
						SiNo
							Si columna = 1 Entonces
								matriz[j,columna] <- "";
							SiNo
								Si columna = 2 Entonces
									matriz[j,columna] <- "";
									control <- Verdadero;
								FinSi
							FinSi
						FinSi
					FinPara
				newI <- i - 1;
			FinSi
		FinSi
	FinPara
	Si control = Falso Entonces
		Escribir "El contacto no existe";
	FinSi
FinSubProceso
Proceso ciclo6
	
	Definir matriz, nombre, nombre1, nombre2, nombre3, telefono, telefono1, telefono2, telefono3, organizacion, organizacion1, organizacion2, organizacion3 Como Caracter;
	Definir fila, columna, opcion, i Como Entero;
	Dimension matriz[3,3];
	Definir control Como Logico;
	
	matriz[0,0] <- "";
	matriz[0,1] <- "";
	matriz[0,2] <- "";
	matriz[1,0] <- "";
	matriz[1,1] <- "";
	matriz[1,2] <- "";
	matriz[2,0] <- "";
	matriz[2,1] <- "";
	matriz[2,2] <- "";
	control <- Verdadero;
	telefono <- "";
	nombre <- "";
	organizacion <- "";
	i <- 0;
	
	Mientras control = Verdadero Hacer
		
		Escribir "Bienvenido a sus contactos";
		Escribir "1. Añadir contacto";
		Escribir "2. Buscar contacto";
		Escribir "3. Eliminar contacto";
		Escribir "0. Salir";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Si i <= 2 Entonces
					Escribir "Nombre contacto: ";
					Leer nombre;
					
					Escribir "Telefono: ";
					Leer telefono;
					
					Escribir "Organizacion: ";
					Leer organizacion;
					i <- i + 1;
					i <- AddContacto(i, matriz, nombre, telefono, organizacion);
				SiNo
					Escribir "No se pueden agregar mas contactos";
				FinSi
			2:
				Escribir "Ingrese el nombre del contacto que desea buscar";
				nombre <- "";
				Leer nombre;
				BuscarContacto(i, matriz, nombre);
			3:
				Escribir "Ingrese el numero de telefono que desea eliminar";
				telefono <- "";
				Leer telefono;
				i <- EliminarContacto(i, matriz, telefono);
			0:
				Escribir "Hasta luego";
				control <- Falso;
			De Otro Modo:
				Escribir "La opcion elegida no existe";
		FinSegun
	FinMientras
	
FinProceso
