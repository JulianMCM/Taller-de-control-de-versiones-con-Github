Proceso punto7
	
	Definir control Como Logico;
	Definir opcion, i Como Entero;
	Definir placa, placa1, placa2, placa3, placa4, placa5, marca, marca1, marca2, marca3, marca4, marca5, nombre, nombre1, nombre2, nombre3, nombre4, nombre5, telefono, telefono1, telefono2, telefono3, telefono4, telefono5 Como Caracter;
	
	control <- Verdadero;
	i <- 0;
	placa <- "";
	placa1 <- "";
	placa2 <- "";
	placa3 <- "";
	placa4 <- "";
	placa5 <- "";
	marca <- "";
	marca1 <- "";
	marca2 <- "";
	marca3 <- "";
	marca4 <- "";
	marca5 <- "";
	telefono <- "";
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	telefono4 <- "";
	telefono5 <- "";
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	nombre4 <- "";
	nombre5 <- "";
	nombre <- "";
	
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
					Escribir "Ingrese el numero de la placa";
					Leer placa;
					Si placa = placa1 O placa = placa2 O placa = placa3 O placa = placa4 O placa = placa5  Entonces
						Escribir "El vehiculo ingresado ya existe";
					SiNo
						Escribir "Ingrese la marca del vehiculo";
						Leer marca;
						Escribir "Nombre del propietario";
						Leer nombre;
						Escribir "Telefono del propietario";
						Leer telefono;
						Si i = 0 Entonces
							placa1 <- placa;
							marca1 <- marca;
							nombre1 <- nombre;
							telefono1 <- telefono;
						SiNo
							Si i = 1 Entonces
								placa2 <- placa;
								marca2 <- marca;
								nombre2 <- nombre;
								telefono2 <- telefono;
							SiNo
								Si i = 2 Entonces
									placa3 <- placa;
									marca3 <- marca;
									nombre3 <- nombre;
									telefono3 <- telefono;
								SiNo
									Si i = 3 Entonces
										placa4 <- placa;
										marca4 <- marca;
										nombre4 <- nombre;
										telefono4 <- telefono;
									SiNo
										placa5 <- placa;
										marca5 <- marca;
										nombre5 <- nombre;
										telefono5 <- telefono;
									FinSi
								FinSi
							FinSi
						FinSi
						i <- i + 1;
					FinSi
				FinSi
			2:
				Escribir "Ingrese la placa del vehiculo que desea retirar";
				placa <- "";
				Leer placa;
				Si placa = placa1 Entonces
					placa1 <- "";
					marca1 <- "";
					nombre1 <- "";
					telefono1 <- "";
					Escribir "Se a retirado el vehiculo correctamente";
					i <- i - 1;
				SiNo
					Si placa = placa2 Entonces
						placa2 <- "";
						marca2 <- "";
						nombre2 <- "";
						telefono2 <- "";
						Escribir "Se a retirado el vehiculo correctamente";
						i <- i - 1;
					SiNo
						Si placa = placa3 Entonces
							placa3 <- "";
							marca3 <- "";
							nombre3 <- "";
							telefono3 <- "";
							Escribir "Se a retirado el vehiculo correctamente";
							i <- i - 1;
						SiNo
							Si placa = placa4 Entonces
								placa4 <- "";
								marca4 <- "";
								nombre4 <- "";
								telefono4 <- "";
								Escribir "Se a retirado el vehiculo correctamente";
								i <- i - 1;
							SiNo
								Si placa = placa5 Entonces
									placa5 <- "";
									marca5 <- "";
									nombre5 <- "";
									telefono5 <- "";
									Escribir "Se a retirado el vehiculo correctamente";
									i <- i - 1;
								SiNo
									Escribir "El vehiculo no existe";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			3:
				Escribir "Ingrese la placa del vehiculo que desea consultar";
				placa <- "";
				Leer placa;
				Si placa = placa1 Entonces
					Escribir "El vehiculo con placas",placa1, " Tiene la siguiente informacion";
					Escribir "Marca: ", marca1;
					Escribir "Propietario: ", nombre1;
					Escribir "Telefono: ", telefono1;
				SiNo
					Si placa = placa2 Entonces
						Escribir "El vehiculo con placas",placa2, " Tiene la siguiente informacion";
						Escribir "Marca: ", marca2;
						Escribir "Propietario: ", nombre2;
						Escribir "Telefono: ", telefono2;
					SiNo
						Si placa = placa3 Entonces
							Escribir "El vehiculo con placas",placa3, " Tiene la siguiente informacion";
							Escribir "Marca: ", marca3;
							Escribir "Propietario: ", nombre3;
							Escribir "Telefono: ", telefono3;
						SiNo
							Si placa = placa4 Entonces
								Escribir "El vehiculo con placas",placa4, " Tiene la siguiente informacion";
								Escribir "Marca: ", marca4;
								Escribir "Propietario: ", nombre4;
								Escribir "Telefono: ", telefono4;
							SiNo
								Si placa = placa5 Entonces
									Escribir "El vehiculo con placas",placa5, " Tiene la siguiente informacion";
									Escribir "Marca: ", marca5;
									Escribir "Propietario: ", nombre5;
									Escribir "Telefono: ", telefono5;
								SiNo
									Escribir "El vehiculo no existe";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			0:
				Escribir "Hasta luego";
				control <- Falso;
			De Otro Modo:
				Escribir "La opcion elegida no existe";
		FinSegun
	FinMientras
FinProceso
