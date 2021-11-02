/**
dart 032.static.dart
*/

//  static function and properties in class

class gg {
  static int fg = 1;
}

/// Base class
abstract class Animal {
  int legs;

  ///  Static property
  ///
  /// In `Animal` [Class]
  static int countAnimal = 0;
  Animal(this.legs) {
    print('##   Parent created/called');
    countAnimal++;
  }

  /// Static function
  ///
  /// In `Animal` [Class]
  static int countInstance() {
    //  Static function can only have static properties
    return countAnimal;
  }

  /// Prints all properties of `Animal` [Class]
  ///
  /// In `Animal` [Class]
  void info() {
    //  Static members of `any class` can be accessed from anywhere !!
    print(
        "${this.runtimeType} has $legs legs. Total animal created ${Animal.countAnimal} \nHorse = ${Horse.countHorse}, \nDove = ${Dove.countDove}");
  }
}

/// `Animal` > `Horse` [Class]
class Horse extends Animal {
  ///  Static property
  ///
  /// In `Animal` > `Horse` [Class]
  static int countHorse = 0;
  Horse({required int legs}) : super(legs) {
    print('**   Child created');
    countHorse++;
  }
}

/// `Animal` > `Dove` [Class]
class Dove extends Animal {
  ///  Static property
  ///
  /// In `Animal` > `Dove` [Class]
  static int countDove = 0; //  Static property
  Dove({required int legs}) : super(legs) {
    print('**   Child created');
    countDove++;
  }
}

void main() {
  print(
      "Number of Animal objects = countInstance() -> ${Animal.countInstance()}, countAnimal = ${Animal.countAnimal}");
  Horse tedy = Horse(legs: 4);
  tedy.info();
  Dove stuart = Dove(legs: 2);
  stuart.info();
  Dove rocky = Dove(legs: 2);
  rocky.info();
  print(
      "Number of Animal objects = countInstance() -> ${Animal.countInstance()}, countAnimal = ${Animal.countAnimal}");
  print(
      "Number of Horse objects = ${Horse.countHorse}\nNumber of Dove objects = ${Dove.countDove}");
}
