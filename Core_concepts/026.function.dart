/*
dart 026.function.dart
*/
import 'dart:io';

///function

void traverseValues(int val, List list1, Map map1) {
  val *= 100;
  print('$val');
  print('List passed in function as "call by value"');
  list1.forEach((element) {
    list1[0] = 10000; // It got called by reference
    stdout.write('$element, ');
  });
  print('\nMap passed in function as "call by value"');
  map1.forEach((key, value) {
    value += ';;'; // call by value *****(exception)*****
    stdout.write('$key => $value, ');
  });
  print('');
}

Map changeValInMap(Map map1) {
  map1.forEach((key, value) {
    value -= 5000; // It got called by reference
    map1[key] = value + 50; // It got called by reference
    stdout.write('${map1[key]}|');
  });
  print('');
  for (var ele in map1.entries) {
    map1[ele.key] += 900; // It got called by reference
    stdout.write('${ele.value}, ');
  }
  print(map1);
  //print(mapRes);
  return map1;
}

void main() {
  int value = 2;
  var list = [1, 2, 3];
  var map = {1: 'a', 2: 'b', 3: 'c'};
  var map2 = {1: 11, 2: 22, 3: 33};
  traverseValues(value, list, map);
  print('In main function $value');
  print('In main function $list');
  print(
      'In main function $map'); // call by value, if map contains string(exception)

  /// lists maps sets are call by reference by default !!!
  changeValInMap(map2);
  print('map2 final values in main function');
  print(map2);
}
