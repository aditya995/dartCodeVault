/*
dart 018.increment_decreentOperator.dart
*/

import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);

  /// for loop In incrementing order (Postfix-increment Operator)
  for (int i = 1; i <= a;) {
    print('${i++} in for loop(Postfix-increment Operator)');
  }
  print(' ');

  /// for loop In incrementing order (Prefix-increment Operator)
  for (int i = 1; i <= a;) {
    print('${++i} in for loop(Prefix-increment Operator)');
  }
  print(' ');

  /// for loop In decrementing order (Postfix-decrement Operator)
  for (int i = a; i > 0;) {
    print('${i--} in for loop(Postfix-increment Operator)');
  }
  print(' ');

  /// for loop In decrementing order (Prefix-decrement Operator)
  for (int i = a; i > 0;) {
    print('${--i} in for loop(Prefix-increment Operator)');
  }
}
