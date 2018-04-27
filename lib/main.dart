import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

Widget buildGrid() {
  return new GridView.extent(
      maxCrossAxisExtent: 150.0,
      padding: const EdgeInsets.all(5.0),
  mainAxisSpacing: 5.0,
  crossAxisSpacing: 5.0,
  children: _buildGridTiles(30));
}

List<Container> _buildGridTiles(int count) {
  return new List<Container>.generate(
      count,
          (int index) => new Container(child: new Image.asset('assets/pic.png')
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Grids',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('grid'),
        ),
        body: new Center(
          child: buildGrid(),
        ),
      ),
    );
  }
}


