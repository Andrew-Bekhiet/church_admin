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
  final Map<int, Icon> icons;
  final void Function(int) onTap;

  double get offset => tabController.offset;
  int get currentIndex => tabController.index;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: tabController.animation!,
      builder: (context, child) {
        final newIndex = getNewIndex();

        return AnimatedFloatingActionButton(
          offset: offset,
          newFAB: FloatingActionButton(
            onPressed: () {
              onTap(newIndex);
            },
            child: icons[newIndex],
          ),
          oldFAB: FloatingActionButton(
            heroTag: null,
            onPressed: () {
              onTap(currentIndex);
            },
            child: icons[currentIndex],
          ),
        );
      },
    );
  }

  int getNewIndex() {
    return offset.isNegative
        ? (currentIndex + offset).floor()
        : (currentIndex + offset).ceil();
  }
}
