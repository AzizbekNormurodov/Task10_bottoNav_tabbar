import 'package:flutter/material.dart';
import 'package:task10_04_04_23/core/theme_colors.dart';
import 'package:task10_04_04_23/pages/edit_profile/widget/textformfild_widget.dart';

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
        title: const Text(
          "Редактировать профиль",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container( width: double.infinity, height: 350,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ФИО",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 6),
                  TextFormFildWidget(),
                  SizedBox(height: 16),
                  const Text(
                    "Дата рождения",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 6),
                  TextFormFildWidget(),
                  SizedBox(height: 16),
                  const Text(
                    "Пол",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Container( height: 44,
                      decoration: BoxDecoration(color: Color(0xffF6F6F6),),
                      child: DropdownButton( underline: SizedBox(),
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
                  SizedBox(height: 16),
                  const Text(
                    "Номер телефона",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 6),
                  TextFormFildWidget(),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 45,
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
    );
  }
}
