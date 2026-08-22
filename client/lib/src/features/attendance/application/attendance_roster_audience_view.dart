import 'package:church_admin/church_admin.dart';

enum AttendanceRosterAudienceView {
  persons,
  servants;

  static AttendanceRosterAudienceView defaultFor(MeetingAudience audience) =>
      audience.includesPersons
      ? AttendanceRosterAudienceView.persons
      : AttendanceRosterAudienceView.servants;

  bool get asServant => this == AttendanceRosterAudienceView.servants;

  String get label => switch (this) {
    AttendanceRosterAudienceView.persons => 'المخدومين',
    AttendanceRosterAudienceView.servants => 'الخدام',
  };

  AttendanceRosterAudienceView get toggled => switch (this) {
    AttendanceRosterAudienceView.persons =>
      AttendanceRosterAudienceView.servants,
    AttendanceRosterAudienceView.servants =>
      AttendanceRosterAudienceView.persons,
  };

  bool matches(MeetingRosterEntry entry) => switch (this) {
    AttendanceRosterAudienceView.persons => !entry.asServant,
    AttendanceRosterAudienceView.servants => entry.asServant,
  };
}
