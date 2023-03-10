Proceso punto7
	
	Definir peso, estatura, imc Como Real;
	Definir nombre, apellido, cedula Como Caracter;
	
	Escribir "Bienvenido al sistema :)";
	Escribir "Por favor ingrese los datos del paciente";
	Escribir "Nombres: ";
	Leer nombre;
	Escribir "Apellidos: ";
	Leer apellido;
	Escribir "Cedula: ";
	Leer cedula;
	Escribir "Peso en kilogramos: ";
	Leer peso;
	Escribir "Estatura en metros: ";
	Leer estatura;
	
	Limpiar Pantalla;
	
	Escribir "La informacion del paciente es la siguiente: ";
	Escribir "El ciudadano ", nombre, " ", apellido, " con cedula ", cedula, " con peso ", peso, " y una estatura de ", estatura;
	
	Escribir "Ahora se procedera a calcular el IMC del paciente";
	Escribir "...";
	Escribir "...";
	Escribir "...";
	Escribir "...";
	
	Limpiar Pantalla;
	
	imc <- peso/(estatura)^2;
	Escribir imc;
	
	Escribir "El ciudadano ", nombre, " ", apellido, " con cedula ", cedula, " con peso ", peso, " y una estatura de ", estatura;
	
	Si (imc<18.5) Entonces
		Escribir "Tiene un indice de masa corporal de: ", imc, " y actualmente tiene bajo peso";
	SiNo
		Si (imc>=18.5 y imc<=24.9) Entonces
			Escribir "Tiene un indice de masa corporal de: ", imc, " y actualmente tiene un peso normal"; 
		SiNo
			Si (imc>=25 y imc<=29.9) Entonces
				Escribir "Tiene un indice de masa corporal de: ", imc, " y actualmente tiene sobrepeso";
			SiNo
				Si (imc>30) Entonces
					Escribir "Tiene un indice de masa corporal de: ", imc, " y actualmente tiene obesidad";
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
