import 'package:flutter/material.dart';

class GetStartedBackground extends StatelessWidget {
  const GetStartedBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        "assets/home/getStartedBakground.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
