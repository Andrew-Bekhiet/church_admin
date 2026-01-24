import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/home/presentation/widgets/snowflake_animation.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final HomeBloc homeBloc;

  const HomeAppBar({
    required this.homeBloc,
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: AnimatedSize(
        duration: const Duration(milliseconds: 250),
        alignment: Alignment.topCenter,
        child: BlocBuilder<HomeBloc, HomeState>(
          bloc: homeBloc,
          buildWhen: (previous, current) =>
              previous.currentPage.round() != current.currentPage.round() ||
              previous.showSnowflakeAnimation !=
                  current.showSnowflakeAnimation ||
              !const DeepCollectionEquality().equals(
                previous.pages,
                current.pages,
              ),
          builder: (context, homeState) {
            final int pageIndex = homeState.currentPage.round();

            if (pageIndex == 0) {
              return const SizedBox.shrink();
            }

            final ViewableObjectListType? listType =
                homeState.pages[pageIndex].listType;

            final appbar = AppBar(
              actions: [
                if (listType != null)
                  IconButton(
                    onPressed: listType == ViewableObjectListType.list
                        ? () => homeBloc.add(
                            HomeSwitchPageListType(
                              pageIndex,
                              ViewableObjectListType.grid,
                            ),
                          )
                        : () => homeBloc.add(
                            HomeSwitchPageListType(
                              pageIndex,
                              ViewableObjectListType.list,
                            ),
                          ),
                    icon: const Icon(Symbols.lists),
                  ),
              ],
              leadingWidth: kToolbarHeight * 2 - 12,
              leading: Row(
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(Symbols.menu),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
                  HomeModeSwitcher(homeBloc: homeBloc),
                ],
              ),
              titleSpacing: 0,
              title: InkWell(
                onTap: () => onSearch(context),
                child: const SizedBox(
                  height: kToolbarHeight,
                  child: Row(
                    children: [
                      SizedBox(width: 8),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('بحث ...'),
                        ),
                      ),
                      Icon(Symbols.search),
                      SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
            );

            if (homeState.showSnowflakeAnimation) {
              return SnowflakeAnimation(child: appbar);
            }

            return appbar;
          },
        ),
      ),
    );
  }

  void onSearch(BuildContext context) {
    unawaited(
      showSearch(
        context: context,
        delegate: HomeSearchDelegate(DatabaseService.I.home),
      ),
    );
  }
}
