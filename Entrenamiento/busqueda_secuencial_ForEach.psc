Algoritmo busqueda_secuencial_ForEach
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
	
	Para Cada i de L1 Hacer
		si i = valor_buscar Entonces
			encontrado = "ok"
		FinSi
	FinPara
	
	//CONDICIONAL para verificar si el valor_buscar fue encontrado en la lista
	si encontrado = "ok" Entonces
		Escribir "EL DATO SE HA ENCONTRADO"
	SiNo
		Escribir  "El DATO NO SE HA ENCONTRADO"
	FinSi
FinAlgoritmo