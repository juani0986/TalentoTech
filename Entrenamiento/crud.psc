Algoritmo crud
	definir op Como Entero
	definir puede_registrar Como Caracter
	definir encontrado Como Caracter
	
	//Punto 1: Modificar la declaración de las listas, de tal manera que sea el usuario el que determine cuantos usuarios registrara. Mediante la variable Cantidad_Reg
	Escribir "¿Cúantos usuario desea ingresar?"
	Leer Cantidad_Reg
	
	//DECLARACIÓN DE VARIABLES
	Dimensionar cedula[Cantidad_Reg], nombres[Cantidad_Reg], apellidos[Cantidad_Reg], edad[Cantidad_Reg], menu[5], menu_Compra[3]
	//Inicialización de la lista menu
	menu[1] <- "1. Registrar usuario"
	menu[2] <- "2. Actualizar usuario"
	menu[3] <- "3. Buscar usuario"
	menu[4] <- "4. Comprar tiquete"
	menu[5] <- "5. Salir"
	
	//Punto5:	En la opción 4 el menú que se presenta en pantalla a través de la opción mostrar, modificarlo de tal manera que pueda ser almacenado en una lista 
	// e impreso a través de un ciclo
	menu_Compra[1] <- "1. España"
	menu_Compra[2] <- "2. Inglaterra"
	menu_Compra[3] <- "3. Ninguno"
	
	
	//imprimir menu
//	para i<-1 hasta 5 Hacer
//		Imprimir menu[i]
//	FinPara
//	Imprimir "Elija la opción: "
//	leer op
	//Mientras op <> 5 Hacer
	//Punto2: Modificar el ciclo mientras principal por el ciclo hacer mientras, revise la lógica del programa.
	Repetir
		para i<-1 hasta 5 Hacer
			Imprimir menu[i]
		FinPara
		
		Imprimir "Elija la opción: "
		leer op 
		puede_registrar = "si"
		Segun op Hacer
			1:
				Imprimir "Digite la cedula del usuario a registrar: "
				leer cedula_usuario
				
				//ciclo para --> VERIFICAR SI EL USUARIO EXISTE
				para i <- 1 hasta Cantidad_Reg Hacer
					si cedula_usuario = cedula[i] Entonces
						puede_registrar = "no"
					FinSi
				FinPara
				
				si puede_registrar = "si" Entonces
					Imprimir "Digite los nombres del usuario a registrar: "
					leer nombres_usuario
					Imprimir "Digite los apellidos del usuario a registrar: "
					leer apellidos_usuario
					Imprimir "Digite la edad del usuario a registrar: "
					leer edad_usuario
					
					//Ciclo mientras --> verificar la posicion vacia para registrar el usuario en cascada 
					//Punto 3:	Para la opción 2 modificar el ciclo PARA que permite la verificación de la existencia de un usuario y posteriormente la actualización de sus datos, de tal manera que finalice el ciclo una vez esto suceda.
					//Mediante ciclo Mientras
					i <- 1
					Mientras i<= Cantidad_Reg Hacer
						si cedula[i] = "" Entonces
							cedula[i] = cedula_usuario
							nombres[i] = nombres_usuario
							apellidos[i] = apellidos_usuario
							edad[i] = edad_usuario
							i=Cantidad_Reg
						FinSi
						i = i + 1
					FinMientras
//					para i <- 1 hasta 3 Hacer
//						si cedula[i] = "" Entonces
//							cedula[i] = cedula_usuario
//							nombres[i] = nombres_usuario
//							apellidos[i] = apellidos_usuario
//							edad[i] = edad_usuario
//						FinSi
//					FinPara
					
					Imprimir ""
					imprimir "USUARIO REGISTRADO"
					Imprimir ""
					
					para i <-1 hasta Cantidad_Reg Hacer
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
					FinPara
				SiNo
					Imprimir ""
					Imprimir "El usuario no puede registrarse"
					Imprimir ""
				FinSi
				
			2:
				encontrado = "nok"
				imprimir "DIGITE LA CEDULA DEL USUARIO AL CUAL SE ACTUALIZARA LOS DATOS: "
				leer cedula_usuario_mod
				
				//Punto 4:	Al igual que en la opción 2, modificar el ciclo PARA que permite la búsqueda de un usuario, de tal manera que una vez el usuario sea encontrado el ciclo finalice
				//Mediante ciclo Mientras
				i <- 1
				Mientras i<= Cantidad_Reg Hacer
					si cedula[i] = cedula_usuario_mod Entonces
						Imprimir "Digite los nuevos nombres: "
						leer nuevo_nombre
						imprimir "Digite los nuevos apellidos: "
						leer nuevos_apellidos
						imprimir "Digite la nueva edad: "
						leer nueva_edad
						
						nombres[i] = nuevo_nombre
						apellidos[i] = nuevos_apellidos
						edad[i] = nueva_edad
						encontrado = "ok"
						i=Cantidad_Reg
					FinSi
					i = i + 1
				FinMientras
				
