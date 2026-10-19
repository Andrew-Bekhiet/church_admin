import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_roster_entry.freezed.dart';

@freezed
class MeetingRosterEntry with _$MeetingRosterEntry {
  final bool asServant;

  final Person person;

  final AttendanceRecord? attendanceRecord;

  final List<String> phones;

  final PersonMeetingAttendanceAnalysis? personAttendanceAnalysis;

  bool get attended => attendanceRecord != null;
  AttendanceRecord? get attendance => attendanceRecord;
  DateTime? get attendanceTime => attendanceRecord?.datetime;

  const MeetingRosterEntry({
    required this.asServant,
    required this.person,
    required this.attendanceRecord,
    required this.personAttendanceAnalysis,
    this.phones = const [],
  });

  factory MeetingRosterEntry.fromRosterEntryJson(Json row) {
    final studyYearId = row['studyYearId'] as int?;
    final photoUpdatedAt = row['photoUpdatedAt'] as String?;
    final person = Person(
      id: row['personId'] as String,
      name: row['name'] as String? ?? '',
      gender: row['gender'] as bool? ?? false,
      color: colorFromInt(row['color'] as int?),
      studyYearId: studyYearId,
      photoUpdatedAt: photoUpdatedAt == null
          ? null
          : tstzFromString(photoUpdatedAt),
      blurhash: row['blurhash'] as String?,
      studyYear: switch (studyYearId) {
        null => null,
        final studyYearId => StudyYear(
          order: studyYearId,
          name: row['studyYearName'] as String? ?? '',
        ),
      },
    );

    return MeetingRosterEntry(
      asServant: row['asServant'] as bool? ?? false,
      person: person,
      personAttendanceAnalysis: null,
      attendanceRecord: null,
      phones: [
        for (final phone in row['phones'] as List? ?? const []) '$phone',
      ],
    );
  }
}
