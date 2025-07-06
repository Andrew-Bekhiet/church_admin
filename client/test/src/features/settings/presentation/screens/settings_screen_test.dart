import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../utils.dart';
import 'settings_screen_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UserSettingsService>()])
void main() {
  loadAppFonts();

  group(
    'SettingsScreen',
    () {
      setUp(
        () {
          initGlobalProviderContainer(
            [
              userSettingsServiceProvider
                  .overrideWithValue(MockUserSettingsService()),
            ],
          );
        },
      );
      // Tests outline:
      //
      // 1. Verify that the settings screen renders correctly, by opening each expansion tile and adding it as a golden scenario
      // 2. Verify confirm exit dialog shows when any setting is changed without saving, and doesn't show when no changes are made
      // 3. Verify that saving actually saves the changes to UserSettingsService
      testGoldens(
        'Structure',
        (tester) async {
          final deviceBuilder = DeviceBuilder(
            wrap: materialAppWithThemeAndLocale(),
          )
            ..addScenario(
              name: 'SettingsScreen Collapsed',
              widget: const SettingsScreen(),
              onCreate: (key) async {
                expect(
                  find.descendant(
                    of: find.byKey(key),
                    matching: find.widgetWithText(ExpansionTile, 'المظهر'),
                  ),
                  findsOneWidget,
                );
                expect(
                  find.descendant(
                    of: find.byKey(key),
                    matching:
                        find.widgetWithText(ExpansionTile, 'مظهر البيانات'),
                  ),
                  findsOneWidget,
                );
                expect(
                  find.descendant(
                    of: find.byKey(key),
                    matching: find.widgetWithText(ExpansionTile, 'الاشعارات'),
                  ),
                  findsOneWidget,
                );
              },
            )
            ..addScenario(
              name: 'SettingsScreen: Theme settings expanded',
              widget: const SettingsScreen(),
              onCreate: (key) async {
                await tester.tap(
                  find.descendant(
                    of: find.byKey(key),
                    matching: find.widgetWithText(ExpansionTile, 'المظهر'),
                  ),
                );
              },
            )
            ..addScenario(
              name: 'SettingsScreen: Second line settings expanded',
              widget: const SettingsScreen(),
              onCreate: (key) async {
                await tester.tap(
                  find.descendant(
                    of: find.byKey(key),
                    matching:
                        find.widgetWithText(ExpansionTile, 'مظهر البيانات'),
                  ),
                );
              },
            )
            ..addScenario(
              name: 'SettingsScreen: Notifications settings expanded',
              widget: const SettingsScreen(),
              onCreate: (key) async {
                await tester.tap(
                  find.descendant(
                    of: find.byKey(key),
                    matching: find.widgetWithText(ExpansionTile, 'الاشعارات'),
                  ),
                );
              },
            )
            ..overrideDevicesForAllScenarios(
              devices: [Device.iphone11, Device.tabletPortrait],
            );

          await tester.pumpDeviceBuilder(deviceBuilder);

          await screenMatchesGolden(tester, 'settings_screen');
        },
      );

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
                tester.firstState<NavigatorState>(find.byType(Navigator)).push(
                      MaterialPageRoute(
                        builder: (_) => const SettingsScreen(),
                      ),
                    ),
              );

              await tester.pumpAndSettle();

              await tester.tap(find.widgetWithText(ExpansionTile, 'المظهر'));
              await tester
                  .tap(find.widgetWithText(ExpansionTile, 'مظهر البيانات'));
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
                tester.firstState<NavigatorState>(find.byType(Navigator)).push(
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

          testWidgets(
            'Changing second line',
            (tester) async {
              await tester.pumpWidgetBuilder(
                const SizedBox(),
                wrapper: materialAppWithThemeAndLocale(),
              );
              unawaited(
                tester.firstState<NavigatorState>(find.byType(Navigator)).push(
                      MaterialPageRoute(
                        builder: (_) => const SettingsScreen(),
                      ),
                    ),
              );

              await tester.pumpAndSettle();

              await tester
                  .tap(find.widgetWithText(ExpansionTile, 'مظهر البيانات'));
              await tester.pumpAndSettle();

              await tester.tap(
                find.bySubtype<DropdownButtonFormField>().first,
              );
              await tester.pumpAndSettle();

              await tester.tap(
                find
                    .text(
                      AdvancedQueriesMetadata()
                          .area
                          .fieldsMetadata
                          .elementAt(2)
                          .label,
                    )
                    .first,
              );
              await tester.pumpAndSettle();

              await tester.tap(find.byType(BackButton));

              await tester.pumpAndSettle();

              expect(find.byType(AlertDialog), findsOneWidget);
              expect(find.byType(SettingsScreen), findsOneWidget);
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
            tester.firstState<NavigatorState>(find.byType(Navigator)).push(
                  MaterialPageRoute(
                    builder: (_) => const SettingsScreen(),
                  ),
                ),
          );

          await tester.pumpAndSettle();

          await tester.tap(find.widgetWithText(ExpansionTile, 'مظهر البيانات'));
          await tester.pumpAndSettle();

          await tester.tap(
            find.bySubtype<DropdownButtonFormField>().first,
          );
          await tester.pumpAndSettle();

          final FieldMetadata<Object> property =
              AdvancedQueriesMetadata().area.fieldsMetadata.elementAt(2);

          await tester.tap(find.text(property.label).first);
          await tester.pumpAndSettle();

          await tester.tap(find.byType(FloatingActionButton));
          await tester.pumpAndSettle();

          expect(find.byType(AlertDialog), findsNothing);
          expect(find.byType(SettingsScreen), findsOneWidget);
          expect(find.text('تم حفظ التغييرات'), findsOneWidget);

          verify(
            UserSettingsService.I
                .setSecondLineFor(type: Area, value: property.name),
          );
        },
      );
    },
  );
}
