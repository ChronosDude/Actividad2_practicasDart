/*Ejercicio 3
Tu trabajo es construir un programa en Dart que te ayude a calcular el IMC y 
te devuelva la composición corporal de acuerdo al resultado obtenido; este 
programa debe recibir tu altura en centímetros y tu peso en kilogramos.*/

import 'dart:io';

void main() {
  int close = 0;

  while (close == 0) {
    print('Ingresa la altura en centímetros');
    int height = int.parse(stdin.readLineSync()!);

    print('Ingrese el peso en kilogramos');
    int weight = int.parse(stdin.readLineSync()!);

    double imc = weight / ((height / 100) * (height / 100));

    String imcs = imc.toStringAsFixed(4);

    if (imc < 18.5) {
      print('IMC = $imcs, inferior la normal');
    } else if (imc >= 18.5 && imc < 25.0) {
      print('IMC = $imcs, normal');
    } else if (imc >= 25.0 && imc < 30.0) {
      print('IMC = $imcs,superior al normal');
    } else {
      print('IMC = $imcs,  sobrepeso');
    }

    print('');
    print('ingrese una opcion 1: salir, 0:Comenzar nuevamente');
    close = int.parse(stdin.readLineSync()!);
    print('');
  }
}
//Universidad Tecnológica Metropolitana
//Jimmi Leonel Ac Ku. 5A. DSM. Desarrollo movil. 06/02/2022
//Maestro: Ing. Joel Chuc