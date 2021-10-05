/*
dart 010.operators.dart
*/

void main() {
  int valA, valB;
  double valC;
  valA = 2;
  valB = 3;
  int res = valA + valB;
  print(res);
  res = valA - valB;
  print(res);
  res = valA * valB;
  print(res);
  //res = valA / valB;  // Cannot assign double values to int variable
  ///will produce error in line:16
  valC = valA / valB;
  print(valC);
  res = valB % valA; // ex. 3%2 = 1
  print(res);
}
