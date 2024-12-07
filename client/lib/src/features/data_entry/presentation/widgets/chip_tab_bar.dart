import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class ChipTabBar extends StatelessWidget {
  const ChipTabBar({
    required this.tabs,
    super.key,
  });

  final List<({String label, Icon icon})> tabs;

  @override
  Widget build(BuildContext context) {
    final tabController = DefaultTabController.of(context);
    final theme = Theme.of(context);

    final chipColor = WidgetStateProperty.resolveWith(
      (states) => states.contains(
        WidgetState.selected,
      )
          ? null
          : theme.scaffoldBackgroundColor,
    );

    final chipSide = WidgetStateBorderSide.resolveWith(
      (states) => states.contains(
        WidgetState.selected,
      )
          ? BorderSide(color: theme.colorScheme.outline)
          : BorderSide.none,
    );

    return AnimatedBuilder(
      animation: tabController.animation!,
      builder: (context, _) {
        final row = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: tabs
              .mapIndexed(
                (i, tab) => ChoiceChip(
                  selected: tabController.animation!.value.round() == i,
                  onSelected: (_) => tabController.animateTo(i),
                  showCheckmark: false,
                  color: chipColor,
                  side: chipSide,
                  label: Text(tab.label),
                  labelStyle: theme.textTheme.titleMedium,
                  avatar: tab.icon,
                ),
              )
              .toList(),
        );
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: tabs.length > 3
              ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: row,
                )
              : row,
        );
      },
    );
  }
}
