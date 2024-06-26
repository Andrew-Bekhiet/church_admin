import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class ViewableObjectAppBar extends StatelessWidget {
  const ViewableObjectAppBar({
    required this.viewable,
    required this.foregroundColor,
    required this.backgroundColor,
    required this.appBarMaxHeight,
    this.duration,
    this.scrollController,
    this.circleCrop = true,
    super.key,
  }) : assert(scrollController == null || duration != null);

  final Color? foregroundColor;
  final Color? backgroundColor;
  final ViewableWithIDAndImage viewable;
  final double appBarMaxHeight;
  final Duration? duration;
  final ScrollController? scrollController;
  final bool circleCrop;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        return FlexibleSpaceBar(
          collapseMode: CollapseMode.none,
          centerTitle: true,
          background: ProgressIndicatorTheme(
            data: themeData.progressIndicatorTheme.copyWith(
              color: themeData.brightness == Brightness.light
                  ? themeData.colorScheme.onPrimary
                  : themeData.colorScheme.onSurface,
            ),
            child: IconTheme(
              data: IconTheme.of(context)
                  .copyWith(color: themeData.textTheme.titleLarge!.color),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: themeData.scaffoldBackgroundColor,
                ),
                child: ImageObjectWidget(
                  viewable,
                  circleCrop: circleCrop,
                  size: appBarMaxHeight,
                  blurhashSize: constraints.biggest.longestSide,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
