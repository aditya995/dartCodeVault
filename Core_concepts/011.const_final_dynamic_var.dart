/*
dart 011.const_final_dynamic_var.dart
*/

void main() {
  //********Use of const */
  int valA = 50, valB = 60;
  const int valC = 40;
  //const int valD;  //Not permitted! Must be initialized
  //valC += 10; //Not permitted, it is a constant
  print('Value of "const" type data -> valC = $valC');
  valA += 10;
  print('Value of valA ->$valA');
  valB += 10;
  print('Value of valB ->$valB');

  //********Use of final */
  final int val; // You can leave it un-initialized
  val = 10; // Can assign values later once, and then it behaves as const
  //val = 20;  //Not permitted! Can't assign value, once assigned!
  print('Value of "final" type data -> val = $val');

  //******Use of dynamic */
  dynamic va = 2;
  print('Value of "dynamic" type data -> va (${va.runtimeType}) = $va');
  va = 'newTypeOfDataAssigned';
  print('Value of "dynamic" type data -> va (${va.runtimeType}) = $va');
}
