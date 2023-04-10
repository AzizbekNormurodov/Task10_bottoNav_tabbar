import 'package:flutter/material.dart';
import 'package:task10_04_04_23/core/theme_colors.dart';
import 'package:task10_04_04_23/pages/edit_profile/edit_profile_page.dart';
import 'package:task10_04_04_23/pages/edit_profile/mycard_page.dart';
import 'package:task10_04_04_23/pages/edit_profile/passengers_page.dart';
import 'package:task10_04_04_23/pages/enter_phone/enter_phone_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;
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
        toolbarHeight: 0,
        backgroundColor: ThemeColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Uacademy",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "john.doe@gmail.com",
              style: TextStyle(
                  color: Color(0xff818C99),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            ListTile(  shape: RoundedRectangleBorder( //<-- SEE HERE
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8), topRight: Radius.circular(8))
            ),
              tileColor: Colors.white,
              onTap: () {
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (_) => EditProfilePage());
                Navigator.push(context, route);
              },
              leading: Image.asset("assets/15.png"),
              title: Text('Личные данные'),
              trailing: Icon(Icons.chevron_right_outlined),
            ),
            ListTile(
              tileColor: Colors.white,
              onTap: () {
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (_) => MyCardsPage());
                Navigator.push(context, route);
              },
              leading: Image.asset("assets/16.png"),
              title: Text('Платежные карты'),
              trailing: Icon(Icons.chevron_right_outlined),
            ),
            ListTile(
              tileColor: Colors.white,
              onTap: () {
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (_) => PassengersPage());
                Navigator.push(context, route);
              },
              leading: Image.asset("assets/17.png"),
              title: Text('Платежные карты'),
              trailing: Icon(Icons.chevron_right_outlined),
            ),
            ListTile( shape: RoundedRectangleBorder( //<-- SEE HERE
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))
            ),
              tileColor: Colors.white,
              onTap: () {
                MaterialPageRoute route =
                    MaterialPageRoute(builder: (_) => EnterPhonePage());
                Navigator.push(context, route);
              },
              leading: Image.asset("assets/18.png"),
              title: Text('Настройки'),
              trailing: Icon(Icons.chevron_right_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
