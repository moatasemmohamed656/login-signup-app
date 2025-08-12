// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class AlertManagers {
  static Future<T> showAppDialog<T>({
    bool barrierdismissible = true,
    Color? barriercolor,
    required Widget child,
  }) async {
    return await showDialog(
        context: context,
        barrierDismissible: barrierdismissible,
        barrierColor: barriercolor,
        builder: (builder) => Dialog(
              child: child,
              insetPadding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ));
  }
}
