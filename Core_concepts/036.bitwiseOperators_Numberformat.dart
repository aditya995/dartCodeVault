/*
dart 036.bitwiseOperators_Numberformat.dart
*/

/// bitwiseOperators and Hexformat in dart

void main() {
  ///  Storing numbers as Hex format in int variables
  int a = 0xf0; // binary 11110000
  int b = 0x0f; // binary 00001111

  print('Hex of 255(decimal) ' + '${255.toRadixString(16)}');
  print('Octal of ff (HexaDecimal) ' '${0xff.toRadixString(8)}');
  print('Binary of ff (HexaDecimal) ' '${0xff.toRadixString(2)}');
  print('decimal of ff (HexaDecimal) ' '${0xff.toRadixString(10)}');

  //  Bitwise Operator

  //  11110000 | 00001111 -> binary 11111111, decinmal 255
  print('\n(bitwise OR) ' '${(a | b).toRadixString(2)}');

  // 11110000 & 00001111 -> binary 00000000, decinmal 0
  print('(bitwise AND) ' '${(a & b).toRadixString(2)}');

  //  11110000 ^ 00001111 -> binary 11111111, decinmal 255
  print('(bitwise XOR) ' '${(a ^ b).toRadixString(2)}');

  //  (bitwise NOT) sets 1 to 0 and vise versa in the binary format
  print('''(bitwise NOT) ${(b).toRadixString(2)} ${(b).toRadixString(10)} 
${(~b).toRadixString(2)} ${(~b).toRadixString(10)} ''');
}
