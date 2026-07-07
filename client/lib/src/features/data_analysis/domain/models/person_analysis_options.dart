import 'package:church_admin/church_admin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_analysis_options.g.dart';

@JsonSerializable()
class PersonAnalysisOptions {
  PersonAnalysisOptions({
    required this.dateRange,
    this.meetings = const [],
    this.confessionAnalysis = true,
    this.kodasAnalysis = true,
    this.visitHistoryAnalysis = true,
    this.callHistoryAnalysis = true,
    this.editHistoryAnalysis = false,
  });

  factory PersonAnalysisOptions.fromJson(Json json) =>
      _$PersonAnalysisOptionsFromJson(json);

  @JsonKey(
    fromJson: dateRangeFromNonNullString,
    toJson: dateRangeToNonNullString,
  )
  final DateTimeRange dateRange;

  final List<Meeting> meetings;

  final bool confessionAnalysis;
  final bool kodasAnalysis;

  final bool visitHistoryAnalysis;
  final bool callHistoryAnalysis;
  final bool editHistoryAnalysis;

  Map<String, dynamic> toJson() => _$PersonAnalysisOptionsToJson(this);

  PersonAnalysisOptions copyWith({
    DateTimeRange? dateRange,
    List<Meeting>? meetings,
    bool? confessionAnalysis,
    bool? kodasAnalysis,
    bool? visitHistoryAnalysis,
    bool? callHistoryAnalysis,
    bool? editHistoryAnalysis,
  }) {
    return PersonAnalysisOptions(
      dateRange: dateRange ?? this.dateRange,
      meetings: meetings ?? this.meetings,
      confessionAnalysis: confessionAnalysis ?? this.confessionAnalysis,
      kodasAnalysis: kodasAnalysis ?? this.kodasAnalysis,
      visitHistoryAnalysis: visitHistoryAnalysis ?? this.visitHistoryAnalysis,
      callHistoryAnalysis: callHistoryAnalysis ?? this.callHistoryAnalysis,
      editHistoryAnalysis: editHistoryAnalysis ?? this.editHistoryAnalysis,
    );
  }
}

DateTimeRange dateRangeFromNonNullString(dynamic data) =>
    dateRangeFromString(data)!;
String dateRangeToNonNullString(DateTimeRange? range) =>
    dateRangeToString(range)!;
