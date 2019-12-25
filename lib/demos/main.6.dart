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
        child: Image.asset( 
          'images/3.0x/timg.jpg',
          // width: 100,
          // height: 100,
          fit: BoxFit.cover,
          ),
      )
    );
  }
}