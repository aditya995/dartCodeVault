/*
dart 029.inheritance.dart
*/

//  Inheritance (super in child class constructor)
/// Base class

class Entity {
  double weight;
  Entity(this.weight);
}

/// inherited class / Child class of 'Entity'
class Gun extends Entity {
  int bulletCapacityInMag;
  int CurrentBulletsInMag;
  int health;
  String skinName;
  Gun(this.bulletCapacityInMag, this.CurrentBulletsInMag, this.skinName,
      this.health, double weight)
      : super(weight);

  void bulletStats(int bulletCapacityInMag, int CurrentBulletsInMag) {
    print('''bulletCapacityInMag = ${this.bulletCapacityInMag}, 
        CurrentBulletsInMag = ${this.CurrentBulletsInMag}''');
  }

  void info() {
    print('''The Base class is gun inherited class is pistol

base class properties:
bulletCapacityInMag = ${bulletCapacityInMag}
CurrentBulletsInMag = ${CurrentBulletsInMag}
skinName = $skinName
''');
  }
}

/// inherited class / Child class of 'Gun'
/// use 'extends' keyword to inherit from a class
class Pistol extends Gun {
  int fireRate;
  Pistol(this.fireRate)
      : super(0, 0, '', 0,
            0.0); //  **** Bad way of initializing parent class properties ****
}

void main() {
  Gun g = Gun(50, 12, 'Dark45', 100, 12.0); // Parent class object
  //  child class object
  Pistol horhe = Pistol(40); // Can't initialize the parent class properties
  g.info();
  horhe.info();
}
