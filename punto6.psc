SubProceso IngresarMoto()
	Definir placa, motocicleta, arreglos, ingreso, salida, observaciones Como Caracter;

	Escribir "Por favor digite la placa de la motocicleta a ingresar: ";
	Leer placa;
	
	Escribir "Por favor digite el modelo de la motocicleta: ";
	Leer motocicleta;
	
	Escribir "Por favor digite la fecha de ingreso de la motocicleta: ";
	Leer ingreso;
	
	Escribir "Por favor ingrese las observaciones por parte del cliente dadas a la motocicleta: ";
	Leer observaciones;
	
	Limpiar Pantalla;
	
	Escribir "La informacion ingresada es la siguiente: ";
	Escribir "La motocicleta con placas: ", placa;
	Escribir "De tipo: ", motocicleta;
	Escribir "Fue ingresada el dia: ", ingreso;
	Escribir "Con las siguientes observaciones: ", observaciones;
FinSubProceso
SubProceso SalidaMoto()
	Definir placa, motocicleta, arreglos, ingreso, salida, observaciones, novedades Como Caracter;
	Definir arreglosValidacion Como Logico;
	
	Escribir "Por favor digite la placa de la motocicleta a retirar: ";
	Leer placa;
	
	Escribir "Por favor digite el modelo de la motocicleta: ";
	Leer motocicleta;
	
	Escribir "Por favor digite la fecha de salida de la motocicleta: ";
	Leer salida;
	
	Escribir "Por favor ingrese las novedades hechas a la motocicleta: ";
	Leer novedades;
	
	Escribir "�Se ha hecho algun arreglo que involucre piezas nuevas?";
	Leer arreglosValidacion;
	
	Si arreglosValidacion = Verdadero Entonces
		
		Escribir "Por favor ingrese los repuestos utilizados en el arreglo: ";
		Leer arreglos;
		
		Limpiar Pantalla;
		
		Escribir "La informaci�n es la siguiente: ";
		Escribir "La motocicleta con placas: ", placa;
		Escribir "De tipo: ", motocicleta;
		Escribir "Salio el dia: ", salida;
		Escribir "Con las siguientes novedades: ", novedades;
		Escribir "Y con los nuevos recambios: ", arreglos;
		
	SiNo
		
		Limpiar Pantalla;
		
		Escribir "La informaci�n es la siguiente: ";
		Escribir "La motocicleta con placas: ", placa;
		Escribir "De tipo: ", motocicleta;
		Escribir "Salio el dia: ", salida;
		Escribir "Con las siguientes novedades: ", novedades;
		
	FinSi
FinSubProceso

Proceso punto6
	
	Definir opcion Como Entero;
	
	Escribir "Bienvenido a taller de motos El Maquinista";
	Escribir "Por favor elija la opci�n deseada";
	Escribir "1. Ingresar motocicleta";
	Escribir "2. Salida motocicleta";
	Escribir "0. Salir";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			IngresarMoto();
		2:
			SalidaMoto();
		0:
			Escribir "Hasta luego";
		De Otro Modo:
			Escribir "La opci�n elegida no existe";
	FinSegun
	
FinProceso
