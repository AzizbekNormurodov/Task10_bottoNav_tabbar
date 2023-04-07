import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EnterPhonePages extends StatefulWidget {
  const EnterPhonePages({Key? key}) : super(key: key);

  @override
  State<EnterPhonePages> createState() => _EnterPhonePagesState();
}

class _EnterPhonePagesState extends State<EnterPhonePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.black,
        ),
        elevation: 0,
        toolbarHeight: 18,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Ваш номер телефона",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 32),
            Text(
              "Мы отправим код подтверждения на ваш \nномер",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff92979B),
              ),
            ),
            SizedBox(height: 40),
            const Text(
              "Номер телефона",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                MaskTextInputFormatter(
                  mask: '(##) ###-##-##',
                  filter: {'#': RegExp(r'[0-9]')},
                  type: MaskAutoCompletionType.lazy,
                ),
              ],
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xff7059F6),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color(0xff7059F6),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                prefixText: "+998",

                hintText: 'Введите номер телефона',
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ButtonStyle( shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),

                  ),
              ),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.disabled)) {
                      return const Color(0xff7059F6).withOpacity(0.15);
                    }
                    return const Color(0xff7059F6);
                  },
                ),
                minimumSize: const MaterialStatePropertyAll(
                  Size.fromHeight(50),
                ),
                fixedSize: const MaterialStatePropertyAll(
                  Size.fromHeight(50),
                ),
                foregroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.black;
                  }
                  return Colors.white;
                }),
              ),
              onPressed: () {},
              child: const Text("Подтвердить номер телефона"),
            ),
          ],
        ),
      ),
    );
  }
}
