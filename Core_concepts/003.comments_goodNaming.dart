/*
dart 003.comments_goodNaming.dart
*/

void main() {
  // TODO: Some instructions
  int a = 5; //Initialization
  a = 10; // Value assignment
  int sumOfTwoNumbers = a + 5; // This name is more understandable
  int resultOfMultiplication = a * sumOfTwoNumbers;
  print(
      'The value is $a, result is $resultOfMultiplication, sum is $sumOfTwoNumbers \nComment is necessary.'); //  Ptinting in console
}

/** Commenting in Dart - Compiler ignores comments
 * Helpful to create documentation.
 * In dart single line comments are -
 *  //  - Simple single line comments
 *  /// - It acts as documentation, Just write above the code which trying to explain
 * 
 * Multi line comments -
 *  starts with - /*  ends with - */
 * 
 * Good Practice to Write - 
 * // TODO: Some Instructions
 */

/**
 * Commenting to create documentation in Dart
 * ///  Some title
 * ///
 * ///  Line break added
 * ///  **Heading:**
 * ///  `Highlighted when peeking by hovering mouse on items (Multiline allowed)`
 * ///  ``Also can be used``
 * ///  ```Can also write code to be viewed as code```
 * ///  [Highlighted comments in the original Source code file]
 * ///  
 * 
 */
