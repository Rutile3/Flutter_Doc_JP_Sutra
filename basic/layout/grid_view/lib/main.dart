import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var grid = [
      "img00",
      "img01",
      "img02",
      "img03",
      "img04",
      "img05",
      "img06",
      "img07",
      "img08",
      "img09",
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GridView'),
            ),
            body: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (index >= grid.length) {
                    grid.addAll([
                      "img00",
                      "img01",
                      "img02",
                      "img03",
                      "img04",
                      "img05",
                      "img06",
                      "img07",
                      "img08",
                      "img09",
                    ]);
                  }
                  return _photoItem(grid[index]);
                })));
  }

  Widget _photoItem(String image) {
    var assetsImage = "images/" + image + ".jpg";
    return Container(
      child: Image.asset(
        assetsImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
