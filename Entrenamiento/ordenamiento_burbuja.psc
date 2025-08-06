Algoritmo ordenamiento_burbuja
	Definir n, aux Como Entero
	Imprimir "Ingrese el tamaño de la lista: "
	Leer n
	
	Dimensionar L1[n]
	
	//Asignando valores a la lista L!
	para i <- 1 Hasta n Hacer
		L1[i] = Aleatorio(1, 30)
		Escribir L1[i]
	FinPara
	
	//Realizando ordenamiento en burbuja
	para i <- 1 Hasta n - 1 Hacer
		para j <- 1 Hasta n -1 Hacer
			si l1[j] > L1[j + 1] Entonces
				aux <- L1[j]
				L1[j] <- L1[j + 1]
				L1[j + 1] = aux
			FinSi
		FinPara
	FinPara
	
	Escribir "Lista ordenada"
	para i <- 1 hasta n Hacer
		Escribir L1[i]
	FinPara
	
FinAlgoritmo
