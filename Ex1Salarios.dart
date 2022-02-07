/*Ejercicio 1
Crear un programa con Dart que dado un número de horas trabajadas a la semana
 calcule el salario de un empleado. Después de 40 horas trabajadas se deben 
 pagar horas extra. El salario por hora es de $120 y el salario por hora extra 
 es de $175. Si las horas trabajadas son menores a 27 se debe desplegar un 
 aviso indicando que se le va a levantar un acta administrativa, cuando el 
 empleado acumule 2 actas administrativas se le debe informar de su despido.*/

import 'dart:io';

void main() {
  int close = 0;
  Map<int, int> employes = {};

  while (close == 0) {
    print('Ingrese el id del empleado');
    int employe = int.parse(stdin.readLineSync()!);

    print('Ingrese horas trabajadas');
    int hours = int.parse(stdin.readLineSync()!);

    //calculando sueldo y poniendo excepciones en caso de poner una hora invalida
    while (hours < 0) {
      print('El valor ingresado es invalido, intenta nuevamente');
      hours = int.parse(stdin.readLineSync()!);
    }
    int? salario;
    if (hours > 40) {
      salario = 4800 + ((hours - 40) * 175);
    } else {
      salario = hours * 120;
    }

    var checker = employes[employe];

    if (hours < 27 && checker == null) {
      employes.addAll({employe: 1});
      print('Su sueldo esta semana es de $salario');
      print('Se te ha levantado un acta administrativa');
    } else if (hours < 27 && checker == 1) {
      employes.update(employe, (value) => 2);
      print('Su sueldo esta semana es de $salario');
      print('Se te ha levantado una segunda acta administrativa');
      print('Gracias por trabajar para nosotros, bye bye');
    } else if (checker == 2) {
      print('Esta ID es de un usuario despedido');
    } else {
      print('Su sueldo esta semana es de $salario');
      print('Ha cumplido con sus horas, siga asi!');
    }
    print('');
    print('ingrese una opcion 1: salir, 0:calcular nuevo salario');
    close = int.parse(stdin.readLineSync()!);
    print('');
  }
}
//Universidad Tecnológica Metropolitana
//Jimmi Leonel Ac Ku. 5A. DSM. Desarrollo movil. 06/02/2022
//Maestro: Ing. Joel Chuc
