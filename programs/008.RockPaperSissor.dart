/*
dart RockPaperSissor.dart
*/

import 'dart:io';
import 'dart:math';

void main() {
  Random random = new Random();
  int randomNum; // 1=r, 2=p, 3=s
  var map = {1: '🧱', 2: '📄', 3: '🖖', 'r': '🧱', 'p': '📄', 's': '🖖'};

  while (true) {
    randomNum = random.nextInt(3) + 1;
    print(
        '🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮');
    print(
        '🎮  Give Your choice r for 🧱, p for 📄, s for 🖖 or q to exit ❌ 🎮');
    stdout.write('🎮 ');
    var inVal = stdin.readLineSync();
    if (inVal == 'r' || inVal == 'R') {
      print(
          '🎮 You-> ${map[inVal]}, Machine ${map[randomNum]}                                           🎮');
      print(
          '🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮');
      if (randomNum == 1) {
        // you R, Machine R
        print(
            '\n😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵');
        print(
            '😵                        😤😤😤 TIE !! 😤😤😤                    😵');
        print(
            '😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵\n');
      } else if (randomNum == 2) {
        // you R, Machine P
        print(
            '\n💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩');
        print(
            '💩                       😔😔😔 You Lose 😔😔😔                   💩');
        print(
            '💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩\n');
      } else if (randomNum == 3) {
        // you R, Machine S
        print(
            '\n🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳');
        print(
            '🥳                        🤩🤩🤩 You Win 🤩🤩🤩                   🥳');
        print(
            '🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳\n');
      }
    } else if (inVal == 'p' || inVal == 'P') {
      print(
          '🎮 You-> ${map[inVal]}, Machine ${map[randomNum]}                                           🎮');
      print(
          '🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮');
      if (randomNum == 1) {
        // you P, Machine R
        print(
            '\n🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳');
        print(
            '🥳                        🤩🤩🤩 You Win 🤩🤩🤩                   🥳');
        print(
            '🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳\n');
      } else if (randomNum == 2) {
        // you P, Machine P
        print(
            '\n😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵');
        print(
            '😵                        😤😤😤 TIE !! 😤😤😤                    😵');
        print(
            '😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵\n');
      } else if (randomNum == 3) {
        // you P, Machine S
        print(
            '\n💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩');
        print(
            '💩                       😔😔😔 You Lose 😔😔😔                   💩');
        print(
            '💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩\n');
      }
    } else if (inVal == 's' || inVal == 'S') {
      print(
          '🎮 You-> ${map[inVal]}, Machine ${map[randomNum]}                                           🎮');
      print(
          '🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮🎮');
      if (randomNum == 1) {
        // you S, Machine R
        print(
            '\n💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩');
        print(
            '💩                       😔😔😔 You Lose 😔😔😔                   💩');
        print(
            '💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩💩\n');
      } else if (randomNum == 2) {
        // you S, Machine P
        print(
            '\n🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳');
        print(
            '🥳                        🤩🤩🤩 You Win 🤩🤩🤩                   🥳');
        print(
            '🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳🥳\n');
      } else if (randomNum == 3) {
        // you S, Machine S
        print(
            '\n😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵');
        print(
            '😵                        😤😤😤 TIE !! 😤😤😤                    😵');
        print(
            '😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵😵\n');
      }
    } else if (inVal == 'q' || inVal == 'Q') {
      print(
          '\n😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡');
      print(
          '😡                😔😔😔 You Quited the Game 😔😔😔               😡');
      print(
          '😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡😡\n');
      break;
    } else {
      print(
          '\nInput is not valid ❌/nGive valid input; r for 🧱, p for 📄, s for 🖖 or q to exit ❌');
    }
  }
}
