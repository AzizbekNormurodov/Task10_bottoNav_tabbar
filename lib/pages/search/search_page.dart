import 'package:flutter/material.dart';
import 'package:task10_04_04_23/pages/search/widget/popular_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // late TabController tabController;
  // int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // tabController = TabController();
    // tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Colors.white,
          bottom:  const TabBar(
            // controller: tabController,
            isScrollable: true,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black38,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.cyan, width: 2),
              ),
            ),
            tabs:  [
              Tab(
                text: "Полёт",
                icon: Image( color: Color(0xff969696),
                    image: AssetImage(
                      "assets/search/plane.png",
                    )),
              ),
              Tab(
                text: "Отель",
                icon: Image(
                    image: AssetImage("assets/search/bed 1.png")),
              ),
              Tab(
                text: "Туры",
                icon: Image(
                    image: AssetImage(
                        "assets/search/compass-with-white-needles 1.png")),
              ),
              Tab(
                text: "Автопрокат",
                icon: Image(
                    image: AssetImage("assets/search/car.png")),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: const [
                    ListTile(
                      leading: Image(image: AssetImage("assets/search/flight-takeoff-line 2.png"),),
                      title: Text("Откуда"),
                    ),
                    ListTile(
                      leading: Image(image: AssetImage("assets/search/flight-land-line 1.png"),),
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
                        children: const [
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
                        children: const [
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
                        children: const [
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
              child: const Center(
                child: Text(
                  "Найти билеты",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: const [
                SizedBox(width: 10),
                Text(
                  "Популярные направления",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const PopularWidget(),
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
            const SizedBox(height: 20),
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
                              fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
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
                              fontSize: 8),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
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
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffA6C3FF),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 76,
                    width: 77,
                    child: Column(
                      children: const [
                        Icon(
                          Icons.help_outline,
                          size: 30,
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
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 80,
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
                  const SizedBox(width: 10),
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
                  const SizedBox(width: 10),
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
          ],
        ),
      ),
    );
  }
}
