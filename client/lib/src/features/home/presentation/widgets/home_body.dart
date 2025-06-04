import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({required this.homeBloc, super.key});

  final HomeBloc homeBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: homeBloc,
      buildWhen: (previous, current) =>
          previous.pageController != current.pageController ||
          !const DeepCollectionEquality().equals(previous.pages, current.pages),
      builder: (context, homeState) {
        final pages = homeState.pages;

        return PageView.builder(
          controller: homeState.pageController,
          itemCount: pages.length,
          allowImplicitScrolling: true,
          padEnds: false,
          itemBuilder: (context, i) {
            final page = pages[i];

            return switch (page) {
              _ when i == 0 => HomeScreenSummary(homeBloc: homeBloc),
              HomePageConfig<Service> _ => ServicesHierarchyList(
                  key: PageStorageKey('Home => ${page.type} Page'),
                  type: page.listType,
                  listController: page.objectsController!(),
                  serviceTrailingBuilder: (
                    context,
                    s, {
                    onLongPress,
                    onTap,
                    subtitle,
                    trailing,
                  }) =>
                      IconButton(
                    onPressed: onTap != null ? () => onTap(s) : null,
                    icon: const Icon(Symbols.info),
                  ),
                ),
              HomePageConfig<Viewable> _ => ViewableObjectList(
                  key: PageStorageKey('Home => ${page.type} Page'),
                  objectsController: page.objectsController!(),
                  viewableObjectWidgetConfig: const ViewableObjectWidgetConfig(
                    forceShowSecondLine: false,
                  ),
                ),
            };
          },
        );
      },
    );
  }
}
