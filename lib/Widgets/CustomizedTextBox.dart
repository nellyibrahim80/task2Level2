import 'package:flutter/material.dart';

class CustomizedTextBox extends StatefulWidget {
  const CustomizedTextBox({super.key,});

  @override
  State<CustomizedTextBox> createState() => _CustomizedTextBoxState();
}

class _CustomizedTextBoxState extends State<CustomizedTextBox> {
  var userData = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: userData,
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      autofocus: true,
      autocorrect: false,
      decoration: InputDecoration(
          labelText: "Username",

          contentPadding: EdgeInsets.only(bottom: 5),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                  width: 0, style: BorderStyle.none))),

    );
  }
}
