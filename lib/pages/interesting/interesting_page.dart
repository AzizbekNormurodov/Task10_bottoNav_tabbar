
import 'package:flutter/material.dart';
import 'package:task10_04_04_23/pages/interesting/widget/new_offer_widget.dart';
import 'package:task10_04_04_23/pages/interesting/widget/popular_destinations_widget.dart';
import 'package:task10_04_04_23/pages/interesting/widget/popular_widget.dart';

class InterestingPage extends StatefulWidget {
  const InterestingPage({Key? key}) : super(key: key);

  @override
  State<InterestingPage> createState() => _InterestingPageState();
}

class _InterestingPageState extends State<InterestingPage> with TickerProviderStateMixin {
  late TabController tabController;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Интересное",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 12, left: 16),
                  child: Text(
                    "Популярные туры",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: PopularWidget(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
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
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: NewOfferWidget(),
            ),
            SizedBox(height: 22),
            Row(
              children: const [
                SizedBox(width: 16),
                Text(
                  "Популярные направления",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: PopularDestinationsWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
