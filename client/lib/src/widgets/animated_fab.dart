import 'package:flutter/material.dart';

class AnimatedFloatingActionButton extends StatelessWidget {
  const AnimatedFloatingActionButton({
    required this.offset,
    required this.newFAB,
    required this.oldFAB,
    super.key,
  });

  final double offset;
  final Widget newFAB;
  final Widget oldFAB;

  @override
  Widget build(BuildContext context) {
    final fgAnimatiedWidget = Transform.scale(
      alignment: Alignment(
        offset.isNegative ? 1 - offset : offset - 1,
        0,
      ),
      scale: offset.abs(),
      child: newFAB,
    );

    final bgAnimatiedWidget = Transform.scale(
      alignment: Alignment(
        offset.isNegative ? offset - 1 : offset + 1,
        0,
      ),
      scale: 1 - offset.abs(),
      child: oldFAB,
    );

    return Stack(
      alignment: Alignment.center,
      children: [
        bgAnimatiedWidget,
        fgAnimatiedWidget,
      ],
    );
  }
}
