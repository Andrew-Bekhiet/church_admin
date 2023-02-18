// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Class _$$_ClassFromJson(Map json) => _$_Class(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      service: json['service'] == null
          ? null
          : Service.fromJson(Map<String, Object?>.from(json['service'] as Map)),
      serviceGender: json['serviceGender'] as bool?,
      studyYear: json['studyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYear'] as Map)),
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

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'service': instance.service?.toJson(),
      'serviceGender': instance.serviceGender,
      'studyYear': instance.studyYear?.toJson(),
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
      'attendanceHistoryAggregate':
          analysisDataToJson(instance.attendanceHistoryAggregate),
      'attendanceDaysConstraintsAggregate':
          analysisDataToJson(instance.attendanceDaysConstraintsAggregate),
    };
