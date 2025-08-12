import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/validators/app_validator.dart';

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
    this.validator,
    this.inputFormatters,
    this.decoration,
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
  final AppValidator? validator;
  final List<TextInputFormatter>? inputFormatters;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height ?? 50,
          width: width ?? double.infinity,
          child: TextFormField(
            inputFormatters: inputFormatters,
            controller: controller,
            onChanged: (v) {
              if (onChanged != null) onChanged!(v);
              if (validator != null) {
                validator!.setValue(v);
              }
            },
            keyboardType: keyboardType ?? TextInputType.text,
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                fontSize: 16,
                color: AppColors.Primary,
              ),
              label: Text(label ?? ''),
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
        ),
        if (validator != null) _getValidationErrors(),
      ],
    );
  }

  Widget _getValidationErrors() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: validator!.reasons
          .map(
            (msg) => Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                msg,
                style: const TextStyle(color: AppColors.red, fontSize: 16),
              ),
            ),
          )
          .toList(),
    );
  }
}
