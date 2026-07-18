import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_button.dart';

class GetStartedContent extends StatelessWidget {
  const GetStartedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const Spacer(),

            const Text(
              "You want\nAuthentic, here\nyou go!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
                height: 1.15,
              ),
            ),

            const SizedBox(height: 18),

            Text(
              "Find it here, buy it now!",
              style: TextStyle(
                color: Color(0xffF2F2F2),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 45),

            CustomButton(text: "Get Started", onPressed: () {}),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
