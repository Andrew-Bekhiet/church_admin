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
                previous.mode != current.mode ||
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
                  HomeModeChip(
                    mode: homeState.mode,
                    onPressed: () =>
                        unawaited(context.read<HomeCubit>().switchMode()),
                  ),
                  if (homeState.listTypeOf(homeState.currentTab) != null)
                    IconButton(
                      onPressed: context.read<HomeCubit>().toggleListType,
                      icon: const Icon(Symbols.lists),
                    ),
                ],
                leading: Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Symbols.menu),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                ),
                titleSpacing: 0,
                title: InkWell(
                  onTap: () => unawaited(onSearch(context)),
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

  Future<void> onSearch(BuildContext context) async {
    final searchCubit = HomeSearchCubit();

    await showSearch(
      context: context,
      delegate: HomeSearchDelegate(searchCubit),
    );
    await searchCubit.close();
  }
}
