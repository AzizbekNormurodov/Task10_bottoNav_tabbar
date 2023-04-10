import 'package:flutter/material.dart';
import 'package:task10_04_04_23/core/theme_colors.dart';

class BokkingPage extends StatefulWidget {
  const BokkingPage({Key? key}) : super(key: key);

  @override
  State<BokkingPage> createState() => _BokkingPageState();
}

class _BokkingPageState extends State<BokkingPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
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
  List<Color> list_color = [
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
  ];
  int current = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Image.asset("assets/icons8-equalizer-48.png", width: 18, height: 18,),
            ),
          ],
          title: Text(
            "Бронирования",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
           bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
              ),
              child: TabBar(
                labelColor: Colors.black,
                padding: EdgeInsets.all(4),
                controller: tabController,
                indicator: BoxDecoration(
                  color: ThemeColors.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(62),
                  ),
                ),
                tabs: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(62),
                    ),
                    child: Tab(
                        child: SizedBox(
                            width: 120,
                            child: Center(child: Text("Предстоящие")))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(62),
                    ),
                    child: Tab(
                        child: SizedBox(
                            width: 120, child: Center(child: Text("История")))),
                  ),
                ],
              ),
            ),
          ),
        ),
         body:
        TabBarView(
          controller: tabController,
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, right: 16 ),
                  child: Container( decoration: BoxDecoration( color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8),),
                  ),
                    width: 343,
                    height: 70,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 11,bottom: 11),
                          child: Image.asset("assets/${list_icon[index]}.png", width: 48, height: 48,),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ SizedBox(height: 8),
                            Text(
                              "${list_text[index]}",
                              style: TextStyle(
                                  color: Color(0xff303030),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "${list_text1[index]}",
                              style: TextStyle(
                                  color: Color(0xff969696),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 2),
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
            ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, right: 16 ),
                  child: Container( decoration: BoxDecoration( color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8),),
                  ),
                    width: 343,
                    height: 70,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 11,bottom: 11),
                          child: Image.asset("assets/${list_icon[index]}.png", width: 48, height: 48,),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ SizedBox(height: 8),
                            Text(
                              "${list_text[index]}",
                              style: TextStyle(
                                  color: Color(0xff303030),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 13),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "${list_text1[index]}",
                              style: TextStyle(
                                  color: Color(0xff969696),
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(height: 2),
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
    );
  }
}
