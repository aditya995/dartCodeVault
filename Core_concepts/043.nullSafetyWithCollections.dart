/*
dart 043.nullSafetyWithCollections.dart
*/

//  nullable with generics, conditional access operator

void main() {
  //  This List is now of String type, that can have null values!!
  var list = <String?>['pizza', 'pasta', null];
  List cities = <String?>['dhaka', 'rupgonj', null];

  for (var item in list) {
    if (item != null) {
      print(item.toUpperCase());
    }
    //  Can not use uppercase on null value!!, must check for null before-hand
    //  print(item.toUpperCase());
  }
  print('-------');
  for (var item in cities) {
    if (item != null) {
      print(item.toUpperCase());
    }
    //  [Conditional access operator] used
    //  This will not call the function, instead will print "null"
    print(item?.toUpperCase());
  }
}
