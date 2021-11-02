/*
dart 015.logicalOperators.dart
*/
// >, <, >=, <=, ==, !=, !, &&, ||

void main() {
  int val1, val2, val3, val4;
  val1 = 5;
  val2 = 6;

  // > greater than Operator
  if (val1 > val2) {
    print('val1 grater than val2 (using >)');
  }

  // < less than Operator
  if (val1 < val2) {
    print('val1 less than val2 (using <)');
  }

  // >= grater than or equal to Operator
  if (val1 >= val2) {
    print('val1 grater than or equal to val2 (using >=)');
  }

  // <= less than or equal to Operator
  if (val1 <= val2) {
    print('val1 less than or equal to val2 (using <=)');
  }

  // == is equal to Operator
  if (val1 == val2) {
    print('val1 is equal to val2 (using ==)');
  }

  // == is not equal to Operator
  if (val1 != val2) {
    print('val1 is not equal to val2 (using !=)');
  }

  // not Operator
  if (!(val1 == val2)) {
    print('val1 is not equal to val2 (using !)');
  }

  // not Operator
  if (!(val1 != val2)) {
    print('val1 is equal to val2 (using !)');
  }

  // && Operator
  if ((val1 > val2) && (val1 < 10)) {
    print('val1 is greater than val2 and less than 10 (using &&)');
  }

  // && Operator
  if ((val1 > val2) || (val1 < 10)) {
    print('val1 is greater than val2 or less than 10 (using ||)');
  }
  val3 = 5;
  val4 = 6;
  if (!(val3 != val4))
    print('Equals');
  else
    print('Not equals');
  bool a, b;
  a = b = true;
  if (!(a != b))
    print('bool Equals');
  else
    print('bool Not equals');
}
