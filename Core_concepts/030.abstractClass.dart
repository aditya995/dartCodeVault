/*
dart 030.abstractClass.dart
*/

//  Abstract class, Abstract method

/*    ******  Best practices for inheritance  ******
 - parent class properties should be passed like -> Constructor(this.property, this.property); 
 (Never use 'required' in parent constructor) ***

 - child class constructor should have it's own and all the parent class properties as 'required' 
 (That makes them all Named parameters) ***

 - In super constructor the all the 'parent class's Named Parameters' be passed in the same sequence given in parent class ***
*/

abstract class Entity {
  // Base Abstract Class
  double weight;
  Entity(this.weight);
}

abstract class Gun extends Entity {
  // Base Abstract Class Child of Entity class
  int bulletCapacityInMag;
  int CurrentBulletsInMag;
  String skinName;
  Gun(double weight, this.bulletCapacityInMag, this.CurrentBulletsInMag,
      this.skinName)
      : super(weight);

  // Careful with required keyword inherited class might not be able to access the properties for code below--
  // Better stick with (this.property) in the constructor
  // Gun(int currentBulletsInMag, int bulletCapacityInMag,
  //     {required this.bulletCapacityInMag,
  //     required this.CurrentBulletsInMag,
  //     required this.skinName});
  /// Abstract method in class "Gun"
  void info();

  /// In Gun class
  void bulletStats() {
    print('''bulletStats() ->>>
bulletCapacityInMag = ${this.bulletCapacityInMag}, 
CurrentBulletsInMag = ${this.CurrentBulletsInMag}''');
  }
}

class Pistol extends Gun {
  /// Child Class of Gun
  int fireRate;
  Pistol(
      //  constructor for Pistol
      {required this.fireRate, // Named parameter of this class
      //  Form base class
      required int CurrentBulletsInMag, //  Named parameters
      required int bulletCapacityInMag, //  Named parameters
      required String skinName, //  Named parameters
      required double weight})
      // In named parameters list, all properties of parent class must be present
      // and use required if necessary
      : super(
          //  super constructor
          //  maintain the sequence, same as written in the Parent constructor
          weight,
          bulletCapacityInMag,
          CurrentBulletsInMag,
          skinName,
        );

  @override
  void info() {
    print('''info() ->>>
The parent class is gun inherited class is pistol
#---parent class properties:
bulletCapacityInMag = ${super.bulletCapacityInMag}
CurrentBulletsInMag = ${super.CurrentBulletsInMag}
weight = ${super.weight}
skinName = $skinName
#---child class properties:
fireRate = $fireRate
''');
  }
}

void main() {
  // Gun g = Gun(); // creating instance of abstract class is prohibited

  //  values for the properties are assigned using constructor for parent and child class
  Pistol horhe = Pistol(
      skinName: 'Dark52', //  properties of parent class
      CurrentBulletsInMag: 45, //  properties of parent class
      fireRate: 40, //  properties of the current class
      bulletCapacityInMag: 55, //  properties of parent class
      weight: 12.0);

  horhe.info();
  horhe.bulletStats();
}
