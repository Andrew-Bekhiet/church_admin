import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeFAB extends StatelessWidget {
  final PageController pageController;

  const HomeFAB({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          !listEquals(previous.tabs, current.tabs),
      builder: (context, homeState) {
        final tabs = homeState.tabs;

        return SwitchingFAB(
          animation: pageController,
          getIndex: () => _fractionalPage(homeState).floor(),
          getOffset: () {
            final page = _fractionalPage(homeState);

            return page - page.truncateToDouble();
          },
          icons: tabs
              .map(
                (tab) => switch ((tab.createIcon, tab.createLabel)) {
                  (final icon?, final label?) => Tooltip(
                    message: label,
                    child: Icon(icon),
                  ),
                  _ => null,
                },
              )
              .toList(),
          onTap: (i) {
            final tab = tabs[i];
            if (tab.createRoute case final route?) {
              AnalyticsService.I.track(HomeCreateTap(tab));
              unawaited(route.push(context));
            }
          },
        );
      },
    );
  }

  double _fractionalPage(HomeState homeState) {
    final page = pageController.hasClients ? pageController.page : null;

    return (page ?? homeState.currentTabIndex)
        .clamp(0.0, homeState.tabs.length - 1.0)
        .toDouble();
  }
}
