import 'package:church_admin/church_admin.dart';

enum AttendancePresenceFilter {
  all,
  present,
  absent;

  String get label => switch (this) {
    AttendancePresenceFilter.all => 'الكل',
    AttendancePresenceFilter.present => 'حاضر',
    AttendancePresenceFilter.absent => 'غائب',
  };

  bool matches(MeetingRosterEntry entry) => switch (this) {
    AttendancePresenceFilter.all => true,
    AttendancePresenceFilter.present => entry.attended,
    AttendancePresenceFilter.absent => !entry.attended,
  };
}
