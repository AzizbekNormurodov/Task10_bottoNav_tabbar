import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  const PopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 190,
            width: 150,
            child: Column( mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/7.png",
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Игры кочевников",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Text(
                  "Стамбул",
                  style: TextStyle(
                      color: Color(0xff64686B),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 190,
            width: 150,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/8.png",
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Бодрум за 5 дней!",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Text(
                  "Бодрум",
                  style: TextStyle(
                      color: Color(0xff64686B),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 190,
            width: 150,
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/1.png",
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Виноградный тур",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Text(
                  "Тбили́си",
                  style: TextStyle(
                      color: Color(0xff64686B),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 190,
            width: 150,
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/2.png",
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Лондон",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Text(
                  "Стамбул",
                  style: TextStyle(
                      color: Color(0xff64686B),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
