import 'package:church_admin/church_admin.dart';

abstract interface class AttendanceAnalyzable {
  AnalysisData<DateTime>? get attendanceHistoryAggregate;
  AnalysisData<DateTime>? get attendanceDaysConstraintsAggregate;
}