//				para i <- 1 Hasta 3 Hacer
//					si cedula[i] = cedula_usuario_mod Entonces
//						Imprimir "Digite los nuevos nombres: "
//						leer nuevo_nombre
//						imprimir "Digite los nuevos apellidos: "
//						leer nuevos_apellidos
//						imprimir "Digite la nueva edad: "
//						leer nueva_edad
//						
//						nombres[i] = nuevo_nombre
//						apellidos[i] = nuevos_apellidos
//						edad[i] = nueva_edad
//						encontrado = "ok"
//					FinSi
//				FinPara
				
				si encontrado = "nok" Entonces
					imprimir ""
					Imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO"
					imprimir ""
				FinSi
				
				imprimir ""
				imprimir "USUARIOS REGISTRADOS"
				para i <-1 hasta Cantidad_Reg Hacer
					imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
				FinPara
			3:
				encontrado = "nok"
				Imprimir "Digite la cedula del usuario a buscar"
				leer cedula_usuario
				
				i <- 1
				Mientras i<= Cantidad_Reg Hacer
					si cedula_usuario = cedula[i] Entonces
						imprimir ""
						imprimir "El usuario se encuentra registrado"
						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
						imprimir ""
						encontrado = "ok"
						i=Cantidad_Reg
					FinSi
					i = i + 1				
				FinMientras
				
//				para i <-1 hasta 3 Hacer
//					si cedula_usuario = cedula[i] Entonces
//						imprimir ""
//						imprimir "El usuario se encuentra registrado"
//						imprimir "cedula: ", cedula[i], " NOMBRES: ", nombres[i], " APELLIDOS: ", apellidos[i], " EDAD: ", edad[i]
//						imprimir ""
//						encontrado = "ok"
//					FinSi
//				FinPara
				
				si encontrado = "nok" Entonces
					Imprimir ""
					Imprimir "El usuario no se encuentra registrado"
					Imprimir ""
				FinSi
			4:
				encontrado = "nok"
				imprimir "Cedula del pasajero: "
				leer cedula_pasajero
				
				i = 1
				
				mientras i <= Cantidad_Reg Hacer
					
					si cedula[i] = cedula_pasajero Entonces
						encontrado = "ok"
						//Punto5:	En la opción 4 el menú que se presenta en pantalla a través de la opción mostrar, modificarlo de tal manera que pueda ser almacenado en una lista 
						// e impreso a través de un ciclo
						imprimir "DESEO VIAJAR A: "
						imprimir ""
						//imprimir menu
						para i<-1 hasta 3 Hacer
							Imprimir menu_Compra[i]
						FinPara
						//imprimir "1. España"
						//imprimir "2. Inglaterra"
						//imprimir "3. Ninguno"
						
						imprimir "Cual es su opción: "
						leer opcion_viaje
						
						Segun opcion_viaje Hacer
							opcion 1:
								imprimir "El valor del tiquete es de: 1.000.000"
								imprimir ""
							opcion 2:
								imprimir "El valor del tiquete es de: 2.000.000"
								imprimir ""
							opcion 3:
								imprimir "Hasta la proxima"
								imprimir ""
							De Otro Modo:
								imprimir "OPCIÓN NO VALIDA"
								imprimir ""
						Fin Segun
						
						i = Cantidad_Reg
					FinSi
					i = i + 1
				FinMientras
				
				si encontrado = "nok" Entonces
					imprimir "EL USUARIO NO SE ENCUENTRA REGISTRADO - NO PUEDE COMPRAR TIQUETES"
					imprimir ""
				SiNo
					imprimir "USUARIO ENCONTRADO"
					imprimir ""
					
					Segun opcion_viaje Hacer
						opcion 1:
							imprimir "Y TIENE UN VIAJE PENDIENTE A ESPAÑA"
							imprimir ""
						opcion 2:
							imprimir "Y TIENE UN VIAJE PENDIENTE A INGLATERRA"
							imprimir ""
						opcion 3:
							imprimir "Y NO COMPRO NINGUN TIQUETE"
							imprimir ""
						De Otro Modo:
							imprimir "Y TOMO UNA OPCIÓN NO VALIDA"
							imprimir ""
					Fin Segun
				FinSi
			De Otro Modo:
				mostrar "OPCIÓN INCORRECTA, ESCOJA ENTRE 1 A 5"
		Fin Segun
		
		//Punto2: Modificar el ciclo mientras principal por el ciclo hacer mientras, revise la lógica del programa.
		//IMPRIMIENDO NUEVAMENTE EL MENU PARA ACTUALIZAR LA VARIABLE OP
//		para i<-1 hasta 5 Hacer
//			Imprimir menu[i]
//		FinPara
//		
//		Imprimir "Elija la opción: "
//		leer op
		
	//FinMientras
	Hasta Que op = 5
	
	
FinAlgoritmo