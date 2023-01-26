import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool abcureText;
  const MyTextField(
      {super.key,
      required this.abcureText,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: abcureText,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey[600]),
          hintText: hintText,
          fillColor: Colors.grey.shade200,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
        ),
      ),
    );
  }
}
