part of 'package:church_admin/src/core/services/router/app_route.dart';

class RecordAttendanceRoute extends HomeChildRoute {
  final Meeting $extra;

  @override
  String get path => '/record_attendance';

  @override
  List<Object?> get props => [$extra];

  const RecordAttendanceRoute({required this.$extra});

  @override
  Widget build(BuildContext context) {
    return RecordAttendanceScreen(meeting: $extra);
  }
}
