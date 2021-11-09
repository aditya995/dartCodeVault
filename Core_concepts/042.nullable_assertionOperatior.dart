/*
dart 042.nullable_assertionOperatior.dart
*/

//  Nullable and Assertion Operator

void main(List<String> args) {
  //  Nullable variable (Used "?"[Nullable] Operator")
  int? valA, input = 10;
  if (input > 0) {
    valA = input;
  } else {
    // Uncomment below to see dart knows It is not a null value
    //  valA = 0;
  }
  var valB = valA; //  "var" are by default Nullable
  //  If certain the value will not be null use "!" [assertion Operator]
  int valC = valA!;
  print(valB);
  print(valC);
}
