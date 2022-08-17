import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars/date_range.dart';

class AttendanceOptions {
  AttendanceOptions({
    required this.dateRange,
    this.groups = const [],
    this.classes = const [],
    this.services = const [],
  });

  final DateTimeRange dateRange;
  final List<Group> groups;
  final List<Class> classes;
  final List<Service> services;
}
