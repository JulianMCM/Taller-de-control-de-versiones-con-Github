Proceso punto8
	
	Definir control, aprovado, aprovado1, aprovado2, aprovado3, aprovado4, aprovado5, aprovado6, aprovado7, aprovado8, presentado, presentado1, presentado2, presentado3, presentado4, presentado5, presentado6, presentado7, presentado8 Como Logico;
	Definir opcion, i, j Como Entero;
	Definir usuario, usuario1, usuario2, usuario3, usuario4, usuario5, usuario6, usuario7, usuario8 Como Caracter;
	
	control <- Verdadero;
	aprovado <- Falso;
	aprovado1 <- Falso;
	aprovado2 <- Falso;
	aprovado3 <- Falso;
	aprovado4 <- Falso;
	aprovado5 <- Falso;
	aprovado6 <- Falso;
	aprovado7 <- Falso;
	aprovado8 <- Falso;
	i <- 0;
	presentado <- Falso;
	presentado1 <- Falso;
	presentado2 <- Falso;
	presentado3 <- Falso;
	presentado4 <- Falso;
	presentado5 <- Falso;
	presentado6 <- Falso;
	presentado7 <- Falso;
	presentado8 <- Falso;
	usuario <- "";
	usuario1 <- "";
	usuario2 <- "";
	usuario3 <- "";
	usuario4 <- "";
	usuario5 <- "";
	usuario6 <- "";
	usuario7 <- "";
	usuario8 <- "";
	
	Mientras control = Verdadero Hacer
		Escribir "Bienvenido a la escuela automovilistica El Maestro";
		Escribir "1. Ingresar usuario";
		Escribir "2. Consultar presentados";
		Escribir "3. Consultar resultados";
		Escribir "0. Salir";
		Leer opcion;
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Si i >= 8 Entonces
					Escribir "Ya no se admiten mas usuarios";
				SiNo
					Escribir "Ingrese el nombre del usuario";
					Leer usuario;
					Si usuario = usuario1 O usuario = usuario2 O usuario = usuario3 O usuario = usuario4 O usuario = usuario5 O usuario = usuario6 O usuario = usuario7 O usuario = usuario8  Entonces
						Escribir "Este usuario ya existe";
					SiNo
						Escribir "¿El usuario aprovo el curso?";
						Leer aprovado;
						Escribir "¿El usuario presento el curso?";
						Leer presentado;
						Si i = 0 Entonces
							usuario1 <- usuario;
							presentado1 <- presentado;
							aprovado1 <- aprovado;
						SiNo
							Si i = 1 Entonces
								usuario2 <- usuario;
								presentado2 <- presentado;
								aprovado2 <- aprovado;
							SiNo
								Si i = 2 Entonces
									usuario3 <- usuario;
									presentado3 <- presentado;
									aprovado3 <- aprovado;
								SiNo
									Si i = 3 Entonces
										usuario4 <- usuario;
										presentado4 <- presentado;
										aprovado4 <- aprovado;
									SiNo
										Si i = 4 Entonces
											usuario5 <- usuario;
											presentado5 <- presentado;
											aprovado5 <- aprovado;
										SiNo
											Si i = 5 Entonces
												usuario6 <- usuario;
												presentado6 <- presentado;
												aprovado6 <- aprovado;
											SiNo
												Si i = 6 Entonces
													usuario7 <- usuario;
													presentado7 <- presentado;
													aprovado7 <- aprovado;
												SiNo
													usuario8 <- usuario;
													presentado8 <- presentado;
													aprovado8 <- aprovado;
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						i <- i + 1;
					FinSi
				FinSi
			2:
				Escribir "Consultando usuarios que presentaron el curso";
				Si usuario1 = "" Y usuario2 = "" Y usuario3 = "" Y usuario4 = "" Y usuario5 = "" Y usuario6 = "" Y usuario7 = "" Y usuario8 = ""  Entonces
					Escribir "No hay ningun usuario en el sistema";
				SiNo
					Si presentado1 = Verdadero Entonces
						Escribir "El usuario ", usuario1, " presento el curso";
					SiNo
						Si presentado2 = Verdadero Entonces
							Escribir "El usuario ", usuario2, " presento el curso";
						SiNo
							Si presentado3 = Verdadero Entonces
								Escribir "El usuario ", usuario3, " presento el curso";
							SiNo
								Si presentado4 = Verdadero Entonces
									Escribir "El usuario ", usuario4, " presento el curso";
								SiNo
									Si presentado5 = Verdadero Entonces
										Escribir "El usuario ", usuario5, " presento el curso";
									SiNo
										Si presentado6 = Verdadero Entonces
											Escribir "El usuario ", usuario6, " presento el curso";
										SiNo
											Si presentado7 = Verdadero Entonces
												Escribir "El usuario ", usuario7, " presento el curso";
											SiNo
												Si presentado8 = Verdadero Entonces
													Escribir "El usuario ", usuario8, " presento el curso";
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			3:
				Escribir "Consultando usuarios que aprovaron el curso";
				Si usuario1 = "" Y usuario2 = "" Y usuario3 = "" Y usuario4 = "" Y usuario5 = "" Y usuario6 = "" Y usuario7 = "" Y usuario8 = ""  Entonces
					Escribir "No hay ningun usuario en el sistema";
				SiNo
					Si usuario1 <> "" Y aprovado1= Verdadero Entonces
						Escribir "El usuario ", usuario1, "aprovo el curso";
					SiNo
						Si usuario1 <> "" Entonces
							Escribir "El usuario ", usuario1, "no aprovo el curso";
						FinSi
					FinSi
					Si usuario2 <> "" Y aprovado2= Verdadero Entonces
						Escribir "El usuario ", usuario2, "aprovo el curso";
					SiNo
						Si usuario2 <> "" Entonces
							Escribir "El usuario ", usuario2, "no aprovo el curso";
						FinSi
					FinSi
					Si usuario3 <> "" Y aprovado3= Verdadero Entonces
						Escribir "El usuario ", usuario3, "aprovo el curso";
					SiNo
						Si usuario3 <> "" Entonces
							Escribir "El usuario ", usuario3, "no aprovo el curso";
						FinSi
					FinSi
					Si usuario4 <> "" Y aprovado4= Verdadero Entonces
						Escribir "El usuario ", usuario1, "aprovo el curso";
					SiNo
						Si usuario4 <> "" Entonces
							Escribir "El usuario ", usuario4, "no aprovo el curso";
						FinSi
					FinSi
					Si usuario5 <> "" Y aprovado5= Verdadero Entonces
						Escribir "El usuario ", usuario5, "aprovo el curso";
					SiNo
						Si usuario5 <> "" Entonces
							Escribir "El usuario ", usuario5, "no aprovo el curso";
						FinSi
					FinSi
					Si usuario6<> "" Y aprovado6= Verdadero Entonces
						Escribir "El usuario ", usuario6, "aprovo el curso";
					SiNo
						Si usuario6 <> "" Entonces
							Escribir "El usuario ", usuario6, "no aprovo el curso";
						FinSi
					FinSi
					Si usuario7 <> "" Y aprovado7= Verdadero Entonces
						Escribir "El usuario ", usuario7, "aprovo el curso";
					SiNo
						Si usuario7 <> "" Entonces
							Escribir "El usuario ", usuario7, "no aprovo el curso";
						FinSi
					FinSi
					Si usuario8 <> "" Y aprovado8= Verdadero Entonces
						Escribir "El usuario ", usuario8, "aprovo el curso";
					SiNo
						Si usuario8 <> "" Entonces
							Escribir "El usuario ", usuario8, "no aprovo el curso";
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
