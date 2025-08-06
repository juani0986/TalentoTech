Algoritmo ParOImpar2
	definir num Como Entero
	definir ContPar Como Entero
	definir ContImpar Como Entero
	Escribir "Ingrese la cantidad de números a verificar"
	Leer n
	ContPar=0
	ContImpar=0
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese el valor"
		Leer num
		Si num % 2 = 0 Entonces
			ContPar= ContPar+1
			//Escribir "El número es par"
		SiNo
			ContImpar= ContImpar+1 
			//Escribir "El número es impar"
		Fin Si
	FinPara	
	Escribir "Hay ", ContPar, " números pares y ", ContImpar, " números impares"
FinAlgoritmo
//Foro