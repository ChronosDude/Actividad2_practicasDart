/*Ejercicio 2
Crear un programa en Dart que transforme un numero decimal a su equivalencia en
 binario, por ejemplo, si usamos el método de la división sucesiva para 
 calcular el valor binario del número 12, comenzaremos dividiendo 12 entre 2, 
 luego cada cociente resultante se divide por 2 hasta que se obtiene un 
 cociente cuya parte entera es 0.*/

import 'dart:io';

void main() {
  int close = 0;

  while (close == 0) {
    List<int> binary = [];
    print('Ingrese el numero que deseas convertir');
    int number = int.parse(stdin.readLineSync()!);
    int numbersito = number;
    while (number != 0) {
      binary.add(number % 2);
      number = (number / 2).truncate();
    }
    print('El binario del $numbersito es:');
    print(binary.reversed);
    print('');
    print('ingrese una opcion 1: salir, 0:calcular nuevo binario');
    close = int.parse(stdin.readLineSync()!);
    print('');
  }
}
//Universidad Tecnológica Metropolitana
//Jimmi Leonel Ac Ku. 5A. DSM. Desarrollo movil. 06/02/2022
//Maestro: Ing. Joel Chuc