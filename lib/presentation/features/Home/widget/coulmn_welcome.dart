import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/text_style.dart';

class CoulmnWelcome extends StatelessWidget {
  const CoulmnWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          App_strings.welcomeback,
          style: AppTextStyle.smallTextappbar,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          App_strings.FalconThought,
          style: AppTextStyle.Textappbar,
        ),
      ],
    );
  }
}
