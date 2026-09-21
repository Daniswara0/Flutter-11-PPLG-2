import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  //variable yang diperlukan
  final String hintText;
  final TextEditingController controller;
  const MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hint: Text(hintText),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}