import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/managers/AwesomeDialog.dart';
import 'package:flutter_application_1/core/managers/snackbar_helper.dart';
import 'package:flutter_application_1/core/navigation_helper.dart';
import 'package:flutter_application_1/data/productsmodul.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/view/product_detiles.dart';
import 'package:flutter_application_1/widget/app_button.dart';
import 'package:flutter_application_1/widget/custom_appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          title: 'Home',
          backgroundColor: AppColors.secondary,
          titleTextStyle: const TextStyle(
            color: AppColors.Primary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.Primary),
            onPressed: () {
              navigateReplacement(context, const LoginScreen());
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              onPressed: () {
                DialogHelper.showWarningDialog(
                    context, App_strings.logout, App_strings.message, () {
                  SnackbarHelper.showSuccess(
                      context, App_strings.logoutSuccess);
                });
              },
              width: double.infinity,
              height: 50,
              title: App_strings.logout,
            ),
          ],
        ));
  }
}
