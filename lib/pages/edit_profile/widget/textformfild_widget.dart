
import 'package:flutter/material.dart';

class TextFormFildWidget extends StatelessWidget {
  const TextFormFildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: SizedBox( height: 44,
        child: TextFormField(
          decoration: InputDecoration( filled: true, fillColor: Color(0xffF6F6F6),
            isDense: false, border: InputBorder.none,
            contentPadding: EdgeInsets.fromLTRB(25, 25, 25, 0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0),
            ),
            // hintText: '',
          ),
        ),
      ),
    );
  }
}

