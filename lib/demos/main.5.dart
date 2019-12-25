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
        
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius:BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage('https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=ef54d47502f79052eb1f403c3cf2d738/0dd7912397dda14462c4cbd4b9b7d0a20df48683.jpg'),
            fit: BoxFit.cover,
          )
        ),
      )
    );
  }
}