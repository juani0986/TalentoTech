Algoritmo busqueda_secuencial2
	Dimensionar l1[10] //declarando una lista a 10 elementos
	Definir valor_buscar Como Entero
	definir encontrado Como Caracter
	
	encontrado <- "nok"
	
	
	//ciclo para --> llenar de manera aleatoria la lista de 10 elementos
	para i <- 1 hasta 10 Hacer
		l1[i] = Aleatorio(1 , 30)
		Escribir l1[i]
	FinPara
	
	//Preguntar que valor desea buscar
	Imprimir "DIGITE EL N�MERO A BUSCAR: "
	leer valor_buscar
	
	//ciclo para --> de recorrer l1 y verificar si el valor_buscar se encuentra entre los elementos
	i <- 1
	Mientras i<= 10 Hacer
		si l1[i] = valor_buscar Entonces
			Imprimir "Dato encontrado"
			i=10
		FinSi
		i = i + 1
	FinMientras	
FinAlgoritmo
