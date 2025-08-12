import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/validators/app_reg_exp.dart';


abstract class AppInputFormatters {
  static List<TextInputFormatter> numbers = [
    FilteringTextInputFormatter.allow(AppRegExp.numbers),
  ];
  static List<TextInputFormatter> usernameLettersOnly = [
  FilteringTextInputFormatter.allow(AppRegExp.usernameLettersOnly),
];


}