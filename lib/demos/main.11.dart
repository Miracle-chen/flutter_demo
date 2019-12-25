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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          child: IconContainer(Icons.settings, size: 32.0, color: Colors.blue,),
          padding: EdgeInsets.all(10),
        ),
        
        IconContainer(Icons.home, size: 34.0, color: Colors.yellow,),
        IconContainer(Icons.search, size: 35.0, color: Colors.orange,),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, { this.size, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child: Icon(this.icon,  size: this.size,),
    );
  }
}