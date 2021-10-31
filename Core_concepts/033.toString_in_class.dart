/*
dart 033.toString_in_class.dart
*/

import 'dart:math';

/// Use of toStirng() override in Class
//  To prompt useful information of the object for debug
//  Just print the object and toString() will be called

class Point3D {
  int x, y, z;
  Point3D(this.x, this.y, this.z) {
    print('Point3D constructor called');
  }
  @override
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
  print(agera);
  print(agera.toString());
  //  Even though we didn't define toString() in our class "Car", But it already exists ***
  //  We can override it to prompt useful information

  /// Classes with overridden toString() function
  Point a = Point(2, 2);
  var strPoint = a.toString();
  var a3d = Point3D(4, 4, 4);
  var strPoint3D = a3d.toString();
  List list1 = [1, 2, 4];
  var strlist1 = list1.toString();
  print('${a is Point} ${a3d is Point3D} ${list1 is List}');
  print('$a\n => $strPoint\n$a3d \n => $strPoint3D\n$list1 \n => ${strlist1}');
  //  Notice printing the object is the same as printing it's toString() function
  //  for debug purpose we should define toString function for every Class
}
