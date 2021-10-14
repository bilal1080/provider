// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class dialobBox extends StatelessWidget {
  const dialobBox({Key? key}) : super(key: key);

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
                  Get.defaultDialog(
                    title: 'Hi Dialog',
                    titleStyle: const TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                    ),
                  );
                },
                child: const Text('Show DialogBox'))
          ],
        ),
      ),
    );
  }
}
