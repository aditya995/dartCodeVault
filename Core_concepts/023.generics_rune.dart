/*
dart 023.generics_rune.dart
*/

void main() {
  var string = 'Runes_in_dart';
  var elements = string.runes;
  print('${elements.elementAt(1)}');
  elements.forEach((element) {
    print('$element, ${String.fromCharCode(element)}');
  });

  // string.runes.forEach((element) {
  //   var char = new String.fromCharCode(element);
  //   print(
  //       '$element, ${char}, ${char.codeUnits}, ${String.fromCharCode(element)}');
  // });
}
