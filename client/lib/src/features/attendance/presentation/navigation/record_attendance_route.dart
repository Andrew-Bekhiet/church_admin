part of 'package:church_admin/src/core/services/router/app_route.dart';

class RecordAttendanceRoute extends HomeChildRoute {
  static const String routePath = '/record_attendance';

  final Meeting meeting;

  @override
  String get path => routePath;

  @override
  List<Object?> get props => [meeting];

  const RecordAttendanceRoute({required this.meeting});

  @override
  Widget build(BuildContext context) {
    return RecordAttendanceScreen(meeting: meeting);
  }
}
