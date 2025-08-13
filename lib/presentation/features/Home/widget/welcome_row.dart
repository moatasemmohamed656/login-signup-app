import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/App_icons.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/presentation/features/Home/widget/coulmn_welcome.dart';
import 'package:flutter_application_1/presentation/features/cart/view/cart_Screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeRow extends StatelessWidget {
  const WelcomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CoulmnWelcome(),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ),
            );
          },
          icon: SvgPicture.asset(
            AppIcons.appbaricon,
            width: 24,
            height: 24,
          ),
        )
      ],
    );
  }
}
