import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';

class SnackbarHelper {
  static void showSuccess(BuildContext context, String message) {
    _show(context, message, AppColors.Primary);
  }

  static void showError(BuildContext context, String message) {
    _show(context, message, AppColors.red);
  }

  static void showInfo(BuildContext context, String message) {
    _show(context, message, AppColors.blue);
  }

  static void _show(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(
              color: AppColors.secondary, fontWeight: FontWeight.bold),
        ),
        backgroundColor: color,
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
