import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task10_04_04_23/core/theme_colors.dart';
import 'package:task10_04_04_23/pages/search/widget/new_offer_widget.dart';
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
          bottom: const TabBar(
            // controller: tabController,
             isScrollable: true,
            labelColor: ThemeColors.primary,
            unselectedLabelColor: ThemeColors.black,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.cyan, width: 2),
              ),
            ),
            tabs:  [
              Tab(
                text: "Полёт",
                icon: Icon(Icons.airplanemode_active),
              ),
              Tab(
                text: "Отель",
                icon: Icon(Icons.hotel),
              ),
              Tab(
                text: "Туры",
                icon: Icon(Icons.merge_type),
              ),
              Tab(
                text: "Автопрокат",
                icon: Icon(Icons.car_crash),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container( height: 96, width: 343,
              color: Colors.white,
              child: Column(
                children: const [
                  SizedBox( height: 48,
                    child: ListTile(
                      visualDensity: VisualDensity(vertical: 0),
                      leading: Image(
                        image: AssetImage(
                            "assets/search/flight-takeoff-line 2.png"),
                      ),
                      title: Text("Откуда", style: TextStyle(color: ThemeColors.black,),),
                     trailing: Icon(Icons.compare_arrows),
                    ),
                  ),
                  SizedBox( height: 48,
                    child: ListTile(
                      visualDensity: VisualDensity(vertical: 0),
                      leading: Image(
                        image:
                            AssetImage("assets/search/flight-land-line 1.png"),
                      ),
                      title: Text("Куда", style: TextStyle(color: ThemeColors.black,),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 32, width: 133,
                  child: Row(
                    children: const [
                      SizedBox(width: 5),
                      Icon(Icons.calendar_month_rounded, color: Color(0xff303030),),
                      SizedBox(width: 5),
                      Text("Выберите дату", style: TextStyle(fontSize: 13, color: Color(0xff969696)),),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 32, width: 102,
                  child: Row(
                    children:  [
                      SizedBox(width: 5),
                      Icon(Icons.person, color: Color(0xff303030),),
                      SizedBox(width: 5),
                      Text("Эконом, 1"),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 32, width: 108,
                  child: Row(
                    children: const [
                      SizedBox(width: 5),
                      Icon(Icons.equalizer_rounded),
                      SizedBox(width: 5),
                      Text("Фильтр"),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: ThemeColors.primary,
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
                Text(
                  "Популярные направления",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 12),
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
            const SizedBox(height: 12),
            NewOfferWidget(),
          ],
        ),
      ),
    );
  }
}
