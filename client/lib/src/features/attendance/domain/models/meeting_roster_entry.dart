import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting_roster_entry.freezed.dart';
part 'meeting_roster_entry.g.dart';

@freezed
@JsonSerializable()
class MeetingRosterEntry with _$MeetingRosterEntry {
  @override
  final Person person;

  @override
  final List<AttendanceRecord> attendanceHistory;

  AttendanceRecord? get attendance => attendanceHistory.firstOrNull;
  bool get attended => attendanceHistory.isNotEmpty;

  const MeetingRosterEntry({
    required this.person,
    required this.attendanceHistory,
  });

  factory MeetingRosterEntry.fromJson(Map<String, Object?> json) =>
      _$MeetingRosterEntryFromJson(json);
}
