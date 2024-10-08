import 'package:flutter/material.dart';

class AppColors {
  static const darkBlue = Color(0xFF1E1E2C);
  static const lightBlue = Color(0xFF2D2D44);
}

class AppThemes {
  static final theme = ThemeData(
      primaryColor: AppColors.darkBlue,
      brightness: Brightness.dark,
      fontFamily: 'Fira Sans');
}
