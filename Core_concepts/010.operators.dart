/*
dart 010.operators.dart
*/

void main() {
  int valA, valB;
  double valC;
  valA = 2;
  valB = 3;

  /// addition operation
  int res = valA + valB;
  print(res);

  /// subtraction operation
  res = valA - valB;
  print(res);

  /// Multiplication operation
  res = valA * valB;
  print(res);
  //res = valA / valB;  // Cannot assign double values to int variable
  ///will produce error in line:16

  /// Divide operation
  valC = valA / valB;
  print(valC);

  /// Modulus operation
  res = valB % valA; // e.g.(example given) 3%2 = 1
  print(res);
}
