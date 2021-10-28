/*
dart 002.printOperations.dart
 */
// Printing something in console
import 'dart:io';

void main() {
  print('Line break added,');
  print('Line break added.');
  stdout.write('side by side printed,');
  stdout.write('side by side printed.');
  print('\nEmoji printing\u{1F600} 😀');
  print('''Using string literals: 😀😀
  Now print will need no new-line character for 
  printing new line in the print function''');
  /*unicode to print special characters in screen
    https://unicode.org/emoji/charts/full-emoji-list.html
    https://unicode-table.com/en/blocks/ */
}
