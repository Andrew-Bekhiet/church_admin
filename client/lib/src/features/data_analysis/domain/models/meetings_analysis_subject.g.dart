// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: type=lint

part of 'meetings_analysis_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeetingAnalysisSubject _$MeetingAnalysisSubjectFromJson(Map json) =>
    MeetingAnalysisSubject(
      Meeting.fromJson(Map<String, Object?>.from(json['meeting'] as Map)),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$MeetingAnalysisSubjectToJson(
  MeetingAnalysisSubject instance,
) => <String, dynamic>{
  'meeting': instance.meeting.toJson(),
  'type': instance.$type,
};

ServiceAnalysisSubject _$ServiceAnalysisSubjectFromJson(Map json) =>
    ServiceAnalysisSubject(
      Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ServiceAnalysisSubjectToJson(
  ServiceAnalysisSubject instance,
) => <String, dynamic>{
  'service': instance.service.toJson(),
  'type': instance.$type,
};

GroupAnalysisSubject _$GroupAnalysisSubjectFromJson(Map json) =>
    GroupAnalysisSubject(
      Group.fromJson(Map<String, Object?>.from(json['group'] as Map)),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$GroupAnalysisSubjectToJson(
  GroupAnalysisSubject instance,
) => <String, dynamic>{
  'group': instance.group.toJson(),
  'type': instance.$type,
};

ClassAnalysisSubject _$ClassAnalysisSubjectFromJson(Map json) =>
    ClassAnalysisSubject(
      Class.fromJson(Map<String, Object?>.from(json[r'class$'] as Map)),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$ClassAnalysisSubjectToJson(
  ClassAnalysisSubject instance,
) => <String, dynamic>{
  r'class$': instance.class$.toJson(),
  'type': instance.$type,
};
