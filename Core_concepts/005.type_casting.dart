/*
dart 005.type_casting.dart
*/

void main() {
  double dVal = 5.3;
  //  int iVal = dVal;  // No allowed (Strongly typed)
  var someVal1 = 500.50.toInt(); // converting a double value to integer
  print(someVal1);
  var someVal2 = 500.toDouble(); // converting a integer value to double
  print(someVal2);

  var person = <String, dynamic>{
    'name': 'Jett',
    'roleplay': 'duelist',
    'abilityCount': 3,
  };
  //  Taking `dynamic` converting to specific type
  var abilityCount = person['abilityCount'].toString();

  //  //  Wont convert if given value is not in String format
  //  //  Will produce Runtime error
  //  var abC1 = person['abilityCount'] as String;
  //  print(abC1);

  //  //  Will produce Runtime error if given value is not in String format
  // String abC2 = person['abilityCount'];
  // print(abC2);

  print(abilityCount);
}
