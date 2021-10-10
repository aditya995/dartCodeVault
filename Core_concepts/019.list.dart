/*
dart 019.list.dart
*/

void main() {
  /// Creating list
  //var list = new List(3); //(Not Null safe) Default constructor not available
  var list1 = [1, 2, 3, 2, 'ee', 1, 2, 3, 5];
  var list2 = [9, 8, 7, 8];
  print('$list1');

  list1.length; //returns a number
  //print(list1.reversed); //reverses the list

  /// Access individual items
  list1.first = 3; // value assigned
  list1.last = 1;
  //list2[4] = 7786;  //(error)It does not exist
  list1[4] = 'rr'; // using index
  print(
      '$list1\nFirst element ${list1.first} \nElement at index 3-> ${list1.elementAt(3)}\nLast element ${list1.last}');

  /// add items to list
  //list1.add(value);
  list2 = [
    999,
    889,
    779
  ]; // removes all previous elements and these becames the new items
  list1.add(4); // added at last
  list1.addAll(list2); // takes another list and adds it at last
  //list1.addAll(list1); // can't add itself, throughs error
  list1.insert(1, 99); // adds element after that index
  list1.insertAll(1, list2);
  print(list1);

  ///remove items form list
  //list1.remove(2); // takes out first "2"
  //list1.removeAt(1);  //removes 1th index value
  //list1.clear();  //empties the list

  ///find values
  print(list1.contains(2));
  list1.elementAt(1); // input index, outputs value
  print(list1.indexOf(2));
  print(list1.lastIndexOf(2));
  var search = list1.indexOf(2, 2); // finds 2, starts from 2th index
  print('finds element 2, starts from 2th index: 2 is at index "${search}"');

  /// Iterate through list
  var list = {1, 2, 3, 4};
  list.forEach((element) {
    print('$element');
  });

  var a = list.map((e) => e * 2);
  print(a);
  print(a.elementAt(1));
  a.forEach((element) {
    print(element);
  });

  /// converts into map and stores it in map1
  var map1 = list2.asMap();
  print(map1);
  print(list2); // list2 is still list, map1 gets assigned as map
  var list3 = map1.values.toList(); // maps to list
  print('$list3');
}
