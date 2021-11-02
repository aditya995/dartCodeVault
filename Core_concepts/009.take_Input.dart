/*
dart 009.take_Input.dart
*/

import 'dart:io';

void main() {
  int intVal;
  double doubleVal;
  String strVal;

  print('Give Integer Input');
  // Takes only integer values, otherwise will result a compilation error
  intVal = int.parse(stdin.readLineSync()!);

  print('Give Double Input');
  // Takes only Double values, otherwise will result a compilation error
  doubleVal = double.parse(stdin.readLineSync()!);

  print('Give String Input');
  // Takes only String values, otherwise will result a compilation error
  strVal = stdin.readLineSync()!;

  print('$intVal $doubleVal  $strVal');
}
