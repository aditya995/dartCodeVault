/*
dart 010.operators.dart
*/
// +, -, *, /, ~/ (Integer division Op.), %,
// +=, -=, *=, /=, ~/=, ++, --

void main() {
  int valA, valB;
  double valC;
  valA = 2;
  valB = 3;

  // addition operation
  int res = valA + valB;
  print(res);

  // subtraction operation
  res = valA - valB;
  print(res);

  // Multiplication operation
  res = valA * valB;
  print(res);

  // Divide operation
  //  res = valA / valB;  // Cannot assign double values to int variable
  //  will produce error
  valC = valA / valB;
  res = valA ~/ valB; //  Integer division Operator
  // Used integer division Op, Or will error for assigning double to an int variable
  print('$valC $res');

  // Modulus operation
  res = valB % valA; // e.g.(example given) 3%2 = 1
  print(res);
}
