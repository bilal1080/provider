// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Fruit extends StatelessWidget {
//   final String fruit;
//   const Fruit({Key? key, required this.fruit}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: () {
//           Provider.of<Favorites>(context, listen: false).changeFruit(fruit);
//         },
//         child: Text(fruit));
//   }
// }

// class Favorites extends ChangeNotifier {
//   String fruit = 'unknown';

//   void changeFruit(String newFruit) {
//     fruit = newFruit;
//     notifyListeners();
//   }
// }
