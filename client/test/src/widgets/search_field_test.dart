import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:rxdart_ext/single.dart';

import '../utils.dart';

void main() {
  group(
    'SearchField =>',
    () {
      testWidgets(
        'canHide => true',
        (tester) async {
          final sink = BehaviorSubject<String?>.seeded('');
          addTearDown(sink.close);

          await tester.pumpWidgetBuilder(
            Scaffold(
              body: SearchField(
                searchSink: sink,
                canHide: true,
              ),
            ),
            wrapper: materialAppWithThemeAndLocale(),
          );

          expect(find.byType(TextField), findsOneWidget);
          expect(find.byIcon(Symbols.clear), findsOneWidget);

          await tester.enterText(find.byType(TextField), 'test');
          expect(find.text('test'), findsOneWidget);
          expect(sink.value, 'test');

          await tester.tap(find.byIcon(Symbols.clear));
          expect(sink.value, isNull);
        },
      );

      testWidgets(
        'canHide => false',
        (tester) async {
          final sink = BehaviorSubject<String?>.seeded('');
          addTearDown(sink.close);

          await tester.pumpWidgetBuilder(
            Scaffold(
              body: SearchField(
                searchSink: sink,
              ),
            ),
            wrapper: materialAppWrapper(
              theme: ThemingService.getDefault(
                isDarkOverride: false,
                greatFeastThemeOverride: false,
              ),
            ),
          );

          expect(find.byType(TextField), findsOneWidget);
          expect(find.byIcon(Symbols.clear), findsNothing);

          await tester.enterText(find.byType(TextField), 'test');
          expect(find.text('test'), findsOneWidget);
          expect(sink.value, 'test');
        },
      );
    },
  );
}
