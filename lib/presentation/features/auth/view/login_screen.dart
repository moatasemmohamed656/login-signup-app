import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/images.dart';
import 'package:flutter_application_1/core/navigation_helper.dart';
import 'package:flutter_application_1/core/validators/app_validator_types/email_app_validator.dart';
import 'package:flutter_application_1/core/validators/app_validator_types/password_app_validator.dart';
import 'package:flutter_application_1/presentation/features/Home/view/home_view.dart';

import 'package:flutter_application_1/presentation/features/auth/view/Sign%20Up_screen.dart';
import 'package:flutter_application_1/presentation/widget/app_button.dart';
import 'package:flutter_application_1/presentation/widget/app_textformfield.dart';
import 'package:flutter_application_1/presentation/widget/custom_Container1.dart';
import '../../../widget/custom_appBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final EmailAppValidator emailValidator = EmailAppValidator();
  final PasswordAppValidator passwordValidator = PasswordAppValidator();

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
                  controller: emailController,
                  validator: emailValidator,
                  label: App_strings.emailaddress,
                  prefix: const Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress,
                  width: double.infinity,
                  height: 50,
                  onChanged: (v) {
                    setState(() {
                      emailValidator.setValue(v);
                    });
                  },
                ),
                const SizedBox(height: 10),
                AppTextformfield(
                  controller: passwordController,
                  validator: passwordValidator,
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
                  onChanged: (v) {
                    setState(() {
                      passwordValidator.setValue(v);
                    });
                  },
                ),
                const SizedBox(height: 20),
                if (emailValidator.isValid && passwordValidator.isValid)
                  AppButton(
                    onPressed: () {
                      navigateReplacement(
                        context,
                        const Home_Screen(),
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
                    const SizedBox(height: 10),
                  ],
                ),
                const Text(
                  App_strings.or,
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.Primary,
                    fontWeight: FontWeight.bold,
                  ),
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
