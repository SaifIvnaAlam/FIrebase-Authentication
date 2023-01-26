import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String? buttonText;
  const MyButton({super.key, required this.onTap, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            buttonText == null ? "Sign In" : buttonText.toString(),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
