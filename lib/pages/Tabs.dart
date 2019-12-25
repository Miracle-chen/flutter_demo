import 'package:flutter/material.dart';
import 'tabs/home.dart';
import 'tabs/setting.dart';
import 'tabs/category.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int index = 0;
  List _pageList = [
    HomePage(),
    SettingPage(),
    CategoryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: this._pageList[this.index],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          fixedColor: Colors.yellow,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            )
          ],
          currentIndex: this.index,
          onTap: (int index){
            print(index);
            setState((){
              this.index = index;
            });
          },
        ),
      );
  }
}


