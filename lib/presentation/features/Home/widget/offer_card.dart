// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/App_icons.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/images.dart';
import 'package:flutter_application_1/core/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: AppColors.lightGrey),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(App_strings.shopWithUs,
                    style: AppTextStyle.style14mainClrM),
                Text(App_strings.get40Off, style: AppTextStyle.style20mainClrL),
                Row(
                  children: [
                    Text(App_strings.shopNow,
                        style: AppTextStyle.style12mainClrL),

                    //
                    SvgPicture.asset(
                      AppIcons.arrow,
                      color: AppColors.Primary,
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          Image.asset(AppImages.manphoto, height: 100, width: 100),
        ],
      ),
    );
  }
}
