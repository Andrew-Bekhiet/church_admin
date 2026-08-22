import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreenSummary extends StatelessWidget {
  final HomeBloc homeBloc;

  const HomeScreenSummary({required this.homeBloc, super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return BlocSelector<HomeBloc, HomeState, HomeDailyData?>(
      bloc: homeBloc,
      selector: (state) => state.dailyData,
      builder: (context, dailyData) {
        return ListView(
          children: [
            Image.asset(
              _getHomeImage(),
              alignment: const Alignment(0, -0.7),
              height: size.height * 0.24,
              fit: BoxFit.fitWidth,
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
              child: switch (dailyData) {
                null => const Center(
                  child: CircularProgressIndicator(),
                ),
                final HomeDailyData dailyData => Column(
                  spacing: 6,
                  children: [
                    if (dailyData.birthdaysText.isNotEmpty)
                      AnimatedSize(
                        duration: const Duration(milliseconds: 400),
                        alignment: Alignment.topCenter,
                        curve: Easing.standard,
                        child: HomeModeSection(
                          key: HomeScreenSummaryKeys.birthdaysButtonKey,
                          onTap: () => AdvancedSearchRoute(
                            $extra: dailyData.birthdaysQuery,
                          ).push(context),
                          title: 'أعياد الميلاد اليوم',
                          text: dailyData.birthdaysText,
                          textMaxLines: 2,
                        ),
                      ),
                    HomeModeSection(
                      key: HomeScreenSummaryKeys.verseButtonKey,
                      onTap: () => showMessageDialog(
                        context,
                        initialData: dailyData,
                        type: HomeDailyDataType.verse,
                      ),
                      title: 'الآيه',
                      text: dailyData.verse,
                    ),
                    HomeModeSection(
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
                    HomeModeSection(
                      key: HomeScreenSummaryKeys.sayingButtonKey,
                      onTap: () => showMessageDialog(
                        context,
                        initialData: dailyData,
                        type: HomeDailyDataType.saying,
                      ),
                      title: 'أقوال أباء',
                      text: dailyData.saying,
                    ),
                  ],
                ),
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 25),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  spacing: 16,
                  children: [
                    HomeModeCard(
                      key: HomeScreenSummaryKeys.churchDataButtonKey,
                      onTap: () => homeBloc.add(
                        const HomeChangeMode(HomeMode.churchData),
                      ),
                      assetName: 'assets/images/church_data.png',
                      title: 'أسرة أبونا بيشوى كامل',
                    ),
                    HomeModeCard(
                      key: HomeScreenSummaryKeys.sundaySchoolButtonKey,
                      onTap: () => homeBloc.add(
                        const HomeChangeMode(HomeMode.sundaySchool),
                      ),
                      assetName:
                          'assets/images/sunday_school_services_image.png',
                      title: 'خدمات مدارس الأحد',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),
          ],
        );
      },
    );
  }

  String _getHomeImage() {
    switch (LiturgySeason.current) {
      case LiturgySeason.holyWeek:
        return 'assets/holyweek.jpeg';

      case LiturgySeason.pentecost:
        return 'assets/risen.jpg';

      case _:
        return 'assets/images/home-screen.jpg';
    }
  }

  void showMessageDialog(
    BuildContext context, {
    required HomeDailyData initialData,
    required HomeDailyDataType type,
    bool canGetNew = true,
  }) {
    final initialMessage = initialData.select(type);
    final title = type.title;
    final label = type.label;

    unawaited(
      showDialog(
        context: context,
        builder: (context) => BlocBuilder<HomeBloc, HomeState>(
          bloc: homeBloc,
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
              contentTextStyle: Theme.of(context).textTheme.titleLarge,
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
                    onPressed: () => homeBloc.add(HomeDailyDataGetNew(type)),
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
