
import 'package:flutter/material.dart';
import 'package:task10_04_04_23/pages/interesting/widget/popular_widget.dart';

class InterestingPage extends StatefulWidget {
  const InterestingPage({Key? key}) : super(key: key);

  @override
  State<InterestingPage> createState() => _InterestingPageState();
}

class _InterestingPageState extends State<InterestingPage> with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Интересное",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: const [
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
                          const Text(
                            "Игры кочевников",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const Text(
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
                          const Text(
                            "Бодрум за 5 дней!",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const Text(
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
                          const Text(
                            "Игры кочевников",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const Text(
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
                          const Text(
                            "Бодрум за 5 дней!",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const Text(
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
              children: const [
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
                        Image.asset("assets/3.png"),
                        const Text(
                          "Возврат \nавиабилета",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
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
                        Image.asset("assets/4.png"),
                        const Text(
                          "Обмен \nавиабилета",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
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
                          "assets/5.png",
                          width: 35,
                        ),
                        const Text(
                          "Безопасность \nплатежей",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
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
                      children: const [
                        Icon(
                          Icons.help_outline,
                          size: 35,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Возврат \nавиабилета",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
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
                        Image.asset("assets/3.png"),
                        const Text(
                          "Возврат \nавиабилета",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
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
                        Image.asset("assets/4.png"),
                        const Text(
                          "Обмен \nавиабилета",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
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
                          "assets/5.png",
                          width: 35,
                        ),
                        const Text(
                          "Безопасность \nплатежей",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                SizedBox(width: 10),
                Text(
                  "Популярные направления",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 15),
            PopularWidget(),
          ],
        ),
      ),
    );
  }
}
