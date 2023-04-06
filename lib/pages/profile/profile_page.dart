import 'dart:html';

import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with TickerProviderStateMixin {
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
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column( mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Uacademy",
              style: TextStyle(
                  color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
            ),
            Text("john.doe@gmail.com", style: TextStyle(color: Color(0xff818C99), fontSize: 15, fontWeight: FontWeight.w500),),
            SizedBox(height: 16),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                  itemBuilder: (contex, index) {
                    return ListTile(
                      title: Text("${list_text[index]}"),
                      leading: Image.asset("assets/${list_icon[index]}.png"),
                      trailing: Icon(Icons.chevron_right_outlined),
                    );
                  },
                  itemCount: 4),
            ),
          ],
        ),
      ),

    );
  }
}
