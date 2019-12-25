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
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

//HOMECONTENT
class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child:Text(
        '你好。flutteew',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.yellow
        ),
      ),
    );
  }
}