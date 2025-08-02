import 'package:flutter/material.dart';

void navigateReplacement(BuildContext context, Widget destination) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => destination),
  );
}

void navigatePush(BuildContext context, Widget destination) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => destination),
  );
}

void navigatePop(BuildContext context) {
  Navigator.pop(context);
}
