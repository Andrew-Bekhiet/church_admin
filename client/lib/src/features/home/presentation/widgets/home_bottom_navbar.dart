import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeBottomNavBar extends StatelessWidget {
  final PageController pageController;

  const HomeBottomNavBar({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    return SessionReplayUnmask(
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            previous.currentTabIndex != current.currentTabIndex ||
            !listEquals(previous.tabs, current.tabs),
        builder: (context, homeState) {
          return NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: homeState.currentTabIndex,
            onDestinationSelected: (index) {
              if (index != homeState.currentTabIndex) {
                AnalyticsService.I.track(
                  HomeTabSelect(
                    homeState.tabs[index],
                    method: HomeTabSelectMethod.tap,
                  ),
                );
              }
              pageController.animateToPage(
                index,
                duration: kTabScrollDuration,
                curve: Curves.easeInOutCirc,
              );
            },
            destinations: [
              for (final tab in homeState.tabs)
                NavigationDestination(
                  key: HomeBottomNavBarKeys.destinationFor(tab),
                  icon: Icon(tab.icon),
                  selectedIcon: Icon(tab.icon, fill: 1),
                  label: tab.label,
                ),
            ],
          );
        },
      ),
    );
  }
}

abstract final class HomeBottomNavBarKeys {
  static Key destinationFor(HomeTab tab) =>
      ValueKey('Home Bottom NavBar ${tab.name} Destination Key');
}
