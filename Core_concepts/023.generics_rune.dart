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
    var char = new String.fromCharCode(element); // Method of String Class
    print(
        '$element, ${char}, ${char.codeUnits}, ${String.fromCharCode(element)}');
  });

  /// Generics
  // It explicitly specifies the data-type for some storages

  // Lists can potentially take multiple types of data
  var list1 = [1, 2, 't', '8', 4];
  // To make it specific use generics
  // Now it will not compile if list2 contains other than String !!
  var list2 = <String>['a', 'c', 'e', 'r'];
  //list2 = [3, 4]; // will through error
  //list2[0] = 3; // will through error
  // maps can have generics too
  var map1 = {1: 'e', '3': 4}; //multiple datatypes in keys and values
  var map2 = <int, String>{
    1: 'w',
    2: 'r'
  }; // keys can only be int and values can only be string now!!

  // sets with generics
  var set1 = {'a', 3, 'w'}; // multiple datatypes in values!!
  var set2 = <String>{'a', 'r'}; //Only strings allowed

  // It does not effect dynamic
  dynamic vard1 = [1, 2];
  print(vard1);
  vard1[0] = 'r';
  vard1 = [1, 'e'];
  print(vard1);
  dynamic vard2 = <int>[1, 4, 5]; // First time takes only int as values
  print(vard2);
  vard2 = [
    'a',
    '3',
    4
  ]; //Can assign other types after 1st time, exceptional in dynamic(throughs error in other types)
  print(vard2);
}
