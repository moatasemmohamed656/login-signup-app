import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    this.backgroundColor,
    this.titleTextStyle,
    this.leading,
    this.action,
    this.centertitle,
  });

  final String title;
  final Color? backgroundColor;
  final TextStyle? titleTextStyle;
  final Widget? leading;
  final List<Widget>? action;
  final bool? centertitle;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: titleTextStyle),
      centerTitle: centertitle,
      backgroundColor: backgroundColor,
      elevation: 0,
      leading: leading,
      actions: action,
    );
  }
}
