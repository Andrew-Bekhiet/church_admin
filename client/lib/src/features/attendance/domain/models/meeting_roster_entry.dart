import 'dart:collection';

import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_roster_entry.freezed.dart';
part 'meeting_roster_entry.g.dart';

@freezed
@JsonSerializable()
class MeetingRosterEntry with _$MeetingRosterEntry {
  @override
  final bool asServant;

  @override
  final Person person;

  @override
  final List<AttendanceRecord> attendanceHistory;

  bool get attended => attendanceHistory.isNotEmpty;
  AttendanceRecord? get attendance => attendanceHistory.firstOrNull;
  DateTime? get attendanceTime => attendance?.datetime;

  const MeetingRosterEntry({
    required this.asServant,
    required this.person,
    required this.attendanceHistory,
  });

  /// Builds an entry from a flattened `history.meeting_roster` row.
  ///
  /// The roster view carries the person's display fields directly (rather than
  /// through a `person` relationship) so the subscription never traverses
  /// `public.persons`' per-row permission. We reassemble a partial [Person]
  /// (and its [StudyYear], from the flattened `studyYearId`/`studyYearName`)
  /// here so the UI can keep consuming [person] unchanged.
  factory MeetingRosterEntry.fromJson(Map<String, Object?> json) {
    final studyYearId = json['studyYearId'] as int?;

    return MeetingRosterEntry(
      asServant: json['asServant'] as bool? ?? false,
      // The roster row's keys already line up with `Person`'s JSON keys, so we
      // let `Person.fromJson` parse the whole row and only patch the deltas:
      // rename `personId` -> `id`, rebuild the nested `studyYear` from the flat
      // `studyYearId`/`studyYearName`, and drop `attendanceHistory` (which
      // collides with `Person`'s own field of the same name). The copy keeps the
      // original `json` intact for the attendance parse below.
      person: Person.fromJson({
        ...json,
        'id': json['personId'],
        'studyYear': studyYearId == null
            ? null
            : {'order': studyYearId, 'name': json['studyYearName']},
        'attendanceHistory': null,
        'asServant': null,
      }),
      attendanceHistory:
          (json['attendanceHistory'] as List?)
              ?.whereType<Map>()
              .map(Map<String, Object?>.from)
              .map(AttendanceRecord.fromJson)
              .toList() ??
          const [],
    );
  }
}
