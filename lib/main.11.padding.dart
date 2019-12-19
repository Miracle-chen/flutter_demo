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
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      children: <Widget>[
        Padding(
          child: Image.network('https://www.itying.com/images/flutter/1.png', fit: BoxFit.cover),
          padding: EdgeInsets.all(10) ,
        ),
        Padding(
          child: Image.network('https://www.itying.com/images/flutter/2.png', fit: BoxFit.cover),
          padding: EdgeInsets.all(10) ,
        ),
        Padding(
          child: Image.network('https://www.itying.com/images/flutter/3.png', fit: BoxFit.cover),
          padding: EdgeInsets.all(10) ,
        ),
        Padding(
          child: Image.network('https://www.itying.com/images/flutter/4.png', fit: BoxFit.cover),
          padding: EdgeInsets.all(10) ,
        ),
        Image.network('https://www.itying.com/images/flutter/2.png', fit: BoxFit.cover),        
        Image.network('https://www.itying.com/images/flutter/3.png', fit: BoxFit.cover),
        Image.network('https://www.itying.com/images/flutter/4.png', fit: BoxFit.cover),
        Image.network('https://www.itying.com/images/flutter/5.png', fit: BoxFit.cover),
        Image.network('https://www.itying.com/images/flutter/6.png', fit: BoxFit.cover),
      ],
    );
  }
}