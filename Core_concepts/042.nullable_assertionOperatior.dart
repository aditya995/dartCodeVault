/*
dart 042.nullable_assertionOperatior.dart
*/

//  Nullable, Assertion Operator, if null operator, Augmented assignment if null operator

void main(List<String> args) {
  //  Nullable variable (Used "?"[Nullable] Operator")
  int? valA, input = -10;
  if (input >= 0) {
    valA = input;
  } else {
    // Uncomment below to see dart knows valA is not going to be null
    // valA = 0;
  }
  //  "var" are by default Nullable
  var valB = null;

  //  If we know for sure value will not be null, then use "!" [assertion Operator]
  //  Tells dart to let us assign nullable variable's value to non-nullable variable
  // If value is null will result compilation error

  // here if "input" is less than 0, compilation error
  // cause then valA is null
  // int valC = valA!;  // Not recommended writing this way

  //  Avoid compilation error if null is passed as value, use [if null] operator
  //  If the value is null, it assigns a default value
  int valD = valA ?? 100;

  print(valA);
  print(valB);
  print(valD);

  // [Augmented assignment if null operator]
  var someVal = null;
  someVal ??= 10; //  If this value is null then assign 10
}
