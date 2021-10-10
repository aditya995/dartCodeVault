/*
dart 003.ageCheck.dart
*/
// Age Check (adult, kid, Teen)
void main() {
  int age = 40;
  if (age < 13) {
    print('Kid');
  } else if (age > 8 && age < 19) {
    print('Teen');
  } else {
    print('Adult');
  }
}
