import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../material_ui_test_app.dart';

class _MockUserPreferencesService extends Mock
    implements UserPreferencesService {}

void main() {
  group('SettingsScreen', () {
    late _MockUserPreferencesService userPreferencesService;

    setUp(() {
      userPreferencesService = _MockUserPreferencesService();
      when(() => userPreferencesService.darkTheme).thenReturn(null);
      when(() => userPreferencesService.greatFeastTheme).thenReturn(false);
      when(
        () => userPreferencesService.setDarkTheme(any()),
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
      ]);
    });

    tearDown(resetGlobalProviderContainer);

    for (final savedDarkTheme in [true, false, null]) {
      testWidgets(
        'a saved dark theme of $savedDarkTheme selects only its chip',
        (tester) async {
          when(
            () => userPreferencesService.darkTheme,
          ).thenReturn(savedDarkTheme);
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
            SettingsScreenKeys.themeChipFor(savedDarkTheme),
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

      await tester.tap(find.byKey(SettingsScreenKeys.themeChipFor(true)));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(AlertDialog), findsNothing);
      expect(find.byType(SettingsScreen), findsOneWidget);
      expect(find.text('تم حفظ التغييرات'), findsOneWidget);
    });
  });
}
