import 'package:flutter/material.dart';
import 'package:stylish_app/features/home/presentation/widgets/small_button.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Text(
            "All Featured",
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
