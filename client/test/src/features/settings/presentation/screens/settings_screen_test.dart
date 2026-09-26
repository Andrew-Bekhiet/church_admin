import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';

import '../../../../utils.dart';
import 'settings_screen_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UserPreferencesService>()])
void main() {
  group(
    'SettingsScreen',
    () {
      setUp(
        () {
          initGlobalProviderContainer(
            [
              userPreferencesServiceProvider.overrideWithValue(
                MockUserPreferencesService(),
              ),
            ],
          );
        },
      );

      tearDown(resetGlobalProviderContainer);

      group(
        'Confirm Dialog',
        () {
          testWidgets(
            'No changes',
            (tester) async {
              await tester.pumpWidgetBuilder(
                const SizedBox(),
                wrapper: materialAppWithThemeAndLocale(),
              );
              unawaited(
                tester
                    .firstState<NavigatorState>(find.byType(Navigator))
                    .push(
                      MaterialPageRoute(
                        builder: (_) => const SettingsScreen(),
                      ),
                    ),
              );

              await tester.pumpAndSettle();

              await tester.tap(find.widgetWithText(ExpansionTile, 'المظهر'));
              await tester.tap(find.widgetWithText(ExpansionTile, 'الاشعارات'));
              await tester.pumpAndSettle();

              await tester.tap(find.byType(BackButton));
              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsNothing);
              expect(find.byType(SettingsScreen), findsNothing);
              expect(find.text('تم حفظ التغييرات'), findsNothing);
            },
          );

          testWidgets(
            'Changing theme',
            (tester) async {
              await tester.pumpWidgetBuilder(
                const SizedBox(),
                wrapper: materialAppWithThemeAndLocale(),
              );
              unawaited(
                tester
                    .firstState<NavigatorState>(find.byType(Navigator))
                    .push(
                      MaterialPageRoute(
                        builder: (_) => const SettingsScreen(),
                      ),
                    ),
              );

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
            },
          );
        },
      );

      testWidgets(
        'Saving changes',
        (tester) async {
          await tester.pumpWidgetBuilder(
            const SizedBox(),
            wrapper: materialAppWithThemeAndLocale(),
          );
          unawaited(
            tester
                .firstState<NavigatorState>(find.byType(Navigator))
                .push(
                  MaterialPageRoute(
                    builder: (_) => const SettingsScreen(),
                  ),
                ),
          );

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
        },
      );
    },
  );
}
