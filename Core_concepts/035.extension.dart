/*
dart 035.extension.dart
*/
extension on String {
  int? toIntorNull() => int.tryParse(this);
}

void main() {
  String num;
  num = ' 378 ';
  var a = num.toIntorNull();
  print(a);
  num = ' 378 p';
  a = num.toIntorNull();
  print(a);
  //  var res = num.toInt();  // this is not in dart
  print(a is String);
}
