import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../fakes/fake_logging_service.dart';
import '../../../../fakes/mock_auth_bloc.dart';
import '../../../../fakes/mock_database_service.dart';
import '../../../../fakes/mock_history_dao.dart';
import '../../../../fakes/mock_image_url_cache_service.dart';
import '../../../../fakes/mock_meetings_dao.dart';
import '../../../../fakes/mock_viewable_object_service.dart';
import '../../../../utils.dart';

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

  Future<void> openScreenAndSearch(WidgetTester tester) async {
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
        home: const RecordAttendanceScreen(meeting: meeting),
      ),
    );
    await tester.pumpAndSettle();

    await tester.enterText(searchField(), query);
    await tester.pumpAndSettle(const Duration(milliseconds: 300));
  }

  setUpAll(() async {
    await initializeDateFormatting('ar');
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
}
