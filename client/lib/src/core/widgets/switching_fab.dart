import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class SwitchingFloatingActionButton extends StatelessWidget {
  const SwitchingFloatingActionButton({
    required this.tabController,
    required this.icons,
    required this.onTap,
    super.key,
  }) : assert(tabController.length == icons.length);

  final TabController tabController;
  final Map<int, Widget?> icons;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tabController.animation!,
      builder: (context, child) {
        final double offset = tabController.offset;
        final int currentIndex = tabController.index;

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
