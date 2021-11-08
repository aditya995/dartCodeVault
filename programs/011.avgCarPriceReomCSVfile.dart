/*
dart 011.avgCarPriceReomCSVfile.dart ford_escort.csv
*/

//  Processing CSV files
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
  for (var line in lines) {
    //  Separating individual field Values as string List
    var values = line.split(',');
    //  Removing "" from the strings
    var remarks = values[3].replaceAll('"', '');
    values[3] = remarks;
    print(values);
    int? cVal = values[2].toIntorNull();
    i++;
    if (cVal == null) --i;
    totalPrice += (cVal == null) ? 0 : cVal;
    print(totalPrice ~/ i);
  }
}
