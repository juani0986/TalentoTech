Algoritmo MayorDeTresNumeros
	Definir numero1, numero2, numero3, numMayor, contIgual Como Entero
	Escribir "Ingrese el primer n�mero"
	Leer numero1
	Escribir "Ingrese el segundo n�mero"
	Leer numero2
	Escribir "Ingrese el tercer n�mero"
	Leer numero3
	
	si numero1 = numero2 Entonces
		contIgual= contIgual+1
		si numero2 = numero3 Entonces
			contIgual= contIgual+1	
		Finsi	
	FinSi
	
	si contIgual = 2 Entonces
		Escribir "Son numeros iguales "
	SiNo
		numMayor=0
		
		si numero1 > numMayor Entonces
			numMayor= numero1
		FinSi
		
		si numero2 > numMayor Entonces
			numMayor= numero2
		FinSi
		
		si numero3 > numMayor Entonces
			numMayor= numero3
		FinSi
		Escribir "El n�mero mayor es: ",numMayor
	FinSi
		
	
FinAlgoritmo
//Evaluar si los 3 numeros son iguales
//Foro