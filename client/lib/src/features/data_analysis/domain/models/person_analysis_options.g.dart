// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_analysis_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PersonAnalysisOptions _$PersonAnalysisOptionsFromJson(Map json) =>
    PersonAnalysisOptions(
      dateRange: dateRangeFromNonNullString(json['dateRange']),
      groups:
          (json['groups'] as List<dynamic>?)
              ?.map((e) => Group.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
      classes:
          (json['classes'] as List<dynamic>?)
              ?.map((e) => Class.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
      services:
          (json['services'] as List<dynamic>?)
              ?.map(
                (e) => Service.fromJson(Map<String, Object?>.from(e as Map)),
              )
              .toList() ??
          const [],
      confessionAnalysis: json['confessionAnalysis'] as bool? ?? false,
      kodasAnalysis: json['kodasAnalysis'] as bool? ?? false,
      visitHistoryAnalysis: json['visitHistoryAnalysis'] as bool? ?? false,
      callHistoryAnalysis: json['callHistoryAnalysis'] as bool? ?? false,
      editHistoryAnalysis: json['editHistoryAnalysis'] as bool? ?? false,
    );

Map<String, dynamic> _$PersonAnalysisOptionsToJson(
  PersonAnalysisOptions instance,
) => <String, dynamic>{
  'dateRange': dateRangeToNonNullString(instance.dateRange),
  'groups': instance.groups.map((e) => e.toJson()).toList(),
  'classes': instance.classes.map((e) => e.toJson()).toList(),
  'services': instance.services.map((e) => e.toJson()).toList(),
  'confessionAnalysis': instance.confessionAnalysis,
  'kodasAnalysis': instance.kodasAnalysis,
  'visitHistoryAnalysis': instance.visitHistoryAnalysis,
  'callHistoryAnalysis': instance.callHistoryAnalysis,
  'editHistoryAnalysis': instance.editHistoryAnalysis,
};
