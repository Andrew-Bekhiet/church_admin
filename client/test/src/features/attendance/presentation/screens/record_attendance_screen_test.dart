import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mocktail/mocktail.dart';
import 'package:timeago/timeago.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/mock_history_dao.dart';
import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../fakes/mock_meetings_dao.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../utils.dart';

class _MockFingerprintSyncStatusDAO extends Mock
    implements FingerprintSyncStatusDAO {}

void main() {
  const meeting = Meeting(
    id: 'meeting-1',
    name: 'اجتماع',
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
  );
  final mina = Person(id: 'mina', name: 'مينا');
  const query = 'مين';

  Finder searchField() => find.descendant(
    of: find.byType(AttendanceSearchBar),
    matching: find.byType(TextField),
  );

  TextSelection? searchSelection(WidgetTester tester) =>
      tester.widget<TextField>(searchField()).controller?.selection;

  late _MockFingerprintSyncStatusDAO fingerprintSyncStatus;

  Future<void> openScreenOf(WidgetTester tester, Meeting meeting) async {
    await tester.pumpWidget(
      MaterialApp(
        scaffoldMessengerKey: scaffoldMessengerKey,
        locale: const Locale('ar', 'EG'),
        supportedLocales: const [Locale('ar', 'EG')],
        localizationsDelegates: GlobalMaterialLocalizations.delegates,
        theme: ThemingService.getDefault(
          isDarkOverride: false,
          greatFeastThemeOverride: false,
        ),
        home: RecordAttendanceScreen(meeting: meeting),
      ),
    );
    await tester.pumpAndSettle(RecordAttendanceCubit.searchDebounce);
  }

  Future<void> openScreenAndSearch(WidgetTester tester) async {
    await openScreenOf(tester, meeting);

    await tester.enterText(searchField(), query);
    await tester.pumpAndSettle(const Duration(milliseconds: 300));
  }

  setUpAll(() async {
    await initializeDateFormatting('ar');
    setLocaleMessages('ar', ArMessages());
    registerFallbackValue(meeting);
    registerFallbackValue(mina);
    registerFallbackValue(const MeetingAnalysisSubject(meeting));
    registerFallbackValue(
      DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
    );
  });

  setUp(() {
    final meetings = MockMeetingsDAO();
    when(
      () => meetings.getMeetingRoster(
        meetingId: any(named: 'meetingId'),
        groupByStudyYear: any(named: 'groupByStudyYear'),
      ),
    ).thenAnswer(
      (_) async => [
        MeetingRosterEntry(
          asServant: false,
          person: mina,
          attendanceRecord: null,
          personAttendanceAnalysis: null,
        ),
      ],
    );
    when(
      () => meetings.streamAttendanceHistory(
        meetingId: any(named: 'meetingId'),
        fromDate: any(named: 'fromDate'),
        toDate: any(named: 'toDate'),
      ),
    ).thenAnswer((_) => Stream.value(const []));
    when(
      () => meetings.getAttendanceAnalyses(
        meeting: any(named: 'meeting'),
        range: any(named: 'range'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer((_) async => const []);
    when(
      () => meetings.getMeetingsAttendanceAnalysis(
        subject: any(named: 'subject'),
        range: any(named: 'range'),
      ),
    ).thenAnswer(
      (_) async =>
          MeetingsAttendanceAnalysis(title: meeting.name, meetings: const []),
    );
    when(
      () => meetings.markAttendance(
        meetingId: any(named: 'meetingId'),
        personId: any(named: 'personId'),
        datetime: any(named: 'datetime'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer(
      (invocation) async => AttendanceRecord(
        id: 'attendance-1',
        meetingId: meeting.id,
        personId: mina.id,
        datetime: invocation.namedArguments[#datetime] as DateTime,
        asServant: false,
      ),
    );

    final history = MockHistoryDAO();
    when(
      () => history.streamDayKodas(day: any(named: 'day')),
    ).thenAnswer((_) => Stream.value(const []));
    when(
      () => history.recordKodas(
        personId: any(named: 'personId'),
        day: any(named: 'day'),
      ),
    ).thenAnswer(
      (invocation) async => KodasRecord(
        id: 'kodas-1',
        personId: mina.id,
        day: invocation.namedArguments[#day] as DateTime,
      ),
    );

    final database = MockDatabaseService();
    when(() => database.meetings).thenReturn(meetings);
    when(() => database.history).thenReturn(history);
    fingerprintSyncStatus = _MockFingerprintSyncStatusDAO();
    when(
      () => database.fingerprintSyncStatus,
    ).thenReturn(fingerprintSyncStatus);

    final authBloc = MockAuthBloc();
    when(() => authBloc.currentUserData).thenReturn(
      const User(
        uid: 'uid',
        name: 'مستخدم',
        permissions: PermissionsSet.fromSet({
          UserPermission.readAllData,
          UserPermission.recordAllAttendance,
        }),
      ),
    );

    final viewableObjects = MockViewableObjectService();
    when(
      () => viewableObjects.getDefaultIconFor<IImage>(any()),
    ).thenReturn(Symbols.person);

    initGlobalProviderContainer([
      authBlocProvider.overrideWithValue(authBloc),
      databaseServiceProvider.overrideWithValue(database),
      imageUrlCacheServiceProvider.overrideWithValue(
        MockImageUrlCacheService(),
      ),
      viewableObjectServiceProvider.overrideWithValue(viewableObjects),
      loggingServiceProvider.overrideWithValue(FakeLoggingService()),
    ]);
  });

  tearDown(defaultTearDown);

  testWidgets(
    'marking a person present selects the whole search text so the next '
    'name types over it',
    (tester) async {
      await openScreenAndSearch(tester);

      await tester.tap(find.byType(AttendancePersonCard));
      await tester.pump();

      expect(
        searchSelection(tester),
        const TextSelection(baseOffset: 0, extentOffset: query.length),
      );
    },
  );

  testWidgets(
    'recording communion selects the whole search text so the next name '
    'types over it',
    (tester) async {
      await openScreenAndSearch(tester);

      await tester.tap(
        find.descendant(
          of: find.byType(AttendanceKodasToggle),
          matching: find.byType(InkWell),
        ),
      );
      await tester.pump();

      expect(
        searchSelection(tester),
        const TextSelection(baseOffset: 0, extentOffset: query.length),
      );
    },
  );

  testWidgets(
    'a meeting that records attendance from fingerprint punches shows how '
    'long ago the fingerprint sync last reached the app',
    (tester) async {
      final lastSyncedAt = DateTime.utc(2026, 11, 20, 7, 5);
      final now = lastSyncedAt.add(const Duration(minutes: 3));
      when(
        fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => Stream.value(lastSyncedAt));

      await withClock(Clock.fixed(now), () async {
        await openScreenOf(
          tester,
          const Meeting(
            id: 'friday-meeting',
            name: 'اجتماع الجمعة',
            audience: MeetingAudience.onlyPersons,
            isArchived: false,
            autoAttendanceWeekday: DateTime.friday,
          ),
        );

        expect(
          tester
              .widget<Text>(
                find.byKey(
                  FingerprintLastSyncIndicatorKeys.elapsedSinceLastSync,
                ),
              )
              .data,
          'منذ 3 دقائق',
        );
      });
    },
  );

  testWidgets(
    'a fingerprint sync that arrives while the screen is open replaces the '
    'elapsed time of the previous one',
    (tester) async {
      final previousSync = DateTime.utc(2026, 11, 20, 7, 5);
      final arrivingSync = DateTime.utc(2026, 11, 20, 7, 15);
      final now = DateTime.utc(2026, 11, 20, 7, 17);
      final serverLastSyncedAt = StreamController<DateTime?>();
      addTearDown(serverLastSyncedAt.close);
      when(
        fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => serverLastSyncedAt.stream);

      await withClock(Clock.fixed(now), () async {
        serverLastSyncedAt.add(previousSync);
        await openScreenOf(
          tester,
          const Meeting(
            id: 'friday-meeting',
            name: 'اجتماع الجمعة',
            audience: MeetingAudience.onlyPersons,
            isArchived: false,
            autoAttendanceWeekday: DateTime.friday,
          ),
        );

        serverLastSyncedAt.add(arrivingSync);
        await tester.pump();
        await tester.pump();

        expect(
          tester
              .widget<Text>(
                find.byKey(
                  FingerprintLastSyncIndicatorKeys.elapsedSinceLastSync,
                ),
              )
              .data,
          'منذ دقيقتين',
        );
      });
    },
  );

  testWidgets(
    'a meeting without an automatic attendance schedule shows no fingerprint '
    'sync time',
    (tester) async {
      when(
        fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => Stream.value(DateTime.utc(2026, 11, 20, 7, 5)));

      await openScreenOf(tester, meeting);

      expect(find.byKey(FingerprintLastSyncIndicatorKeys.self), findsNothing);
    },
  );

  testWidgets(
    'a meeting without an automatic attendance schedule never asks the '
    'server for the fingerprint sync status',
    (tester) async {
      when(
        fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => Stream.value(DateTime.utc(2026, 11, 20, 7, 5)));

      await openScreenOf(tester, meeting);

      verifyNever(fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced);
    },
  );

  testWidgets(
    'the roster stays usable when the fingerprint sync status cannot be read',
    (tester) async {
      when(
        fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => Stream.error(StateError('offline')));

      await openScreenOf(
        tester,
        const Meeting(
          id: 'friday-meeting',
          name: 'اجتماع الجمعة',
          audience: MeetingAudience.onlyPersons,
          isArchived: false,
          autoAttendanceWeekday: DateTime.friday,
        ),
      );

      expect(
        find.byKey(AttendancePersonCardKeys.entry(mina.id, asServant: false)),
        findsOneWidget,
      );
    },
  );
}
