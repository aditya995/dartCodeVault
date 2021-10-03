/*
dart 007.double_precision.dart
*/

void main() {
  double a;
  a = 5.1234567;
  String value = a.toStringAsFixed(5); // double value got converted to string
  print('$value $a'); //here $value has fixed it's decimal places
}
