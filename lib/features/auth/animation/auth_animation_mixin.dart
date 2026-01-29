import 'package:flutter/material.dart';

mixin AuthAnimationMixin<T extends StatefulWidget> on State<T>
    implements TickerProvider {
  late final AnimationController controller;
  late final Animation<double> fade;
  late final Animation<Offset> slideUp;
  late final Animation<Offset> slideDown;

  void initAuthAnimation({int durationMs = 900}) {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: durationMs),
    );

    fade = CurvedAnimation(
      parent: controller,
      curve: Curves.easeOut,
    );

    slideDown = Tween<Offset>(
      begin: const Offset(0, -0.08),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutCubic,
      ),
    );

    slideUp = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutCubic,
      ),
    );

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
