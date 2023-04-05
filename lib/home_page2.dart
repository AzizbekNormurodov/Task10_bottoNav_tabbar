import 'dart:html';

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'home_page1.dart';
import 'home_page3.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
  List<Widget> _widgetOptions = [
    HomePage(),
    HomePage1(),
    HomePage2(),
    HomePage3(),
  ];
  List<int> list_icon = [10, 11, 12, 13, 14];
  List<String> list_text = [
    "The White House",
    "Ташкент --------- Самарканд",
    "Ташкент --------- Лондон",
    "The White House",
    "Ташкент --------- Лондон"
  ];
  List<String> list_text1 = [
    "14 сент- 17сент",
    "14 сент, 6:20PM - 17сент, 08:05PM",
    "14 сент, 6:20PM - 17сент, 08:05PM",
    "14 сент- 17сент",
    "14 сент, 6:20PM - 17сент, 08:05PM"
  ];
  List<String> list_text2 = [
    "Забронирован",
    "Забронирован",
    "Отменён",
    "Забронирован",
    "Отменён"
  ];
  List <Color> list_color = [Colors.green, Colors.green, Colors.red,Colors.green, Colors.red,];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Бронирования",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xffF4F4F4),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: TabBar(
              labelColor: Colors.black,
              padding: EdgeInsets.all(4),
              controller: tabController,
              indicator: BoxDecoration(
                color: Color(0xff0FB8D3),
                borderRadius: BorderRadius.all(
                  Radius.circular(62),
                ),
              ),
              tabs: [
                Tab(text: "Предстоящие"),
                Tab(text: "История"),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TabBarView(
          controller: tabController,
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 343,
                    height: 70,
                    child: Row(
                      children: [
                        Image.asset("assets/${list_icon[index]}.png"),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${list_text[index]}",
                              style: TextStyle(
                                  color: Color(0xff303030),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${list_text1[index]}",
                              style: TextStyle(
                                  color: Color(0xff969696),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${list_text2[index]}",
                              style: TextStyle(
                                color: list_color[index],
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 5,
            ),
          ],
        ),
      ),
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
