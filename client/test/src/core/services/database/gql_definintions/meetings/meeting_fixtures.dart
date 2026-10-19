import 'dart:ui';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fakes/fake_ash_backend.dart';
import '../../../../../fakes/fake_ash_tables_link.dart';

/// A [Meeting] as the Ash server stores it, with the days it was held and the
/// attendance counts of those days that the server computes for it.
class MeetingRow implements ID, ToJson {
  final Meeting meeting;
  final List<DateTime> heldDays;
  final List<MeetingDayRow> days;

  @override
  String get id => meeting.id;

  const MeetingRow(
    this.meeting, {
    this.heldDays = const [],
    this.days = const [],
  });

  @override
  Json toJson() => {
    ...MeetingFixtures.jsonOf(meeting),
    'heldDays': [for (final day in heldDays) dateToString(day)],
    'days': [for (final day in days) day.toJson()],
  };
}

class MeetingDayRow implements ToJson {
  final String id;
  final DateTime day;
  final int? studyYearId;
  final bool gender;
  final int personsCount;
  final int servantsCount;

  int get totalCount => personsCount + servantsCount;

  const MeetingDayRow({
    required this.id,
    required this.day,
    required this.gender,
    this.studyYearId,
    this.personsCount = 0,
    this.servantsCount = 0,
  });

  @override
  Json toJson() => {
    'id': id,
    'day': dateToString(day),
    'studyYearId': studyYearId,
    'gender': gender,
    'personsCount': personsCount,
    'servantsCount': servantsCount,
    'totalCount': totalCount,
    '__typename': 'MeetingDay',
  };
}

/// An [AttendanceRecord] with the user who recorded it.
class AttendanceRow implements ID, ToJson {
  final AttendanceRecord record;

  @override
  String get id => record.id;

  const AttendanceRow(this.record);

  @override
  Json toJson() => {
    ...record.toJson(),
    'recordedBy': record.recordedByUser?.uid,
    'recordedByUser': MeetingFixtures.userJson(record.recordedByUser),
  };
}

/// One person of a meeting's roster, in the role [asServant], with the days
/// the person was recorded as attending.
class RosterRow implements ID, ToJson {
  final String meetingId;
  final String personId;
  final String name;
  final bool asServant;
  final List<String> phones;
  final bool? gender;
  final int? studyYearId;
  final String? studyYearName;
  final Color? color;
  final DateTime? photoUpdatedAt;
  final String? blurhash;
  final List<DateTime> attendedDays;
  final Meeting? meeting;

  @override
  String get id => '$meetingId~$personId~$asServant';

  const RosterRow({
    required this.meetingId,
    required this.personId,
    required this.name,
    this.asServant = false,
    this.phones = const [],
    this.gender,
    this.studyYearId,
    this.studyYearName,
    this.color,
    this.photoUpdatedAt,
    this.blurhash,
    this.attendedDays = const [],
    this.meeting,
  });

  @override
  Json toJson() => {
    'id': id,
    'meetingId': meetingId,
    'personId': personId,
    'name': name,
    'asServant': asServant,
    'phones': phones,
    'gender': gender,
    'studyYearId': studyYearId,
    'studyYearName': studyYearName,
    'color': colorToInt(color),
    'photoUpdatedAt': photoUpdatedAt == null
        ? null
        : tstzToString(photoUpdatedAt!),
    'blurhash': blurhash,
    'attendanceRecords': [
      for (final (number, day) in attendedDays.indexed)
        {
          'id': '$id~$number',
          'day': dateToString(day),
          '__typename': 'AttendanceRecord',
        },
    ],
    'meeting': meeting == null ? null : MeetingFixtures.jsonOf(meeting!),
  };
}

abstract final class MeetingFixtures {
  static const User servant = User(uid: 'servant-1', name: 'خادم');

  static const Service sundaySchool = Service(
    id: 'service-1',
    name: 'مدارس الأحد',
    color: Color(0xFF2196F3),
  );

  static const Group youthGroup = Group(
    id: 'group-1',
    name: 'شباب الجامعة',
    color: Color(0xFF4CAF50),
  );

  static final StudyYear firstYear = StudyYear(order: 1, name: 'أولى');

  static final StudyYear secondYear = StudyYear(order: 2, name: 'ثانية');

