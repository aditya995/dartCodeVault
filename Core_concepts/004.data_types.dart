/*
dart 004.data_types.dart
*/

/*Dart 2 is statically typed. With its combination of static and runtime checks, 
Dart has a sound type system, which guarantees that an expression of one type 
cannot produce a value of another type.*/

void main() {
  // Commonly used: num, int (extends num), double (extends num), String, bool
  int a = 0;
  double b = 2.3;

  // num can have either (int or double) as values
  num number1 = 5;
  num number2 = 3.5;

  bool boolVAl = true;
  String str = 'Hello';
  print('$a, $b, $number1, $number2, $boolVAl, $str');

  /**The analyzer can infer types for fields, methods, local variables, and most
   *  generic type arguments. When the analyzer doesn't have enough information 
   * to infer a specific type, it uses the dynamic type. */
  // Example below:

  //  All the variables are infered as dynamic!
  //  Dont declare multiple variables using var keyword in same line like this
  var integerVal, doubleVal, boolVal, stringVal1; // (Bad Practice ***)
  integerVal = 10;
  integerVal = '5'; //  This is allowed cause type is dynamic
  doubleVal = 10.5;
  boolVal = true;

  stringVal1 = 5;
  stringVal1 = 'String';
  print('$integerVal $doubleVal $boolVal $stringVal1');
  print('$stringVal1[0]'); // string individual characters

  var stringLiterals = ""; //  Type is infered as String (Good Practice ***)
  //  stringLiterals = 4; // Not allowed, type already infered as String
  stringLiterals = '''String literals : 
  New line without using new-line character''';
  print('$stringLiterals');

  stringLiterals = """String literals : 
  New line without using new-line character""";
  print('$stringLiterals');
}
