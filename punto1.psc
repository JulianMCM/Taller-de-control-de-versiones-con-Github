SubProceso confirmar(edad)
	Si edad >= 18 Entonces
		Escribir "Usted es mayor de edad";
	FinSi
	
FinSubProceso
Proceso punto1
	
	Definir edad Como Entero;
	Escribir "Por favor ingrese su edad";
	Leer edad;
	confirmar(edad);
	
FinProceso
