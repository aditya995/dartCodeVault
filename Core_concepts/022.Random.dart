/*
dart 022.Random.dart
*/

import 'dart:math';

void main() {
  var rand = new Random(); // Created object of Random class

  for (int i = 0; i < 30; i++) {
    //  outputs in [0, (n-1)] range for input n
    // this method of Random object takes max value as parameter
    var randomInt = rand.nextInt(3);

    //  outputs 0.1 - 0.9
    var randomDouble = rand.nextDouble();

    //  outputs true or false
    var randomBool = rand.nextBool();
    print('$randomInt $randomDouble $randomBool');
  }
}
