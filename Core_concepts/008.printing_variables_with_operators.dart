/*
dart 008.printing_variables_with_operators.dart
 */

void main() {
  var val1, val2, val3, val4;
  val1 = 44;
  val2 = 55;
  val3 = '44';
  val4 = '55';
  print(
      '${val1 + val2} \n${val3 + val4}'); //Generally ${varName} is used inside of quotes to print values

  print(val1 + val2);
  // It can be written without the quote, cause they are of same types
  print(val3 + val4);
  // It can be written without the quote, cause they are of same types

  ///print(val1 + val3);
  ///This will through error, cause val1 is integer & val3 is String. can not perform (+) operation.
}
