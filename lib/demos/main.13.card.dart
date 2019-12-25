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
    return CardDemo();
  }
}

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((item){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20/9,
                child: Image.network(item['imageUrl'], fit: BoxFit.cover,),
              ),
              ListTile(
                leading:CircleAvatar(
                  backgroundImage: NetworkImage(item['imageUrl']),
                ),
                title: Text(item['title']),
                subtitle: Text(item['author']),
              )
            ],
          ),
        );
      }).toList()
    );
  }
}