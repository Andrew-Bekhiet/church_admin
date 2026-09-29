import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/meetings/__generated__/queries.gql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_roster_entry.freezed.dart';

@freezed
class MeetingRosterEntry with _$MeetingRosterEntry {
  @override
  final bool asServant;

  @override
  final Person person;

  @override
  final AttendanceRecord? attendanceRecord;

  @override
  final PersonMeetingAttendanceAnalysis? personAttendanceAnalysis;

  bool get attended => attendanceRecord != null;
  AttendanceRecord? get attendance => attendanceRecord;
  DateTime? get attendanceTime => attendanceRecord?.datetime;

  const MeetingRosterEntry({
    required this.asServant,
    required this.person,
    required this.attendanceRecord,
    required this.personAttendanceAnalysis,
  });

  factory MeetingRosterEntry.fromQueryResult(
    Query_historyMeetingRoster_historyMeetingRoster row,
  ) {
    final person = Person(
      id: row.personId?.uuid ?? '',
      name: row.name ?? '',
      contacts: [
        for (final contact in row.person?.contacts ?? const [])
          PhoneContact(
            id: contact.id.uuid,
            phone: contact.phone,
            isMainPhone: contact.isMainPhone,
            personId: contact.personId?.uuid,
          ),
      ],
      family: switch (row.person?.family) {
        final family? => Family(
          id: family.id.uuid,
          name: '',
          contacts: [
            for (final contact in family.contacts)
              PhoneContact(
                id: contact.id?.uuid ?? '',
                phone: contact.phone ?? '',
                personId: contact.personId?.uuid,
                familyId: contact.familyId?.uuid,
                personTypeId: contact.personTypeId?.uuid,
              ),
          ],
        ),
        null => null,
      },
      gender: row.gender ?? false,
      color: colorFromInt(row.color),
      studyYearId: row.studyYearId,
      photoUpdatedAt: row.photoUpdatedAt,
      blurhash: row.blurhash,
      studyYear: switch (row.studyYearId) {
        null => null,
        final studyYearId => StudyYear(
          order: studyYearId,
          name: row.studyYearName ?? '',
        ),
      },
    );

    return MeetingRosterEntry(
      asServant: row.asServant ?? false,
      person: person,
      personAttendanceAnalysis: null,
      attendanceRecord: null,
    );
  }
}
