import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core_mocks/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart_ext/single.dart';

void main() {
  testWidgets(
    'SearchField => canHide => true',
    (tester) async {
      final sink = BehaviorSubject<String?>.seeded('');
      addTearDown(sink.close);

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: SearchField(
              searchSink: sink,
              canHide: true,
            ),
          ),
        ),
      );

      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.clear), findsOneWidget);

      await tester.enterText(find.byType(TextField), 'test');
      expect(find.text('test'), findsOneWidget);
      expect(sink.value, 'test');

      await tester.tap(find.byIcon(Icons.clear));
      expect(sink.value, isNull);
    },
  );

  testWidgets(
    'SearchField => canHide => false',
    (tester) async {
      final sink = BehaviorSubject<String?>.seeded('');
      addTearDown(sink.close);

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: SearchField(
              searchSink: sink,
            ),
          ),
        ),
      );

      expect(find.byType(TextField), findsOneWidget);
      expect(find.byIcon(Icons.clear), findsNothing);

      await tester.enterText(find.byType(TextField), 'test');
      expect(find.text('test'), findsOneWidget);
      expect(sink.value, 'test');
    },
  );
}
