import 'package:flutter/material.dart';
import 'package:stylish_app/features/auth/presentation/widgets/social_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(
          onTap: () {},
          image: "assets/signup_and_signin/google.png",
        ),

        SizedBox(width: 18),

        SocialButton(onTap: () {}, image: "assets/signup_and_signin/apple.png"),

        SizedBox(width: 18),

        SocialButton(
          onTap: () {},
          image: "assets/signup_and_signin/facebook.png",
        ),
      ],
    );
  }
}
