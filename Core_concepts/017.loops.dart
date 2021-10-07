/*
dart 017.loops.dart
*/
import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);

  /// for loop In incrementing order
  for (int i = 1; i < a; i++) {
    //  initial statement; condition, value update statement
    print('$i in for loop(incrementing)');
  }
  print(' ');

  /// for loop In decrementing order
  for (int i = a; i > 0; i--) {
    //  initial statement; condition; value update statement
    print('$i in for loop(decrementing)');
  }
  print(' ');

  /// while loop In incrementing order
  int i = 1;
  while (i < a) {
    // condition
    print('$i in while loop(incrementing)');
    i++;
  }
  print(' ');

  ///while loop In decrementing order
  i = a;
  while (i > 0) {
    // condition
    print('$i in while loop(decrementing)');
    i--;
  }
  print(' ');

  /// do while loop In incrementing order
  i = 1;
  do {
    // condition
    print('$i in do while loop(incrementing)');
    i++;
  } while (i < a);
  print(' ');

  /// do while loop In decrementing order
  i = a;
  do {
    // condition
    print('$i in do while loop(decrementing)');
    i--;
  } while (i > 0);
}
