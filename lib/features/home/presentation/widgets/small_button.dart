import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const SmallButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [Text(text), const SizedBox(width: 4), Icon(icon, size: 18)],
      ),
    );
  }
}
