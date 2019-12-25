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
          title: Text('flutter demo'),
        ),
        body: MainContent(),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Text('hongse'),
          ),
          Container(
            width: 100,
            color: Colors.yellow,
            child: ListView(
              reverse: true,
              children: <Widget>[
                Text('nihao1'),
                Text('nihao2'),
                Text('nihao3'),
                Text('nihao4'),
                Text('nihao5'),
                Text('nihao5'),
                Text('nihao5'),
                Text('nihao5'),
                Text('nihao5'),
                Text('nihao5'),
                Text('nihao5'),
                Text('nihao5'),
              ],
            ),
          ),
          Container(
            width: 100,
            color: Colors.red,
          )
        ],
      ),
      height: 100,
    );
  }
}
