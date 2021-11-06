/*
dart 037.shiftOperators.dart
*/

//  Shifting Operators  >>, << ,<=, >=

void main() {
  int a = 13; //  Binary 101
  print((a).toRadixString(2) + '\n'); //  1101
  print((a >> 1).toRadixString(2)); //  110
  print((a << 3).toRadixString(2)); //  1101000
  print(a.toRadixString(2)); //  1101
  a <<= 3; //  Value changed
  print(a.toRadixString(2)); //  1101000
}
