import 'package:flutter/material.dart';

import 'home_page.dart';
import 'home_page1.dart';
import 'home_page2.dart';
import 'home_page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
       // home: HomePage(),
       // home: HomePage1(),
       // home: HomePage2(),
       home: HomePage3(),
    );
  }
}




