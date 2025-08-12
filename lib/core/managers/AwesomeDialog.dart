// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_application_1/core/app_colors.dart';

class DialogHelper {
  static void showSuccessDialog(
    BuildContext context,
    final String title,
    final String message,
  ) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.scale,
      btnOkIcon: Icons.check_circle,
      btnOkColor: AppColors.green.withOpacity(0.8),
      title: title,
      desc: message,
      btnOkOnPress: () {},
    ).show();
  }

  static void showErrorDialog(
      BuildContext context, String title, String message) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.leftSlide,
      title: title,
      desc: message,
      btnOkOnPress: () {},
    ).show();
  }

  static void showWarningDialog(
    BuildContext context,
    String title,
    String message,
    VoidCallback? btnOkOnPress,
  ) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.rightSlide,
      title: title,
      desc: message,
      btnCancelOnPress: () {},
      btnOkOnPress: btnOkOnPress,
    ).show();
  }
}
