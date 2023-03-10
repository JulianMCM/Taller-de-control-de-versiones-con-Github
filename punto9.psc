SubProceso area <- AreaRectangulo(base, altura)
	Definir area Como Real;
	area <- base*altura;
FinSubProceso
SubProceso area <- AreaTriangulo(base, altura)
	Definir area Como Real;
	area <- base*altura/2;
FinSubProceso
SubProceso area <- AreaTrapecio(base1, base2, altura)
	Definir area Como Real;
	area <- (base1+base2)*altura/2;
FinSubProceso
Proceso punto9
	
	Definir base, altura, base1, base2, area Como Real;
	Definir opcion Como Entero;
	
	Escribir "Bienvenido, por favor seleccione la operacion a realizar";
	Escribir "1. Calcular area del rectangulo";
	Escribir "2. Calcular area del triangulo";
	Escribir "3. Calcular area del trapecio";
	Escribir "0. Salir";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Por favor ingrese los datos necesarios";
			Escribir "Base del rectangulo";
			Leer base;
			Escribir "Altura del rectangulo";
			Leer altura;
			area <- AreaRectangulo(base, altura);
			Escribir "El area del rectangulo es: ", area;
			
			
		2:
			Escribir "Por favor ingrese los datos necesarios";
			Escribir "Base del triangulo";
			Leer base;
			Escribir "Altura del triangulo";
			Leer altura;
			area <- AreaTriangulo(base, altura);
			Escribir "El area del triangulo es: ", area;
			
		3:
			Escribir "Por favor ingrese los datos necesarios";
			Escribir "Base mayor del trapecio";
			Leer base1;
			Escribir "Base menor del trapecio";
			Leer base2;
			Escribir "Altura del trapecio";
			Leer altura;
			area <- AreaTrapecio(base1, base2, altura);
			Escribir "El area del trapecio es: ", area;
			
		0:
			Escribir "Hasta luego";
		De Otro Modo:
			Escribir "La opción elegida no existe";
	FinSegun
	
FinProceso
