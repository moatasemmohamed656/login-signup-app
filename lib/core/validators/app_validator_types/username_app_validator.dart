import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/validators/app_validator.dart';

class UsernameAppValidator extends AppValidator {
  UsernameAppValidator({super.initValue});

  @override
  List<String> check() {
    List<String> reasons = [];

    if (value.isEmpty) {
      reasons.add(App_strings.Usernameisrequired);
    } else if (value.length < 3) {
      reasons.add(App_strings.Usernamemustbetleast3characters);
    }

    return reasons;
  }
}
