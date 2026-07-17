import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String image;
  final void Function() onTap;
  const SocialButton({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,

      child: Container(
        height: 54,
        width: 54,

        decoration: BoxDecoration(
          color: Color(0xffFCF3F6),
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xffF83758)),
        ),

        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
