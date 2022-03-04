import 'package:flutter/material.dart';

class CustomInputFields extends StatelessWidget {
  const CustomInputFields(
      {Key? key, required this.controller, required this.text})
      : super(key: key);

  final TextEditingController controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          label: Text(text),
          hintText: "Enter $text",
          contentPadding: const EdgeInsets.only(left: 16.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.lime[500]!,
            ),
          ),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue[900]!,
            ),
          ),
        ),
      ),
    );
  }
}
