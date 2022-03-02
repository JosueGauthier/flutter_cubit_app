import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navpages/bar_item_page.dart';
import 'package:flutter_cubit/pages/navpages/home_page.dart';
import 'package:flutter_cubit/pages/navpages/my_page.dart';
import 'package:flutter_cubit/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages =[

    HomePage(),
    BarItemPage(),
    MyPage(),
    SearchPage(),

  ];

  int currentIndexxxx = 0;
  void onTap(int index){

    setState(() {
      currentIndexxxx =index;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndexxxx],

      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndexxxx,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,

        items: [

        BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Apps",),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp),label: "BarChart",),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "My",),

      ],

      ),
    );
  }
}
