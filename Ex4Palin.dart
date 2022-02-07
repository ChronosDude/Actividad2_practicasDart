/*Ejercicio 4
Tu trabajo es construir un programa en Dart que reciba una frase la evalué y 
te responda si esta es o no palíndroma en caso de que sea un palíndromo 
también te debe devolver la cantidad de palabras que componen la frase.*/

import 'dart:io';

void main() {
  int close = 0;

  while (close == 0) {
    print('Ingresa la frase que desees evaluar');
    String frase = stdin.readLineSync()!;

    String minus = frase.toLowerCase();
    String sinespa = minus.trim();

    int palabras = 1;

    for (int i = 0; i < sinespa.length; i++) {
      if (sinespa[i] == ' ') {
        palabras++;
      }
    }

    String junto = sinespa.replaceAll(" ", "").replaceAll(",", "");

    String otnuj = junto.split('').reversed.join();

    String esono;

    if (junto == otnuj) {
      esono = "SI es un palindromo.";
    } else {
      esono = "NO es un palindromo.";
    }

    print("Lo que mandaste $esono. Y hay $palabras palabras.");

    print('');
    print('ingrese una opcion 1: salir, 0:Comenzar nuevamente');
    close = int.parse(stdin.readLineSync()!);
    print('');
  }
}
//Universidad Tecnológica Metropolitana
//Jimmi Leonel Ac Ku. 5A. DSM. Desarrollo movil. 06/02/2022
//Maestro: Ing. Joel Chuc