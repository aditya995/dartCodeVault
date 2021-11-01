/*
dart 005.type_casting.dart
*/

void main() {
  double dVal = 5.3;
  //  int iVal = dVal;  // No allowed (Strongly typed)
  var someVal1 = 500.50.toInt(); // converting a double value to integer
  print(someVal1);
  var someVal2 = 500.toDouble(); // converting a integer value to double
  print(someVal2);
}
