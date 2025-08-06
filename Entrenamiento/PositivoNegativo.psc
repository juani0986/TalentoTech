Algoritmo PositivoNegativo
	Definir n, num, ContPar, ContImpar, ContNeutro Como Entero	
	Escribir "¿Cúantos números desea ingresar?"
	Leer n
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Escribir el número ", i,": "
		Leer num
		Si num > 0 Entonces
			ContPar =ContPar+1
			Escribir "El número es positivo"
		SiNo
			Si num < 0 Entonces
				ContImpar =ContImpar+1
				Escribir "El número es negativo"
			SiNo
				Si num = 0 Entonces
					ContNeutro =ContNeutro+1
					Escribir "El número es neutro"
				Fin Si
			Fin Si
		Fin Si
	Fin Para
	Escribir "Hay ", ContPar, " números positivos"
	Escribir "Hay ", ContImpar, " números negativos"
	Escribir "Hay ", ContNeutro, " números neutros "
FinAlgoritmo
//Foro