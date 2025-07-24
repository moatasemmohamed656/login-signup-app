import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';

class AppTextformfield extends StatelessWidget {
  const AppTextformfield({
    super.key,
    required this.controller,
    this.onChanged,
    this.label,
    this.prefix,
    this.suffix,
    this.style,
    this.keyboardType,
    this.readOnly,
    this.obscureText,
    this.height,
    this.width,
  });
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? label;
  final Widget? prefix;
  final Widget? suffix;
  final TextStyle? style;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? obscureText;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? double.infinity,
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          labelStyle: const TextStyle(
            fontSize: 16,
            color: AppColors.Primary,
          ),
          label: Text(label!),
          prefixIcon: prefix,
          suffixIcon: suffix,
        ),
        style: style ??
            const TextStyle(
              fontSize: 14,
              color: AppColors.Primary,
            ),
        readOnly: readOnly ?? false,
        obscureText: obscureText ?? false,
      ),
    );
  }
}
