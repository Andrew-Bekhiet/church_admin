import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/home/presentation/widgets/snowflake_animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                previous.hero != current.hero,
            builder: (context, homeState) {
              if (homeState.currentTab == HomeTab.summary) {
                return const SizedBox.shrink();
              }

              final appbar = AppBar(
                actionsPadding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 8,
                ),
                actions: [
                  HomeModeChip(
                    mode: homeState.mode,
                    onPressed: context.read<HomeCubit>().switchMode,
                  ),
                ],
                titleSpacing: 0,
                title: const HomeSearchBar(),
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
}
