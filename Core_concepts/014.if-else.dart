/*
dart 014.if-else.dart
*/

void main() {
  var value1, value2, value3;
  value1 = 5;
  value2 = 15;

  /// Simple if-else
  if (value1 > value2) {
    print('$value1 big');
  } else {
    print('$value2 big'); //15 big // Outputs this
  }

  /// if-else ladder
  value1 = 13;
  value2 = 13;

  ///check which is bigger or print same values if so.
  if (value1 > value2) {
    print('$value1 big');
  } else if (value1 < value2) {
    print('$value2 big');
  } else {
    print('Same values'); // Outputs this
  }

  /// Nested if-else
  value1 = 25;
  value2 = 105;
  value3 = 32;

  ///print biggest value
  if (value1 > value2) {
    if (value1 > value3) {
      print(
          '$value1 big'); // value1 > value2, value1 > value3 => value1 biggest
    } else {
      print(
          '$value3 big'); // value1 > value2, value1 < value3 => value2<value1<value3
    }
  } else {
    if (value2 > value3) {
      print(
          '$value2 big'); // value1 < value2, value2 > value3 => value2 biggest
    } else {
      print(
          '$value3 big'); // value1 < value2, value2 < value3 => value1<value2<value3
    }
  }
}
