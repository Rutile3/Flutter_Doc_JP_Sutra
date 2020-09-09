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
      title: 'Column & Row',
      home: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container( color: Colors.blue, width: 100, height:100 ),
                Container( color: Colors.red, width: 100, height:100 ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container( color: Colors.green, width: 100, height:100 ),
                Container( color: Colors.orange, width: 100, height:100 ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}