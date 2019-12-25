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
    return Container(
      child: Wrap(
        spacing: 10.0 ,
        runSpacing: 10.0,
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.end,
        direction: Axis.horizontal,
        children: <Widget>[
          MyButton('斗罗大陆'),
          MyButton('斗破苍穹'),
          MyButton('西游记'),
          MyButton('三国演义'),
          MyButton('诛仙'),
          MyButton('毛泽东传'),
          MyButton('狼图腾'),
          MyButton('平凡的世界'),
          MyButton('人生'),
        ],
      )
    );
  }
}



class MyButton extends StatelessWidget{
  final String text;
  MyButton(this.text);
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      textColor: Theme.of(context).accentColor,
      child: Text(this.text),
      onPressed: (){

      },
    );
  }
}