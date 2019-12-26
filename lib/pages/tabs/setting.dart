import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/search');
          },
        ),
        RaisedButton(
          child: Text('跳转到表单页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/form');
          },
        ),
      ],
    );
  }
}