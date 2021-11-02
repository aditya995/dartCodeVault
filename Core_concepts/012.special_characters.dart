/*
dart 012.special_characters.dart
*/

//Reference
//https://chromium.googlesource.com/external/github.com/dart-lang/html/+/refs/tags/0.13.0/lib/src/constants.dart

void main() {
  String specialChar = '''\xa9 copyright \xa2 
cent \u03b2 Beta \xB0 degree\fLine feed added\n-----------------NewLine\rCarriage return''';
  print('$specialChar');
}
//  escape sequence characters
//  starts with '\'
//  \n  New line  //  always use this
//  \f  Line feed //  for some fency design!
//  \r  Carriage return //  Better be avoided