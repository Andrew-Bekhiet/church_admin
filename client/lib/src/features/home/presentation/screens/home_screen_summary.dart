import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreenSummary extends StatelessWidget {
  const HomeScreenSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous.mode != current.mode ||
          previous.dailyData != current.dailyData ||
          previous.birthdays != current.birthdays ||
          previous.hero != current.hero,
      builder: (context, homeState) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SessionReplayUnmask(
                child: HomeHeroImage(imageAsset: homeState.hero.imageAsset),
              ),
            ),
            const SliverToBoxAdapter(child: UpdateAvailableWidget()),
            SliverPadding(
              padding: const EdgeInsetsDirectional.only(
                start: 16,
                end: 16,
                bottom: 16,
              ),
              sliver: SliverList.list(
                children: [
                  const HomeSectionHeader(title: 'الخدمة'),
                  SessionReplayUnmask(
                    child: HomeModeCards(
                      selectedMode: homeState.mode,
                      onModeSelected: context.read<HomeCubit>().openFirstTabOf,
                    ),
                  ),
                  const HomeSectionHeader(title: 'اليوم'),
                  HomeBirthdaysSection(
                    birthdays: homeState.birthdays,
                    onTap: (birthdays) => AdvancedSearchRoute(
                      $extra: birthdays.query,
                    ).push(context),
                  ),
                  HomeDailyTextCards(
                    dailyData: homeState.dailyData,
                    onTap: (type) => unawaited(
                      HomeDailyTextSheet.show(context, type),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
