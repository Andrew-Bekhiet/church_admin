import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/home/presentation/widgets/snowflake_animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SessionReplayUnmask(
      child: RepaintBoundary(
        child: AnimatedSize(
          duration: const Duration(milliseconds: 250),
          alignment: Alignment.topCenter,
          child: BlocBuilder<HomeCubit, HomeState>(
            buildWhen: (previous, current) =>
                previous.currentTab != current.currentTab ||
                previous.listTypeOf(previous.currentTab) !=
                    current.listTypeOf(current.currentTab) ||
                previous.hero != current.hero,
            builder: (context, homeState) {
              if (homeState.currentTab == HomeTab.summary) {
                return const SizedBox.shrink();
              }

              final appbar = AppBar(
                actions: [
                  if (homeState.listTypeOf(homeState.currentTab) != null)
                    IconButton(
                      onPressed: context.read<HomeCubit>().toggleListType,
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
                    const HomeModeSwitcher(),
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

              if (homeState.hero.showsSnowfall) {
                return SnowflakeAnimation(child: appbar);
              }

              return appbar;
            },
          ),
        ),
      ),
    );
  }

  void onSearch(BuildContext context) {
    unawaited(
      showSearch(
        context: context,
        delegate: HomeSearchDelegate(HomeSearchCubit()),
      ),
    );
  }
}
