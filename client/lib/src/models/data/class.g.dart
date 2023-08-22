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
      serviceId: json['serviceId'] as String?,
      studyYear: json['studyYear'] == null
          ? null
          : StudyYear.fromJson(
              Map<String, Object?>.from(json['studyYear'] as Map)),
      serviceStudyYear: json['serviceStudyYear'] as int?,
      serviceGender: json['serviceGender'] as bool?,
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

const _$$_ClassFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'color': 'color',
  'photoUpdatedAt': 'photoUpdatedAt',
  'service': 'service',
  'serviceId': 'serviceId',
  'studyYear': 'studyYear',
  'serviceStudyYear': 'serviceStudyYear',
  'serviceGender': 'serviceGender',
  'lastEdit': 'lastEdit',
  'adminUsers': 'adminUsers',
  'attendanceHistoryAggregate': 'attendanceHistoryAggregate',
  'attendanceDaysConstraintsAggregate': 'attendanceDaysConstraintsAggregate',
};

Map<String, dynamic> _$$_ClassToJson(_$_Class instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'service': instance.service?.toJson(),
      'serviceId': instance.serviceId,
      'studyYear': instance.studyYear?.toJson(),
      'serviceStudyYear': instance.serviceStudyYear,
      'serviceGender': instance.serviceGender,
      'lastEdit': instance.lastEdit?.toJson(),
      'adminUsers': adminUsersToJson(instance.adminUsers),
      'attendanceHistoryAggregate':
          analysisDataToJson(instance.attendanceHistoryAggregate),
      'attendanceDaysConstraintsAggregate':
          analysisDataToJson(instance.attendanceDaysConstraintsAggregate),
    };
