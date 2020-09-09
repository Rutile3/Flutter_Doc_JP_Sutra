import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: const Text('AppBar'),
          backgroundColor: Colors.orange,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.face, color: Colors.white,),
            ),
            IconButton(
              icon: Icon(Icons.email, color: Colors.white,),
            ),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}