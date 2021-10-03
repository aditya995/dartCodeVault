/*
dart positiveNegativeCheck.dart
*/
import 'dart:io';

void main() {
  print('Give input');
  var inputNum = int.parse(stdin.readLineSync()!);
  if (inputNum < 0) {
    print('${inputNum} is Negative');
  } else {
    print('${inputNum} is Positive');
  }
}
