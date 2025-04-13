import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ChipTabBarPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  ChipTabBarPersistentHeaderDelegate({
    required this.tabs,
    this.filtersWidget,
    ViewableObjectService? viewableObjectService,
  }) : viewableObjectService = viewableObjectService ?? ViewableObjectService.I;

  final List<({String label, IconData icon})> tabs;
  final Widget? filtersWidget;
  final ViewableObjectService viewableObjectService;

  bool get _hasFilters => filtersWidget != null;

  @override
  double get minExtent => (kToolbarHeight - 6) * (_hasFilters ? 2 : 1);

  @override
  double get maxExtent => kToolbarHeight * 1.2 * (_hasFilters ? 2 : 1);

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ChipTabBar(tabs: tabs),
            if (_hasFilters) filtersWidget!,
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate is! ChipTabBarPersistentHeaderDelegate ||
        oldDelegate.tabs != tabs;
  }
}
