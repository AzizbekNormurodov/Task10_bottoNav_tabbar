import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task10_04_04_23/core/theme_colors.dart';
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
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/ic_search.svg",
              color: Color(0xff969696),
            ),
            activeIcon: SvgPicture.asset(
              "assets/svg/ic_search.svg",
              color: ThemeColors.primary,
            ),
            label: "Поиск",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_world-map.svg"),
            activeIcon: SvgPicture.asset(
              "assets/svg/ic_world-map.svg",
              color: ThemeColors.primary,
            ),
            label: "Интересное",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_coupon.svg"),
            activeIcon: SvgPicture.asset(
              "assets/svg/ic_coupon.svg",
              color: ThemeColors.primary,
            ),
            label: "Бронирования",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_user.svg"),
            activeIcon: SvgPicture.asset(
              "assets/svg/ic_user.svg",
              color: ThemeColors.primary,
            ),
            label: "Профиль",
          ),
        ],
      ),
    );
  }
}
