/*
dart 039.collection(if)(for)_SpreadOperator.dart
*/
//  collection if, collection for and spread operator on collections
//  these are composable, can use one inside other!
void main() {
  var menu1 = {
    'pizza': 3.14,
    'pasta': 2.14,
    'burger': 5.0,
    'hotdog': 2.15,
  };

  var menu2 = {
    'rice': 1.50,
    'vegetable': 2.0,
    'soup': 3.05,
  };
  //  Items under 4$ price
  bool addMenu2 = true;
  var menuUnder4$ = {
    for (var item in menu1.entries) //  collection for
      if (item.value < 4.0) //  collection if, inside collection for
        item.key: item.value,
    if (addMenu2) //  collection if only
      ...menu2, //  spread operator
  };

  print(menu1);
  //  {pizza: 3.14, pasta: 2.14, burger: 5.0, hotdog: 2.15}
  print(menu2);
  //  {rice: 1.5, vegetable: 2.0, soup: 3.05}
  print(menuUnder4$);
  //  {pizza: 3.14, pasta: 2.14, hotdog: 2.15, rice: 1.5, vegetable: 2.0, soup: 3.05}
}
