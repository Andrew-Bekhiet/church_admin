import 'package:church_admin/church_admin.dart';
import 'package:collection/collection.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBottomNavBar extends StatelessWidget {
  final HomeBloc homeBloc;

  const HomeBottomNavBar({required this.homeBloc, super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: homeBloc,
        buildWhen: (previous, current) =>
            previous.pageController != current.pageController ||
            previous.currentPage.round() != current.currentPage.round() ||
            !const DeepCollectionEquality().equals(
              previous.pages,
              current.pages,
            ),
        builder: (context, homeState) {
          final theme = Theme.of(context);

          final pages = homeState.pages;

          final int currentPageIndex = homeState.currentPage.round();

          final currentPage = pages[currentPageIndex];

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              DefaultTextStyle.merge(
                overflow: TextOverflow.ellipsis,
                child: CurvedNavigationBar(
                  animationCurve: Curves.easeInOutCirc,
                  height: 50,
                  key: ValueKey(pages.length),
                  color: theme.colorScheme.primaryContainer,
                  buttonBackgroundColor: theme.colorScheme.primaryContainer,
                  onTap: (i) => homeState.pageController.animateToPage(
                    i,
                    duration: kTabScrollDuration,
                    curve: Curves.easeInOutCirc,
                  ),
                  index: currentPageIndex,
                  animationDuration: kTabScrollDuration,
                  backgroundColor: Colors.transparent,
                  items: pages.mapIndexed((index, item) {
                    final isActive = index == currentPageIndex;
                    final fgColor = theme.colorScheme.onPrimary.withValues(
                      alpha: isActive ? 1 : 0.7,
                    );

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(item.pageIcon, color: fgColor, fill: 1),
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
              ),
              RepaintBoundary(
                child: BottomAppBar(
                  height: 25,
                  padding: EdgeInsets.zero,
                  color: theme.colorScheme.primaryContainer,
                  child: StreamBuilder<String?>(
                    stream: currentPage.objectsController == null
                        ? Stream.value('')
                        : currentPage.objectsController!().totalCountStream.map(
                            (c) => '$c ${currentPage.label}',
                          ),
                    builder: (context, snapshot) {
                      return Text(
                        '${snapshot.data}',
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
    );
  }
}
