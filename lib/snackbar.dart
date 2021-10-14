import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class snack_Bar extends StatelessWidget {
  const snack_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                      'Snackbar Title', 'This will be snackbar message',
                      colorText: Colors.amber,
                      // titleText: const Text('Hey there'),
                      backgroundColor: Colors.black,
                      snackPosition: SnackPosition.BOTTOM,
                      borderRadius: 20.0,
                      margin: const EdgeInsets.all(10.0),
                      animationDuration: const Duration(milliseconds: 3000),
                      backgroundGradient: const LinearGradient(
                          colors: [Colors.cyan, Colors.deepPurpleAccent]),
                      isDismissible: true,
                      dismissDirection: SnackDismissDirection.HORIZONTAL);
                },
                child: const Text('Show SnackBar'))
          ],
        ),
      ),
    );
  }
}
