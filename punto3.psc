SubProceso confirmar(edad, nombre, apellidos)
	Si edad >= 18 Entonces
		
		Escribir nombre, " ", apellidos, " usted es mayor de edad, por lo tanto puede entrar a la fiesta";
		
	SiNo
		
		Escribir nombre, " ", apellidos, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa";
		
	FinSi
FinSubProceso

Proceso punto3
	
	Definir nombre, apellidos Como Caracter;
	Definir edad Como Entero;
	Escribir "Por favor ingrese su nombre";
	Leer nombre;
	Escribir "Por favor ingrese su apellido";
	Leer apellidos;
	Escribir "Por favor ingrese su edad";
	Leer edad;
	confirmar(edad, nombre, apellidos);
	
FinProceso
