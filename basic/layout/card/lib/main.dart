import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Demo',
      home: Scaffold(
        body: Card(
          margin: const EdgeInsets.all(50.0),
          child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 300,
              height: 100,
              child: Text(
                'Card',
                style: TextStyle(fontSize: 30),
              )),
        ),
      ),
    );
  }
}
