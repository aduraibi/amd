import 'package:flutter/material.dart';
import '../constants.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final InputType inputType;
  final Function onChange;

  InputField(
      {required this.hintText,
      required this.inputType,
      required this.onChange});

  TextInputType getKeyBoard() {
    switch (inputType) {
      case InputType.text:
        return TextInputType.text;
      case InputType.email:
        return TextInputType.emailAddress;
      case InputType.password:
        return TextInputType.visiblePassword;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: inputType == InputType.password,
      keyboardType: getKeyBoard(),
      onChanged: (value) => onChange(value),
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
