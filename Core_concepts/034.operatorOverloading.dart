/*
dart 034.operatorOverloading.dart
*/
//  Operator overloading in dart
//  +, -, *, /, >=, <=, <, >, ==  (can be overloaded)
//  =, ++, --, ?  (can not be overloaded)

class ObjectWith2Values {
  num x, y;
  ObjectWith2Values(this.x, this.y);
  @override

  /// Prints out all the properties of `ObjectWith2Values` [Class]
  ///
  /// In `ObjectWith2Values` [Class]
  String toString() => 'ObjectWith2Values(x = $x, y = $y)';

  //  ///  Allows to compare different types of object
  // @override
  // operator ==(Object a) {
  //  //  Allows other types data to be compared using '==' operator
  //   if (a is ObjectWith2Values) {
  //     return x == a.x && y == a.y;
  //   }
  //   return false;
  // }

  /// Operator overloading [==]
  ///
  /// Does not allow to compare with different types of objects
  @override
  operator ==(covariant ObjectWith2Values a) {
    //  Doesn't allow other types data to be compared using '==' operator
    if (a is ObjectWith2Values) {
      return x == a.x && y == a.y;
    }
    return false;
  }

  /// Operator overloading [+]
  ///
  /// Adds two objects in defined way here
  operator +(ObjectWith2Values a) {
    return ObjectWith2Values(
      x + a.x,
      y + a.y,
    );
  }

  /// Operator overloading [-]
  ///
  /// Subtracts two objects in defined way here
  operator -(ObjectWith2Values a) {
    return ObjectWith2Values(
      x - a.x,
      y - a.y,
    );
  }

  /// Operator overloading [*]
  ///
  /// Multiplies two objects in defined way here
  operator *(ObjectWith2Values a) {
    return ObjectWith2Values(
      x * a.x,
      y * a.y,
    );
  }

  /// Operator overloading [/]
  ///
  /// Divides two objects in defined way here
  operator /(ObjectWith2Values a) {
    return ObjectWith2Values(
      x / a.x,
      y / a.y,
    );
  }

  /// Operator overloading [>]
  ///
  /// Compares two objects in defined way here
  operator >(ObjectWith2Values a) {
    return x > a.x && y > a.y;
  }

  /// Operator overloading [<]
  ///
  /// Compares two objects in defined way here
  operator <(ObjectWith2Values a) {
    return x < a.x && y < a.y;
  }
}

void main() {
  ObjectWith2Values x = ObjectWith2Values(4.0, 12);
  ObjectWith2Values y = ObjectWith2Values(2, 3);
  print(x + y);
  print(x * y);
  print(x / y);
  print(x > y);
  print(x < y);
  print(x == y);

  /// We overloaded +, -, *, /, <, > But cannot overload "=", so Values remain same in the objects
  print(x); //  It is calling the toString function
  print(y);
}
