import 'package:flutter/material.dart';

class AreadyHaveAccount extends StatelessWidget {
  const AreadyHaveAccount({
    super.key,
    required this.onTap,
    required this.text1,
    required this.text2,
  });
  final void Function() onTap;
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Color(0xff575757),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: TextStyle(
              decorationColor: Color(0xffF83758),
              decoration: TextDecoration.underline,
              color: Color(0xffF83758),
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
