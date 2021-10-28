/**
dart 032.static.dart
*/
class Animal {
  int legs;
  static int countAnimal = 0;
  Animal(this.legs) {
    print('Parent created/called');
    countAnimal++;
  }

  void info() {
    print(
        "${this.runtimeType} has $legs legs. Total animal created ${Animal.countAnimal}");
  }
}

class Horse extends Animal {
  Horse({required int legs}) : super(legs) {
    print('Child created');
  }
}

class Dove extends Animal {
  Dove({required int legs}) : super(legs) {}
}

void main() {
  Horse tedy = Horse(legs: 4);
  tedy.info();
  Dove stuart = Dove(legs: 2);
  stuart.info();
  Dove rocky = Dove(legs: 2);
  rocky.info();
}
