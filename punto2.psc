SubProceso confirmar(edad)
	Si edad < 18 Entonces
		Escribir "Usted a�n es un ni�o(a)";
	FinSi
FinSubProceso

Proceso punto2
	Definir edad Como Entero;
	Escribir "Por favor ingrese su edad";
	Leer edad;
	confirmar(edad);
FinProceso
