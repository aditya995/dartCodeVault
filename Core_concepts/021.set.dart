/*
dart 021.set.dart
*/
import 'dart:io';

void main() {
  /// Create sets
  var set1 = {1, 3, 2, 5};
  var set2 = {1, 6, 7};
  print(set1);
  print(set1.length);

  /// accessing elements
  print(set1.first);
  print(set1.last);
  print(set1.elementAt(1));

  /// insert items to list
  set1.add(55);
  set1.addAll(set1); // we can add it to itself(mostly useless)
  set1.addAll(set2);
  print('$set1\n$set2');

  ///  Remove items
  //set1.clear();
  set1.remove(55);
  var set3 = set1.difference(set2);
  print('$set1 $set3');
  set1.removeAll(set2);
  print(set1);

  /// find elements
  print(set1.contains(3));
  print(set1.where((element) => element == 3)); //find using functions
  var seta = {1, 3, 2, 5};
  var setb = {1, 6, 7};
  print(seta.union(setb));
  print(seta.intersection(setb));
  print(seta.difference(setb));

  /// Iterate through list
  var set = {1, 2, 3, 4};
  set.forEach((element) {
    stdout.write('$element');
  });
  var a = set.map((e) => e * 2); // manipulate values
  print(a);
  a.forEach((element) {
    print(element);
  });

  ///Converts to list (no mathod for toMap())
  print(set1.toList());

  /// Spread operator
  var sety = {13, 15, 17};
  var setx = {...sety, 14, 16, 18};
  print('$setx $sety');
}
