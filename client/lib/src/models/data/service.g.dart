// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Service _$$_ServiceFromJson(Map<String, dynamic> json) => _$_Service(
      id: json['id'] as String,
      name: json['name'] as String,
      fromStudyYear: studyYearFromJson(json['fromStudyYear']),
      toStudyYear: studyYearFromJson(json['toStudyYear']),
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photo_updated_at'] == null
          ? null
          : DateTime.parse(json['photo_updated_at'] as String),
      groups: groupsFromJson(json['groups']),
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fromStudyYear': studyYearToJson(instance.fromStudyYear),
      'toStudyYear': studyYearToJson(instance.toStudyYear),
      'color': colorToInt(instance.color),
      'photo_updated_at': instance.photoUpdatedAt?.toIso8601String(),
      'groups': groupsToJson(instance.groups),
    };
