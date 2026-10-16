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
      subject: MeetingsAnalysisExtra._subjectFromJson(
        (json['subject'] as num).toInt(),
      ),
    );

Map<String, dynamic> _$MeetingsAnalysisExtraToJson(
  MeetingsAnalysisExtra instance,
) => <String, dynamic>{
  'title': instance.title,
  'initialRangePreset': MeetingsAnalysisExtra._dateRangePresetToString(
    instance.initialRangePreset,
  ),
  'subject': MeetingsAnalysisExtra._subjectToJson(instance.subject),
};
