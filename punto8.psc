Proceso punto8
	
	Definir pedidoTorta, pedidoSabor, pedidoDecoracion, pedidoPorciones, torta1, torta2, torta3, saborA, saborB, decoracionA, decoracionB Como Caracter;
	Definir porcionesA, porcionesB, opcion, numeroVentas Como Entero;
	
	torta1 <- "Torta de dos pisos";
	torta2 <- "Torta fría";
	torta3 <- "Torta de tres pisos";
	saborA <- "Chocolate";
	saborB <- "Mora";
	decoracionA <- "Pedacitos de chocolate";
	decoracionB <- "Coco rayado";
	porcionesA <- 8;
	porcionesB <- 4;
	numeroVentas <- 0;
	
	Escribir "Bienvenido a la pasteleria de Don Carlos";
	Escribir "Elija la accion deseada";
	Escribir "1. Registrar pedido";
	Escribir "2. Tortas disponibles";
	Escribir "3. Ventas del dia de hoy";
	Escribir "0. Salir";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Por favor ingrese los detalles del pedido";
			Escribir "Tipo de torta: ";
			Leer pedidoTorta;
			Escribir "Sabor: ";
			Leer pedidoSabor;
			Escribir "Decoraciones: ";
			Leer pedidoDecoracion;
			Escribir "Porciones: ";
			Leer pedidoPorciones;
			
			Limpiar Pantalla;
			
			Escribir "Los detalles del pedido son los siguientes: ";
			Escribir "Tipo de torta: ", pedidoTorta;
			Escribir "Sabor: ", pedidoSabor;
			Escribir "Decoraciones: ", pedidoDecoracion;
			Escribir "Porciones: ", pedidoPorciones;
			numeroVentas <- numeroVentas + 1;
			
		2:
			Escribir "Esta es una lista de las tortas disponibles: ";
			Escribir torta1, " sabor ", saborA, " con ", decoracionA, " de ", porcionesA, " porciones";
			Escribir torta2, " sabor ", saborB, " con ", decoracionA, " de ", porcionesB, " porciones";
			Escribir torta3, " sabor ", saborA, " con ", decoracionB, " de ", porcionesB, " porciones";
		3:
			Escribir "Ventas realizadas el dia de hoy: ";
			Escribir "Se han vendido un total de ", numeroVentas, " el dia de hoy";
			
		0:
			Escribir "Hasta luego";
		De Otro Modo:
			Escribir "La opción elegida no existe";
	FinSegun
FinProceso
