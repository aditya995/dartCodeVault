/*
dart 040.copyingCollections.dart
*/
void main() {
  var list = [0, 1, 2];
  var copy1 = list; // "copy1" is not a new List, It is just referencing "list"
  copy1[0] = 5;
  //  value also changed in "list"
  print(list); //  [5, 1, 2]
  print(copy1); //  [5, 1, 2]

  var copy2 = [...list]; //  "copy2" is not a reference, It is a new List
  copy2[0] = 6;

  print(list); //  [5, 1, 2]
  print(copy2); //  [6, 1, 2]
}
