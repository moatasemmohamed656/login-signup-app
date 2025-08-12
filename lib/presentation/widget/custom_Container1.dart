import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.imagePath,
    this.title,
    this.onTap,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height,
    this.style,
    this.decoration,
    this.child,
  });

  final String? imagePath;
  final String? title;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final TextStyle? style;
  final Decoration? decoration;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(33),
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: decoration ??
            BoxDecoration(
              color: backgroundColor ?? Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(33),
            ),
        alignment: Alignment.center,
        child: child ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (imagePath != null)
                  Image.asset(imagePath!, width: 30, height: 30),
                if (imagePath != null) const SizedBox(width: 5),
                if (title != null)
                  Text(
                    title!,
                    style: style ??
                        TextStyle(
                          fontSize: 16,
                          color: textColor ?? Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
              ],
            ),
      ),
    );
  }
}
