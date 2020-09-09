import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MainPage(),
        '/sub1page': (BuildContext context) => new SubPage(page: Pages.PAGE1),
        '/sub2page': (BuildContext context) => new SubPage(page: Pages.PAGE2),
        '/sub3page': (BuildContext context) => new SubPage(page: Pages.PAGE3)
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              Text('Main'),
              RaisedButton(
                onPressed: () => Navigator.of(context).pushNamed("/sub1page"),
                child: new Text('Subページへ'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum Pages {
  PAGE1,
  PAGE2,
  PAGE3,
}

class SubPage extends StatelessWidget {
  final Pages page;

  SubPage({this.page});

  @override
  Widget build(BuildContext context) {
    List<Widget> widget;
    switch (page) {
      case Pages.PAGE1:
        widget = <Widget>[
          Text('Sub1'),
          RaisedButton(
            onPressed: () => Navigator.of(context).pushNamed("/sub2page"),
            child: new Text('次へ'),
          ),
          RaisedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('戻る')),
        ];
        break;
      case Pages.PAGE2:
        widget = <Widget>[
          Text('Sub2'),
          RaisedButton(
            onPressed: () => Navigator.of(context).pushNamed("/sub3page"),
            child: new Text('次へ'),
          ),
          RaisedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('戻る')),
        ];
        break;
      case Pages.PAGE3:
        widget = <Widget>[
          Text('Sub3'),
          RaisedButton(
              onPressed: () => Navigator.of(context)
                  .popUntil(ModalRoute.withName("/sub1page")),
              child: new Text('ホームへ')),
          RaisedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('戻る')),
        ];
        break;
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(children: widget),
        ),
      ),
    );
  }
}
