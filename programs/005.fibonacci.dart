/*
dart 005.fibonacci.dart
*/

/// print fibonacci series
void main() {
  int n = 10;
  var fibo = [0, 1, 1];
  for (int i = 3; i <= n; i++) {
    var a = fibo[(i - 1)] + fibo[(i - 2)];
    fibo.add(a);
  }
  for (int i = 0; i < n; i++) {
    print(fibo[i]);
  }
}
