/*
dart 025.anonymous_function.dart
*/

void main() {
  var Uname = "aditya";
  var nameP =
      (name) => {"$name is the user name $Uname"}; // the anonymous function

  print(nameP(Uname)); // calling anonymous function
  print(nameP); //  printing the function
}
