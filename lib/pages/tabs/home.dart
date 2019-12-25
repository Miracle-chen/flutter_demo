import 'package:flutter/material.dart';
import '../Search.dart';
import '../Form.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: ()=>{
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context){
                  return SearchPage();
                }
              )
            )
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到表单页面并传值'),
          onPressed: ()=>{
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:(context) =>FormPage(title:'我是表单组件的传值')
              )
            )
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}