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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            '刘德华红了一辈子的人',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red
            ),
            ),
          subtitle: Text('活该这么红'),
          trailing:Icon(Icons.home)
        ),
      ],
    );
  }
}