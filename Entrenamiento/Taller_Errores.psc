Algoritmo Taller_Errores
// estan mal declaeados los arreglos	
//    Definir nombres[5], edades[5], promedio Como Entero
	Definir promedio Como Entero
	dimensionar  nombres[5], edades[5]
    Definir suma, mayor, menor Como Real
    Definir i, n Como Entero
    suma <- 0
    mayor <- 0
    menor <- 100
	
    Escribir "Ingrese la cantidad de estudiantes:"
    Leer n
	
    Para i = 1 Hasta n Hacer
        Escribir "Ingrese el nombre del estudiante ", i, ":"
		//Dar la posición en donde se almacena el valor solicitado
        //Leer nombres
		Leer nombres[i]
        Escribir "Ingrese la edad del estudiante ", i, ":"
        Leer edades[i]
        suma = suma + edades[i]
        Si edades[i] > mayor Entonces
            mayor = edades[i]
        FinSi
        Si edades[i] < menor
			//Dar la posición del valor que se va a asignar
            //menor = edades
			menor = edades[i]
        FinSi
    FinPara
	
    promedio = suma / n
	
    Escribir "El promedio de edades es: ", promedio
    Escribir "La edad mayor es: ", mayor
    Escribir "La edad menor es: ", menor
	
    Escribir "Listado de estudiantes mayores de edad:"
    Para i = 1 Hasta n
        Si edades[i] >= 18
            Escribir nombres[i], " - ", edades[i]
        FinSi
    FinPara
	
    Escribir "¿Desea buscar un estudiante? (si/no)"
    Leer respuesta
    Si respuesta == "si"
        Escribir "Ingrese el nombre a buscar:"
        Leer nombre_busqueda
        encontrado = falso
        Para j = 1 Hasta n
            Si nombres[j] = nombre_busqueda
                Escribir "Edad: ", edades[j]
                encontrado = verdadero
            FinSi
        FinPara
        Si encontrado = falso
            Escribir "No se encontró el estudiante."
        FinSi
    FinSi
	
    Escribir "Fin del programa."
FinAlgoritmo