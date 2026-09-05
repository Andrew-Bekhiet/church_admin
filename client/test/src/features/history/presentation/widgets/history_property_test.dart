import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart_ext/single.dart';
import 'package:timeago/timeago.dart';

import 'history_property_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<PaginatableStreamBase>(),
  MockSpec<ViewableObjectService>(),
  MockSpec<ImageUrlCacheService>(),
])
Future<void> main() async {
  await initializeDateFormatting();
  setLocaleMessages('ar', ArMessages());
  await loadAppFonts();

  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  testGoldens(
    'HistoryProperty => Goldens test',
    (tester) async {
      await withClock(Clock.fixed(DateTime(2050)), () async {
        final value = clock.now().subtract(const Duration(days: 5));

        final historyProperty = HistoryProperty<LastRecordedByInfo>(
          name: 'name',
          value: value,
          getHistoryListController: () => ViewableObjectListController(
            objectsPaginatableStream: MockPaginatableStreamBase(),
          ),
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
            matching: find.byIcon(Symbols.history),
          ),
          findsOneWidget,
        );

        expect(
          find.descendant(
            of: find.byType(IconButton),
            matching: find.byIcon(Symbols.task_alt),
          ),
          findsOneWidget,
        );
      });

      await screenMatchesGolden(tester, 'history_property');
    },
  );

  testWidgets(
    'HistoryProperty => onRecordNow',
    (tester) async {
      var called = false;

      final historyProperty = HistoryProperty<LastRecordedByInfo>(
        name: 'name',
        value: clock.now(),
        getHistoryListController: () => ViewableObjectListController(
          objectsPaginatableStream: MockPaginatableStreamBase(),
        ),
        onRecordNow: () => called = true,
      );

      await tester.pumpWidgetBuilder(
        Scaffold(
          body: historyProperty,
        ),
        wrapper: materialAppWrapper(),
      );
      await tester.tap(
        find.descendant(
          of: find.byType(OutlinedButton),
          matching: find.byIcon(Symbols.task_alt),
        ),
      );

      expect(called, isTrue);
    },
  );

  testWidgets(
    'HistoryProperty => getHistoryStream',
    (tester) async {
      await withClock(Clock.fixed(DateTime(2050)), () async {
        var called = false;
        final lastRecordedByInfo = LastRecordedByInfo(
          time: clock.now(),
          recordedBy: 'id',
          user: const User(
            uid: 'id',
            name: 'user',
            email: 'email',
          ),
        );

        final historyProperty = HistoryProperty<LastRecordedByInfo>(
          name: 'name',
          value: clock.now(),
          getHistoryListController: () {
            called = true;

            final mock = MockPaginatableStreamBase<LastRecordedByInfo>();

            when(
              mock.listen(
                captureAny,
                onDone: captureAnyNamed('onDone'),
                onError: captureAnyNamed('onError'),
                cancelOnError: captureAnyNamed('cancelOnError'),
              ),
            ).thenAnswer(
              (i) => BehaviorSubject.seeded([lastRecordedByInfo]).listen(
                i.positionalArguments.first,
                onDone: i.namedArguments[#onDone],
                onError: i.namedArguments[#onError],
                cancelOnError: i.namedArguments[#cancelOnError],
              ),
            );

            when(mock.hasMore).thenReturn(false);
            when(mock.pageSize).thenReturn(1);
            when(
              mock.onLoadingChanged,
            ).thenAnswer((_) => BehaviorSubject.seeded(false));

            return ViewableObjectListController(objectsPaginatableStream: mock);
          },
          onRecordNow: () {},
        );

        await tester.pumpWidgetBuilder(
          Scaffold(
            body: historyProperty,
          ),
          wrapper: materialAppWrapper(),
        );

        await tester.tap(
          find.byType(HistoryProperty<LastRecordedByInfo>),
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
            matching: find.text(
              historyProperty.dateFormat.format(lastRecordedByInfo.time),
            ),
          ),
          findsOneWidget,
        );

        tester.firstState<NavigatorState>(find.byType(Navigator)).pop();
      });
    },
  );
}

void _setUp() {
  final overrides = [
    _setUpViewableObjectService(),
    _setUpMockImageUrlService(),
  ];

  initGlobalProviderContainer(overrides);
}

Override _setUpViewableObjectService() {
  provideDummy<IconData>(Symbols.person);

  final viewableObjectService = MockViewableObjectService();

  when(
    viewableObjectService.getDefaultIconFor<Person>(any),
  ).thenReturn(Symbols.person);

  return viewableObjectServiceProvider.overrideWithValue(viewableObjectService);
}

Override _setUpMockImageUrlService() {
  return imageUrlCacheServiceProvider.overrideWithValue(
    MockImageUrlCacheService(),
  );
}
