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
  List<Widget> _getData(){
    List<Widget> list = new List();
    for(var i = 0; i<20; i++){
      list.add(Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        color: Colors.blue,
        child: Text(
          '我是第${i+1}个元素',
          style: TextStyle( color: Colors.white, fontSize: 20),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // crossAxisSpacing :20,   //一行内的子widget之间的距离
      // mainAxisSpacing: 20,
      // childAspectRatio: 0.5,
      crossAxisCount: 2,   //一行有多少个组件
      children: this._getData()
    );
  }
}