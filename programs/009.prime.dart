/*
dart 009.prime.dart
*/

void main() {
  int isPrime = 7, flag = 1;

  for (int i = 2; i < isPrime; i++) {
    if (isPrime % i == 0) {
      flag = 0;
      break;
    }
  }
  if (flag == 1)
    print('$isPrime is a prime number');
  else
    print('$isPrime is not a prime number');
}
