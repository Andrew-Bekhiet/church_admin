import 'package:church_admin/church_admin.dart';

mixin AttendanceAnalyzable {
  AnalysisData<DateTime>? get attendanceHistoryAggregate;
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate;
}
