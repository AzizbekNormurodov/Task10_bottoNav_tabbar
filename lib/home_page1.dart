import 'dart:html';

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'home_page1.dart';
import 'home_page2.dart';
import 'home_page3.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
  List<Widget> _widgetOptions = [
    HomePage(),
    HomePage1(),
    HomePage2(),
    HomePage3(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, centerTitle: true,
        title: Text("Интересное",
          style: TextStyle( color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),),
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
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
                            "assets/7.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Игры кочевников",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "Стамбул",
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
                            "assets/8.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Бодрум за 5 дней!",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "Бодрум",
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
                            "assets/7.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Игры кочевников",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "Стамбул",
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
                            "assets/8.png",
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            "Бодрум за 5 дней!",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          Text(
                            "Бодрум",
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
                          style: TextStyle(color: Colors.white,
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
                          style: TextStyle(color: Colors.white,
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
                          "assets/5.png", width: 35,
                        ),
                        Text(
                          "Безопасность \nплатежей",
                          style: TextStyle(color: Colors.white,
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
                        Icon(
                          Icons.help_outline, size: 35, color: Colors.white,),
                        SizedBox(height: 15,),
                        Text(
                          "Возврат \nавиабилета",
                          style: TextStyle(color: Colors.white,
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
                          style: TextStyle(color: Colors.white,
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
                          style: TextStyle(color: Colors.white,
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
                          "assets/5.png", width: 35,
                        ),
                        Text(
                          "Безопасность \nплатежей",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.w600, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
