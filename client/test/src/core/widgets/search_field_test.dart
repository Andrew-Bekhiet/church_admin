import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:rxdart_ext/single.dart';

import '../../material_ui_test_app.dart';

void main() {
  group(
    'SearchField =>',
    () {
      testWidgets(
        'canHide => true',
        (tester) async {
          final sink = BehaviorSubject<String?>.seeded('');
          addTearDown(sink.close);

          await tester.pumpWidget(
            MaterialUiTestApp.withThemeAndLocale(
              child: Scaffold(
                body: SearchField(
                  searchSink: sink,
                  canHide: true,
                ),
              ),
            ),
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

          await tester.pumpWidget(
            MaterialUiTestApp(
              theme: ThemingService.getDefault(
                isDarkOverride: false,
                greatFeastThemeOverride: false,
              ),
              child: Scaffold(
                body: SearchField(
                  searchSink: sink,
                ),
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
