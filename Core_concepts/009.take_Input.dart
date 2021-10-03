/*
dart 009.take_Input.dart
*/

import 'dart:io';

void main() {
  int intVal;
  double doubleVal;
  String strVal;

  print('Give Integer Input');
  intVal = int.parse(
      stdin.readLineSync()!); // Takes only integer values Or compilation error
  print('Give Double Input');
  doubleVal = double.parse(
      stdin.readLineSync()!); // Takes only double values Or compilation error
  print('Give String Input');
  strVal =
      stdin.readLineSync()!; // Takes only String values Or compilation error

  print('$intVal $doubleVal  $strVal');
}
