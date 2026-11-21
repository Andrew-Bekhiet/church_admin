import 'package:church_admin/church_admin.dart';
import 'package:clock/clock.dart';
import 'package:flutter/services.dart';
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
  const narrowPhone = Size(360, 780);
  const fontAssetsByFamilyTheScreenUses = {
    AppTypography.cairo: 'assets/fonts/Cairo-VariableFont.ttf',
    AppTypography.elMessiri: 'assets/fonts/ElMessiri-VariableFont.ttf',
  };
  final mina = Person(id: 'mina', name: 'مينا');

  late _MockFingerprintSyncStatusDAO fingerprintSyncStatus;

  Future<void> openScreenOverAnotherOneOnNarrowPhone(
    WidgetTester tester,
    Meeting meeting,
  ) async {
    tester.view
      ..physicalSize = narrowPhone
      ..devicePixelRatio = 1;
    addTearDown(tester.view.reset);
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
        onGenerateRoute: (_) => null,
        onGenerateInitialRoutes: (_) => [
          MaterialPageRoute<void>(builder: (_) => const SizedBox()),
          MaterialPageRoute<void>(
            builder: (_) => RecordAttendanceScreen(meeting: meeting),
          ),
        ],
      ),
    );
    await tester.pumpAndSettle(RecordAttendanceCubit.searchDebounce);
  }

  setUpAll(() async {
    await initializeDateFormatting('ar');
    setLocaleMessages('ar', ArMessages());
    registerFallbackValue(
      const Meeting(
        id: 'fallback',
        name: 'اجتماع',
        audience: MeetingAudience.onlyPersons,
        isArchived: false,
      ),
    );
    registerFallbackValue(
      DateTimeRange(start: DateTime(2026), end: DateTime(2026)),
    );
    for (final MapEntry(key: family, value: asset)
        in fontAssetsByFamilyTheScreenUses.entries) {
      await (FontLoader(family)..addFont(rootBundle.load(asset))).load();
    }
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

    final history = MockHistoryDAO();
    when(
      () => history.streamDayKodas(day: any(named: 'day')),
    ).thenAnswer((_) => Stream.value(const []));

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
          UserPermission.recordAllServantsAttendance,
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
    'on a 360 wide phone, a screen opened over another one fits the back '
    'button, the audience toggle and the elapsed time since the last '
    'fingerprint sync without overflowing',
    (tester) async {
      final lastSyncedAt = DateTime.utc(2026, 11, 20, 7, 5);
      final now = lastSyncedAt.add(const Duration(minutes: 3));
      when(
        fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => Stream.value(lastSyncedAt));

      await withClock(Clock.fixed(now), () async {
        await openScreenOverAnotherOneOnNarrowPhone(
          tester,
          const Meeting(
            id: 'friday-meeting',
            name: 'اجتماع الجمعة',
            audience: MeetingAudience.personsAndServants,
            isArchived: false,
            autoAttendanceWeekday: DateTime.friday,
          ),
        );

        expect(tester.takeException(), isNull);
        expect(find.byKey(AttendanceAppBarKeys.audienceToggle), findsOneWidget);
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
    'on a 360 wide phone, a meeting name too long for the title row does '
    'not overflow beside the elapsed time since the last fingerprint sync',
    (tester) async {
      final lastSyncedAt = DateTime.utc(2026, 11, 20, 7, 5);
      final now = lastSyncedAt.add(const Duration(minutes: 3));
      when(
        fingerprintSyncStatus.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => Stream.value(lastSyncedAt));

      await withClock(Clock.fixed(now), () async {
        await openScreenOverAnotherOneOnNarrowPhone(
          tester,
          const Meeting(
            id: 'friday-meeting',
            name: 'اجتماع خدمة ثانوي بنين وبنات الكنيسة',
            audience: MeetingAudience.personsAndServants,
            isArchived: false,
            autoAttendanceWeekday: DateTime.friday,
          ),
        );

        expect(tester.takeException(), isNull);
        expect(
          find.byKey(FingerprintLastSyncIndicatorKeys.elapsedSinceLastSync),
          findsOneWidget,
        );
      });
    },
  );
}
