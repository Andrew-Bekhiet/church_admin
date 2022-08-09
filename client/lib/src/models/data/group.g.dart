// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      id: json['id'] as String,
      name: json['name'] as String,
      color: colorFromInt(json['color'] as int?),
      photoUpdatedAt: json['photoUpdatedAt'] == null
          ? null
          : DateTime.parse(json['photoUpdatedAt'] as String),
      service: json['service'] == null
          ? null
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      attendanceHistoryAggregate: analysisDataFromJson(
          json['attendanceHistory_aggregate'] as Map<String, dynamic>?),
      attendanceDaysConstraintsAggregate: analysisDataFromJson(
          json['attendanceDaysConstraints_aggregate'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': colorToInt(instance.color),
      'photoUpdatedAt': instance.photoUpdatedAt?.toIso8601String(),
      'service': instance.service?.toJson(),
      'attendanceHistory_aggregate':
          analysisDataToJson(instance.attendanceHistoryAggregate),
      'attendanceDaysConstraints_aggregate':
          analysisDataToJson(instance.attendanceDaysConstraintsAggregate),
    };
