/// Which subset of the roster is shown in the recording screen.
enum AttendancePresenceFilter {
  all,
  present,
  absent;

  String get label => switch (this) {
    AttendancePresenceFilter.all => 'الكل',
    AttendancePresenceFilter.present => 'حاضر',
    AttendancePresenceFilter.absent => 'غائب',
  };
}
