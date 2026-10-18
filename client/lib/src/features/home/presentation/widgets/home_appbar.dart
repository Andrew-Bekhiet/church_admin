import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/home/presentation/widgets/snowflake_animation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final PageController _pageController;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const HomeAppBar({required this._pageController, super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  double get _firstPageScrollProgress {
    final controller = widget._pageController;
    if (!controller.hasClients) return 0;

    final position = controller.position;

    return (position.pixels / position.extentInside).clamp(0, 1);
  }

  @override
  Widget build(BuildContext context) {
    return SessionReplayUnmask(
      child: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            previous.mode != current.mode ||
            previous.currentTab != current.currentTab ||
            previous.hero != current.hero,
        builder: (context, homeState) {
          final theme = Theme.of(context);
          final appbar = AppBar(
            backgroundColor: Colors.transparent,
            scrolledUnderElevation: 0,
            systemOverlayStyle: switch (theme.brightness) {
              Brightness.light => SystemUiOverlayStyle.dark,
              Brightness.dark => SystemUiOverlayStyle.light,
            },
            flexibleSpace: ListenableBuilder(
              listenable: widget._pageController,
              builder: (context, _) => ColoredBox(
                color:
                    (theme.appBarTheme.backgroundColor ??
                            theme.colorScheme.surface)
                        .withValues(alpha: _firstPageScrollProgress),
              ),
            ),
            actionsPadding: const EdgeInsetsDirectional.symmetric(
              horizontal: 8,
            ),
            actions: [
              ListenableBuilder(
                listenable: widget._pageController,
                builder: (context, child) => ClipRect(
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    widthFactor: _firstPageScrollProgress,
                    child: child,
                  ),
                ),
                child: HomeModeChip(
                  mode: homeState.mode,
                  onPressed: context.read<HomeCubit>().switchMode,
                ),
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
    );
  }
}
