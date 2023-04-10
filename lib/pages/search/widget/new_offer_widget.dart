import 'package:flutter/material.dart';

class NewOfferWidget extends StatelessWidget {
  const NewOfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 76,
            width: 77,
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/3.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 5,),
                  child: const Text(
                    "Возврат \nавиабилета",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 76,
            width: 77,
            child: Column(
              children: [
                Image.asset("assets/4.png", width: 45, height: 41),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 11),
                  child: const Text(
                    "Обмен \nавиабилета",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 76,
            width: 77,
            child: Column(
              children: [
                Image.asset(
                  "assets/5.png",
                  width: 35, height: 43,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "Безопасность \nплатежей",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffA6C3FF),
              borderRadius: BorderRadius.circular(8),
            ),
            height: 76,
            width: 77,
            child: Column(
              children: const [
                Icon(
                  Icons.help_outline,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    "Задать \nвопрос",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 76,
            width: 77,
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/3.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 5,),
                  child: const Text(
                    "Возврат \nавиабилета",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 9),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 76,
            width: 77,
            child: Column(
              children: [
                Image.asset("assets/4.png", width: 45, height: 41),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 11),
                  child: const Text(
                    "Обмен \nавиабилета",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 8),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            height: 76,
            width: 77,
            child: Column(
              children: [
                Image.asset(
                  "assets/5.png",
                  width: 35, height: 43,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: const Text(
                    "Безопасность \nплатежей",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
