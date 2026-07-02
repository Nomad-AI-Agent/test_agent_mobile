import 'package:flutter/material.dart';

mixin StaggeredFadeSlideMixin<T extends StatefulWidget>
    on State<T>, TickerProviderStateMixin<T> {
  late AnimationController _controller;
  final List<Animation<double>> _fadeAnimations = [];
  final List<Animation<Offset>> _slideAnimations = [];

  AnimationController get staggerController => _controller;

  void initStaggeredAnimation({
    required TickerProvider vsync,
    required int itemsCount,
    Duration duration = const Duration(milliseconds: 1400),
    Offset slideBegin = const Offset(0, 0.15),
    Curve curve = Curves.easeOut,
    double overlap = 0.2,
  }) {
    _controller = AnimationController(vsync: vsync, duration: duration);

    final step = itemsCount > 1 ? (1.0 - overlap) / (itemsCount - 1) : 0.0;

    for (var i = 0; i < itemsCount; i++) {
      final start = (i * step).clamp(0.0, 1.0);
      final end = (start + overlap + step).clamp(0.0, 1.0);

      _fadeAnimations.add(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(start, end, curve: curve),
        ),
      );

      _slideAnimations.add(
        Tween<Offset>(begin: slideBegin, end: Offset.zero).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(start, end, curve: curve),
          ),
        ),
      );
    }

    _controller.forward();
  }

  void disposeStaggeredAnimation() {
    _controller.dispose();
  }

  Animation<double> fadeAt(int index) => _fadeAnimations[index];
  Animation<Offset> slideAt(int index) => _slideAnimations[index];

  Widget animatedItem({required int index, required Widget child}) {
    return FadeTransition(
      opacity: fadeAt(index),
      child: SlideTransition(position: slideAt(index), child: child),
    );
  }
}