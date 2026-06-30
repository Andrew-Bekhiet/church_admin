import 'package:church_admin/church_admin.dart';

/// The current audience the user is recording attendance for.
///
/// Drives the audience toggle chip and maps to the `asServant` flag understood
/// by the attendance data layer.
enum AttendanceRosterAudienceView {
  /// Served persons (المخدومين) — `asServant == false`.
  persons,

  /// Servants (الخدام) — `asServant == true`.
  servants;

  bool get asServant => this == AttendanceRosterAudienceView.servants;

  String get label => switch (this) {
    AttendanceRosterAudienceView.persons => 'المخدومين',
    AttendanceRosterAudienceView.servants => 'الخدام',
  };

  AttendanceRosterAudienceView get toggled =>
      this == AttendanceRosterAudienceView.persons
      ? AttendanceRosterAudienceView.servants
      : AttendanceRosterAudienceView.persons;

  /// The view a freshly opened meeting should default to.
  static AttendanceRosterAudienceView defaultFor(MeetingAudience audience) =>
      audience.includesPersons
      ? AttendanceRosterAudienceView.persons
      : AttendanceRosterAudienceView.servants;
}
