import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'record_attendance_route.g.dart';

@TypedGoRoute<RecordAttendanceRoute>(path: '/record_attendance')
class RecordAttendanceRoute extends GoRouteData with $RecordAttendanceRoute {
  final Meeting $extra;

  const RecordAttendanceRoute({required this.$extra});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RecordAttendanceScreen(meeting: $extra);
  }
}
