// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/images.dart';
import 'package:flutter_application_1/core/navigation_helper.dart';
import 'package:flutter_application_1/view/Home_screen.dart';
import 'package:flutter_application_1/view/Sign%20Up_screen.dart';
import 'package:flutter_application_1/widget/app_button.dart';
import 'package:flutter_application_1/widget/app_textformfield.dart';
import 'package:flutter_application_1/widget/custom_Container1.dart';

import '../widget/custom_appBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: App_strings.login,
        backgroundColor: AppColors.secondary,
        titleTextStyle: TextStyle(
          fontSize: 33,
          color: AppColors.Primary,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                AppTextformfield(
                  controller: emailcontroller,
                  label: App_strings.emailaddress,
                  prefix: const Icon(Icons.person),
                  keyboardType: TextInputType.emailAddress,
                  width: double.infinity,
                  height: 50,
                  onChanged: (v) {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 10),
                AppTextformfield(
                  controller: passwordcontroller,
                  obscureText: obscureText,
                  label: App_strings.password,
                  prefix: const Icon(Icons.lock),
                  suffix: IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  width: double.infinity,
                  height: 50,
                ),
                const SizedBox(height: 20),
                AppButton(
                  onPressed: () {
                    navigateReplacement(
                      context,
                      const HomeScreen(),
                    );
                  },
                  title: App_strings.login,
                  width: double.infinity,
                  height: 50,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      App_strings.DonotHaveAnAccount,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.Primary,
                      ),
                    ),
                    const SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        navigateReplacement(
                          context,
                          const SignUp_Screen(),
                        );
                      },
                      child: const Text(
                        App_strings.Rgeister,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.Primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const Text(
                  App_strings.or,
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.Primary,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                CustomContainer(
                  imagePath: AppImages.googleLogo,
                  title: App_strings.continueWithGoogle,
                  onTap: () {},
                  backgroundColor: AppColors.grey.withOpacity(0.2),
                  textColor: AppColors.Primary,
                  width: double.infinity,
                  height: 50,
                ),
                const SizedBox(height: 20),
                CustomContainer(
                  imagePath: AppImages.appleLogo,
                  title: App_strings.continueWithApple,
                  onTap: () {},
                  backgroundColor: AppColors.grey.withOpacity(0.2),
                  textColor: AppColors.Primary,
                  width: double.infinity,
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
