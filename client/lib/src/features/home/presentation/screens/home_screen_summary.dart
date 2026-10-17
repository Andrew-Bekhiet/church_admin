import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreenSummary extends StatelessWidget {
  const HomeScreenSummary({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    final homeCubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          previous.dailyData != current.dailyData ||
          previous.birthdays != current.birthdays ||
          previous.hero != current.hero,
      builder: (context, homeState) {
        return ListView(
          children: [
            SessionReplayUnmask(
              child: Image.asset(
                homeState.hero.imageAsset,
                alignment: const Alignment(0, -0.7),
                height: size.height * 0.24,
                fit: BoxFit.fitWidth,
              ),
            ),
            const UpdateAvailableWidget(),
            Container(
              padding: const EdgeInsets.only(
                left: 7,
                right: 7,
                top: 9,
                bottom: 22,
              ),
              margin: const EdgeInsets.only(left: 16, right: 16, top: 14),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: themeData.colorScheme.primary.withAlpha(100),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: themeData.colorScheme.primary),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: switch (homeState.dailyData) {
                null => const Center(
                  child: CircularProgressIndicator(),
                ),
                final HomeDailyData dailyData => Column(
                  spacing: 6,
                  children: [
                    if (homeState.birthdays case final birthdays?
                        when !birthdays.isEmpty)
                      AnimatedSize(
                        duration: const Duration(milliseconds: 400),
                        alignment: Alignment.topCenter,
                        curve: Easing.standard,
                        child: HomeModeSection(
                          key: HomeScreenSummaryKeys.birthdaysButtonKey,
                          onTap: () => AdvancedSearchRoute(
                            $extra: birthdays.query,
                          ).push(context),
                          title: 'أعياد الميلاد اليوم',
                          text: birthdays.preview,
                          textMaxLines: 2,
                        ),
                      ),
                    SessionReplayUnmask(
                      child: HomeModeSection(
                        key: HomeScreenSummaryKeys.verseButtonKey,
                        onTap: () => showMessageDialog(
                          context,
                          initialData: dailyData,
                          type: HomeDailyDataType.verse,
                        ),
                        title: 'الآيه',
                        text: dailyData.verse,
                      ),
                    ),
                    SessionReplayUnmask(
                      child: HomeModeSection(
                        key: HomeScreenSummaryKeys.sneksarButtonKey,
                        onTap: () => showMessageDialog(
                          context,
                          initialData: dailyData,
                          type: HomeDailyDataType.sneksar,
                          canGetNew: false,
                        ),
                        title: 'السنكسار',
                        text: dailyData.sneksar,
                      ),
                    ),
                    SessionReplayUnmask(
                      child: HomeModeSection(
                        key: HomeScreenSummaryKeys.sayingButtonKey,
                        onTap: () => showMessageDialog(
                          context,
                          initialData: dailyData,
                          type: HomeDailyDataType.saying,
                        ),
                        title: 'أقوال أباء',
                        text: dailyData.saying,
                      ),
                    ),
                  ],
                ),
              },
            ),
            SessionReplayUnmask(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 16,
                    children: [
                      HomeModeCard(
                        key: HomeScreenSummaryKeys.churchDataButtonKey,
                        onTap: () => unawaited(
                          homeCubit.changeMode(HomeMode.churchData),
                        ),
                        assetName: 'assets/images/church_data.png',
                        title: 'أسرة أبونا بيشوى كامل',
                      ),
                      HomeModeCard(
                        key: HomeScreenSummaryKeys.sundaySchoolButtonKey,
                        onTap: () => unawaited(
                          homeCubit.changeMode(HomeMode.sundaySchool),
                        ),
                        assetName:
                            'assets/images/sunday_school_services_image.png',
                        title: 'خدمات مدارس الأحد',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
          ],
        );
      },
    );
  }

  void showMessageDialog(
    BuildContext context, {
    required HomeDailyData initialData,
    required HomeDailyDataType type,
    bool canGetNew = true,
  }) {
    final homeCubit = context.read<HomeCubit>();
    final initialMessage = initialData.select(type);
    final title = type.title;
    final label = type.label;

    showDialog(
      context: context,
      builder: (context) => BlocBuilder<HomeCubit, HomeState>(
        bloc: homeCubit,
        builder: (context, state) {
          final message = switch (state) {
            HomeState(dailyData: null) => initialMessage,
            HomeState(:final HomeDailyData dailyData) => dailyData.select(
              type,
            ),
          };

          return AlertDialog(
            scrollable: true,
            title: Text(title),
            content: Text(message, textAlign: TextAlign.center),
            contentTextStyle: Theme.of(context).textTheme.displaySmall,
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              FilledButton(
                key: HomeScreenSummaryKeys.shareButtonKey,
                onPressed: () => ShareService.I.shareText(message),
                child: Text('مشاركة $title'),
              ),
              if (canGetNew)
                FilledButton(
                  key: HomeScreenSummaryKeys.newItemButtonKey,
                  onPressed: () => homeCubit.showAnotherDailyText(type),
                  child: Text('$label أخرى'),
                ),
              FilledButton(
                onPressed: Navigator.of(context).pop,
                child: const Text('إلغاء'),
              ),
            ],
          );
        },
      ),
    );
  }
}

abstract final class HomeScreenSummaryKeys {
  static const Key churchDataButtonKey = Key('church_data_button');
  static const Key sundaySchoolButtonKey = Key('sunday_school_button');

  static const Key birthdaysButtonKey = Key('birthdays_button');
  static const Key verseButtonKey = Key('verse_button');
  static const Key sneksarButtonKey = Key('sneksar_button');
  static const Key sayingButtonKey = Key('saying_button');

  static const Key newItemButtonKey = Key('new_item_button');
  static const Key shareButtonKey = Key('share_button');
}
