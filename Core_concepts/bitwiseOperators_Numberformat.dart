/*
dart bitwiseOperators_Numberformat.dart
*/

/// bitwiseOperators and Hexformat in dart

void main() {
  ///  Storing numbers as Hex format in int variables
  int a = 0xf0; // binary 11110000
  int b = 0x0f; // binary 00001111

  print((a | b).toRadixString(16)); //  in hex format
  print((a | b).toRadixString(8)); //  in octal format
  print((a | b).toRadixString(2)); //  in binary format
  print((a | b).toRadixString(10)); // in decimal format

  /// Bitwise Operator
  print((a | b).toRadixString(2)); // (bitwise OR) binary 11111111, decinmal 255
  print((a & b).toRadixString(2)); // (bitwise AND) binary 00000000, decinmal 0
  print(
      (a ^ b).toRadixString(2)); // (bitwise XOR) binary 11111111, decinmal 255

  print('''${(b).toRadixString(2)} ${(b).toRadixString(10)} 
${(~b).toRadixString(2)} ${(~b).toRadixString(10)} '''); // (bitwise NOT) sets 1 to 0 and vise versa in the binary format
}
