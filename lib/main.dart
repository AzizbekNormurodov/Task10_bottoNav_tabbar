import 'package:flutter/material.dart';
import 'package:task10_04_04_23/pages/main_page.dart';

import 'pages/search/search_page.dart';
import 'pages/interesting/interesting_page.dart';
import 'pages/booking/bokking_page.dart';
import 'pages/profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
