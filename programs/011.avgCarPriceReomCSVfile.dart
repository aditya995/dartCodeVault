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
  //  Prompt User to give valid CMD to run the program
  if (args.isEmpty) {
    print('->dart fileName.dart <inputfile.csv>');
    exit(1);
  }
  //  Taking CMD parameters
  final inputFile = args.first;
  //  Reading file contents
  final lines = File(inputFile).readAsLinesSync();
  //  First line (title) removed
  lines.removeAt(0);

  Set categoriesSet = <String>{};
  List data = [];
  for (var line in lines) {
    //  Separating individual field Values as string List
    var values = line.split(',');
    //  Removing "" from the strings
    final performance = values[3].replaceAll('"', '');
    values[3] = performance;
    //  formatting data for dart variables
    if (performance.length > 2) {
      categoriesSet.add(performance);
      data.add(values);
    } else {
      categoriesSet.add(' Invalid Name ');
      values[3] = ' Invalid Name ';
      data.add(values);
    }
  }

  Map categoriesCount = <String, int>{
    for (var item in categoriesSet) item: 0,
  };

  Map categoriesAvgPrice = <String, int>{
    for (var item in categoriesSet) item: 0,
  };

  data.forEach((element) {
    ++categoriesCount[element[3]]; //  Counts for each category

    //  Car price data formatting
    String str1 = element[2].toString();
    int? n = str1.toIntorNull();
    if (n != null) {
      //  total price for each category
      categoriesAvgPrice[element[3]] = n + categoriesAvgPrice[element[3]];
    }
  });
  for (var item in categoriesSet) {
    categoriesAvgPrice[item] =
        categoriesAvgPrice[item] ~/ categoriesCount[item];
  }

  print('\nResult:\n');
  print(categoriesCount);
  print(categoriesAvgPrice);
}
