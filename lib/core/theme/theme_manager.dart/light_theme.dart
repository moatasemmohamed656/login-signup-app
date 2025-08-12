import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/theme/appbar_theme.dart';
import 'package:flutter_application_1/core/theme/elevated_button_theme.dart';
import 'package:flutter_application_1/core/theme/input_decoration_theme.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.secondary,
  inputDecorationTheme: customInputDecorationTheme,
  elevatedButtonTheme: customElevatedButtonTheme,
  appBarTheme: customAppBarTheme,
);
