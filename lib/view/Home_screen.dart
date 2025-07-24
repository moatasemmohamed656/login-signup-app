import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/navigation_helper.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/widget/custom_appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          title: 'Home Screen',
          backgroundColor: AppColors.secondary,
          titleTextStyle: const TextStyle(fontSize: 24, color: Colors.white),
          leading: InkWell(
              onTap: () => navigateReplacement(context, const LoginScreen()),
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.Primary,
                size: 30,
              ))),
      body: const Center(
        child: Text(
          'Welcome to Home Screen',
          style: TextStyle(fontSize: 24, color: AppColors.Primary),
        ),
      ),
    );
  }
}
