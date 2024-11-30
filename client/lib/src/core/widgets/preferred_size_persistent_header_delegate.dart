import 'package:flutter/material.dart';

class PreferredSizePersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  const PreferredSizePersistentHeaderDelegate({
    required this.child,
    this.color,
    this.colorWhenScrolledUnder,
  });

  final PreferredSizeWidget child;
  final Color? color;
  final Color? colorWhenScrolledUnder;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      surfaceTintColor:
          colorWhenScrolledUnder ?? Theme.of(context).colorScheme.surfaceTint,
      elevation:
          overlapsContent ? Theme.of(context).appBarTheme.elevation ?? 4 : 0,
      color: color ?? Theme.of(context).scaffoldBackgroundColor,
      child: child,
    );
  }

  @override
  double get maxExtent => child.preferredSize.height;

  @override
  double get minExtent => child.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
