import 'package:flutter/material.dart';
import '../app_colors.dart';

final InputDecorationTheme customInputDecorationTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  hintStyle: const TextStyle(
    fontSize: 14,
    color: AppColors.grey,
    fontWeight: FontWeight.w400,
  ),
  prefixIconColor: AppColors.grey,
  suffixIconColor: AppColors.grey,
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.grey,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: AppColors.grey.withAlpha(50),
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1,
      color: AppColors.Primary,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: const BorderSide(
      width: 1.5,
      color: AppColors.red,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
);
