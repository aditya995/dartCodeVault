/*
dart 027.class.dart
*/

///class, access modifiers

class MyClass {
  /// there is no public, private, protected modifier
  int publicVar = 20; // good naming in dart class
  // identifiers that start with an underscore (_) are visible only inside the library.
  // Every Dart app is a library, even if it doesn’t use a library directive.
  int _privateVar = 10;

  void info() {
    print('Class method. \npublicVar = $publicVar, privateVar = $_privateVar');
  }
}

void main() {
  MyClass firstInstance = new MyClass();

  ///Class properties
  firstInstance._privateVar = 4; // Acts as a public storage
  firstInstance.publicVar = 8; // Acts as a public storage

  /// Class methods
  firstInstance.info();
}
