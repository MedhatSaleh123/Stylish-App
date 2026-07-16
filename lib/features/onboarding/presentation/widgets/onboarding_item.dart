import 'package:flutter/material.dart';

import '../../data/models/onboarding_model.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel page;

  const OnBoardingItem({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 150),
        Image.asset(page.image, fit: BoxFit.cover, width: 350, height: 230),
        SizedBox(height: 30),

        Text(
          page.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 25),

        Text(
          page.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xffA8A8A9),
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
