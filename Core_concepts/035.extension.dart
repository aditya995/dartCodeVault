/*
dart 035.extension.dart
*/

//  Extension in dart

//  https://dart.dev/guides/language/extension-methods  Official documentation

//  Extension are a way to add functionality to existing libraries.

/**When you’re using someone else’s API or when you implement a library that’s 
 * widely used, it’s often impractical or impossible to change the API. But you 
 * might still want to add some functionality. 
 * 
 * Takeaway: we can use extensions to add new functionality to existing types.
 * Alongside methods, we can also add getters and setters inside our extensions.
 * But we cannot add instance variables.
 * In other words, we can use extensions to extend the functionality 
 * of our types, but not the underlying data.*/

/**
We could use a double to represent a temperature value.
First off, we can define an extension on double, along some methods to 
convert degrees from celsius to Farhenheit, and viceversa:
*/

/// Adds new methods to `double` which is not possible without extension
extension on double {
  // note: `this` refers to the current value

  /// Extension Method in `double`
  double celsiusToFarhenheit() => this * 1.8 + 32;

  /// Extension Method in `double`
  double farhenheitToCelsius() => (this - 32) / 1.8;
}

/**
 * we should be mindful when we use extensions, and there are cases where it's 
 * best to not use them. This temperature conversion example, is one such case.
 * In fact, nothing stops us from writing code like this:
 * 
 * tempCelsius.celsiusToFarhenheit().celsiusToFarhenheit();
 * This converts the temperature to Farhenheit more than once, which doesn't make sense. 
 * 
 * We better use class for temprature. 
 * 
 * *******  Avoid overloading generic numeric types with domain-spacific logic using extension  *********/

/********** Generic Extension ************/

/**This extension operates on any type T that extends num 
 * (num is a type that represents a number in Dart). 
 * So this extension will work both with collections of type int and double. */

extension IterableNumX<T extends num> on Iterable<T> {
  /// Entension Method for [`int`, `double`] using generic extension
  T sum() {
    // 1. initialize sum
    T sum = (T == int ? 0 : 0.0) as T;
    // 2. calculate sum
    for (var current in this) {
      //  dart is not smart enough to know the expression returns type "T"
      // (sum + current) as T; to convert it to T
      sum = (sum + current) as T;
    }
    return sum;
  }
}

//  extension on list for getter of length property

extension MyFancyList<T> on List<T> {
  /// Creating new `properties` in `List` using generic extension
  int get doubleLength => length * 2;

  /// ` - ` `Operator overloading` using generic extension to `List`
  ///
  /// Inverses the `list` elements
  List<T> operator -() => reversed.toList();
}

/// Adds new methods to `String` which is not possible without extension
extension on String {
  /// Extension Method in `String`
  ///
  /// Dart does not have a method for string to be converted to an integer.
  /// Here extension method comes handy
  int? toIntorNull() => int.tryParse(this);
}

void main() {
  double tempCelsius = 10.0;
  double tempFarhenheit = tempCelsius.celsiusToFarhenheit();
  print('${tempCelsius}C = ${tempFarhenheit}F');

  String num;
  num = ' 378 ';
  var a = num.toIntorNull();
  print(a);
  num = ' 378 p';
  a = num.toIntorNull();
  print(a);
  print(a is String);

  // Using our defined `generic extension` for `Iterables` to create sum() method !!

  var total1 = [1, 2, 3].sum(); // 6
  print('$total1, ${total1.runtimeType}');
  total1 = 1; //  Type infered as int

  var total2 = [1.5, 2.5, 3.5].sum(); // 7.5
  print('$total2, ${total2.runtimeType}');
  total2 = 1.0; //  Type infered as double

  // Using our defined `generic extension` for `List` to create a new property `doubleLength`
  var list1 = <int>[1, 2, 3];

  print('${list1.length} ${list1.doubleLength}');
  print('List $list1 \nReversed list ${-list1}');
}
