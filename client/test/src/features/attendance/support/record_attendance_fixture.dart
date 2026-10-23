import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/attendance/application/attendance_undo_presenter.dart';
import 'package:fake_async/fake_async.dart';
import 'package:material_ui/material_ui.dart' show VoidCallback;
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/recording_analytics_provider.dart';

final class RecordAttendanceFixture {
  static Future<RecordAttendanceLoaded> readyRoster(
    RecordAttendanceCubit cubit,
  ) => cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
    (s) => s.rosterStatus == RosterStatus.ready,
  );

  static Future<RecordAttendanceLoaded> attendedRoster(
    RecordAttendanceCubit cubit,
  ) => cubit.stream.whereType<RecordAttendanceLoaded>().firstWhere(
    (s) => s.entries.firstOrNull?.attended ?? false,
  );

  final dao = MockMeetingsDAO();
  final authBloc = MockAuthBloc();
  final presenter = FakeAttendanceUndoPresenter();
  final analytics = RecordingAnalyticsProvider();
  final fakeTime = FakeAsync();

  final attendanceController =
      StreamController<List<AttendanceRecord>>.broadcast();
  final presentCountController = StreamController<int?>.broadcast();
  final eligibleCountController = StreamController<int?>.broadcast();

  Meeting meeting = RecordAttendanceFixture.makeMeeting();
  User? user = RecordAttendanceFixture.userWithPersonsOnlyRecordRights();

  List<MeetingRosterEntry> rosterPersons = [];
  List<AttendanceRecord> attendanceRecords = [];
  Set<DateTime> recordedDays = const {};
  AttendanceRecord? markAttendanceRecord;
  AttendanceRecord? unmarkAttendanceRecord;

  RecordAttendanceFixture() {
    when(() => authBloc.currentUserData).thenAnswer((_) => user);

    when(
      () => dao.getMeetingsAttendanceAnalysis(
        subject: any(named: 'subject'),
        range: any(named: 'range'),
      ),
    ).thenAnswer(
      (_) async => MeetingsAttendanceAnalysis(
        title: meeting.name,
        meetings: recordedDays.isEmpty
            ? const []
            : [
                MeetingAttendanceSummary(
                  meeting: meeting,
                  demographics: recordedDays
                      .map(
                        (d) => MeetingDayDemographicCounts(
                          day: d,
                          personsCount: 1,
                          servantsCount: 0,
                          totalCount: 1,
                        ),
                      )
                      .toList(),
                ),
              ],
      ),
    );

    when(
      () => dao.getMeetingRoster(
        meetingId: any(named: 'meetingId'),
        groupByStudyYear: any(named: 'groupByStudyYear'),
      ),
    ).thenAnswer((_) async => rosterPersons);

    when(
      () => dao.streamAttendanceHistory(
        meetingId: any(named: 'meetingId'),
        fromDate: any(named: 'fromDate'),
        toDate: any(named: 'toDate'),
      ),
    ).thenAnswer(
      (_) => attendanceRecords.isEmpty
          ? attendanceController.stream
          : attendanceController.stream.startWith(attendanceRecords),
    );

    when(
      () => dao.markAttendance(
        meetingId: any(named: 'meetingId'),
        personId: any(named: 'personId'),
        datetime: any(named: 'datetime'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer((_) async => markAttendanceRecord!);

    when(
      () => dao.unmarkAttendance(
        attendanceRecordId: any(named: 'attendanceRecordId'),
      ),
    ).thenAnswer((_) async => unmarkAttendanceRecord!);

    when(
      () => dao.getAttendanceAnalyses(
        meeting: any(named: 'meeting'),
        range: any(named: 'range'),
        asServant: any(named: 'asServant'),
      ),
    ).thenAnswer((_) async => const []);
  }

  RecordAttendanceCubit createCubit() => RecordAttendanceCubit(
    meeting: meeting,
    initialDate: DateTime(2026, 7, 2),
    dao: dao,
    authBloc: authBloc,
    presenter: presenter,
    analyticsService: AnalyticsService([analytics], FakeLoggingService()),
  );

  void typeSearchUntilSettled(
    RecordAttendanceCubit cubit,
    List<String> keystrokes,
  ) => fakeTime.run((time) {
    keystrokes.forEach(cubit.onSearch);
    time.elapse(RecordAttendanceCubit.searchDebounce);
  });

  Iterable<String> get trackedNames =>
      analytics.trackedEvents.map((event) => event.name);

  Json trackedPropertiesOf<T extends AnalyticsEvent>() =>
      analytics.trackedEvents.whereType<T>().single.properties;

  Future<void> dispose() => Future.wait([
    attendanceController.close(),
    presentCountController.close(),
    eligibleCountController.close(),
  ]);

  static Meeting makeMeeting({
    String id = 'meeting-1',
    MeetingAudience audience = MeetingAudience.onlyPersons,
  }) => Meeting(
    id: id,
    name: 'Test Meeting',
    audience: audience,
    isArchived: false,
    serviceId: 'service-1',
  );

  static MeetingRosterEntry rosterPerson(String personId) => MeetingRosterEntry(
    asServant: false,
    person: Person(id: personId, name: 'Person $personId'),
    attendanceRecord: null,
    personAttendanceAnalysis: null,
  );

  static MeetingRosterEntry rosterPersonWithPhones(
    String personId,
    List<String> phones,
  ) => MeetingRosterEntry(
    asServant: false,
    person: Person(id: personId, name: 'Person $personId'),
    attendanceRecord: null,
    personAttendanceAnalysis: null,
    phones: phones,
  );

  static AttendanceRecord makeRecord(String personId, {String id = 'att-1'}) =>
      AttendanceRecord(
        id: id,
        meetingId: 'meeting-1',
        personId: personId,
        datetime: DateTime(2026, 7, 2, 10),
        asServant: false,
      );

  static User userWithPersonsOnlyRecordRights() => User(
    uid: 'uid',
    name: 'User',
    person: Person(id: 'person-uid', name: 'User'),
    permissions: const PermissionsSet.fromSet({
      UserPermission.readAllData,
      UserPermission.recordAllAttendance,
    }),
    photoUpdatedAt: DateTime(2026),
    lastEdit: LastRecordedByInfo(time: DateTime(2026), recordedBy: 'system'),
  );

  static User userWithBothRecordRights() => User(
    uid: 'uid',
    name: 'User',
    person: Person(id: 'person-uid', name: 'User'),
    permissions: const PermissionsSet.fromSet({
      UserPermission.readAllData,
      UserPermission.recordAllAttendance,
      UserPermission.recordAllServantsAttendance,
    }),
    photoUpdatedAt: DateTime(2026),
    lastEdit: LastRecordedByInfo(time: DateTime(2026), recordedBy: 'system'),
  );
}

final class MockMeetingsDAO extends Mock implements MeetingsDAO {}

final class MockAuthBloc extends Mock implements AuthBloc {}

final class FakeAttendanceUndoPresenter implements AttendanceUndoPresenter {
  final List<String> shownErrors = [];
  final List<VoidCallback> _undos = [];

  @override
  void showUndo({
    required String personName,
    required AttendanceUndoableChange change,
    required VoidCallback onUndo,
  }) => _undos.add(onUndo);

  void undoLast() => _undos.last();

  @override
  void showError(String message) => shownErrors.add(message);
}
