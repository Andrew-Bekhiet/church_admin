import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeBottomNavBar extends StatelessWidget {
  final PageController pageController;

  const HomeBottomNavBar({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    return SessionReplayUnmask(
      child: RepaintBoundary(
        child: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              previous.currentTabIndex != current.currentTabIndex ||
              !listEquals(previous.tabs, current.tabs),
          builder: (context, homeState) {
            final theme = Theme.of(context);

            final tabs = homeState.tabs;
            final currentTabIndex = homeState.currentTabIndex;

            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DefaultTextStyle.merge(
                  overflow: TextOverflow.ellipsis,
                  child: CurvedNavigationBar(
                    animationCurve: Curves.easeInOutCirc,
                    height: 50,
                    key: ValueKey(tabs.length),
                    color: theme.colorScheme.primaryContainer,
                    buttonBackgroundColor: theme.colorScheme.primaryContainer,
                    onTap: (i) => pageController.animateToPage(
                      i,
                      duration: kTabScrollDuration,
                      curve: Curves.easeInOutCirc,
                    ),
                    index: currentTabIndex,
                    animationDuration: kTabScrollDuration,
                    backgroundColor: Colors.transparent,
                    items: tabs.mapIndexed((index, tab) {
                      final isActive = index == currentTabIndex;
                      final fgColor = theme.colorScheme.onPrimary.withValues(
                        alpha: isActive ? 1 : 0.7,
                      );

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(tab.icon, color: fgColor, fill: 1),
                          if (isActive)
                            Text(
                              tab.label,
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: fgColor,
                              ),
                            ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                RepaintBoundary(
                  child: BottomAppBar(
                    height: 25,
                    padding: EdgeInsets.zero,
                    color: theme.colorScheme.primaryContainer,
                    child: BlocSelector<HomeCubit, HomeState, String>(
                      selector: (state) => switch (state.currentTabTotal) {
                        final total? => '$total ${state.currentTab.label}',
                        null => '',
                      },
                      builder: (context, countText) {
                        return Text(
                          countText,
                          style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.onPrimary,
                          ),
                          textAlign: TextAlign.center,
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