  static const Meeting liturgy = Meeting(
    id: 'meeting-1',
    name: 'القداس',
    audience: MeetingAudience.personsAndServants,
    isArchived: false,
    color: Color(0xFF9C27B0),
    serviceId: 'service-1',
    service: sundaySchool,
  );

  static const Meeting youthMeeting = Meeting(
    id: 'meeting-2',
    name: 'اجتماع الشباب',
    audience: MeetingAudience.onlyPersons,
    isArchived: false,
    showKodasCheckbox: false,
    groupId: 'group-1',
    group: youthGroup,
  );

  static final Meeting firstYearClass = Meeting(
    id: 'meeting-3',
    name: 'فصل أولى',
    audience: MeetingAudience.onlyServants,
    isArchived: false,
    serviceId: 'service-1',
    service: sundaySchool,
    serviceStudyYear: 1,
    studyYear: firstYear,
    serviceGender: true,
  );

  static const Meeting retired = Meeting(
    id: 'meeting-4',
    name: 'اجتماع قديم',
    audience: MeetingAudience.personsAndServants,
    isArchived: true,
  );

  static final List<Meeting> meetings = [
    liturgy,
    youthMeeting,
    firstYearClass,
    retired,
  ];

  static final DateTime sunday = DateTime(2026, 3);

  static final DateTime nextSunday = DateTime(2026, 3, 8);

  static final DateTimeRange march = DateTimeRange(
    start: DateTime(2026, 3),
    end: DateTime(2026, 3, 31),
  );

  static Json? userJson(User? user) => switch (user) {
    final user? => {...user.toJson(), 'id': user.uid, '__typename': 'User'},
    null => null,
  };

  static Json jsonOf(Meeting meeting) => {
    ...meeting.toJson(),
    '__typename': 'Meeting',
    'service': _typed(meeting.service?.toJson(), 'Service'),
    'group': _typed(meeting.group?.toJson(), 'Group'),
    'studyYear': switch (meeting.studyYear) {
      final studyYear? => _typed({
        ...studyYear.toJson(),
        'id': studyYear.id,
      }, 'StudyYear'),
      null => null,
    },
  };

  static FakeAshTable meetingsTable({Iterable<MeetingRow>? rows}) =>
      FakeAshTable(
        typename: 'Meeting',
        listRoot: 'meetings',
        rows: rows ?? meetings.map(MeetingRow.new),
        nestedFilterVariables: {'days': 'daysFilter'},
      );

  static FakeAshTable rosterTable(Iterable<RosterRow> rows) => FakeAshTable(
    typename: 'RosterEntry',
    listRoot: 'rosterEntries',
    rows: rows,
    nestedFilterVariables: {'attendanceRecords': 'attendedFilter'},
  );

  static FakeAshTable attendanceTable(Iterable<AttendanceRow> rows) =>
      FakeAshTable(
        typename: 'AttendanceRecord',
        listRoot: 'attendanceRecords',
        rows: rows,
      );

  static FakeAshTable studyYearsTable() => FakeAshTable(
    typename: 'StudyYear',
    listRoot: 'studyYears',
    rows: [firstYear, secondYear],
  );

  static RosterRow rosterRow(
    Meeting meeting,
    String personId, {
    bool asServant = false,
    List<DateTime> attendedDays = const [],
    int? studyYearId,
    bool? gender,
  }) => RosterRow(
    meetingId: meeting.id,
    personId: personId,
    name: 'اسم $personId',
    asServant: asServant,
    attendedDays: attendedDays,
    studyYearId: studyYearId,
    studyYearName: switch (studyYearId) {
      1 => MeetingFixtures.firstYear.name,
      2 => MeetingFixtures.secondYear.name,
      _ => null,
    },
    gender: gender,
    meeting: meeting,
  );

  static FakeAshBackend backendOf(
    Iterable<RosterRow> roster, {
    Iterable<MeetingRow> meetings = const [],
  }) {
    final backend = FakeAshBackend([
      MeetingFixtures.rosterTable(roster),
      MeetingFixtures.meetingsTable(rows: meetings),
      MeetingFixtures.studyYearsTable(),
    ]);
    addTearDown(backend.dispose);

    return backend;
  }

  static Json? _typed(Json? json, String typename) =>
      json == null ? null : {...json, '__typename': typename};
}
