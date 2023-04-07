import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  List<String> countries = ["Мужчина", "Женщина"];
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.keyboard_arrow_left),
        title: const Text(
          "Редактировать профиль",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "ФИО",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 6),
              TextFormField(
                decoration:  const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  // hintText: '',
                ),
              ),

              SizedBox(height: 10),
              const Text(
                "Дата рождения",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 6),
              TextFormField(
                decoration:  const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                 // hintText: '',
                ),
              ),
              SizedBox(height: 10),
              const Text(
                "Пол",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 6),
              Container(
                decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.black45,),),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: DropdownButton(
                    isExpanded: true,
                    menuMaxHeight: double.infinity,
                    value: country,
                    items: countries.map((country) {
                      return DropdownMenuItem(
                        child: Text(country),
                        value: country,
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        country = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              const Text(
                "Номер телефона",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 6),
              TextFormField(
                decoration:  const InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.black, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  // hintText: '',
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Сохранить",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
