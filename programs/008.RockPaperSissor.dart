/*
dart RockPaperSissor.dart
*/

import 'dart:io';
import 'dart:math';

void main() {
  Random random = new Random();
  int randomNum; // 1=r, 2=p, 3=s
  var map = {1: 'š§±', 2: 'š', 3: 'š', 'r': 'š§±', 'p': 'š', 's': 'š'};

  while (true) {
    randomNum = random.nextInt(3) + 1;
    print(
        'š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®');
    print(
        'š®  Give Your choice r for š§±, p for š, s for š or q to exit ā š®');
    stdout.write('š® ');
    var inVal = stdin.readLineSync();
    if (inVal == 'r' || inVal == 'R') {
      print(
          'š® You-> ${map[inVal]}, Machine ${map[randomNum]}                                           š®');
      print(
          'š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®');
      if (randomNum == 1) {
        // you R, Machine R
        print(
            '\nšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµ');
        print(
            'šµ                        š¤š¤š¤ TIE !! š¤š¤š¤                    šµ');
        print(
            'šµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµ\n');
      } else if (randomNum == 2) {
        // you R, Machine P
        print(
            '\nš©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©');
        print(
            'š©                       ššš You Lose ššš                   š©');
        print(
            'š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©\n');
      } else if (randomNum == 3) {
        // you R, Machine S
        print(
            '\nš„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³');
        print(
            'š„³                        š¤©š¤©š¤© You Win š¤©š¤©š¤©                   š„³');
        print(
            'š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³\n');
      }
    } else if (inVal == 'p' || inVal == 'P') {
      print(
          'š® You-> ${map[inVal]}, Machine ${map[randomNum]}                                           š®');
      print(
          'š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®');
      if (randomNum == 1) {
        // you P, Machine R
        print(
            '\nš„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³');
        print(
            'š„³                        š¤©š¤©š¤© You Win š¤©š¤©š¤©                   š„³');
        print(
            'š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³\n');
      } else if (randomNum == 2) {
        // you P, Machine P
        print(
            '\nšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµ');
        print(
            'šµ                        š¤š¤š¤ TIE !! š¤š¤š¤                    šµ');
        print(
            'šµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµ\n');
      } else if (randomNum == 3) {
        // you P, Machine S
        print(
            '\nš©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©');
        print(
            'š©                       ššš You Lose ššš                   š©');
        print(
            'š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©\n');
      }
    } else if (inVal == 's' || inVal == 'S') {
      print(
          'š® You-> ${map[inVal]}, Machine ${map[randomNum]}                                           š®');
      print(
          'š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®š®');
      if (randomNum == 1) {
        // you S, Machine R
        print(
            '\nš©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©');
        print(
            'š©                       ššš You Lose ššš                   š©');
        print(
            'š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©š©\n');
      } else if (randomNum == 2) {
        // you S, Machine P
        print(
            '\nš„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³');
        print(
            'š„³                        š¤©š¤©š¤© You Win š¤©š¤©š¤©                   š„³');
        print(
            'š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³š„³\n');
      } else if (randomNum == 3) {
        // you S, Machine S
        print(
            '\nšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµ');
        print(
            'šµ                        š¤š¤š¤ TIE !! š¤š¤š¤                    šµ');
        print(
            'šµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµšµ\n');
      }
    } else if (inVal == 'q' || inVal == 'Q') {
      print(
          '\nš”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”');
      print(
          'š”                ššš You Quited the Game ššš               š”');
      print(
          'š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”š”\n');
      break;
    } else {
      print(
          '\nInput is not valid ā/nGive valid input; r for š§±, p for š, s for š or q to exit ā');
    }
  }
}
