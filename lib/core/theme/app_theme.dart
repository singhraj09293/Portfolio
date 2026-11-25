import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/theme/app_text_style.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.blue,
    colorScheme: const ColorScheme.light(
      primary: AppColors.lime,
      onPrimary: AppColors.ink,
      secondary: AppColors.orange,
      surface: AppColors.cream,
      onSurface: AppColors.ink,
    ),
    textTheme: TextTheme(
      displayLarge: AppTextStyle.display,
      headlineMedium: AppTextStyle.heading,
      bodyLarge: AppTextStyle.body,
      labelLarge: AppTextStyle.label,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.ink,
        foregroundColor: AppColors.cream,
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: AppTextStyle.label,
        elevation: 0,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.ink,
        side: const BorderSide(color: AppColors.ink, width: 2),
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: AppTextStyle.label,
      ),
    ),
    chipTheme: ChipThemeData(
      shape: const StadiumBorder(),
      side: const BorderSide(color: AppColors.ink, width: 1.5),
      labelStyle: AppTextStyle.label,
    ),
  );
}
