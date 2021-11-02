/*
dart 031.interfaceVSmixin.dart
*/
// Interface, mixin

/// Base class
class Base1 {
  int varInbase1;
  int var2Inbase1;
  Base1(this.varInbase1, this.var2Inbase1);

  /// Prints all properties of `Base1`
  ///
  /// In `Base1`
  void printV() {
    print(
        'In class Base1 -> varInbase1 = $varInbase1, var2Inbase1 = $var2Inbase1');
  }
}

/// Base class
class Base2 {
  int varInbase2;
  Base2(this.varInbase2);

  /// Prints all properties of `Base2`
  ///
  /// In `Base2`
  void printV() {
    print('In class Base2 -> varInbase2 = $varInbase2');
  }
}

// Properties and methods must be overridden in interface
// To create interface use 'implements' keyword
// Multiple classes can be implemented into one class
//  It's like having multiple parent class

/// [Interface] [`Base1`, `Base2`] => `InterfaceOfBase`
class InterfaceOfBase implements Base1, Base2 {
  int valInInterfaceOfBase;

  InterfaceOfBase(this.valInInterfaceOfBase, this.varInbase1, this.var2Inbase1,
      this.varInbase2);

  @override
  int varInbase1;
  int var2Inbase1;
  int varInbase2;

  @override

  /// Prints all properties of `InterfaceOfBase`
  ///
  /// In [Interface] [`Base1`, `Base2`] => `InterfaceOfBase`
  void printV() {
    print(
        '''In class InterfaceOfBase ->(Overridden from Base1 & Base2) varInbase1 = $varInbase1,  var2Inbase1 = $var2Inbase1, varInbase2 = $varInbase2
valInInterfaceOfBase = $valInInterfaceOfBase \n\n''');
  }
}

/// Mixin with class
//  Mixin can not have constructor for initializing properties
mixin mix1 {
  /// In `mix1`
  int mixinvar1 = 10;

  /// Prints all properties of `mix1`
  ///
  /// In `mix1`
  void info() {
    print('In [mix1] (info) Var1 = $mixinvar1');
  }
}
mixin mix2 {
  /// In `mix2`
  int mixinvar1 = 11;

  /// In `mix2`
  int mixinvar2 = 22;

  /// Prints all properties of `mix2`
  ///
  /// In `mix2`
  void info() {
    print('In [mix2] (info) mixinvar1 = $mixinvar2, Var1 = $mixinvar2');
  }

  /// Prints value of `mixinvar2`
  ///
  /// In `mix2`
  void mix2Info() {
    print('In [mix2] (mix2Info) Var2 = $mixinvar2');
  }
}

//  Both multiple mixins and multiple interfaces can be invoked into a class
//  properties and functions of mixins gets inherited

/// [Interface] [`Base1`, `Base2`, `InterfaceOfBase`], [mixin] [`mix2`, `mix1`] => `BaseClass`
class BaseClass with mix2, mix1 implements Base1, Base2, InterfaceOfBase {
  int varBaseClass;

  BaseClass(this.varBaseClass, this.varInbase1, this.var2Inbase1,
      this.varInbase2, this.valInInterfaceOfBase);

  //  For the interfaces all the properties and functions got overridden
  @override
  int varInbase1;
  int var2Inbase1;
  int varInbase2;
  int valInInterfaceOfBase;

  @override

  /// Prints all the properties of `BaseClass`
  ///
  /// In [Interface] [`Base1`, `Base2`, `InterfaceOfBase`], [mixin] [`mix2`, `mix1`] => `BaseClass`
  void printV() {
    print('''In class BaseClass mixin properties got inherited.
${this.mixinvar1}, ${this.mixinvar2}''');
//  Function definitions in mixin gets replaced with the latest definitions
//  according to the sequence in the class definitoin. // class BaseClass with mix2, mix1{}
    print(
        '''Function definition of info() is overridden by "mix1" info() definition''');
  }
}

void main() {
  //  Objects of base classes
  Base1 b1 = Base1(10, 20);
  print(b1.varInbase1);
  print(b1.var2Inbase1);
  b1.printV();
  Base2 b2 = Base2(30);
  print(b2.varInbase2);
  b2.printV();

  //  Object of interface
  InterfaceOfBase interfaceInstance = InterfaceOfBase(40, 10, 20, 30);
  print(interfaceInstance.varInbase1);
  print(interfaceInstance.var2Inbase1);
  print(interfaceInstance.varInbase2);
  print(interfaceInstance.valInInterfaceOfBase);
  interfaceInstance.printV();

  //  Mixin can not have objects of it's own
  //  But class which has mixin can create objects
  BaseClass withMixin_interface = BaseClass(100, 10, 20, 30, 40);

  //  Problem with mixin is The properties inherited form mixin can not be passed
  //  as parameters using constructor, Values must be initialized in the mixin definition
  withMixin_interface.printV();

  // Function definition overridden from mix1, cause it was at the last in class definition
  withMixin_interface.info();
  // Gets mix2Info() form mix2
  withMixin_interface.mix2Info();
}
