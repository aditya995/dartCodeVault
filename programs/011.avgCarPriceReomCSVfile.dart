/*
dart 011.avgCarPriceReomCSVfile.dart ford_escort.csv
*/

//  Processing CSV files

//  Calculate average price of cars by categories, Count cars by their
//  performance

import 'dart:io';

/// Adds new methods to `String` which is not possible without extension
extension on String {
  /// Extension Method in `String`
  ///
  /// Dart does not have a method for string to be converted to an integer.
  /// Here extension method comes handy
  int? toIntorNull() => int.tryParse(this);
}

void main(List<String> args) {
  if (args.isEmpty) {
    print('->dart fileName.dart <inputfile.csv>');
    exit(1);
  }
  final inputFile = args.first;
  print(inputFile);
  final lines = File(inputFile).readAsLinesSync();
  lines.removeAt(0);
  int avgPrice = 0;
  int totalPrice = 0;
  int i = 0;
  var categories = <String, int>{};
  for (var line in lines) {
    //  Separating individual field Values as string List
    final values = line.split(',');
    //  Removing "" from the strings
    final performance = values[3].replaceAll('"', '');
    values[3] = performance;
    print(values);

    //  Storing the prices field values
    int? cVal = values[2].toIntorNull();
    if(cVal == null)
    categories[performance] = values
    print(avgPrice);
  }
}
