Proceso punto5
	
	Definir precio1, precio2, precio3 Como Real;
	Definir caracteristicasProducto1, caracteristicasProducto2, caracteristicasProducto3, producto1, producto2, producto3, regresar Como Caracter;
	Definir listaProductos, opcion Como Entero;
	Definir correcto Como Logico;
	
	producto1 <- "Analgésicos";
	producto2 <- "Vendas";
	producto3 <- "Botiquin";
	caracteristicasProducto1 <- "Alivian, reducen el dolor";
	caracteristicasProducto2 <- "Vendar heridas";
	caracteristicasProducto3 <- "Equipamiento basico";
	precio1 <- 5999.99;
	precio2 <- 3560.80;
	precio3 <- 10999.89;
	
	Escribir "Elija la opción deseada";
	Escribir "1. Comprar productos";
	Escribir "2. Consultar precios por producto";
	Escribir "3. Devolver producto";
	Escribir "0. Salir";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion hacer
		
		1:
			Escribir "Seleccione los productos que desea comprar";
			Escribir "1. ", producto1;
			Escribir "2. ", producto2;
			Escribir "3. ", producto3;
			Leer listaProductos;
			
			Limpiar Pantalla;
			
			Segun listaProductos hacer
				1:
					Escribir "¿Es correcto el producto a comprar?";
					Escribir "Producto: ", producto1, " ", caracteristicasProducto1;
					Leer correcto;
					
					Limpiar Pantalla;
					
					Si correcto = Verdadero Entonces
						Escribir "Gracias por comprar en nuestra tienda! :)";
						Escribir "Producto comprado: ", producto1;
						Escribir "Total: ", precio1;
					SiNo
						Escribir "El producto seleccionado ", producto1, " no es el deseado, cancelando la compra";
					FinSi
				2:
					Escribir "¿Es correcto el producto a comprar?";
					Escribir "Producto: ", producto2, " ", caracteristicasProducto2;
					Leer correcto;
					
					Limpiar Pantalla;
					
					Si correcto = Verdadero Entonces
						Escribir "Gracias por comprar en nuestra tienda! :)";
						Escribir "Producto comprado: ", producto2;
						Escribir "Total: ", precio2;
					SiNo
						Escribir "El producto seleccionado ", producto2, " no es el deseado, cancelando la compra";
					FinSi
				3:
					Escribir "¿Es correcto el producto a comprar?";
					Escribir "Producto: ", producto3, " ", caracteristicasProducto3;
					Leer correcto;
					
					Limpiar Pantalla;
					
					Si correcto = Verdadero Entonces
						Escribir "Gracias por comprar en nuestra tienda! :)";
						Escribir "Producto comprado: ", producto3;
						Escribir "Total: ", precio3;
					SiNo
						Escribir "El producto seleccionado ", producto3, " no es el deseado, cancelando la compra";
					FinSi
			FinSegun
		2:
			Escribir "Lista de precios por producto";
			Escribir "Precio: ", precio1, " ", producto1, " Caracteristicas: ", caracteristicasProducto1;
			Escribir "Precio: ", precio2, " ", producto2, " Caracteristicas: ", caracteristicasProducto2;
			Escribir "Precio: ", precio3, " ", producto3, " Caracteristicas: ", caracteristicasProducto3;
		3:
			Escribir "Ingrese el producto que desea devolver";
			Leer regresar;
			Escribir "El producto a devolver es: ", regresar;
		0:
			Escribir "Hasta luego";
		De Otro Modo:
			Escribir "La opción elegida no existe";
	FinSegun
	
FinProceso
