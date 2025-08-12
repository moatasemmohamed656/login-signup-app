import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/App_icons.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/text_style.dart';
import 'package:flutter_application_1/data/models/product_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // صورة المنتج
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(15),
                    bottom: Radius.circular(35),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: product.image ?? '',
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                // أيقونة مفضلة أو غيرها
                Positioned(
                  right: 8,
                  top: 8,
                  child: CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.lightGrey.withOpacity(0.8),
                      child: Icon(
                        Icons.favorite,
                        color: AppColors.Primary,
                      )),
                ),

                // زر إضافة للسلة
                Positioned(
                  bottom: -25,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundColor: AppColors.lightGrey,
                      radius: 25,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.Primary,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.Primary.withAlpha(120),
                              blurRadius: 10,
                              spreadRadius: 0.2,
                            ),
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                            AppIcons.appbaricon,
                            color: AppColors.secondary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // اسم المنتج
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              product.title ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppTextStyle.Textappbar,
            ),
          ),

          const SizedBox(height: 5),

          // السعر
          Text(
            '\$ ${product.price?.toStringAsFixed(2) ?? '0.00'}',
            style: AppTextStyle.Textappbar.copyWith(
              color: AppColors.Primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
