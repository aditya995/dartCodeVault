/*
dart 006.tostring_todouble_toint.dart
 */

void main() {
  int val1a = 7770, val1b = 5550;
  double val2 = 55.026;
  String val3 = 'string';
  print('$val1a $val2 $val3');
  val1a = val2.toInt(); // double to integer
  val2 = val1b.toDouble(); // integer to double
  var val4 = val3; // String can not be converted to int of double !!
  print('$val1a $val2 $val4');
}
