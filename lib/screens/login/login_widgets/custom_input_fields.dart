import 'package:flutter/material.dart';

class CustomInputFields extends StatelessWidget {
  const CustomInputFields(
      {Key? key, required this.controller, required this.text})
      : super(key: key);

  final TextEditingController controller;
  final String text;

  _isVisible(text) {
    if (text == "Password") {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        obscureText: _isVisible(text) ? true : false,
        decoration: InputDecoration(
          suffixIcon:
              _isVisible(text) ? const Icon(Icons.visibility_off) : null,
          fillColor: Colors.grey[200],
          filled: true,
          hintText: text,
          contentPadding: const EdgeInsets.only(left: 16.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
