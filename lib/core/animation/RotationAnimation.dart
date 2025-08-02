import 'package:flutter/material.dart';

class RotationAvatarAnimation extends StatefulWidget {
  final Widget child;
  final double radius;
  final Color backgroundColor;

  const RotationAvatarAnimation({
    super.key,
    required this.child,
    this.radius = 40,
    this.backgroundColor = Colors.amber,
  });

  @override
  State<RotationAvatarAnimation> createState() =>
      RotationAvatarAnimationState();
}

class RotationAvatarAnimationState extends State<RotationAvatarAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotationAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();

    rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    );

    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: fadeAnimation,
      child: RotationTransition(
        turns: rotationAnimation,
        child: CircleAvatar(
          radius: widget.radius,
          backgroundColor: widget.backgroundColor,
          child: widget.child,
        ),
      ),
    );
  }
}
