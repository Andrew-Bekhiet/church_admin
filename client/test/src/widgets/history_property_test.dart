import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;
import 'package:churchdata_core_mocks/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart_ext/single.dart';
import 'package:timeago/timeago.dart';

import '../utils.dart';
import 'history_property_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<DelegatingPaginatableStream<LastRecordedByInfo>>(),
  ],
)
Future<void> main() async {
  await initializeDateFormatting();
  setLocaleMessages('ar', ArMessages());
  await loadAppFonts();

  testGoldens(
    'HistoryProperty => Goldens test',
    (tester) async {
      final value = DateTime.now().subtract(const Duration(days: 5));

      final historyProperty = HistoryProperty(
        name: 'name',
        value: value,
        getHistoryStream: MockDelegatingPaginatableStream.new,
        onRecordNow: () {},
      );

      await tester.pumpWidgetBuilder(
        Scaffold(
          body: historyProperty,
        ),
        wrapper: materialAppWrapper(
          theme: ThemeData(
            fontFamily: 'Cairo',
          ),
        ),
      );

      expect(
        find.descendant(
          of: find.byType(ListTile),
          matching: find.text('name'),
        ),
        findsOneWidget,
      );

      expect(
        find.descendant(
          of: find.byType(ListTile),
          matching: find.text(value.toDurationString()),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(ListTile),
          matching: find.text(historyProperty.dateFormat.format(value)),
        ),
        findsOneWidget,
      );

      expect(
        find.descendant(
          of: find.byType(IconButton),
          matching: find.byIcon(Icons.history),
        ),
        findsOneWidget,
      );

      expect(
        find.descendant(
          of: find.byType(IconButton),
          matching: find.byIcon(Icons.task_alt),
        ),
        findsOneWidget,
      );

      await screenMatchesGolden(tester, 'history_property');
    },
    skip: true,
  );

  testWidgets(
    'HistoryProperty => onRecordNow',
    (tester) async {
      bool called = false;

      final historyProperty = HistoryProperty(
        name: 'name',
        value: DateTime.now(),
        getHistoryStream: MockDelegatingPaginatableStream.new,
        onRecordNow: () => called = true,
      );

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: historyProperty,
          ),
        ),
      );
      await tester.tap(
        find.descendant(
          of: find.byType(IconButton),
          matching: find.byIcon(Icons.task_alt),
        ),
      );

      expect(called, isTrue);
    },
  );

  testWidgets(
    'HistoryProperty => getHistoryStream',
    (tester) async {
      bool called = false;
      final lastRecordedByInfo = LastRecordedByInfo(
        time: DateTime.now(),
        recordedBy: 'id',
        user: User(
          uid: 'id',
          name: 'user',
          email: 'email',
        ),
      );

      final historyProperty = HistoryProperty(
        name: 'name',
        value: DateTime.now(),
        getHistoryStream: () {
          called = true;

          final mock = MockDelegatingPaginatableStream();

          when(mock.stream).thenAnswer(
            (_) => BehaviorSubject.seeded([lastRecordedByInfo]),
          );

          when(mock.canPaginateForward).thenReturn(false);
          when(mock.limit).thenReturn(1);
          return mock;
        },
        onRecordNow: () {},
      );

      await tester.pumpWidget(
        wrapWithMaterialApp(
          Scaffold(
            body: historyProperty,
          ),
        ),
      );

      await tester.tap(
        find.descendant(
          of: find.byType(IconButton),
          matching: find.byIcon(Icons.history),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(Dialog, skipOffstage: false), findsOneWidget);
      expect(
        find.descendant(
          of: find.byType(Dialog),
          matching: find.bySubtype<ViewableObjectList<LastRecordedByInfo>>(),
        ),
        findsOneWidget,
      );
      expect(called, isTrue);

      expect(
        find.descendant(
          of: find.bySubtype<ViewableObjectList<LastRecordedByInfo>>(),
          matching: find.text(lastRecordedByInfo.user!.name),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.bySubtype<ViewableObjectList<LastRecordedByInfo>>(),
          matching: find
              .text(historyProperty.dateFormat.format(lastRecordedByInfo.time)),
        ),
        findsOneWidget,
      );

      flushVisibilityDetectors();
    },
    skip: true,
  );
}
