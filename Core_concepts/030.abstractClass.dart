/*
dart 030.abstractClass.dart
*/

//  Abstract class, Abstract method

/*    ******  Best practices for Inheritance  ******
 - parent class properties should be passed like -> Constructor(this.property, this.property); 
  (Never use 'required'(named parameters) in parent constructor) ***
 - (The last one in hierarchy) Child class constructor should have Named parameters
 - In super constructor the all the 'parent class's Named Parameters' be passed 
  in the same sequence given in parent class ***
*/
/// Base class
abstract class Entity {
  // Base Abstract Class, Cannot create instance of this class
  double weight;
  Entity(this.weight);
}

/// `abstract` `Entity` > `abstract` `Gun`
abstract class Gun extends Entity {
  int bulletCapacityInMag;
  int CurrentBulletsInMag;
  String skinName;

  Gun(double weight, this.bulletCapacityInMag, this.CurrentBulletsInMag,
      this.skinName)
      : super(weight);

  // Careful with required keyword, CHILD classes might not be able to access
  // the properties of BASE class in CHILD constructor--
  // Better stick with (this.property) in the constructor for BASE classes
  //  Gun(int currentBulletsInMag, int bulletCapacityInMag,
  //     {required this.bulletCapacityInMag,
  //     required this.CurrentBulletsInMag,
  //     required this.skinName});

  //  Abstract method in class Gun
  // It must be overridden in CHILD class
  /// Gets implemented in [child] classes
  ///
  /// `abstract` `Entity` > `abstract` `Gun`
  void info();

  /// Prints out current stats of the Bullets.
  ///
  /// `abstract` `Entity` > `abstract` `Gun`
  void bulletStats() {
    print('''bulletStats() ->>>
bulletCapacityInMag = ${this.bulletCapacityInMag}, 
CurrentBulletsInMag = ${this.CurrentBulletsInMag}''');
  }
}

/// `abstract` `Entity` > `abstract` `Gun` > `Pistol`
class Pistol extends Gun {
  int fireRate;

  Pistol(
      {required this.fireRate, // Named parameter of this class
      //  Form base class
      //creating named parameters for base class properties
      required int CurrentBulletsInMag,
      required int bulletCapacityInMag,
      required String skinName,
      required double weight})
      // In named parameters list, all properties of parent class must be present
      // and use required for all the properties (Good Practice)
      : super(
          //  maintain the sequence, same as written in the Parent constructor
          weight,
          bulletCapacityInMag,
          CurrentBulletsInMag,
          skinName,
        );

  @override

  /// Prints all the properties of Pistol
  ///
  /// `abstract` `Entity` > `abstract` `Gun` > `Pistol`
  void info() {
    print('''info() ->>>
The parent class is gun inherited class is pistol
#---parent class properties:
bulletCapacityInMag = ${super.bulletCapacityInMag}
CurrentBulletsInMag = ${super.CurrentBulletsInMag}
weight = ${super.weight}
skinName = ${super.skinName}
#---child class properties:
fireRate = $fireRate
''');
  }
}

void main() {
  // Gun g = Gun(); // creating instance of abstract class is prohibited

  //  values for the properties are assigned using CHILD constructor for parent and child class
  Pistol horhe = Pistol(
      skinName: 'Dark52', //  properties inherited from BASE class Gun
      CurrentBulletsInMag: 45, //  properties inherited from BASE class Gun
      fireRate: 40, //  properties of the CHILD class Pistol
      bulletCapacityInMag: 55, //  properties inherited from BASE class Gun
      weight: 12.0); //  properties inherited from BASE class Entity

  horhe.info();
  horhe.bulletStats();
}
