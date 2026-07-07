// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_analysis_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonAnalysisOptions _$PersonAnalysisOptionsFromJson(Map json) =>
    PersonAnalysisOptions(
      dateRange: dateRangeFromNonNullString(json['dateRange']),
      meetings:
          (json['meetings'] as List<dynamic>?)
              ?.map(
                (e) => Meeting.fromJson(Map<String, Object?>.from(e as Map)),
              )
              .toList() ??
          const [],
      confessionAnalysis: json['confessionAnalysis'] as bool? ?? true,
      kodasAnalysis: json['kodasAnalysis'] as bool? ?? true,
      visitHistoryAnalysis: json['visitHistoryAnalysis'] as bool? ?? true,
      callHistoryAnalysis: json['callHistoryAnalysis'] as bool? ?? true,
      editHistoryAnalysis: json['editHistoryAnalysis'] as bool? ?? false,
    );

Map<String, dynamic> _$PersonAnalysisOptionsToJson(
  PersonAnalysisOptions instance,
) => <String, dynamic>{
  'dateRange': dateRangeToNonNullString(instance.dateRange),
  'meetings': instance.meetings.map((e) => e.toJson()).toList(),
  'confessionAnalysis': instance.confessionAnalysis,
  'kodasAnalysis': instance.kodasAnalysis,
  'visitHistoryAnalysis': instance.visitHistoryAnalysis,
  'callHistoryAnalysis': instance.callHistoryAnalysis,
  'editHistoryAnalysis': instance.editHistoryAnalysis,
};
