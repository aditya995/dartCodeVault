/*
dart 028.constructors.dart
*/
//  default constructor, Initializer list, Named parameters, required keyword, named constructor
/// Base Class for cars
class Car {
  /// Name of the Manufacturer
  String make;

  /// Model name of the car
  String model;

  /// Release Year of this car
  String yearMade;

  /// Anti-lock Breaking System
  bool hasABS;

  // All porperties must be present, if some absent from this list must be passed to Initializer list
  // /// [Default constructor]
  // Car(this.make, this.model, this.yearMade, this.hasABS); // can ommit the body too

  //  /// [default constructor] with Initializer list
  // Car(this.make, this.model, this.yearMade) : hasABS = true {
  //   //  'this.property' in the argument ensures the parameter passed to the constructor assignes the value to corresponding variable of that object
  //   print('constructor called');
  // }

  /// [default constructor] with `required` (Used to create Named parameters), default values, Named parameters
  /// and Initializer list
  //  Writinh the arguments inside {} allows us to pass parameters like (key : value, key : value) pairs in the constructor calls
  Car({required this.make, this.model = '', this.yearMade = ''})
      : hasABS = true {
    //  'this.property' in the argument ensures the parameter passed to the constructor assignes the value to corresponding variable of that object
    print('constructor called');
  }

  //  //  Null-safety doesnot allow below code, but works perfectly without Null-safety ***
  //  Car(String make, String model, String yearMade, bool _hasABS) {
  //   //  Use 'this' keyword for class properties
  //   this.make = make;
  //   this.model = model;
  //   this.yearMade = yearMade;
  //   this.hasABS = _hasABS;
  // }

  //  Named constructor

  /// [named constructor] without constructor body. `yearMade`, `hasABS` are in Initializer List
  Car.withoutABS(this.make, this.model)

      /// Initializer list  (starts with colon and then comma seperates the properties)
      : yearMade = "2016",
        hasABS = false;

  /// [named constructor] with constructor body. `make` is in Initializer List. Initialized using `voxMake()`
  Car.Vox(this.model, this.yearMade, this.hasABS) : make = voxMake() {
    print('"make" set to "Vox" by Vox named constructor');
  }

  /// [named constructor] All values are set in Initializer List
  Car.Vox33_2002()
      : make = voxMake(),
        model = '99995GG',
        yearMade = '2002',
        hasABS = false {
    print('"All set by Initializer list in Named Constructor');
  }
}

String voxMake() {
  return "Vox";
}

void main() {
  //  Using default constructor
  Car myCar =
      Car(yearMade: '2015', make: 'Aston', model: '54345d'); // Best practice
  //  Car myCarN = Car('Aston', '54345d', '2015');  // this way is not permitted for Named parameters
  //  Named parameters passed as (key : value, key : value) pairs

  // Can't assign which is already assigned by Initializer list
  print('${myCar.make} ${myCar.model} ${myCar.yearMade} ${myCar.hasABS}');

  //  Using named constructor
  Car billyCar = Car.Vox('345d', '2015', true);
  // Can't assign which is already assigned by Initializer list
  print(
      '${billyCar.make} ${billyCar.model} ${billyCar.yearMade} ${billyCar.hasABS}');

  Car kellyCar = Car.withoutABS('Toyota', '3988877FFF');
  // Can't assign which is already assigned by Initializer list
  print(
      '${kellyCar.make} ${kellyCar.model} ${kellyCar.yearMade} ${kellyCar.hasABS}');

  Car kenCar = Car.Vox33_2002();
  // Can't assign which is already assigned by Initializer list
  print('${kenCar.make} ${kenCar.model} ${kenCar.yearMade} ${kenCar.hasABS}');
}
