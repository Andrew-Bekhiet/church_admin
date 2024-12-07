import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ChipTabBarPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  ChipTabBarPersistentHeaderDelegate({
    required this.tabs,
    ViewableObjectService? viewableObjectService,
  }) : viewableObjectService = viewableObjectService ?? ViewableObjectService.I;

  final List<({String label, Icon icon})> tabs;
  final ViewableObjectService viewableObjectService;

  @override
  double get minExtent => kToolbarHeight - 6;
  @override
  double get maxExtent => kToolbarHeight * 2;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);

    return Material(
      surfaceTintColor: theme.colorScheme.surfaceTint,
      elevation:
          overlapsContent ? theme.appBarTheme.scrolledUnderElevation ?? 4 : 0,
      color: theme.scaffoldBackgroundColor,
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: ChipTabBar(tabs: tabs),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate is! ChipTabBarPersistentHeaderDelegate ||
        oldDelegate.tabs != tabs;
  }
}
