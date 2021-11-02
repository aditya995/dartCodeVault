/*
dart 013.emoji_ascii.dart
 */

void main() {
  // Prining emojis
  print('😁😁😁✔✔🐜🐜🎨');

  //  Press [windows] + [;] to open suggestion for emoji in VS Code!!
  //  More reference at
  //  https://unicode.org/emoji/charts/full-emoji-list.html
  //  https://unicode-table.com/en/blocks/

  //  Printing ascii values
  var char1 = 'a';
  String char2 = 'abc';
  print('${char1.codeUnits} ${char2.codeUnits}');
  //  to print the respective ascii values of characters Use (object.codeUnits) property
}
