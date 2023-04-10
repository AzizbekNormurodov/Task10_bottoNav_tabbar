import 'package:flutter/material.dart';
import 'package:task10_04_04_23/core/theme_colors.dart';
import 'package:task10_04_04_23/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: ThemeColors.primary,
        scaffoldBackgroundColor: ThemeColors.backgroundColor,
        tabBarTheme: const TabBarTheme(
          indicator: UnderlineTabIndicator(
            borderSide: BorderSide(
              color: ThemeColors.primary,
            ),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xff0FB8D3),
          unselectedItemColor: Color(0xff969696),
          unselectedLabelStyle: TextStyle(fontSize: 11),
          selectedLabelStyle: TextStyle(fontSize: 11),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
