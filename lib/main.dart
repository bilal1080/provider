import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
         providers: [
           ChangeNotifierProvider(
             create: (context) => Favorites(),
           ),
           
           
         ],
         child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Favorite Fruit button is ' +
              Provider.of<Favorites>(context).fruit),
        ),
        body: Center(
          child: Column(
            children: const <Widget>[
              Fruit(fruit: 'Apple'),
              Fruit(fruit: 'Orange'),
              Fruit(fruit: 'Mango'),
            ],
          ),
        ),
      ),
    );
  }
}

class Fruit extends StatelessWidget {
  final String fruit;
  const Fruit({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Provider.of<Favorites>(context, listen: false).changeFruit(fruit);
        },
        child: Text(fruit));
  }
}

class Favorites extends ChangeNotifier {
  String fruit = 'unknown';

  void changeFruit(String newFruit) {
    fruit = newFruit;
    notifyListeners();
  }
}
