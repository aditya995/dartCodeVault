/*
dart 028.constructors.dart
*/
//  default constructor, Initializer list, Named parameters, required keyword, named constructor

class Car {
  String make;
  String model;
  String yearMade;
  bool hasABS;

  ///Default constructor  ***
  // Car(this.make, this.model, this.yearMade, this.hasABS); // can ommit the body too

  //  default constructor with Initializer list ***
  // Car(this.make, this.model, this.yearMade) : hasABS = true {
  //   //  'this.property' in the argument ensures the parameter passed to the constructor assignes the value to corresponding variable of that object
  //   print('constructor called');
  // }

  // default constructor with 'required' and default values for parameters  ***
  //  Writinh the arguments inside {} allows us to pass parameters like (key : value, key : value) pairs in the constructor calls
  Car({required this.make, this.model = '', this.yearMade = ''})
      : hasABS = true {
    //  'this.property' in the argument ensures the parameter passed to the constructor assignes the value to corresponding variable of that object
    print('constructor called');
  }

  /// Null-safety doesnot allow below code, but works perfectly without Null-safety ***
  //  Car(String make, String model, String yearMade, bool _hasABS) {
  //   //  Use 'this' keyword for class properties
  //   this.make = make;
  //   this.model = model;
  //   this.yearMade = yearMade;
  //   this.hasABS = _hasABS; //  Use 'this' keyword for
  // }

  /// Named constructor
  // all porperties must be present, if some absent from this list must be passed to Initializer list

  // named constructor without body ***
  Car.withoutABS(this.make, this.model)

      /// Initializer list  (starts with colon and then comma seperates the properties)
      : yearMade = "2016",
        hasABS = false;

  // named constructor with body ***
  Car.Vox(this.model, this.yearMade, this.hasABS) : make = voxMake() {
    print('"make" set to "Vox" by Vox named constructor');
  }

  Car.Vox33_2002()
      : make = voxMake(),
        model = '99995GG',
        yearMade = '2002',
        hasABS = false {
    print('"All set by Initializer list named constructor');
  }
}

String voxMake() {
  return "Vox";
}

void main() {
  ///Using default constructor
  Car myCar =
      Car(yearMade: '2015', make: 'Aston', model: '54345d'); // Best practice
  //Car myCarN = Car('Aston', '54345d', '2015');  // this way is not permitted for this defaut constructor
  // parameters passed as (key : value, key : value) pairs

  // Can't assign which is already assigned by Initializer list
  print('${myCar.make} ${myCar.model} ${myCar.yearMade} ${myCar.hasABS}');

  ///Using named constructor
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
