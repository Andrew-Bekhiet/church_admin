import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testGoldens(
    'TitleSearchField',
    (tester) async {
      final searchStream = StreamController<String?>.broadcast();
      addTearDown(searchStream.close);

      await tester.pumpWidgetBuilder(
        Scaffold(
          appBar: AppBar(
            title: TitleSearchField(
              searchStream: searchStream,
              title: const Text('Test Title'),
            ),
          ),
        ),
        wrapper: materialAppWrapper(
          theme: ThemingService.getDefault(
            darkTheme: false,
            greatFeastThemeOverride: false,
          ),
        ),
      );

      await screenMatchesGolden(tester, 'title_search_field/initial');

      expect(find.text('Test Title'), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byType(TextField), findsNothing);

      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle();

      await screenMatchesGolden(tester, 'title_search_field/search');

      expect(find.text('Test Title'), findsNothing);
      expect(find.byIcon(Icons.search), findsNothing);
      expect(find.byType(TextField), findsOneWidget);

      await tester.tap(find.byIcon(Icons.clear));
      await tester.pumpAndSettle();

      await screenMatchesGolden(tester, 'title_search_field/initial');

      expect(find.text('Test Title'), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byType(TextField), findsNothing);
    },
  );
}
