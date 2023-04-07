import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class ConfirmationCodePage extends StatefulWidget {
   ConfirmationCodePage({Key? key}) : super(key: key);

  @override
  State<ConfirmationCodePage> createState() => _ConfirmationCodePageState();
}

class _ConfirmationCodePageState extends State<ConfirmationCodePage> {
  String _code = "";

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
              "Код подтверждения",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 32),
            Text(
              "Введите 6-значный код из SMS",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff92979B),
              ),
            ),
            SizedBox(height: 5),
            Text("+380 410 22 55"),
            SizedBox(height: 40),
            Text(
              "СМС код",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            PinFieldAutoFill(
              decoration: UnderlineDecoration(
                textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
              ),
              currentCode: _code,
              onCodeSubmitted: (code) {},
              onCodeChanged: (code) {
                if (code!.length == 6) {
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
            ),
            const Spacer(),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
              child: const Text("Продолжить"),
            ),
          ],
        ),
      ),
    );
  }
}
