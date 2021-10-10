/*
dart 025.anonymous_function.dart
*/

void main() {
  var Uname = "aditya";
  var nameP = (name) => {"$name is the user name $Uname"};

  print(nameP(Uname));
  print(nameP);

  var list = {1, 2, 3, 4};
  // list.forEach((element) {
  //   print('$element');
  // });

  var a = list.map((e) => e * 2);
  print(a);
  a.forEach((element) {
    print(element);
  });

  // var a = list.map((e) => e * 2).forEach((element) {
  //   print(element);
  // });
}
