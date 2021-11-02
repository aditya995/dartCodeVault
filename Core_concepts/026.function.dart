/*
dart 026.function.dart
*/
import 'dart:io';

//  function

void traverseValues(int val, List list1, Map map1) {
  print('traverseValues() starts...');
  val *= 100;
  print('$val');

  print('List passed in function as "call by reference"');
  int i = 0;
  list1.forEach((element) {
    list1[i++] = 10000; // Call by reference
    stdout.write('$element - ${list1[i - 1]},');
  });

  print('\nMap passed in function as "call by reference"');
  map1.forEach((key, value) {
    map1[key] += '&&'; // Call by reference
    stdout.write('$key => ${map1[key]} ');
  });
  print('');
  print('traverseValues() ends...\n');
}

Map changeValInMap(Map map1) {
  map1.forEach((key, value) {
    map1[key] = value + 50; // Call by reference
    stdout.write('$key: ${map1[key]},');
  });
  print('');
  for (var ele in map1.entries) {
    map1[ele.key] += 50; // Call by reference
    stdout.write('${ele.key}: ${map1[ele.key]}, ');
  }
  print('\n');
  return map1;
}

void main() {
  int value = 2;
  var list = [1, 2, 3];
  var map = {1: 'a', 2: 'b', 3: 'c'};
  var map2 = {1: 11, 2: 22, 3: 33};
  traverseValues(value, list, map);
  print('In main function value = $value');
  print('In main function list = $list\n');

  //  lists, maps, sets are call by reference by default !!!
  changeValInMap(map2);
  print('In main function map2 = ');
  print(map2);
}
