import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class ChipTabBar extends StatelessWidget {
  const ChipTabBar({
    required this.tabs,
    super.key,
  });

  final List<({String label, IconData icon})> tabs;

  @override
  Widget build(BuildContext context) {
    final tabController = DefaultTabController.of(context);
    final theme = Theme.of(context);

    final chipSide = WidgetStateBorderSide.resolveWith(
      (states) => states.contains(
        WidgetState.selected,
      )
          ? BorderSide(color: theme.colorScheme.primaryContainer)
          : BorderSide.none,
    );

    return AnimatedBuilder(
      animation: tabController.animation!,
      builder: (context, _) {
        final isScrollable = tabs.length > 3;

        final row = Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 10,
          children: [
            if (isScrollable) const SizedBox(width: 4),
            ...tabs.mapIndexed(
              (i, tab) {
                final selected = tabController.animation!.value.round() == i;

                return ChoiceChip(
                  selected: selected,
                  onSelected: (_) => tabController.animateTo(i),
                  showCheckmark: false,
                  side: chipSide,
                  label: Text(tab.label),
                  avatar: Icon(
                    tab.icon,
                    color: selected ? theme.colorScheme.onPrimary : null,
                  ),
                );
              },
            ),
            if (isScrollable) const SizedBox(width: 4),
          ],
        );

        return isScrollable
            ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: row,
              )
            : row;
      },
    );
  }
}
