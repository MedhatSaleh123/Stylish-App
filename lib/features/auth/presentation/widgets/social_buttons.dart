import 'package:flutter/material.dart';
import 'package:stylish_app/features/auth/presentation/widgets/social_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
    required this.onTapGoogle,
    required this.onTapApple,
    required this.onTapFace,
  });
  final void Function() onTapGoogle;
  final void Function() onTapApple;
  final void Function() onTapFace;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(
          onTap: onTapGoogle,
          image: "assets/signup_and_signin/google.png",
        ),

        SizedBox(width: 18),

        SocialButton(
          onTap: onTapApple,
          image: "assets/signup_and_signin/apple.png",
        ),

        SizedBox(width: 18),

        SocialButton(
          onTap: onTapFace,
          image: "assets/signup_and_signin/facebook.png",
        ),
      ],
    );
  }
}
