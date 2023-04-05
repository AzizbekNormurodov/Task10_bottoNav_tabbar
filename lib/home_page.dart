import 'dart:html';

import 'package:flutter/material.dart';

import 'home_page1.dart';
import 'home_page2.dart';
import 'home_page3.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
  List<Widget> _widgetOptions=[
    HomePage(),
    HomePage1(),
    HomePage2(),
    HomePage3(),
  ];


  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black38,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.cyan, width: 2),
            ),
          ),
          tabs: [
            Tab(
              text: "Полёт",
              icon: Icon(
                Icons.airplanemode_active,
              ),
            ),
            Tab(
              text: "Отель",
              icon: Icon(Icons.hotel),
            ),
            Tab(
              text: "Туры",
              icon: Icon(Icons.compass_calibration),
            ),
            Tab(
              text: "Автопрокат",
              icon: Icon(Icons.car_crash),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView( scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.airplane_ticket_outlined),
                      title: Text("Откуда"),
                    ),
                    ListTile(
                      leading: Icon(Icons.airplane_ticket_outlined),
                      title: Text("Куда"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.calendar_month),
                          SizedBox(width: 10),
                          Text("Выберите дату"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.person_outline),
                          SizedBox(width: 10),
                          Text("Эконом, 1"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 40,
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.equalizer_rounded),
                          SizedBox(width: 10),
                          Text("Фильтр"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              width: 485,
              height: 48,
              child: Center(
                child: Text(
                  "Найти билеты",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Популярные направления",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/1.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Санк Петербург",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "от 1 850 000 uzs",
                            style: TextStyle(
                                color: Color(0xff64686B),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/2.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Лондон",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "от 1 850 000 uzs",
                            style: TextStyle(
                                color: Color(0xff64686B),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/1.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Санк Петербург",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "от 1 850 000 uzs",
                            style: TextStyle(
                                color: Color(0xff64686B),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/2.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Лондон",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "от 1 850 000 uzs",
                            style: TextStyle(
                                color: Color(0xff64686B),
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Новые предложение",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 76,
                    width: 77,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/3.png"
                        ),
                        Text(
                          "Возврат \nавиабилета",
                          style: TextStyle( color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 76,
                    width: 77,
                    child: Column(
                      children: [
                        Image.asset(
                            "assets/4.png"
                        ),
                        Text(
                          "Обмен \nавиабилета",
                          style: TextStyle( color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 70,
                    width: 70,
                    child: Column(
                      children: [
                        Image.asset(
                            "assets/5.png" , width: 35,
                        ),
                        Text(
                          "Безопасность \nплатежей",
                          style: TextStyle( color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffA6C3FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 76,
                    width: 77,
                    child: Column(
                      children: [
                        Icon(Icons.help_outline,size: 35, color: Colors.white,),
                        SizedBox(height: 15,),
                        Text(
                          "Возврат \nавиабилета",
                          style: TextStyle( color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 76,
                    width: 77,
                    child: Column(
                      children: [
                        Image.asset(
                            "assets/3.png"
                        ),
                        Text(
                          "Возврат \nавиабилета",
                          style: TextStyle( color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 76,
                    width: 77,
                    child: Column(
                      children: [
                        Image.asset(
                            "assets/4.png"
                        ),
                        Text(
                          "Обмен \nавиабилета",
                          style: TextStyle( color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 70,
                    width: 70,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/5.png" , width: 35,
                        ),
                        Text(
                          "Безопасность \nплатежей",
                          style: TextStyle( color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
