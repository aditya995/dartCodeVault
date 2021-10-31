/*
dart ShiftOperators.dart
*/

/// Shifting Operators  >>, << ,<=, >=

void main() {
  int a = 13; //  Binary 101
  print((a).toRadixString(2));
  print((a >> 1).toRadixString(2));
  print((a << 3).toRadixString(2));
  print(a.toRadixString(2));
  a <<= 3; //  Value changed
  print(a.toRadixString(2));
}
