import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SnowflakeAnimation extends StatefulWidget {
  final int particleCount;
  final double? maxWidth;
  final double? maxHeight;
  final Widget? child;

  const SnowflakeAnimation({
    this.particleCount = 60,
    this.child,
    this.maxWidth,
    this.maxHeight,
    super.key,
  });

  @override
  State<SnowflakeAnimation> createState() => _SnowflakeAnimationState();
}

class _SnowflakeAnimationState extends State<SnowflakeAnimation>
    with SingleTickerProviderStateMixin {
  static const pMaxSize = 15.0;
  static const pMinSize = 5.0;

  static const maxSpeedMultiplier = 4;
  static const minSpeedMultiplier = 1;

  final _rng = math.Random();

  late final particles = List.generate(
    widget.particleCount,
    (_) => (
      x: _rng.nextDouble(),
      yInitial: _rng.nextDouble(),
      sizeFactor: _rng.nextDouble(),
      speedMultiplier:
          _rng.nextDouble() * (maxSpeedMultiplier - minSpeedMultiplier) +
              minSpeedMultiplier,
      rotation: _rng.nextDouble(),
    ),
  );

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double availableWidth = widget.maxWidth ?? constraints.maxWidth;
        final double availableHeight =
            widget.maxHeight ?? constraints.maxHeight;

        final double animationHeight = availableHeight + pMaxSize;

        return ValueListenableBuilder<double>(
          valueListenable: _controller.view,
          builder: (context, value, child) {
            return Stack(
              fit: StackFit.expand,
              children: [
                if (child != null) child,
                ...particles.map(
                  (p) {
                    final double size =
                        pMinSize + (p.sizeFactor * (pMaxSize - pMinSize));

                    final double speed = p.speedMultiplier * animationHeight;

                    final double x = p.x * (availableWidth - size);

                    final double y =
                        (p.yInitial * animationHeight + speed * value) %
                            animationHeight;

                    return Positioned(
                      left: x,
                      top: y - pMaxSize,
                      child: Transform.rotate(
                        angle: 2 * math.pi * (p.rotation + value),
                        child: IgnorePointer(
                          child: Icon(
                            Symbols.ac_unit,
                            size: size,
                            color: Colors.white
                                .withValues(alpha: 0.6 + p.sizeFactor * 0.4),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
          child: widget.child,
        );
      },
    );
  }
}
