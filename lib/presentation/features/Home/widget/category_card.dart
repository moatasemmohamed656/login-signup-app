import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/text_style.dart';
import 'package:flutter_application_1/presentation/widget/custom_Container1.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categories, required this.index});

  final List categories;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomContainer(
        width: 80,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: AppColors.lightGrey,
        ),
        child: Center(
          child: Text(categories[index],
              textAlign: TextAlign.center,

              ///
              maxLines: 1,
              style: AppTextStyle.CategoryList_style),
        ),
      ),
    );
  }
}
