Proceso punto10
	
	Definir titular Como Caracter;
	Definir cantidad, ingreso, retiro Como Real;
	Definir opcion Como Entero;
	
	titular <- "Julian Mauricio Correa Martinez";
	cantidad <- 300000;
	
	Escribir "Bienvenido a Su banco fiel";
	Escribir "Por favor elija la opcion deseada";
	Escribir "1. Realizar retiro";
	Escribir "2. Realizar ingreso";
	Escribir "3. Consultar saldo";
	Escribir "0. Salir";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Por favor ingrese el monto a retirar";
			Leer retiro;
			
			Si retiro > cantidad Entonces
				Escribir "El valor a retirar supera la cantidad que posee actualmente";
			SiNo
				Escribir "Retirando ", retiro, "$ Por favor espere";
				cantidad <- cantidad-retiro;
				Escribir cantidad, "$ restantes en su cuenta";
			FinSi
		2:
			Escribir "Por favor ingrese el monto a depositar";
			Leer ingreso;
			
			Si ingreso <= 0 Entonces
				Escribir "El valor a ingresar no es valido";
			SiNo
				Escribir "Depositando ", ingreso, "$ a su cuenta";
				cantidad <- cantidad+ingreso;
				Escribir "Actualmente tiene ", cantidad, "$ en su cuenta";
			FinSi
		3:
			Escribir "Actualmente el titular ", titular, " posee ", cantidad, "$ en su cuenta";
		0:
			Escribir "Hasta luego";
		De Otro Modo:
			Escribir "La opción elegida no existe";
	FinSegun
	
	
FinProceso
