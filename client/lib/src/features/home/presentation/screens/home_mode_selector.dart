import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeModeSelector extends StatelessWidget {
  final HomeController homeController;

  HomeDailyDataBloc get dailyDataBloc => homeController.dailyDataBloc;

  const HomeModeSelector({
    required this.homeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return BlocBuilder<HomeDailyDataBloc, HomeDailyDataState>(
      bloc: homeController.dailyDataBloc,
      builder: (context, state) {
        return ListView(
          children: [
            Image.asset(
              'assets/images/High way to God 1.png',
              height: size.height * 0.24,
              fit: BoxFit.fill,
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 7, right: 7, top: 9, bottom: 22),
              margin: const EdgeInsets.only(left: 16, right: 16, top: 14),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: themeData.colorScheme.primary.withAlpha(100),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: themeData.colorScheme.primary,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
              child: switch (state) {
                HomeDailyDataLoading() =>
                  const Center(child: CircularProgressIndicator()),
                HomeDailyDataLoaded(:final data) => Column(
                    spacing: 6,
                    children: [
                      HomeModeSection(
                        onTap: () => showMessageDialog(
                          context,
                          initialData: data,
                          type: HomeDailyDataType.verse,
                        ),
                        title: 'الآيه',
                        text: data.verse,
                      ),
                      HomeModeSection(
                        onTap: () => showMessageDialog(
                          context,
                          initialData: data,
                          type: HomeDailyDataType.sneksar,
                          canGetNew: false,
                        ),
                        title: 'السنكسار',
                        text: data.sneksar,
                      ),
                      HomeModeSection(
                        onTap: () => showMessageDialog(
                          context,
                          initialData: data,
                          type: HomeDailyDataType.saying,
                        ),
                        title: 'أقوال أباء',
                        text: data.saying,
                      ),
                    ],
                  )
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
                      onTap: () => homeController
                        ..onModeChanged(HomeMode.churchData)
                        ..onTabIndexChanged(1),
                      assetName: 'assets/images/church_data.png',
                      title: 'أسرة ابونا بيشوى كامل للافتفاد',
                    ),
                    HomeModeCard(
                      onTap: () => homeController
                        ..onModeChanged(HomeMode.sundaySchool)
                        ..onTabIndexChanged(1),
                      assetName:
                          'assets/images/sunday_school_services_image.png',
                      title: 'خدمات مدارس الاحد',
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

  void showMessageDialog(
    BuildContext context, {
    required HomeDailyData initialData,
    required HomeDailyDataType type,
    bool canGetNew = true,
  }) {
    final initialMessage = initialData.select(type);
    final title = type.title;
    final label = type.label;

    showDialog(
      context: context,
      builder: (context) => BlocBuilder<HomeDailyDataBloc, HomeDailyDataState>(
        bloc: dailyDataBloc,
        builder: (context, state) {
          final message = switch (state) {
            HomeDailyDataLoading() => initialMessage,
            HomeDailyDataLoaded(:final data) => data.select(type),
          };

          return AlertDialog(
            scrollable: true,
            title: Text(title),
            content: Text(message, textAlign: TextAlign.center),
            contentTextStyle: Theme.of(context).textTheme.titleLarge,
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              FilledButton(
                onPressed: () => ShareService.I.shareText(message),
                child: Text('مشاركة $title'),
              ),
              if (canGetNew)
                FilledButton(
                  onPressed: () => dailyDataBloc.add(HomeDailyDataGetNew(type)),
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
