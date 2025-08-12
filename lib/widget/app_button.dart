import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    this.title,
    this.style,
    this.width,
    this.height,
    this.child,
    this.backgroundColor,
  });

  final void Function()? onPressed;
  final Widget? child;
  final String? title;
  final TextStyle? style;
  final double? width;
  final double? height;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(AppColors.Primary),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          onPressed: onPressed,
          child: child ?? Text(title ?? '', style: style),
        ),
      ),
    );
  }
}
