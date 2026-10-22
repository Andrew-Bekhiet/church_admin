import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../material_ui_test_app.dart';
import 'settings_screen_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UserPreferencesService>()])
void main() {
  group('SettingsScreen', () {
    late MockUserPreferencesService userPreferencesService;

    setUp(() {
      userPreferencesService = MockUserPreferencesService();
      initGlobalProviderContainer([
        userPreferencesServiceProvider.overrideWithValue(
          userPreferencesService,
        ),
      ]);
    });

    tearDown(resetGlobalProviderContainer);

    for (final (savedDarkTheme, expectedChip) in [
      (true, 'المظهر الداكن'),
      (false, 'المظهر الفاتح'),
      (null, 'حسب النظام'),
    ]) {
      testWidgets(
        'a saved dark theme of $savedDarkTheme selects only $expectedChip',
        (tester) async {
          when(userPreferencesService.darkTheme).thenReturn(savedDarkTheme);
          await tester.pumpWidget(
            MaterialUiTestApp.withThemeAndLocale(child: const SizedBox()),
          );
          tester
              .firstState<NavigatorState>(find.byType(Navigator))
              .push(MaterialPageRoute(builder: (_) => const SettingsScreen()));
          await tester.pumpAndSettle();

          await tester.tap(find.widgetWithText(ExpansionTile, 'المظهر'));
          await tester.pumpAndSettle();

          final selectedChips = tester
              .widgetList<ChoiceChip>(find.byType(ChoiceChip))
              .where((chip) => chip.selected)
              .map((chip) => (chip.label as Text).data);
          expect(selectedChips, [expectedChip]);
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

      await tester.tap(find.text('المظهر الداكن'));
      await tester.pumpAndSettle();

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(AlertDialog), findsNothing);
      expect(find.byType(SettingsScreen), findsOneWidget);
      expect(find.text('تم حفظ التغييرات'), findsOneWidget);
    });
  });
}
