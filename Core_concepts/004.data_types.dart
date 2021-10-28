/*
dart 004.data_types.dart
*/

void main() {
  var integerVal, doubleVal, boolVal, stringVal1, stringLiterals;

  integerVal = 10;
  doubleVal = 10.5;
  boolVal = true;
  stringVal1 = 'String';
  stringLiterals = '''String literals : using single quotes
  Nice way of writting 
  multiline string values
  in one string object without 
  using \n character''';
  print('$stringLiterals');
  stringLiterals = """String literals : using double quotes
  Also can use double quotes
  for string literals.
  """;
  print('$stringLiterals');
  print('$integerVal $doubleVal $boolVal $stringVal1');
  print('$stringVal1[0]'); // string individual characters
}
