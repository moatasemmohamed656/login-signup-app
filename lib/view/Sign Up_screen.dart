// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/images.dart';
import 'package:flutter_application_1/core/navigation_helper.dart';
import 'package:flutter_application_1/view/login_screen.dart';
import 'package:flutter_application_1/widget/app_button.dart';
import 'package:flutter_application_1/widget/app_textformfield.dart';
import 'package:flutter_application_1/widget/custom_Container1.dart';
import 'package:flutter_application_1/widget/custom_appBar.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool obscureText = true;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: App_strings.Rgeister,
        backgroundColor: AppColors.secondary,
        titleTextStyle: TextStyle(
          fontSize: 33,
          color: AppColors.Primary,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                const SizedBox(height: 30),
                AppTextformfield(
                  controller: usernameController,
                  label: 'Username',
                  prefix: const Icon(Icons.person),
                  keyboardType: TextInputType.text,
                  width: double.infinity,
                  height: 50,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 10),
                AppTextformfield(
                  controller: emailController,
                  label: App_strings.emailaddress,
                  prefix: const Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress,
                  width: double.infinity,
                  height: 50,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(height: 10),
                AppTextformfield(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: obscureText,
                  label: "Password",
                  prefix: const Icon(Icons.lock),
                  suffix: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  width: double.infinity,
                  height: 50,
                ),
                const SizedBox(height: 10),
                AppTextformfield(
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: obscureText,
                  label: App_strings.confirmpassword,
                  prefix: const Icon(Icons.lock_outline),
                  suffix: IconButton(
                    icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off),
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
                  title: App_strings.Rgeister,
                  width: double.infinity,
                  height: 50,
                  onPressed: () {
                    navigateReplacement(
                      context,
                      const LoginScreen(),
                    );
                  },
                  child: const Text(
                    App_strings.signup,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondary,
                    ),
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
                          const LoginScreen(),
                        );
                      },
                      child: const Text(
                        App_strings.signin,
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.Primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  App_strings.or,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.Primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
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
