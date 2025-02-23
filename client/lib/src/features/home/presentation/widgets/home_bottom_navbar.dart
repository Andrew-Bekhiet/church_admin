import 'dart:math';

import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeBottomNavBar extends StatelessWidget {
  final HomeController homeController;

  const HomeBottomNavBar({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<HomeMode>(
      initialData: homeController.currentMode,
      stream: homeController.modeStream,
      builder: (context, modeSnapshot) {
        final isSundaySchool = modeSnapshot.data == HomeMode.sundaySchool;
        final Animation<double>? tabAnimation = homeController.tabAnimation;

        final double additionalBottomPadding =
            MediaQuery.viewPaddingOf(context).bottom;

        final theme = Theme.of(context);

        final items = [
          (label: 'الرئيسية', icon: Symbols.home),
          if (isSundaySchool)
            (label: 'الخدمات', icon: Symbols.volunteer_activism)
          else ...[
            (label: 'المناطق', icon: Symbols.pin_drop),
            (label: 'الشوراع', icon: Symbols.road),
            (label: 'العائلات', icon: Symbols.diversity_1),
            (label: 'المتاجر', icon: Symbols.store),
          ],
          (
            label: isSundaySchool ? 'المخدومين' : 'الأفراد',
            icon: Symbols.person,
          ),
        ];

        return AnimatedBuilder(
          animation: tabAnimation!,
          builder: (context, child) {
            return DefaultTextStyle.merge(
              overflow: TextOverflow.ellipsis,
              child: CurvedNavigationBar(
                animationCurve: Curves.easeInOutCirc,
                height: min(
                  kBottomNavigationBarHeight + additionalBottomPadding,
                  75,
                ),
                key: ValueKey(isSundaySchool),
                color: theme.colorScheme.primaryContainer,
                buttonBackgroundColor: theme.colorScheme.primaryContainer,
                onTap: homeController.onTabIndexChanged,
                index: tabAnimation.value.floor(),
                animationDuration: kTabScrollDuration,
                backgroundColor: Colors.transparent,
                items:
                    items.mapIndexed((index, item) {
                      final isActive = index == tabAnimation.value.round();
                      final fgColor = theme.colorScheme.onPrimary.withValues(
                        alpha: isActive ? 1 : 0.7,
                      );

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(item.icon, color: fgColor, fill: 1),
                          if (isActive)
                            Text(
                              item.label,
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: fgColor,
                              ),
                            ),
                        ],
                      );
                    }).toList(),
              ),
            );
          },
        );
      },
    );
  }
}
