/*
dart 020.map.dart
*/

void main() {
  //  Map create
  var map1 = {
    1: 2,
    2: '3',
    '4': '3',
    2: '9909',
    98: 8
  }; // for duplicate keys, the value will be assigned
  var map2 = new Map(); // dont have Null safety issue like list
  map2 = {4: 33, 5: 't'};
  print(map1);

  // map1.length; //returns a number

  //  Access individual items
  map1[2] = 'w'; // value assigned using keys
  map1['5'] = 5; // (was not in the map before) It also added the key and values
  map1['6'] = 8;
  print('$map1');
  print(map1.containsKey('5'));

  //  add items to list
  map1.addAll({7: 43, 8: 'yy'});
  print(map1);
  map2 = {
    222: 444,
    5555: 666
  }; // removes all previous elements and these becames the new items
  map2.putIfAbsent('33', () => 444); // inserts if absent
  print(map2);

  //  remove items form map
  //  map1.remove(key); // removes it from map
  //  map1.clear(); //erase all data
  map1.removeWhere((key, value) =>
      (key == 1 || value == 5)); // function for removing elements
  print(map1);

  //  find values
  print(map1.containsKey(2));
  print(map1.containsValue('yy'));
  print(map1.entries.elementAt(0)); // returns the ith pair in map
  print(map1.entries.elementAt(0).key); // returns the ith pair's key in map
  print(map1.entries.elementAt(0).value); // returns the ith pair's value in map
  print(map1.entries
      .elementAt(0)
      .runtimeType); // returns the ith pair's runtimeType in map
  print(map1.entries
      .elementAt(0)
      .hashCode); // returns the ith pair's hashCode in map

  //  Iterate through list
  var map = {1: 4, 2: 5, 3: 6, 4: 7};
  map.forEach((keys, element) {
    print('$keys => $element');
  });
  //  .map(() => value ); method on Map returns a Map!
  //  No need of converting type to original type to avoid errors!!
  var a = map.map((k, e) => MapEntry(k * 2, e * 2)); // manipulate values
  print(a);
  a.forEach((key, element) {
    print('$key :: $element');
  });

  //  converts into list and sets
  var list1 = map1.values.toList(); // will contain duplicate values
  var set1 = map1.values.toSet(); // will not contain duplicate values
  var list2 = map1.keys.toList(); // works both in keys and values
  print('$list1\n$list2\n$set1\n$map1');
}
