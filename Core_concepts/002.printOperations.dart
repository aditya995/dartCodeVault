/*
dart 002.printOperations.dart
 */
// Printing something in console
import 'dart:io';

void main() {
  print('Line break added automatically at the end! (default behaviour)');
  stdout.write('side by side printed,');
  stdout.write('side by side printed.');

  print('\nEmoji printing\u{1F600} 😀');

  //  Newline without using \n, **  use '''string'''
  print('''Using string literals: 😀😀
  Now no longer need a new-line character for
  printing new line in print()''');
  //  Newline without using \n, **  use """string"""
  print("""Using string literals: 😀😀
  Now no longer need a new-line character for 
  printing new line in print()""");
  /*unicode to print special characters in screen
    https://unicode.org/emoji/charts/full-emoji-list.html
    https://unicode-table.com/en/blocks/ */
}
