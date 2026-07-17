import 'package:flutter/material.dart';

class DividerSection extends StatelessWidget {
  const DividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            " OR Continue with ",
            style: TextStyle(
              color: Color(0xff575757),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        Expanded(child: Divider()),
      ],
    );
  }
}
