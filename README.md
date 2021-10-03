**git**
 - git clone https://github.com/aditya995/dartCodeVault.git     // Downloading files from github repo
 - git status   // See what is added or modified in local Drive
 - git add .    // Staging to commit
 - git commit -m "msg title" -m "msg body"  // Saving the files Locally (in pc drives).
 - git push origin **branch_name** // usually main/(master in previous versions).

Connect to a remote github repo--
 - git remote   // to check if it is connected to github remote repository
 - git remote add origin https://github.com/aditya995/dartCodeVault.git 
// To add the origin for this folder to push to that (remote) dartCodeVault repo in github.com

 - git branch   // Check the current branch
 - git checkout -b **branch_name**    //To create a new branch
 - git checkout **branch_name**   //To switch between branches
 - git merge **branch_name**  //To merge branches together
 - git branch -d **branch_name**  //To delete branch (might show **branch_name** is not fully merged). [ Safe delete ]
 - git branch -D **branch_name**  //To delete forcefully.
# Dart
## Contents
 ### Core concepts
 1. Compile to exe //dart compile exe filename.dart
 2. Printing, print without newline
    unicode to print special characters in screen
    https://unicode.org/emoji/charts/full-emoji-list.html
    https://unicode-table.com/en/blocks/
 3. comments, Good naming-convention of variables
 4. Variables / datatypes 
    var, int, double, String, bool
 5. type casting
 6. tostring(), todouble, toint()
 7. double precision (to n decimal places)
 8. printing with variables and using operators
 9. Take input(String, integer, double)
 10. operators(+, -, / (assigning divided result in int variable), *),
 11. constant, final, dynamic, var,
 12. Special character (constants in dart), https://chromium.googlesource.com/external/github.com/dart-lang/html/+/refs/tags/0.13.0/lib/src/constants.dart
 13. emoji print, ascii value print,
 14. if else, if else ladder, nested if else,
 15. logical Operators(&&, ||, !=, ==, <=, >= , <, > )
 16. Ternary operator
 17. for loop, while loop, do while loop,
 18. increment operator, decrement operator (prefix, and postfix),
 19. List, List.add, List.remove, List value update
 20. map, add, remove, update
 21. set add, remove, Spread Operator, Set operations(Union, Intersection, Difference),
 22. Random class, Random number generate
 23. Generics, Rune in dart,

### Program
1. PositiveNegative number check
2. vowel check program
3. age check program ( adult, kid, teen)
4. Find factorial
5. Fibonacci series
6. Fahrenheit to celcious, Celcious to fahrenheit
7. Number guessing game
8. rock paper sissor Game