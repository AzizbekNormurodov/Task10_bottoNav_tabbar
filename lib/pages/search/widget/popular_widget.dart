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
                  "assets/1.png",
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Санк Петербург",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Text(
                  "от 1 850 000 uzs",
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
                  "assets/2.png",
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Лондон",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Text(
                  "от 1 850 000 uzs",
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
                  "Санк Петербург",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                const Text(
                  "от 1 850 000 uzs",
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
                  "от 1 850 000 uzs",
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
