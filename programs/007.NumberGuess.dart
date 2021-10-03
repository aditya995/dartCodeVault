/*
dart NumberGuess.dart
*/
import 'dart:io';
import 'dart:math';

void main() {
  print('Take user Input');
  var flag = 1;
  Random random = new Random();
  int randomNum = random.nextInt(5) + 1;
  while (flag == 1) {
    print(
        '🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮');
    int inputNum = int.parse(stdin.readLineSync()!);

    if (randomNum == inputNum) {
      print('Your input $inputNum, Random number $randomNum');
      print(
          '🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮');
      print(
          '\n🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳');
      print(
          '🥳                        🤩🤩🤩 You Win 🤩🤩🤩                   🥳');
      print(
          '🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳\n');
      flag = 0;
    } else {
      if (randomNum > inputNum) {
        print(
            '\n😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤');
        print(
            '😤                        😤😤😤 Too Low 😤😤😤                   😤');
        print(
            '😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤😤\n');
      } else {
        print(
            '\n😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡');
        print(
            '😡                        😡😡😡 Too High😡😡😡                   😡');
        print(
            '😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡\n');
      }
    }
  }
}
