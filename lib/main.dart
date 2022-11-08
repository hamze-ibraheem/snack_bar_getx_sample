import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _messangerKey = GlobalKey<ScaffoldMessengerState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scaffoldMessengerKey: _messangerKey,
      title: 'SnackBar Sample',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  backgroundColor: Colors.black,
                  content: Text('This is snack bar!!'),
                );
                _messangerKey.currentState?.showSnackBar(snackBar);
              },
              child: const Text(
                'Show SnackBar',
              ),
            ),
          ],
        )),
      ),
    );
  }
}
