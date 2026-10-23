import 'package:church_admin/church_admin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart' show ScrollDirection;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class HomeBody extends StatelessWidget {
  final PageController pageController;

  const HomeBody({required this.pageController, super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          !listEquals(previous.tabs, current.tabs) ||
          previous.listTypes != current.listTypes,
      builder: (context, homeState) {
        final tabs = homeState.tabs;

        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            _maybeTrackSwipedTab(notification, tabs);

            return false;
          },
          child: PageView.builder(
            controller: pageController,
            itemCount: tabs.length,
            allowImplicitScrolling: true,
            padEnds: false,
            onPageChanged: homeCubit.selectTab,
            itemBuilder: (context, i) {
              final tab = tabs[i];
              final pageKey = PageStorageKey('Home => ${tab.entity} Page');

              final page = switch ((tab, homeCubit.listControllerFor(tab))) {
                (HomeTab.summary, _) => const HomeScreenSummary(),
                (
                  HomeTab.services,
                  final ViewableObjectListController<Service> controller,
                ) =>
                  ServicesHierarchyList(
                    key: pageKey,
                    type: homeState.listTypeOf(tab),
                    listController: controller,
                    serviceTrailingBuilder:
                        (
                          context,
                          s, {
                          onLongPress,
                          onTap,
                          subtitle,
                          trailing,
                        }) => IconButton(
                          onPressed: onTap != null ? () => onTap(s) : null,
                          icon: const Icon(Symbols.info),
                        ),
                  ),
                (
                  HomeTab.areas,
                  final ViewableObjectListController<Area> controller,
                ) =>
                  ViewableObjectList(
                    key: pageKey,
                    objectsController: controller,
                    viewableObjectWidgetConfig:
                        const ViewableObjectWidgetConfig(
                          forceShowSecondLine: false,
                        ),
                  ),
                (_, final ViewableObjectListController controller) =>
                  ViewableObjectList(
                    key: pageKey,
                    objectsController: controller,
                  ),
                _ => const SizedBox.shrink(),
              };

              if (tab == HomeTab.summary) return page;

              return SafeArea(
                left: false,
                right: false,
                bottom: false,
                child: HomeListPage(tab: tab, child: page),
              );
            },
          ),
        );
      },
    );
  }

  void _maybeTrackSwipedTab(
    UserScrollNotification notification,
    List<HomeTab> tabs,
  ) {
    final isSettledPage =
        notification.direction == ScrollDirection.idle &&
        notification.depth == 0;

    if (!isSettledPage) return;

    if (notification.metrics case PageMetrics(:final page?)) {
      AnalyticsService.I.track(
        HomeTabSelect(tabs[page.round()], method: HomeTabSelectMethod.swipe),
      );
    }
  }
}
