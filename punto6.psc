Proceso punto6
	
	Definir control Como Logico;
	Definir opcion, i Como Entero;
	Definir nombre, nombre1, nombre2, nombre3, telefono, telefono1, telefono2, telefono3, organizacion, organizacion1, organizacion2, organizacion3 Como Caracter;
	
	control <- Verdadero;
	telefono <- "";
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	nombre <- "";
	organizacion <- "";
	organizacion1 <- "";
	organizacion2 <- "";
	organizacion3 <- "";
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
				Si i >= 3 Entonces
					Escribir "Ya no se pueden agregar mas contactos";
				SiNo
					Escribir "Nombre contacto: ";
					Leer nombre;
					Si i = 0 Entonces
						nombre1 <- nombre;
					SiNo
						Si i = 1 Entonces
							nombre2 <- nombre;
						SiNo
							nombre3 <- nombre;
						FinSi
					FinSi
					
					Escribir "Telefono: ";
					Leer telefono;
					Si telefono = telefono1 O telefono = telefono2 O telefono = telefono3 Entonces
						Escribir "El numero ingresado ya existe";
					SiNo
						Si i = 0 Entonces
							telefono1 <- telefono;
						SiNo
							Si i = 1 Entonces
								telefono2 <- telefono;
							SiNo
								telefono3 <- telefono;
							FinSi
						FinSi
					FinSi
					
					Escribir "Organizacion: ";
					Leer organizacion;
					Si i = 0 Entonces
						organizacion1 <- organizacion;
					SiNo
						Si i = 1 Entonces
							organizacion2 <- organizacion;
						SiNo
							organizacion3 <- organizacion;
						FinSi
					FinSi
					i <- i + 1;
				FinSi
			2:
				Escribir "Ingrese el nombre del contacto que desea buscar";
				nombre <- "";
				Leer nombre;
				Si nombre = nombre1 Entonces
					Escribir nombre1, " ", telefono1, " ", organizacion1;
				SiNo
					Si nombre = nombre2 Entonces
						Escribir nombre2, " ", telefono2, " ", organizacion2;
					SiNo
						Si nombre = nombre3 Entonces
							Escribir nombre3, " ", telefono3, " ", organizacion3;
						SiNo
							Escribir "El nombre ingresado no existe";
						FinSi
					FinSi
				FinSi
			3:
				Escribir "Ingrese el numero de telefono que desea eliminar";
				telefono <- "";
				Leer telefono;
				Si telefono = telefono1 Entonces
					telefono1 <- "";
					nombre1 <- "";
					organizacion1 <- "";
					i <- i - 1;
				SiNo
					Si telefono = telefono2 Entonces
						telefono2 <- "";
						nombre2 <- "";
						organizacion2 <- "";
						i <- i - 1;
					SiNo
						Si telefono = telefono3 Entonces
							telefono3 <- "";
							nombre3 <- "";
							organizacion3 <- "";
							i <- i - 1;
						SiNo
							Escribir "El numero ingresado no existe";
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
