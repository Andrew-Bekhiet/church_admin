import 'package:flutter/material.dart';

class AnimatedFloatingActionButton extends StatelessWidget {
  final double offset;
  final Widget? newFAB;
  final Widget? oldFAB;
  const AnimatedFloatingActionButton({
    required this.offset,
    required this.newFAB,
    required this.oldFAB,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fgAnimatiedWidget = Transform.scale(
      alignment: Alignment(
        (offset.isNegative ? 1 - offset : offset - 1).clamp(-1, 1),
        0,
      ),
      scale: offset.abs().clamp(0, 1),
      child: newFAB,
    );

    final bgAnimatiedWidget = Transform.scale(
      alignment: Alignment(
        (offset.isNegative ? offset - 1 : offset + 1).clamp(-1, 1),
        0,
      ),
      scale: (1 - offset.abs()).clamp(0, 1),
      child: oldFAB,
    );

    return RepaintBoundary(
      child: Stack(
        alignment: Alignment.center,
        children: [
          bgAnimatiedWidget,
          fgAnimatiedWidget,
        ],
      ),
    );
  }
}
