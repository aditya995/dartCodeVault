/**
dart 032.static.dart
*/

/// static function and properties in class

abstract class Animal {
  int legs;
  static int countAnimal = 0; //  Static property
  Animal(this.legs) {
    print('##   Parent created/called');
    countAnimal++;
  }

  /// Static function
  static int countInstance() {
    //  Static function can only have static properties
    return countAnimal;
  }

  void info() {
    print(
        "${this.runtimeType} has $legs legs. Total animal created ${Animal.countAnimal}");
  }
}

class Horse extends Animal {
  static int countHorse = 0; //  Static property
  Horse({required int legs}) : super(legs) {
    print('**   Child created');
    countHorse++;
  }
}

class Dove extends Animal {
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
