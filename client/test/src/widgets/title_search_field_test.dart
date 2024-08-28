import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens(
    'TitleSearchField',
    (tester) async {
      final searchStreams = [
        StreamController<String?>.broadcast(),
        StreamController<String?>.broadcast(),
        StreamController<String?>.broadcast(),
      ];
      addTearDown(() => Future.wait(searchStreams.map((e) => e.close())));

      final deviceBuilder = DeviceBuilder(
        wrap: materialAppWrapper(
          theme: ThemingService.getDefault(
            isDarkOverride: false,
            greatFeastThemeOverride: false,
          ),
        ),
      )
        ..addScenario(
          name: 'initial',
          widget: Scaffold(
            appBar: AppBar(
              title: TitleSearchField(
                searchStream: searchStreams[0],
                title: const Text('Test Title'),
              ),
            ),
          ),
          onCreate: (key) async {
            searchStreams[0].add(null);
            await tester.pumpAndSettle();

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('Test Title'),
              ),
              findsOneWidget,
            );
            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.byIcon(Symbols.search),
              ),
              findsOneWidget,
            );
            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.byType(TextField),
              ),
              findsNothing,
            );
          },
        )
        ..addScenario(
          name: 'search',
          widget: Scaffold(
            appBar: AppBar(
              title: TitleSearchField(
                searchStream: searchStreams[1],
                title: const Text('Test Title'),
              ),
            ),
          ),
          onCreate: (key) async {
            searchStreams[1].add(null);
            await tester.pumpAndSettle();

            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.byIcon(Symbols.search),
              ),
            );
            await tester.pumpAndSettle();

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('Test Title'),
              ),
              findsNothing,
            );
            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.byIcon(Symbols.search),
              ),
              findsNothing,
            );
            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.byType(TextField),
              ),
              findsOneWidget,
            );
          },
        )
        ..addScenario(
          name: 'clear',
          widget: Scaffold(
            appBar: AppBar(
              title: TitleSearchField(
                searchStream: searchStreams[2],
                title: const Text('Test Title'),
              ),
            ),
          ),
          onCreate: (key) async {
            searchStreams[2].add(null);
            await tester.pumpAndSettle();

            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.byIcon(Symbols.search),
              ),
            );
            await tester.pumpAndSettle();

            await tester.tap(
              find.descendant(
                of: find.byKey(key),
                matching: find.byIcon(Symbols.clear),
              ),
            );
            await tester.pumpAndSettle();

            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.text('Test Title'),
              ),
              findsOneWidget,
            );
            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.byIcon(Symbols.search),
              ),
              findsOneWidget,
            );
            expect(
              find.descendant(
                of: find.byKey(key),
                matching: find.byType(TextField),
              ),
              findsNothing,
            );
          },
        );

      await tester.pumpDeviceBuilder(deviceBuilder);

      await screenMatchesGolden(tester, 'title_search_field');
    },
  );
}
