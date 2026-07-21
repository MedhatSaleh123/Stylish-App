import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 32,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image.asset("assets/home/appBarItem.png"),
        ),

        const Spacer(),

        Row(
          children: [
            Image.asset("assets/home/logo.png", height: 31, width: 38),

            const SizedBox(width: 8),

            const Text(
              "Stylish",
              style: TextStyle(
                color: Color(0xff4392F9),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        const Spacer(),

        const CircleAvatar(
          radius: 22,
          backgroundImage: AssetImage("assets/home/profile.png"),
        ),
      ],
    );
  }
}
