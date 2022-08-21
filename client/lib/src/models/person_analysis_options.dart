import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars/date_range.dart';

class PersonAnalysisOptions {
  PersonAnalysisOptions({
    required this.dateRange,
    this.groups = const [],
    this.classes = const [],
    this.services = const [],
    this.confessionAnalysis = false,
    this.kodasAnalysis = false,
    this.visitHistoryAnalysis = false,
    this.callHistoryAnalysis = false,
    this.editHistoryAnalysis = false,
  });

  final DateTimeRange dateRange;

  final List<Group> groups;
  final List<Class> classes;
  final List<Service> services;

  final bool confessionAnalysis;
  final bool kodasAnalysis;

  final bool visitHistoryAnalysis;
  final bool callHistoryAnalysis;
  final bool editHistoryAnalysis;
}
