import 'package:church_admin/church_admin.dart';
import 'package:church_admin/graphql/scalars/date_range.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_analysis_options.g.dart';

@JsonSerializable()
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

  factory PersonAnalysisOptions.fromJson(Json json) =>
      _$PersonAnalysisOptionsFromJson(json);

  @JsonKey(
    fromJson: dateRangeFromNonNullString,
    toJson: dateRangeToNonNullString,
  )
  final DateTimeRange dateRange;

  final List<Group> groups;
  final List<Class> classes;
  final List<Service> services;

  final bool confessionAnalysis;
  final bool kodasAnalysis;

  final bool visitHistoryAnalysis;
  final bool callHistoryAnalysis;
  final bool editHistoryAnalysis;

  Map<String, dynamic> toJson() => _$PersonAnalysisOptionsToJson(this);
}

DateTimeRange dateRangeFromNonNullString(dynamic data) =>
    dateRangeFromString(data)!;
String dateRangeToNonNullString(DateTimeRange? range) =>
    dateRangeToString(range)!;
