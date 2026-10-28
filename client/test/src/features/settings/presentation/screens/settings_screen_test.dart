import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/recording_analytics_provider.dart';
import '../../../../material_ui_test_app.dart';

class _MockUserPreferencesService extends Mock
    implements UserPreferencesService {}

void main() {
  group('SettingsScreen', () {
    late _MockUserPreferencesService userPreferencesService;
    late RecordingAnalyticsProvider analytics;

    setUpAll(() => registerFallbackValue(ThemeChoice.system));

    setUp(() {
      userPreferencesService = _MockUserPreferencesService();
      analytics = RecordingAnalyticsProvider();
      when(
        () => userPreferencesService.themeChoice,
      ).thenReturn(ThemeChoice.system);
      when(() => userPreferencesService.greatFeastTheme).thenReturn(false);
      when(
        () => userPreferencesService.setThemeChoice(any()),
      ).thenAnswer((_) async {});
      when(
        () => userPreferencesService.setGreatFeastTheme(any()),
      ).thenAnswer((_) async {});
      when(
        () => userPreferencesService.themePreferencesStream,
      ).thenAnswer((_) => const Stream.empty());
      initGlobalProviderContainer([
        userPreferencesServiceProvider.overrideWithValue(
          userPreferencesService,
        ),
        analyticsServiceProvider.overrideWithValue(
          AnalyticsService([analytics], FakeLoggingService()),
        ),
      ]);
    });

    tearDown(resetGlobalProviderContainer);

    for (final savedThemeChoice in ThemeChoice.values) {
      testWidgets(
        'a saved $savedThemeChoice theme selects only its chip',
        (tester) async {
          when(
            () => userPreferencesService.themeChoice,
          ).thenReturn(savedThemeChoice);
          await tester.pumpWidget(
            MaterialUiTestApp.withThemeAndLocale(child: const SizedBox()),
          );
          tester
              .firstState<NavigatorState>(find.byType(Navigator))
              .push(MaterialPageRoute(builder: (_) => const SettingsScreen()));
          await tester.pumpAndSettle();

          await tester.tap(find.byKey(SettingsScreenKeys.appearanceTile));
          await tester.pumpAndSettle();

          final selectedChipKeys = tester
              .widgetList<ChoiceChip>(find.byType(ChoiceChip))
              .where((chip) => chip.selected)
              .map((chip) => chip.key);
          expect(selectedChipKeys, [
            SettingsScreenKeys.themeChipFor(savedThemeChoice),
          ]);
        },
      );
    }

    group('Confirm Dialog', () {
      testWidgets('No changes', (tester) async {
        await tester.pumpWidget(
          MaterialUiTestApp.withThemeAndLocale(child: const SizedBox()),
        );
        tester
            .firstState<NavigatorState>(find.byType(Navigator))
            .push(MaterialPageRoute(builder: (_) => const SettingsScreen()));

        await tester.pumpAndSettle();

        await tester.tap(find.widgetWithText(ExpansionTile, 'المظهر'));
        await tester.tap(find.widgetWithText(ExpansionTile, 'الاشعارات'));
        await tester.pumpAndSettle();

        await tester.tap(find.byType(BackButton));
        await tester.pumpAndSettle();

        expect(find.byType(AlertDialog), findsNothing);
        expect(find.byType(SettingsScreen), findsNothing);
        expect(find.text('تم حفظ التغييرات'), findsNothing);
      });

      testWidgets('Changing theme', (tester) async {
        await tester.pumpWidget(
          MaterialUiTestApp.withThemeAndLocale(child: const SizedBox()),
        );
        tester
            .firstState<NavigatorState>(find.byType(Navigator))
            .push(MaterialPageRoute(builder: (_) => const SettingsScreen()));

        await tester.pumpAndSettle();

        await tester.tap(find.widgetWithText(ExpansionTile, 'المظهر'));
        await tester.pumpAndSettle();

        await tester.tap(find.byType(SwitchListTile).first);
        await tester.pumpAndSettle();

        await tester.tap(find.byType(BackButton));

        await tester.pumpAndSettle();

        expect(find.byType(AlertDialog), findsNothing);
        expect(find.byType(SettingsScreen), findsNothing);
        expect(find.text('تم حفظ التغييرات'), findsNothing);
      });
    });

    testWidgets('Saving changes', (tester) async {
      await tester.pumpWidget(
        MaterialUiTestApp.withThemeAndLocale(child: const SizedBox()),
      );
      tester
          .firstState<NavigatorState>(find.byType(Navigator))
          .push(MaterialPageRoute(builder: (_) => const SettingsScreen()));

      await tester.pumpAndSettle();

      await tester.tap(find.widgetWithText(ExpansionTile, 'المظهر'));
      await tester.pumpAndSettle();

      await tester.tap(
        find.byKey(SettingsScreenKeys.themeChipFor(ThemeChoice.dark)),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(AlertDialog), findsNothing);
      expect(find.byType(SettingsScreen), findsOneWidget);
      expect(find.text('تم حفظ التغييرات'), findsOneWidget);
    });

    testWidgets('saving a newly chosen theme stores and tracks that choice', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialUiTestApp.withThemeAndLocale(child: const SizedBox()),
      );
      tester
          .firstState<NavigatorState>(find.byType(Navigator))
          .push(MaterialPageRoute(builder: (_) => const SettingsScreen()));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(SettingsScreenKeys.appearanceTile));
      await tester.pumpAndSettle();

      await tester.tap(
        find.byKey(SettingsScreenKeys.themeChipFor(ThemeChoice.light)),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      verify(
        () => userPreferencesService.setThemeChoice(ThemeChoice.light),
      ).called(1);
      expect(
        analytics.trackedEvents.whereType<ThemeApply>().map(
          (event) => event.themeChoice,
        ),
        [ThemeChoice.light],
      );
    });

    testWidgets('saving without changing the theme tracks no theme change', (
      tester,
    ) async {
      await tester.pumpWidget(
        MaterialUiTestApp.withThemeAndLocale(child: const SizedBox()),
      );
      tester
          .firstState<NavigatorState>(find.byType(Navigator))
          .push(MaterialPageRoute(builder: (_) => const SettingsScreen()));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(analytics.trackedEvents.whereType<ThemeApply>(), isEmpty);
    });
  });
}
