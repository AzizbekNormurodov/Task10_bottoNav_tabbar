import 'package:flutter/material.dart';

class MyCardsPage extends StatefulWidget {
  MyCardsPage({Key? key}) : super(key: key);

  @override
  State<MyCardsPage> createState() => _MyCardsPageState();
}

class _MyCardsPageState extends State<MyCardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.keyboard_arrow_left),
        title: const Text(
          "Мои карты",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 66,
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Image.asset(
                    "assets/search/Uzcard.png",
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        "•••• •••• •••• 4432",
                        style: TextStyle(
                          color: Color(0xff303030),
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        " 03/21",
                        style: TextStyle(
                          color: Color(0xff969696),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 160),
                  Image.asset("assets/search/trash.png"),
                ],
              ),
            ),
          );
        },
        itemCount: 3,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 48,
        margin: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom( primary: Color(0xff0FB8D3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      child: const Center(
        child: Text('Добавить карту', style: TextStyle(color: Colors.white),),
      ),
    ),

    ),
    );
  }
}
