import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeFloatingActionButton extends StatelessWidget {
  final HomeBloc homeBloc;

  const HomeFloatingActionButton({required this.homeBloc, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: homeBloc,
      builder: (context, homeState) {
        final pages = homeState.pages;

        return SwitchingFloatingActionButton(
          animation: homeState.pageController,
          getIndex: () => homeState.currentPage.floor(),
          getOffset: () =>
              homeState.currentPage - homeState.currentPage.truncateToDouble(),
          icons: pages.map((tab) => tab.fabIcon).toList(),
          onTap: (i) {
            final location = pages[i].fabOnTapLocation;

            if (location == null) return;

            context.push(location);
          },
        );
      },
    );
  }
}
