// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Service _$$_ServiceFromJson(Map json) => _$_Service(
      id: json['id'] as String,
      name: json['name'] as String,
      studyYearFrom: json['studyYearFrom'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYearFrom'] as Map)),
      studyYearTo: json['studyYearTo'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYearTo'] as Map)),
      studyYearFromId: json['studyYearFromId'] as int?,
      studyYearToId: json['studyYearToId'] as int?,
      nextService: json['nextService'] == null
          ? null
          : Service.fromJson(
              Map<String, Object?>.from(json['nextService'] as Map)),
      nextServiceId: json['nextServiceId'] as String?,
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
      lastEdit: json['lastEdit'] == null
          ? null
          : LastRecordedByInfo.fromJson(
              Map<String, Object?>.from(json['lastEdit'] as Map)),
      adminUsers: adminUsersFromJson(json['adminUsers'] as List?),
      attendanceHistoryAggregate: analysisDataFromJson(
          json['attendanceHistoryAggregate'] as Map<String, dynamic>?),
      attendanceDaysConstraintsAggregate: analysisDataFromJson(
          json['attendanceDaysConstraintsAggregate'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_ServiceToJson(_$_Service instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'studyYearFrom': instance.studyYearFrom?.toJson(),
      'studyYearTo': instance.studyYearTo?.toJson(),
      'studyYearFromId': instance.studyYearFromId,
      'studyYearToId': instance.studyYearToId,
      'nextService': instance.nextService?.toJson(),
      'nextServiceId': instance.nextServiceId,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'classes': instance.classes?.map((e) => e.toJson()).toList(),
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
      'attendanceHistoryAggregate':
          analysisDataToJson(instance.attendanceHistoryAggregate),
      'attendanceDaysConstraintsAggregate':
          analysisDataToJson(instance.attendanceDaysConstraintsAggregate),
    };
