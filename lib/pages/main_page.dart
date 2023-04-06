import 'package:flutter/material.dart';

import 'booking/bokking_page.dart';
import 'search/search_page.dart';
import 'interesting/interesting_page.dart';
import 'profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          SearchPage(),
          InterestingPage(),
          BokkingPage(),
          ProfilePage(),
        ],
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
        items: const [
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/search/search.png")),
            activeIcon: Image(image: AssetImage("assets/search/search.png")),
            label: "Поиск",
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/search/world-map.png")),
            activeIcon: Image(image: AssetImage("assets/search/world-map.png")),
            label: "Интересное",
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/search/coupon.png")),
            activeIcon: Image(image: AssetImage("assets/search/coupon.png")),
            label: "Бронирования",
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage("assets/search/user.png")),
            activeIcon: Image(image: AssetImage("assets/search/user.png")),
            label: "Профиль",
          ),
        ],
      ),
    );
  }
}
