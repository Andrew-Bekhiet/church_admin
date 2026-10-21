part of 'package:church_admin/src/core/services/router/app_route.dart';

class RecordAttendanceRoute extends HomeChildRoute {
  final Meeting meeting;

  @override
  String get path => '/record_attendance';

  @override
  List<Object?> get props => [meeting];

  const RecordAttendanceRoute({required this.meeting});

  @override
  Widget build(BuildContext context) {
    return RecordAttendanceScreen(meeting: meeting);
  }
}
