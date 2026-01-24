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
  double get minExtent => kToolbarHeight - 6;

  @override
  double get maxExtent => kToolbarHeight * 1.2;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);

    return Material(
      surfaceTintColor: theme.colorScheme.surfaceTint,
      elevation: overlapsContent
          ? theme.appBarTheme.scrolledUnderElevation ?? 4
          : 0,
      color: theme.scaffoldBackgroundColor,
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: _hasFilters
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: AlignmentDirectional.centerEnd,
                          end: AlignmentDirectional.centerStart,
                          colors: [
                            theme.scaffoldBackgroundColor,
                            theme.scaffoldBackgroundColor.withValues(alpha: 0),
                          ],
                          stops: const [0, 0.12],
                        ),
                      ),
                      position: DecorationPosition.foreground,
                      child: ChipTabBar(tabs: tabs),
                    ),
                  ),
                  filtersWidget!,
                ],
              )
            : ChipTabBar(tabs: tabs),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate is! ChipTabBarPersistentHeaderDelegate ||
        oldDelegate.tabs != tabs;
  }
}
