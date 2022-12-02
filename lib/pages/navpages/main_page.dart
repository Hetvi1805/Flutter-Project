 import 'package:flutter/material.dart';
import 'package:travel/pages/navpages/search_page.dart';
 import 'package:flutter/src/widgets/icon.dart';

import '../home_page.dart';
import 'bar_item.dart';
import 'mypage.dart';
// import 'package:untitled/pages/navpages/bar_item.dart';
// import 'package:untitled/pages/home_page.dart';
// import 'package:untitled/pages/navpages/mypage.dart';
// import 'package:untitled/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),

  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:pages[currentIndex] ,
      bottomNavigationBar:  BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:"Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"Favourite", icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(label:"Profile", icon: Icon(Icons.person)),


          // BottomNavigationBarItem(label:"Bar Iteam",icon: Icon(Icons.person),
          // BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search)),
          // BottomNavigationBarItem(label:"Person",icon: Icon(Icons.person)),
        ],
      ),
      
    );
  }
}
