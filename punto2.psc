SubProceso confirmar(edad)
	Si edad < 18 Entonces
		Escribir "Usted aún es un niño(a)";
	FinSi
FinSubProceso

Proceso punto2
	Definir edad Como Entero;
	Escribir "Por favor ingrese su edad";
	Leer edad;
	confirmar(edad);
FinProceso
