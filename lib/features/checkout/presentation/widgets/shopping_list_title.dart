import 'package:flutter/material.dart';

class ShoppingListTitle extends StatelessWidget {
  const ShoppingListTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Shopping List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
