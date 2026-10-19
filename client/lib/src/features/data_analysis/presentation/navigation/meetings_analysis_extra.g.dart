// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'meetings_analysis_extra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeetingsAnalysisExtra _$MeetingsAnalysisExtraFromJson(Map json) =>
    MeetingsAnalysisExtra(
      title: json['title'] as String,
      initialRangePreset: MeetingsAnalysisExtra._dateRangePresetFromString(
        json['initialRangePreset'] as String,
      ),
      subject: MeetingsAnalysisSubject.fromJson(
        Map<String, dynamic>.from(json['subject'] as Map),
      ),
    );

Map<String, dynamic> _$MeetingsAnalysisExtraToJson(
  MeetingsAnalysisExtra instance,
) => <String, dynamic>{
  'title': instance.title,
  'initialRangePreset': MeetingsAnalysisExtra._dateRangePresetToString(
    instance.initialRangePreset,
  ),
  'subject': instance.subject.toJson(),
};
