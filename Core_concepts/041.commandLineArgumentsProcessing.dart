/*
dart 041.commandLineArgumentsProcessing.dart ford_escort.csv
*/

//  Command line arguments Processing

//  Processing CSV files
import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('->dart fileName.dart <inputfile.csv>');
    exit(1);
  }
  final inputFile = args.first;
  print(inputFile);
  final lines = File(inputFile).readAsLinesSync();
  for (var line in lines) {
    print(line);
  }
}
