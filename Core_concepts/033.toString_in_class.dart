/*
dart 033.toString_in_class.dart
*/

import 'dart:math';

//  Use of toStirng() override in Class
//  To prompt useful information of the object for debug
//  To use this -
//  1.  object.toString();
//  2.  print(object);

class Point3D {
  int x, y, z;
  Point3D(this.x, this.y, this.z) {
    print('Point3D constructor called');
  }
  @override

  /// Prints out all the properties of `Point3D` [Class]
  ///
  /// In `Point3D` [Class]
  String toString() {
    return 'Point3D($x,$y,$z)';
  }
}

class Car {
  int wheels;
  Car(this.wheels);
}

void main() {
  /// Classes without overridden toString() function
  Car agera = Car(4);
  print(agera); //  Prints ->> Instance of 'Car'
  print(agera.toString()); //  Prints ->> Instance of 'Car'
  //  Even though we didn't define toString() in our class "Car", But it already exists ***
  //  We can override it to prompt useful information

  //  Classes with overridden toString() function
  Point a = Point(2, 2);
  var strPoint = a.toString();
  var a3d = Point3D(4, 4, 4);
  var strPoint3D = a3d.toString();
  List list1 = <int>[1, 2, 4];
  var strlist1 = list1.toString();
  print('${a is Point} ${a3d is Point3D} ${list1 is List}');
  print(
      '${a.runtimeType}\n => $strPoint\n${a3d.runtimeType} \n => $strPoint3D\n${list1.runtimeType} \n => ${strlist1}');
  //  Notice printing the object is the same as printing it's toString() function
  //  for debug purpose we should define toString function for every Class
}
