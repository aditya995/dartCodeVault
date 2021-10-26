/*
dart 004.factorial.dart
*/

import 'dart:io';

// Finding factorial

int factorialCal(int num) {
  var a = 1;
  for (int i = 1; i <= num; i++) {
    a *= i;
  }
  return a;
}

void main() {
  int result = factorialCal(5);
  print(result);
}
