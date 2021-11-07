/**
dart 038.enumeration.dart
 */

enum vehicle { cars, bike, bus, other }

void main() {
  vehicle MyTransportation = vehicle.bus;
  switch (MyTransportation) {
    case vehicle.bike:
      print('MyTransportation is  ${MyTransportation.index}');
      break;
    case vehicle.cars:
      print('MyTransportation is ${MyTransportation}');
      break;
    case vehicle.bus:
      print('MyTransportation is Bus');
      break;
    case vehicle.other:
      print('MyTransportation is ${vehicle.other}');
  }
}
