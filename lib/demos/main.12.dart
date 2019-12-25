import 'package:flutter/material.dart';
import 'res/listData.dart';

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
      // color:Colors.yellow,
      theme: ThemeData(
        primarySwatch:Colors.red,
        // primaryColor:Colors.yellow,
      ),
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(-1,-1.000001),
      children: <Widget>[
        Text('data'),
        Container(
          width: 300.0,
          height: 300.0,
          // color: Colors.red,
          decoration: BoxDecoration(
            // color: Colors.yellow,
            border: Border.all(
              width: 2,
              color: Colors.blue,
            ),
            // borderRadius: BorderRadius.circular(150)
          ),
        )
      ],
    );
  }
}