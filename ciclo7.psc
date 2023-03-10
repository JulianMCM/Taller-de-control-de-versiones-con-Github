SubProceso nuevaI <- IngresarVehiculo(i, matriz, placa, marca, telefono, nombre)
	Definir fila, columna, j, nuevaI Como Entero;
	Definir repetido, control Como Logico;
	repetido <- falso;
	control <- falso;
	Para fila <- i - 1 Hasta i - 1 Hacer
		Para columna <- 0 Hasta 3 Hacer
			Si matriz[fila,0] = ""  O matriz[fila,1] = "" O matriz[fila,2] = "" O matriz[fila,3] = "" Entonces
				Si columna = 0 Entonces
					matriz[fila,columna] <- marca;
				SiNo
					Si columna = 1 Entonces
						Para j <- 0 Hasta i - 1 Con Paso 1 Hacer
							Si control = Falso Y repetido = Falso Entonces
								Si placa = matriz[j,1] Entonces
									Escribir "El vechiculo ingresado ya existe";
									repetido <- Verdadero;
								SiNo
									matriz[fila,columna] <- placa;
									control <- Verdadero;
								FinSi
							FinSi
						FinPara
					FinSi
					Si columna = 2 Y repetido = Falso Entonces
						matriz[fila,columna] <- telefono;
					SiNo
						Si repetido = Verdadero Entonces
							Para fila <- i - 1 Hasta i - 1 Hacer
								Para columna <- 0 Hasta 3 Hacer
									Si columna = 0 Entonces
										matriz[fila,columna] <- "";
									SiNo
										Si columna = 1 Entonces
											matriz[fila,columna] <- "";
										SiNo
											Si columna = 2 Entonces
												matriz[fila,columna] <- "";
											SiNo
												Si columna = 3 Entonces
													matriz[fila,columna] <- "";
												FinSi
											FinSi
										FinSi
									FinSi
								FinPara
							FinPara
							nuevaI <- i - 1;
						FinSi
					FinSi
					Si columna = 3 Y repetido = Falso Entonces
						matriz[fila,columna] <- nombre;
						nuevaI <- i;
					FinSi
				FinSi
			FinSi
		FinPara
	FinPara
FinSubProceso
SubProceso newI <- RetirarVehiculo(i, matriz, placa)
	Definir fila, columna, j, newI Como Entero;
	Definir control Como Logico;
	control <- falso;
	Para j <- 0 Hasta i - 1 Hacer
		Si control = Falso Entonces
			Si placa = matriz[j,1] Entonces
				Para columna <- 0 Hasta 3 Hacer
					Si columna = 0 Entonces
						matriz[j,columna] <- "";
					SiNo
						Si columna = 1 Entonces
							matriz[j,columna] <- "";
						SiNo
							Si columna = 2 Entonces
								matriz[j,columna] <- "";
							SiNo
								Si columna = 3 Entonces
									matriz[j,columna] <- "";
									control <- Verdadero;
								FinSi
							FinSi
						FinSi
					FinSi
				FinPara
				newI <- i - 1;
			FinSi
		FinSi
	FinPara
	Si control = Falso Entonces
		Escribir "El vehiculo no existe";
	FinSi
FinSubProceso
SubProceso ConsultarVehiculo(i, matriz, placa)
	Definir fila, columna, j Como Entero;
	Definir control Como Logico;
	control <- falso;
	Si i <> 0 Entonces
		Para j <- 0 Hasta 4 Hacer
			Si control = Falso Entonces
				Si placa = matriz[j,1] Entonces
					Para columna <- 0 Hasta 3 Hacer
						Escribir matriz[j,columna] , " " Sin Saltar;
					FinPara
					Escribir " ";
					control <- Verdadero;
				FinSi
			FinSi
		FinPara
		Si control = Falso Entonces
			Escribir "El vehiculo no existe";
		FinSi
	SiNo
		Escribir "No hay vehiculos";
	FinSi	
FinSubProceso
Proceso ciclo7
	
	Definir control Como Logico;
	Definir opcion, i, fila, columna Como Entero;
	Definir placa, marca, nombre, telefono, matriz Como Caracter;
	Dimension matriz[5,4];
	control <- Verdadero;
	i <- 0;
	Para fila <- 0 Hasta 4 Con Paso 1 Hacer
		Para columna <- 0 Hasta 3 Con Paso 1 Hacer
			matriz[fila,columna] <- "";
		FinPara
	FinPara
	
	Mientras control = Verdadero Hacer
		Escribir "Bienvenido al parqueadero El guardian";
		Escribir "1. Ingresar vehiculo";
		Escribir "2. Retirar vehiculo";
		Escribir "3. Consultar vehiculo";
		Escribir "0. Salir";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Si i >= 5 Entonces
					Escribir "Ya no se pueden ingresar mas vehiculos";
				SiNo
					Escribir "Placa: ";
					Leer placa;
						
					Escribir "Marca: ";
					Leer marca;
						
					Escribir "Telefono propietario: ";
					Leer telefono;
					
					Escribir "Nombre propietario: ";
					Leer nombre;
					i <- i + 1;
					i <- IngresarVehiculo(i, matriz, placa, marca, telefono, nombre);
				FinSi
			2:
				Escribir "Ingrese la placa del vehiculo que desea eliminar";
				placa <- "";
				Leer placa;
				i <- RetirarVehiculo(i, matriz, placa);
			3:
				Escribir "Ingrese la placa del vehiculo que desea buscar";
				placa <- "";
				Leer placa;
				ConsultarVehiculo(i, matriz, placa);
			0:
				Escribir "Hasta luego";
				control <- Falso;
			De Otro Modo:
				Escribir "La opcion elegida no existe";
		FinSegun
	FinMientras
	
FinProceso
