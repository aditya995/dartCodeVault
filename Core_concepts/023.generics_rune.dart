/*
dart 023.generics_rune.dart
*/

void main() {
  ///runes in dart
  var string = 'Runes_in_dart';
  var elements = string.runes;

  /// accessing elements using elementsAt() method
  print('${elements.elementAt(1)}');

  /// accessing elements using elementsAt() method in for loop
  for (int i = 0; i < elements.length; i++) {
    print('${elements.elementAt(i)}');
  }

  /// accessing elements in forEach loop
  elements.forEach((element) {
    print('$element, ${String.fromCharCode(element)}');
  });

  string.runes.forEach((element) {
    var char = String.fromCharCode(element);
    print(
        '$element, ${char}, ${char.codeUnits}, ${String.fromCharCode(element)}');
  });

  /// Generics
  // It explicitly specifies the data-type for dynamic storages

  // Lists can potentially take multiple types of data
  var list1 = [1, 2, 't', '8', 4];
  // To make it specific use generics
  // Now it will not compile if list2 contains other than String !!
  var list2 = <String>['a', 'c', 'e', 'r'];
}
