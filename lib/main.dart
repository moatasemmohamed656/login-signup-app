import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/appbar_theme.dart';
import 'package:flutter_application_1/core/elevated_button_theme.dart';
import 'package:flutter_application_1/core/input_decoration_theme.dart';
import 'view/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.secondary,
        inputDecorationTheme: customInputDecorationTheme,
        elevatedButtonTheme: customElevatedButtonTheme,
        appBarTheme: customAppBarTheme,
      ),
      home: const LoginScreen(),
    );
  }
}
