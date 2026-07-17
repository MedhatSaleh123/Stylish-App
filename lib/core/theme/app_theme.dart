import 'package:flutter/material.dart';
import 'package:stylish_app/core/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    colorSchemeSeed: AppColors.primary,
    fontFamily: "Poppins",
  );
}
