/*
dart 006.tempConvert.dart
*/

/*
Fahrenheit to celsius
Formula, c = (f -32) * (5/9);
f = 1.8 * c + 32;
//82.0°F = 27.8°c
*/

import 'dart:io';

void main() {
  print('Give input in fahrenheit');
  var f = double.parse(stdin.readLineSync()!);
  var c = (f - 32) / 1.8;
  print('$f\xb0F = ${c.toStringAsFixed(1)}\xb0c');
  print('Give input in celsius');
  c = double.parse(stdin.readLineSync()!);
  f = 1.8 * c + 32;
  print('$c\xb0F = ${f.toStringAsFixed(1)}\xb0c');
}
