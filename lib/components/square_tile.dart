import 'package:flutter/material.dart';

class SqureTile extends StatelessWidget {
  final IconData icon;
  const SqureTile({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200]),
      child: Icon(
        icon,
        size: 50,
      ),
    );
  }
}
