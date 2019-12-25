import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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

class MainContent extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Text(
          '我是我是woshi ',
          // textAlign: TextAlign.right,
          style: TextStyle(
            fontSize: 19.0,
            // color: Colors.yellow,
            // fontWeight: FontWeight.w300,
            // decorationColor: Colors.blue,
            // decoration: TextDecoration.lineThrough,
            // letterSpacing: 30,
            // fontStyle: FontStyle.italic,
          ),
          // overflow: TextOverflow.clip ,
          // textScaleFactor: 2,
          // maxLines: 2,
          ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(70)),
        ),
        // padding: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(20, 10, 30, 50),
        // transform: Matrix4.translationValues(100, 50, 10),
        transform: Matrix4.rotationY(0.3),
        alignment: Alignment.center,
      )
    );
  }
}