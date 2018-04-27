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

List<Stack> _buildGridTiles(int count) {
  return new List<Stack>.generate(
      count,
          (int index) =>
      new Stack(
        alignment: new Alignment(-1.0, 1.0),
        children: [
          new Image.asset('assets/pic.png'),
          new Row(
            children: [
              new Expanded(
                child: new Container(
                  decoration: new BoxDecoration(
                      color: Colors.black45
                  ),
                  child: new Text(
                    'pic.jpg',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: const EdgeInsets.all(5.0),

                ),
              ),
            ],
          ),

        ],
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


