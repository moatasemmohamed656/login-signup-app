import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/validators/app_reg_exp.dart';
import 'package:flutter_application_1/core/validators/app_validator.dart';

class PasswordAppValidator extends AppValidator {
  PasswordAppValidator({super.initValue});

  @override
  List<String> check() {
    List<String> reasons = [];

    if (value.isEmpty) {
      reasons.add(App_strings.passwordIsRequired);
    }
    if (!AppRegExp.password.hasMatch(value)) {
      reasons.add(App_strings.passwordNotValid);
    }
    return reasons;
  }
}
