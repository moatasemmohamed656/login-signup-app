import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/images.dart';
import 'package:flutter_application_1/core/navigation_helper.dart';

import 'package:flutter_application_1/core/validators/app_validator_types/email_app_validator.dart';
import 'package:flutter_application_1/core/validators/app_validator_types/password_app_validator.dart';
import 'package:flutter_application_1/core/validators/app_validator_types/phone_number_app_validator.dart';
import 'package:flutter_application_1/core/validators/app_validator_types/username_app_validator.dart';
import 'package:flutter_application_1/core/validators/input_formatters.dart';

import 'package:flutter_application_1/presentation/features/auth/view/login_screen.dart';
import 'package:flutter_application_1/presentation/widget/app_button.dart';
import 'package:flutter_application_1/presentation/widget/app_textformfield.dart';
import 'package:flutter_application_1/presentation/widget/custom_Container1.dart';
import 'package:flutter_application_1/presentation/widget/custom_appBar.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final UsernameAppValidator usernameValidator = UsernameAppValidator();
  final PhoneNumberAppValidator phoneValidator = PhoneNumberAppValidator();
  final EmailAppValidator emailValidator = EmailAppValidator();
  final PasswordAppValidator passwordValidator = PasswordAppValidator();

  bool obscureText = true;
  String? confirmPasswordError;

  @override
  void dispose() {
    usernameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void validateConfirmPassword() {
    setState(() {
      confirmPasswordError = null;
      if (confirmPasswordController.text != passwordController.text) {
        confirmPasswordError = 'Passwords do not match';
      }
    });
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
          child: Column(
            children: [
              const SizedBox(height: 80),
              AppTextformfield(
                inputFormatters: AppInputFormatters.usernameLettersOnly,
                controller: usernameController,
                validator: usernameValidator,
                label: 'Username',
                prefix: const Icon(Icons.person),
                keyboardType: TextInputType.text,
                width: double.infinity,
                height: 50,
                onChanged: (value) =>
                    setState(() => usernameValidator.setValue(value)),
              ),
              const SizedBox(height: 10),
              AppTextformfield(
                inputFormatters: AppInputFormatters.numbers,
                controller: phoneController,
                validator: phoneValidator,
                label: 'Phone',
                prefix: const Icon(Icons.phone),
                keyboardType: TextInputType.phone,
                width: double.infinity,
                height: 50,
                onChanged: (value) =>
                    setState(() => phoneValidator.setValue(value)),
              ),
              const SizedBox(height: 10),
              AppTextformfield(
                controller: emailController,
                validator: emailValidator,
                label: App_strings.emailaddress,
                prefix: const Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
                width: double.infinity,
                height: 50,
                onChanged: (value) =>
                    setState(() => emailValidator.setValue(value)),
              ),
              const SizedBox(height: 10),
              AppTextformfield(
                controller: passwordController,
                validator: passwordValidator,
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                label: App_strings.password,
                prefix: const Icon(Icons.lock),
                suffix: IconButton(
                  icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () => setState(() => obscureText = !obscureText),
                ),
                width: double.infinity,
                height: 50,
                onChanged: (value) {
                  setState(() => passwordValidator.setValue(value));
                  validateConfirmPassword();
                },
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
                  onPressed: () => setState(() => obscureText = !obscureText),
                ),
                width: double.infinity,
                height: 50,
                onChanged: (value) => validateConfirmPassword(),
              ),
              const SizedBox(height: 20),
              AppButton(
                title: App_strings.Rgeister,
                width: double.infinity,
                height: 50,
                onPressed: () {
                  validateConfirmPassword();
                  if (usernameValidator.isValid &&
                      phoneValidator.isValid &&
                      emailValidator.isValid &&
                      passwordValidator.isValid &&
                      confirmPasswordError == null) {
                    navigateReplacement(context, const LoginScreen());
                  }
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
                    style: TextStyle(fontSize: 16, color: AppColors.Primary),
                  ),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () =>
                        navigateReplacement(context, const LoginScreen()),
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
    );
  }
}
