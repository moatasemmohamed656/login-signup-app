import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/theme/appbar_theme.dart';
import 'package:flutter_application_1/core/theme/elevated_button_theme.dart';
import 'package:flutter_application_1/core/theme/input_decoration_theme.dart';
import 'package:flutter_application_1/presentation/features/Home/view/home_view.dart';
import 'package:flutter_application_1/presentation/features/auth/view/login_screen.dart';
import 'package:flutter_application_1/presentation/features/cart/view/cart_Screen.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> appKey = GlobalKey<NavigatorState>();
BuildContext get context => appKey.currentContext!;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: appKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.secondary,
        inputDecorationTheme: customInputDecorationTheme,
        elevatedButtonTheme: customElevatedButtonTheme,
        appBarTheme: customAppBarTheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.Primary,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.Primary,
          iconTheme: IconThemeData(color: AppColors.Primary),
          titleTextStyle: TextStyle(
            color: AppColors.Primary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(color: AppColors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.Primary),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey[800],
            foregroundColor: Colors.white,
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      home: Home_Screen(),
    );
  }
}
