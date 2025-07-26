import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final mainTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.text,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
      ),
    ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: AppColors.background,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )

  );
}
