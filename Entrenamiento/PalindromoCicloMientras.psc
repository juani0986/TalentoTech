Algoritmo PalindromoCicloMientras
    Definir palabra, invertido Como Cadena
    Definir i Como Entero
    Escribir "Ingrese una palabra"
    Leer palabra
    invertido = "" 
    i = Longitud(palabra) 
    
    // Ciclo Mientras para recorrer la palabra en orden inverso
    Mientras i > 0 Hacer
        invertido = invertido + Subcadena(palabra, i, i)
        i = i - 1
    FinMientras
    
    // Comparación si el texto ingresado es un palíndromo
    Si palabra = invertido Entonces
        Escribir palabra, " es un palíndromo"
    SiNo
        Escribir palabra, " no es un palíndromo"
    FinSi
FinAlgoritmo
//Foro
