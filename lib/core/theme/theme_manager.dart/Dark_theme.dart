import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.Primary,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.Primary,
    iconTheme: IconThemeData(color: AppColors.Primary),
    titleTextStyle: TextStyle(
      color: AppColors.Primary,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.grey[800],
      foregroundColor: Colors.white,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: const TextStyle(color: AppColors.grey),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.grey),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.Primary),
      borderRadius: BorderRadius.circular(8),
    ),
  ),
);
