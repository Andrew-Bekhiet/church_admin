import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class SwitchingFloatingActionButton extends StatelessWidget {
  const SwitchingFloatingActionButton({
    required this.animation,
    required this.getIndex,
    required this.getOffset,
    required this.icons,
    required this.onTap,
    super.key,
  });

  SwitchingFloatingActionButton.fromTabController({
    required TabController tabController,
    required this.icons,
    required this.onTap,
    super.key,
  })  : animation = tabController.animation!,
        getIndex = (() => tabController.index),
        getOffset = (() => tabController.offset);

  final Listenable animation;
  final List<Widget?> icons;
  final void Function(int) onTap;
  final int Function() getIndex;
  final double Function() getOffset;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final double offset = getOffset();
        final int currentIndex = getIndex();

        final int newIndex = getNewIndex(offset, currentIndex);

        return AnimatedFloatingActionButton(
          offset: offset,
          newFAB: icons[newIndex] != null
              ? FloatingActionButton(
                  onPressed: () => onTap(newIndex),
                  child: icons[newIndex],
                )
              : null,
          oldFAB: icons[currentIndex] != null
              ? FloatingActionButton(
                  heroTag: null,
                  onPressed: () => onTap(currentIndex),
                  child: icons[currentIndex],
                )
              : null,
        );
      },
    );
  }

  int getNewIndex(double offset, int currentIndex) {
    return offset.isNegative
        ? (currentIndex + offset).floor()
        : (currentIndex + offset).ceil();
  }
}
