/*
dart 029.abstractClass.dart
*/

//  Abstract class, Abstract method

abstract class Gun {
  // Abstract class
  int bulletCapacityInMag;
  int CurrentBulletsInMag;
  int health;
  String skinName;
  Gun(this.bulletCapacityInMag, this.CurrentBulletsInMag, this.skinName,
      this.health);

  /// Careful with required keyword inherited class might not be able to access the properties for code below--
  /// Better stick with (this.property) in the constructor
  // Gun(int currentBulletsInMag, int bulletCapacityInMag,
  //     {required this.bulletCapacityInMag,
  //     required this.CurrentBulletsInMag,
  //     required this.skinName});

  void bulletStats(int bulletCapacityInMag, int CurrentBulletsInMag) {
    print('''bulletCapacityInMag = ${this.bulletCapacityInMag}, 
        CurrentBulletsInMag = ${this.CurrentBulletsInMag}''');
  }

  void info(); // Abstract method
}

class Pistol extends Gun {
  int fireRate;
  Pistol(
      //  constructor for Pistol
      {required this.fireRate, // property of this class
      //  properties form base class
      required int CurrentBulletsInMag,
      required int health,
      required int bulletCapacityInMag,
      required String skinName})
      // in the named parameter list, all properties of parent class must be present
      // and use required if necessary
      : super(
          //  super constructor
          //  maintain the sequence, same as written in the Parent constructor
          bulletCapacityInMag,
          CurrentBulletsInMag,
          skinName,
          health,
        );

  @override
  void info() {
    print('''The Base class is gun inherited class is pistol

base class properties:
bulletCapacityInMag = ${super.bulletCapacityInMag}
CurrentBulletsInMag = ${super.CurrentBulletsInMag}
skinName = $skinName

child class properties:
fireRate = $fireRate
''');
  }
}

void main() {
  /// Gun g = Gun(); // creating instance of abstract class is prohibited

  //  values for the properties are assigned using constructor for parent and child class
  Pistol horhe = Pistol(
    skinName: 'Dark52', //  properties of parent class
    CurrentBulletsInMag: 45, //  properties of parent class
    fireRate: 40, //  properties of the current class
    bulletCapacityInMag: 55, //  properties of parent class
    health: 100, //  properties of parent class
  );

  horhe.info();
}
