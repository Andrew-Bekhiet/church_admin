// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Service _$$_ServiceFromJson(Map json) => _$_Service(
      id: json['id'] as String,
      name: json['name'] as String,
      fromStudyYear: json['fromStudyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['fromStudyYear'] as Map)),
      toStudyYear: json['toStudyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['toStudyYear'] as Map)),
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => Class.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      attendanceHistoryAggregate: analysisDataFromJson(
          json['attendanceHistoryAggregate'] as Map<String, dynamic>?),
      attendanceDaysConstraintsAggregate: analysisDataFromJson(
          json['attendanceDaysConstraintsAggregate'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fromStudyYear': instance.fromStudyYear?.toJson(),
      'toStudyYear': instance.toStudyYear?.toJson(),
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'attendanceHistoryAggregate':
          analysisDataToJson(instance.attendanceHistoryAggregate),
      'attendanceDaysConstraintsAggregate':
          analysisDataToJson(instance.attendanceDaysConstraintsAggregate),
    };
