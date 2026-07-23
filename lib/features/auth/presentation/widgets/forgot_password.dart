import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_router.dart';
import 'package:stylish_app/core/constants/app_colors.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(AppName.forgotPassword);
      },
      child: const Text(
        "Forgot Password?",
        style: TextStyle(
          color: AppColors.primary,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
