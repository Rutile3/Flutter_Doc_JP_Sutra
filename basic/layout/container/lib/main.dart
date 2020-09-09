import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Material Design',
      home: Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            height: 300.0,
            margin: const EdgeInsets.only(left:100.0),
            padding: const EdgeInsets.only(top:50.0),
            transform: Matrix4.rotationZ(0.1),
            width: 300.0,
            child: Text('word'),
          ),
        ),
      ),
    );
  }
}