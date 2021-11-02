/*
dart 029.inheritance.dart
*/

//  Inheritance (super in CHILD class Constructor, super to access properties of BASE class)

/// Base class
class Entity {
  double weight;
  Entity(this.weight);
}

// use 'extends' keyword to inherit from a class
/// `Entity` > `Gun`
class Gun extends Entity {
  int bulletCapacityInMag;
  int CurrentBulletsInMag;
  int health;
  String skinName;
  Gun(this.bulletCapacityInMag, this.CurrentBulletsInMag, this.skinName,
      this.health, double weight)
      //  super constructor to initialize the parent class properties
      : super(weight);

  /// Prints out current stats of the Bullets.
  ///
  /// `Entity` > `Gun`
  void bulletStats(int bulletCapacityInMag, int CurrentBulletsInMag) {
    print('''bulletCapacityInMag = ${this.bulletCapacityInMag}, 
        CurrentBulletsInMag = ${this.CurrentBulletsInMag}''');
  }

  /// Prints out values of all the properties of `Gun` and `Entity`
  ///
  /// `Entity` > `Gun`
  void info() {
    print('''Properties of Gun class:
bulletCapacityInMag = ${bulletCapacityInMag}
CurrentBulletsInMag = ${CurrentBulletsInMag}
skinName = $skinName

base class properties:
weight = ${super.weight}
''');
//  super used to access the properties of BASE class
  }
}

/// `Entity` > `Gun` > `Pistol`
class Pistol extends Gun {
  int fireRate;
  Pistol(this.fireRate) : super(0, 0, '', 0, 0.0);
  //  **** Bad way of initializing parent class properties ****
  //  Use named parameters instead
}

void main() {
  // Parent class object
  Gun g = Gun(50, 12, 'Dark45', 100, 12.0);

  //  child class object
  Pistol horhe = Pistol(40); // Can't initialize the parent class properties

  g.info();
  horhe.info();
}
