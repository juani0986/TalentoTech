Algoritmo PositivoNegativo
	Definir n, num, ContPar, ContImpar, ContNeutro Como Entero	
	Escribir "�C�antos n�meros desea ingresar?"
	Leer n
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir "Escribir el n�mero ", i,": "
		Leer num
		Si num > 0 Entonces
			ContPar =ContPar+1
			Escribir "El n�mero es positivo"
		SiNo
			Si num < 0 Entonces
				ContImpar =ContImpar+1
				Escribir "El n�mero es negativo"
			SiNo
				Si num = 0 Entonces
					ContNeutro =ContNeutro+1
					Escribir "El n�mero es neutro"
				Fin Si
			Fin Si
		Fin Si
	Fin Para
	Escribir "Hay ", ContPar, " n�meros positivos"
	Escribir "Hay ", ContImpar, " n�meros negativos"
	Escribir "Hay ", ContNeutro, " n�meros neutros "
FinAlgoritmo
//Foro