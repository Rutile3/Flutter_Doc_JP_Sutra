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
      title: 'Alignment',
      home: Center(
        child:Container(
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Container( color: Colors.blue, width: 100),
              Container( color: Colors.red,  width: 100),
              Column(
                verticalDirection: VerticalDirection.up,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                      width: 200,
                      child: Text('Test'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      width: 200,
                      child: Text('Test'),
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}