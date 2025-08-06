Algoritmo Palindromo
	Definir palabra, invertida como cadena
	Escribir "Ingrese una palabra"
	leer palabra
	//Inicialización es opcional
	invertida=""
	
	//ciclo para recorrer a la inversa la palabra ingresada por el usuario
	para i<- Longitud(palabra) Hasta 1 Con Paso -1 Hacer
		invertida = invertida + Subcadena(palabra,i,i)
	FinPara
	
	//Comparacion si el texto ingresado por el usuraio es un palindromo
	Si palabra = invertida Entonces
		Escribir palabra," Es un palindromo"
	SiNo
		Escribir palabra," No es un palindromo"	
	Fin Si
	
FinAlgoritmo
