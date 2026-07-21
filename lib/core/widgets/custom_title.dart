import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/presentation/widgets/small_button.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),

        SmallButton(text: "Sort", icon: Icons.swap_vert),

        const SizedBox(width: 8),

        SmallButton(text: "Filter", icon: Icons.filter_alt_outlined),
      ],
    );
  }
}
