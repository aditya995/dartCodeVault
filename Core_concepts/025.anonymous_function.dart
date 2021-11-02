/*
dart 025.anonymous_function.dart
*/

void main() {
  var Uname = "aditya";
  //  the anonymous function
  var nameP = (name) => {"$name is the user name $Uname"};
  // calling anonymous function
  print(nameP(Uname));
  //  printing the function
  print(nameP);
}
