import 'package:flutter/material.dart';
import 'app_colors.dart';

final ElevatedButtonThemeData customElevatedButtonTheme =
    ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all(AppColors.Primary),
    foregroundColor: WidgetStateProperty.all(AppColors.secondary),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    textStyle: WidgetStateProperty.all<TextStyle>(
      const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
);
