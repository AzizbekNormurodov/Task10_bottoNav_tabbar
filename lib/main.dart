import 'package:flutter/material.dart';
import 'package:task10_04_04_23/pages/enter_phone/confirmation_code_page.dart';
import 'package:task10_04_04_23/pages/enter_phone/enter_phone_page.dart';
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
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      //  home: EditProfilePage(),
      //  home: PassengersPage(),
      //  home: MyCardsPage(),
      //  home: EnterPhonePages(),
      //  home: ConfirmationCodePage(),
    );
  }
}
