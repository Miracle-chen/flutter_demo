import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  
  List<Widget> _data(){
    var templateList = listData.map((value){
      return ListTile(
        leading: Image.network(value['imageUrl']),
        title: Text(value['title']),
        subtitle: Text(value['author']),
      );
    });
    return templateList.toList();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: this._data(),
      )
    );
  }
}
