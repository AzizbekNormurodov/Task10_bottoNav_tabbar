import 'dart:html';

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'home_page1.dart';
import 'home_page3.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
  List<Widget> _widgetOptions = [
    HomePage(),
    HomePage1(),
    HomePage3(),
    HomePage3(),
  ];
  List<int> list_icon = [15, 16, 17, 18];
  List<String> list_text = [
    "Личные данные",
    "Платежные карты",
    "Пассажиры",
    "Настройки"
  ];
  List<Color> list_color = [
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Uacademy",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemBuilder: (contex, index) {
            return ListTile(
              title: Text("${list_text[index]}"),
              leading: Image.asset("assets/${list_icon[index]}.png"),
              trailing: Icon(Icons.chevron_right_outlined),
            );
          },
          itemCount: 4),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search),
            label: "Поиск",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_volleyball_outlined),
            activeIcon: Icon(Icons.sports_volleyball_outlined),
            label: "Интересное",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            activeIcon: Icon(Icons.account_balance),
            label: "Бронирования",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            activeIcon: Icon(Icons.person),
            label: "Профиль",
          ),
        ],
      ),
    );
  }
}
