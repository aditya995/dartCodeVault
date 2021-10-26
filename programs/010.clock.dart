/*
dart 010.clock.dart
*/
import 'dart:io';

/// Clock
void main() {
  bool ok = false;
  int h, m, s;
  var timeC = 1;
  var time;
  h = m = s = 0;
  while (ok == false) {
    print('Hour');
    h = int.parse(stdin.readLineSync()!);
    print('Minute');
    m = int.parse(stdin.readLineSync()!);
    print('Seconds');
    s = int.parse(stdin.readLineSync()!);
    print('AM/PM input is a/p');
    time = (stdin.readLineSync()!);
    if (h > 0 && h <= 12 && m > 0 && m < 60 && s > 0 && s < 60) {
      ok = true;
      print('Give valid input');
    }
  }

  if (time == 'a') {
    timeC = 0;
    time = 'AM';
  }
  if (time == 'p') {
    timeC = 1;
    time = 'PM';
  }

  for (int i = h * 3600 + m * 60 + s; true; i++) {
    sleep(Duration(milliseconds: 1000));
    print("\x1B[2J\x1B[0;0H");
    if ((i % 3600) == 0) {
      h %= 12;
      h++;
      if (h == 12) {
        timeC++;
        if (timeC % 2 == 0) {
          time = 'AM';
        } else {
          time = 'PM';
        }
      }
    }
    if ((i % 60) == 0) {
      m++;
      m %= 60;
    }
    s = (i % 60) + 1;
    print('$h : ${m + 1} : $s $time');
  }
}
