/*
dart 044.functionASarguments.dart
*/

//  function as arguments, inner function, Named function type / alias

//  inner function
void outerFunc(String name) {
  print('Outer function called $name');
  var i = 0;
  void innerFunc() {
    print('Inner function called times: ${++i}');
  }

  innerFunc();
  innerFunc();
}

//  function as argument
void functionAsArg(void Function(String name) argFunc, String agrName) {
  argFunc(agrName);
  //  Notice: "name" is an argument of argFunc Function.
  //  But we can not use it directly as the argument of functionAsArg Function.
  //  var val = name;
}

//  Named function type / alias
typedef greet = String Function(String); // alias / function type definition
//  function return-type & arguments' type are same but bodies are different
String sayHi(String name1) => 'Hi $name1';
String sayBonjour(String name2) => 'Bonjour $name2';
String sayHola(String name3) => 'Hola $name3';
void welcome(greet greetUs, String name) {
  print(greetUs(name));
}

void main(List<String> args) {
  outerFunc('\$\$ Has Inner Function');

  //  function as argument
  functionAsArg(outerFunc, '## Function Passed as arg.');

  //  Named function type / alias
  welcome(sayBonjour, 'Aditya');
  welcome(sayHola, 'Aditya');
}
